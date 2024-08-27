struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(64093u, 67931u);

var<private> global1: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(1u, 1u, 0u, 1u), vec4<u32>(2756u, 0u, 11816u, 1u), vec4<u32>(14744u, 22990u, 15060u, 30419u), vec4<u32>(7980u, 71466u, 74662u, 18174u), vec4<u32>(81386u, 39925u, 12945u, 4294967295u), vec4<u32>(1u, 4294967295u, 57758u, 1u), vec4<u32>(26174u, 4294967295u, 39223u, 19799u), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(1u, 43356u, 25752u, 1u), vec4<u32>(23070u, 0u, 41893u, 35385u), vec4<u32>(91164u, 1u, 4294967295u, 27239u), vec4<u32>(51207u, 1u, 35505u, 0u), vec4<u32>(45818u, 1u, 4294967295u, 56993u), vec4<u32>(1u, 0u, 1u, 33733u), vec4<u32>(80671u, 1u, 1u, 10811u), vec4<u32>(63457u, 1u, 38330u, 0u), vec4<u32>(1u, 0u, 19443u, 4294967295u), vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec4<u32>(9466u, 69712u, 80364u, 1u), vec4<u32>(4294967295u, 4294967295u, 94598u, 4294967295u), vec4<u32>(47693u, 4294967295u, 6054u, 15497u), vec4<u32>(63010u, 2600u, 0u, 4294967295u), vec4<u32>(1u, 39781u, 4294967295u, 1u), vec4<u32>(1u, 24097u, 28598u, 0u), vec4<u32>(156213u, 19454u, 57514u, 52407u), vec4<u32>(0u, 37218u, 483u, 9193u), vec4<u32>(67700u, 1u, 0u, 22472u), vec4<u32>(72734u, 1u, 65379u, 0u), vec4<u32>(1u, 46770u, 0u, 23783u), vec4<u32>(1u, 4294967295u, 497u, 23475u), vec4<u32>(1u, 4294967295u, 4794u, 6161u));

var<private> global2: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(14136u, 1u, 0u), vec3<u32>(1u, 33819u, 50414u), vec3<u32>(1u, 0u, 13862u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(30658u, 1u, 12742u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(1u, 3743u, 165u), vec3<u32>(0u, 4778u, 1u), vec3<u32>(23457u, 1u, 5941u), vec3<u32>(59242u, 4294967295u, 0u), vec3<u32>(0u, 1u, 57451u), vec3<u32>(0u, 39713u, 4294967295u), vec3<u32>(17426u, 40544u, 0u), vec3<u32>(1u, 15964u, 61322u), vec3<u32>(1u, 53933u, 459u), vec3<u32>(40040u, 1u, 4294967295u), vec3<u32>(0u, 21561u, 0u), vec3<u32>(0u, 0u, 0u), vec3<u32>(0u, 0u, 0u), vec3<u32>(75000u, 0u, 54323u), vec3<u32>(56352u, 1146u, 32363u), vec3<u32>(1u, 1u, 0u), vec3<u32>(7022u, 1u, 0u), vec3<u32>(4294967295u, 0u, 10960u), vec3<u32>(1u, 0u, 0u), vec3<u32>(3898u, 1u, 102119u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec3<bool>, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = 30647u < _wgslsmith_mod_u32(abs(global0.x), u_input.a);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(arg_3.b + arg_0.a)))));
    global2 = array<vec3<u32>, 26>();
    var_0 = (~(~11916u) << (_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(94590u ^ _wgslsmith_mod_u32(u_input.a, 0u), 31u)], reverseBits(abs(global1[_wgslsmith_index_u32(u_input.a, 31u)]))) % 32u)) <= 24597u;
    let var_2 = true;
    return !(!select(arg_2, vec3<bool>(var_2, arg_0.a == var_1, false), arg_2));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: vec4<f32>) -> i32 {
    global1 = array<vec4<u32>, 31>();
    let var_0 = select(!vec4<bool>(any(vec4<bool>(true, true, true, true)), !all(vec3<bool>(true, false, false)), any(vec4<bool>(true, true, true, true)), false), vec4<bool>(any(vec3<bool>(true, true, true)), func_1(Struct_2(_wgslsmith_div_f32(-241f, 511f)), abs(vec3<i32>(0i, -2147483647i, arg_0) & vec3<i32>(arg_0, arg_0, 71768i)), vec3<bool>(true, true, true), Struct_1(firstTrailingBit(vec4<i32>(60282i, arg_0, 27302i, -48539i)), _wgslsmith_f_op_f32(857f - 1000f), vec2<bool>(true, true))).x, !all(vec3<bool>(true, true, true)), any(vec3<bool>(arg_0 != 7446i, true, true))), true);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(992f + arg_3.x))))), _wgslsmith_f_op_f32(select(165f, arg_3.x, true)));
    global0 = ~(~vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(u_input.a, 26u)], vec3<u32>(17448u, u_input.a, 106140u))), 0u));
    var var_2 = -(_wgslsmith_mod_vec3_i32(vec3<i32>(-arg_0, min(arg_0, -25283i), -arg_0), vec3<i32>(arg_0, arg_0, abs(arg_0))) >> (~global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~37297u), 26u)] % vec3<u32>(32u)));
    return select((_wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_2.x, var_2.x, -5162i), min(arg_0, var_2.x)) ^ (arg_0 >> (_wgslsmith_mod_u32(4294967295u, global0.x) % 32u))) & 1i, arg_0, !(!(!any(var_0.yzw))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32) -> Struct_2 {
    global2 = array<vec3<u32>, 26>();
    var var_0 = 92909u;
    global1 = array<vec4<u32>, 31>();
    let var_1 = min(~func_3(1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-178f, 204f, -1481f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1173f, arg_1.b, 953f) * vec3<f32>(2396f, -536f, 209f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, 398f, -1110f, 540f) - vec4<f32>(120f, arg_1.b, arg_1.b, arg_1.b))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1085f), 1000f, _wgslsmith_f_op_f32(min(arg_1.b, 1508f)))), arg_0.x);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(870f, arg_1.b)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec2<i32>) -> vec2<i32> {
    var var_0 = !(!(!all(vec3<bool>(arg_2.x, true, arg_2.x))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1125f * _wgslsmith_f_op_f32(-arg_0.a))), func_2(arg_1.a, Struct_1(vec4<i32>(arg_1.a.x, 2147483647i, -30784i, arg_1.a.x), arg_1.b, arg_2), arg_1.a.x).a, 1351f, _wgslsmith_f_op_f32(abs(1234f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-732f, 1375f, arg_0.a, -1373f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, 189f, arg_1.b, 300f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.a, 232f, arg_0.a, 1000f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_1.b, -1453f, -850f) - vec4<f32>(arg_0.a, arg_1.b, arg_0.a, 819f)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-267f, arg_1.b, arg_0.a, arg_0.a));
    return reverseBits(firstTrailingBit(vec2<i32>(~0i, firstLeadingBit(abs(arg_3.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = !func_1(Struct_2(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-381f - -1000f))), _wgslsmith_add_vec3_i32(vec3<i32>(~(-2147483647i), -55032i << (u_input.a % 32u), ~(-2147483647i)), ~(-vec3<i32>(0i, -2147483647i, 11058i))), select(vec3<bool>(all(vec4<bool>(var_0, var_0, var_0, var_0)), true, false & var_0), select(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, var_0, false), vec3<bool>(var_0, false, false)), vec3<bool>(true, true, false), !vec3<bool>(var_0, var_0, true)), true), Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(-12194i, 0i, 1i, 1i) >> (vec4<u32>(53561u, u_input.a, global0.x, global0.x) % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_f_op_f32(f32(-1f) * -727f), vec2<bool>(true, true)));
    let var_2 = (vec2<i32>(countOneBits(reverseBits(-1i)), max(1i, 14072i)) ^ func_4(func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 0i, -1i, 2147483647i), vec4<i32>(2147483647i, -1i, -2147483647i, -19739i)), Struct_1(vec4<i32>(-13445i, 1i, 63449i, 24125i), 413f, var_1.xz), -29000i << (0u % 32u)), Struct_1(-vec4<i32>(-44267i, -49100i, -23275i, -1i), 277f, var_1.zz), var_1.yy, ~vec2<i32>(1i, 1i))) ^ firstLeadingBit(-_wgslsmith_mod_vec2_i32(~vec2<i32>(-11065i, 0i), vec2<i32>(-42276i, 24511i)));
    var var_3 = func_2(vec4<i32>((select(var_2.x, -61090i, true) << (u_input.a % 32u)) | _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, 12930i, -37435i, var_2.x), ~vec4<i32>(-1i, var_2.x, -4557i, 0i)), _wgslsmith_add_i32(firstTrailingBit(var_2.x), 66005i), _wgslsmith_mult_i32(~(-47430i) & (-10141i << (global0.x % 32u)), _wgslsmith_add_i32(1i, ~var_2.x)), firstTrailingBit(var_2.x)), Struct_1(firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-32759i, 0i, 7144i, var_2.x), vec4<i32>(9949i, -1i, var_2.x, 5989i))) >> (~vec4<u32>(u_input.a, global0.x, 102712u, 1u) % vec4<u32>(32u)), -1590f, select(var_1.zy, func_1(Struct_2(1000f), vec3<i32>(var_2.x, var_2.x, var_2.x), select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(false, var_1.x, var_1.x), var_0), Struct_1(vec4<i32>(2147483647i, var_2.x, -40769i, -16906i), -700f, vec2<bool>(var_1.x, true))).zy, true)), var_2.x);
    var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1662f + var_3.a)));
    let var_4 = var_1.x;
    global1 = array<vec4<u32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(0u), var_3.a, vec2<i32>(9470i, func_3(var_2.x, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.a, -243f, -1681f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1889f, 557f, -125f, 269f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, -1098f, var_3.a, var_3.a)))) << (_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, global0.x), ~vec2<u32>(0u, 4294967295u)), select(vec2<u32>(18815u, 4294967295u), vec2<u32>(4294967295u, u_input.a), false) >> (abs(vec2<u32>(4294967295u, 92930u)) % vec2<u32>(32u)), abs(countOneBits(vec2<u32>(global0.x, global0.x)))) % vec2<u32>(32u)), ~5004u, _wgslsmith_f_op_f32(-1000f * var_3.a));
}

