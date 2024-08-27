struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(1127f, -1687f));

var<private> global2: vec3<i32>;

var<private> global3: Struct_1 = Struct_1(vec2<f32>(-1276f, 539f));

var<private> global4: array<Struct_1, 14>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> i32 {
    let var_0 = u_input.c;
    global2 = vec3<i32>(min(global2.x, _wgslsmith_mult_i32(u_input.e, ~(-25656i))), -(firstTrailingBit(_wgslsmith_clamp_i32(24393i, u_input.e, global2.x)) ^ 2147483647i), global2.x);
    return _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), global2.zy);
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    let var_0 = ~_wgslsmith_div_u32(6474u, u_input.b.x);
    var var_1 = true;
    var var_2 = Struct_1(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-global1.a.x)));
    var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-478f + 1493f), global0.x)), global0.x))));
    let var_3 = global4[_wgslsmith_index_u32(~(~19754u), 14u)];
    return arg_0.x | countOneBits(func_3());
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = func_2(firstLeadingBit(~(vec3<i32>(24530i, global2.x, 1i) << (vec3<u32>(34778u, 489u, 58210u) % vec3<u32>(32u)))) & _wgslsmith_mod_vec3_i32(-vec3<i32>(2147483647i, u_input.e, 17800i), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, global2.x, u_input.a), vec3<i32>(u_input.e, global2.x, global2.x)), max(vec3<i32>(75363i, u_input.a, global2.x), vec3<i32>(u_input.a, 16994i, u_input.a)), vec3<i32>(u_input.e, -40193i, -2147483647i) & vec3<i32>(21366i, u_input.a, 0i))));
    return vec2<bool>(-(0i & var_0) <= u_input.e, true);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1447f, -583f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.a.x - global0.x), -1658f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-3068f + global3.a.x), _wgslsmith_f_op_f32(global0.x - 253f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, global0.x, arg_2.a.x)))))))));
    var var_1 = 38617i ^ global2.x;
    let var_2 = reverseBits(u_input.c.wx);
    var var_3 = Struct_1(global0.xx);
    global1 = arg_2;
    return all(!(!vec4<bool>(select(false, arg_1.x, true), arg_2.a.x <= 212f, false, !arg_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(func_4(~u_input.c.xyw, func_1(global4[_wgslsmith_index_u32(u_input.b.x, 14u)], u_input.c, Struct_1(vec2<f32>(-683f, global3.a.x))), global4[_wgslsmith_index_u32(2452u, 14u)], select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false))) && all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true))), all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false)) != true, true);
    global1 = global4[_wgslsmith_index_u32(min(firstTrailingBit(select(0u, _wgslsmith_div_u32(87554u, ~6700u), true)), max(u_input.c.x, u_input.c.x)), 14u)];
    let var_1 = select(var_0, var_0, !var_0);
    global2 = abs(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, -50415i, 30433i, u_input.e), vec4<i32>(u_input.e, global2.x, -356i, -36787i)), 1i, -1i | global2.x) | u_input.a, ~global2.x, 40206i));
    let var_2 = _wgslsmith_f_op_f32(max(-682f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -731f), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) - -215f))))));
    global1 = global4[_wgslsmith_index_u32(~35030u, 14u)];
    global4 = array<Struct_1, 14>();
    let var_3 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_sub_u32(u_input.d, u_input.d), vec4<i32>(6125i, abs(-2147483647i), ~u_input.e, select(_wgslsmith_div_i32(6820i, ~(-32188i)), func_2(vec3<i32>(-30637i, 2977i, -1i)), var_1.x)));
}

