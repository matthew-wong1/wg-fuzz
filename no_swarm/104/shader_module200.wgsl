struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
    c: Struct_2,
    d: vec2<f32>,
    e: bool,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(0u, 1u, 0u), vec3<u32>(6573u, 35828u, 68131u), vec3<u32>(4294967295u, 9295u, 0u), vec3<u32>(4294967295u, 1u, 29580u), vec3<u32>(1u, 4294967295u, 15015u), vec3<u32>(15350u, 24352u, 1u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(4294967295u, 0u, 20217u));

var<private> global1: array<vec3<f32>, 16>;

var<private> global2: array<i32, 1>;

var<private> global3: Struct_1 = Struct_1(vec3<u32>(0u, 8362u, 0u), vec4<bool>(false, true, false, true), vec2<f32>(-776f, 314f), vec3<u32>(4294967295u, 36707u, 2045u), false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_4(vec2<bool>(true, true == !(!global3.b.x)), _wgslsmith_f_op_f32(exp2(global3.c.x)), Struct_2(abs(u_input.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3.c.x, -725f, -568f, global3.c.x), vec4<f32>(994f, -305f, global3.c.x, global3.c.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c.x, -636f, -973f, global3.c.x) - vec4<f32>(global3.c.x, global3.c.x, -1638f, global3.c.x)), !vec4<bool>(false, global3.b.x, false, true))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -129f), _wgslsmith_f_op_f32(trunc(-1280f)), global3.c.x, _wgslsmith_f_op_f32(floor(-2243f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-675f, global3.c.x) * _wgslsmith_f_op_vec2_f32(-global3.c))), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.d.x, global3.a.x), vec2<u32>(0u, 22356u)), ~4294967295u), u_input.a), ((u_input.e >> (36183u % 32u)) | ~(-5540i)) << (26742u % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-177f, _wgslsmith_f_op_f32(-1077f - global3.c.x)))), !all(vec4<bool>(false, all(vec4<bool>(global3.b.x, false, global3.b.x, true)), !global3.e, global3.e)));
    let var_1 = -(_wgslsmith_div_i32(~_wgslsmith_div_i32(0i, -1i), 1i) ^ global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32((vec3<u32>(u_input.d, 72587u, 8086u) | vec3<u32>(43335u, 53202u, 0u)) & (vec3<u32>(4294967295u, var_0.c.d.x, 23874u) & global3.d), abs(~global3.a)), 1u)]);
    global3 = Struct_1(~vec3<u32>(~1u, firstTrailingBit(4294967295u), 4294967295u), vec4<bool>(global3.b.x | all(global3.b), true, var_0.c.c.x <= global3.c.x, !(all(vec4<bool>(false, true, var_0.a.x, false)) || true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.c.b.zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(681f, var_0.b), var_0.c.c)))) * _wgslsmith_f_op_vec2_f32(var_0.c.b.zy - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(global3.c, var_0.d))))), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(57060u, abs(var_0.c.d.x), ~global3.a.x), firstLeadingBit(~vec3<u32>(64830u, u_input.a.x, 0u))), 8u)], !(firstTrailingBit(49377u) > (_wgslsmith_dot_vec4_u32(vec4<u32>(global3.d.x, 1u, 4294967295u, 51796u), vec4<u32>(1u, 26658u, var_0.c.d.x, 32740u)) & 37080u)));
    global0 = array<vec3<u32>, 8>();
    let var_2 = Struct_3(var_0.c, global3.a.x, reverseBits(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-3853i, var_1, 22892i), select(u_input.b.wxz, u_input.b.xzw, vec3<bool>(true, false, var_0.a.x))), vec3<i32>(var_1, var_1, min(u_input.e, 1i)))));
    return u_input.a;
}

fn func_2(arg_0: i32) -> vec2<bool> {
    var var_0 = ~(-19372i);
    global1 = array<vec3<f32>, 16>();
    global2 = array<i32, 1>();
    var var_1 = Struct_4(vec2<bool>(!global3.e || (_wgslsmith_f_op_f32(-global3.c.x) == _wgslsmith_f_op_f32(1446f + 1692f)), global3.b.x), _wgslsmith_div_f32(global3.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global3.c.x))))), Struct_2(max(-_wgslsmith_div_i32(arg_0, arg_0), select(arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(20308i, arg_0), vec2<i32>(1884i, 19892i)), !global3.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global3.c.x, 1619f, -286f, 1087f), vec4<f32>(-238f, global3.c.x, -1568f, 252f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1029f, 1402f, 840f, global3.c.x)) + vec4<f32>(global3.c.x, -1231f, global3.c.x, -213f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global3.c, vec2<f32>(global3.c.x, -711f)))), _wgslsmith_mult_vec2_u32(abs(u_input.a), max(u_input.a, vec2<u32>(1u, 11002u))) << (firstLeadingBit(func_3()) % vec2<u32>(32u)), arg_0), global3.c, any(global3.b.zx));
    return global3.b.yw;
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    global2 = array<i32, 1>();
    var var_0 = Struct_5(global3.c.x, Struct_4(func_2(_wgslsmith_mod_i32(~1i, firstTrailingBit(-1i))), global3.c.x, Struct_2(i32(-1i) * -2147483647i, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.c.x, -646f, global3.c.x, global3.c.x))), vec4<f32>(-1455f, global3.c.x, 791f, global3.c.x))), _wgslsmith_div_vec2_f32(vec2<f32>(global3.c.x, 1219f), _wgslsmith_f_op_vec2_f32(-global3.c)), _wgslsmith_sub_vec2_u32(global3.d.xx >> (vec2<u32>(4294967295u, 2231u) % vec2<u32>(32u)), func_3()), firstTrailingBit(global2[_wgslsmith_index_u32(~global3.d.x, 1u)])), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3.c.x, 457f))), global3.c, any(!vec3<bool>(arg_0.x, true, global3.e)))), func_2(1i).x));
    var var_1 = true;
    global1 = array<vec3<f32>, 16>();
    var_1 = any(!vec3<bool>(1u == global3.d.x, func_2(u_input.e).x, 1118u <= global3.a.x));
    return Struct_1(vec3<u32>(global3.a.x, var_0.b.c.d.x, firstTrailingBit(~var_0.b.c.d.x)), select(global3.b, vec4<bool>(_wgslsmith_f_op_f32(-global3.c.x) >= _wgslsmith_f_op_f32(-var_0.a), global3.b.x, select(u_input.d == var_0.b.c.d.x, global3.e, any(global3.b.zyz)), true == any(arg_0)), !global3.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_f_op_f32(-global3.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.d.x) + _wgslsmith_f_op_f32(-global3.c.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-500f, 113f))), max(global0[_wgslsmith_index_u32(u_input.d, 8u)], ~vec3<u32>(_wgslsmith_mod_u32(12290u, global3.d.x), _wgslsmith_div_u32(global3.d.x, var_0.b.c.d.x), global3.d.x >> (1u % 32u))), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!(!global3.b.zxz));
    var var_1 = select(vec4<bool>(all(!global3.b), global2[_wgslsmith_index_u32(~min(11488u, 1u), 1u)] != abs(1i), false, var_0.b.x), var_0.b, !global3.e);
    let x = u_input.a;
    s_output = StorageBuffer(-967f);
}

