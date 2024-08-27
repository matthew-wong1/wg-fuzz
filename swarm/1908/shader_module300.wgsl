struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: vec4<i32>,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: vec4<bool>,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(540f, 869f, -165f), vec3<f32>(1546f, 429f, 1284f), vec3<f32>(710f, 1916f, 614f), vec3<f32>(-931f, -606f, -1000f), vec3<f32>(-1122f, -779f, 241f), vec3<f32>(-1639f, 341f, 1528f), vec3<f32>(-450f, -686f, -2075f), vec3<f32>(385f, 1522f, -458f), vec3<f32>(-1134f, -1000f, -585f), vec3<f32>(-1189f, -336f, -1530f), vec3<f32>(-1510f, 581f, 1000f), vec3<f32>(-1097f, -1654f, -228f), vec3<f32>(552f, 578f, -2098f), vec3<f32>(173f, -1059f, 258f), vec3<f32>(442f, 898f, 2584f), vec3<f32>(1000f, -1459f, 577f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3) -> vec2<f32> {
    var var_0 = 80529u;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.b.d + arg_2.b.b.d), _wgslsmith_f_op_f32(arg_2.b.b.d - -1000f))), arg_0.a.zz, true | (~u_input.c.x == 4294967295u))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(283f)))), _wgslsmith_div_f32(264f, -1290f)));
}

fn func_2(arg_0: Struct_2) -> bool {
    var var_0 = 782f;
    var var_1 = 4294967295u;
    let var_2 = abs(u_input.b.www);
    let var_3 = Struct_3(Struct_1(select(!select(arg_0.b.a, arg_0.b.a, arg_0.b.a.x), arg_0.b.a, all(arg_0.b.a)), _wgslsmith_mult_vec4_i32(arg_0.b.b, vec4<i32>(u_input.b.x, 14580i, u_input.a.x, 14756i) & u_input.b), vec2<i32>(min(~u_input.a.x, _wgslsmith_add_i32(arg_0.b.b.x, u_input.b.x)), ~_wgslsmith_dot_vec4_i32(arg_0.b.b, arg_0.b.b)), -377f), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a * arg_0.a))), arg_0.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3(arg_0, 66126i, Struct_3(arg_0.b, arg_0, arg_0.b.a.x, vec3<bool>(false, arg_0.b.a.x, arg_0.b.a.x), u_input.b))), arg_0.c, -u_input.a.x >= u_input.a.x))), all(!arg_0.b.a), arg_0.b.a.xwz, u_input.b);
    let var_4 = arg_0.b.b;
    return true;
}

fn func_1(arg_0: bool, arg_1: vec3<u32>) -> f32 {
    global0 = array<vec3<f32>, 16>();
    let var_0 = Struct_5(_wgslsmith_f_op_f32(min(932f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1000f)))) - -1270f))), ~(i32(-1i) * -abs(1i)), !(!vec4<bool>(true, func_2(Struct_2(vec4<f32>(-578f, -903f, -854f, -606f), Struct_1(vec4<bool>(arg_0, arg_0, arg_0, true), u_input.b, u_input.b.wz, -886f), vec2<f32>(699f, -326f))), true, arg_0)), u_input.b, 597f);
    var var_1 = !var_0.c.x;
    var_1 = select(false, false, !(!arg_0));
    global0 = array<vec3<f32>, 16>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-676f * -294f) - _wgslsmith_div_f32(_wgslsmith_div_f32(-771f, _wgslsmith_f_op_f32(422f - _wgslsmith_f_op_f32(1312f - var_0.e))), var_0.e));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 16>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -364f)), -1918f)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1574f)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true, vec3<u32>(23164u, 18539u >> (u_input.d % 32u), _wgslsmith_div_u32(4294967295u, 3774u))))));
    let var_1 = _wgslsmith_mod_vec2_u32(~u_input.c.yz, ~vec2<u32>(~u_input.d, min(u_input.c.x, u_input.d)) >> ((~(~u_input.c.yx) << (u_input.c.xx % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_2 = (~(-u_input.a.x) < 7109i) || true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(679f, -1000f, -349f, 223f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-659f, 154f, -410f, -455f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1230f), 1f, _wgslsmith_f_op_vec2_f32(func_3(Struct_2(vec4<f32>(-1111f, 690f, 129f, 2143f), Struct_1(vec4<bool>(var_2, var_2, var_2, var_2), u_input.a, u_input.a.yx, -789f), vec2<f32>(-1418f, -526f)), -29938i, Struct_3(Struct_1(vec4<bool>(var_2, false, var_2, true), vec4<i32>(u_input.b.x, u_input.a.x, 0i, 12412i), u_input.a.yw, 602f), Struct_2(vec4<f32>(618f, -271f, -1421f, 832f), Struct_1(vec4<bool>(var_2, false, var_2, var_2), vec4<i32>(1i, u_input.b.x, -2723i, -32491i), vec2<i32>(37311i, u_input.b.x), -833f), vec2<f32>(-1000f, 882f)), false, vec3<bool>(false, true, true), vec4<i32>(u_input.a.x, 9197i, u_input.b.x, u_input.b.x)))).x, _wgslsmith_div_f32(104f, -715f)))), _wgslsmith_dot_vec2_u32(var_1, _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(93206u, u_input.d) & vec2<u32>(1u, u_input.d), ~vec2<u32>(u_input.d, 4294967295u)), var_1)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(min(538f, _wgslsmith_f_op_f32(839f + -288f))), -439f))), _wgslsmith_sub_vec4_u32(select(~vec4<u32>(1u, u_input.c.x, 4294967295u, 86970u) >> (vec4<u32>(var_1.x, 42017u, var_1.x, 0u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(1u, 6012u, 0u, 0u)), ~vec4<u32>(3989u, 13445u, 24936u, var_1.x)), select(vec4<bool>(false, var_2, false, true), !vec4<bool>(true, true, var_2, var_2), var_2 & false)), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(4294967295u, 1u, 25717u, u_input.c.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, var_1.x, 4294967295u), min(vec4<u32>(7960u, u_input.d, var_1.x, 38034u), vec4<u32>(0u, u_input.d, 15210u, var_1.x))), vec4<u32>(0u, ~58768u, _wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(77213u, 1u)), _wgslsmith_mod_u32(0u, 61495u)))));
}

