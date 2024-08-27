struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14>;

var<private> global1: u32 = 0u;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: u32) -> vec3<bool> {
    global1 = arg_0;
    let var_0 = _wgslsmith_f_op_f32(min(691f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(613f)) + _wgslsmith_f_op_f32(f32(-1f) * -976f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -774f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(274f))))))));
    var var_1 = vec4<u32>(~4294967295u ^ (~arg_0 >> (_wgslsmith_mod_u32(~arg_0, max(arg_0, 1u)) % 32u)), firstTrailingBit(select(_wgslsmith_add_u32(arg_0, ~39659u), _wgslsmith_div_u32(arg_0 | 58712u, ~arg_0), !all(vec4<bool>(false, false, true, false)))), 1u, abs(arg_0));
    global1 = ~2480u;
    var var_2 = ~(~var_1.x);
    return !vec3<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), true)), true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
}

fn func_2() -> Struct_4 {
    global1 = countOneBits(1u);
    let var_0 = Struct_4(vec2<bool>(true, true), _wgslsmith_dot_vec3_u32(~select(countOneBits(vec3<u32>(4294967295u, 1156u, 11439u)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, 42619u), vec3<u32>(1u, 9067u, 1u)), vec3<bool>(true, true, true)), max(max(vec3<u32>(4294967295u, 21261u, 1u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 4294967295u, 110010u), vec3<u32>(0u, 4294967295u, 46376u)))));
    let var_1 = var_0.a.x;
    let var_2 = Struct_3(select(select(!func_3(var_0.b), !select(vec3<bool>(var_0.a.x, var_1, var_1), vec3<bool>(var_1, var_1, var_1), false), !all(vec3<bool>(var_0.a.x, var_1, var_1))), vec3<bool>(true, var_1, true), func_3(~(~37910u))), any(vec2<bool>(func_3(var_0.b >> (var_0.b % 32u)).x, !select(var_1, false, true))), Struct_1(~(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.b, 1i)))));
    global1 = ~_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b, var_0.b, 0u), vec3<u32>(var_0.b, 4294967295u, 1u))), _wgslsmith_sub_u32(4294967295u, var_0.b));
    return var_0;
}

fn func_1() -> bool {
    var var_0 = func_2();
    let var_1 = Struct_1(firstLeadingBit(max(vec3<i32>(-2147483647i, -56835i, 2147483647i), firstLeadingBit(vec3<i32>(-2147483647i, u_input.b, u_input.a)))) << (_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, var_0.b, var_0.b) & vec3<u32>(54791u, var_0.b, var_0.b), vec3<u32>(33040u, 1u, firstTrailingBit(var_0.b))) % vec3<u32>(32u)));
    var var_2 = Struct_5(global0[_wgslsmith_index_u32(~(~var_0.b), 14u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-556f, 1338f, -796f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1366f, -1411f, -919f))))))), Struct_2(Struct_1(var_1.a), var_1), any(var_0.a));
    let var_3 = _wgslsmith_clamp_i32(((reverseBits(u_input.b) ^ var_1.a.x) ^ -(-28985i | var_1.a.x)) | u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(min(firstLeadingBit(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(5049i, 13504i, u_input.b, var_2.c.b.a.x), vec4<i32>(-5235i, -1i, -40905i, -68507i))), 4875i), _wgslsmith_add_vec2_i32(-vec2<i32>(var_1.a.x, 72061i), _wgslsmith_div_vec2_i32(var_2.a.b.a.zz, ~vec2<i32>(64575i, u_input.b)))), 1184i);
    var var_4 = _wgslsmith_sub_u32(~(~(~57736u)), var_0.b);
    return false || all(!select(vec3<bool>(false, var_2.d, true), vec3<bool>(false, var_0.a.x, true), vec3<bool>(var_2.d, var_0.a.x, var_0.a.x)));
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-998f * 1327f) + _wgslsmith_f_op_f32(223f * -804f))), _wgslsmith_f_op_f32(f32(-1f) * -1068f)))));
    var var_1 = firstTrailingBit(-(~firstTrailingBit(-vec4<i32>(arg_1.c.a.x, u_input.a, arg_0, 2147483647i))));
    var_1 = vec4<i32>(abs(var_1.x) & _wgslsmith_dot_vec2_i32(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(0i, 7448i))), -vec2<i32>(var_1.x, arg_1.c.a.x) ^ ~vec2<i32>(u_input.c.x, arg_1.c.a.x)), ~(-1i), -var_1.x, 0i);
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1153f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1706f + _wgslsmith_f_op_f32(f32(-1f) * -1695f)))))));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(~(~1u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(9247u, 1u, 15833u, 13458u), vec4<u32>(11606u, 4017u, 1u, 1u)), ~14005u, 4294967295u)), abs(vec2<u32>(select(0u, 39380u, arg_1.a.x), _wgslsmith_mult_u32(0u, 7437u)))) | 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 14>();
    global1 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, 76479u), vec3<u32>(556u, 3326u, 1u), vec3<u32>(10097u, 99557u, 43093u)), countOneBits(vec3<u32>(27184u, 48204u, 26740u)))), max(~(~17573u), firstTrailingBit(4294967295u))), func_4(u_input.a, Struct_3(vec3<bool>(any(vec4<bool>(false, true, false, true)), false, true), func_1(), Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.b, u_input.c.x), vec3<i32>(u_input.b, 1i, -2147483647i), vec3<i32>(-7008i, u_input.c.x, 0i))))));
    global1 = _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 51957u, firstLeadingBit(~359u), 10869u), _wgslsmith_div_vec4_u32(vec4<u32>(func_2().b, 1u, 1u, abs(~1u)), vec4<u32>(1u, 1u, 1u, 1u)));
    let var_0 = func_2();
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    let var_1 = Struct_1(vec3<i32>(-1i, 2147483647i, abs(u_input.b)));
    var var_2 = !func_3(_wgslsmith_mod_u32(60649u, var_0.b) >> ((var_0.b & 4294967295u) % 32u)).x | !any(vec4<bool>(true, u_input.b != u_input.a, true, false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1313f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-414f - -764f))), 1000f)), vec2<f32>(1353f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(356f)), -1904f) * -847f)), min(vec3<i32>(abs(-1i), u_input.c.x ^ var_1.a.x, u_input.a), var_1.a) & (_wgslsmith_mult_vec3_i32(~vec3<i32>(-46551i, u_input.a, u_input.b), var_1.a) | ((vec3<i32>(-2147483647i, var_1.a.x, -2147483647i) | vec3<i32>(-36890i, 14388i, -1i)) << (firstTrailingBit(vec3<u32>(var_0.b, var_0.b, var_0.b)) % vec3<u32>(32u)))), ~var_0.b, 0u);
}

