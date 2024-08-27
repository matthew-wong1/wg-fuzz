struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 4> = array<f32, 4>(202f, 1169f, -1567f, 1000f);

var<private> global2: f32;

var<private> global3: array<bool, 11> = array<bool, 11>(false, false, true, true, true, false, true, true, false, false, false);

var<private> global4: vec4<i32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> f32 {
    let var_0 = arg_0;
    let var_1 = arg_0.a.x;
    global4 = ~(~select(-_wgslsmith_mod_vec4_i32(vec4<i32>(-46890i, -2147483647i, 11593i, global4.x), vec4<i32>(global4.x, global4.x, global4.x, 0i)), min(vec4<i32>(45163i, 1i, 26103i, global4.x), vec4<i32>(0i, global4.x, 0i, 70840i)) & min(vec4<i32>(global4.x, 24373i, global4.x, -67694i), vec4<i32>(global4.x, global4.x, global4.x, global4.x)), false));
    let var_2 = global4.x;
    global3 = array<bool, 11>();
    return _wgslsmith_f_op_f32(2313f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1 * arg_0.a.x), arg_1.a.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1549f - global1[_wgslsmith_index_u32(u_input.a.x, 4u)])))))));
}

fn func_2(arg_0: vec4<i32>) -> vec4<f32> {
    let var_0 = vec4<u32>(_wgslsmith_div_u32(~countOneBits(u_input.a.x), min(21868u, 5095u | u_input.a.x)), 66320u, u_input.a.x, 1u << (_wgslsmith_sub_u32(56586u, u_input.a.x) % 32u)) & abs(vec4<u32>(u_input.a.x, u_input.a.x, ~4294967295u, ~select(u_input.a.x, 0u, global3[_wgslsmith_index_u32(1u, 11u)])));
    global2 = _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global0.a)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(3364u, 4u)], -117f, global0.a.x))))), Struct_1(_wgslsmith_f_op_vec4_f32(global0.a * vec4<f32>(-1522f, -382f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 4u)]), _wgslsmith_f_op_f32(-global0.a.x)))), _wgslsmith_add_u32(81253u, 1u)));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a));
    global0 = Struct_1(global0.a);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1557f, -395f, var_1.a.x, 1680f), global0.a)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-381f, var_1.a.x, var_1.a.x, 666f)))), var_1.a)));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, i32(-1i) * -2147483647i, global4.x << (4294967295u % 32u), -1i), _wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(global4.x, global4.x, 1i, -12429i)), -vec4<i32>(-5908i, global4.x, global4.x, global4.x))))));
    let var_1 = global0.a.x;
    var var_2 = arg_2;
    global4 = max(_wgslsmith_div_vec4_i32(firstLeadingBit(-vec4<i32>(global4.x, 14290i, 7819i, global4.x)), vec4<i32>(-1i, -2147483647i, 63181i, global4.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(~global4.x, -39108i, ~global4.x, i32(-1i) * -34557i), vec4<i32>(-2147483647i, firstTrailingBit(-2147483647i), -9819i, global4.x)));
    var var_3 = true;
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec4<bool>(false, !global3[_wgslsmith_index_u32(arg_1.x, 11u)], global3[_wgslsmith_index_u32((arg_1.x >> (arg_1.x % 32u)) << ((30919u ^ (_wgslsmith_add_u32(21086u, u_input.a.x) << (max(0u, 1u) % 32u))) % 32u), 11u)], _wgslsmith_dot_vec2_i32(~(-global4.yy), -vec2<i32>(global4.x, global4.x) ^ (vec2<i32>(10641i, global4.x) | global4.zx)) >= global4.x);
    let var_1 = vec3<f32>(385f, 1298f, arg_0.a.x);
    var var_2 = var_1.x;
    let var_3 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(-13374i, global4.x, global4.x, global4.x)), vec4<i32>(-28222i, global4.x, global4.x, global4.x)))).xzx - vec3<f32>(_wgslsmith_f_op_f32(1296f - arg_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1283f + arg_0.a.x) + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)))), !all(select(var_0.wyx, !vec3<bool>(true, true, var_0.x), arg_2)), Struct_1(_wgslsmith_f_op_vec4_f32(arg_3.a - _wgslsmith_f_op_vec4_f32(global0.a * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1297f, global0.a.x, -274f, -306f), vec4<f32>(836f, 306f, -1790f, arg_0.a.x)))))));
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2235f + _wgslsmith_f_op_f32(var_3.a.x + -1172f))), -153f) + arg_3.a.ywz);
    return func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(arg_1.x, 4u)])), -424f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1279f)), _wgslsmith_f_op_f32(-arg_3.a.x)) - arg_0.a.xxx), !all(!var_0.yx) & any(vec4<bool>(true, any(var_0.wwx), false, any(vec4<bool>(false, global3[_wgslsmith_index_u32(112u, 11u)], global3[_wgslsmith_index_u32(u_input.a.x, 11u)], false)))), var_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4.x;
    let var_1 = ~63804u;
    global3 = array<bool, 11>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(global0.a + global0.a));
    let var_3 = _wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec3_i32(global4.yzx, global4.zyz), ~1i);
    var var_4 = 125f;
    var var_5 = func_4(func_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_2.a.xxy))), _wgslsmith_div_i32(-var_3, 2147483647i) < _wgslsmith_add_i32(~global4.x, global4.x), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, -1473f, global1[_wgslsmith_index_u32(var_1, 4u)], global0.a.x) - global0.a))), vec3<u32>(663u, var_1, ~(~3181u)), global3[_wgslsmith_index_u32(~u_input.a.x, 11u)] || true, var_2);
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_2(abs(vec4<i32>(1i, _wgslsmith_clamp_i32(var_3, 0i, -2147483647i), -37619i, abs(var_3))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(u_input.a.x, ~u_input.a.x), ~(~(~(~vec3<u32>(59617u, u_input.a.x, 23092u)))), var_5.a.x, vec3<u32>(0u, ~u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, countOneBits(u_input.a.x)), firstLeadingBit(~u_input.a.x))), -_wgslsmith_add_vec3_i32(-firstTrailingBit(global4.xxy), -(vec3<i32>(var_3, 73131i, global4.x) >> (vec3<u32>(1u, var_1, 53199u) % vec3<u32>(32u)))));
}

