struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<bool>) -> vec3<f32> {
    var var_0 = ~vec2<u32>(62450u, _wgslsmith_div_u32(11862u, 1u));
    var_0 = ~_wgslsmith_div_vec2_u32(~u_input.d, _wgslsmith_add_vec2_u32(~(~vec2<u32>(var_0.x, u_input.e)), u_input.d));
    var_0 = u_input.d;
    var var_1 = Struct_2(true, -418f, vec3<u32>(~(~34489u ^ (var_0.x ^ var_0.x)), ~0u, 10258u << (~4294967295u % 32u)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, -201f, _wgslsmith_f_op_f32(ceil(-2014f)), _wgslsmith_f_op_f32(round(-3370f))))), vec3<f32>(var_1.b, _wgslsmith_f_op_f32(exp2(var_1.b)), 141f));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_2.a.xzy)) - var_2.b), var_2.b, !arg_0.x))), vec3<f32>(_wgslsmith_f_op_f32(-447f - 183f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)))));
}

fn func_3(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = all(vec2<bool>((u_input.e ^ u_input.e) != _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d.x, u_input.e), vec3<u32>(0u, 1u, 1u)), _wgslsmith_f_op_f32(arg_0.x + 1568f) < -338f)) | any(vec3<bool>(u_input.b.x == u_input.c, all(vec4<bool>(true, true, true, true)), true));
    return Struct_2(true, _wgslsmith_f_op_f32(555f * 871f), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e, 9513u, ~(~u_input.e)), firstLeadingBit(vec3<u32>(48148u, ~1u, u_input.d.x))));
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = !(!(1u >= ~arg_0));
    var var_1 = func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec2<bool>(true, true)))));
    let var_2 = Struct_4(_wgslsmith_div_vec3_i32(u_input.a, firstLeadingBit(vec3<i32>(-1i, u_input.b.x, -1i))), Struct_2(!var_1.a, _wgslsmith_f_op_f32(-func_3(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b, var_1.b, -1638f), vec3<f32>(-1472f, var_1.b, var_1.b))).b), firstTrailingBit(var_1.c)));
    var_1 = var_2.b;
    var_1 = Struct_2(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -781f)))), _wgslsmith_f_op_f32(f32(-1f) * -1159f)), var_1.c);
    return Struct_3(var_2.b, Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.b, 1000f, var_2.b.b, var_1.b) - vec4<f32>(-1545f, var_1.b, var_2.b.b, var_1.b))), vec4<f32>(var_2.b.b, 1181f, _wgslsmith_f_op_f32(376f + var_2.b.b), var_1.b), all(!vec4<bool>(var_1.a, true, false, false)))), vec3<f32>(_wgslsmith_f_op_f32(-1093f - _wgslsmith_f_op_f32(floor(var_1.b))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec3_f32(func_2(vec2<bool>(var_2.b.a, var_2.b.a))).x, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.b, var_2.b.b))))), vec4<u32>(var_1.c.x, 1u, var_1.c.x, _wgslsmith_mult_u32(1u, var_2.b.c.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -abs(u_input.a.yz), _wgslsmith_add_vec2_i32(select(_wgslsmith_add_vec2_i32(vec2<i32>(8139i, u_input.a.x), vec2<i32>(var_2.a.x, 11688i)), firstLeadingBit(vec2<i32>(-1i, 30760i)), vec2<bool>(var_1.a, var_0)), vec2<i32>(u_input.b.x, abs(u_input.b.x)))), abs(~vec2<u32>(_wgslsmith_dot_vec2_u32(var_2.b.c.xz, vec2<u32>(arg_0, u_input.d.x)), firstLeadingBit(var_1.c.x))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: bool, arg_3: bool) -> f32 {
    var var_0 = arg_0;
    let var_1 = arg_0;
    let var_2 = firstTrailingBit(4904i);
    var var_3 = vec3<bool>(false, true, select(var_1.a.a, func_3(arg_0.b.a.xyz).a, arg_0.b.a.x >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.b), -1704f)));
    var_0 = func_1(var_0.a.c.x ^ min(49089u, ~(~22007u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.b, var_0.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(min(1u, 49279u)), _wgslsmith_mult_vec2_i32(u_input.a.yz, u_input.b.yx) | (u_input.a.zz & vec2<i32>(u_input.a.x, u_input.b.x)), func_3(vec3<f32>(233f, 302f, -465f)).a & (u_input.e < u_input.d.x), (u_input.b.x | u_input.c) <= -12833i))));
    var var_1 = ~_wgslsmith_add_u32(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 1u), vec2<u32>(u_input.e, 15142u)), u_input.e), ~u_input.d.x | (u_input.e << (0u % 32u)));
    var_1 = 10106u;
    let var_2 = Struct_3(Struct_2(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, -158f) * 282f)), ~(~(~vec3<u32>(4294967295u, u_input.e, u_input.e)))), func_1(u_input.e).b, _wgslsmith_mult_vec4_u32(abs(~vec4<u32>(37048u, u_input.d.x, 10733u, 63458u)), select(vec4<u32>(u_input.d.x, reverseBits(32983u), ~u_input.e, u_input.e), vec4<u32>(u_input.e, 4294967295u, u_input.e, u_input.d.x) >> (~vec4<u32>(u_input.d.x, 6192u, 12937u, u_input.e) % vec4<u32>(32u)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true))), u_input.a.x, vec2<u32>(~(~abs(20786u)), u_input.e));
    var_1 = 41022u;
    var var_3 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.c, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.b.xz, u_input.b.xy & vec2<i32>(-1i, -2147483647i)), 0i)), _wgslsmith_add_vec3_i32(select(_wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(2147483647i, u_input.a.x, 1i)) & u_input.a, countOneBits(vec3<i32>(12383i, u_input.b.x, var_2.d) & vec3<i32>(u_input.a.x, 14469i, var_2.d)), !vec3<bool>(var_2.a.a, var_2.a.a, false)), u_input.b), 1000f, var_2.d, ~(~var_2.c));
}

