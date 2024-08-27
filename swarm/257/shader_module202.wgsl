struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec4<i32> {
    var var_0 = Struct_4(~4294967295u, u_input.a.x, arg_0, Struct_2(39327i, true, Struct_1(all(select(vec2<bool>(false, arg_0.a), vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(true, true))))));
    return select(~(-vec4<i32>(32653i, -2147483647i, 1i, 2147483647i) | vec4<i32>(-30826i, -49558i, -var_0.d.a, abs(var_0.b))), _wgslsmith_sub_vec4_i32(~(-select(vec4<i32>(var_0.b, u_input.d.x, u_input.a.x, -44462i), vec4<i32>(u_input.a.x, var_0.d.a, u_input.a.x, 40998i), true)), vec4<i32>(var_0.d.a, u_input.a.x, -27392i, i32(-1i) * -16170i)), select(select(select(select(vec4<bool>(true, true, arg_0.a, var_0.c.a), vec4<bool>(arg_0.a, true, true, arg_0.a), false), select(vec4<bool>(false, true, var_0.d.c.a, false), vec4<bool>(true, true, var_0.d.c.a, var_0.c.a), arg_0.a), select(vec4<bool>(var_0.c.a, var_0.c.a, var_0.d.b, var_0.d.c.a), vec4<bool>(false, true, false, arg_0.a), true)), vec4<bool>(true, true, !var_0.d.b, var_0.c.a), select(select(vec4<bool>(arg_0.a, arg_0.a, var_0.d.b, var_0.c.a), vec4<bool>(false, var_0.c.a, arg_0.a, true), vec4<bool>(true, arg_0.a, arg_0.a, true)), vec4<bool>(var_0.d.c.a, true, true, false), any(vec2<bool>(arg_0.a, var_0.c.a)))), vec4<bool>(true, any(vec2<bool>(var_0.d.b, true)) & true, var_0.d.c.a, any(!vec3<bool>(var_0.c.a, arg_0.a, false))), vec4<bool>(var_0.d.c.a, arg_0.a, true, true)));
}

fn func_2() -> Struct_1 {
    var var_0 = abs(u_input.a);
    var var_1 = abs(countOneBits(~u_input.b));
    var var_2 = func_3(Struct_1(true), u_input.c);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1511f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1343f, _wgslsmith_f_op_f32(599f + 1373f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * _wgslsmith_f_op_f32(386f - -172f))));
    let var_4 = any(vec4<bool>(true, true, true, !all(vec3<bool>(false, false, false)) || any(vec3<bool>(true, true, true))));
    return Struct_1(true);
}

fn func_1() -> vec3<f32> {
    var var_0 = Struct_4(global0[_wgslsmith_index_u32(1u, 6u)], ~abs(_wgslsmith_mult_i32(u_input.d.x, 15664i) ^ u_input.a.x), func_2(), Struct_2(-2147483647i, all(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), func_2()));
    let var_1 = var_0.d;
    var_0 = Struct_4(min(19902u, 18125u), var_1.a, Struct_1(1u >= _wgslsmith_dot_vec3_u32(vec3<u32>(9035u, 35420u, var_0.a), ~vec3<u32>(48109u, 137667u, 1u))), Struct_2(var_0.d.a, false, var_1.c));
    global0 = array<u32, 6>();
    let var_2 = _wgslsmith_div_f32(564f, 492f);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2, var_2, var_2)))))) - vec3<f32>(var_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-238f))), var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-190f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1864f, -645f, -1225f) - vec3<f32>(1032f, -362f, -487f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1459f, 1000f, -775f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(243f, 617f, 856f) - vec3<f32>(-1567f, 1000f, -1918f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 355f, -1206f) + vec3<f32>(758f, 574f, -654f))))));
    var var_1 = Struct_3(vec2<bool>(any(vec4<bool>(true, true, true, true)) || !all(vec2<bool>(false, false)), func_2().a), Struct_2(~_wgslsmith_sub_i32(u_input.d.x & -24465i, ~1i), true, Struct_1(all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), false)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_f_op_f32(round(-239f))))), Struct_2(1i, all(vec4<bool>(true, true, true, false)) && all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), true)), func_2()));
    let var_2 = ~abs(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 0u) ^ min(vec2<u32>(94250u, global0[_wgslsmith_index_u32(4294967295u, 6u)]) & vec2<u32>(17780u, 16494u), vec2<u32>(6130u, 3219u)));
    var_1 = Struct_3(vec2<bool>(all(select(vec3<bool>(true, var_1.b.c.a, var_1.b.c.a), select(vec3<bool>(true, false, var_1.a.x), vec3<bool>(var_1.a.x, var_1.d.c.a, var_1.d.c.a), vec3<bool>(var_1.a.x, false, var_1.d.b)), select(vec3<bool>(true, true, var_1.a.x), vec3<bool>(var_1.b.c.a, false, false), vec3<bool>(false, var_1.b.c.a, true)))), all(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, true))), Struct_2(abs(abs(var_1.b.a)), var_1.b.c.a, var_1.d.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-653f, -1000f)), var_1.b);
    var_1 = Struct_3(var_1.a, Struct_2(~0i, false, var_1.d.c), var_1.c, var_1.b);
    global0 = array<u32, 6>();
    let var_3 = abs(select(vec3<u32>(4294967295u, _wgslsmith_add_u32(_wgslsmith_mod_u32(1u, 31286u), 1u), firstTrailingBit(~var_2.x)), ((vec3<u32>(6101u, u_input.b, global0[_wgslsmith_index_u32(0u, 6u)]) ^ vec3<u32>(u_input.c, 4294967295u, 4294967295u)) | vec3<u32>(1u, 1u, 13288u)) << (~vec3<u32>(0u, 1u, 16872u) % vec3<u32>(32u)), select(vec3<bool>(var_1.b.b, true, all(var_1.a)), vec3<bool>(true, true, true), select(select(vec3<bool>(var_1.a.x, var_1.b.b, false), vec3<bool>(true, var_1.a.x, true), var_1.a.x), select(vec3<bool>(true, true, false), vec3<bool>(false, true, var_1.b.c.a), false), var_1.a.x))));
    let var_4 = u_input.d.x;
    var_1 = Struct_3(vec2<bool>(false, !(!var_1.d.c.a)), Struct_2(-func_3(func_2(), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(4294967295u, 6u)], u_input.c)).x, any(!vec3<bool>(var_1.b.b, var_1.a.x, true)), func_2()), vec2<f32>(132f, -533f), Struct_2(2147483647i, true, var_1.b.c));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(firstLeadingBit(0i), 1i, var_4, ~(~(var_4 << (37786u % 32u)))), firstLeadingBit(abs(abs(~vec3<u32>(0u, var_3.x, u_input.c)))));
}

