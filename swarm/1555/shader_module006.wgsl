struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: u32,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<f32>,
    c: Struct_1,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 16>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-1896f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1678f))))), _wgslsmith_f_op_f32(abs(1693f)))));
    global0 = array<vec2<f32>, 16>();
    global0 = array<vec2<f32>, 16>();
    let var_1 = -617f;
    global0 = array<vec2<f32>, 16>();
    return 1i;
}

fn func_2() -> Struct_4 {
    var var_0 = max(vec2<i32>(_wgslsmith_sub_i32(func_3(), u_input.b), _wgslsmith_sub_i32(-28943i, -2147483647i)) | ~max(vec2<i32>(0i, 2147483647i), vec2<i32>(u_input.b, 31590i)), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), -vec2<i32>(4561i, u_input.b)), reverseBits(max(vec2<i32>(0i, 9081i), vec2<i32>(-26679i, 7770i)))), ~_wgslsmith_add_vec2_i32(~vec2<i32>(u_input.b, -30519i), ~vec2<i32>(6262i, u_input.b))));
    let var_1 = -333f;
    let var_2 = vec2<i32>(-1i, -var_0.x) >> (_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(abs(4294967295u), u_input.a.x)) % vec2<u32>(32u));
    var var_3 = ~(vec3<i32>((var_0.x | -38675i) & (-20486i >> (1u % 32u)), select(-var_2.x, select(var_2.x, u_input.b, true), true), -abs(-29671i)) << ((~min(vec3<u32>(18536u, u_input.a.x, u_input.a.x), vec3<u32>(60893u, u_input.a.x, u_input.a.x)) >> (reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(49u, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, u_input.a.x, 90107u))) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_4 = ~_wgslsmith_add_u32(min(11110u, max(u_input.a.x, 0u) & u_input.a.x), u_input.a.x);
    return Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f * var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1))) - 1038f))), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, u_input.a.x), firstTrailingBit(vec2<u32>(1u, u_input.a.x))) | u_input.a, vec2<u32>(reverseBits(u_input.a.x), 4294967295u)), _wgslsmith_add_u32(44206u, u_input.a.x), Struct_2(Struct_1(firstTrailingBit(vec4<i32>(var_3.x, var_2.x, 35084i, 34380i))), Struct_1(vec4<i32>(select(var_2.x, 0i, true), ~8671i, var_0.x, -46946i)), ~_wgslsmith_sub_u32(u_input.a.x, min(u_input.a.x, u_input.a.x))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> u32 {
    var var_0 = vec4<i32>(_wgslsmith_mult_i32(-40157i, 0i), 50042i, -2147483647i, reverseBits(~firstTrailingBit(24937i)));
    var_0 = ~min(~vec4<i32>(arg_0.d.b.a.x, arg_1.a.x, arg_0.d.b.a.x, -43521i), select(~arg_1.a, max(arg_0.d.b.a, vec4<i32>(-20623i, arg_0.d.a.a.x, var_0.x, arg_0.d.a.a.x)), true)) | vec4<i32>(_wgslsmith_dot_vec2_i32(-arg_1.a.zy, func_2().d.a.a.yz), u_input.b, abs(_wgslsmith_dot_vec3_i32(arg_0.d.a.a.wyy, _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.a.x, 2147483647i, u_input.b), arg_1.a.wzy))), reverseBits(2147483647i | u_input.b) >> ((_wgslsmith_mod_u32(0u, arg_0.c) & _wgslsmith_mod_u32(4294967295u, arg_2)) % 32u));
    var var_1 = arg_0.a;
    let var_2 = func_2().d;
    let var_3 = arg_0.d.a;
    return arg_3;
}

fn func_1(arg_0: vec3<f32>) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(min(-350f, 1f))) * arg_0.x);
    var var_1 = ~u_input.a.x;
    var_1 = func_4(func_2(), Struct_1(firstTrailingBit(~vec4<i32>(0i, -2147483647i, u_input.b, -43327i))), func_2().c, _wgslsmith_clamp_u32(max(u_input.a.x, u_input.a.x) ^ 4294967295u, ~(min(u_input.a.x, u_input.a.x) | u_input.a.x), ~40094u));
    return StorageBuffer(16325u, u_input.b, -1965f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(146f)) * _wgslsmith_f_op_f32(round(var_0))), -1000f, var_0, _wgslsmith_f_op_f32(-1127f * _wgslsmith_f_op_f32(min(var_0, -618f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, var_0, -1130f, -626f) - vec4<f32>(1000f, 791f, 1380f, 1033f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(416f, 1155f, arg_0.x, var_0))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(158f, 1173f, var_0, var_0))))), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec3<u32>(1u, ~(27305u | u_input.a.x), 1u << (_wgslsmith_mult_u32(u_input.a.x, 72602u) % 32u)));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-931f, _wgslsmith_f_op_f32(f32(-1f) * -380f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(676f + -252f), _wgslsmith_div_f32(-484f, -2023f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(551f, -125f, 202f)) * vec3<f32>(-231f, 797f, 1597f)))));
}

