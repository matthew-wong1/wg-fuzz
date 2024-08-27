struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    let var_0 = arg_2.c;
    let var_1 = vec2<i32>(0i, u_input.b.x);
    var var_2 = Struct_1(arg_0.c.a, select(_wgslsmith_dot_vec3_u32(abs(_wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_2.b, 38312u), arg_1.c.e)), vec3<u32>(firstTrailingBit(28659u), _wgslsmith_clamp_u32(u_input.c.x, 1u, 4294967295u), _wgslsmith_dot_vec3_u32(arg_0.c.e, arg_0.c.e))), _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, arg_1.c.a.x), min(arg_0.c.b, arg_2.e.x)), ~50880u), !(!(arg_1.c.c.x <= 515f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-382f, arg_2.c.x), _wgslsmith_f_op_f32(arg_0.c.c.x * arg_2.c.x), _wgslsmith_f_op_f32(-arg_1.c.c.x)) + vec3<f32>(arg_1.c.c.x, arg_1.c.c.x, _wgslsmith_f_op_f32(var_0.x + arg_0.c.c.x))))), arg_1.c.d, _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~abs(vec3<u32>(arg_0.c.e.x, arg_0.c.a.x, 13120u)), vec3<u32>(u_input.c.x, ~0u, 53195u)), firstLeadingBit(_wgslsmith_sub_vec3_u32(abs(arg_2.e), u_input.c >> (vec3<u32>(46693u, 0u, u_input.c.x) % vec3<u32>(32u))))));
    let var_3 = all(!vec4<bool>(true, all(vec3<bool>(arg_0.c.d.x, true, var_2.d.x)), !var_2.d.x, all(vec2<bool>(false, true)))) && (arg_2.c.x <= var_2.c.x);
    let var_4 = _wgslsmith_f_op_f32(sign(865f));
    return 96228u;
}

fn func_2(arg_0: i32, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_3(true);
    let var_1 = Struct_5(Struct_3(any(!vec3<bool>(var_0.a, true, true))));
    var var_2 = u_input.b;
    let var_3 = Struct_2(select(!vec2<bool>(var_1.a.a, true), !vec2<bool>(false, any(vec3<bool>(false, false, var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1998f)) * _wgslsmith_f_op_f32(sign(251f))) == _wgslsmith_f_op_f32(_wgslsmith_div_f32(-730f, 468f) - -1000f)), 7976i, Struct_1(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, arg_1.x, u_input.a), u_input.c), 40019u), 87353u), abs(~func_3(Struct_2(vec2<bool>(var_1.a.a, var_0.a), -54652i, Struct_1(u_input.c.yy, u_input.d, vec3<f32>(-700f, -1204f, -751f), vec2<bool>(true, var_1.a.a), vec3<u32>(u_input.c.x, arg_1.x, u_input.c.x))), Struct_2(vec2<bool>(true, var_1.a.a), -1i, Struct_1(arg_1, 4294967295u, vec3<f32>(531f, -1000f, -169f), vec2<bool>(var_0.a, var_1.a.a), vec3<u32>(8802u, u_input.c.x, u_input.c.x))), Struct_1(u_input.c.yy, 0u, vec3<f32>(219f, 116f, 244f), vec2<bool>(true, true), u_input.c))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -662f), 659f, _wgslsmith_f_op_f32(f32(-1f) * -1235f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(527f, -1334f, -1907f))))), vec2<bool>(var_1.a.a, var_0.a), u_input.c));
    let var_4 = var_0;
    return var_3;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_2) -> f32 {
    var var_0 = Struct_1(vec2<u32>(_wgslsmith_clamp_u32(0u, select(4294967295u, arg_1, false), 84833u) >> (~(~36770u) % 32u), arg_1), 1u, arg_2.c.c, select(arg_2.c.d, vec2<bool>(true, any(vec3<bool>(true, arg_2.a.x, arg_0)) != !arg_0), vec2<bool>(select(arg_2.a.x, true, any(vec3<bool>(false, true, arg_0))), ~arg_1 > 0u)), ~((_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1, u_input.a, 1u), u_input.c) & (vec3<u32>(arg_2.c.a.x, arg_2.c.b, u_input.a) ^ vec3<u32>(14079u, 4294967295u, 34432u))) << (reverseBits(~vec3<u32>(u_input.a, arg_2.c.a.x, 12760u)) % vec3<u32>(32u))));
    let var_1 = Struct_3(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.c.x, 1u), u_input.c.yx), u_input.c.xz), ~0u) == var_0.b);
    let var_2 = func_2(u_input.b.x, select(~_wgslsmith_div_vec2_u32(arg_2.c.e.zy & vec2<u32>(var_0.a.x, arg_1), ~arg_2.c.a), vec2<u32>(var_0.a.x, 4294967295u) ^ _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(39346u, 0u), arg_2.c.a), ~vec2<u32>(var_0.a.x, 258u), ~vec2<u32>(15758u, 50710u)), any(select(select(vec3<bool>(true, false, arg_0), vec3<bool>(true, false, true), arg_2.a.x), !vec3<bool>(true, true, arg_0), all(vec3<bool>(arg_0, false, var_1.a))))));
    var var_3 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(var_2.c.e, vec3<u32>(_wgslsmith_div_u32(arg_2.c.b, arg_1), arg_2.c.a.x, 1u)), _wgslsmith_sub_u32(var_0.b, ~5720u | ~var_0.e.x), abs(max(arg_2.c.b, 4294967295u) ^ _wgslsmith_div_u32(1u, 4294967295u))), firstLeadingBit(~abs(~vec3<u32>(var_0.e.x, arg_1, arg_1))));
    return arg_2.c.c.x;
}

fn func_1() -> vec3<bool> {
    var var_0 = Struct_2(vec2<bool>(true, true & all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)))), reverseBits(u_input.b.x), Struct_1(~(vec2<u32>(u_input.d, 79011u) ^ firstTrailingBit(u_input.c.zy)), ~(~u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-891f, -1000f, -1382f), vec3<f32>(-819f, -468f, 446f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1039f, 284f, 150f)))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(false, true, false, false))), vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, false, true)), false)), select((u_input.c | vec3<u32>(70026u, u_input.c.x, 4294967295u)) | reverseBits(u_input.c), u_input.c, all(vec4<bool>(true, true, true, true)))));
    let var_1 = vec3<bool>(var_0.a.x, var_0.c.c.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(select(var_0.c.d.x, var_0.c.d.x, var_0.c.d.x), ~72350u, func_2(var_0.b, var_0.c.a))) - var_0.c.c.x), select(any(!vec3<bool>(var_0.c.d.x, var_0.a.x, var_0.a.x)), false, (false == all(vec4<bool>(var_0.c.d.x, false, false, var_0.a.x))) && false));
    let var_2 = Struct_3(func_2(u_input.b.x, abs(vec2<u32>(0u, ~var_0.c.b))).a.x);
    var var_3 = Struct_5(Struct_3(var_1.x & var_2.a));
    let var_4 = var_0.c.a.x;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!func_1());
    var var_1 = vec3<u32>(~u_input.a << (~u_input.a % 32u), _wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(u_input.c, firstLeadingBit(u_input.c)), 0u), ~(min(~u_input.a, ~4294967295u) | (u_input.a >> (_wgslsmith_mult_u32(u_input.a, 4294967295u) % 32u))));
    let var_2 = Struct_5(Struct_3(var_0));
    var var_3 = func_2(u_input.b.x, ~u_input.c.yy).c;
    var var_4 = all(vec3<bool>(true | (~49408u >= _wgslsmith_mult_u32(u_input.c.x, var_1.x)), var_2.a.a, !(true & var_3.d.x)));
    let var_5 = select(!select(!vec4<bool>(var_3.d.x, var_2.a.a, true, var_2.a.a), select(vec4<bool>(true, var_0, true, true), !vec4<bool>(false, false, var_2.a.a, var_0), u_input.b.x <= u_input.b.x), all(select(vec3<bool>(true, var_2.a.a, var_3.d.x), vec3<bool>(false, false, var_3.d.x), var_0))), !(!vec4<bool>(select(var_0, var_0, var_2.a.a), true, true, true)), select(!select(!vec4<bool>(true, false, var_2.a.a, var_3.d.x), vec4<bool>(var_2.a.a, true, false, var_2.a.a), true), !vec4<bool>(true, !var_0, all(vec2<bool>(var_0, var_0)), var_0 & var_2.a.a), vec4<bool>(true, _wgslsmith_f_op_f32(var_3.c.x * 151f) >= _wgslsmith_f_op_f32(-var_3.c.x), var_3.d.x, var_3.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.a);
}

