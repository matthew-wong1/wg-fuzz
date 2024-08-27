struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

var<private> global1: array<vec3<i32>, 2>;

var<private> global2: array<u32, 22>;

var<private> global3: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>) -> u32 {
    let var_0 = ~(~u_input.a.x) & 32984u;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(269f, -191f), _wgslsmith_f_op_f32(-arg_1.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2065f, 952f))))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(arg_1)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1) - _wgslsmith_f_op_vec2_f32(arg_1 + vec2<f32>(arg_1.x, arg_1.x)))))), _wgslsmith_clamp_i32(-(1i << (_wgslsmith_clamp_u32(4294967295u, var_0, 20983u) % 32u)), abs(50123i), 2147483647i), true, select(reverseBits(reverseBits(17615u) >> (u_input.a.x % 32u)), 0u, any(vec3<bool>(true, true, true))));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1980f - 470f), 749f)), var_1.b, arg_0.a, max(firstLeadingBit(global2[_wgslsmith_index_u32(~4294967295u, 22u)] | 1u), 28839u));
    let var_2 = arg_0;
    var var_3 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.x, -1034f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1305f, arg_1.x), vec2<f32>(1151f, var_1.a.x)))))))), 0i, arg_0.a, _wgslsmith_div_u32(1u, ~(~39980u) | _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], 22u)], u_input.a.x, 4294967295u), vec4<u32>(67416u, 105079u, 4294967295u, 4294967295u)), 22u)], firstTrailingBit(global0[_wgslsmith_index_u32(4200u, 5u)]))));
    return var_3.d << (_wgslsmith_add_u32(0u, var_1.d) % 32u);
}

fn func_2(arg_0: f32) -> u32 {
    global1 = array<vec3<i32>, 2>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, arg_0)) - arg_0));
    let var_1 = 94293u < _wgslsmith_clamp_u32(32104u, u_input.a.x, abs(4294967295u));
    let var_2 = Struct_3(u_input.a.zx, vec2<u32>(54937u, _wgslsmith_mod_u32(func_3(Struct_2(var_1), vec2<f32>(657f, -139f)), 4294967295u)), Struct_2(any(select(select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, false, true), false), select(vec3<bool>(var_1, false, var_1), vec3<bool>(true, false, true), vec3<bool>(true, var_1, true)), !vec3<bool>(var_1, var_1, var_1)))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, var_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 537f))))), countOneBits(_wgslsmith_dot_vec2_i32(-vec2<i32>(3234i, 2147483647i), countOneBits(vec2<i32>(-21768i, -2147483647i)))), all(!select(vec4<bool>(var_1, var_1, false, false), vec4<bool>(var_1, var_1, var_1, var_1), true)), 46736u & ~global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(1u, 22u)], 5u)], 22u)]), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1338f, -1000f) + vec2<f32>(var_0, var_0)))) + vec2<f32>(-1255f, _wgslsmith_f_op_f32(-var_0))), _wgslsmith_mult_i32(1i, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-47643i, 2147483647i, 3949i, 1i), vec4<i32>(1i, 0i, 28482i, 0i)))), var_1, global2[_wgslsmith_index_u32(4294967295u, 22u)]));
    var var_3 = var_2.e.b;
    return ~(4294967295u | var_2.a.x);
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0.a.x;
    let var_1 = ~func_2(1085f);
    let var_2 = 1i | arg_0.b;
    let var_3 = ~arg_0.b | ~_wgslsmith_div_i32(arg_0.b, _wgslsmith_mult_i32(_wgslsmith_mod_i32(1090i, 1i), abs(-36289i)));
    global1 = array<vec3<i32>, 2>();
    return _wgslsmith_f_op_f32(round(arg_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1597f, _wgslsmith_f_op_f32(round(-1749f)), -1628f) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-498f, 275f, 110f) - vec3<f32>(-1215f, -1537f, 712f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(538f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(var_0.xx, 0i, false, 18251u))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1537f, _wgslsmith_f_op_f32(min(1777f, var_0.x))) * -1345f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(_wgslsmith_f_op_vec2_f32(var_0.xy - vec2<f32>(var_0.x, -198f)), i32(-1i) * -2050i, true, _wgslsmith_sub_u32(u_input.a.x, 99091u))))), u_input.a.xy);
}

