struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec4<f32>, arg_3: vec2<u32>) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_2.x, 301f))))) * -209f), arg_0, select(!arg_0.c, vec2<bool>(false, all(select(vec3<bool>(arg_0.c.x, arg_0.c.x, false), vec3<bool>(arg_0.c.x, true, false), arg_0.c.x))), select(select(!vec2<bool>(false, arg_0.c.x), arg_0.c, vec2<bool>(arg_0.c.x, arg_0.c.x)), vec2<bool>(true, true), arg_0.c)));
    var var_1 = Struct_2(var_0.b.b.x, var_0.b, arg_0.c);
    var var_2 = select(-_wgslsmith_sub_i32(u_input.d.x, i32(-1i) * -2147483647i), _wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.d, 17951i, 83113i), vec3<i32>(-1i, arg_0.a.x, var_1.b.a.x)), ~(-2147483647i)), arg_0.c.x) >> (reverseBits(~(_wgslsmith_clamp_u32(u_input.b, arg_3.x, 27258u) & ~u_input.b)) % 32u);
    var_0 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_1.b.b.x, arg_0.b.x))))))), Struct_1(min(select(select(u_input.c, var_0.b.a, true), select(vec4<i32>(1i, var_0.b.d, -1i, 5682i), vec4<i32>(arg_0.d, arg_0.a.x, var_0.b.a.x, u_input.c.x), true), !vec4<bool>(arg_0.c.x, false, false, var_0.c.x)), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.c.x, arg_0.a.x, 9097i), vec4<i32>(var_0.b.a.x, u_input.c.x, arg_0.d, 25491i)), _wgslsmith_mod_vec4_i32(var_1.b.a, var_1.b.a), _wgslsmith_mod_vec4_i32(arg_0.a, vec4<i32>(2147483647i, -2147483647i, 4449i, var_1.b.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, arg_0.b.x, arg_2.x) - vec4<f32>(arg_2.x, 1000f, -1000f, -2508f)))), var_0.b.c, -_wgslsmith_dot_vec2_i32(vec2<i32>(-20130i, 0i), vec2<i32>(var_0.b.d, 2543i)) ^ -(~var_1.b.d)), vec2<bool>(var_1.b.c.x, (var_1.b.b.x >= _wgslsmith_f_op_f32(483f - 663f)) && arg_0.c.x));
    let var_3 = arg_0.c.x;
    return var_1.b.b.x;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: u32, arg_3: vec3<i32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(abs(arg_3.x), abs(u_input.d.x), u_input.c.x, 9272i), u_input.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_1)) + _wgslsmith_f_op_vec4_f32(select(arg_0, vec4<f32>(381f, arg_1.x, arg_0.x, arg_0.x), vec4<bool>(true, true, false, false)))), arg_1)), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(any(vec4<bool>(true, false, true, true)), false)), !select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(true, false, true))), false), arg_3.x);
    var var_1 = var_0;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-var_1.b.x)), var_1.c.x)), Struct_1(_wgslsmith_div_vec4_i32(var_1.a, var_1.a), _wgslsmith_f_op_vec4_f32(arg_0 - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1081f, -418f, 196f, arg_1.x)))), !select(select(var_0.c, var_1.c, true), select(vec2<bool>(var_0.c.x, var_1.c.x), vec2<bool>(false, true), false), var_0.c.x), -select(_wgslsmith_mod_i32(3677i, -1i), 2147483647i, false)), select(var_1.c, vec2<bool>(true, true), !(!(!var_0.c))));
    var_1 = var_2.b;
    var var_3 = var_2.b;
    return 469f;
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-409f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1797f, -194f, true)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<i32>(1i, u_input.a.x, -31183i, -40377i), vec4<f32>(-259f, 114f, 124f, -119f), vec2<bool>(true, false), -21005i), ~u_input.b, vec4<f32>(635f, 1226f, -645f, 472f), max(vec2<u32>(40660u, arg_0), vec2<u32>(arg_0, 25286u)))), _wgslsmith_f_op_f32(func_3(vec4<f32>(2005f, -756f, -230f, -352f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1063f, 545f, -473f, 808f) + vec4<f32>(-1861f, -1068f, -1000f, -598f)), u_input.b ^ u_input.b, -vec3<i32>(0i, u_input.a.x, u_input.d.x))))))), Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 18182i, u_input.d.x, u_input.a.x), ~vec4<i32>(-1i, 19964i, u_input.c.x, 18463i)) << (~_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, arg_0, 1u, arg_0), vec4<u32>(0u, 1u, 56583u, u_input.b)) % vec4<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2019f - 175f) + _wgslsmith_f_op_f32(-988f * 1352f)), _wgslsmith_f_op_f32(func_2(Struct_1(u_input.c, vec4<f32>(537f, -1264f, -901f, 2902f), vec2<bool>(true, false), 0i), reverseBits(arg_0), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1196f, 1000f, 1192f, -1677f), vec4<f32>(-343f, 1680f, 1000f, -424f), vec4<bool>(true, false, false, true))), _wgslsmith_mult_vec2_u32(vec2<u32>(15722u, 4294967295u), vec2<u32>(u_input.b, arg_0)))), -838f, -980f), vec2<bool>(true, false), _wgslsmith_div_i32(u_input.d.x, _wgslsmith_add_i32(-1i, _wgslsmith_div_i32(-30175i, 18129i)))), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), true)));
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1098f, _wgslsmith_f_op_f32(max(-309f, var_0.b.b.x)))))), var_0.b, vec2<bool>(any(vec2<bool>(var_0.c.x, true)), var_0.c.x));
    let var_1 = u_input.c.x;
    let var_2 = ~(~_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(1u, u_input.b, 20880u, 55255u)), ~vec4<u32>(1u, 65488u, 0u, 0u)));
    var var_3 = Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(5138i, ~_wgslsmith_dot_vec2_i32(u_input.c.zy, var_0.b.a.yw), countOneBits(var_1) | 1297i, 870i), vec4<i32>(-2147483647i ^ var_1, -u_input.d.x, -var_1, -var_0.b.a.x) ^ ~_wgslsmith_mod_vec4_i32(var_0.b.a, vec4<i32>(6315i, u_input.d.x, -2147483647i, 2147483647i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_0.b.b, var_0.b.b))), !select(!var_0.c, vec2<bool>(!var_0.b.c.x, true), vec2<bool>(true, var_0.c.x && true)), _wgslsmith_mod_i32(var_1, 0i));
    return all(!(!select(!vec3<bool>(true, var_3.c.x, var_3.c.x), vec3<bool>(var_0.b.c.x, var_0.c.x, var_3.c.x), vec3<bool>(true, var_0.b.c.x, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_add_u32(countOneBits(select(u_input.b, u_input.b, false)) << (abs(26851u) % 32u), 1u));
    var var_1 = _wgslsmith_div_vec2_u32(~(~max(vec2<u32>(0u, u_input.b), vec2<u32>(84490u, u_input.b) >> (vec2<u32>(26324u, u_input.b) % vec2<u32>(32u)))), reverseBits(vec2<u32>(firstTrailingBit(4294967295u) | 0u, max(u_input.b, u_input.b))));
    var var_2 = _wgslsmith_add_u32(18841u, 12741u);
    var var_3 = !var_0;
    var_1 = ~_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.b, ~22457u), select(firstLeadingBit(~vec2<u32>(u_input.b, var_1.x)), abs(vec2<u32>(0u, 1u)), all(select(vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, var_0, var_0)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.xxy);
}

