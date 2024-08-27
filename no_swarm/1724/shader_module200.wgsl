struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<vec3<u32>, 12>;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(16510i, i32(-2147483648)), vec4<u32>(2870u, 10204u, 34442u, 4294967295u));

var<private> global2: vec2<f32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> vec2<i32> {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(-global2.x)), -1063f);
    let var_1 = (vec4<u32>(~4530u | u_input.a, _wgslsmith_sub_u32(global1.b.x ^ global1.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 27563u, 0u, 1u), vec4<u32>(46836u, u_input.a, u_input.a, global1.b.x))), firstLeadingBit(firstLeadingBit(global1.b.x)), reverseBits(4294967295u)) << (countOneBits(select(global1.b, vec4<u32>(1u, global1.b.x, u_input.a, 2313u), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), false))) % vec4<u32>(32u))) | vec4<u32>(global1.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.b.x, global1.b.x), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global1.b.x), vec2<u32>(u_input.a, u_input.a))), _wgslsmith_mult_u32(u_input.a, abs(countOneBits(4294967295u))), max(_wgslsmith_add_u32(u_input.a, ~global1.b.x), u_input.a));
    var var_2 = _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(276f + 1f)))));
    let var_3 = _wgslsmith_dot_vec3_u32(var_1.wzz, countOneBits(~_wgslsmith_sub_vec3_u32(global1.b.wxz, vec3<u32>(global1.b.x, 1u, 4294967295u)))) < global1.b.x;
    var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -347f))), var_0.x)));
    return ~(-vec2<i32>(-global1.a.x, -11212i));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> i32 {
    let var_0 = !arg_2.yy;
    global1 = arg_0;
    global1 = arg_1;
    global1 = Struct_1(_wgslsmith_clamp_vec2_i32(~(-global1.a), _wgslsmith_sub_vec2_i32(func_3(), arg_1.a), vec2<i32>(global1.a.x, ~arg_0.a.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(70878u, ~3464u, arg_0.b.x), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 58771u, u_input.a), arg_1.b.xzz) | vec3<u32>(46336u, 8558u, 7849u)), ~(~arg_1.b.x), _wgslsmith_mult_u32(_wgslsmith_div_u32(~1u, ~0u), ~(~34765u)), 4294967295u));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(994f, _wgslsmith_f_op_f32(max(global2.x, 1191f))), vec2<f32>(1302f, _wgslsmith_f_op_f32(trunc(global2.x))), var_0.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -105f), _wgslsmith_f_op_f32(abs(global2.x)))))));
    return abs(_wgslsmith_sub_i32(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.x, 23908i), vec2<i32>(arg_0.a.x, 2147483647i))), global1.a.x));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: i32, arg_3: vec2<f32>) -> f32 {
    global2 = arg_3;
    let var_0 = arg_1;
    global2 = arg_3;
    global0 = array<vec3<u32>, 12>();
    let var_1 = ~(~_wgslsmith_mult_vec4_u32(var_0.b, vec4<u32>(arg_0.x, 0u, global1.b.x, 52320u) >> (_wgslsmith_mod_vec4_u32(var_0.b, arg_1.b) % vec4<u32>(32u))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1086f))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<f32>) -> bool {
    global0 = array<vec3<u32>, 12>();
    global1 = arg_1;
    var var_0 = ~(~arg_1.b.x & 4294967295u);
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_div_i32(firstLeadingBit(global1.a.x), _wgslsmith_dot_vec3_i32(~(~vec3<i32>(arg_1.a.x, global1.a.x, arg_1.a.x)), -vec3<i32>(2147483647i, arg_1.a.x, 29369i))), arg_1.a.x);
    let var_2 = !vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * 133f)) != _wgslsmith_f_op_f32(f32(-1f) * -1209f), abs(0u) < _wgslsmith_div_u32(global1.b.x ^ 12324u, _wgslsmith_dot_vec3_u32(global1.b.ywy, vec3<u32>(0u, 18819u, global1.b.x))));
    return !all(var_2);
}

fn func_1() -> StorageBuffer {
    let var_0 = vec4<i32>(global1.a.x, 1i, 2147483647i, 9818i);
    var var_1 = vec3<bool>(true, func_5(vec4<f32>(global2.x, global2.x, global2.x, _wgslsmith_f_op_f32(func_4(vec3<u32>(4294967295u, global1.b.x, 1u), Struct_1(vec2<i32>(global1.a.x, var_0.x), global1.b), func_2(Struct_1(vec2<i32>(48474i, global1.a.x), global1.b), Struct_1(global1.a, vec4<u32>(u_input.a, 0u, 1u, 14455u)), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1203f, global2.x) + vec2<f32>(-1098f, -1022f))))), Struct_1(abs(vec2<i32>(var_0.x, 26969i)) | vec2<i32>(var_0.x, var_0.x), ~select(global1.b, global1.b, vec4<bool>(false, true, false, false))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(850f, 247f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)))))), !(!(!select(false, false, true))));
    var var_2 = _wgslsmith_mod_vec2_i32((~global1.a >> (~(~global1.b.yy) % vec2<u32>(32u))) << (vec2<u32>(global1.b.x, u_input.a) % vec2<u32>(32u)), vec2<i32>(countOneBits(select(33587i, 2147483647i, select(false, var_1.x, var_1.x))), _wgslsmith_dot_vec2_i32(var_0.yw, var_0.yx)));
    var var_3 = Struct_1(-_wgslsmith_clamp_vec2_i32(firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(global1.a.x, global1.a.x), var_0.xy)), _wgslsmith_add_vec2_i32(var_0.zx | var_0.wy, max(global1.a, vec2<i32>(2147483647i, global1.a.x))), _wgslsmith_add_vec2_i32(var_0.xz, -global1.a)), vec4<u32>(~u_input.a, global1.b.x, u_input.a, 4294967295u));
    var var_4 = 5856u;
    return StorageBuffer(_wgslsmith_f_op_f32(-global2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~(~global1.b.x) | firstLeadingBit(7324u)));
    let x = u_input.a;
    s_output = func_1();
}

