struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: f32,
    c: vec3<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> u32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(162f, _wgslsmith_f_op_f32(max(2440f, arg_1.c)), arg_1.c, -170f) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1623f, arg_1.c, -260f, arg_1.c)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(666f - arg_1.c), arg_1.c, _wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(exp2(arg_1.c)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.c, arg_1.c, 1526f, arg_1.c))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.c, -561f, 647f, 399f), vec4<f32>(arg_1.c, -839f, -933f, 283f), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1718f, arg_1.c, -1147f, arg_1.c))))))));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-314f - -520f)), var_0.x, arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, arg_1.c, arg_1.c, var_0.x)))));
    global0 = 60652u ^ _wgslsmith_mod_u32(abs(3799u), arg_2);
    var var_2 = ~13835u;
    var_2 = _wgslsmith_mod_u32(0u, arg_2);
    return ~(~((~arg_2 ^ _wgslsmith_sub_u32(3362u, arg_2)) >> (countOneBits(1u) % 32u)));
}

fn func_3(arg_0: i32, arg_1: f32) -> vec2<u32> {
    global0 = countOneBits(_wgslsmith_sub_u32(abs(func_1(all(vec2<bool>(true, false)), Struct_1(true, vec2<bool>(true, true), -824f, vec4<i32>(u_input.a.x, arg_0, -1i, u_input.a.x)), 0u)), ~reverseBits(select(36724u, 22750u, false))));
    var var_0 = abs(u_input.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_1, 896f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 2184f, arg_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1, arg_1, 1000f)))), all(vec4<bool>(true, true, true, false)))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 782f, arg_1))))));
    var var_2 = 293f;
    var var_3 = Struct_5(!(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), true)), _wgslsmith_f_op_f32(ceil(-494f)), vec3<bool>(~var_0.x >= ~(-1i), any(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)), _wgslsmith_mult_i32(u_input.a.x, reverseBits(9696i)) == ~abs(14475i)), 1u);
    return abs(reverseBits(vec2<u32>(_wgslsmith_add_u32(reverseBits(4294967295u), var_3.d), var_3.d)));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> bool {
    let var_0 = ~abs(vec2<i32>(-2147483647i, max(u_input.a.x, _wgslsmith_clamp_i32(-35494i, u_input.a.x, -2147483647i))));
    global0 = arg_1;
    var var_1 = _wgslsmith_clamp_vec2_u32(abs(~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1, 47574u), vec2<u32>(arg_1, arg_1))), ~vec2<u32>(reverseBits(arg_1), arg_1), func_3(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_mult_i32(-2147483647i, u_input.a.x) | -9548i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))));
    var_1 = vec2<u32>(reverseBits(1u), 34250u);
    var_1 = ~func_3(var_0.x, _wgslsmith_f_op_f32(ceil(arg_0.x))) ^ (vec2<u32>(arg_1, ~firstTrailingBit(20689u)) & ~vec2<u32>(24420u, 0u));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~21261u;
    var var_0 = 1u;
    global0 = ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, min(68741u, 0u)), ~vec3<u32>(4294967295u, 38588u, 45431u)), 464u);
    let var_1 = !vec3<bool>(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-413f, -445f, 1488f, 1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1788f, 624f, 220f, -164f) * vec4<f32>(874f, 247f, -246f, 597f))), ~func_1(true, Struct_1(false, vec2<bool>(true, false), -234f, vec4<i32>(u_input.a.x, u_input.a.x, -12864i, u_input.a.x)), 46475u)), !any(vec3<bool>(true, false, false)), true);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -436f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -933f)), _wgslsmith_f_op_f32(abs(2115f)), -835f));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-1350f - 1087f), var_2.x);
    global0 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(-513f, 1f)), _wgslsmith_f_op_f32(floor(var_2.x)), ~countOneBits(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(20659u, 21933u), vec2<u32>(0u, 28618u), vec2<u32>(25466u, 0u)))), 4294967295u);
}

