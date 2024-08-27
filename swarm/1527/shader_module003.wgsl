struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(vec3<i32>(64216i, 2147483647i, 34350i), 0u, vec2<i32>(4015i, -24375i), 1i, vec2<bool>(true, true))), Struct_2(Struct_1(vec3<i32>(-17837i, 12409i, 38791i), 4294967295u, vec2<i32>(-1349i, 37103i), -42150i, vec2<bool>(false, true))), Struct_2(Struct_1(vec3<i32>(-1i, i32(-2147483648), 9714i), 1u, vec2<i32>(2147483647i, 34544i), -70312i, vec2<bool>(true, true))), Struct_2(Struct_1(vec3<i32>(1i, 0i, 9079i), 25567u, vec2<i32>(1i, -1i), 1i, vec2<bool>(true, false))), Struct_2(Struct_1(vec3<i32>(-887i, -1450i, 32534i), 9507u, vec2<i32>(1i, -4052i), i32(-2147483648), vec2<bool>(false, true))), Struct_2(Struct_1(vec3<i32>(2147483647i, -18532i, 13785i), 40574u, vec2<i32>(2147483647i, 1633i), 2147483647i, vec2<bool>(false, true))), Struct_2(Struct_1(vec3<i32>(2147483647i, 0i, -13409i), 0u, vec2<i32>(13319i, 0i), i32(-2147483648), vec2<bool>(true, true))), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 37776i, 0i), 4782u, vec2<i32>(52126i, -1i), 2147483647i, vec2<bool>(false, false))), Struct_2(Struct_1(vec3<i32>(-1i, 0i, -6898i), 4294967295u, vec2<i32>(-8755i, 0i), -13507i, vec2<bool>(true, false))), Struct_2(Struct_1(vec3<i32>(32746i, -1i, 114084i), 30763u, vec2<i32>(-22966i, 1i), -1857i, vec2<bool>(true, false))), Struct_2(Struct_1(vec3<i32>(1i, -16474i, 1i), 4294967295u, vec2<i32>(-28828i, 1i), 30241i, vec2<bool>(false, false))), Struct_2(Struct_1(vec3<i32>(-60905i, -18166i, -10948i), 4294967295u, vec2<i32>(20134i, 6546i), -19611i, vec2<bool>(false, true))), Struct_2(Struct_1(vec3<i32>(1i, i32(-2147483648), 68687i), 4294967295u, vec2<i32>(-7637i, -7749i), 751i, vec2<bool>(false, true))), Struct_2(Struct_1(vec3<i32>(-1i, i32(-2147483648), 0i), 110819u, vec2<i32>(-17881i, -331i), -1i, vec2<bool>(false, false))));

var<private> global1: vec4<u32>;

var<private> global2: array<u32, 10> = array<u32, 10>(82833u, 4294967295u, 1u, 4294967295u, 15347u, 931u, 0u, 4294967295u, 0u, 44787u);

var<private> global3: i32;

var<private> global4: array<Struct_2, 21>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> bool {
    global2 = array<u32, 10>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x))), _wgslsmith_f_op_f32(-arg_0.x));
    var_0 = arg_0.x;
    let var_1 = vec4<i32>(-arg_1.a.a.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(-1i, 2147483647i), _wgslsmith_clamp_i32(-1i, 23940i, -15487i)) | arg_1.a.a.x, _wgslsmith_mod_i32(~_wgslsmith_mod_i32(arg_1.a.d, 0i), min(countOneBits(arg_1.a.d), _wgslsmith_dot_vec2_i32(arg_1.a.c, vec2<i32>(1i, 0i)))), 0i) << (~(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(57473u, 40575u, 0u, u_input.b), vec4<u32>(1u, 24664u, global2[_wgslsmith_index_u32(81407u, 10u)], u_input.b))) & select(~vec4<u32>(global2[_wgslsmith_index_u32(0u, 10u)], global2[_wgslsmith_index_u32(global1.x, 10u)], 27785u, 131079u), ~vec4<u32>(26593u, u_input.c, u_input.b, 38187u), select(arg_1.a.e.x, arg_1.a.e.x, true))) % vec4<u32>(32u));
    global1 = firstTrailingBit(~((_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, arg_1.a.b, 4294967295u, 44712u), vec4<u32>(global1.x, 0u, 25631u, global1.x)) ^ ~vec4<u32>(global1.x, 11282u, arg_1.a.b, u_input.c)) << (~(~vec4<u32>(arg_1.a.b, 76015u, arg_1.a.b, 1u)) % vec4<u32>(32u))));
    return any(select(!(!(!vec4<bool>(arg_1.a.e.x, true, arg_1.a.e.x, false))), vec4<bool>(all(select(arg_1.a.e, arg_1.a.e, arg_1.a.e.x)), _wgslsmith_dot_vec4_i32(var_1, vec4<i32>(0i, var_1.x, var_1.x, 45285i)) >= -24090i, arg_1.a.e.x, true), vec4<bool>(true, arg_1.a.e.x, any(vec2<bool>(arg_1.a.e.x, arg_1.a.e.x)), arg_1.a.e.x)));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(~(-(-vec3<i32>(2147483647i, 1i, 14293i) << ((vec3<u32>(0u, global2[_wgslsmith_index_u32(15553u, 10u)], global2[_wgslsmith_index_u32(u_input.c, 10u)]) >> (global1.xzw % vec3<u32>(32u))) % vec3<u32>(32u)))), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(29345u << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.x, 10u)], 10u)] % 32u), global1.x, 55770u)), ~(~global1.zzx)), abs(vec2<i32>(_wgslsmith_sub_i32(~(-2147483647i), ~(-2785i)), -1i)), 0i, !vec2<bool>(true, func_3(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1444f, -1665f, -1000f), vec3<f32>(-490f, -1458f, -237f))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, global2[_wgslsmith_index_u32(0u, 10u)]), 14u)])));
    global1 = max(vec4<u32>(_wgslsmith_sub_u32(global1.x, 1u), ~_wgslsmith_div_u32(~13275u, u_input.b), _wgslsmith_sub_u32(countOneBits(1u), ~global1.x), ~(~18401u)), vec4<u32>(_wgslsmith_div_u32(reverseBits(~27760u), ~max(1u, 35110u)), firstLeadingBit(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(~global1.x, 10u)], 4294967295u, 0u)), 1u, 4294967295u));
    var var_1 = !all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    let var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global1.xw, vec2<u32>(~global1.x, ~var_0.b) & ~global1.yy), ~_wgslsmith_add_vec2_u32(max(global1.zx & u_input.a, ~u_input.a), ~countOneBits(global1.yx)));
    global2 = array<u32, 10>();
    return -var_0.c.x;
}

fn func_1() -> Struct_1 {
    global3 = ~_wgslsmith_sub_i32(i32(-1i) * -1i, -35336i);
    var var_0 = vec4<i32>(1i, ~7319i ^ _wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 22420i, 2147483647i), vec3<i32>(0i, -1i, -4231i), vec3<i32>(28857i, 1i, 13593i)), firstTrailingBit(~vec3<i32>(-1i, 0i, 1i))), _wgslsmith_sub_i32(~(~1i), func_2()), ~32415i);
    global2 = array<u32, 10>();
    var var_1 = vec2<bool>(!any(vec4<bool>(true, true, true, true)), true);
    var_1 = select(vec2<bool>(var_1.x, any(!select(vec3<bool>(false, false, var_1.x), vec3<bool>(true, var_1.x, true), vec3<bool>(var_1.x, false, false)))), !select(vec2<bool>(true, true), vec2<bool>(true, var_1.x), select(vec2<bool>(var_1.x, var_1.x), select(vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, false), var_1.x), select(vec2<bool>(var_1.x, true), vec2<bool>(false, false), vec2<bool>(true, false)))), all(select(select(select(vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, var_1.x), false), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, true), var_1.x), vec2<bool>(var_1.x, var_1.x)), select(!vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, var_1.x), !vec2<bool>(true, var_1.x)), true)));
    return Struct_1(vec3<i32>(~firstLeadingBit(~48825i), var_0.x, min(35791i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(var_0.x, 1i, -2147483647i)))), 12198u, ~var_0.yz | var_0.xy, 1i, select(!vec2<bool>(false, var_1.x), vec2<bool>(true, var_1.x), false));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = min(vec4<u32>(~4294967295u, ~(~global2[_wgslsmith_index_u32(global1.x, 10u)]), firstLeadingBit(firstLeadingBit(global1.x)), firstLeadingBit(_wgslsmith_add_u32(0u, global2[_wgslsmith_index_u32(65067u, 10u)]))) << (~(~(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 10u)], global1.x, u_input.c, 4294967295u) >> (vec4<u32>(global1.x, global2[_wgslsmith_index_u32(u_input.a.x, 10u)], 102422u, global1.x) % vec4<u32>(32u)))) % vec4<u32>(32u)), vec4<u32>(~_wgslsmith_sub_u32(u_input.b, max(5122u, 1u)), ~global1.x, ~10306u, ~4294967295u));
    let var_0 = Struct_2(func_1());
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(613f, 241f)), _wgslsmith_div_vec2_f32(vec2<f32>(105f, -2381f), vec2<f32>(-1000f, 3441f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1232f, 720f)), vec2<f32>(2848f, 2110f))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1427f, -395f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(241f, -454f)))))))));
    global0 = array<Struct_2, 14>();
    let var_2 = ~u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-101f, -1923f, var_0.a.e.x & var_0.a.e.x)))))), _wgslsmith_div_vec3_u32(vec3<u32>(max(abs(var_0.a.b), global1.x << (var_2.x % 32u)), 4294967295u, 4294967295u), _wgslsmith_sub_vec3_u32(~(global1.zwz >> (global1.zwz % vec3<u32>(32u))), vec3<u32>(_wgslsmith_mod_u32(1u, var_0.a.b), _wgslsmith_mult_u32(4294967295u, global2[_wgslsmith_index_u32(u_input.c, 10u)]), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(46901u, 10u)], 22464u)))), min(~(-15717i), ~_wgslsmith_sub_i32(-36450i, var_0.a.c.x >> (var_2.x % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), ~_wgslsmith_add_vec4_i32(select(~vec4<i32>(var_0.a.a.x, 3250i, -2147483647i, var_0.a.d), vec4<i32>(var_0.a.d, var_0.a.d, var_0.a.d, 2147483647i) >> (vec4<u32>(34447u, global1.x, u_input.a.x, var_0.a.b) % vec4<u32>(32u)), !vec4<bool>(var_0.a.e.x, false, false, false)), -vec4<i32>(var_0.a.a.x, -5245i, 7242i, var_0.a.c.x) ^ reverseBits(vec4<i32>(0i, var_0.a.d, 1i, var_0.a.a.x))));
}

