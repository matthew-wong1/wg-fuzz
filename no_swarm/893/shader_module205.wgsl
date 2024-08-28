struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 30>;

var<private> global2: array<i32, 21>;

var<private> global3: array<bool, 23>;

var<private> global4: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(650f, -105f, -1784f), vec3<f32>(1650f, -1000f, -593f), vec3<f32>(-241f, -1276f, 1220f), vec3<f32>(410f, -1000f, 1273f), vec3<f32>(254f, -100f, 1300f), vec3<f32>(363f, -268f, -1000f), vec3<f32>(-491f, 713f, 648f), vec3<f32>(-1074f, -1666f, 865f), vec3<f32>(-104f, 664f, -936f), vec3<f32>(-493f, -1859f, 322f), vec3<f32>(-502f, 887f, 329f), vec3<f32>(-1309f, -1133f, -504f), vec3<f32>(-176f, 235f, 469f), vec3<f32>(381f, 967f, -1602f), vec3<f32>(357f, -1299f, 886f), vec3<f32>(-1434f, 1000f, -912f), vec3<f32>(490f, 594f, -259f), vec3<f32>(551f, -494f, 724f), vec3<f32>(744f, 1000f, -516f), vec3<f32>(603f, -411f, -688f), vec3<f32>(-1037f, -300f, 342f), vec3<f32>(-215f, -122f, 319f), vec3<f32>(823f, -200f, -388f), vec3<f32>(-981f, -1574f, 1538f), vec3<f32>(114f, -179f, 774f), vec3<f32>(-160f, -1755f, -851f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> u32 {
    global3 = array<bool, 23>();
    var var_0 = Struct_1(global0.a, -2763f);
    let var_1 = _wgslsmith_mult_u32(1u, ~10935u);
    let var_2 = true;
    global4 = array<vec3<f32>, 26>();
    return 72775u;
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    global3 = array<bool, 23>();
    var var_0 = any(!(!(!select(vec2<bool>(false, global3[_wgslsmith_index_u32(arg_0.x, 23u)]), vec2<bool>(false, global3[_wgslsmith_index_u32(global0.a.x, 23u)]), vec2<bool>(global3[_wgslsmith_index_u32(global0.a.x, 23u)], global3[_wgslsmith_index_u32(arg_0.x, 23u)])))));
    var var_1 = Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(min(-1i, global1[_wgslsmith_index_u32(4294967295u, 30u)]) | _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(arg_0.x, 30u)], u_input.a, global1[_wgslsmith_index_u32(arg_0.x, 30u)]), vec3<i32>(u_input.a, u_input.a, u_input.a)), global2[_wgslsmith_index_u32(77088u, 21u)], 0i), ~select(vec3<i32>(-17249i, u_input.a, 0i), vec3<i32>(u_input.a, -39578i, 0i), false) << (~(vec3<u32>(arg_0.x, 68020u, 1u) ^ arg_0) % vec3<u32>(32u))));
    var var_2 = Struct_1(select(vec2<u32>(1u, arg_0.x), max(vec2<u32>(4294967295u, 6774u), arg_0.zz), !vec2<bool>(global3[_wgslsmith_index_u32(0u, 23u)], true)) | vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_0, vec3<u32>(global0.a.x, arg_0.x, arg_0.x), arg_0), ~vec3<u32>(global0.a.x, arg_0.x, arg_0.x)), ~4294967295u), global0.b);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-647f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))))), global0.b, _wgslsmith_f_op_f32(-global0.b));
    return i32(-1i) * -49031i;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    global1 = array<i32, 30>();
    let var_0 = _wgslsmith_div_i32(-1i, func_3(vec3<u32>(~arg_0.x, 6830u, func_2())) | 1i);
    var var_1 = _wgslsmith_div_vec3_u32(~(~arg_0.zzz << ((~vec3<u32>(0u, arg_0.x, 89433u) & (vec3<u32>(arg_0.x, global0.a.x, global0.a.x) >> (arg_0.zyz % vec3<u32>(32u)))) % vec3<u32>(32u))), ~vec3<u32>(4294967295u, abs(~11550u), ~1u));
    let var_2 = Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(~var_1.x, ~var_1.x), vec2<u32>(min(7763u, 18186u), global0.a.x)) | select(firstTrailingBit(4294967295u), _wgslsmith_div_u32(_wgslsmith_mult_u32(0u, 88666u), ~arg_0.x), any(vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 23u)]))), false, -64773i);
    var var_3 = ~(~34412u) < ~max(arg_2.a.x, _wgslsmith_sub_u32(~102540u, 1u));
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>) -> bool {
    global1 = array<i32, 30>();
    let var_0 = abs(_wgslsmith_add_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(arg_0.a.x, 21u)], -1i, -1i, u_input.a), ~vec4<i32>(0i, u_input.a, 597i, -2147483647i)), (~vec4<i32>(global2[_wgslsmith_index_u32(global0.a.x, 21u)], -1i, 23111i, global2[_wgslsmith_index_u32(arg_0.a.x, 21u)]) & vec4<i32>(-2147483647i, 2147483647i, -97051i, -22330i)) << ((~vec4<u32>(global0.a.x, arg_0.a.x, arg_0.a.x, 67993u) ^ min(vec4<u32>(global0.a.x, 0u, global0.a.x, 3834u), vec4<u32>(global0.a.x, 28505u, arg_0.a.x, 1u))) % vec4<u32>(32u))));
    let var_1 = firstLeadingBit(~select(vec3<u32>(arg_0.a.x, arg_0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.x, arg_0.a.x, 0u), vec3<u32>(global0.a.x, 10037u, 1u))), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.a.x, 0u, global0.a.x), vec3<u32>(global0.a.x, arg_0.a.x, 15117u)), select(vec3<bool>(arg_1, false, arg_1), select(vec3<bool>(false, arg_2.x, global3[_wgslsmith_index_u32(1u, 23u)]), arg_2.xww, vec3<bool>(true, arg_1, true)), any(arg_2))));
    global0 = func_1(select(~(~(~vec4<u32>(global0.a.x, 0u, arg_0.a.x, arg_0.a.x))), firstLeadingBit(~(vec4<u32>(var_1.x, 1u, 1u, 1u) ^ vec4<u32>(5923u, 0u, var_1.x, 44385u))), true), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -463f), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -353f), arg_0.b), arg_0);
    var var_2 = all(select(select(arg_2, arg_2, vec4<bool>(arg_1, !arg_1, arg_1, all(arg_2.zw))), !(!select(vec4<bool>(false, global3[_wgslsmith_index_u32(global0.a.x, 23u)], arg_1, arg_1), arg_2, arg_2)), !(!vec4<bool>(false, arg_1, true, true))));
    return any(vec4<bool>(arg_2.x, select(false, true, true), true, true));
}

fn func_5(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<f32>) -> Struct_3 {
    var var_0 = Struct_2(vec3<i32>(_wgslsmith_mult_i32(0i, reverseBits(68464i)), reverseBits(1i ^ global1[_wgslsmith_index_u32(global0.a.x, 30u)]), max(i32(-1i) * -61760i, abs(global2[_wgslsmith_index_u32(global0.a.x, 21u)]))) >> ((abs(_wgslsmith_mult_vec3_u32(vec3<u32>(6422u, 42694u, global0.a.x), vec3<u32>(global0.a.x, 4294967295u, 0u))) >> (vec3<u32>(~38292u, global0.a.x, countOneBits(global0.a.x)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_1 = Struct_2(vec3<i32>(max(-64148i, ~(u_input.a & var_0.a.x)), -var_0.a.x, 0i));
    global1 = array<i32, 30>();
    global1 = array<i32, 30>();
    let var_2 = select(_wgslsmith_clamp_vec2_u32(vec2<u32>(5692u, 18217u) & global0.a, global0.a, vec2<u32>(max(~global0.a.x, ~global0.a.x), func_2())), vec2<u32>(1u, global0.a.x), !vec2<bool>(!(global0.b > -168f), (21466i <= global2[_wgslsmith_index_u32(0u, 21u)]) | global3[_wgslsmith_index_u32(firstTrailingBit(global0.a.x), 23u)]));
    return Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(3309u, ~36641u, 1u, 4294967295u), ~vec4<u32>(var_2.x, var_2.x, global0.a.x, 0u)) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(14057u, 31275u, var_2.x), ~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 1u, 30607u), vec3<u32>(global0.a.x, global0.a.x, global0.a.x))) % 32u), !(any(select(vec2<bool>(global3[_wgslsmith_index_u32(global0.a.x, 23u)], false), vec2<bool>(global3[_wgslsmith_index_u32(global0.a.x, 23u)], global3[_wgslsmith_index_u32(0u, 23u)]), false)) | false), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(global0.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global0.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, _wgslsmith_f_op_f32(max(global0.b, -1000f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.b, global0.b), vec2<f32>(global0.b, -599f))))), vec2<bool>(func_4(func_1(vec4<u32>(24797u, 4294967295u, 1u, global0.a.x), vec4<f32>(global0.b, global0.b, 1501f, global0.b), Struct_1(vec2<u32>(1154u, global0.a.x), global0.b)), false, select(vec4<bool>(global3[_wgslsmith_index_u32(global0.a.x, 23u)], global3[_wgslsmith_index_u32(global0.a.x, 23u)], global3[_wgslsmith_index_u32(4294967295u, 23u)], true), vec4<bool>(global3[_wgslsmith_index_u32(33822u, 23u)], true, false, global3[_wgslsmith_index_u32(global0.a.x, 23u)]), vec4<bool>(global3[_wgslsmith_index_u32(global0.a.x, 23u)], false, global3[_wgslsmith_index_u32(global0.a.x, 23u)], true))), any(select(vec2<bool>(false, global3[_wgslsmith_index_u32(global0.a.x, 23u)]), vec2<bool>(global3[_wgslsmith_index_u32(72503u, 23u)], false), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 23u)], true)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.b, global0.b, 1000f, global0.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, global0.b, global0.b, global0.b) - vec4<f32>(global0.b, 612f, 488f, 1570f)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, global0.b, 1083f, global0.b) * vec4<f32>(248f, -1461f, global0.b, global0.b)))))));
    let var_1 = Struct_4(Struct_3(~37507u & var_0.a, true, -30363i));
    global3 = array<bool, 23>();
    var var_2 = vec3<i32>(-1i) * -abs(vec3<i32>(var_1.a.c << (var_1.a.a % 32u), ~47797i, max(18516i, 2147483647i)));
    var var_3 = ~var_2.yx;
    var var_4 = func_2() << (~9782u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1000f), (~_wgslsmith_div_i32(var_0.c, -8906i) ^ (i32(-1i) * -2147483647i)) << (~global0.a.x % 32u), _wgslsmith_clamp_u32(~firstLeadingBit(7772u), ~var_1.a.a, var_0.a) >> (0u % 32u));
}

