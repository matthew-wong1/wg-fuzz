struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 31> = array<Struct_5, 31>(Struct_5(62004i, vec3<u32>(76274u, 58425u, 31609u), 4294967295u), Struct_5(-1i, vec3<u32>(8407u, 1u, 1u), 19697u), Struct_5(-1i, vec3<u32>(4294967295u, 1u, 48896u), 0u), Struct_5(15047i, vec3<u32>(40360u, 5260u, 0u), 56734u), Struct_5(-1492i, vec3<u32>(71626u, 0u, 4294967295u), 0u), Struct_5(-69559i, vec3<u32>(0u, 108804u, 24229u), 94911u), Struct_5(1i, vec3<u32>(45393u, 6573u, 104249u), 34267u), Struct_5(0i, vec3<u32>(25413u, 0u, 11138u), 4676u), Struct_5(-1i, vec3<u32>(4294967295u, 17506u, 4294967295u), 4294967295u), Struct_5(-15661i, vec3<u32>(22374u, 27898u, 1u), 4294967295u), Struct_5(1i, vec3<u32>(4420u, 60144u, 1u), 33954u), Struct_5(1i, vec3<u32>(88829u, 4294967295u, 56661u), 1u), Struct_5(995i, vec3<u32>(26891u, 25235u, 1u), 63531u), Struct_5(-14207i, vec3<u32>(0u, 6538u, 125696u), 65674u), Struct_5(8376i, vec3<u32>(23148u, 19661u, 47044u), 4294967295u), Struct_5(2147483647i, vec3<u32>(11611u, 16327u, 94787u), 4294967295u), Struct_5(-1i, vec3<u32>(0u, 1u, 4294967295u), 0u), Struct_5(2147483647i, vec3<u32>(0u, 58728u, 52110u), 4294967295u), Struct_5(1i, vec3<u32>(20686u, 1u, 0u), 11373u), Struct_5(-5502i, vec3<u32>(4294967295u, 2930u, 0u), 1u), Struct_5(0i, vec3<u32>(926u, 1u, 4294967295u), 23869u), Struct_5(-7820i, vec3<u32>(4294967295u, 151u, 20616u), 4294967295u), Struct_5(16573i, vec3<u32>(14919u, 0u, 883u), 0u), Struct_5(0i, vec3<u32>(28147u, 10293u, 41990u), 9795u), Struct_5(2147483647i, vec3<u32>(16608u, 28339u, 87520u), 4294967295u), Struct_5(15899i, vec3<u32>(78363u, 0u, 92126u), 39638u), Struct_5(0i, vec3<u32>(36755u, 43217u, 8625u), 4294967295u), Struct_5(34484i, vec3<u32>(4294967295u, 74255u, 1u), 97825u), Struct_5(-1i, vec3<u32>(1u, 31923u, 56021u), 0u), Struct_5(23361i, vec3<u32>(0u, 87552u, 14556u), 106u), Struct_5(-32129i, vec3<u32>(0u, 28772u, 0u), 1u));

var<private> global1: f32;

var<private> global2: array<vec2<i32>, 25>;

var<private> global3: bool;

var<private> global4: array<u32, 12>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = Struct_4(arg_3.b);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-820f)));
    let var_1 = Struct_1(select(reverseBits(max(select(arg_3.a.a, arg_3.a.a, true), vec2<u32>(arg_3.a.a.x, arg_3.a.a.x))), max(select(vec2<u32>(1u, 76034u), vec2<u32>(22741u, arg_0.a.x), vec2<bool>(true, true)), abs(arg_3.a.a)), arg_0.a.x >= ~1u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -740f), _wgslsmith_f_op_f32(1073f * var_0.a.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.a.x)), 550f, _wgslsmith_div_f32(var_0.a.x, var_0.a.x)))), arg_1, -arg_3.a.d ^ ~countOneBits(global2[_wgslsmith_index_u32(arg_3.a.a.x, 25u)] | vec2<i32>(arg_0.c, arg_3.a.d.x)));
    let var_2 = Struct_1(select(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(17781u, 8499u), arg_0.a), 77345u), max(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_3.a.a.x, 12u)], 12u)], 45943u), ~vec2<u32>(var_1.a.x, 85565u))), abs(~(arg_3.a.a << (arg_3.a.a % vec2<u32>(32u)))), !all(vec3<bool>(false, true, true))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_0.a.yxw + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, 1566f, -1508f)), _wgslsmith_div_vec3_f32(arg_0.b, vec3<f32>(-573f, -1839f, -1026f)))))), ~34562i, _wgslsmith_div_vec2_i32(abs(_wgslsmith_mod_vec2_i32(u_input.a, -vec2<i32>(-1i, arg_2))), firstLeadingBit(select(vec2<i32>(arg_0.d.x, arg_1), arg_0.d, vec2<bool>(false, false))) >> (~(~arg_3.a.a) % vec2<u32>(32u))));
    let var_3 = Struct_5(-arg_3.a.d.x, ~vec3<u32>(_wgslsmith_mod_u32(firstLeadingBit(arg_0.a.x), arg_3.a.a.x), ~firstLeadingBit(global4[_wgslsmith_index_u32(16962u, 12u)]), ~_wgslsmith_sub_u32(var_1.a.x, 0u)), 2344u);
    return select(select(select(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), arg_3.b.x == var_2.b.x), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, false), vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), !vec2<bool>(any(vec2<bool>(true, true)), true), select(vec2<bool>(!select(false, true, false), true), vec2<bool>((arg_1 | 1i) <= (arg_3.a.d.x >> (1u % 32u)), all(vec2<bool>(true, true))), !(all(vec3<bool>(true, false, true)) != true)));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: Struct_4) -> u32 {
    let var_0 = arg_0;
    var var_1 = -(firstLeadingBit(arg_1.b.a.d.x) ^ ~(u_input.a.x | _wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_1.b.a.d.x, 50234i), vec3<i32>(72242i, 10738i, arg_1.b.a.d.x))));
    let var_2 = abs(u_input.a.x);
    global1 = _wgslsmith_f_op_f32(min(1468f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.b.b.x))) * 1621f), arg_1.b.a.b.x))));
    let var_3 = arg_1.b;
    return _wgslsmith_add_u32(global4[_wgslsmith_index_u32(1u, 12u)], _wgslsmith_dot_vec4_u32(~(~vec4<u32>(17880u, 78360u, arg_1.b.a.a.x, 23593u)), _wgslsmith_sub_vec4_u32(vec4<u32>(~45652u, ~1u, 35096u, 4294967295u), abs(vec4<u32>(0u, var_3.a.a.x, global4[_wgslsmith_index_u32(var_3.a.a.x, 12u)], 61273u)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_4, arg_3: Struct_1) -> bool {
    let var_0 = Struct_5(_wgslsmith_div_i32(arg_3.d.x, 1i), vec3<u32>(func_4(arg_3.c < -2147483647i, Struct_3(true, Struct_2(Struct_1(vec2<u32>(4294967295u, arg_0.a.x), vec3<f32>(arg_0.b.x, arg_3.b.x, -469f), u_input.a.x, arg_0.d), vec4<f32>(arg_3.b.x, 1886f, 462f, arg_3.b.x))), func_3(Struct_1(vec2<u32>(global4[_wgslsmith_index_u32(0u, 12u)], 2809u), vec3<f32>(arg_2.a.x, arg_0.b.x, 284f), arg_0.d.x, vec2<i32>(0i, -1730i)), arg_0.c, 1i, Struct_2(arg_0, vec4<f32>(1793f, arg_3.b.x, 946f, arg_3.b.x))), Struct_4(arg_2.a)), arg_1.c, 15438u) >> (reverseBits(arg_1.b) % vec3<u32>(32u)), min(~1u, ~(0u | arg_3.a.x)));
    var var_1 = true;
    var var_2 = !select(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), vec2<bool>(all(vec2<bool>(false, false)) | true, true), (true | all(vec2<bool>(true, false))) && false);
    var var_3 = Struct_2(Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(countOneBits(1u), var_0.b.x), vec2<u32>(func_4(var_2.x, Struct_3(var_2.x, Struct_2(arg_0, vec4<f32>(arg_0.b.x, -524f, -786f, arg_3.b.x))), vec2<bool>(var_2.x, var_2.x), arg_2), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0.a.x, 1u), arg_1.b), 12u)])), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(arg_0.b)))), -1i, vec2<i32>(arg_0.d.x >> (var_0.b.x % 32u), max(u_input.a.x, 20728i)) | ~vec2<i32>(var_0.a, 13927i)), arg_2.a);
    var var_4 = firstLeadingBit(_wgslsmith_dot_vec3_u32(var_0.b, var_0.b));
    return _wgslsmith_div_u32(global4[_wgslsmith_index_u32(92163u, 12u)], 4294967295u | abs(1u << (arg_0.a.x % 32u))) >= _wgslsmith_dot_vec2_u32(max(vec2<u32>(_wgslsmith_mod_u32(arg_1.c, arg_3.a.x), var_0.c << (global4[_wgslsmith_index_u32(arg_3.a.x, 12u)] % 32u)), vec2<u32>(28759u, ~global4[_wgslsmith_index_u32(30357u, 12u)])), ~_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(var_3.a.a, arg_0.a), arg_3.a));
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: u32) -> Struct_1 {
    let var_0 = u_input.a.x;
    global1 = arg_1;
    let var_1 = arg_2;
    global0 = array<Struct_5, 31>();
    let var_2 = vec4<u32>(firstTrailingBit(global4[_wgslsmith_index_u32(abs(41797u), 12u)]) | global4[_wgslsmith_index_u32(~_wgslsmith_mod_u32(75343u, 49081u), 12u)], 78994u, ~arg_0, 66789u) ^ reverseBits(~vec4<u32>(arg_3, _wgslsmith_add_u32(4294967295u, 0u), ~19930u, 38061u));
    return Struct_1(vec2<u32>(89191u, _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, 7397u, global4[_wgslsmith_index_u32(20566u, 12u)])), vec3<u32>(53980u, arg_0, arg_3) & vec3<u32>(global4[_wgslsmith_index_u32(arg_0, 12u)], var_2.x, arg_3)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(446f, arg_1, arg_1)), vec3<bool>(var_1, arg_2, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(336f, 483f, 712f) + vec3<f32>(arg_1, arg_1, 577f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-333f, -885f, -1321f)))), !(!var_1))))), -12856i, vec2<i32>(_wgslsmith_sub_i32(23950i, var_0) << (~var_2.x % 32u), 0i));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3) -> i32 {
    global0 = array<Struct_5, 31>();
    let var_0 = -17328i;
    global4 = array<u32, 12>();
    let var_1 = func_5(0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.b.x - arg_0.a.b.x) + _wgslsmith_f_op_f32(-arg_1.b.a.b.x)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_0.b.x, 1396f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.b.b.x - 900f), _wgslsmith_f_op_f32(f32(-1f) * -918f), true)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.b.a.b.x - 677f)))) < 1f, arg_1.b.a.a.x);
    var var_2 = arg_1.b.a;
    return ~(~_wgslsmith_mult_i32(-1i, var_0));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec3<u32>, arg_3: bool) -> bool {
    var var_0 = !vec2<bool>(false, arg_3);
    global0 = array<Struct_5, 31>();
    var var_1 = reverseBits(arg_1) ^ arg_1;
    let var_2 = vec3<i32>(-1i, u_input.a.x, -u_input.a.x);
    var var_3 = select(func_6(Struct_2(func_5(arg_2.x, 194f, func_2(Struct_1(arg_2.xy, vec3<f32>(-545f, -940f, -1000f), var_2.x, vec2<i32>(1i, u_input.a.x)), global0[_wgslsmith_index_u32(arg_2.x, 31u)], Struct_4(vec4<f32>(319f, 229f, 1617f, -3396f)), Struct_1(arg_1.yw, vec3<f32>(-1289f, 1002f, -1114f), -1i, vec2<i32>(u_input.a.x, var_2.x))), var_1.x), vec4<f32>(1391f, _wgslsmith_f_op_f32(floor(158f)), _wgslsmith_f_op_f32(-285f + -385f), _wgslsmith_f_op_f32(abs(-840f)))), Struct_3(all(!vec4<bool>(arg_3, true, arg_3, true)), Struct_2(Struct_1(arg_2.xy, vec3<f32>(-953f, 1000f, 1433f), -1i, vec2<i32>(var_2.x, -40867i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1594f, 169f, -239f, 673f))))), _wgslsmith_div_i32(min(i32(-1i) * -13123i, _wgslsmith_dot_vec3_i32(var_2, var_2) >> (~69296u % 32u)), firstTrailingBit(var_2.x)), any(vec4<bool>(false, !arg_3, arg_3, true)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(false, false)), true, true)), vec3<bool>(func_1(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(26418u, 12u)], 12u)], 12u)], 35042u), vec4<u32>(global4[_wgslsmith_index_u32(1u, 12u)], 72416u, 104433u, 1u) ^ vec4<u32>(74501u, 4294967295u, global4[_wgslsmith_index_u32(97704u, 12u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(12224u, 12u)], 12u)], 12u)]), countOneBits(vec3<u32>(global4[_wgslsmith_index_u32(4294967295u, 12u)], global4[_wgslsmith_index_u32(1u, 12u)], 42884u)), false), select(any(vec4<bool>(false, true, true, true)), true, true), true), all(vec2<bool>(true, global4[_wgslsmith_index_u32(31894u, 12u)] >= global4[_wgslsmith_index_u32(0u, 12u)]))));
    global4 = array<u32, 12>();
    global2 = array<vec2<i32>, 25>();
    let var_0 = Struct_2(func_5(81520u, -736f, all(vec4<bool>(true, true, true, true)), 1u), vec4<f32>(func_5(func_4(any(vec4<bool>(false, true, false, true)), Struct_3(true, Struct_2(Struct_1(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 12u)], 12u)], global4[_wgslsmith_index_u32(33063u, 12u)]), vec3<f32>(-1057f, -755f, 690f), 0i, vec2<i32>(u_input.a.x, u_input.a.x)), vec4<f32>(597f, -1000f, 1815f, -1000f))), vec2<bool>(true, false), Struct_4(vec4<f32>(-606f, -1000f, -787f, 1005f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-208f, -1144f) + _wgslsmith_div_f32(384f, 2971f)), true, global4[_wgslsmith_index_u32(max(global4[_wgslsmith_index_u32(1u, 12u)], 1u) >> (1u % 32u), 12u)]).b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1043f - 256f)))), _wgslsmith_f_op_f32(831f + _wgslsmith_f_op_f32(func_5(global4[_wgslsmith_index_u32(1u, 12u)], 357f, false, 4294967295u).b.x - _wgslsmith_f_op_f32(min(1979f, 429f)))), -971f));
    var var_1 = var_0;
    var var_2 = select(~vec4<i32>(-u_input.a.x, u_input.a.x, _wgslsmith_mod_i32(-15011i, 41181i), min(-1i, u_input.a.x)), countOneBits(max(vec4<i32>(var_1.a.c, 1i, u_input.a.x, var_0.a.c), select(vec4<i32>(var_1.a.c, var_0.a.d.x, -1i, var_1.a.d.x), vec4<i32>(var_0.a.c, -1i, 2147483647i, var_0.a.d.x), vec4<bool>(true, true, false, false)))), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true)) >> (select(vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a.a.x, 4294967295u, global4[_wgslsmith_index_u32(var_0.a.a.x, 12u)]), _wgslsmith_add_vec3_u32(vec3<u32>(var_1.a.a.x, var_1.a.a.x, var_1.a.a.x), vec3<u32>(var_1.a.a.x, 4294967295u, 0u))), var_1.a.a.x & ~1u, ~1u, 52466u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.a.a.x, var_1.a.a.x, 26624u, var_1.a.a.x) | vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 12u)], global4[_wgslsmith_index_u32(4294967295u, 12u)], var_0.a.a.x, var_0.a.a.x), ~vec4<u32>(var_1.a.a.x, global4[_wgslsmith_index_u32(var_0.a.a.x, 12u)], 0u, var_0.a.a.x)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true)), vec4<bool>(false, var_1.a.a.x >= global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 12u)], 12u)], func_1(vec2<u32>(var_1.a.a.x, global4[_wgslsmith_index_u32(0u, 12u)]), vec4<u32>(var_0.a.a.x, var_1.a.a.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_0.a.a.x, 12u)], 12u)], 4294967295u), vec3<u32>(4294967295u, 4294967295u, var_0.a.a.x), true), true), true)) % vec4<u32>(32u));
    global3 = abs(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(~var_1.a.a.x | 1u, var_0.a.a.x), 12u)]) == func_4(all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false)), true)), Struct_3(false, var_0), !select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), var_0.b.x >= var_0.a.b.x), Struct_4(vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -365f), var_1.b.x, 686f)));
    let x = u_input.a;
    s_output = StorageBuffer(-69572i, vec2<u32>(_wgslsmith_add_u32(var_1.a.a.x, 1u), var_0.a.a.x), var_1.a.a.x ^ 1u, func_5(reverseBits(~func_5(var_1.a.a.x, var_0.a.b.x, false, var_0.a.a.x).a.x), _wgslsmith_f_op_f32(-var_1.a.b.x), 518f <= var_1.a.b.x, ~_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(~0u, 12u)], ~var_1.a.a.x)).c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-872f)))))));
}

