struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: f32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> f32 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1816f * arg_2.c.x));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.c.x + -598f), arg_2.c.x);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec2<i32> {
    let var_0 = arg_1;
    let var_1 = arg_1;
    var var_2 = var_0.c.zy;
    let var_3 = var_1;
    let var_4 = Struct_1(-((-59797i ^ arg_2.e.x) | arg_1.e.x), vec4<bool>(false, true, any(!vec3<bool>(arg_2.b.x, false, arg_2.b.x)), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_1.c, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1167f, 1456f, 2144f) - var_0.c)))))), vec3<i32>(firstTrailingBit(_wgslsmith_clamp_i32(2147483647i | var_1.d.x, _wgslsmith_mult_i32(arg_2.d.x, -2147483647i), arg_2.d.x | 13871i)), 6531i, -41142i), firstTrailingBit(arg_1.d.yy));
    return -var_0.d.zx >> ((~(~(~vec2<u32>(4294967295u, u_input.c))) & abs(max(~vec2<u32>(4294967295u, u_input.c), _wgslsmith_mod_vec2_u32(vec2<u32>(79671u, u_input.c), vec2<u32>(64939u, 4294967295u))))) % vec2<u32>(32u));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> f32 {
    var var_0 = 0i;
    let var_1 = global0[_wgslsmith_index_u32(u_input.c, 10u)];
    var var_2 = var_1.b.xzx;
    var var_3 = Struct_1(arg_0.d.x, vec4<bool>(all(var_2.yx), true && var_1.b.x, true, true), var_1.c, vec3<i32>(-1i, arg_0.d.x, arg_0.e.x), func_3(~1u, Struct_1(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-62916i, 17935i)), ~var_1.d.yy), var_1.b, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.x, -480f, -345f))), vec3<i32>(~2147483647i, 62902i, max(-2147483647i, 8369i)), u_input.a), Struct_1(~(-31698i), select(vec4<bool>(false, false, arg_0.b.x, arg_0.b.x), arg_0.b, true), vec3<f32>(_wgslsmith_f_op_f32(func_2(u_input.a, Struct_1(var_1.e.x, vec4<bool>(arg_0.b.x, false, arg_0.b.x, true), vec3<f32>(arg_1.x, 432f, -1000f), vec3<i32>(22088i, 7378i, u_input.b), vec2<i32>(-28459i, -34982i)), arg_0, var_1.b)), arg_0.c.x, 268f), reverseBits(firstLeadingBit(arg_0.d)), arg_0.d.zx), -_wgslsmith_mod_i32(-2147483647i, u_input.a.x)));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.c.x))));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = ~(-abs(reverseBits(vec4<i32>(arg_2.a, -1i, arg_3.e.x, -9031i))));
    let var_1 = false;
    global1 = 245f;
    let var_2 = reverseBits(select(u_input.c, reverseBits((u_input.c ^ u_input.c) | 4294967295u), true));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-295f))) + -1526f) + 981f));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -1027f;
    var var_0 = ~(-2147483647i >> (~func_4(_wgslsmith_add_i32(-47896i, 0i), _wgslsmith_f_op_f32(func_1(Struct_1(u_input.a.x, vec4<bool>(false, false, false, false), vec3<f32>(254f, -351f, -1547f), vec3<i32>(u_input.b, -2147483647i, u_input.b), vec2<i32>(7206i, -13467i)), vec4<f32>(-193f, 141f, -605f, 678f))), Struct_1(u_input.b, vec4<bool>(false, false, true, false), vec3<f32>(-496f, 2035f, 1263f), vec3<i32>(u_input.b, u_input.a.x, -18179i), vec2<i32>(2147483647i, u_input.b)), global0[_wgslsmith_index_u32(max(1u, u_input.c), 10u)]) % 32u));
    let var_1 = global0[_wgslsmith_index_u32(0u, 10u)];
    global1 = _wgslsmith_f_op_f32(floor(-1000f));
    global0 = array<Struct_1, 10>();
    var var_2 = vec4<bool>(false, false, true, (-u_input.a.x & func_3(~u_input.c, global0[_wgslsmith_index_u32(firstTrailingBit(101095u), 10u)], global0[_wgslsmith_index_u32(u_input.c, 10u)], var_1.e.x).x) > u_input.a.x);
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1002f - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-330f, -246f)))) + _wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_f32(1211f - var_1.c.x)));
    var var_3 = firstLeadingBit(-(~abs(~vec4<i32>(-4836i, u_input.a.x, 2414i, var_1.d.x))));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_1.c.x, var_1.c.x), _wgslsmith_f_op_f32(max(1368f, var_1.c.x)), _wgslsmith_f_op_f32(-727f * 557f), _wgslsmith_f_op_f32(f32(-1f) * -275f))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(906f, -1207f, var_1.c.x, -200f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1692f, var_1.c.x, -273f, var_1.c.x) * vec4<f32>(-461f, -708f, var_1.c.x, var_1.c.x)) * vec4<f32>(var_1.c.x, 914f, var_1.c.x, var_1.c.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(~34937u | u_input.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, var_4.x, var_4.x, var_4.x) - _wgslsmith_f_op_vec4_f32(var_4 * var_4)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_4)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_4))), -9732i, 4294967295u, -1i);
}

