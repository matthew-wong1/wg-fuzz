struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: vec4<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<vec3<f32>, 30> = array<vec3<f32>, 30>(vec3<f32>(-334f, -462f, 1000f), vec3<f32>(940f, 332f, -772f), vec3<f32>(132f, -543f, -222f), vec3<f32>(298f, -1088f, 624f), vec3<f32>(1251f, -1000f, 1394f), vec3<f32>(-365f, -236f, -2020f), vec3<f32>(-1396f, -133f, 321f), vec3<f32>(300f, -141f, -972f), vec3<f32>(544f, 708f, 950f), vec3<f32>(-1000f, -1179f, 1837f), vec3<f32>(275f, -796f, 1000f), vec3<f32>(-2843f, -270f, -706f), vec3<f32>(1000f, -1490f, -497f), vec3<f32>(1003f, 137f, -1061f), vec3<f32>(-1536f, 298f, 1007f), vec3<f32>(-1540f, 1511f, 114f), vec3<f32>(-1617f, -900f, -293f), vec3<f32>(-415f, -261f, 908f), vec3<f32>(859f, 494f, 644f), vec3<f32>(-1112f, -190f, 836f), vec3<f32>(-478f, 1400f, 794f), vec3<f32>(193f, -1000f, -2393f), vec3<f32>(304f, -1694f, 578f), vec3<f32>(-1186f, -465f, -1000f), vec3<f32>(182f, -2457f, 115f), vec3<f32>(1621f, -382f, 209f), vec3<f32>(334f, 387f, 429f), vec3<f32>(-1160f, -796f, -155f), vec3<f32>(-489f, 1562f, 969f), vec3<f32>(-354f, -678f, 425f));

var<private> global1: Struct_3;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: vec2<bool>) -> vec3<f32> {
    global1 = Struct_3(global0[_wgslsmith_index_u32(9580u, 30u)], arg_0, global1.c, global1.d);
    global0 = array<vec3<f32>, 30>();
    global0 = array<vec3<f32>, 30>();
    var var_0 = vec2<i32>((0i | _wgslsmith_mod_i32(u_input.a, u_input.a)) | (_wgslsmith_mult_i32(55792i, 0i) >> (global1.d.a.x % 32u)), global1.c.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.x)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global1.a))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_5) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1165f + arg_0.a.x))), arg_0.a.x, global1.a.x, _wgslsmith_div_f32(-119f, _wgslsmith_f_op_f32(floor(1171f)))));
    let var_1 = 4294967295u;
    global0 = array<vec3<f32>, 30>();
    var var_2 = global1.d;
    global0 = array<vec3<f32>, 30>();
    return _wgslsmith_clamp_u32(~(~(arg_0.b >> (firstLeadingBit(arg_0.d.a.x) % 32u))), ~4294967295u, max(min(arg_3.b.b, ~firstLeadingBit(arg_3.a.x)), 25338u));
}

fn func_2() -> Struct_2 {
    global1 = Struct_3(_wgslsmith_f_op_vec3_f32(round(global0[_wgslsmith_index_u32(20482u, 30u)])), func_4(Struct_3(_wgslsmith_f_op_vec3_f32(func_3(max(4294967295u, 4294967295u), _wgslsmith_f_op_vec3_f32(round(global0[_wgslsmith_index_u32(global1.d.a.x, 30u)])), vec2<bool>(true, false), vec2<bool>(false, true))), ~global1.b, ~select(vec4<i32>(global1.c.x, 47422i, 1i, -2147483647i), global1.c, false), Struct_2(vec3<u32>(13687u, global1.d.a.x, global1.b))), select(global1.c.yyx, global1.c.zzx, select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true))), Struct_1(~(vec4<u32>(4294967295u, 0u, global1.b, global1.b) | vec4<u32>(1u, global1.b, global1.b, global1.b)), global1.d.a, ~global1.c.yyz, vec2<u32>(firstTrailingBit(68585u), 491u)), Struct_5(_wgslsmith_sub_vec4_u32(vec4<u32>(global1.d.a.x, 4294967295u, 20936u, global1.d.a.x) | vec4<u32>(global1.b, global1.d.a.x, global1.d.a.x, global1.b), vec4<u32>(0u, global1.d.a.x, global1.b, global1.d.a.x)), Struct_3(global0[_wgslsmith_index_u32(global1.d.a.x, 30u)], global1.d.a.x & global1.b, global1.c, Struct_2(vec3<u32>(21193u, global1.b, 32810u))))), global1.c, Struct_2(global1.d.a));
    global0 = array<vec3<f32>, 30>();
    var var_0 = global1.d.a.zx;
    global0 = array<vec3<f32>, 30>();
    let var_1 = global1.d;
    return global1.d;
}

fn func_1() -> u32 {
    let var_0 = func_2();
    var var_1 = Struct_4(select(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))), vec2<bool>(!select(true, false, false), true), vec2<bool>(any(vec3<bool>(true, false, true)) || all(vec2<bool>(true, true)), min(0u, 4294967295u) == var_0.a.x)));
    global0 = array<vec3<f32>, 30>();
    var var_2 = _wgslsmith_sub_i32(~(~_wgslsmith_add_i32(11224i, firstLeadingBit(-43400i))), ~firstTrailingBit(~39701i));
    global1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(var_0.a), _wgslsmith_mod_vec3_u32(vec3<u32>(11699u, var_0.a.x, 1956u), vec3<u32>(25939u, global1.b, 0u))), 30u)])) + global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~reverseBits(global1.d.a.zy), _wgslsmith_mod_vec2_u32(var_0.a.xy << (global1.d.a.zz % vec2<u32>(32u)), vec2<u32>(var_0.a.x, 75853u))), 30u)]), _wgslsmith_dot_vec2_u32(abs(select(max(vec2<u32>(var_0.a.x, global1.d.a.x), global1.d.a.zz), global1.d.a.xz & var_0.a.zx, true)), global1.d.a.xz), -global1.c, func_2());
    return 99808u;
}

fn func_5(arg_0: f32, arg_1: Struct_5) -> bool {
    var var_0 = Struct_4(vec2<bool>(false, all(vec2<bool>(true, true))));
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(4294967295u, ~(~global1.d.a.x)), 30u)];
    let var_2 = Struct_3(global1.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(min(global1.b, arg_1.a.x), arg_1.a.x, ~38960u, ~arg_1.a.x), vec4<u32>(min(arg_1.b.d.a.x, 19512u), 69348u << (global1.b % 32u), _wgslsmith_add_u32(0u, 0u), ~global1.d.a.x)), -_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.a, global1.c.x, 0i), -2147483647i, 1i, -557i), _wgslsmith_mult_vec4_i32(select(vec4<i32>(arg_1.b.c.x, 1i, arg_1.b.c.x, arg_1.b.c.x), vec4<i32>(63067i, 0i, 15973i, global1.c.x), vec4<bool>(true, true, var_0.a.x, true)), countOneBits(vec4<i32>(arg_1.b.c.x, -99i, global1.c.x, 0i)))), func_2());
    var var_3 = Struct_5(countOneBits(~arg_1.a), var_2);
    var var_4 = Struct_3(global0[_wgslsmith_index_u32(var_2.b, 30u)], _wgslsmith_div_u32(var_3.a.x, 51585u ^ _wgslsmith_div_u32(countOneBits(var_3.a.x), _wgslsmith_div_u32(1128u, var_2.d.a.x))), -abs(-_wgslsmith_mod_vec4_i32(var_3.b.c, arg_1.b.c)), Struct_2(var_3.b.d.a));
    return !any(!vec2<bool>(false, var_0.a.x)) & var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 30>();
    var var_0 = select(any(vec4<bool>(true, true, true, true)) != (_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.x, 399f) + global1.a.x) <= _wgslsmith_f_op_f32(-global1.a.x)), func_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(783f)), 1323f)), Struct_5(~vec4<u32>(global1.b, global1.d.a.x, 1u, global1.d.a.x), Struct_3(global0[_wgslsmith_index_u32(global1.d.a.x, 30u)], func_1(), -vec4<i32>(0i, u_input.a, -49709i, global1.c.x), Struct_2(vec3<u32>(39405u, global1.b, global1.b))))), ((any(vec3<bool>(true, true, true)) != true) || any(select(vec2<bool>(false, true), vec2<bool>(true, false), false))) | (!(global1.d.a.x < global1.b) | ((446f <= global1.a.x) != any(vec4<bool>(true, true, false, true)))));
    var_0 = true;
    let var_1 = -2147483647i;
    global0 = array<vec3<f32>, 30>();
    let var_2 = select(-(~select(global1.c.ww, vec2<i32>(u_input.a, var_1), vec2<bool>(false, false))), vec2<i32>(-7090i, var_1), select(!any(vec4<bool>(false, true, true, true)), !(global1.a.x <= global1.a.x), func_5(_wgslsmith_f_op_f32(abs(-1602f)), Struct_5(vec4<u32>(global1.d.a.x, 4294967295u, global1.d.a.x, 1u), Struct_3(vec3<f32>(-1006f, -378f, global1.a.x), global1.b, vec4<i32>(9794i, 2147483647i, -1i, global1.c.x), global1.d))))) << (~abs(global1.d.a.zx) % vec2<u32>(32u));
    let var_3 = max(global1.d.a.x, 0u);
    var var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1533f, global1.a.x, global1.a.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1296f, -854f, global1.a.x) - global0[_wgslsmith_index_u32(31446u, 30u)])), global0[_wgslsmith_index_u32(~0u, 30u)], !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)))))), 15197u, vec4<i32>(~(global1.c.x << (~global1.b % 32u)), u_input.a, _wgslsmith_mult_i32(i32(-1i) * -1i, i32(-1i) * -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(select(var_1, -2095i, false), 0i >> (1u % 32u)), -vec2<i32>(-36752i, 50895i))), Struct_2(global1.d.a));
    var var_5 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global1.a.x)), _wgslsmith_f_op_f32(global1.a.x + global1.a.x))), _wgslsmith_f_op_f32(trunc(global1.a.x)))), -1085f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_4.a.x)) * 421f), _wgslsmith_f_op_f32(var_4.a.x - 1565f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, var_4.a.x, var_4.a.x, global1.a.x)) + vec4<f32>(-1825f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(-533f, -1281f)), global1.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(7885u);
}

