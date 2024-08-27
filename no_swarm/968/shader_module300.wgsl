struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 19> = array<bool, 19>(false, true, true, true, true, false, true, false, true, true, false, true, false, true, true, true, true, false, true);

var<private> global2: bool = true;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global2 = 94615u == ~firstTrailingBit(firstTrailingBit(arg_1.a.x));
    let var_0 = Struct_1(vec2<u32>(arg_0.a.x, abs(73120u)), 1i, arg_0.c);
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-851f, arg_1.c, 485f), vec3<f32>(arg_2.c, arg_0.c, var_0.c))) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c, -126f, -346f), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, var_0.c, global0.c), vec3<f32>(var_0.c, 1566f, -314f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) + _wgslsmith_f_op_f32(f32(-1f) * -982f)) + 322f), _wgslsmith_div_f32(arg_1.c, 792f), 235f)));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1421f, 1400f, _wgslsmith_f_op_f32(var_0.c * var_1.x)));
    var var_2 = 27985u;
    return _wgslsmith_clamp_i32(~(-52032i), -48305i, _wgslsmith_mod_i32(select(0i, ~(-1i ^ global0.b), !(!global1[_wgslsmith_index_u32(85404u, 19u)])), _wgslsmith_dot_vec2_i32(u_input.a.xy, -u_input.a.wz)));
}

fn func_3() -> bool {
    let var_0 = Struct_1(min(~reverseBits(firstTrailingBit(u_input.b.xz)), ~select(global0.a, vec2<u32>(45247u, global0.a.x) ^ global0.a, !global1[_wgslsmith_index_u32(global0.a.x, 19u)])), -1i & ~_wgslsmith_add_i32(u_input.c, select(-1i, u_input.c, global1[_wgslsmith_index_u32(0u, 19u)])), _wgslsmith_f_op_f32(_wgslsmith_div_f32(505f, -344f) - global0.c));
    global2 = true;
    let var_1 = var_0;
    global2 = !any(!select(!vec2<bool>(global1[_wgslsmith_index_u32(global0.a.x, 19u)], false), !vec2<bool>(false, global1[_wgslsmith_index_u32(var_0.a.x, 19u)]), any(vec2<bool>(false, global1[_wgslsmith_index_u32(var_1.a.x, 19u)]))));
    var var_2 = ~abs(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a.zxy, vec3<i32>(var_0.b, u_input.c, global0.b) << (vec3<u32>(u_input.b.x, 1u, 20446u) % vec3<u32>(32u))), u_input.a.xwz));
    return false;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: bool) -> vec3<bool> {
    let var_0 = arg_3;
    global0 = arg_1;
    global2 = -17903i <= func_2(Struct_1(abs(global0.a & global0.a), 0i, global0.c), arg_1, arg_1);
    var var_1 = Struct_1(vec2<u32>(countOneBits(~(~1u)), ~7993u), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(arg_2, max(_wgslsmith_add_vec4_i32(u_input.a, u_input.a), -vec4<i32>(arg_1.b, arg_1.b, arg_2.x, global0.b))), i32(-1i) * -u_input.c), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1653f), global0.c))));
    global1 = array<bool, 19>();
    return select(vec3<bool>(!var_0, any(vec3<bool>(arg_3, any(vec2<bool>(var_0, true)), var_0)), arg_3), select(vec3<bool>(true, false, var_0), !(!(!vec3<bool>(arg_3, false, true))), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.b.x, 19u)]), vec3<bool>(false, var_0, false), vec3<bool>(var_0, true, var_0)), vec3<bool>(arg_3, global1[_wgslsmith_index_u32(global0.a.x, 19u)], true))), func_3());
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: u32, arg_3: u32) -> Struct_1 {
    global1 = array<bool, 19>();
    global0 = Struct_1(vec2<u32>(global0.a.x, u_input.b.x), 37397i, -733f);
    global1 = array<bool, 19>();
    global1 = array<bool, 19>();
    global1 = array<bool, 19>();
    return Struct_1(vec2<u32>(~_wgslsmith_sub_u32(arg_2, arg_3), arg_2), _wgslsmith_dot_vec2_i32(~u_input.a.xw, u_input.a.zz), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-126f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-939f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = true;
    global1 = array<bool, 19>();
    global0 = func_4(select(vec2<bool>(false, true), !vec2<bool>(global1[_wgslsmith_index_u32(~global0.a.x, 19u)], any(vec3<bool>(global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(u_input.b.x, 19u)], true))), !any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], global1[_wgslsmith_index_u32(15834u, 19u)]))), !(!func_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-825f, 541f), vec2<f32>(global0.c, 1518f))), Struct_1(vec2<u32>(0u, 15851u), global0.b, global0.c), u_input.a, u_input.c > 0i)), ~(~_wgslsmith_clamp_u32(u_input.b.x, 84828u, 4294967295u) | 1u), reverseBits(~_wgslsmith_mult_u32(~23257u, 0u)));
    global0 = Struct_1(~(vec2<u32>(_wgslsmith_mod_u32(8490u, 4294967295u), _wgslsmith_dot_vec3_u32(u_input.b, u_input.b)) ^ global0.a), select(-1i, global0.b, true), 651f);
    let var_0 = select(!(!vec4<bool>(global0.b < -65150i, false, !global1[_wgslsmith_index_u32(33358u, 19u)], true)), !(!vec4<bool>(true, true, false || global1[_wgslsmith_index_u32(global0.a.x, 19u)], true)), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -958f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c * 937f))) && global1[_wgslsmith_index_u32(global0.a.x, 19u)]);
    let var_1 = select(vec4<i32>(global0.b, _wgslsmith_div_i32(u_input.c ^ -global0.b, u_input.c), reverseBits(-15013i | u_input.c), ~(-global0.b & global0.b)), -u_input.a, var_0);
    var var_2 = countOneBits(reverseBits(select(vec4<u32>(2969u, u_input.b.x, 26122u, global0.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.a.x, u_input.b.x, 70556u, 0u), vec4<u32>(global0.a.x, global0.a.x, global0.a.x, u_input.b.x)), global1[_wgslsmith_index_u32(11953u, 19u)] && true)) & ~(_wgslsmith_div_vec4_u32(vec4<u32>(global0.a.x, 30304u, 0u, global0.a.x), vec4<u32>(global0.a.x, 0u, u_input.b.x, 1u)) ^ select(vec4<u32>(27452u, 4294967295u, 31967u, 24125u), vec4<u32>(0u, u_input.b.x, 1u, 16464u), global1[_wgslsmith_index_u32(45161u, 19u)])));
    global0 = func_4(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, global0.c) + vec2<f32>(856f, 1206f)))), Struct_1(firstLeadingBit(global0.a), var_1.x, -1430f), -(var_1 & vec4<i32>(var_1.x, 2147483647i, -1i, var_1.x)), !all(vec3<bool>(global1[_wgslsmith_index_u32(global0.a.x, 19u)], false, false))).yz, select(var_0.xyy, vec3<bool>(~u_input.b.x > var_2.x, var_0.x, any(var_0)), select(select(!vec3<bool>(true, false, var_0.x), !vec3<bool>(global1[_wgslsmith_index_u32(1u, 19u)], true, global1[_wgslsmith_index_u32(28000u, 19u)]), all(vec3<bool>(true, var_0.x, true))), var_0.xxx, select(var_0.wwy, var_0.zyy, !var_0.xwy))), _wgslsmith_dot_vec3_u32(vec3<u32>(~global0.a.x ^ ~var_2.x, countOneBits(firstLeadingBit(global0.a.x)), _wgslsmith_dot_vec2_u32(global0.a, ~global0.a)), vec3<u32>(~firstLeadingBit(global0.a.x), var_2.x, 1u)), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1002f))), _wgslsmith_f_op_f32(-func_4(vec2<bool>(var_0.x, true), var_0.zwz, u_input.b.x, u_input.b.x).c)), _wgslsmith_f_op_f32(-global0.c)));
}

