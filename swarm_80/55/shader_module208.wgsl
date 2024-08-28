struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: bool,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<i32>(-1i, 59095i, 15782i, -36949i), vec3<u32>(4294967295u, 3942u, 4294967295u), true, -215i, 486f), Struct_1(vec4<i32>(1i, 2147483647i, 1427i, 1i), vec3<u32>(55192u, 4294967295u, 4294967295u), true, -1i, 402f), Struct_1(vec4<i32>(1i, 1i, 27591i, i32(-2147483648)), vec3<u32>(2005u, 1u, 5009u), false, -19426i, 1888f), Struct_1(vec4<i32>(31266i, -26756i, -1i, 2147483647i), vec3<u32>(1u, 1u, 32772u), false, 55217i, 1392f), Struct_1(vec4<i32>(i32(-2147483648), 15032i, -39199i, 1i), vec3<u32>(56184u, 11417u, 4294967295u), true, 0i, 694f), Struct_1(vec4<i32>(2147483647i, -1i, -14543i, i32(-2147483648)), vec3<u32>(4294967295u, 0u, 1u), true, 1i, 471f), Struct_1(vec4<i32>(i32(-2147483648), 1i, -43095i, 1i), vec3<u32>(1u, 33664u, 57244u), true, 0i, 1000f), Struct_1(vec4<i32>(-44719i, 12631i, 2147483647i, 2147483647i), vec3<u32>(5078u, 64063u, 54175u), false, 36339i, 1689f), Struct_1(vec4<i32>(0i, 2147483647i, 0i, 35470i), vec3<u32>(26337u, 4294967295u, 4294967295u), false, 31800i, 647f), Struct_1(vec4<i32>(-11568i, 44283i, 15231i, i32(-2147483648)), vec3<u32>(72858u, 13860u, 60092u), true, 2147483647i, -227f), Struct_1(vec4<i32>(-1i, -1i, i32(-2147483648), 2147483647i), vec3<u32>(80160u, 1u, 15155u), true, 15115i, -874f), Struct_1(vec4<i32>(1i, -36494i, i32(-2147483648), 58796i), vec3<u32>(54346u, 203u, 0u), true, 1i, 620f), Struct_1(vec4<i32>(-70314i, -1i, 0i, 13891i), vec3<u32>(4294967295u, 17367u, 44724u), false, 0i, 1067f), Struct_1(vec4<i32>(-70327i, i32(-2147483648), 20086i, 2147483647i), vec3<u32>(35119u, 101161u, 6121u), true, 30709i, 447f), Struct_1(vec4<i32>(i32(-2147483648), 1i, 6411i, 1i), vec3<u32>(12379u, 4294967295u, 80183u), false, 21911i, -1113f), Struct_1(vec4<i32>(1i, -1i, 1i, 32041i), vec3<u32>(0u, 36515u, 25695u), false, 0i, 419f), Struct_1(vec4<i32>(-1i, 10370i, 35859i, 13737i), vec3<u32>(0u, 0u, 24748u), true, -57692i, -1024f), Struct_1(vec4<i32>(5344i, -22422i, -41187i, 0i), vec3<u32>(54110u, 4294967295u, 35688u), true, 23224i, 384f), Struct_1(vec4<i32>(3001i, 1i, i32(-2147483648), -17603i), vec3<u32>(30098u, 35751u, 3062u), false, 13674i, 761f), Struct_1(vec4<i32>(i32(-2147483648), 16198i, 14923i, 31985i), vec3<u32>(23153u, 2171u, 6713u), true, 0i, -480f), Struct_1(vec4<i32>(1i, 2147483647i, 9395i, -70708i), vec3<u32>(4294967295u, 1u, 16810u), false, -1i, -655f), Struct_1(vec4<i32>(-17163i, i32(-2147483648), 1i, 2262i), vec3<u32>(0u, 11325u, 10271u), false, 1i, -529f), Struct_1(vec4<i32>(0i, i32(-2147483648), 0i, -25908i), vec3<u32>(4294967295u, 11865u, 4294967295u), false, 0i, -516f), Struct_1(vec4<i32>(7986i, 60785i, 29422i, -34440i), vec3<u32>(8453u, 1u, 4294967295u), false, -1677i, -716f));

var<private> global2: array<Struct_2, 14>;

var<private> global3: u32;

var<private> global4: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(i32(-2147483648), 27243i, 37110i, 2147483647i), vec4<i32>(30462i, 2147483647i, i32(-2147483648), -50390i), vec4<i32>(-5169i, -37806i, 1i, 5920i), vec4<i32>(-1i, 2147483647i, 33134i, -1i), vec4<i32>(15971i, 26793i, -25326i, 1i), vec4<i32>(-45184i, 0i, i32(-2147483648), 0i), vec4<i32>(i32(-2147483648), 2147483647i, -8718i, 9248i), vec4<i32>(9788i, i32(-2147483648), i32(-2147483648), 15407i), vec4<i32>(-1i, i32(-2147483648), -24063i, -20216i), vec4<i32>(6679i, 69644i, i32(-2147483648), 13685i), vec4<i32>(2147483647i, -50868i, i32(-2147483648), 22401i), vec4<i32>(-1i, -37141i, i32(-2147483648), 56829i), vec4<i32>(-1i, 0i, 2147483647i, 0i), vec4<i32>(-1i, -45269i, 1i, -16675i), vec4<i32>(17668i, 5639i, 2147483647i, 2147483647i), vec4<i32>(1i, -11198i, 3708i, 0i), vec4<i32>(i32(-2147483648), 2147483647i, 0i, -20033i), vec4<i32>(-1i, -1i, -1i, 2147483647i), vec4<i32>(2147483647i, 86400i, -18742i, 7916i), vec4<i32>(-1i, 13793i, -39253i, 0i), vec4<i32>(2147483647i, 0i, 2147483647i, 2147483647i), vec4<i32>(1i, 23282i, 0i, 0i), vec4<i32>(1i, -22058i, i32(-2147483648), -1i), vec4<i32>(12552i, -16599i, -35562i, 1i), vec4<i32>(0i, -14424i, i32(-2147483648), 0i), vec4<i32>(17503i, -25447i, 2147483647i, -5649i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<u32>) -> vec3<bool> {
    global0 = vec3<bool>(true, all(select(global0.xx, select(!global0.zy, global0.xy, all(vec4<bool>(global0.x, global0.x, global0.x, true))), true)), global0.x);
    let var_0 = 1i;
    global2 = array<Struct_2, 14>();
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1651f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-507f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f + 1523f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2657f, -1106f, 276f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(861f, -1143f, -1000f) * vec3<f32>(-216f, -752f, 457f)))))), !(!vec3<bool>(!global0.x, true, all(vec4<bool>(true, global0.x, global0.x, global0.x))))));
    let var_2 = select(select(vec2<bool>(all(!vec4<bool>(true, true, global0.x, true)), false), vec2<bool>(!global0.x, _wgslsmith_mod_u32(arg_0.x, 4294967295u) == (arg_0.x ^ u_input.b.x)), global0.zy), global0.xz, false);
    return !select(select(select(vec3<bool>(var_2.x, true, false), !vec3<bool>(var_2.x, global0.x, true), select(vec3<bool>(false, false, global0.x), vec3<bool>(false, var_2.x, global0.x), vec3<bool>(true, var_2.x, false))), vec3<bool>(any(vec2<bool>(global0.x, true)), var_1.x <= 927f, select(global0.x, var_2.x, true)), any(!vec4<bool>(var_2.x, true, var_2.x, var_2.x))), select(select(vec3<bool>(global0.x, false, true), !vec3<bool>(global0.x, true, false), true), select(vec3<bool>(global0.x, var_2.x, var_2.x), vec3<bool>(true, true, var_2.x), !vec3<bool>(true, var_2.x, var_2.x)), select(!vec3<bool>(global0.x, global0.x, var_2.x), select(vec3<bool>(true, false, var_2.x), vec3<bool>(var_2.x, false, global0.x), global0.x), !var_2.x)), select(vec3<bool>(true, !global0.x, false), vec3<bool>(var_2.x, true, all(vec3<bool>(false, global0.x, var_2.x))), vec3<bool>(any(vec3<bool>(false, global0.x, var_2.x)), false, any(vec3<bool>(false, var_2.x, false)))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_1) -> u32 {
    global4 = array<vec4<i32>, 26>();
    global0 = select(vec3<bool>(!arg_3.c, arg_3.d <= ~_wgslsmith_add_i32(u_input.a, 0i), true), func_3(reverseBits(u_input.b << ((u_input.b & u_input.b) % vec4<u32>(32u)))), -((arg_3.a.x >> (0u % 32u)) << (33081u % 32u)) >= _wgslsmith_mult_i32(countOneBits(abs(u_input.a)), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, u_input.a, 26019i)), arg_3.a.xwx)));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-225f)), -1247f)), _wgslsmith_f_op_f32(-arg_0.x));
    global3 = ~(~72919u);
    global1 = array<Struct_1, 24>();
    return ~_wgslsmith_add_u32(72806u, _wgslsmith_dot_vec2_u32(arg_3.b.xx, vec2<u32>(43709u, 26356u))) | max(4294967295u, 1u);
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: u32, arg_3: f32) -> i32 {
    global3 = firstTrailingBit(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3, arg_3, arg_3), vec3<f32>(arg_3, arg_3, -1128f), global0.x)))), global0.yx, firstLeadingBit(~arg_2 | ~arg_2), Struct_1(vec4<i32>(arg_0.x, firstTrailingBit(arg_1), _wgslsmith_mult_i32(arg_0.x, -2147483647i), -21703i), vec3<u32>(4294967295u, 43575u, u_input.b.x) & (u_input.b.xyx | u_input.b.zxy), false, u_input.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_3)))))));
    global2 = array<Struct_2, 14>();
    let var_0 = global1[_wgslsmith_index_u32(14702u, 24u)];
    let var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(~0u, 4294967295u, ~(~u_input.b.x)), ~vec3<u32>(~0u, _wgslsmith_dot_vec4_u32(u_input.b, ~vec4<u32>(1u, var_0.b.x, 90184u, 39544u)), ~u_input.b.x));
    let var_2 = ~(~func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, var_0.e, arg_3) + vec3<f32>(-910f, -1466f, var_0.e)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.e, arg_3, 861f), vec3<f32>(893f, arg_3, -574f), global0.x))), select(global0.xy, global0.zy, true), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.b, vec3<u32>(arg_2, arg_2, 22593u)), ~vec3<u32>(4294967295u, u_input.b.x, 4294967295u)), Struct_1(max(vec4<i32>(-11992i, -19327i, 1i, -2147483647i), arg_0), u_input.b.xzz, true, abs(0i), -860f)));
    return select(14363i, abs(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(0i, u_input.a, arg_1)), vec3<i32>(-2147483647i, var_0.d, -1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.d, -33704i, 22662i), countOneBits(var_0.a.wxy)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(vec4<i32>(~(-29648i) & _wgslsmith_clamp_i32(u_input.a, u_input.a, -38459i), select(-35164i, u_input.a, true) >> (0u % 32u), _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.a, u_input.a), 41301i, func_1(vec4<i32>(u_input.a, u_input.a, 36486i, u_input.a), -1i, 4294967295u, 323f)), u_input.a & u_input.a), vec3<u32>(u_input.b.x, firstTrailingBit(u_input.b.x), ~(u_input.b.x | u_input.b.x)), global0.x, u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-641f, _wgslsmith_f_op_f32(sign(1323f)))))), Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(2234i, -2147483647i, select(u_input.a, 6409i, true), ~1i), vec4<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), global4[_wgslsmith_index_u32(0u, 26u)]), 51210i, max(u_input.a, u_input.a)), _wgslsmith_add_vec4_i32(vec4<i32>(0i, -1i, u_input.a, 21736i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), global4[_wgslsmith_index_u32(u_input.b.x, 26u)]))), ~firstTrailingBit(u_input.b.wwx), global0.x, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(abs(vec3<i32>(u_input.a, 0i, u_input.a)), max(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a))), abs(vec3<i32>(1i, 2147483647i, -24115i)) & _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a))), 583f));
    var var_1 = _wgslsmith_f_op_f32(var_0.a.e * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-370f - -937f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1341f - var_0.a.e)))))));
    let var_2 = _wgslsmith_add_vec2_i32(var_0.b.a.zw | vec2<i32>(0i, select(_wgslsmith_mod_i32(1i, 2147483647i), u_input.a, true)), ~_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.b.a.xw, var_0.a.a.ww), -var_0.b.a.ww));
    let var_3 = select(-vec3<i32>(-638i, i32(-1i) * -var_0.b.a.x, 1i), min(vec3<i32>(39061i, -57664i, _wgslsmith_mult_i32(abs(u_input.a), select(u_input.a, -46144i, true))), ~(~firstTrailingBit(var_0.b.a.zwx))), true);
    let var_4 = true;
    global1 = array<Struct_1, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-_wgslsmith_sub_i32(countOneBits(19742i), ~1i), var_0.b.d, 1i), 62184u, max(u_input.a, _wgslsmith_mod_i32(var_3.x, -53768i)), var_0.b.e);
}

