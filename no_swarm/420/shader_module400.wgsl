struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<bool>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20> = array<u32, 20>(4294967295u, 52023u, 31826u, 22302u, 1u, 44245u, 0u, 3334u, 113316u, 0u, 0u, 4294967295u, 4294967295u, 1u, 29889u, 1u, 1u, 48291u, 0u, 67104u);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: vec3<f32>) -> Struct_2 {
    global0 = array<u32, 20>();
    let var_0 = Struct_2(Struct_1(vec2<bool>(false, u_input.c.x > arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2.x - 1599f), _wgslsmith_f_op_f32(arg_2.x - arg_2.x), arg_2.x, _wgslsmith_f_op_f32(arg_2.x * arg_2.x))), false, arg_1.x >> (u_input.b.x % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2805f - arg_2.x) + arg_2.x));
    global0 = array<u32, 20>();
    var var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b.x * 966f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -870f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-312f - var_0.b))), -1000f, arg_2.x)));
    global0 = array<u32, 20>();
    return var_0;
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec2<i32>) -> f32 {
    var var_0 = u_input.b;
    var var_1 = true;
    var var_2 = Struct_2(Struct_1(arg_0.a.a, vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(arg_0.a.b.x + _wgslsmith_f_op_f32(abs(arg_0.b))), _wgslsmith_f_op_f32(-1052f - _wgslsmith_f_op_f32(-arg_0.a.b.x)), 1089f), true, arg_1), _wgslsmith_f_op_f32(-func_2(abs(arg_2.x), countOneBits(abs(vec2<u32>(0u, 1u))), vec3<f32>(_wgslsmith_f_op_f32(2331f + arg_0.a.b.x), _wgslsmith_f_op_f32(step(712f, -1258f)), 1099f)).a.b.x));
    var var_3 = _wgslsmith_mod_vec4_u32(max(~(~vec4<u32>(84922u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49894u, 20u)], 20u)], arg_1, var_0.x)), vec4<u32>(firstTrailingBit(4294967295u), _wgslsmith_div_u32(1u, _wgslsmith_add_u32(14914u, global0[_wgslsmith_index_u32(7991u, 20u)])), 1u, abs(var_2.a.d))), ~_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(var_0.x, arg_0.a.d, var_0.x, 0u) >> (vec4<u32>(4294967295u, arg_0.a.d, 76792u, global0[_wgslsmith_index_u32(43981u, 20u)]) % vec4<u32>(32u))), min(firstLeadingBit(vec4<u32>(16091u, u_input.b.x, u_input.b.x, 1u)), ~vec4<u32>(0u, arg_0.a.d, 30634u, global0[_wgslsmith_index_u32(var_2.a.d, 20u)])), ~(~vec4<u32>(arg_0.a.d, 0u, u_input.b.x, arg_1))));
    let var_4 = true;
    return _wgslsmith_f_op_f32(round(-146f));
}

fn func_1() -> f32 {
    let var_0 = func_2(2147483647i, ~vec2<u32>(u_input.b.x, u_input.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1356f - -697f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -552f)), 1023f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1000f, -1090f), _wgslsmith_f_op_f32(-1000f + 1151f), _wgslsmith_f_op_f32(-315f - -1720f)))));
    let var_1 = Struct_4(Struct_2(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_0, 0u, vec2<i32>(-18679i, u_input.c.x))) - _wgslsmith_f_op_f32(var_0.b - var_0.a.b.x)))), i32(-1i) * -1i);
    let var_2 = _wgslsmith_f_op_vec3_f32(var_1.a.a.b.wwz + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b, _wgslsmith_div_f32(var_1.a.a.b.x, 549f), _wgslsmith_f_op_f32(ceil(339f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1132f, var_1.a.a.b.x, var_1.a.a.b.x) + vec3<f32>(409f, -919f, 683f)), select(select(vec3<bool>(true, var_1.a.a.c, var_0.a.a.x), vec3<bool>(var_0.a.a.x, var_1.a.a.c, true), vec3<bool>(var_0.a.c, var_1.a.a.a.x, false)), select(vec3<bool>(false, var_1.a.a.c, true), vec3<bool>(true, true, false), true), !vec3<bool>(var_0.a.a.x, false, false)))), var_0.a.b.zxx)));
    var var_3 = Struct_4(func_2(u_input.a.x, _wgslsmith_div_vec2_u32(u_input.b.xy, ~min(u_input.b.zx, vec2<u32>(u_input.b.x, 65431u))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(var_2, vec3<f32>(-416f, 353f, 1000f))))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.b.x), -281f, _wgslsmith_f_op_f32(max(1443f, 277f)))))), _wgslsmith_mod_i32(~firstTrailingBit(0i), var_1.b));
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2209f - var_2.x), var_3.a.a.b.x)) * _wgslsmith_f_op_f32(-767f - -1648f)), var_2.x) > -488f;
    return _wgslsmith_f_op_f32(-696f + _wgslsmith_f_op_f32(-var_3.a.a.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1015f, -729f, 668f, -1000f)))), all(vec2<bool>(any(vec4<bool>(false, true, true, false)), true)), 1u), _wgslsmith_f_op_f32(func_1()));
    let var_1 = var_0.a;
    global0 = array<u32, 20>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_1.b.x)))))), _wgslsmith_f_op_f32(func_3(var_0, ~(~32711u), select(~u_input.a.xx, -vec2<i32>(1i, -32072i), true))), _wgslsmith_f_op_f32(func_1())));
    var var_3 = Struct_4(func_2(u_input.a.x, _wgslsmith_sub_vec2_u32(u_input.b.zz, ~(~vec2<u32>(var_1.d, 53574u))), var_2.yyw), (i32(-1i) * -18528i) << (_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b.x, 40388u, 1u, 0u)), vec4<u32>(u_input.b.x, 4294967295u, 49395u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d, 26634u), vec2<u32>(var_1.d, u_input.b.x)))) % 32u));
    var var_4 = Struct_3(select(_wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(min(var_3.a.a.b.x, var_1.b.x)))) < var_3.a.a.b.x, false, false), var_3.a, select(!select(!vec3<bool>(var_1.c, true, true), !vec3<bool>(true, var_3.a.a.a.x, var_1.c), any(vec3<bool>(var_3.a.a.a.x, var_0.a.a.x, var_0.a.a.x))), !vec3<bool>(false, var_1.a.x, var_1.c), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + var_2.x) - -632f), 1000f, -1000f)), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-491f, -763f), var_1.b.xw) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-556f, -378f) + var_3.a.a.b.wx)), vec2<f32>(-1742f, 127f), !select(vec2<bool>(true, var_4.a), vec2<bool>(var_0.a.a.x, false), var_1.a))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.wx) * vec2<f32>(var_4.b.b, var_1.b.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, 1000f)))));
}

