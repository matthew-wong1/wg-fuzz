struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global1: Struct_3 = Struct_3(17457i, Struct_2(vec3<f32>(-414f, 462f, 2520f), vec4<u32>(25676u, 1u, 109235u, 69293u)), -26543i);

var<private> global2: array<u32, 26>;

var<private> global3: array<Struct_3, 3>;

var<private> global4: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec3<f32>(-515f, 991f, -1085f), vec4<u32>(138295u, 1u, 62556u, 1u)), Struct_2(vec3<f32>(-954f, -189f, -606f), vec4<u32>(4294967295u, 105418u, 27829u, 79205u)), Struct_2(vec3<f32>(1833f, 1000f, 724f), vec4<u32>(56673u, 1u, 4294967295u, 70000u)), Struct_2(vec3<f32>(1334f, -837f, -288f), vec4<u32>(1u, 4294967295u, 49591u, 60169u)), Struct_2(vec3<f32>(-553f, 181f, -1000f), vec4<u32>(1u, 4294967295u, 0u, 17441u)), Struct_2(vec3<f32>(382f, -795f, -656f), vec4<u32>(1u, 0u, 0u, 58971u)), Struct_2(vec3<f32>(-161f, -1016f, 1200f), vec4<u32>(9388u, 4294967295u, 33210u, 1u)), Struct_2(vec3<f32>(636f, 150f, 1000f), vec4<u32>(1u, 4294967295u, 79605u, 4294967295u)), Struct_2(vec3<f32>(-388f, -1709f, -335f), vec4<u32>(7171u, 89460u, 4294967295u, 1u)), Struct_2(vec3<f32>(1353f, -1255f, -1000f), vec4<u32>(78685u, 81324u, 0u, 0u)), Struct_2(vec3<f32>(-2045f, -438f, -1502f), vec4<u32>(4294967295u, 5845u, 105340u, 1u)), Struct_2(vec3<f32>(906f, -3708f, -1763f), vec4<u32>(0u, 9277u, 0u, 4294967295u)), Struct_2(vec3<f32>(-307f, -317f, 290f), vec4<u32>(0u, 63957u, 26105u, 0u)), Struct_2(vec3<f32>(2091f, -956f, -1272f), vec4<u32>(4294967295u, 26722u, 9291u, 16719u)), Struct_2(vec3<f32>(144f, 1540f, 1289f), vec4<u32>(63507u, 72839u, 14996u, 1u)), Struct_2(vec3<f32>(1794f, 726f, -397f), vec4<u32>(69693u, 33180u, 0u, 2249u)), Struct_2(vec3<f32>(-671f, -979f, -520f), vec4<u32>(1u, 67196u, 1u, 26611u)), Struct_2(vec3<f32>(159f, 398f, -1000f), vec4<u32>(4294967295u, 0u, 17002u, 6357u)), Struct_2(vec3<f32>(1821f, -581f, 2110f), vec4<u32>(1u, 23751u, 29858u, 36681u)), Struct_2(vec3<f32>(-1353f, -1309f, 395f), vec4<u32>(14676u, 0u, 82601u, 95743u)), Struct_2(vec3<f32>(682f, -982f, -2323f), vec4<u32>(0u, 1u, 0u, 1u)), Struct_2(vec3<f32>(556f, 1378f, -437f), vec4<u32>(38890u, 4294967295u, 40661u, 5559u)), Struct_2(vec3<f32>(321f, -902f, -977f), vec4<u32>(1u, 4294967295u, 4294967295u, 59915u)), Struct_2(vec3<f32>(183f, 900f, 699f), vec4<u32>(58743u, 4294967295u, 4294967295u, 0u)), Struct_2(vec3<f32>(-1551f, 1000f, -865f), vec4<u32>(60331u, 18594u, 15742u, 1u)), Struct_2(vec3<f32>(569f, 438f, 1134f), vec4<u32>(4294967295u, 4294967295u, 1u, 3650u)), Struct_2(vec3<f32>(175f, -1825f, 632f), vec4<u32>(1u, 0u, 23652u, 4294967295u)), Struct_2(vec3<f32>(386f, -738f, -613f), vec4<u32>(7017u, 0u, 1u, 48941u)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> bool {
    var var_0 = global1.b.b.x;
    global3 = array<Struct_3, 3>();
    let var_1 = u_input.e.yy;
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.a.x))), 476f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.b.a.x, global1.b.a.x), -894f))), -113f)));
    global3 = array<Struct_3, 3>();
    return true;
}

fn func_3(arg_0: vec3<bool>) -> bool {
    global4 = array<Struct_2, 28>();
    let var_0 = vec4<i32>(-1i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 0i, -1i), u_input.e) >> (1u % 32u), global1.a), 0i, global1.a);
    global4 = array<Struct_2, 28>();
    var var_1 = Struct_1(var_0.ww, abs(vec4<i32>(_wgslsmith_div_i32(u_input.d << (global2[_wgslsmith_index_u32(46985u, 26u)] % 32u), global1.a), min(global1.c, abs(23190i)), var_0.x, ~(~u_input.c))));
    global2 = array<u32, 26>();
    return any(select(select(!(!vec4<bool>(global0.x, global0.x, true, true)), vec4<bool>(true, arg_0.x, false, arg_0.x), !select(vec4<bool>(arg_0.x, arg_0.x, true, true), vec4<bool>(global0.x, true, global0.x, false), true)), !vec4<bool>(0i >= var_0.x, !arg_0.x, arg_0.x, global0.x), select(vec4<bool>(global1.b.a.x == global1.b.a.x, !global0.x, !global0.x, 1u <= global1.b.b.x), vec4<bool>(any(vec3<bool>(false, global0.x, false)), global0.x, true, all(vec2<bool>(global0.x, false))), vec4<bool>(any(vec2<bool>(global0.x, global0.x)), global0.x && false, u_input.d != global1.a, true))));
}

fn func_1(arg_0: vec3<bool>) -> vec2<i32> {
    global0 = select(select(!(!(!vec4<bool>(true, true, arg_0.x, arg_0.x))), select(vec4<bool>(false, !global0.x, !arg_0.x, func_2()), vec4<bool>(any(arg_0), false, false & arg_0.x, !global0.x), select(vec4<bool>(arg_0.x, true, true, false), select(vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(true, global0.x, false, true), vec4<bool>(false, true, arg_0.x, arg_0.x)), true)), select(vec4<bool>(func_2(), true, false, global0.x), vec4<bool>(true, !arg_0.x, arg_0.x, func_2()), !all(arg_0.yz))), vec4<bool>(true, false == arg_0.x, true, arg_0.x), vec4<bool>(false, true, any(!arg_0), false));
    global0 = select(select(vec4<bool>(any(vec4<bool>(arg_0.x, arg_0.x, global0.x, global0.x)), select(false, !global0.x, func_3(arg_0)), global0.x, global0.x), vec4<bool>(global0.x != false, true & all(vec4<bool>(true, true, arg_0.x, arg_0.x)), true, global0.x), vec4<bool>(true, !global0.x, any(vec4<bool>(true, arg_0.x, false, arg_0.x)), true)), vec4<bool>(!global0.x, arg_0.x, true, true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(876f, global1.b.a.x), -1000f, global0.x)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-874f))))));
    let var_0 = ~u_input.d < countOneBits(_wgslsmith_add_i32(u_input.a & 22418i, ~u_input.a) << (_wgslsmith_sub_u32(4294967295u, ~4294967295u) % 32u));
    let var_1 = vec2<bool>(global0.x, true);
    var var_2 = Struct_1(u_input.e.zy, vec4<i32>(30729i, _wgslsmith_mult_i32(abs(-17238i | u_input.c), global1.a), min(u_input.b, _wgslsmith_dot_vec4_i32(-vec4<i32>(30833i, 0i, 24700i, -4042i), _wgslsmith_div_vec4_i32(vec4<i32>(-44587i, -2147483647i, u_input.d, u_input.d), vec4<i32>(global1.c, global1.a, 38865i, global1.a)))), 39243i));
    return abs(firstTrailingBit(vec2<i32>(_wgslsmith_add_i32(-2147483647i, var_2.b.x), -1i >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 26u)], 26u)] % 32u))) << (vec2<u32>(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(38598u, 26u)] ^ global1.b.b.x, global2[_wgslsmith_index_u32(1132u, 26u)] ^ 20180u), ~abs(1u)) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_3 {
    global2 = array<u32, 26>();
    global4 = array<Struct_2, 28>();
    var var_0 = Struct_3(_wgslsmith_mult_i32((_wgslsmith_clamp_i32(-58781i, u_input.d, -1i) ^ _wgslsmith_add_i32(46148i, u_input.e.x)) & _wgslsmith_add_i32(2147483647i, _wgslsmith_add_i32(arg_1, 1i)), 2147483647i), Struct_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1768f, global1.b.a.x, 686f), vec3<f32>(global1.b.a.x, global1.b.a.x, global1.b.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.a.x, global1.b.a.x, global1.b.a.x))))), ((vec4<u32>(6322u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], global1.b.b.x) << (global1.b.b % vec4<u32>(32u))) >> (max(vec4<u32>(2343u, 0u, 4294967295u, global1.b.b.x), vec4<u32>(1u, 0u, 4294967295u, 3890u)) % vec4<u32>(32u))) >> (select(~global1.b.b, vec4<u32>(global1.b.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.b.b.x, 26u)], 26u)], global1.b.b.x, 1u), global0.x | global0.x) % vec4<u32>(32u))), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(firstTrailingBit(arg_0.a.x), u_input.e.x), _wgslsmith_div_i32(arg_1, _wgslsmith_add_i32(_wgslsmith_add_i32(-2147483647i, 2147483647i), arg_0.a.x)), arg_1));
    let var_1 = _wgslsmith_f_op_vec2_f32(var_0.b.a.zz * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0.b.a.yy), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.a.x, global1.b.a.x) * vec2<f32>(var_0.b.a.x, global1.b.a.x)))) * _wgslsmith_f_op_vec2_f32(-var_0.b.a.zy)));
    var var_2 = true;
    return global3[_wgslsmith_index_u32(global1.b.b.x, 3u)];
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    global3 = array<Struct_3, 3>();
    let var_0 = Struct_1(vec2<i32>(u_input.c, _wgslsmith_div_i32(max(-4265i ^ arg_1.a, min(arg_0.x, arg_2.a.x)), ~arg_2.b.x)), vec4<i32>(reverseBits(12383i), ~global1.c, min(firstTrailingBit(firstLeadingBit(1i)), arg_2.b.x ^ u_input.b), ~(2147483647i << (global2[_wgslsmith_index_u32(1u, 26u)] % 32u))));
    var var_1 = arg_2;
    global3 = array<Struct_3, 3>();
    let var_2 = abs(vec4<i32>(28033i, abs(-(~arg_2.b.x)), 2147483647i, -var_0.b.x >> (1u % 32u)));
    return func_4(arg_2, arg_1.c).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.yyw;
    let var_1 = func_5(min(u_input.e, abs(~(u_input.e << (global1.b.b.wyz % vec3<u32>(32u))))), func_4(Struct_1(func_1(select(global0.zzz, global0.zxy, vec3<bool>(true, var_0.x, global0.x))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.c, global1.a, u_input.d), vec3<i32>(u_input.a, 17524i, u_input.a)), global1.a, -1i, ~global1.c)), i32(-1i) * -(~(-33349i))), Struct_1(vec2<i32>(~(i32(-1i) * -1i), 1i), _wgslsmith_mod_vec4_i32(countOneBits(select(vec4<i32>(1i, -2147483647i, 2147483647i, global1.c), vec4<i32>(2147483647i, u_input.e.x, 1i, -30396i), vec4<bool>(global0.x, var_0.x, global0.x, global0.x))), (vec4<i32>(global1.a, -1i, 31825i, 9724i) << (global1.b.b % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(50051u, global2[_wgslsmith_index_u32(1u, 26u)], global1.b.b.x, global2[_wgslsmith_index_u32(global1.b.b.x, 26u)]), vec4<u32>(1u, global2[_wgslsmith_index_u32(1u, 26u)], global1.b.b.x, 1u)) % vec4<u32>(32u)))), -461f);
    global3 = array<Struct_3, 3>();
    global4 = array<Struct_2, 28>();
    global2 = array<u32, 26>();
    var_0 = !(!global0.yxw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(global1.b.b.yx, select(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.b.x, global2[_wgslsmith_index_u32(1u, 26u)]) >> (global1.b.b.wy % vec2<u32>(32u)), func_4(Struct_1(vec2<i32>(-2147483647i, 0i), vec4<i32>(u_input.a, u_input.e.x, u_input.a, u_input.e.x)), 0i).b.b.ww), vec2<u32>(_wgslsmith_dot_vec2_u32(global1.b.b.zz, vec2<u32>(20569u, var_1.b.x)), firstLeadingBit(global1.b.b.x)), !var_0.zx)), reverseBits(var_1.b.zxx), vec4<u32>(~_wgslsmith_dot_vec3_u32(global1.b.b.zxw, var_1.b.yyy) >> (~(var_1.b.x ^ 0u) % 32u), _wgslsmith_add_u32(abs(1u), global2[_wgslsmith_index_u32(max(abs(global2[_wgslsmith_index_u32(1u, 26u)]), 22228u), 26u)]), 57783u, var_1.b.x), _wgslsmith_div_vec3_f32(var_1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1097f, 518f, _wgslsmith_f_op_f32(min(var_1.a.x, 213f))))), select(_wgslsmith_clamp_vec3_u32(~var_1.b.zyz, min(vec3<u32>(1u, global2[_wgslsmith_index_u32(25758u, 26u)], var_1.b.x), vec3<u32>(0u, 4294967295u, global1.b.b.x)), global1.b.b.zxx) ^ global1.b.b.wwy, ~reverseBits(vec3<u32>(global1.b.b.x, 1u, global2[_wgslsmith_index_u32(1u, 26u)])), global0.yyw));
}

