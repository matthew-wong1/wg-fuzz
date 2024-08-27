struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(767f, 699f), vec2<f32>(150f, -816f), vec2<f32>(168f, 154f), vec2<f32>(439f, -137f), vec2<f32>(239f, -439f), vec2<f32>(1099f, -1292f), vec2<f32>(462f, -877f));

var<private> global2: u32;

var<private> global3: array<vec3<bool>, 6>;

var<private> global4: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(1u, 0u), vec2<u32>(1u, 35071u), vec2<u32>(4294967295u, 56614u), vec2<u32>(1u, 84410u), vec2<u32>(49891u, 4294967295u), vec2<u32>(1540u, 62693u), vec2<u32>(25129u, 24742u), vec2<u32>(4294967295u, 11241u), vec2<u32>(750u, 0u), vec2<u32>(1u, 22224u), vec2<u32>(53489u, 1u), vec2<u32>(81777u, 14964u), vec2<u32>(37635u, 22500u), vec2<u32>(4294967295u, 1u), vec2<u32>(46722u, 4294967295u), vec2<u32>(18230u, 9059u), vec2<u32>(64931u, 37878u), vec2<u32>(0u, 0u), vec2<u32>(0u, 1u), vec2<u32>(4828u, 13538u), vec2<u32>(5640u, 0u), vec2<u32>(4294967295u, 41100u), vec2<u32>(15333u, 0u), vec2<u32>(4294967295u, 43929u), vec2<u32>(4294967295u, 60801u), vec2<u32>(35965u, 31498u), vec2<u32>(30519u, 20730u), vec2<u32>(8838u, 31317u), vec2<u32>(1u, 27215u), vec2<u32>(82503u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 4294967295u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    global3 = array<vec3<bool>, 6>();
    let var_0 = Struct_1(_wgslsmith_clamp_i32(-20957i, -2147483647i, firstLeadingBit(2147483647i)), -2147483647i, global0.xyz, global4[_wgslsmith_index_u32(0u, 32u)], true);
    global1 = array<vec2<f32>, 7>();
    global2 = _wgslsmith_div_u32(24290u, 1u | ~select(var_0.d.x, _wgslsmith_mult_u32(var_0.d.x, u_input.e.x), var_0.e));
    var var_1 = var_0;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-374f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1422f, -1000f)), _wgslsmith_f_op_f32(round(-1969f))))) * 1000f);
}

fn func_4(arg_0: f32) -> f32 {
    global0 = _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(min(u_input.a.x, u_input.a.x), min(-40004i, global0.x), 0i, -2147483647i ^ global0.x)) << (u_input.d % vec4<u32>(32u)), max(abs(vec4<i32>(u_input.a.x, -8058i, u_input.a.x ^ global0.x, ~0i)), u_input.a), ~(-vec4<i32>(_wgslsmith_div_i32(global0.x, 1i), 1i, global0.x, _wgslsmith_dot_vec3_i32(u_input.a.zyz, vec3<i32>(0i, u_input.a.x, global0.x)))));
    let var_0 = select(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), any(global3[_wgslsmith_index_u32(10311u, 6u)]))), select(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), true)), vec2<bool>(true, true), true), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x) <= u_input.a.x);
    var var_1 = _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~select(~u_input.d.zzz, firstLeadingBit(vec3<u32>(1u, 24445u, 66478u)), any(vec2<bool>(var_0.x, false))), vec3<u32>(~u_input.d.x, ~firstLeadingBit(1u), ~u_input.d.x)), ~(vec3<u32>(0u, _wgslsmith_mult_u32(u_input.e.x, u_input.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(59935u, 46983u, u_input.d.x, 16209u), vec4<u32>(0u, u_input.c.x, u_input.b, u_input.e.x))) << (u_input.d.ywz % vec3<u32>(32u))));
    let var_2 = _wgslsmith_mult_u32(65848u, u_input.d.x);
    global3 = array<vec3<bool>, 6>();
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 - arg_0))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1170f))) + _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(round(375f))))), -740f));
}

fn func_5(arg_0: vec3<f32>, arg_1: f32, arg_2: vec4<bool>, arg_3: vec4<f32>) -> vec4<bool> {
    global0 = _wgslsmith_mod_vec4_i32(countOneBits(-(~u_input.a)) << (u_input.d % vec4<u32>(32u)), ~_wgslsmith_mod_vec4_i32(firstTrailingBit(-u_input.a), ~(~vec4<i32>(38963i, -13246i, u_input.a.x, 2147483647i))));
    var var_0 = min(-u_input.a.xxz, _wgslsmith_sub_vec3_i32(vec3<i32>(countOneBits(-2147483647i) ^ firstTrailingBit(global0.x), -global0.x, ~u_input.a.x), u_input.a.yyx));
    let var_1 = vec3<bool>(arg_2.x, all(arg_2), arg_3.x <= arg_3.x);
    let var_2 = Struct_2(!vec4<bool>(!var_1.x, all(vec4<bool>(arg_2.x, var_1.x, var_1.x, arg_2.x)), false, (true || var_1.x) | arg_2.x), global0.x, Struct_1(~(-global0.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, u_input.a.x, var_0.x), global0.zzx), var_0.x), vec3<i32>(firstLeadingBit(u_input.a.x | -13564i), -23990i, -2147483647i), vec2<u32>(_wgslsmith_mod_u32(~37479u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(12823u, u_input.c.x))), ~0u | (u_input.d.x | u_input.c.x)), false), Struct_1(-29102i, ~global0.x, ~firstLeadingBit(min(vec3<i32>(-21068i, var_0.x, u_input.a.x), u_input.a.xwz)), _wgslsmith_add_vec2_u32(~vec2<u32>(40223u, u_input.d.x) ^ (u_input.c << (vec2<u32>(4294967295u, 55142u) % vec2<u32>(32u))), max(vec2<u32>(51738u, u_input.e.x), vec2<u32>(u_input.b, 0u))), select(false, var_1.x, false)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.x, arg_1)))), _wgslsmith_f_op_f32(-arg_1));
    return select(select(select(var_2.a, vec4<bool>(var_1.x, var_1.x, true, true), ~global0.x > (51493i & var_0.x)), select(arg_2, !select(vec4<bool>(false, var_2.c.e, var_2.c.e, true), vec4<bool>(arg_2.x, var_1.x, arg_2.x, var_2.a.x), var_2.a.x), var_1.x), !arg_2), vec4<bool>(true, var_2.d.e, 397f <= var_3.x, !all(!vec4<bool>(true, var_1.x, false, arg_2.x))), _wgslsmith_add_i32(-20087i, -_wgslsmith_add_i32(var_0.x, -16085i)) < var_2.c.b);
}

fn func_2() -> f32 {
    var var_0 = select(firstTrailingBit(reverseBits(vec4<u32>(u_input.e.x, 0u, 9951u, 1u))) & vec4<u32>(_wgslsmith_mult_u32(~4294967295u, u_input.c.x | 56990u), 0u, abs(countOneBits(u_input.c.x)), 16861u), countOneBits(vec4<u32>(firstTrailingBit(abs(4294967295u)), u_input.c.x, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b, u_input.d.x, u_input.e.x)), u_input.e), u_input.b)), func_5(vec3<f32>(-716f, 1517f, 1f), _wgslsmith_f_op_f32(-1f), vec4<bool>(true, true, true, true), vec4<f32>(862f, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_3()))), -1679f, -1000f)));
    global4 = array<vec2<u32>, 32>();
    let var_1 = Struct_1(global0.x, u_input.a.x, u_input.a.zyz, max(global4[_wgslsmith_index_u32(~(~0u), 32u)], _wgslsmith_add_vec2_u32(abs(abs(u_input.e.xy)), vec2<u32>(4294967295u, _wgslsmith_div_u32(var_0.x, var_0.x)))), false);
    var var_2 = vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(abs(vec2<i32>(-1i, global0.x)) ^ (global0.yy | global0.xx), vec2<i32>(var_1.a, ~(-1i)));
    var var_3 = vec4<bool>(var_1.e, all(vec2<bool>(var_1.e, func_5(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-772f, 516f, -1120f), vec3<f32>(1100f, -2208f, -130f), var_1.e)), 724f, !vec4<bool>(false, false, var_1.e, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1302f, 1014f, 163f) * vec4<f32>(682f, -365f, 338f, -728f))).x)), var_1.e || !(!all(vec4<bool>(false, var_1.e, var_1.e, true))), true);
    return -567f;
}

fn func_1(arg_0: u32, arg_1: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1323f))))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2429f + -707f) + _wgslsmith_f_op_f32(func_2())));
    let var_1 = vec2<i32>(arg_1, _wgslsmith_dot_vec2_i32(-vec2<i32>(-46896i >> (1u % 32u), 13667i), _wgslsmith_clamp_vec2_i32(global0.ww, _wgslsmith_mult_vec2_i32(vec2<i32>(arg_1, u_input.a.x), ~u_input.a.xx), _wgslsmith_add_vec2_i32(global0.wz >> (global4[_wgslsmith_index_u32(1u, 32u)] % vec2<u32>(32u)), global0.wx & vec2<i32>(-73695i, u_input.a.x)))));
    global4 = array<vec2<u32>, 32>();
    global0 = u_input.a;
    let var_2 = Struct_2(vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), all(global3[_wgslsmith_index_u32(16257u, 6u)]))), true, true, -2147483647i == -var_1.x), _wgslsmith_dot_vec4_i32(u_input.a, select(-u_input.a, vec4<i32>(reverseBits(2147483647i), abs(38371i), var_1.x | arg_1, min(global0.x, var_1.x)), true)), Struct_1(36332i, -8626i, u_input.a.wwz, firstLeadingBit(~select(global4[_wgslsmith_index_u32(64325u, 32u)], global4[_wgslsmith_index_u32(30347u, 32u)], false)), select(any(vec3<bool>(true, true, true)), true | (var_1.x < arg_1), true)), Struct_1(_wgslsmith_mult_i32(arg_1, ~abs(arg_1)), 26917i, global0.xzx, u_input.d.zz, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true)))));
    return _wgslsmith_add_i32(-2147483647i, firstTrailingBit(var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~abs(~u_input.c.x);
    global1 = array<vec2<f32>, 7>();
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(_wgslsmith_mult_i32(global0.x, 43461i), u_input.a.x, 0i, 0i)), vec4<i32>(-2147483647i, max(max(4678i, global0.x), min(u_input.a.x, u_input.a.x)), select(_wgslsmith_mult_i32(global0.x, global0.x), _wgslsmith_dot_vec2_i32(global0.xx, vec2<i32>(global0.x, 27770i)), false), ~func_1(u_input.e.x, -26760i))), -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(9785u, vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -633f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1192f)), _wgslsmith_f_op_f32(912f * 257f)) - _wgslsmith_f_op_f32(ceil(304f)))), 1u & u_input.d.x, -16247i);
}

