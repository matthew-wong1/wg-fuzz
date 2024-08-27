struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(-1182f, -1494f, 220f, 290f), vec4<f32>(333f, -280f, 517f, 270f), vec4<f32>(-409f, 216f, -854f, 1152f), vec4<f32>(1296f, -1558f, -1329f, 271f), vec4<f32>(316f, 1096f, -367f, -2040f), vec4<f32>(237f, 131f, -209f, 1000f), vec4<f32>(103f, 1384f, -200f, 1000f), vec4<f32>(173f, -1000f, 1000f, -1602f), vec4<f32>(624f, 367f, 392f, -338f), vec4<f32>(-743f, 652f, -826f, 877f), vec4<f32>(1162f, -1546f, -1130f, -474f), vec4<f32>(-170f, -914f, -1000f, -876f), vec4<f32>(1000f, -1000f, 348f, -142f));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: vec2<i32>) -> vec3<bool> {
    var var_0 = u_input.d.x;
    let var_1 = _wgslsmith_add_u32(~u_input.d.x, ~4294967295u);
    var_0 = _wgslsmith_clamp_u32(var_1, var_1, ~1u);
    return vec3<bool>(true, true, true);
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> bool {
    global0 = array<vec4<f32>, 13>();
    let var_0 = Struct_2(arg_0.a, Struct_1(select(_wgslsmith_mod_vec2_u32(u_input.d.wy, arg_0.a.a) & firstTrailingBit(vec2<u32>(arg_0.b, 29265u)), countOneBits(arg_0.a.a), true)), _wgslsmith_f_op_f32(f32(-1f) * -516f));
    var var_1 = !select(vec2<bool>(false, arg_1), !vec2<bool>(arg_1, arg_1), true);
    let var_2 = arg_0.a.a;
    var_1 = !select(vec2<bool>(var_1.x, true), vec2<bool>(arg_1, arg_1 != true), vec2<bool>(var_1.x, false));
    return false;
}

fn func_1() -> Struct_1 {
    var var_0 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), true), vec4<bool>(false, false, false, false), false), !select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), false), all(vec3<bool>(false, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, u_input.d.x <= u_input.d.x), true)), (_wgslsmith_add_i32(min(-2147483647i, 2147483647i), _wgslsmith_mult_i32(u_input.c, u_input.a)) ^ ~(-1861i)) <= -13792i);
    let var_1 = select(!select(!func_2(-65429i, vec3<f32>(-302f, -326f, 1000f), vec2<i32>(u_input.c, -1i)), func_2(i32(-1i) * -2147483647i, _wgslsmith_div_vec3_f32(vec3<f32>(-926f, 1000f, -625f), vec3<f32>(-1053f, -1035f, -1131f)), abs(vec2<i32>(u_input.a, u_input.a))), vec3<bool>(true, func_3(Struct_3(Struct_1(vec2<u32>(u_input.b, 43915u)), u_input.d.x), true), true)), select(func_2(i32(-1i) * -34461i, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1026f, 547f, -2472f) - vec3<f32>(998f, -487f, 1000f)))), abs(vec2<i32>(-2147483647i, 62069i))), vec3<bool>(true, var_0.x, any(select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(var_0.x, true, false, false), true))), var_0.xzw), vec3<bool>(false, var_0.x, !(func_3(Struct_3(Struct_1(vec2<u32>(u_input.d.x, u_input.d.x)), u_input.b), var_0.x) && var_0.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 0u, 1u), u_input.d.yxz), 13u)])) - vec4<f32>(-1124f, 526f, 499f, _wgslsmith_f_op_f32(ceil(570f))))));
    var var_3 = _wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, ~u_input.d.x), max(u_input.d.ww, ~u_input.d.zw)), _wgslsmith_clamp_u32(12012u << (~4294967295u % 32u), select(firstTrailingBit(~u_input.b), ~u_input.b, !all(vec3<bool>(var_1.x, var_0.x, true))), 4294967295u), abs(abs(u_input.d.x)));
    let var_4 = max(-vec2<i32>(abs(-21629i), u_input.a), vec2<i32>(u_input.c, 2147483647i)) | _wgslsmith_mult_vec2_i32(vec2<i32>(-reverseBits(1743i), -2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.a), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 57041i), vec2<i32>(15318i, u_input.a) | vec2<i32>(u_input.a, u_input.a))));
    return Struct_1(_wgslsmith_clamp_vec2_u32(~(~u_input.d.xw), ~_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.d.x, u_input.b), u_input.d.ww), ~firstLeadingBit(_wgslsmith_clamp_vec2_u32(u_input.d.zz, vec2<u32>(4294967295u, 17123u), vec2<u32>(u_input.d.x, u_input.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -529f))), -370f));
    var var_2 = vec3<i32>(u_input.c, _wgslsmith_clamp_i32(~(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 0i, u_input.c), vec4<i32>(u_input.a, 2147483647i, 2147483647i, u_input.a)) ^ -2147483647i), -1099i, u_input.a), firstLeadingBit(-19626i));
    var var_3 = -3885i ^ u_input.a;
    let var_4 = Struct_3(func_1(), ~(58441u << (1u % 32u)));
    var_0 = var_4.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(~_wgslsmith_add_vec3_i32(vec3<i32>(21817i, u_input.a, var_2.x), vec3<i32>(var_2.x, 26501i, -1i)))), ~(~vec3<u32>(u_input.b, 7452u, u_input.b) << (~select(u_input.d.xxy, vec3<u32>(1u, 30812u, var_4.a.a.x), vec3<bool>(false, false, false)) % vec3<u32>(32u))), u_input.a, _wgslsmith_div_vec3_u32(vec3<u32>(~var_4.b << (var_4.a.a.x % 32u), var_4.b, ~(~1u)), u_input.d.wwz), var_2.zx);
}

