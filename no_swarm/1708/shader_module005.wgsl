struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(-455i, 0i, 0i, 19400i, i32(-2147483648), 1i, -28327i, 27793i, 24228i, 1i, 0i, 0i, 0i, 46503i, 1i, -1i, -1i, 2147483647i, 0i, -51291i, 0i, 1i, -35058i, -14335i, -1i, 2147483647i, -32723i, -1i, 2147483647i);

var<private> global1: i32;

var<private> global2: u32 = 0u;

var<private> global3: array<u32, 23>;

var<private> global4: f32 = -2806f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_2(vec3<bool>(true, true, true), vec4<f32>(-781f, _wgslsmith_f_op_f32(max(1f, 439f)), -947f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1413f))), ~(min(vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(94315u, 29u)]), u_input.a.xx) >> (_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(24486u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(32525u, 23u)], 23u)], 23u)]), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)], 4294967295u)), vec2<u32>(2995u, global3[_wgslsmith_index_u32(4294967295u, 23u)])) % vec2<u32>(32u))));
    var var_1 = ~47443u;
    global0 = array<i32, 29>();
    global3 = array<u32, 23>();
    let var_2 = Struct_1(vec4<u32>(1u, global3[_wgslsmith_index_u32(78222u, 23u)], ~(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~92334u, 23u)], 23u)], 23u)] << (~global3[_wgslsmith_index_u32(0u, 23u)] % 32u)), ~(max(4294967295u, global3[_wgslsmith_index_u32(2058u, 23u)]) << (_wgslsmith_div_u32(1u, 12377u) % 32u))), -363f);
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b * var_0.b)), var_0.b))))));
}

fn func_2() -> f32 {
    global4 = _wgslsmith_f_op_f32(-1332f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, 895f, true)) - _wgslsmith_f_op_f32(select(-322f, _wgslsmith_f_op_f32(round(-354f)), true)))));
    var var_0 = Struct_1(_wgslsmith_sub_vec4_u32(min(~(vec4<u32>(0u, global3[_wgslsmith_index_u32(4699u, 23u)], global3[_wgslsmith_index_u32(4294967295u, 23u)], 29910u) | vec4<u32>(1u, global3[_wgslsmith_index_u32(60128u, 23u)], 15273u, global3[_wgslsmith_index_u32(1u, 23u)])), ~vec4<u32>(29222u, 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 23u)], 23u)], 23u)])), vec4<u32>(firstLeadingBit(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(45837u, 23u)], 23u)]), ~global3[_wgslsmith_index_u32(70768u, 23u)] | (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(30738u, 23u)], 23u)], 23u)] << (15185u % 32u)), 44645u, global3[_wgslsmith_index_u32(min(countOneBits(27775u), global3[_wgslsmith_index_u32(1u, 23u)]), 23u)])), -867f);
    global2 = min(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(23340u, 23u)], var_0.a.x), ~95583u);
    var var_1 = _wgslsmith_f_op_vec4_f32(func_3());
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-168f - 516f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.x, var_0.b))), -309f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))))));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(vec3<bool>(all(vec4<bool>(true, true, any(vec3<bool>(false, true, true)), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1237f, 1000f)) * _wgslsmith_f_op_f32(round(-608f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1867f))), !all(vec4<bool>(true, true, true, false))), vec4<f32>(-345f, 1f, 675f, 579f), u_input.a.yz);
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(-860f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.x), 543f, false || var_0.a.x))), var_0.b.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -228f) - _wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(-var_0.b.x), 238f));
    let var_2 = Struct_1(countOneBits(~vec4<u32>(64268u, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25106u, 23u)], 23u)], firstTrailingBit(59545u), max(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(37117u, 23u)], 23u)], 23u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)], 23u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(var_1.x - var_0.b.x))))));
    global2 = ~0u;
    let var_3 = countOneBits(u_input.a);
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32, arg_3: vec2<bool>) -> bool {
    let var_0 = ~(-2147483647i);
    global0 = array<i32, 29>();
    var var_1 = Struct_2(select(select(!vec3<bool>(arg_3.x, arg_3.x, true), select(select(vec3<bool>(false, true, arg_3.x), vec3<bool>(arg_3.x, false, arg_3.x), vec3<bool>(arg_3.x, true, arg_3.x)), select(vec3<bool>(arg_3.x, false, arg_3.x), vec3<bool>(arg_3.x, true, true), false), !vec3<bool>(false, true, arg_3.x)), arg_3.x), vec3<bool>(!(!arg_3.x), true, 4294967295u == _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_2, 13312u), arg_0.a.yzy)), all(vec4<bool>(all(vec3<bool>(true, false, true)), true, arg_0.b > -328f, true))), vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1.x)), arg_1.x, 228f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_0.b, 126f))))), vec2<i32>(reverseBits(_wgslsmith_dot_vec3_i32(u_input.a.xzw, u_input.a.xxx) << ((4294967295u | global3[_wgslsmith_index_u32(arg_0.a.x, 23u)]) % 32u)), -reverseBits(_wgslsmith_mult_i32(u_input.a.x, global0[_wgslsmith_index_u32(arg_0.a.x, 29u)]))));
    var var_2 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(-min(-2147483647i, -5i), max(1i, 1i)) | ~var_1.c.x, 38262i);
    var var_3 = Struct_2(vec3<bool>(false, all(var_1.a), all(var_1.a.yz)), _wgslsmith_f_op_vec4_f32(max(var_1.b, vec4<f32>(-671f, _wgslsmith_f_op_f32(step(728f, _wgslsmith_f_op_f32(-190f + arg_1.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-230f, arg_1.x, var_1.a.x)), 317f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.x)))))), firstLeadingBit(var_1.c));
    return false;
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<bool>) -> vec2<bool> {
    var var_0 = Struct_2(arg_1.yzz, _wgslsmith_f_op_vec4_f32(vec4<f32>(-518f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(481f - -532f)), _wgslsmith_f_op_f32(-123f * _wgslsmith_div_f32(-574f, -562f)), -394f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 610f, -903f, -1516f), vec4<f32>(-167f, -918f, 656f, -452f))))), arg_0.yx);
    let var_1 = 1u;
    var var_2 = abs(~_wgslsmith_div_vec3_u32(vec3<u32>(51719u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 0u, 21161u), vec4<u32>(4294967295u, 31315u, var_1, var_1))), vec3<u32>(4294967295u, func_1().a.x, reverseBits(var_1))));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -127f);
    var var_4 = vec3<bool>(true, var_0.b.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x), var_0.a.x && true);
    return select(!(!(!var_4.yx)), select(!vec2<bool>(select(true, arg_1.x, arg_1.x), true), var_0.a.yz, any(arg_1)), select(arg_1.yx, var_4.yz, !(4042u >= global3[_wgslsmith_index_u32(var_1, 23u)]) || false));
}

fn func_6(arg_0: vec4<bool>, arg_1: f32, arg_2: i32, arg_3: vec2<bool>) -> Struct_2 {
    return Struct_2(select(vec3<bool>(true, true, u_input.a.x < 55803i), vec3<bool>(true, func_5(u_input.a.wxz, arg_0).x || true, true), vec3<bool>(arg_3.x != all(arg_0.yyw), false, any(arg_0.xyz) | false)), vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1)), arg_1, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -203f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(step(1298f, arg_1))))), vec2<i32>(i32(-1i) * -(arg_2 << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(45074u, 23u)], 23u)], 23u)], 23u)] % 32u)), global0[_wgslsmith_index_u32(~1u, 29u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(vec4<bool>(any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), false)) | true, false, (true & all(vec3<bool>(true, false, false))) & any(vec3<bool>(true, true, true)), select(all(vec4<bool>(true, true, true, true)), any(vec2<bool>(false, true)) != true, false)), 192f, _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(17379i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(357u, 23u)], 23u)], 23u)], 29u)]), -32348i), -global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(0u, 23u)], 1u, 35481u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(18797u, 23u)], 23u)], 23u)]), vec4<u32>(global3[_wgslsmith_index_u32(0u, 23u)], 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)], global3[_wgslsmith_index_u32(2758u, 23u)])), 29u)]), func_5(~(-abs(vec3<i32>(1i, u_input.a.x, 31587i))), vec4<bool>(true, any(vec2<bool>(true, true)), func_4(func_1(), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(450f, 246f, 1764f))), max(4294967295u, global3[_wgslsmith_index_u32(0u, 23u)]), vec2<bool>(true, true)), false)));
    var var_1 = func_5(vec3<i32>(min(1i, -u_input.a.x), ~(min(var_0.c.x, 1i) ^ u_input.a.x), var_0.c.x), select(!(!(!vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x))), !(!vec4<bool>(true, var_0.a.x, false, var_0.a.x)), var_0.a.x & !(!var_0.a.x)));
    let var_2 = !any(!vec4<bool>(all(vec2<bool>(var_1.x, false)), !var_0.a.x, var_1.x, 4294967295u == global3[_wgslsmith_index_u32(0u, 23u)]));
    var var_3 = func_1();
    var var_4 = _wgslsmith_mod_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(firstLeadingBit(~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_3.a.wzz, var_3.a.yzz), 23u)]), 23u)], 29u)], 0i, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(4294967295u, 23u)], var_3.a.x)), 15225u, var_3.a.x), 29u)], _wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(u_input.a.xx, var_0.c), vec2<i32>(select(global0[_wgslsmith_index_u32(12242u, 29u)], global0[_wgslsmith_index_u32(50358u, 29u)], true), u_input.a.x))), u_input.a);
    var var_5 = _wgslsmith_f_op_vec4_f32(-var_0.b);
    let var_6 = var_5.zwx;
    global3 = array<u32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.a.x), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, var_0.b.x))))))), _wgslsmith_mod_u32(16235u, 34669u));
}

