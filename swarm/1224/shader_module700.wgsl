struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
    d: f32,
    e: i32,
}

struct Struct_5 {
    a: u32,
    b: vec2<u32>,
    c: bool,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
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

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<bool>(true, true, true, true), vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(vec4<bool>(true, true, false, false), vec2<i32>(48384i, -1261i)), Struct_1(vec4<bool>(false, true, false, false), vec2<i32>(-5480i, -8714i)), Struct_1(vec4<bool>(true, false, false, false), vec2<i32>(-31769i, 33802i)), Struct_1(vec4<bool>(true, true, true, false), vec2<i32>(-33387i, -34591i)), Struct_1(vec4<bool>(true, false, true, false), vec2<i32>(13645i, 1i)), Struct_1(vec4<bool>(false, false, false, false), vec2<i32>(-1i, 0i)), Struct_1(vec4<bool>(false, false, true, true), vec2<i32>(18829i, 0i)), Struct_1(vec4<bool>(false, true, true, true), vec2<i32>(15147i, 2147483647i)), Struct_1(vec4<bool>(false, false, false, true), vec2<i32>(0i, -5603i)), Struct_1(vec4<bool>(true, true, true, true), vec2<i32>(6071i, 10521i)), Struct_1(vec4<bool>(true, true, false, true), vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec4<bool>(true, true, false, false), vec2<i32>(2090i, 0i)), Struct_1(vec4<bool>(true, true, false, false), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(vec4<bool>(false, false, false, true), vec2<i32>(-65895i, 1i)), Struct_1(vec4<bool>(true, false, true, false), vec2<i32>(-18658i, i32(-2147483648))), Struct_1(vec4<bool>(false, true, false, true), vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec4<bool>(false, true, false, true), vec2<i32>(-2839i, -12380i)), Struct_1(vec4<bool>(false, true, true, true), vec2<i32>(0i, i32(-2147483648))), Struct_1(vec4<bool>(true, true, true, true), vec2<i32>(2481i, 1i)), Struct_1(vec4<bool>(true, false, true, true), vec2<i32>(-1i, -46049i)), Struct_1(vec4<bool>(true, false, true, false), vec2<i32>(-17480i, 46780i)), Struct_1(vec4<bool>(true, false, true, false), vec2<i32>(34828i, 2147483647i)), Struct_1(vec4<bool>(true, true, false, true), vec2<i32>(7460i, -5000i)), Struct_1(vec4<bool>(true, false, false, false), vec2<i32>(1i, -1i)), Struct_1(vec4<bool>(false, false, false, false), vec2<i32>(-18991i, -1i)), Struct_1(vec4<bool>(false, true, true, false), vec2<i32>(i32(-2147483648), 40314i)), Struct_1(vec4<bool>(true, false, false, true), vec2<i32>(7648i, 51816i)));

var<private> global2: array<u32, 21> = array<u32, 21>(0u, 18824u, 4294967295u, 11408u, 35984u, 74438u, 4294967295u, 3435u, 0u, 36053u, 104792u, 4294967295u, 54863u, 61519u, 8401u, 74012u, 915u, 19808u, 18955u, 19810u, 3296u);

var<private> global3: Struct_5;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_4, arg_3: f32) -> u32 {
    global0 = arg_2.b.a;
    var var_0 = Struct_5(firstLeadingBit(106487u), arg_0.a.yx, all(vec2<bool>(!all(global0.yz), global0.x)), Struct_3((i32(-1i) * -arg_2.b.b.x) & arg_2.b.b.x, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-600f, -1000f)), 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d * global3.d.b.x)))), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(reverseBits(22381u), 79437u)), ~(~(vec2<u32>(67051u, arg_1.a.x) ^ arg_0.a.zz))));
    var var_1 = _wgslsmith_mult_vec4_u32(abs(_wgslsmith_sub_vec4_u32(~(vec4<u32>(var_0.b.x, 10416u, 1u, var_0.e) ^ vec4<u32>(global2[_wgslsmith_index_u32(arg_0.a.x, 21u)], 4294967295u, global2[_wgslsmith_index_u32(arg_0.a.x, 21u)], 0u)), vec4<u32>(global2[_wgslsmith_index_u32(1u, 21u)], global3.a, 0u, global3.e) & vec4<u32>(global3.a, arg_1.a.x, 14024u, arg_1.a.x))), (vec4<u32>(global2[_wgslsmith_index_u32(1u, 21u)], _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global2[_wgslsmith_index_u32(4077u, 21u)], 104050u, 1u), vec4<u32>(arg_1.a.x, arg_0.a.x, global3.a, global2[_wgslsmith_index_u32(global3.b.x, 21u)])), 0u, global3.a) << (_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(var_0.a, global2[_wgslsmith_index_u32(36708u, 21u)], 4294967295u, arg_0.a.x)), vec4<u32>(44202u, 29198u, global2[_wgslsmith_index_u32(4294967295u, 21u)], 62066u)) % vec4<u32>(32u))) << ((abs(~vec4<u32>(arg_1.a.x, 1u, arg_1.a.x, arg_0.a.x)) & abs(vec4<u32>(arg_0.a.x, var_0.e, 4294967295u, 24797u))) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-567f, global3.d.b.x, global3.d.b.x), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.d.b.x, var_0.d.b.x, var_0.d.b.x)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(185f, 1339f, -1129f) + vec3<f32>(213f, global3.d.b.x, var_0.d.b.x)))));
    let var_3 = Struct_5(~select(4294967295u, ~arg_1.a.x, any(arg_0.e.a)) | global2[_wgslsmith_index_u32(~9552u, 21u)], var_1.xy, all(vec3<bool>(!any(vec3<bool>(true, false, global3.c)), arg_0.c.a.x, min(arg_0.a.x, 0u) >= 43273u)), var_0.d, var_1.x);
    return arg_0.a.x;
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: bool) -> i32 {
    global0 = !(!vec4<bool>(true, true, _wgslsmith_f_op_f32(exp2(global3.d.b.x)) > _wgslsmith_f_op_f32(abs(global3.d.b.x)), arg_2));
    var var_0 = Struct_5(46324u, ~countOneBits(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 21u)], 21u)], global3.e) << (vec2<u32>(24863u, global2[_wgslsmith_index_u32(1u, 21u)]) % vec2<u32>(32u))) >> (vec2<u32>(~max(global2[_wgslsmith_index_u32(72914u, 21u)], global3.a), ~41983u) % vec2<u32>(32u)), !(select(global3.c | false, any(vec4<bool>(false, false, global3.c, global0.x)), global2[_wgslsmith_index_u32(1u, 21u)] < 0u) == all(vec2<bool>(true, true))), global3.d, ~global2[_wgslsmith_index_u32(~abs(_wgslsmith_mod_u32(global3.b.x, 1u)), 21u)]);
    var var_1 = _wgslsmith_mod_u32(~var_0.e, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(10441u, 84262u, 29139u, global3.b.x) << (vec4<u32>(26189u, 32076u, 1u, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(global2[_wgslsmith_index_u32(54924u, 21u)], var_0.a, 4294967295u, 18337u)), ~var_0.e)) <= var_0.a;
    let var_2 = vec2<bool>(all(select(vec4<bool>(true, true, arg_1, true), vec4<bool>(!global3.c, all(vec4<bool>(arg_2, arg_2, global0.x, global3.c)), global3.c, true), true)), all(!global0.wz));
    let var_3 = global1[_wgslsmith_index_u32(4294967295u, 28u)];
    return -3765i;
}

fn func_1() -> vec4<bool> {
    let var_0 = countOneBits(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(global3.b, vec2<u32>(51517u, global3.b.x)), vec2<u32>(func_2(Struct_2(vec3<u32>(23410u, 52561u, global2[_wgslsmith_index_u32(30187u, 21u)]), global1[_wgslsmith_index_u32(26223u, 28u)], global1[_wgslsmith_index_u32(11973u, 28u)], global3.d.a, Struct_1(vec4<bool>(global3.c, global0.x, true, true), u_input.c)), Struct_2(vec3<u32>(global2[_wgslsmith_index_u32(global3.e, 21u)], 21242u, 71429u), global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(global3.b.x, 28u)], global3.d.a, global1[_wgslsmith_index_u32(42260u, 28u)]), Struct_4(global3.c, global1[_wgslsmith_index_u32(global3.b.x, 28u)], vec2<bool>(true, global0.x), global3.d.b.x, -46232i), -200f), _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(52444u, 21u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 21u)], 21u)])) >> (~(global3.b << (vec2<u32>(46525u, global3.a) % vec2<u32>(32u))) % vec2<u32>(32u))));
    global1 = array<Struct_1, 28>();
    global3 = Struct_5(24763u, _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(36304u, var_0.x), var_0) & vec2<u32>(_wgslsmith_add_u32(var_0.x, global2[_wgslsmith_index_u32(4294967295u, 21u)]), _wgslsmith_mod_u32(var_0.x, var_0.x)), ~global3.b), all(!(!vec4<bool>(false, global0.x, global0.x, false))), global3.d, ~firstLeadingBit(0u));
    global3 = Struct_5(_wgslsmith_mod_u32(~global3.b.x, global3.b.x), ~(~vec2<u32>(49083u, 30303u)), global3.c, Struct_3(func_3(reverseBits(vec4<i32>(global3.d.a, u_input.b, global3.d.a, global3.d.a)), global0.x, global3.c), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(global3.d.b.x - global3.d.b.x), _wgslsmith_f_op_f32(floor(global3.d.b.x)))))), ~(~(~60490u)));
    var var_1 = all(!vec3<bool>(any(vec2<bool>(global3.c, global3.c)), !global3.c, global0.x));
    return select(select(!select(vec4<bool>(global0.x, global0.x, false, global0.x), !vec4<bool>(false, global3.c, true, global0.x), any(vec4<bool>(global0.x, global3.c, global3.c, global0.x))), !select(vec4<bool>(true, global0.x, global3.c, global0.x), select(vec4<bool>(true, false, global3.c, true), vec4<bool>(true, global3.c, global3.c, true), vec4<bool>(true, global0.x, global3.c, global0.x)), select(vec4<bool>(true, true, global0.x, false), vec4<bool>(global3.c, false, global0.x, false), global3.c)), !global0.x | global0.x), select(vec4<bool>(global0.x, any(global0.ww), true, any(global0.yy) || all(vec2<bool>(global0.x, true))), !(!vec4<bool>(global3.c, global3.c, false, global0.x)), global3.c), select(any(!select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(false, true, true, global3.c), true)), global0.x, global3.c));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 21>();
    var var_0 = vec2<u32>(global2[_wgslsmith_index_u32(global3.a << (_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(global3.a, 39981u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.b.x, 21u)], 21u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(69741u, 21u)], 21u)], 21u)]), vec4<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(26833u, 21u)], 21u)], global2[_wgslsmith_index_u32(global3.b.x, 21u)], global3.a)), max(~vec4<u32>(78670u, 0u, 6400u, 1u), ~vec4<u32>(35478u, global2[_wgslsmith_index_u32(global3.b.x, 21u)], global2[_wgslsmith_index_u32(global3.e, 21u)], global3.a))) % 32u), 21u)], ~global3.e);
    var var_1 = Struct_1(select(func_1(), vec4<bool>(true, all(global0.xyy), global3.c || false, global0.x), func_1()), -vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(global3.d.a, 8463i), reverseBits(u_input.b), -28893i), global3.d.a));
    var var_2 = (min(~vec3<u32>(var_0.x, 1u, global2[_wgslsmith_index_u32(global3.e, 21u)]), ~(vec3<u32>(1u, 2728u, var_0.x) | vec3<u32>(43759u, 66807u, 51449u))) & ~_wgslsmith_mod_vec3_u32(~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(54171u, 21u)], 21u)], 4294967295u, global2[_wgslsmith_index_u32(0u, 21u)]), _wgslsmith_add_vec3_u32(vec3<u32>(global3.e, 33264u, 1u), vec3<u32>(var_0.x, 44378u, 71892u)))) | vec3<u32>(_wgslsmith_dot_vec3_u32(min(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.x, 21u)], 21u)], 1u) & vec3<u32>(1u, global2[_wgslsmith_index_u32(48773u, 21u)], 62511u), _wgslsmith_sub_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(var_0.x, 21u)], 6321u, 1u), vec3<u32>(global3.a, global3.b.x, global3.a))), select(firstLeadingBit(vec3<u32>(24676u, var_0.x, var_0.x)), vec3<u32>(0u, global3.a, global3.b.x) >> (vec3<u32>(4294967295u, 4294967295u, 53123u) % vec3<u32>(32u)), global0.xxy)), ~(~(~var_0.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, global3.e), global3.b ^ vec2<u32>(61613u, var_0.x)) & ~(~40203u));
    let var_3 = u_input.a;
    var_0 = vec2<u32>(~(~max(87024u, ~1u)), 23816u);
    var_2 = ~(vec3<u32>(~_wgslsmith_add_u32(var_0.x, 69389u), var_0.x, ~0u) | abs(vec3<u32>(global3.e ^ global3.a, _wgslsmith_dot_vec3_u32(vec3<u32>(global3.e, global3.e, var_2.x), vec3<u32>(8317u, 1u, 1u)), var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(1u, ~(~global3.a)));
}

