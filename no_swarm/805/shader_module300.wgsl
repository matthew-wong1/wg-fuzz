struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(425f, -1324f, 828f, -1311f), vec4<f32>(619f, -1000f, -566f, -1423f), vec4<f32>(-465f, 233f, -1000f, 454f), vec4<f32>(-2178f, -658f, -776f, -614f), vec4<f32>(190f, -412f, 1319f, 576f), vec4<f32>(1380f, -797f, -119f, 1364f), vec4<f32>(138f, 1361f, -653f, -297f), vec4<f32>(-518f, 1246f, 243f, -663f), vec4<f32>(-1172f, 135f, 185f, -1477f), vec4<f32>(233f, 188f, 316f, -1498f), vec4<f32>(-620f, 845f, -856f, 234f), vec4<f32>(-357f, -245f, 470f, -829f));

var<private> global1: vec4<bool>;

var<private> global2: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(17485i, -1i), vec2<i32>(-50576i, -121i), vec2<i32>(2147483647i, 2263i), vec2<i32>(0i, 3917i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-1i, -1i), vec2<i32>(i32(-2147483648), 31474i), vec2<i32>(-32794i, -8801i), vec2<i32>(10603i, 6884i), vec2<i32>(-1i, -36571i), vec2<i32>(-24050i, -1i), vec2<i32>(-8341i, 0i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(1i, -22592i));

var<private> global3: vec4<bool>;

var<private> global4: vec3<f32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    global4 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global4.x, 906f, _wgslsmith_f_op_f32(global4.x * global4.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-441f, global4.x, -1197f)))))))));
    var var_0 = -2566i;
    var_0 = 2147483647i;
    let var_1 = u_input.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global4.zx - _wgslsmith_f_op_vec2_f32(global4.xz * global4.xx))) - global4.xy) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(680f, -1452f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-301f, global4.x) + vec2<f32>(-1257f, global4.x)), _wgslsmith_div_vec2_f32(global4.yy, global4.yx))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_2.x)), _wgslsmith_f_op_f32(var_2.x * 1000f));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_4 {
    let var_0 = arg_0;
    let var_1 = Struct_3(-_wgslsmith_div_vec2_i32(global2[_wgslsmith_index_u32(95056u, 14u)], firstTrailingBit(vec2<i32>(1i, u_input.b))), arg_2, _wgslsmith_mult_vec4_i32(max(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(0i, arg_0.x, arg_0.x, 2147483647i)), -vec4<i32>(u_input.b, 16005i, arg_0.x, var_0.x)), select(vec4<i32>(arg_0.x, 0i, -2147483647i, arg_0.x), vec4<i32>(u_input.b, var_0.x, arg_0.x, 30757i) & vec4<i32>(-22520i, var_0.x, -58714i, -1i), !arg_2.a)), vec4<i32>(_wgslsmith_add_i32(arg_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(23482i, arg_0.x), vec2<i32>(-74222i, 2147483647i))), u_input.b, min(~6920i, ~arg_0.x), ~u_input.b ^ arg_0.x)), vec4<i32>(abs(arg_0.x), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-16017i, 20805i, var_0.x, -58621i) | vec4<i32>(var_0.x, arg_0.x, 0i, 43090i), abs(vec4<i32>(-34948i, 2147483647i, -5500i, -966i))), firstTrailingBit(i32(-1i) * -u_input.b), -(-1i | var_0.x) << (_wgslsmith_clamp_u32(u_input.a.x, ~28181u, _wgslsmith_sub_u32(u_input.a.x, arg_1)) % 32u)), arg_1);
    let var_2 = Struct_1(var_1.b.a, _wgslsmith_div_vec3_f32(vec3<f32>(global4.x, var_1.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2279f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(914f, var_1.b.b.x, global4.x), arg_3.xyy)), vec3<f32>(-712f, -184f, -391f), select(vec3<bool>(false, var_1.b.a.x, true), global1.wxw, vec3<bool>(true, arg_2.a.x, var_1.b.a.x)))) + arg_2.b)));
    let var_3 = var_1.b.a.x == true;
    return Struct_4(arg_2.b);
}

fn func_1(arg_0: i32) -> bool {
    global3 = !(!select(!select(vec4<bool>(global1.x, true, global3.x, false), vec4<bool>(global1.x, true, global3.x, true), vec4<bool>(true, true, global1.x, false)), vec4<bool>(any(global3.yyx), true, global3.x, global3.x), true));
    var var_0 = func_3(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~4294967295u, _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 26933u, 1u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 0u)), select(max(vec4<u32>(1u, u_input.a.x, 38254u, 4294967295u), vec4<u32>(0u, 4294967295u, u_input.a.x, u_input.a.x)), firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 23327u)), true))), 14u)], u_input.a.x, Struct_1(vec4<bool>(_wgslsmith_add_u32(30816u, 29944u) >= u_input.a.x, !(-215f >= global4.x), global3.x, u_input.a.x <= _wgslsmith_add_u32(4294967295u, u_input.a.x)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-897f, _wgslsmith_div_f32(1769f, global4.x), global4.x)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-417f - 364f), _wgslsmith_f_op_f32(func_2(vec2<bool>(false, global3.x))), _wgslsmith_f_op_f32(-global4.x), 469f)), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(1u, 12u)]))));
    global3 = vec4<bool>(select(true, false, !(global4.x > -130f)), true, all(!select(global3.xyy, vec3<bool>(true, global3.x, true), vec3<bool>(true, global1.x, global3.x))), !(false | any(vec4<bool>(false, global3.x, true, true))));
    global3 = !vec4<bool>(true, !all(!vec2<bool>(global3.x, global1.x)), any(select(!vec3<bool>(global1.x, global3.x, global1.x), global3.xzz, !vec3<bool>(global1.x, global3.x, true))), global3.x);
    global2 = array<vec2<i32>, 14>();
    return !(global3.x | false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1275i;
    global3 = !vec4<bool>(global1.x, select(false, any(!vec4<bool>(global1.x, global3.x, global1.x, global3.x)), u_input.a.x != 1u), !(!func_1(u_input.b)), false);
    let var_1 = ~firstLeadingBit(~(~abs(vec3<u32>(1u, 0u, u_input.a.x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global4.x, global4.x, _wgslsmith_f_op_f32(-global4.x)))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-655f, -1472f, -984f) + vec3<f32>(global4.x, 468f, global4.x)))))));
    var var_3 = u_input.a.x;
    var_0 = -min(_wgslsmith_mod_i32(u_input.b, 24190i), -u_input.b);
    let var_4 = max(abs(vec4<i32>(_wgslsmith_sub_i32(1i, -1i << (u_input.a.x % 32u)), 1i, _wgslsmith_clamp_i32(~(-54278i), -u_input.b, 22131i), -_wgslsmith_mod_i32(1i, 29427i))), vec4<i32>(_wgslsmith_mult_i32(reverseBits(u_input.b), -u_input.b) << (~4294967295u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(abs(u_input.b), u_input.b), select(~vec2<i32>(-2147483647i, 2147483647i), global2[_wgslsmith_index_u32(min(var_1.x, 83255u), 14u)], global4.x > -1000f)), ~_wgslsmith_mult_i32(u_input.b, firstLeadingBit(2147483647i)), firstTrailingBit(-_wgslsmith_div_i32(15390i, u_input.b))));
    var var_5 = ~u_input.a.x;
    let var_6 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mod_u32(27363u, 4294967295u)), ~countOneBits(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-48776i, u_input.b, var_4.x, u_input.b), vec4<i32>(-48016i, -2147483647i, -25637i, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, var_4.x, -2147483647i, var_4.x), var_4))));
}

