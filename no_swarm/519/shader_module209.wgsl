struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(587f, -1000f, 372f, 365f);

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(-46009i, 181f, vec4<bool>(true, false, true, true)), Struct_1(0i, -413f, vec4<bool>(false, true, false, false)), Struct_1(-1i, 172f, vec4<bool>(true, true, true, false)), Struct_1(-22986i, -527f, vec4<bool>(true, true, false, true)), Struct_1(67005i, 1455f, vec4<bool>(false, true, false, false)), Struct_1(-69225i, -2564f, vec4<bool>(false, true, true, false)), Struct_1(-27696i, 1172f, vec4<bool>(true, false, true, false)), Struct_1(1i, 286f, vec4<bool>(true, false, true, true)), Struct_1(0i, -812f, vec4<bool>(false, false, false, false)), Struct_1(-10168i, 1283f, vec4<bool>(true, false, false, true)), Struct_1(37468i, -1047f, vec4<bool>(false, true, true, false)), Struct_1(2147483647i, 1247f, vec4<bool>(false, true, true, false)), Struct_1(42853i, 264f, vec4<bool>(true, false, true, true)), Struct_1(-1i, -883f, vec4<bool>(false, false, false, false)), Struct_1(i32(-2147483648), 1020f, vec4<bool>(false, true, false, false)), Struct_1(-17564i, 1000f, vec4<bool>(true, true, false, false)), Struct_1(35131i, -942f, vec4<bool>(false, false, true, false)), Struct_1(-8444i, 876f, vec4<bool>(false, true, false, true)), Struct_1(-10369i, 132f, vec4<bool>(true, true, false, true)), Struct_1(14644i, 805f, vec4<bool>(true, true, false, false)), Struct_1(11722i, -169f, vec4<bool>(false, false, true, true)), Struct_1(i32(-2147483648), 710f, vec4<bool>(true, true, true, true)), Struct_1(1i, 994f, vec4<bool>(true, false, false, false)), Struct_1(22458i, -857f, vec4<bool>(true, false, false, false)), Struct_1(22893i, -150f, vec4<bool>(false, false, false, false)), Struct_1(21572i, -987f, vec4<bool>(true, true, true, true)), Struct_1(i32(-2147483648), -2505f, vec4<bool>(true, true, true, true)), Struct_1(46792i, -583f, vec4<bool>(false, true, true, false)));

var<private> global2: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false));

var<private> global3: array<u32, 26>;

var<private> global4: Struct_1 = Struct_1(i32(-2147483648), 1386f, vec4<bool>(true, false, true, true));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2) -> f32 {
    global1 = array<Struct_1, 28>();
    var var_0 = select(global4.c.yxx, global4.c.xyx, !(!vec3<bool>(global4.c.x, true, all(vec3<bool>(true, global4.c.x, global4.c.x)))));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1920f, -925f, global4.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global4.b)), global0.x)))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(706f - _wgslsmith_f_op_f32(-global4.b)))), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(round(-1000f))), 763f, _wgslsmith_f_op_f32(566f - arg_0.b)));
    var var_2 = _wgslsmith_mod_u32(u_input.a.x << (abs(global3[_wgslsmith_index_u32(u_input.a.x, 26u)]) % 32u), ~_wgslsmith_dot_vec4_u32(u_input.a, firstTrailingBit(vec4<u32>(2208u, 0u, u_input.a.x, 0u))));
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-493f)) + global0.x))), -1847f, global0.x, global0.x) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(303f + _wgslsmith_f_op_f32(f32(-1f) * -1350f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-427f - global4.b), _wgslsmith_f_op_f32(floor(-1244f)), true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b * arg_0.b) - -1286f))), _wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(global4.b - _wgslsmith_f_op_f32(var_1.x * 1f))));
    return arg_0.b;
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_dot_vec3_u32(~u_input.a.xxz >> ((u_input.a.xxw >> (vec3<u32>(23613u, 4294967295u, global3[_wgslsmith_index_u32(57490u, 26u)]) % vec3<u32>(32u))) % vec3<u32>(32u)), reverseBits(vec3<u32>(0u, global3[_wgslsmith_index_u32(u_input.a.x, 26u)], 30134u) | u_input.a.zzx)), 1142f, ~vec2<i32>(-43259i, global4.a))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-286f, var_0, global4.b, var_0)))))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(278f, var_0, _wgslsmith_div_f32(var_0, global0.x), _wgslsmith_f_op_f32(f32(-1f) * -174f))))) * vec4<f32>(-305f, 536f, -1000f, -1878f));
    global1 = array<Struct_1, 28>();
    var var_1 = Struct_2(global3[_wgslsmith_index_u32(~(~u_input.a.x >> (~22904u % 32u)), 26u)] >> (36674u % 32u), _wgslsmith_f_op_f32(-var_0), ~vec2<i32>(global4.a, ~(~global4.a)));
    let var_2 = ~(~var_1.a);
    return countOneBits(1i) << (var_1.a % 32u);
}

fn func_1(arg_0: f32) -> vec3<bool> {
    var var_0 = global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(1u, 26u)], u_input.a.x)), 26u)], 28u)];
    global4 = Struct_1(func_2(), 269f, !global2[_wgslsmith_index_u32(u_input.a.x, 19u)]);
    var var_1 = vec2<bool>(false, global4.c.x);
    let var_2 = global3[_wgslsmith_index_u32(u_input.a.x, 26u)];
    let var_3 = global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(abs(8194u), ~(~4294967295u)), 26u)];
    return var_0.c.yzx;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 28>();
    let var_0 = select(!vec3<bool>(all(!vec2<bool>(global4.c.x, global4.c.x)), true, false), func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x)))), any(!global4.c.xz));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1601f, 180f, global4.b, global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(878f, global4.b, global0.x, 441f) * vec4<f32>(global4.b, global4.b, -1000f, global4.b)))))));
    let var_1 = Struct_1(~(~21298i), global0.x, !global2[_wgslsmith_index_u32(~24318u, 19u)]);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-677f, _wgslsmith_f_op_f32(exp2(var_1.b))) + global0.yw));
    var var_3 = abs(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 4294967295u), _wgslsmith_sub_vec2_u32(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(35737u, 1u), u_input.a.xw, vec2<u32>(global3[_wgslsmith_index_u32(1u, 26u)], 35062u)), vec2<u32>(6231u, u_input.a.x), vec2<bool>(false, false)), min(select(u_input.a.ww, u_input.a.yy, vec2<bool>(global4.c.x, var_1.c.x)), ~u_input.a.ww))));
    var_2 = vec2<f32>(var_1.b, _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -293f))));
    let x = u_input.a;
    s_output = StorageBuffer(2800i, global4.a, vec4<f32>(global4.b, -1640f, _wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-451f * var_2.x), var_1.b))), _wgslsmith_f_op_f32(-global4.b)), -(~firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, var_1.a, global4.a), vec3<i32>(global4.a, -9895i, var_1.a)))), _wgslsmith_sub_vec3_i32(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-56989i, -10554i, var_1.a), vec3<i32>(global4.a, -1i, var_1.a)) ^ reverseBits(vec3<i32>(var_1.a, 2147483647i, global4.a))), select(-(vec3<i32>(var_1.a, var_1.a, -1i) << (vec3<u32>(0u, 4294967295u, 4294967295u) % vec3<u32>(32u))), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, var_1.a, 2147483647i), vec3<i32>(global4.a, global4.a, global4.a), vec3<i32>(global4.a, -1i, global4.a)), countOneBits(vec3<i32>(global4.a, var_1.a, 1i)), false), !(!var_0.x))));
}

