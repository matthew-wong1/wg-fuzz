struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(-228f, 52370i), Struct_1(-385f, 1i), Struct_1(1119f, 1i), Struct_1(-227f, -28037i), Struct_1(910f, -1i), Struct_1(-158f, 2147483647i));

var<private> global1: vec3<u32> = vec3<u32>(1u, 4294967295u, 53901u);

var<private> global2: i32 = 1i;

var<private> global3: array<bool, 12>;

var<private> global4: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(1729f, 9987i), Struct_1(1335f, 2348i), Struct_1(-391f, 2147483647i), Struct_1(1550f, -21272i), Struct_1(531f, 24408i), Struct_1(-622f, -33148i), Struct_1(809f, i32(-2147483648)), Struct_1(-929f, 51343i), Struct_1(587f, 0i), Struct_1(828f, 2147483647i), Struct_1(1013f, -2436i), Struct_1(610f, -14645i), Struct_1(236f, i32(-2147483648)), Struct_1(549f, 6514i));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> bool {
    var var_0 = reverseBits(max(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 60323i, 2147483647i, arg_1.b) >> (vec4<u32>(80124u, 31327u, global1.x, global1.x) % vec4<u32>(32u)), reverseBits(vec4<i32>(2147483647i, arg_1.b, 2147483647i, 49213i))), u_input.a.x));
    var var_1 = global4[_wgslsmith_index_u32(select(1u, 4294967295u, any(select(select(select(vec2<bool>(false, global3[_wgslsmith_index_u32(66991u, 12u)]), vec2<bool>(global3[_wgslsmith_index_u32(global1.x, 12u)], global3[_wgslsmith_index_u32(global1.x, 12u)]), true), select(vec2<bool>(true, false), vec2<bool>(true, global3[_wgslsmith_index_u32(global1.x, 12u)]), vec2<bool>(false, true)), true), vec2<bool>(arg_1.a != 1835f, global3[_wgslsmith_index_u32(0u, 12u)]), global3[_wgslsmith_index_u32(global1.x, 12u)]))), 14u)];
    let var_2 = u_input.a;
    var var_3 = ~global1.x;
    var_3 = ~_wgslsmith_mod_u32(select(~(~global1.x), global1.x, global3[_wgslsmith_index_u32(global1.x, 12u)]), ~_wgslsmith_dot_vec2_u32(abs(global1.zy), global1.yx));
    return global3[_wgslsmith_index_u32(4294967295u, 12u)];
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = !(!(!select(!vec3<bool>(global3[_wgslsmith_index_u32(1u, 12u)], global3[_wgslsmith_index_u32(85158u, 12u)], global3[_wgslsmith_index_u32(global1.x, 12u)]), select(vec3<bool>(global3[_wgslsmith_index_u32(arg_1, 12u)], global3[_wgslsmith_index_u32(4294967295u, 12u)], global3[_wgslsmith_index_u32(1u, 12u)]), vec3<bool>(global3[_wgslsmith_index_u32(arg_1, 12u)], global3[_wgslsmith_index_u32(arg_1, 12u)], true), true), vec3<bool>(global3[_wgslsmith_index_u32(arg_1, 12u)], true, false))));
    global2 = reverseBits(1i);
    let var_1 = vec2<bool>(true, func_3(1062f, global4[_wgslsmith_index_u32(~countOneBits(firstTrailingBit(arg_1)), 14u)]));
    let var_2 = 2329f;
    let var_3 = arg_0;
    return global4[_wgslsmith_index_u32(arg_1, 14u)];
}

fn func_1() -> bool {
    global4 = array<Struct_1, 14>();
    let var_0 = func_2(Struct_1(262f, u_input.a.x), 0u & (22042u & ~_wgslsmith_clamp_u32(global1.x, global1.x, global1.x)));
    global3 = array<bool, 12>();
    global2 = reverseBits(var_0.b);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(sign(-839f)), var_0.b & select(~_wgslsmith_div_i32(1i, 1i), ~max(u_input.a.x, -4314i), true));
    return _wgslsmith_f_op_f32(-var_1.a) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-139f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a)))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: f32) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = ~(~vec3<i32>(~(-1i), -5607i, 1i));
    let var_2 = var_1.yx;
    var_1 = _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(select(_wgslsmith_add_i32(2147483647i, u_input.a.x), var_0.b, arg_1 || false), _wgslsmith_add_i32(var_2.x, _wgslsmith_sub_i32(1i, -1i)), var_2.x), _wgslsmith_add_vec3_i32(abs(vec3<i32>(arg_2, arg_2, var_0.b) & u_input.a), vec3<i32>(_wgslsmith_add_i32(1i, 63566i), arg_0.b, 33733i))), ~(~countOneBits(u_input.a)), _wgslsmith_mult_vec3_i32(min(~u_input.a, u_input.a), ~vec3<i32>(reverseBits(2147483647i), ~23291i, _wgslsmith_clamp_i32(2147483647i, 561i, -4201i))));
    let var_3 = global0[_wgslsmith_index_u32(1u, 6u)];
    return Struct_1(var_0.a, _wgslsmith_clamp_i32(arg_2 >> ((abs(global1.x) >> (38543u % 32u)) % 32u), _wgslsmith_mult_i32(var_1.x, _wgslsmith_mod_i32(firstTrailingBit(var_1.x), firstLeadingBit(2147483647i))), 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(128f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(305f - 413f))), select(-2147483647i, 1i, global3[_wgslsmith_index_u32(global1.x, 12u)]) & -(55082i ^ u_input.a.x)), func_1() && any(!select(vec2<bool>(global3[_wgslsmith_index_u32(global1.x, 12u)], false), vec2<bool>(global3[_wgslsmith_index_u32(global1.x, 12u)], false), vec2<bool>(global3[_wgslsmith_index_u32(global1.x, 12u)], true))), ~(-1i), _wgslsmith_div_f32(func_2(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(10187u, 0u), ~global1.x), 14u)], ~(~1u)).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(900f - -219f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1000f) + -708f))));
    let var_1 = false;
    var var_2 = !select(select(!select(vec3<bool>(global3[_wgslsmith_index_u32(0u, 12u)], true, global3[_wgslsmith_index_u32(global1.x, 12u)]), vec3<bool>(false, global3[_wgslsmith_index_u32(10469u, 12u)], global3[_wgslsmith_index_u32(global1.x, 12u)]), vec3<bool>(global3[_wgslsmith_index_u32(1u, 12u)], var_1, true)), select(!vec3<bool>(var_1, true, var_1), !vec3<bool>(true, true, global3[_wgslsmith_index_u32(global1.x, 12u)]), !vec3<bool>(global3[_wgslsmith_index_u32(3494u, 12u)], true, var_1)), true), vec3<bool>(all(!vec2<bool>(false, var_1)), false, select(true, true, false)), countOneBits(0u) != global1.x);
    global1 = min(firstLeadingBit(_wgslsmith_clamp_vec3_u32(min(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, global1.x, global1.x)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.x, 4294967295u), vec3<u32>(global1.x, global1.x, global1.x)), ~global1.x, abs(23840u)), ~(vec3<u32>(global1.x, global1.x, 1u) << (vec3<u32>(global1.x, 4294967295u, 0u) % vec3<u32>(32u))))), ~vec3<u32>(~_wgslsmith_mult_u32(0u, 0u), countOneBits(4294967295u), min(global1.x, 63091u)));
    let var_3 = var_2.zz;
    var var_4 = func_2(func_4(Struct_1(-1047f, min(2147483647i ^ u_input.a.x, ~var_0.b)), true, _wgslsmith_mult_i32(u_input.a.x, ~u_input.a.x), var_0.a), 4294967295u);
    let var_5 = firstLeadingBit(110216u);
    var_4 = Struct_1(_wgslsmith_f_op_f32(abs(-458f)), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mod_u32(45357u, _wgslsmith_div_u32(global1.x | 57405u, 0u)), 0u), vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, 56620i), ~_wgslsmith_dot_vec3_i32(-u_input.a, vec3<i32>(var_4.b, var_4.b, -22849i) & vec3<i32>(-32415i, 21015i, u_input.a.x)), reverseBits(u_input.a.x)), _wgslsmith_mod_i32(-11799i, _wgslsmith_dot_vec2_i32(-(vec2<i32>(-22347i, u_input.a.x) | u_input.a.xx), ~vec2<i32>(43612i, var_0.b))), vec2<f32>(1000f, var_0.a), var_5);
}

