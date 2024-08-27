struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: f32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec3<f32>,
    d: vec4<i32>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -408f);
    var var_1 = arg_1.c.a.yy;
    let var_2 = true;
    var_1 = vec2<u32>(_wgslsmith_sub_u32(~var_1.x, 38676u), arg_1.c.a.x);
    let var_3 = arg_1;
    return arg_1.e.xxz;
}

fn func_2() -> vec4<i32> {
    var var_0 = vec3<bool>(all(func_3(-reverseBits(u_input.b.x), Struct_3(Struct_1(vec4<u32>(4294967295u, 11111u, 0u, 1u), 4294967295u), ~vec3<i32>(-2147483647i, -1i, -2147483647i), Struct_1(vec4<u32>(1u, 0u, 4294967295u, 1u), 36437u), _wgslsmith_f_op_f32(round(556f)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), true)))), true, true);
    let var_1 = 1u;
    let var_2 = max(10060i, -u_input.b.x);
    let var_3 = Struct_1(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1, 29473u, var_1, 34197u) >> ((vec4<u32>(92909u, 4294967295u, 48554u, 4294967295u) ^ vec4<u32>(37988u, var_1, 4294967295u, 16748u)) % vec4<u32>(32u)), vec4<u32>(min(var_1, 1u), reverseBits(1u), var_1, 21223u), firstTrailingBit(select(vec4<u32>(19116u, var_1, var_1, 8329u), vec4<u32>(0u, 0u, 0u, var_1), vec4<bool>(true, var_0.x, false, true)))), 47287u);
    let var_4 = !all(select(var_0.xy, var_0.xx, true)) | var_0.x;
    return vec4<i32>(-abs(2147483647i << (_wgslsmith_dot_vec3_u32(var_3.a.wzx, vec3<u32>(var_3.a.x, var_1, 0u)) % 32u)), i32(-1i) * -2147483647i, 1i, _wgslsmith_mult_i32(var_2, -29116i) >> (select(1u, 6450u, any(!vec3<bool>(var_4, false, var_0.x))) % 32u));
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_5 {
    var var_0 = _wgslsmith_sub_vec4_i32(~(_wgslsmith_mult_vec4_i32(max(vec4<i32>(-4745i, -1i, -8703i, u_input.b.x), vec4<i32>(u_input.b.x, -98822i, 34422i, 1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, arg_0, u_input.b.x, -56757i), vec4<i32>(u_input.a, 0i, -2147483647i, 2147483647i))) | -(~vec4<i32>(u_input.b.x, -32352i, arg_0, -2147483647i))), -func_2());
    var var_1 = _wgslsmith_div_u32(_wgslsmith_add_u32(106842u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), abs(~vec2<u32>(4294967295u, 4294967295u)))), 88140u);
    var var_2 = vec3<u32>(24234u, 4294967295u, 32252u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(24587u, select(4294967295u, 1u, false), countOneBits(1u), firstLeadingBit(26503u)), vec4<u32>(1u, 1u, 1u, 1u)) % 32u));
    let var_3 = vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(2147483647i, arg_0), reverseBits(arg_0)), _wgslsmith_mult_vec2_i32(vec2<i32>(-20961i, 9085i), _wgslsmith_mult_vec2_i32(var_0.xy, u_input.b)))), -((_wgslsmith_add_i32(u_input.b.x, arg_0) << (firstLeadingBit(0u) % 32u)) << (reverseBits(reverseBits(4294967295u)) % 32u)), arg_0 & -countOneBits(_wgslsmith_mult_i32(arg_0, u_input.b.x)));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -569f);
    return Struct_5(Struct_2(Struct_1(~vec4<u32>(var_2.x, var_2.x, var_2.x, 13449u), var_2.x), firstTrailingBit(_wgslsmith_div_u32(var_2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<u32>(var_2.x, 1u, 46243u, var_2.x))))), Struct_2(Struct_1(vec4<u32>(var_2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(10018u, 1u, var_2.x, var_2.x), vec4<u32>(0u, 0u, var_2.x, 0u)), 0u, 25777u), firstTrailingBit(_wgslsmith_mod_u32(var_2.x, 1u))), 1u >> (~(~var_2.x) % 32u)), Struct_2(Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, 0u, var_2.x, 30500u), _wgslsmith_div_vec4_u32(vec4<u32>(var_2.x, 32481u, 48158u, 4294967295u), vec4<u32>(1u, 56042u, 0u, var_2.x)), abs(vec4<u32>(57212u, 4294967295u, 0u, var_2.x))), abs(abs(var_2.x))), countOneBits(_wgslsmith_mult_u32(var_2.x, 0u)) << (firstTrailingBit(_wgslsmith_add_u32(29012u, 20999u)) % 32u)), Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.x, 0u, var_2.x, 4294967295u) ^ vec4<u32>(var_2.x, var_2.x, 0u, var_2.x), ~vec4<u32>(0u, 51582u, 4432u, var_2.x)), abs(~vec4<u32>(107348u, 7047u, var_2.x, var_2.x))), 35508u), min(firstTrailingBit(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(67448u, var_2.x, var_2.x)), ~vec3<u32>(var_2.x, 4294967295u, 37933u))), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(18426u, 55269u, 32144u), ~vec3<u32>(781u, var_2.x, 1u), vec3<u32>(var_2.x, 4294967295u, var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-587f, -263f)))))));
    var var_1 = func_1(-8529i, true);
    var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(var_0.x - 1239f), var_0.x)));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_div_f32(-1000f, var_0.x));
    let var_2 = func_1(-min(1i << (0u % 32u), ~(~44283i)), true);
    var var_3 = ~var_1.b.a.a.x;
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(379f)) - -445f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_0.x))))), -448f, var_0.x) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1519f, var_0.x, -419f))))))));
    var var_5 = var_2.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(49614u);
}

