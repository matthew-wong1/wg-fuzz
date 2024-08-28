struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(5171u, 1u, 140732u, 4294967295u, 9291u, 50216u, 0u, 30927u, 1u, 0u, 4294967295u);

var<private> global1: vec3<i32> = vec3<i32>(71620i, -1i, -83418i);

var<private> global2: array<Struct_1, 1>;

var<private> global3: vec2<f32>;

var<private> global4: vec4<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_1(all(vec2<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false)), !any(vec4<bool>(false, true, false, true)))), global3.x, 1u, ~max(1u, ~16649u) ^ ~(global4.x << (select(global0[_wgslsmith_index_u32(global4.x, 11u)], global4.x, true) % 32u)));
    let var_1 = var_0.a;
    global1 = _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(-37679i, u_input.e, 12782i), ~vec3<i32>(-71300i, 2147483647i, 25115i) >> (_wgslsmith_div_vec3_u32(vec3<u32>(global4.x, 1u, 0u), global4.yyx) % vec3<u32>(32u))), vec3<i32>(~arg_0, -_wgslsmith_mult_i32(-2147483647i, u_input.d), _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0, u_input.c), _wgslsmith_add_vec2_i32(global1.xz, vec2<i32>(2147483647i, arg_0))))) | vec3<i32>(u_input.a, global1.x, global1.x);
    return Struct_1(true, var_0.b, global0[_wgslsmith_index_u32(global4.x, 11u)], 0u);
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = ~(~_wgslsmith_sub_u32(arg_0.c, _wgslsmith_mod_u32(reverseBits(43043u), 37312u)));
    var var_1 = abs(global1.x);
    global0 = array<u32, 11>();
    var var_2 = -908f;
    let var_3 = func_2(u_input.a);
    return ~(_wgslsmith_sub_u32(select(3632u, ~1u, var_3.a), 1u) & arg_0.c);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = ~(-8002i);
    global0 = array<u32, 11>();
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(floor(-1501f)), -681f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, arg_1.b, global3.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 300f, -659f)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_1.b) * 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - 1245f)) - -1497f)));
    let var_2 = firstLeadingBit(~firstTrailingBit(~0u));
    var var_3 = _wgslsmith_div_vec2_f32(var_1.yx, vec2<f32>(_wgslsmith_f_op_f32(-947f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_1.b))), _wgslsmith_f_op_f32(-arg_0)));
    return global0[_wgslsmith_index_u32(~((_wgslsmith_dot_vec4_u32(vec4<u32>(17086u, 19878u, 0u, global4.x), vec4<u32>(24776u, 40541u, arg_1.c, arg_1.c)) << (reverseBits(1u) % 32u)) << (_wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, arg_1.c), 37304u) % 32u)) ^ 1u, 11u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~func_1(global2[_wgslsmith_index_u32(firstTrailingBit(global4.x), 1u)]), 75499u, ~1u) & global4.x, 1u)];
    global2 = array<Struct_1, 1>();
    var var_1 = global2[_wgslsmith_index_u32(32687u | (~(~(~1u)) << (global0[_wgslsmith_index_u32(var_0.c, 11u)] % 32u)), 1u)];
    global4 = _wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(abs(vec4<u32>(global4.x, var_1.c, var_1.d, var_0.d)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(global4.x, 68161u, var_1.c, global4.x), vec4<u32>(0u, 1u, global4.x, var_1.c)) % vec4<u32>(32u)), vec4<u32>(func_3(var_1.b, global2[_wgslsmith_index_u32(global4.x, 1u)]), ~var_1.d, global0[_wgslsmith_index_u32(~28762u, 11u)], firstTrailingBit(var_1.d))), _wgslsmith_mult_vec4_u32(vec4<u32>(~(~global0[_wgslsmith_index_u32(0u, 11u)]), _wgslsmith_mult_u32(~0u, var_1.c), ~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global4.x, 11u)], var_0.c), var_1.d), vec4<u32>((var_1.c << (323u % 32u)) << (global4.x % 32u), global4.x, global0[_wgslsmith_index_u32(~var_1.d, 11u)], var_1.d)));
    var var_2 = -900f != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_1.b))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1348f, -1329f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global3.x) - vec2<f32>(var_1.b, var_1.b))))));
    var var_4 = func_2(-min(max(~2147483647i, ~u_input.b), min(u_input.d, global1.x & -2147483647i)));
    var var_5 = ~(~(vec3<u32>(var_0.d, 1u, var_4.c) >> (global4.xwy % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(_wgslsmith_dot_vec2_i32(~global1.yz, ~vec2<i32>(global1.x, global1.x)), 0i ^ _wgslsmith_sub_i32(u_input.a, global1.x)), reverseBits(-(~vec4<i32>(u_input.a, global1.x, u_input.c, u_input.c))) << (reverseBits(vec4<u32>(var_1.d, var_4.c, global4.x, 55022u) >> ((vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)], var_1.d, 1u, var_0.d) | vec4<u32>(var_1.c, global4.x, 3809u, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

