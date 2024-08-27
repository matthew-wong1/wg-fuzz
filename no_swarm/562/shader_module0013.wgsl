struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<bool>(false, false, false), false, vec2<i32>(i32(-2147483648), i32(-2147483648)), 85909u), Struct_1(vec3<bool>(true, true, false), true, vec2<i32>(-38384i, 1i), 0u), Struct_1(vec3<bool>(true, false, false), false, vec2<i32>(-7497i, 12337i), 0u), Struct_1(vec3<bool>(true, true, false), true, vec2<i32>(1i, 34485i), 4294967295u), Struct_1(vec3<bool>(false, true, false), false, vec2<i32>(0i, -14797i), 7326u), Struct_1(vec3<bool>(false, false, false), true, vec2<i32>(-93794i, 13534i), 1u), Struct_1(vec3<bool>(false, true, true), true, vec2<i32>(-85i, i32(-2147483648)), 17755u), Struct_1(vec3<bool>(true, true, false), false, vec2<i32>(0i, 2147483647i), 9895u), Struct_1(vec3<bool>(false, false, false), true, vec2<i32>(-1i, 2147483647i), 0u), Struct_1(vec3<bool>(true, true, true), false, vec2<i32>(1i, -79089i), 1u), Struct_1(vec3<bool>(false, true, false), false, vec2<i32>(1i, 2147483647i), 59880u), Struct_1(vec3<bool>(false, true, false), true, vec2<i32>(i32(-2147483648), i32(-2147483648)), 0u), Struct_1(vec3<bool>(false, true, true), true, vec2<i32>(-38910i, 462i), 1u), Struct_1(vec3<bool>(true, false, true), false, vec2<i32>(24835i, -23903i), 1u), Struct_1(vec3<bool>(true, false, true), false, vec2<i32>(1i, -12962i), 4294967295u), Struct_1(vec3<bool>(true, true, false), false, vec2<i32>(-21206i, 2147483647i), 43325u), Struct_1(vec3<bool>(true, true, false), false, vec2<i32>(0i, -1i), 4294967295u), Struct_1(vec3<bool>(true, false, false), true, vec2<i32>(28366i, 0i), 42390u), Struct_1(vec3<bool>(true, false, true), true, vec2<i32>(65971i, -4319i), 1u), Struct_1(vec3<bool>(true, true, false), true, vec2<i32>(15432i, 1i), 38494u), Struct_1(vec3<bool>(true, true, true), true, vec2<i32>(i32(-2147483648), 0i), 1u), Struct_1(vec3<bool>(false, false, false), true, vec2<i32>(-1i, -11914i), 20045u), Struct_1(vec3<bool>(true, true, true), true, vec2<i32>(-1i, 1i), 446u), Struct_1(vec3<bool>(true, false, true), true, vec2<i32>(0i, 1i), 79079u), Struct_1(vec3<bool>(false, false, true), true, vec2<i32>(-46979i, 36937i), 0u), Struct_1(vec3<bool>(true, false, false), true, vec2<i32>(0i, -1i), 0u), Struct_1(vec3<bool>(false, true, false), true, vec2<i32>(25533i, -1i), 1u), Struct_1(vec3<bool>(false, false, false), true, vec2<i32>(2147483647i, -41849i), 54181u), Struct_1(vec3<bool>(false, false, false), true, vec2<i32>(-33333i, 0i), 0u), Struct_1(vec3<bool>(true, false, true), true, vec2<i32>(0i, -12568i), 105070u), Struct_1(vec3<bool>(false, false, true), true, vec2<i32>(2147483647i, -9635i), 67862u));

var<private> global1: vec4<bool>;

var<private> global2: Struct_1;

var<private> global3: array<bool, 15>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: f32) -> i32 {
    let var_0 = vec4<u32>(u_input.c.x, 1u, firstTrailingBit(u_input.c.x), u_input.c.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 * 1749f));
    let var_2 = -select(select(vec3<i32>(_wgslsmith_add_i32(-39295i, 0i), -u_input.a, -global2.c.x), u_input.b.yzx, true), min(vec3<i32>(-64675i, global2.c.x, global2.c.x) | u_input.b.zxw, u_input.b.zzw), all(global1.yyy) != true);
    let var_3 = select(vec2<bool>(true, all(!global1.yz)), !select(vec2<bool>(true, arg_1.a.x && true), vec2<bool>(!global1.x, true), any(!arg_0)), select(vec2<bool>(all(vec4<bool>(false, arg_2.x, arg_2.x, arg_1.a.x)) || arg_1.a.x, _wgslsmith_f_op_f32(-888f - arg_3) <= -209f), vec2<bool>(true & any(vec2<bool>(true, global1.x)), any(vec3<bool>(global1.x, global1.x, arg_0.x))), all(select(!arg_0.zz, global1.xz, 31012u <= global2.d))));
    var var_4 = Struct_2(_wgslsmith_mult_i32(-_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(var_2, var_2), _wgslsmith_mult_i32(-2147483647i, arg_1.c.x), 0i), -(~(i32(-1i) * -7413i))));
    return firstTrailingBit(-2147483647i);
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_2(select(-func_3(!vec4<bool>(global2.a.x, true, global2.a.x, global1.x), global0[_wgslsmith_index_u32(u_input.c.x, 31u)], vec2<bool>(global2.b, global2.a.x), _wgslsmith_f_op_f32(abs(1205f))), countOneBits(abs(22871i)), true));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -331f)));
    global2 = global0[_wgslsmith_index_u32(~29077u & arg_0, 31u)];
    var var_2 = vec4<bool>(true, any(vec3<bool>(1000f < _wgslsmith_f_op_f32(floor(1117f)), global1.x, true)), any(global2.a.xy), true);
    var var_3 = select(global2.c, -(~global2.c) ^ (vec2<i32>(0i, 1i) ^ (u_input.b.xy >> (u_input.c.zx % vec2<u32>(32u)))), vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(global3[_wgslsmith_index_u32(global2.d, 15u)], var_2.x), true)), all(!global2.a))) << (u_input.c.yx % vec2<u32>(32u));
    return global0[_wgslsmith_index_u32(arg_0, 31u)];
}

fn func_1() -> u32 {
    let var_0 = func_2(u_input.c.x, select(vec2<bool>(true, true), vec2<bool>(global2.b, false), vec2<bool>(any(!vec4<bool>(false, true, global1.x, global3[_wgslsmith_index_u32(4294967295u, 15u)])), true)));
    let var_1 = _wgslsmith_add_vec2_i32((var_0.c & min(min(vec2<i32>(-40570i, global2.c.x), var_0.c), reverseBits(global2.c))) ^ ~abs(var_0.c), vec2<i32>(38357i, _wgslsmith_mod_i32(-(~(-37703i)), -global2.c.x)));
    global2 = Struct_1(vec3<bool>(!(global1.x & select(global2.b, true, global3[_wgslsmith_index_u32(global2.d, 15u)])), min(u_input.a, var_0.c.x & 29936i) < func_3(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 15u)], true, global1.x, global3[_wgslsmith_index_u32(62121u, 15u)]), Struct_1(vec3<bool>(global2.b, false, global2.b), global2.b, global2.c, var_0.d), !var_0.a.xy, _wgslsmith_f_op_f32(-478f - 858f)), global1.x), true, vec2<i32>(7493i, ~global2.c.x), _wgslsmith_add_u32(0u, ~(~_wgslsmith_clamp_u32(57879u, 1u, 7134u))));
    let var_2 = Struct_2(firstTrailingBit(max(14562i & global2.c.x, _wgslsmith_dot_vec3_i32(u_input.b.ywx, u_input.b.yzy)) ^ -2147483647i));
    var var_3 = var_2;
    return _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(max(_wgslsmith_sub_u32(u_input.c.x, var_0.d), u_input.c.x), ~var_0.d), reverseBits(~43058u | u_input.c.x)), select(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~u_input.c, ~u_input.c), var_0.d), global2.d, true));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: Struct_1) -> vec2<i32> {
    global0 = array<Struct_1, 31>();
    let var_0 = _wgslsmith_mod_vec4_i32(u_input.b, u_input.b);
    var var_1 = Struct_2(_wgslsmith_sub_i32(abs(1i), 0i) | _wgslsmith_mult_i32(-_wgslsmith_sub_i32(13438i, u_input.b.x), _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.b.x, global2.c.x), firstTrailingBit(19100i))));
    global3 = array<bool, 15>();
    var var_2 = func_2(~(~1062u), func_2(global2.d, select(vec2<bool>(true, true), !select(global2.a.yz, vec2<bool>(global2.b, false), global1.x), global2.a.x)).a.zz);
    return min(~(-((global2.c << (vec2<u32>(133241u, 1u) % vec2<u32>(32u))) ^ _wgslsmith_sub_vec2_i32(u_input.b.yx, u_input.b.yz))), select(~global2.c, u_input.b.xz, all(!arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(2147483647i);
    var var_1 = vec2<bool>(true, !global3[_wgslsmith_index_u32(2981u, 15u)] | true);
    var var_2 = _wgslsmith_dot_vec3_u32(u_input.c, ~vec3<u32>(abs(abs(global2.d)), global2.d, firstTrailingBit(1u)));
    var var_3 = abs(func_4(vec3<u32>(4294967295u, func_1(), global2.d), select(select(!vec4<bool>(global3[_wgslsmith_index_u32(3779u, 15u)], true, global3[_wgslsmith_index_u32(global2.d, 15u)], true), select(vec4<bool>(false, var_1.x, false, false), vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(true, global3[_wgslsmith_index_u32(12531u, 15u)], global3[_wgslsmith_index_u32(135579u, 15u)], global2.b)), !var_1.x), vec4<bool>(true, true, true, any(global1.zy)), !select(vec4<bool>(true, false, true, global1.x), vec4<bool>(global2.a.x, var_1.x, true, global3[_wgslsmith_index_u32(58136u, 15u)]), global2.a.x)), global0[_wgslsmith_index_u32(30392u, 31u)]));
    global3 = array<bool, 15>();
    global3 = array<bool, 15>();
    global3 = array<bool, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-1250f, -298f), _wgslsmith_mod_u32(firstLeadingBit(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(23632u, 4294967295u, global2.d), select(u_input.c, vec3<u32>(global2.d, 4294967295u, 38002u), global3[_wgslsmith_index_u32(4294967295u, 15u)]))) & 0u, func_4(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(global2.d, u_input.c.x, 4294967295u), vec3<u32>(global2.d, 0u, u_input.c.x))), vec4<bool>(true, (global1.x & global2.a.x) || false, true, !var_1.x & true), Struct_1(global2.a, global3[_wgslsmith_index_u32(0u, 15u)], u_input.b.wx, ~(~1u))));
}

