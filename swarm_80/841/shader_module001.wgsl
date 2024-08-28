struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(1i, 1i, i32(-2147483648), 12660i), 1u, 490f);

var<private> global1: vec4<i32> = vec4<i32>(0i, 2147483647i, -25323i, 5130i);

var<private> global2: array<f32, 19> = array<f32, 19>(-1000f, 289f, 1007f, -569f, -303f, -1000f, 179f, 385f, -251f, -849f, -510f, 766f, 161f, -1617f, -713f, -1500f, 1489f, 1052f, -1706f);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global2 = array<f32, 19>();
    var var_0 = select(select(_wgslsmith_add_vec4_i32(global0.a & vec4<i32>(0i, 24618i, -1i, global0.a.x), global0.a), vec4<i32>(-7969i, ~28523i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global0.a.x, global1.x), vec3<i32>(5905i, -1i, global1.x)), 1i & u_input.a.x), true) ^ arg_1.a, vec4<i32>(arg_1.a.x, 46029i, _wgslsmith_mult_i32(arg_1.a.x, min(-17731i, 0i)), global0.a.x) & ~arg_1.a, false & !select(true, false, false));
    let var_1 = Struct_1(min(vec4<i32>(arg_2.a.x, abs(1415i ^ arg_2.a.x), 1i, -u_input.a.x), select(global0.a, ~(vec4<i32>(-1i, var_0.x, 37976i, -1i) ^ vec4<i32>(arg_2.a.x, 26626i, arg_2.a.x, -13941i)), true)), ~_wgslsmith_mod_u32(arg_2.b, ~arg_2.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-465f, _wgslsmith_f_op_f32(-1231f * 351f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * -104f) * _wgslsmith_f_op_f32(140f - global0.c)))), _wgslsmith_f_op_f32(-559f - -395f), all(vec2<bool>(true, true)))));
    var var_2 = select(!vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), true, true), vec3<bool>(true, all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1274f))) >= arg_0.x), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true)) && !any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)));
    var var_3 = vec4<bool>(!var_2.x, all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, var_2.x, true), vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_2.x, true, var_2.x)), !vec3<bool>(var_2.x, true, var_2.x)), vec3<bool>(all(vec3<bool>(false, false, var_2.x)), !var_2.x, var_2.x), !vec3<bool>(var_2.x, true, false))), !(!any(select(vec4<bool>(var_2.x, false, false, true), vec4<bool>(true, true, var_2.x, false), var_2.x))), select(var_2.x, select(all(select(vec2<bool>(var_2.x, true), var_2.yz, var_2.zy)), all(vec3<bool>(true, var_2.x, false)), -493f < arg_0.x), -arg_2.a.x < -(~global1.x)));
    return firstLeadingBit(4294967295u);
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: i32, arg_3: vec3<u32>) -> vec3<i32> {
    var var_0 = vec3<u32>(_wgslsmith_div_u32(~func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 1000f, -1381f)), Struct_1(global0.a, arg_3.x, -2417f), Struct_1(global0.a, 4294967295u, -1196f)), ~(~reverseBits(7582u))), 77838u, _wgslsmith_add_u32(~4294967295u, 4294967295u));
    global2 = array<f32, 19>();
    global2 = array<f32, 19>();
    let var_1 = abs(abs(vec4<i32>(~(-global0.a.x), global0.a.x, _wgslsmith_mod_i32(max(arg_1, 20873i), _wgslsmith_add_i32(19995i, -1i)), global0.a.x)));
    var_0 = select(arg_3, u_input.b.zxw, _wgslsmith_dot_vec4_i32(countOneBits(select(global0.a, vec4<i32>(global1.x, 27509i, arg_1, -16850i), true)), (global0.a >> (u_input.b % vec4<u32>(32u))) << ((vec4<u32>(u_input.b.x, var_0.x, 53697u, arg_3.x) ^ u_input.b) % vec4<u32>(32u))) > var_1.x);
    return countOneBits(vec3<i32>(~abs(global1.x) >> (_wgslsmith_sub_u32(~u_input.b.x, ~arg_3.x) % 32u), _wgslsmith_mod_i32(arg_1, _wgslsmith_dot_vec3_i32(~global0.a.xzz, -global0.a.wzy)), -22254i));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = firstLeadingBit(~_wgslsmith_clamp_vec3_u32(~min(vec3<u32>(22864u, 0u, 0u), u_input.b.zwx), arg_2.zxw, firstLeadingBit(vec3<u32>(1u, global0.b, 13509u) & vec3<u32>(global0.b, 4294967295u, 1u))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-491f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1792f * _wgslsmith_f_op_f32(global0.c + 1127f))))), -1468f));
    let var_2 = arg_0.wxz;
    var var_3 = !select(!vec3<bool>(select(true, arg_0.x, false), select(arg_0.x, true, var_2.x), var_2.x), !var_2, var_2.x);
    global0 = Struct_1(-global0.a | vec4<i32>(global1.x, 1i, countOneBits(global0.a.x) ^ global0.a.x, -2147483647i), 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.c)) * _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(select(var_0.x, 1u, any(vec2<bool>(false, true))), 19u)]))));
    return Struct_1(abs(global0.a), 1u, _wgslsmith_f_op_f32(121f + global2[_wgslsmith_index_u32(~arg_2.x & ~(~global0.b), 19u)]));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: i32) -> Struct_1 {
    global2 = array<f32, 19>();
    let var_0 = arg_0;
    var var_1 = var_0.c;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 19u)])) * global2[_wgslsmith_index_u32(arg_0.b, 19u)]);
    let var_2 = var_0;
    return func_4(vec4<bool>(true, !any(select(vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, arg_1.x, true, true), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false))), arg_1.x, !arg_1.x), countOneBits(func_2(3218f, var_2.a.x, _wgslsmith_sub_i32(13034i, ~var_2.a.x), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(4294967295u, 29465u, 0u)), ~u_input.b.zyy))), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.c;
    global1 = ~((~select(vec4<i32>(0i, global1.x, u_input.a.x, 31366i), global0.a, false) >> (~u_input.b % vec4<u32>(32u))) >> (~u_input.b % vec4<u32>(32u)));
    var var_1 = func_1(Struct_1(vec4<i32>(1i, _wgslsmith_mult_i32(~global0.a.x, -23160i << (1u % 32u)), _wgslsmith_sub_i32(-2147483647i, 13204i << (global0.b % 32u)), -_wgslsmith_sub_i32(global0.a.x, u_input.a.x)), ~_wgslsmith_add_u32(21942u, u_input.b.x ^ global0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.c, _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(33061u, 19u)], 660f)))) - _wgslsmith_div_f32(-367f, -1027f))), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), any(vec4<bool>(true, true, true, false)))), abs(21355i));
    var var_2 = vec3<u32>(_wgslsmith_mod_u32(38801u, 4294967295u | _wgslsmith_dot_vec3_u32(u_input.b.wwx, _wgslsmith_add_vec3_u32(vec3<u32>(49234u, global0.b, 8337u), u_input.b.yyz))), 20149u, ~_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(0u, 86491u >> (u_input.b.x % 32u), global0.b, global0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(global0.b & func_4(vec4<bool>(false, false, false, true), -vec3<i32>(global0.a.x, -1i, 7273i), select(u_input.b, u_input.b, vec4<bool>(false, false, false, false))).b), countOneBits(1u), _wgslsmith_mod_u32(~var_1.b, 0u), ~reverseBits(abs(_wgslsmith_div_vec4_u32(u_input.b, u_input.b))), ~var_2.xy);
}

