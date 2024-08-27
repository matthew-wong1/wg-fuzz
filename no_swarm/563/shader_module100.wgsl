struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: vec3<i32>;

var<private> global2: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(14844i, -8072i), vec2<i32>(-3791i, 0i), vec2<i32>(1618i, 28495i), vec2<i32>(-41050i, 2147483647i), vec2<i32>(32126i, 5482i), vec2<i32>(12076i, -1i), vec2<i32>(-1i, 16438i), vec2<i32>(-37774i, -53967i), vec2<i32>(21444i, -69383i), vec2<i32>(-4448i, 7422i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(1i, 3290i), vec2<i32>(30364i, 25146i), vec2<i32>(-2478i, 0i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-1i, 0i), vec2<i32>(79343i, 44940i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, 1i), vec2<i32>(i32(-2147483648), -12309i));

var<private> global3: array<vec2<u32>, 14>;

var<private> global4: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> i32 {
    var var_0 = reverseBits(abs(0u));
    global0 = array<Struct_2, 18>();
    var var_1 = _wgslsmith_dot_vec2_i32(max(max(_wgslsmith_mod_vec2_i32(-global1.yy, global1.zx), _wgslsmith_div_vec2_i32(global2[_wgslsmith_index_u32(1u, 21u)], global1.zy)), -(vec2<i32>(-1i) * -global2[_wgslsmith_index_u32(1685u, 21u)])), ~countOneBits(reverseBits(reverseBits(global1.yx))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(917f * -374f), _wgslsmith_f_op_f32(-arg_1.a.x));
    var var_3 = abs(firstTrailingBit(abs(~u_input.a)));
    return 0i ^ u_input.a;
}

fn func_2() -> Struct_3 {
    global1 = select(vec3<i32>(0i, func_3(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 27852i), vec2<i32>(-23585i, 0i)) <= ~1i, global0[_wgslsmith_index_u32(1u, 18u)]), _wgslsmith_mod_i32(-(u_input.a & 19755i), 42268i)), ~_wgslsmith_mult_vec3_i32(~reverseBits(vec3<i32>(u_input.a, global1.x, u_input.a)), vec3<i32>(u_input.a, global1.x, _wgslsmith_clamp_i32(u_input.a, global1.x, global1.x))), vec3<bool>(true, true, all(vec2<bool>(true, true)) == true));
    var var_0 = global1.x;
    var var_1 = ~_wgslsmith_dot_vec3_i32(abs(abs(vec3<i32>(1i, global1.x, u_input.a)) & _wgslsmith_sub_vec3_i32(vec3<i32>(-17779i, u_input.a, global1.x), vec3<i32>(global1.x, u_input.a, 1i))), abs(~vec3<i32>(-21785i, -1i, u_input.a)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2791f, -1438f, 298f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(599f, 853f, 1139f), vec3<f32>(-382f, 2444f, 1191f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(137f, -925f, 929f)))))))));
    var var_3 = global2[_wgslsmith_index_u32(reverseBits(~_wgslsmith_clamp_u32(52667u, 1u, 4294967295u)), 21u)];
    return Struct_3(Struct_2(var_2.a), countOneBits(1u) <= firstTrailingBit(_wgslsmith_sub_u32(~13272u, ~4294967295u)), firstLeadingBit(~abs(global3[_wgslsmith_index_u32(4294967295u, 14u)])));
}

fn func_1(arg_0: i32, arg_1: i32) -> vec3<i32> {
    global3 = array<vec2<u32>, 14>();
    let var_0 = func_2();
    let var_1 = _wgslsmith_dot_vec3_i32(-_wgslsmith_mod_vec3_i32(abs(vec3<i32>(-8394i, u_input.a, 15460i) & vec3<i32>(global1.x, 0i, arg_1)), firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, arg_1, arg_0), vec3<i32>(u_input.a, global1.x, arg_1)))), -vec3<i32>(u_input.a, -1i, select(-u_input.a, min(32518i, -1i), var_0.b)));
    let var_2 = Struct_1(-global1.yy, arg_0, -_wgslsmith_div_i32((-3881i >> (var_0.c.x % 32u)) ^ -7465i, global1.x), var_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.a), vec3<f32>(var_0.a.a.x, 653f, var_0.a.a.x)) * var_0.a.a) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.a))))));
    global2 = array<vec2<i32>, 21>();
    return vec3<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(2147483647i, var_2.c, u_input.a) << (~vec3<u32>(4294967295u, 25906u, var_0.c.x) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(-vec3<i32>(var_1, arg_0, arg_0), -vec3<i32>(arg_1, var_1, 1i) ^ max(vec3<i32>(-4172i, -37776i, arg_0), vec3<i32>(21400i, 28725i, -2147483647i)), vec3<i32>(1i, _wgslsmith_sub_i32(-17119i, arg_1), ~arg_0))), 2147483647i, abs(abs(global1.x | -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(vec3<bool>(true, any(vec4<bool>(false, false, true, false)), true), vec3<bool>(true, true, true), true));
    global1 = -func_1(i32(-1i) * -29244i, -20401i | u_input.a);
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-217f, 188f, 1399f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-863f, -839f, 1107f) + func_2().a.a))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.a.x - _wgslsmith_f_op_f32(floor(144f))), _wgslsmith_f_op_f32(-var_1.a.a.x)))), var_1.a.a.x, var_1.a.a.x);
    var var_3 = _wgslsmith_div_f32(-709f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -872f), 1000f)) * _wgslsmith_f_op_f32(-func_2().a.a.x)))));
    var var_4 = func_2().a;
    let x = u_input.a;
    s_output = StorageBuffer(-1092f, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(global1.xz << (select(vec2<u32>(1u, 1u), vec2<u32>(8235u, 1u), vec2<bool>(false, var_0.x)) % vec2<u32>(32u)), -global1.yz, ~(~global1.zz)), vec2<i32>(select(select(global1.x, u_input.a, var_0.x), select(global1.x, u_input.a, true), !var_0.x), 54558i)));
}

