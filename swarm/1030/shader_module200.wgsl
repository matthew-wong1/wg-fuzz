struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: bool = false;

var<private> global2: vec3<u32>;

var<private> global3: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec4<i32>(-1630i, -1i, -1i, 61267i), true), Struct_1(vec4<i32>(-1i, 1i, -58945i, -4755i), true), Struct_1(vec4<i32>(1i, 0i, 5981i, 71721i), false), Struct_1(vec4<i32>(-39610i, -1i, -1i, 1760i), true), Struct_1(vec4<i32>(40579i, 2147483647i, 6112i, 40415i), false), Struct_1(vec4<i32>(2147483647i, 1i, 2147483647i, -36508i), false), Struct_1(vec4<i32>(36391i, 1i, 56397i, -63382i), true), Struct_1(vec4<i32>(2147483647i, 1286i, 0i, 8763i), true), Struct_1(vec4<i32>(1i, 0i, 2147483647i, -453i), false), Struct_1(vec4<i32>(6159i, 78513i, 12634i, 31014i), true), Struct_1(vec4<i32>(0i, -13071i, 27748i, -27848i), true), Struct_1(vec4<i32>(59763i, 0i, i32(-2147483648), -13993i), false), Struct_1(vec4<i32>(2147483647i, -13040i, 1445i, 40973i), false), Struct_1(vec4<i32>(-29057i, -33022i, 46994i, 3186i), false), Struct_1(vec4<i32>(0i, 1901i, 0i, -5238i), true));

var<private> global4: bool = true;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: bool) -> i32 {
    let var_0 = firstTrailingBit(28416u);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-752f * 328f) + _wgslsmith_f_op_f32(f32(-1f) * -156f)), _wgslsmith_f_op_f32(abs(-166f)), _wgslsmith_f_op_f32(ceil(1003f)), _wgslsmith_f_op_f32(-511f + _wgslsmith_f_op_f32(-749f - -1895f))))));
    let var_2 = Struct_3(~(u_input.b | u_input.b), global3[_wgslsmith_index_u32(arg_0.x << (var_0 % 32u), 15u)]);
    let var_3 = !vec3<bool>(arg_1.x, all(vec3<bool>(true, all(vec2<bool>(false, var_2.b.b)), select(arg_2, arg_2, var_2.b.b))), any(select(vec4<bool>(true, false, false, false), vec4<bool>(arg_1.x, arg_2, var_2.b.b, var_2.b.b), vec4<bool>(var_2.b.b, var_2.b.b, arg_1.x, true))) || (all(vec3<bool>(false, false, false)) || true));
    return 8509i;
}

fn func_2(arg_0: vec2<f32>) -> vec4<bool> {
    var var_0 = arg_0.x;
    let var_1 = Struct_3(_wgslsmith_add_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 5514i, u_input.b.x) >> (u_input.c % vec4<u32>(32u)), ~u_input.b), vec4<i32>(~13181i, u_input.b.x | -7372i, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x), u_input.b.x) | vec4<i32>(u_input.b.x & -1i, 12067i, abs(-14471i), u_input.b.x)), Struct_1(u_input.b, all(vec2<bool>(true, true))));
    let var_2 = -222f;
    let var_3 = Struct_1(var_1.a, !(!(u_input.b.x < -6900i)));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * arg_0.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -1179f)), _wgslsmith_f_op_f32(round(173f))));
    return select(!vec4<bool>(var_1.b.b, any(!vec4<bool>(var_3.b, false, var_3.b, true)), var_3.a.x <= func_3(vec3<u32>(0u, global0.x, 1554u), vec2<bool>(false, true), var_3.b), var_3.b), !(!select(!vec4<bool>(var_1.b.b, true, var_1.b.b, var_1.b.b), !vec4<bool>(true, var_3.b, false, false), select(vec4<bool>(var_1.b.b, var_3.b, var_3.b, var_1.b.b), vec4<bool>(var_3.b, false, var_3.b, var_1.b.b), vec4<bool>(false, false, true, true)))), !vec4<bool>(any(!vec4<bool>(var_3.b, true, true, var_3.b)), any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, var_3.b), var_1.b.b)), _wgslsmith_f_op_f32(select(arg_0.x, var_2, true)) < _wgslsmith_f_op_f32(round(arg_0.x)), true || var_3.b));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_1(vec4<i32>(_wgslsmith_add_i32(-(arg_1 & u_input.b.x), 10523i), 0i, -(~u_input.b.x), max(-(~2147483647i), u_input.b.x)), any(!func_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(164f, -1448f))))));
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(u_input.b, -vec4<i32>(-2147483647i, -58884i, u_input.b.x, u_input.b.x)) & -_wgslsmith_clamp_vec4_i32(var_0.a, vec4<i32>(13042i, u_input.b.x, arg_1, u_input.b.x), vec4<i32>(2147483647i, -5610i, var_0.a.x, -26378i)), select(reverseBits(~u_input.b), ~_wgslsmith_mod_vec4_i32(vec4<i32>(36050i, var_0.a.x, 0i, var_0.a.x), vec4<i32>(u_input.b.x, var_0.a.x, var_0.a.x, arg_1)), var_0.b), u_input.b), any(!vec2<bool>(all(vec3<bool>(var_0.b, var_0.b, false)), !var_0.b)));
    var var_2 = vec4<bool>(!(var_1.b || !(u_input.d == u_input.a)), !(var_0.b || var_1.b), false, any(vec4<bool>(true, true, true, true)));
    let var_3 = var_0.a.x;
    global0 = vec2<u32>(0u, _wgslsmith_add_u32(global2.x, global0.x));
    return global3[_wgslsmith_index_u32(4294967295u, 15u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global3[_wgslsmith_index_u32(~global0.x, 15u)], func_1(u_input.c.xyw >> (_wgslsmith_div_vec3_u32(u_input.c.wyy, u_input.c.xyy >> (u_input.c.wxx % vec3<u32>(32u))) % vec3<u32>(32u)), 2147483647i));
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))).wz;
    let var_2 = Struct_3(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.b.x, -2147483647i), u_input.b.x), 33015i, -1i, var_0.b.a.x), Struct_1(~vec4<i32>(29521i, u_input.b.x, countOneBits(-2147483647i), _wgslsmith_dot_vec3_i32(u_input.b.zzz, vec3<i32>(2147483647i, -2147483647i, var_0.b.a.x))), !(~u_input.b.x <= 9650i)));
    global0 = vec2<u32>(min(u_input.a, global0.x), ~4294967295u);
    global1 = var_1.x;
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(392f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1033f, -556f))), -2543f, var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-1092f * _wgslsmith_f_op_f32(sign(848f))), any(vec4<bool>(var_1.x, var_0.a.b, var_2.b.b, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -222f) + -1016f)))));
    let var_4 = func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(452f, var_3))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -634f))))))).xy;
    global3 = array<Struct_1, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(min(var_0.b.a.x, -countOneBits(var_2.b.a.x)) | ~(i32(-1i) * -var_0.b.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, 1123f, var_3) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, -923f, -1645f) + vec3<f32>(787f, var_3, 392f))), vec3<f32>(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(var_3 * var_3)))), abs(_wgslsmith_sub_i32(-65863i ^ var_2.a.x, var_2.b.a.x)) | ~var_2.b.a.x);
}

