struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<bool>,
    e: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: f32,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: Struct_4,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(34572u, 72705u, 4294967295u);

var<private> global1: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(vec3<u32>(1u, 61425u, 12675u), Struct_1(7923i, vec3<f32>(1154f, 413f, 945f), true, vec4<f32>(1116f, 130f, -628f, -882f)), 1u), Struct_3(vec3<u32>(61069u, 47708u, 61642u), Struct_1(-32822i, vec3<f32>(903f, -758f, -300f), true, vec4<f32>(311f, 997f, -101f, -2907f)), 58202u), Struct_3(vec3<u32>(0u, 4601u, 144u), Struct_1(1i, vec3<f32>(285f, 751f, 756f), true, vec4<f32>(287f, -852f, 177f, -1342f)), 47555u), Struct_3(vec3<u32>(8846u, 0u, 69089u), Struct_1(-1i, vec3<f32>(-1216f, 1000f, 1926f), true, vec4<f32>(-661f, 1682f, -973f, 1000f)), 86729u), Struct_3(vec3<u32>(1u, 4294967295u, 5891u), Struct_1(-25572i, vec3<f32>(-561f, 452f, 1000f), false, vec4<f32>(-919f, 2637f, -510f, 1230f)), 1u), Struct_3(vec3<u32>(4294967295u, 19625u, 15783u), Struct_1(30493i, vec3<f32>(-1389f, 980f, 535f), true, vec4<f32>(-219f, 356f, 2283f, -893f)), 4294967295u), Struct_3(vec3<u32>(1u, 1u, 87374u), Struct_1(-57404i, vec3<f32>(155f, 820f, -1000f), true, vec4<f32>(171f, -949f, -1754f, -588f)), 18181u), Struct_3(vec3<u32>(4294967295u, 112637u, 25399u), Struct_1(1i, vec3<f32>(-1086f, 1297f, 1946f), false, vec4<f32>(-1000f, -529f, -774f, -690f)), 4294967295u), Struct_3(vec3<u32>(10231u, 30248u, 67890u), Struct_1(25022i, vec3<f32>(1005f, -1318f, 762f), true, vec4<f32>(-858f, 164f, -944f, 169f)), 75442u), Struct_3(vec3<u32>(4294967295u, 0u, 1u), Struct_1(-6766i, vec3<f32>(-1382f, 1000f, -990f), false, vec4<f32>(-609f, 1287f, -1924f, 155f)), 4294967295u), Struct_3(vec3<u32>(19819u, 1u, 203u), Struct_1(-90151i, vec3<f32>(-1408f, -364f, -725f), true, vec4<f32>(612f, 421f, 1031f, -1132f)), 91317u), Struct_3(vec3<u32>(29291u, 4294967295u, 55653u), Struct_1(-1i, vec3<f32>(365f, -1819f, -1166f), true, vec4<f32>(456f, 499f, 792f, -409f)), 39314u), Struct_3(vec3<u32>(39899u, 4294967295u, 4294967295u), Struct_1(1i, vec3<f32>(967f, 1755f, 1061f), false, vec4<f32>(2740f, 1000f, 461f, -449f)), 15934u), Struct_3(vec3<u32>(0u, 113909u, 4294967295u), Struct_1(2147483647i, vec3<f32>(-393f, 973f, -344f), true, vec4<f32>(-297f, -1979f, -855f, -1000f)), 0u), Struct_3(vec3<u32>(42486u, 17631u, 1u), Struct_1(9319i, vec3<f32>(1000f, 184f, -352f), false, vec4<f32>(2361f, 434f, 2496f, -299f)), 33392u), Struct_3(vec3<u32>(4294967295u, 16999u, 4294967295u), Struct_1(2147483647i, vec3<f32>(-783f, 700f, 696f), false, vec4<f32>(163f, -270f, -305f, -589f)), 4294967295u), Struct_3(vec3<u32>(29530u, 1u, 4294967295u), Struct_1(7776i, vec3<f32>(1768f, 1014f, 484f), false, vec4<f32>(-1222f, 566f, -996f, -1211f)), 4294967295u), Struct_3(vec3<u32>(4294967295u, 16078u, 4294967295u), Struct_1(-35884i, vec3<f32>(-615f, -679f, -924f), false, vec4<f32>(-349f, -1307f, -1563f, 272f)), 5991u), Struct_3(vec3<u32>(27962u, 79961u, 50887u), Struct_1(2147483647i, vec3<f32>(246f, 312f, -1712f), false, vec4<f32>(351f, -636f, 716f, -927f)), 1u), Struct_3(vec3<u32>(4294967295u, 4294967295u, 4294967295u), Struct_1(1i, vec3<f32>(265f, 207f, 1000f), true, vec4<f32>(1929f, -175f, -1963f, -1238f)), 44766u), Struct_3(vec3<u32>(67790u, 1u, 7900u), Struct_1(64823i, vec3<f32>(1472f, 741f, -1000f), true, vec4<f32>(-219f, -2815f, -506f, 1000f)), 56908u), Struct_3(vec3<u32>(0u, 1u, 97034u), Struct_1(31683i, vec3<f32>(2229f, -1061f, -888f), true, vec4<f32>(-1785f, -1776f, 1833f, 504f)), 9373u), Struct_3(vec3<u32>(28742u, 1634u, 0u), Struct_1(i32(-2147483648), vec3<f32>(2126f, -485f, 889f), true, vec4<f32>(1110f, 1392f, 344f, -395f)), 56899u), Struct_3(vec3<u32>(97610u, 0u, 4294967295u), Struct_1(0i, vec3<f32>(-1998f, -218f, -230f), true, vec4<f32>(-1145f, -1963f, 334f, 698f)), 4294967295u), Struct_3(vec3<u32>(78355u, 0u, 0u), Struct_1(i32(-2147483648), vec3<f32>(-1220f, 1000f, -1000f), false, vec4<f32>(658f, -276f, -789f, -143f)), 4294967295u), Struct_3(vec3<u32>(93784u, 1u, 16878u), Struct_1(1i, vec3<f32>(365f, -839f, 2049f), false, vec4<f32>(-2346f, -786f, 551f, 520f)), 23406u));

var<private> global2: i32 = i32(-2147483648);

var<private> global3: u32 = 17798u;

var<private> global4: vec2<i32> = vec2<i32>(-22491i, 23995i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = countOneBits(~_wgslsmith_dot_vec2_i32(-min(vec2<i32>(global4.x, global4.x), vec2<i32>(2147483647i, u_input.a)), vec2<i32>(select(global4.x, arg_2.a, true), _wgslsmith_clamp_i32(arg_2.a, -48388i, arg_2.a))));
    let var_1 = vec4<bool>(arg_1 & arg_2.c, !(~(u_input.a ^ global4.x) < -arg_2.a), true, false);
    global2 = arg_2.a;
    global4 = vec2<i32>(arg_2.a, 2147483647i) >> ((abs(vec2<u32>(global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, global0.x, 4606u), vec3<u32>(global0.x, arg_0, global0.x)))) >> ((vec2<u32>(1u, ~54464u) << (abs(global0.zx) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u));
    return vec3<bool>(select(true, true, !all(!vec4<bool>(arg_1, false, false, arg_1))), false, true);
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(select(-2327f, _wgslsmith_f_op_f32(-437f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(min(-1620f, arg_0.d.x)))), arg_0.c)), ~_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(4294967295u, global0.x, 4294967295u) >> (vec3<u32>(global0.x, 64933u, 31471u) % vec3<u32>(32u))), ~vec3<u32>(global0.x, global0.x, 52478u)), Struct_1(~arg_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -426f, 1178f) + vec3<f32>(196f, arg_0.d.x, -1212f)), arg_0.c, arg_0.d), select(select(select(vec3<bool>(true, true, true), !vec3<bool>(false, arg_0.c, arg_0.c), !vec3<bool>(false, true, arg_0.c)), select(select(vec3<bool>(true, arg_0.c, arg_0.c), vec3<bool>(arg_0.c, arg_0.c, true), vec3<bool>(false, arg_0.c, arg_0.c)), func_3(44400u, arg_0.c, arg_0), !vec3<bool>(arg_0.c, false, true)), true), !vec3<bool>(arg_0.c || false, arg_0.c, arg_0.c), !func_3(0u, arg_0.c, Struct_1(-16969i, vec3<f32>(arg_0.d.x, -473f, 1000f), arg_0.c, vec4<f32>(-300f, 794f, 869f, -546f)))), -min(_wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, 2147483647i), u_input.a), ~_wgslsmith_sub_i32(global4.x, u_input.a)));
    global3 = global0.x;
    let var_1 = vec3<u32>(var_0.b.x ^ _wgslsmith_sub_u32(1u, global0.x >> (global0.x % 32u)), _wgslsmith_add_u32(0u, ~(~_wgslsmith_div_u32(0u, 60185u))), _wgslsmith_sub_u32(~(~firstTrailingBit(19009u)), _wgslsmith_mult_u32(1u, 4294967295u >> (1u % 32u))));
    var var_2 = global1[_wgslsmith_index_u32(firstLeadingBit(~var_1.x), 26u)];
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1929f, _wgslsmith_f_op_f32(arg_0.d.x - -682f)), 1150f)));
    return _wgslsmith_f_op_f32(ceil(arg_0.b.x));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3) -> Struct_4 {
    var var_0 = -353f;
    var var_1 = arg_2.b.c;
    var var_2 = false;
    let var_3 = Struct_5(_wgslsmith_f_op_f32(floor(arg_2.b.d.x)), Struct_2(2181f, arg_2.a, Struct_1(global4.x, arg_0.b, false, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1282f, arg_0.b.x, 1617f, arg_0.d.x))))), vec3<bool>(true, arg_2.b.c, true), -73221i & arg_2.b.a), Struct_4(arg_1, arg_2.b, -41946i, arg_2.b.d.x), reverseBits(_wgslsmith_mult_vec2_i32(select(vec2<i32>(-14038i, global4.x), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.a, arg_2.b.a), vec2<i32>(u_input.a, arg_0.a)), !vec2<bool>(arg_2.b.c, true)), select(vec2<i32>(-2147483647i, arg_0.a), vec2<i32>(-1i, arg_2.b.a), vec2<bool>(arg_0.c, false)) ^ min(vec2<i32>(18112i, 1i), vec2<i32>(global4.x, -2147483647i)))), arg_2.a.x);
    var var_4 = vec3<bool>(arg_2.b.c || !arg_1, select(false, true, false) || (arg_0.a <= var_3.b.c.a), all(vec2<bool>(firstLeadingBit(var_3.b.b.x) >= 57195u, !any(vec2<bool>(true, true)))));
    return Struct_4(func_3(_wgslsmith_add_u32(1u, ~arg_2.c), true, arg_2.b).x | false, arg_0, var_3.b.c.a, var_3.c.b.d.x);
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    global4 = vec2<i32>(global4.x ^ _wgslsmith_mod_i32(u_input.a, _wgslsmith_mod_i32(~(-1i), -global4.x)), global4.x);
    var var_0 = global0.x;
    let var_1 = func_4(Struct_1(-2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x) + vec3<f32>(arg_0.x, 637f, arg_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(701f, arg_0.x, arg_0.x) - vec3<f32>(-514f, arg_0.x, -2289f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1112f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(-1042f * arg_0.x)), vec4<f32>(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(trunc(-580f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(760f * arg_0.x)), _wgslsmith_f_op_f32(func_2(Struct_1(-1i, vec3<f32>(-196f, arg_0.x, 1000f), false, vec4<f32>(498f, 1000f, arg_0.x, arg_0.x)))), _wgslsmith_f_op_f32(sign(arg_0.x)))), true, global1[_wgslsmith_index_u32(~87223u, 26u)]);
    global2 = 2147483647i;
    var var_2 = var_1.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -485f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(~max(u_input.a, u_input.a)) >> (1u % 32u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(776f, -354f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -894f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<f32>(-1011f, 419f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 947f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(653f, -736f))))), select(reverseBits(global0.x), global0.x, !all(vec4<bool>(true, true, false, true))) == global0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-127f - 591f), _wgslsmith_f_op_f32(f32(-1f) * -645f), _wgslsmith_f_op_f32(func_1(vec2<f32>(1030f, 147f))), _wgslsmith_f_op_f32(-408f - -1332f)))));
    var var_1 = Struct_3(vec3<u32>(countOneBits(_wgslsmith_mult_u32(47826u, global0.x)), (~global0.x >> (~4294967295u % 32u)) ^ ~(~0u), global0.x), func_4(func_4(var_0, (global0.x >= 14178u) && any(vec2<bool>(var_0.c, var_0.c)), global1[_wgslsmith_index_u32(1u, 26u)]).b, true, global1[_wgslsmith_index_u32(1u, 26u)]).b, 0u);
    var var_2 = Struct_1(countOneBits(global4.x), _wgslsmith_div_vec3_f32(var_1.b.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-221f, var_0.d.x, 522f)))), var_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.b.d.x * 838f), 1f, _wgslsmith_f_op_f32(-var_1.b.d.x), var_0.b.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_0.d.x, var_1.b.b.x, var_1.b.b.x) + var_1.b.d))));
    let var_3 = countOneBits(5691u & _wgslsmith_dot_vec2_u32(~firstLeadingBit(global0.xx), var_1.a.zx));
    global2 = abs(_wgslsmith_mod_i32(var_2.a, max(reverseBits(global4.x), -var_1.b.a)) >> (var_1.c % 32u));
    var var_4 = 2147483647i;
    let var_5 = !vec3<bool>(false, false, all(!vec3<bool>(true, var_1.b.c, true)) || ((var_1.a.x < var_3) && true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(341f, -200f)), _wgslsmith_f_op_f32(select(922f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.d.x))), all(select(select(vec4<bool>(var_1.b.c, var_5.x, var_2.c, var_5.x), vec4<bool>(var_0.c, true, false, false), vec4<bool>(true, true, var_1.b.c, true)), !vec4<bool>(var_2.c, var_5.x, true, false), vec4<bool>(var_1.b.c, var_2.c, false, var_1.b.c))))));
}

