struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32>;

var<private> global1: vec4<i32> = vec4<i32>(1i, -11563i, -1i, i32(-2147483648));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> f32 {
    let var_0 = Struct_2(_wgslsmith_mult_vec3_i32(~vec3<i32>(-1i, u_input.e.x, 35541i), countOneBits(vec3<i32>(-2147483647i, -1i, u_input.e.x))) ^ vec3<i32>(1i, 49057i, global1.x), arg_1.ywx);
    let var_1 = _wgslsmith_mult_u32(~countOneBits(u_input.a.x), ~0u);
    global1 = countOneBits(~select(abs(vec4<i32>(var_0.a.x, -92415i, 0i, 16887i)) & min(vec4<i32>(u_input.e.x, arg_0.b, -1i, u_input.e.x), vec4<i32>(0i, u_input.e.x, 0i, -31065i)), -_wgslsmith_mod_vec4_i32(vec4<i32>(40950i, 19636i, -1i, global1.x), vec4<i32>(var_0.a.x, arg_0.b, 2147483647i, global1.x)), !select(vec4<bool>(false, arg_1.x, true, false), vec4<bool>(true, false, false, arg_1.x), vec4<bool>(true, arg_0.c, false, false))));
    global0 = array<Struct_3, 32>();
    var var_2 = i32(-1i) * -2147483647i;
    return _wgslsmith_f_op_f32(1966f - _wgslsmith_f_op_f32(f32(-1f) * -550f));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> i32 {
    let var_0 = arg_0.d;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(943f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1978f - -110f))))));
    global1 = -select(((vec4<i32>(global1.x, global1.x, 55745i, global1.x) << (arg_0.b % vec4<u32>(32u))) | vec4<i32>(0i, global1.x, 0i, 0i)) >> (min(arg_0.b & vec4<u32>(arg_0.b.x, 4294967295u, u_input.d, u_input.d), ~vec4<u32>(0u, 41865u, arg_0.b.x, 14301u)) % vec4<u32>(32u)), vec4<i32>(u_input.e.x, -33399i, reverseBits(0i), var_0.b), !arg_0.d.a);
    global0 = array<Struct_3, 32>();
    var var_2 = var_0.a;
    return ~_wgslsmith_mod_i32(global1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(global1.x, 17497i), ~var_0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, var_0.b, 7964i, -25457i), vec4<i32>(arg_0.d.b, var_0.b, arg_0.a, 6760i))), -max(vec3<i32>(0i, global1.x, global1.x), vec3<i32>(var_0.b, 1i, 2147483647i))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> Struct_2 {
    var var_0 = min(firstTrailingBit(u_input.d), ~32675u);
    var var_1 = _wgslsmith_add_i32(func_4(Struct_3(~(arg_0 << (u_input.d % 32u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(57254u, u_input.b.x, u_input.c, 2757u), vec4<u32>(u_input.c, 53778u, 0u, 47826u)), true, Struct_1(arg_1.a, _wgslsmith_add_i32(arg_0, arg_0), !arg_1.c)), _wgslsmith_f_op_f32(f32(-1f) * -778f) <= _wgslsmith_f_op_f32(func_3(arg_1, select(arg_1.a, vec4<bool>(arg_1.c, arg_3, arg_3, true), arg_3)))), arg_1.b);
    var var_2 = 3037u;
    let var_3 = u_input.b.x;
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(ceil(978f)), _wgslsmith_f_op_f32(-762f * _wgslsmith_f_op_f32(ceil(-1928f))));
    return Struct_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(global1.x, -72146i), arg_0), 1i, u_input.e.x), -(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, -14635i, arg_1.b), vec3<i32>(60228i, u_input.e.x, global1.x)) << (~vec3<u32>(215u, 1u, var_3) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(global1.wxy, vec3<i32>(~arg_0, u_input.e.x, ~0i), -abs(u_input.e))), arg_1.a.yxz);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> i32 {
    let var_0 = -1i;
    let var_1 = arg_1;
    global0 = array<Struct_3, 32>();
    var var_2 = _wgslsmith_div_f32(206f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_1.d, vec4<bool>(any(vec2<bool>(true, var_1.d.c)), arg_1.d.a.x, false, arg_0.b.x)))));
    let var_3 = select(!(!(!(!var_1.d.a.zxz))), !select(select(arg_1.d.a.wzz, func_2(-30706i, var_1.d, arg_1.d.a.x, true).b, arg_0.b), !(!vec3<bool>(false, arg_1.d.c, arg_0.b.x)), !func_2(arg_0.a.x, Struct_1(var_1.d.a, arg_1.a, arg_0.b.x), true, false).b), vec3<bool>(any(!arg_0.b.xz), any(arg_1.d.a), true));
    return abs(_wgslsmith_clamp_i32(-8540i | global1.x, -func_2(7343i, arg_1.d, arg_0.b.x, var_3.x).a.x, var_0)) << (countOneBits(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b.x, arg_1.b.x), vec2<u32>(24395u, var_1.b.x)), select(var_1.b.x, 81659u, var_3.x))) % 32u);
}

fn func_1(arg_0: Struct_3) -> f32 {
    var var_0 = !(global1.x > _wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, arg_0.d.b | -2147483647i), func_5(func_2(u_input.e.x, arg_0.d, true, arg_0.c), Struct_3(u_input.e.x, arg_0.b, true, Struct_1(arg_0.d.a, arg_0.a, false)))));
    let var_1 = true;
    global1 = select(vec4<i32>(global1.x | 0i, -abs(757i), ~_wgslsmith_mult_i32(abs(23879i), -1i), _wgslsmith_sub_i32(1i, -7792i)), select(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(global1.x, u_input.e.x, arg_0.a, arg_0.a)), ~vec4<i32>(arg_0.d.b, -1i, -1i, 0i), -vec4<i32>(-132i, global1.x, u_input.e.x, arg_0.d.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.d.b, arg_0.d.b, arg_0.a, u_input.e.x), vec4<i32>(global1.x, -96871i, 8115i, 0i)) | vec4<i32>(u_input.e.x, -1i, 1i, arg_0.d.b), true) >> (arg_0.b % vec4<u32>(32u)), vec4<bool>(-6494i < u_input.e.x, true, !any(!arg_0.d.a.xx), var_1));
    var var_2 = arg_0.b.www;
    var var_3 = ~1i;
    return 210f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(413f - 1317f), _wgslsmith_f_op_f32(f32(-1f) * -1603f), -1061f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(896f, -1817f, -1235f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1363f, -315f, 2434f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1252f, 176f, -985f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x * -957f), _wgslsmith_f_op_f32(999f + var_0.x))), -422f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(global1.x, vec4<u32>(u_input.d, 4294967295u, u_input.b.x, 0u), true, Struct_1(vec4<bool>(false, false, true, false), 0i, false))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1175f * var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec4<bool>(true, false, true, false), u_input.e.x, false), vec4<bool>(false, true, true, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1158f))), _wgslsmith_f_op_f32(f32(-1f) * -365f))));
    let var_1 = select(vec3<bool>(any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true)) | true, true, all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))), func_2(2147483647i, Struct_1(vec4<bool>(true, true, true, true), i32(-1i) * -global1.x, true), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true)) || false, all(vec3<bool>(true, all(vec3<bool>(true, false, false)), 2147483647i == global1.x))).b, true);
    let var_2 = var_1.zx;
    let var_3 = Struct_3(-(i32(-1i) * -u_input.e.x), vec4<u32>(u_input.b.x, _wgslsmith_mult_u32(u_input.a.x, ~_wgslsmith_mod_u32(u_input.d, 4294967295u)), u_input.c & 26224u, select(~60586u, _wgslsmith_add_u32(u_input.b.x, u_input.b.x), _wgslsmith_f_op_f32(295f + var_0.x) >= _wgslsmith_f_op_f32(step(var_0.x, 1199f)))), ~(_wgslsmith_sub_u32(0u, u_input.a.x) >> (u_input.b.x % 32u)) >= u_input.b.x, Struct_1(vec4<bool>(false, false, var_1.x, var_2.x), ~0i, var_2.x | (var_1.x != any(vec4<bool>(var_1.x, false, var_1.x, var_1.x)))));
    let var_4 = true;
    let var_5 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.xwx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -509f))), _wgslsmith_div_f32(-841f, -1388f), reverseBits(4400i) <= _wgslsmith_mod_i32(global1.x, 2147483647i))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x))))));
}

