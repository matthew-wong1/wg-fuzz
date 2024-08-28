struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    let var_0 = firstLeadingBit(global0.d.x);
    let var_1 = 483f;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(200f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + 1f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1699f, var_1, 848f))))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -1413f, global0.b)))))));
    global0 = Struct_2(select(-1i, 2147483647i, !global0.c.a) ^ (0i & global0.c.b), _wgslsmith_div_f32(-540f, _wgslsmith_f_op_f32(var_1 - -756f)), Struct_1(all(vec3<bool>(false, all(vec3<bool>(global0.c.a, global0.c.a, global0.c.a)), global0.c.c < 44928u)), global0.a, 32607u, global0.d), abs(abs(~vec3<u32>(u_input.a, 37476u, var_0)) ^ global0.c.d));
    global0 = Struct_2(1i, 1312f, global0.c, _wgslsmith_div_vec3_u32(countOneBits(_wgslsmith_sub_vec3_u32(global0.c.d, vec3<u32>(var_0, var_0, u_input.a)) | min(vec3<u32>(0u, 745u, 1u), global0.c.d)), reverseBits(vec3<u32>(global0.d.x, var_0, min(4294967295u, u_input.a)))));
    return ~(~global0.d.x);
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = Struct_3(-753f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(-301f, -1000f), global0.b, _wgslsmith_f_op_f32(-global0.b))))));
    var var_1 = countOneBits(~min(_wgslsmith_mod_u32(43306u, 13301u) ^ func_3(), u_input.a));
    let var_2 = Struct_4(Struct_2(abs(max(_wgslsmith_div_i32(global0.a, -27477i), firstLeadingBit(global0.c.b))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.a, -1078f)))), Struct_1(true, -abs(-1i), ~(~0u), abs(global0.d)), global0.c.d), Struct_2(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.b, -1218f)))), Struct_1(true, select(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.c.b, 13488i, global0.a), vec3<i32>(2147483647i, 1i, 1i)), global0.a, true), u_input.a, (global0.d ^ global0.c.d) | _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, global0.d.x, u_input.a), global0.d)), abs(vec3<u32>(u_input.a, global0.c.c, ~u_input.a))));
    var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global0.d.x, 1u), _wgslsmith_mult_vec2_u32(~(~vec2<u32>(4294967295u, u_input.a)), firstLeadingBit(~global0.d.yy))), max(reverseBits(~vec2<u32>(var_2.a.c.d.x, 33360u)), var_2.a.d.xy) << (vec2<u32>(4294967295u, 57744u) % vec2<u32>(32u)));
    var var_3 = 4294967295u;
    return var_2.b;
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> vec4<u32> {
    let var_0 = global0.b;
    let var_1 = arg_1.x;
    var var_2 = !global0.c.a;
    var var_3 = vec4<f32>(856f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.b, -1000f), global0.b) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1000f))))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))), global0.b)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1274f)))));
    var var_4 = func_2((~global0.c.b << (27281u % 32u)) >= global0.c.b);
    return ~arg_1;
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: vec4<u32>, arg_3: vec3<i32>) -> Struct_2 {
    global0 = Struct_2(-1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-965f))), Struct_1(global0.c.a, ~_wgslsmith_clamp_i32(arg_3.x | 601i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a, 2147483647i), arg_3.yx), -49930i | global0.c.b), 1u, global0.d), countOneBits(vec3<u32>(firstTrailingBit(~u_input.a), ~1u, ~(~8732u))));
    let var_0 = global0.c;
    let var_1 = func_2(false);
    let var_2 = Struct_1(var_1.c.a, var_1.a, firstTrailingBit(func_1(arg_1, firstLeadingBit(_wgslsmith_mod_vec4_u32(arg_2, vec4<u32>(15043u, arg_2.x, 0u, global0.d.x)))).x), ~select(reverseBits(_wgslsmith_mod_vec3_u32(arg_2.wxw, vec3<u32>(u_input.a, var_1.c.d.x, arg_0.x))), _wgslsmith_clamp_vec3_u32(var_1.c.d, vec3<u32>(global0.d.x, arg_0.x, 1u), vec3<u32>(arg_1, var_1.d.x, 59224u)) | vec3<u32>(u_input.a, 42998u, arg_0.x), false));
    let var_3 = ~func_1(u_input.a, arg_2).www;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global0 = Struct_2(abs((-global0.c.b >> (u_input.a % 32u)) & ~(-43276i)), _wgslsmith_f_op_f32(1000f + global0.b), global0.c, vec3<u32>(~1u, ~(0u << (~global0.c.c % 32u)), ~((global0.c.c & var_0) << (u_input.a % 32u))));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.b, global0.b)))), _wgslsmith_f_op_f32(global0.b + _wgslsmith_div_f32(-447f, 121f)))));
    global0 = func_4(global0.d, _wgslsmith_dot_vec2_u32(global0.c.d.zz, global0.c.d.xz) >> (_wgslsmith_dot_vec4_u32(func_1(0u, vec4<u32>(40797u, 6954u, 0u, global0.d.x)) & vec4<u32>(15815u, global0.c.c, global0.c.c, var_0), abs(vec4<u32>(83109u, 75840u, global0.c.c, 10465u) << (vec4<u32>(var_0, 77139u, var_0, global0.c.d.x) % vec4<u32>(32u)))) % 32u), firstLeadingBit(vec4<u32>(var_0, ~_wgslsmith_clamp_u32(u_input.a, 4294967295u, global0.d.x), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.d.x, 0u), vec2<u32>(6188u, global0.d.x), global0.c.d.yz), vec2<u32>(0u, u_input.a)), 1u)), vec3<i32>(2147483647i, reverseBits(-1i), 10118i));
    global0 = func_2(global0.c.a);
    var var_2 = Struct_4(func_4(global0.d, reverseBits(u_input.a), firstTrailingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, 21240u), vec4<u32>(var_0, var_0, var_0, 1u))), -(vec3<i32>(global0.c.b, global0.c.b, 0i) | vec3<i32>(41761i, global0.c.b, global0.a)) & _wgslsmith_div_vec3_i32(-vec3<i32>(47428i, global0.c.b, global0.c.b), -vec3<i32>(0i, global0.a, -1i))), func_4(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(global0.c.d, global0.d, global0.c.d), vec3<u32>(4294967295u, global0.d.x, u_input.a)) & ~select(global0.d, global0.c.d, global0.c.a), (var_0 & firstTrailingBit(global0.d.x)) | 0u, reverseBits(~vec4<u32>(4294967295u, u_input.a, var_0, 52685u)), vec3<i32>(global0.c.b, _wgslsmith_dot_vec4_i32(-vec4<i32>(global0.a, global0.c.b, global0.c.b, 0i), -vec4<i32>(global0.a, global0.a, 20035i, global0.c.b)), func_2(global0.c.a).a)));
    var_1 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_2.b.c.b) & -11096i, func_1(~_wgslsmith_sub_u32(~var_0, abs(global0.d.x)), ~(~(vec4<u32>(var_2.a.c.d.x, var_0, 1u, 60114u) & vec4<u32>(u_input.a, var_0, u_input.a, 0u)))).x, vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(~var_2.b.c.c, ~global0.c.c), global0.c.c), _wgslsmith_mult_u32(~reverseBits(0u), global0.c.c)), ~_wgslsmith_dot_vec3_u32(var_2.a.c.d, vec3<u32>(var_0, func_3(), 10903u)));
}

