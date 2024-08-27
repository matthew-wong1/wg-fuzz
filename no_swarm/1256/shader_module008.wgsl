struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(780f, 508f), vec2<f32>(140f, -103f), vec2<f32>(-675f, -239f), vec2<f32>(2201f, -1000f), vec2<f32>(485f, 252f), vec2<f32>(784f, 432f), vec2<f32>(-262f, -1089f));

var<private> global1: vec3<f32> = vec3<f32>(1016f, -212f, -574f);

var<private> global2: array<f32, 21> = array<f32, 21>(-461f, -975f, 1000f, -2489f, -989f, 1764f, 473f, -319f, -267f, -1694f, 766f, 1507f, -654f, 689f, -264f, 1606f, -551f, -991f, 2303f, -720f, -1000f);

var<private> global3: array<vec4<bool>, 8>;

var<private> global4: u32 = 11211u;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: Struct_4, arg_3: u32) -> u32 {
    global0 = array<vec2<f32>, 7>();
    global3 = array<vec4<bool>, 8>();
    return _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(arg_1.b, arg_0, 4294967295u), vec3<u32>(1u, 57111u, min(17875u, 1u))) >> (~vec3<u32>(min(arg_1.c, arg_0), ~44102u, ~0u) % vec3<u32>(32u)), reverseBits(reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.b, 1u, arg_0), vec3<u32>(4294967295u, 4294967295u, arg_3)))));
}

fn func_2() -> Struct_1 {
    global3 = array<vec4<bool>, 8>();
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1227f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 21u)]), global1.x));
    var var_0 = any(vec2<bool>(false, false));
    var var_1 = ~u_input.b;
    let var_2 = ~_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.b), vec2<i32>(66245i, u_input.b)), vec2<i32>(0i, u_input.b), vec2<i32>(1i, 1i)), vec2<i32>(2147483647i, -u_input.a)), -(~select(vec2<i32>(u_input.b, 0i), vec2<i32>(24102i, u_input.a), true)));
    return Struct_1(min(1u, func_3(1u, Struct_4(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(u_input.d, 7u)]), 35491u, _wgslsmith_div_u32(u_input.c, u_input.d), _wgslsmith_f_op_vec2_f32(abs(global0[_wgslsmith_index_u32(u_input.d, 7u)])), true), Struct_4(global1.xz, 19786u << (0u % 32u), ~u_input.c, _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(1u, 7u)]), false), _wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, u_input.d), u_input.c))), vec4<u32>(u_input.d, ~max(10748u, _wgslsmith_mult_u32(u_input.c, 0u)), 14349u, 20572u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: bool) -> vec3<u32> {
    var var_0 = true | any(!vec3<bool>(true, false, all(vec2<bool>(false, arg_3))));
    global4 = arg_1.c.b.x;
    let var_1 = _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(firstLeadingBit(0u), 21u)]));
    var var_2 = any(vec3<bool>(true, (~1u > _wgslsmith_clamp_u32(u_input.d, 0u, 58151u)) | any(!vec2<bool>(true, arg_3)), !(!arg_3)));
    global1 = vec3<f32>(693f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2292f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.d, 21u)])))) + var_1));
    return ~abs(vec3<u32>(~firstLeadingBit(arg_1.a.a), min(arg_0.a, _wgslsmith_mod_u32(arg_0.b.x, 11829u)), 28503u));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<bool>) -> Struct_1 {
    return Struct_1(0u, ~(~vec4<u32>(4294967295u, 33656u, _wgslsmith_clamp_u32(3840u, arg_0.x, arg_0.x), 1u & arg_0.x)));
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    var var_0 = 938f;
    let var_1 = arg_0.x | false;
    var var_2 = arg_0.xyy;
    var var_3 = func_5(~func_4(func_2(), Struct_3(Struct_1(u_input.c, vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.d)), Struct_1(1u, vec4<u32>(35783u, u_input.c, u_input.c, 50357u)), Struct_1(u_input.c, vec4<u32>(35833u, u_input.c, 1u, u_input.d))), _wgslsmith_div_vec2_u32(vec2<u32>(12332u, 1u), vec2<u32>(54250u, u_input.c)), true) | ~(~vec3<u32>(15795u, 4294967295u, u_input.d) ^ min(vec3<u32>(7439u, u_input.c, u_input.c), vec3<u32>(12164u, u_input.d, 36275u))), vec4<bool>(true, var_1, any(vec3<bool>(true, var_2.x, false)), arg_0.x));
    let var_4 = Struct_4(_wgslsmith_f_op_vec2_f32(global1.xz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(689f, -935f))) - global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 52337u), 7u)]))), u_input.d, u_input.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.yy) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2[_wgslsmith_index_u32(1u, 21u)], -1547f), global1.xx))))) + _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(u_input.d, 7u)] * global1.zx)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(131f * _wgslsmith_f_op_f32(global1.x * -277f)) - _wgslsmith_f_op_f32(-1f)) < 1507f);
    return var_4.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.c, ~_wgslsmith_sub_vec4_u32(min(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), ~vec4<u32>(u_input.d, 7911u, u_input.c, u_input.c)), _wgslsmith_mod_vec4_u32(vec4<u32>(17787u, 4294967295u, 80034u, 26028u) & vec4<u32>(47561u, 6878u, u_input.c, 0u), select(vec4<u32>(68136u, u_input.c, 59812u, 8300u), vec4<u32>(4294967295u, u_input.c, 10229u, u_input.d), global3[_wgslsmith_index_u32(0u, 8u)]))));
    let var_1 = vec3<u32>(13544u, func_1(vec4<bool>(true, 4294967295u < (0u << (var_0.b.x % 32u)), false, global1.x >= global1.x)), u_input.d);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-global1.x), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 114866u), 21u)], -857f);
    let var_3 = _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(~u_input.b, i32(-1i) * -15926i, u_input.b), _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.b, u_input.a, u_input.b) << (~var_0.b.zyw % vec3<u32>(32u)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.b), vec3<i32>(6221i, u_input.a, u_input.a), vec3<i32>(u_input.b, u_input.a, -4039i)))), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(41294i << (0u % 32u), u_input.a >> (u_input.c % 32u), ~(-1i)), ~vec3<i32>(9174i, u_input.a, 48293i)), ~reverseBits(-vec3<i32>(u_input.a, -1i, 1i))));
    var var_4 = var_2.yz;
    var var_5 = Struct_1(_wgslsmith_add_u32(35569u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 93660u, var_1.x, var_0.b.x) ^ vec4<u32>(18073u, var_1.x, 35339u, 25126u), var_0.b << (vec4<u32>(var_0.b.x, u_input.c, 4294967295u, u_input.c) % vec4<u32>(32u))) % 32u), u_input.d), select(vec4<u32>(firstLeadingBit(firstTrailingBit(u_input.d)), ~(~5554u), _wgslsmith_mod_u32(min(u_input.c, var_1.x), ~1u), var_1.x), ~var_0.b, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d | var_1.x, ~u_input.c, 1u), ~vec3<u32>(46713u, 64531u, 1u) >> (var_0.b.zww % vec3<u32>(32u))), 8u)]));
    let x = u_input.a;
    s_output = StorageBuffer(min(var_0.a, _wgslsmith_div_u32(var_1.x, ~1129u)), i32(-1i) * -u_input.b, func_1(global3[_wgslsmith_index_u32(var_1.x, 8u)]), 61079u);
}

