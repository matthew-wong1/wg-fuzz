struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(640f, -174f, -539f, 357f);

var<private> global1: array<bool, 23> = array<bool, 23>(false, false, false, false, false, true, false, false, true, false, false, true, false, true, true, true, true, true, false, false, false, false, false);

var<private> global2: Struct_1 = Struct_1(vec3<bool>(false, true, false), false);

var<private> global3: array<i32, 12>;

var<private> global4: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(4294967295u, 73309u), vec2<u32>(55710u, 0u), vec2<u32>(4294967295u, 13543u), vec2<u32>(0u, 0u), vec2<u32>(0u, 32653u), vec2<u32>(65210u, 19935u), vec2<u32>(0u, 12533u), vec2<u32>(49641u, 4294967295u), vec2<u32>(28424u, 4294967295u), vec2<u32>(0u, 11895u), vec2<u32>(16902u, 0u), vec2<u32>(49803u, 43526u), vec2<u32>(1u, 0u), vec2<u32>(0u, 0u), vec2<u32>(32634u, 22276u), vec2<u32>(1u, 1u), vec2<u32>(5152u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(14382u, 4294967295u), vec2<u32>(1u, 20175u), vec2<u32>(1u, 0u), vec2<u32>(5157u, 0u));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32, arg_1: f32) -> vec4<i32> {
    global2 = Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(56177u, 1u, arg_0, 9146u), vec4<u32>(0u, arg_0, 4294967295u, 63529u)), ~1u, any(vec3<bool>(global1[_wgslsmith_index_u32(arg_0, 23u)], global1[_wgslsmith_index_u32(u_input.b.x, 23u)], global2.a.x))), 23u)] || false, true, !any(select(global2.a.zx, global2.a.yx, global1[_wgslsmith_index_u32(arg_0, 23u)]))), true);
    var var_0 = reverseBits(_wgslsmith_sub_vec4_i32(abs(~vec4<i32>(20672i, 0i, global3[_wgslsmith_index_u32(1u, 12u)], u_input.a)) & (_wgslsmith_sub_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(38940u, 12u)], global3[_wgslsmith_index_u32(1u, 12u)], 41651i, -2147483647i), vec4<i32>(u_input.a, u_input.a, 35959i, global3[_wgslsmith_index_u32(37083u, 12u)])) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 1i, global3[_wgslsmith_index_u32(arg_0, 12u)], u_input.a), vec4<i32>(54862i, -4744i, -2147483647i, global3[_wgslsmith_index_u32(arg_0, 12u)]))), _wgslsmith_mult_vec4_i32(max(vec4<i32>(u_input.a, 6591i, -2147483647i, global3[_wgslsmith_index_u32(34817u, 12u)]) & vec4<i32>(0i, u_input.a, global3[_wgslsmith_index_u32(arg_0, 12u)], 2147483647i), vec4<i32>(2147483647i, -27096i, 18912i, -7777i)), vec4<i32>(-1i, -30840i, global3[_wgslsmith_index_u32(~1u, 12u)], -6009i))));
    var var_1 = global2.a.yz;
    let var_2 = Struct_1(!vec3<bool>(!global2.b, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b.ywy, u_input.b.yzz), firstTrailingBit(vec3<u32>(28925u, 506u, arg_0))), 23u)], !global2.a.x), !var_1.x);
    let var_3 = u_input.a;
    return -vec4<i32>(-53842i, 1i, ~min(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(69075u, 30909u), 12u)], global3[_wgslsmith_index_u32(~u_input.b.x, 12u)]), firstLeadingBit(_wgslsmith_sub_i32(-1i, 2147483647i)) | ((u_input.a & var_0.x) | ~2147483647i));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = arg_1;
    let var_1 = vec3<i32>(1i, global3[_wgslsmith_index_u32(0u, 12u)], ~_wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(u_input.b.x, 12u)], u_input.a, u_input.a) & vec3<i32>(global3[_wgslsmith_index_u32(u_input.b.x, 12u)], global3[_wgslsmith_index_u32(u_input.b.x, 12u)], u_input.a), max(vec3<i32>(1i, 23792i, u_input.a), vec3<i32>(u_input.a, u_input.a, -15527i))) ^ _wgslsmith_mult_i32(~(~u_input.a), firstLeadingBit(_wgslsmith_div_i32(-1i, global3[_wgslsmith_index_u32(u_input.b.x, 12u)]))));
    global4 = array<vec2<u32>, 24>();
    var var_2 = func_3(_wgslsmith_mult_u32(~47699u, firstLeadingBit(~(~u_input.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -1605f));
    var_2 = _wgslsmith_add_vec4_i32(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_div_i32(var_1.x, var_1.x), u_input.a, ~u_input.a, firstTrailingBit(12136i)), vec4<i32>(16321i, -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(40472i, 0i), vec2<i32>(2147483647i, var_1.x)), var_1.x))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(max(-55719i, 30137i), ~u_input.a), _wgslsmith_div_vec2_i32(~vec2<i32>(-1i, var_1.x), var_1.zx)), ~(-54254i), u_input.a, -26257i));
    return max(-2147483647i, var_2.x);
}

fn func_1(arg_0: f32) -> vec3<bool> {
    let var_0 = Struct_1(vec3<bool>(select(global2.a.x, !(!global2.b), false), u_input.a < (func_2(Struct_1(global2.a, global2.b), Struct_1(global2.a, global1[_wgslsmith_index_u32(u_input.b.x, 23u)])) << (~u_input.b.x % 32u)), any(global2.a.yx) & true), u_input.b.x >= _wgslsmith_sub_u32(1u, u_input.b.x));
    var var_1 = vec3<bool>(all(global2.a), global1[_wgslsmith_index_u32((19590u | u_input.b.x) >> (0u % 32u), 23u)], 1u <= ~firstTrailingBit(1u));
    var var_2 = Struct_1(vec3<bool>((false & global1[_wgslsmith_index_u32(u_input.b.x, 23u)]) != (2004i <= ~u_input.a), all(vec3<bool>(true, all(vec4<bool>(global2.b, var_1.x, global2.a.x, false)), var_1.x)), all(!(!vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 23u)])))), all(!var_0.a));
    let var_3 = var_0;
    var var_4 = Struct_1(vec3<bool>(all(vec3<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 23u)], var_0.b, true, var_1.x)), true | var_1.x, true)), true | ((true & var_0.a.x) || true), all(!var_0.a)), false);
    return !select(select(select(select(var_4.a, vec3<bool>(true, false, global1[_wgslsmith_index_u32(57275u, 23u)]), var_4.b), select(vec3<bool>(false, var_4.a.x, false), var_4.a, true), !vec3<bool>(global1[_wgslsmith_index_u32(49602u, 23u)], var_3.b, false)), select(vec3<bool>(var_1.x, true, false), select(global2.a, vec3<bool>(true, true, var_0.b), var_4.b), !vec3<bool>(var_1.x, true, global2.b)), u_input.a == u_input.a), var_0.a, var_3.a);
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_1(!select(!arg_0.a, arg_0.a, true), global1[_wgslsmith_index_u32(select(~(~27043u), ~_wgslsmith_div_u32(u_input.b.x << (u_input.b.x % 32u), 1u), 0i > (~u_input.a << (u_input.b.x % 32u))), 23u)]);
    let var_1 = Struct_1(func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(637f)))))), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -1115f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-946f))))).x);
    var var_2 = ~u_input.b.yzw;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), global0.x)) - _wgslsmith_f_op_f32(floor(-373f))) - _wgslsmith_f_op_f32(-global0.x));
    var var_4 = vec4<i32>(-_wgslsmith_mult_i32(_wgslsmith_div_i32(1582i, ~u_input.a), 0i), -29212i, 36565i, global3[_wgslsmith_index_u32(select((var_2.x << (var_2.x % 32u)) | 31628u, (u_input.b.x ^ u_input.b.x) >> (_wgslsmith_clamp_u32(u_input.b.x, var_2.x, u_input.b.x) % 32u), !all(arg_0.a.zz)), 12u)] >> (firstLeadingBit(var_2.x) % 32u));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~u_input.b.yyw & firstLeadingBit(~(~u_input.b.wzx)));
    var var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(-global3[_wgslsmith_index_u32(var_0.x, 12u)], min(~firstLeadingBit(1i), global3[_wgslsmith_index_u32(var_0.x, 12u)]), global3[_wgslsmith_index_u32(var_0.x, 12u)]), countOneBits(firstTrailingBit(~vec3<i32>(0i, global3[_wgslsmith_index_u32(u_input.b.x, 12u)], -16603i))));
    var var_2 = 1u;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(-global0.x)), vec4<f32>(_wgslsmith_div_f32(global0.x, -1000f), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-326f - -1238f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, _wgslsmith_f_op_f32(trunc(-413f))) - vec4<f32>(-981f, _wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(min(global0.x, global0.x))))));
    let var_3 = func_4(Struct_1(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-625f)))), global1[_wgslsmith_index_u32(u_input.b.x, 23u)]), global2.b);
    var var_4 = vec3<i32>(firstLeadingBit(_wgslsmith_div_i32(global3[_wgslsmith_index_u32(var_0.x << (var_0.x % 32u), 12u)], u_input.a)) >> (~var_0.x % 32u), _wgslsmith_add_i32(~(~_wgslsmith_mult_i32(var_1.x, var_1.x)), 1i), -1477i);
    let x = u_input.a;
    s_output = StorageBuffer(global0.x);
}

