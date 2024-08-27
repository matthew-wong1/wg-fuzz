struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 25>;

var<private> global1: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global0 = array<vec2<i32>, 25>();
    global1 = u_input.c.x;
    global0 = array<vec2<i32>, 25>();
    return (_wgslsmith_dot_vec2_u32(u_input.c, _wgslsmith_div_vec2_u32(vec2<u32>(11743u, u_input.c.x), ~vec2<u32>(u_input.b, u_input.b))) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(25121u, _wgslsmith_add_u32(23914u, u_input.b), 1u), firstLeadingBit(vec3<u32>(1u, 39689u, u_input.c.x)) | _wgslsmith_add_vec3_u32(vec3<u32>(16540u, 1u, u_input.c.x), vec3<u32>(u_input.c.x, 3702u, 104238u)))) << (~(u_input.b & 45854u) % 32u);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    var var_0 = Struct_2(firstTrailingBit(vec4<i32>(-629i << (arg_0.b.b.x % 32u), _wgslsmith_add_i32(530i, -2147483647i), -42946i, -1i) >> (vec4<u32>(1u >> (1u % 32u), 29865u, func_3(), 1u) % vec4<u32>(32u))), Struct_1(arg_0.b.a, arg_0.b.b, 4294967295u));
    global0 = array<vec2<i32>, 25>();
    var var_1 = u_input.a.zxz;
    var var_2 = _wgslsmith_f_op_f32(209f + _wgslsmith_div_f32(1517f, -1198f));
    global0 = array<vec2<i32>, 25>();
    return false;
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    global1 = ~(arg_0.b.b.x >> (4294967295u % 32u));
    let var_0 = arg_0;
    let var_1 = 0i;
    global1 = _wgslsmith_div_u32(1u, _wgslsmith_div_u32(7307u, _wgslsmith_add_u32(~var_0.b.b.x, _wgslsmith_mult_u32(arg_0.b.b.x, arg_0.b.b.x))));
    global1 = 1u;
    return arg_0;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), _wgslsmith_f_op_f32(round(arg_1.x)), arg_2))))));
    let var_1 = -611f;
    global0 = array<vec2<i32>, 25>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1533f - _wgslsmith_f_op_f32(min(-529f, 968f)))) + -1370f);
    var_2 = _wgslsmith_f_op_f32(-1f);
    return func_4(arg_0, _wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(u_input.a.xzz, ~arg_0.a.yyz), u_input.a.zzx));
}

fn func_1() -> i32 {
    global0 = array<vec2<i32>, 25>();
    let var_0 = 45108i;
    var var_1 = func_5(func_4(Struct_2(select(vec4<i32>(u_input.a.x, var_0, -2147483647i, u_input.d.x), -vec4<i32>(88005i, 1685i, var_0, -646i), func_2(Struct_2(vec4<i32>(-9266i, u_input.a.x, var_0, var_0), Struct_1(vec4<bool>(false, true, true, false), vec4<u32>(u_input.c.x, 1u, u_input.b, u_input.b), u_input.c.x)), Struct_2(vec4<i32>(u_input.d.x, var_0, var_0, var_0), Struct_1(vec4<bool>(false, true, false, false), vec4<u32>(53119u, u_input.b, 37940u, 0u), u_input.b)))), Struct_1(vec4<bool>(true, true, true, true), abs(vec4<u32>(u_input.b, u_input.b, 81466u, u_input.c.x)), ~u_input.b)), -(countOneBits(var_0) ^ 1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(step(-937f, 120f)), 266f, -631f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-442f, 763f, -246f) + vec3<f32>(821f, -249f, 1456f))))))), false);
    var_1 = Struct_2(_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(31353i, -11223i, u_input.d.x, -1i)), ~vec4<i32>(0i, -2147483647i, 1i, -2147483647i)) >> (var_1.b.b % vec4<u32>(32u)), var_1.b);
    var var_2 = var_1.b.a.x;
    return -15220i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_i32(i32(-1i) * -_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.d.x, 1i), _wgslsmith_sub_i32(u_input.a.x, 27664i)), ~(~func_1()), u_input.d.x);
    global0 = array<vec2<i32>, 25>();
    var var_1 = Struct_1(!vec4<bool>(true, !func_5(Struct_2(u_input.a, Struct_1(vec4<bool>(false, true, false, false), vec4<u32>(1u, u_input.b, 58091u, 0u), 15951u)), vec3<f32>(416f, 320f, -1000f), false).b.a.x, any(vec2<bool>(false, false)), -u_input.a.x < u_input.a.x), vec4<u32>(u_input.c.x, _wgslsmith_mod_u32(~u_input.c.x, u_input.c.x), ~(~func_4(Struct_2(vec4<i32>(58372i, u_input.a.x, u_input.a.x, -1i), Struct_1(vec4<bool>(false, false, false, true), vec4<u32>(u_input.c.x, 1u, u_input.b, u_input.b), 46712u)), u_input.a.x).b.c), u_input.b << (_wgslsmith_clamp_u32(1u, 4294967295u, ~27425u) % 32u)), func_3());
    var_1 = Struct_1(var_1.a, ~var_1.b, var_1.c);
    let var_2 = ~15602i;
    var var_3 = 14973u;
    var var_4 = func_4(func_4(Struct_2(-vec4<i32>(var_2, 1i, u_input.d.x, u_input.a.x), Struct_1(func_4(Struct_2(vec4<i32>(2147483647i, var_2, u_input.a.x, -1i), Struct_1(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), var_1.b, var_1.b.x)), -14348i).b.a, _wgslsmith_mod_vec4_u32(var_1.b, vec4<u32>(35741u, 1u, u_input.b, u_input.b)), 4294967295u)), -(~0i)), u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_add_vec3_i32(u_input.a.xxy | vec3<i32>(-11624i, 2147483647i, u_input.a.x), firstTrailingBit(var_4.a.xxy))), vec3<i32>(-1i, -_wgslsmith_mod_i32(2147483647i, -19573i), u_input.d.x << (countOneBits(var_4.b.b.x) % 32u))), _wgslsmith_mult_i32(-13603i, u_input.d.x), 0u, select(~(vec2<u32>(u_input.c.x, 1u) | ~vec2<u32>(28617u, var_4.b.c)), ~abs(var_4.b.b.yx) ^ var_1.b.xz, vec2<bool>(any(select(vec2<bool>(true, var_4.b.a.x), var_1.a.wx, vec2<bool>(var_1.a.x, false))), true)));
}

