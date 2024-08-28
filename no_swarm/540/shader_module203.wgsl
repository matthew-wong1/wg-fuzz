struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-25757i, i32(-2147483648), 15222i);

var<private> global1: u32;

var<private> global2: vec3<bool>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec3<u32>, arg_3: vec4<u32>) -> f32 {
    global2 = vec3<bool>(true, true, 5780u > abs(_wgslsmith_dot_vec3_u32(vec3<u32>(18524u, 42174u, arg_2.x), arg_2)));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1461f, -1784f, true))), 651f)), _wgslsmith_f_op_f32(-1f))));
    var var_1 = vec3<u32>(arg_1.x, reverseBits(abs(_wgslsmith_div_u32(u_input.b.x, arg_2.x)) ^ 1u), _wgslsmith_add_u32(0u, 1u));
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, var_0), vec2<f32>(1023f, 1181f), arg_0))))))));
    global2 = select(select(select(vec3<bool>(all(vec4<bool>(false, true, global2.x, true)), all(vec4<bool>(false, global2.x, false, false)), false), select(select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(false, false, global2.x)), vec3<bool>(false, global2.x, arg_0.x), arg_0.x), !(!vec3<bool>(arg_0.x, arg_0.x, true))), !vec3<bool>(arg_0.x, false, arg_0.x), false), vec3<bool>(~1u < (arg_3.x ^ _wgslsmith_mod_u32(arg_1.x, arg_1.x)), all(select(vec4<bool>(global2.x, global2.x, false, global2.x), !vec4<bool>(true, true, true, arg_0.x), !vec4<bool>(true, true, true, arg_0.x))), all(vec2<bool>(all(vec2<bool>(global2.x, global2.x)), var_1.x >= u_input.d.x))), all(vec2<bool>(true, true)));
    return var_0;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: u32) -> vec2<f32> {
    var var_0 = Struct_1(false);
    var var_1 = Struct_3(Struct_2(659f, _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(arg_1.x, global0.x), _wgslsmith_clamp_i32(global0.x, -7502i, 113466i), global0.x), _wgslsmith_div_i32(-10423i, -27024i))), Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(111f * 454f))))), _wgslsmith_sub_i32(1i, ~8081i)), Struct_1(false));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(global2.yz, u_input.b, vec3<u32>(1u, arg_2, 23021u), u_input.b)), _wgslsmith_f_op_f32(max(var_1.a.a, var_1.a.a)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1503f))))), -531f);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3) -> Struct_1 {
    var var_0 = 0u;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.a), 1826f)));
    let var_2 = -1328f;
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(!vec3<bool>(true, false, all(vec4<bool>(false, true, false, false))), global0.yz, u_input.b.x)));
    let var_3 = Struct_1(global2.x);
    return arg_0.c;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> vec3<i32> {
    let var_0 = ~select(vec2<u32>(u_input.d.x, u_input.c) & arg_0.yw, _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.x, u_input.c), ~u_input.b.xz) & arg_0.xy, global2.x);
    let var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(max(~firstTrailingBit(vec3<u32>(arg_0.x, u_input.a, 11417u)), select(select(vec3<u32>(arg_0.x, 0u, u_input.b.x), vec3<u32>(var_0.x, u_input.d.x, 0u), false), abs(arg_0.yzz), vec3<bool>(arg_1.a, arg_1.a, global2.x))), ~(u_input.d & u_input.b.yyy)), ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 34602u, 11954u), u_input.d), _wgslsmith_dot_vec3_u32(arg_0.zyz, u_input.b.zyz), arg_0.x));
    let var_2 = countOneBits(-9913i);
    global1 = 73580u;
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2840f, 461f))) * -1133f), arg_3, true));
    return -_wgslsmith_mult_vec3_i32(~vec3<i32>(arg_2.b, -1i, 3132i) >> (u_input.d % vec3<u32>(32u)), countOneBits(vec3<i32>(1i, 2147483647i, 18344i) | ~vec3<i32>(-24224i, var_2, global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global0 = firstTrailingBit(-reverseBits(func_4(_wgslsmith_mod_vec4_u32(u_input.b, u_input.b), func_1(Struct_3(Struct_2(-291f, -30957i), Struct_2(1000f, global0.x), Struct_1(true)), Struct_3(Struct_2(445f, global0.x), Struct_2(-2323f, -8967i), Struct_1(true))), Struct_2(1551f, global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1023f))));
    var_0 = global2.x;
    global0 = vec3<i32>(1i, -1i, global0.x & 0i) ^ ~_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(global0.x, global0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(25545i, 0i, global0.x), vec3<i32>(global0.x, global0.x, global0.x)), _wgslsmith_clamp_i32(global0.x, 4915i, 0i)), _wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, 27690i, -2147483647i), ~vec3<i32>(global0.x, -22107i, global0.x)), vec3<i32>(_wgslsmith_dot_vec2_i32(global0.xx, vec2<i32>(-45328i, 1i)), global0.x, ~42512i));
    var_0 = 0i > -global0.x;
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(493f + _wgslsmith_div_f32(1000f, 1946f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(892f + 507f) * _wgslsmith_f_op_f32(abs(1000f))), 866f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(123f, 636f, -1974f), vec3<f32>(645f, -1533f, 494f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -164f, -1408f)))) - vec3<f32>(1f, 1f, 1f)) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1445f, 1201f, -1439f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-173f, -380f, 177f) + vec3<f32>(-123f, -814f, -103f))), vec3<f32>(1f, 1f, 1f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(-870f, _wgslsmith_f_op_f32(f32(-1f) * -849f))), global0.x, u_input.c, abs(firstLeadingBit(reverseBits(~u_input.b.yy))), 55499u);
}

