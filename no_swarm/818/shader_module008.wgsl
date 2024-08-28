struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10>;

var<private> global1: array<vec3<i32>, 2>;

var<private> global2: Struct_2 = Struct_2(45188u);

var<private> global3: Struct_1 = Struct_1(true);

var<private> global4: u32 = 37974u;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: bool) -> bool {
    var var_0 = _wgslsmith_mod_i32(2320i, ~u_input.e.x);
    global2 = Struct_2(0u);
    var var_1 = ~(~firstTrailingBit(0u));
    global2 = arg_1;
    let var_2 = max(max(arg_0.x, ~2147483647i) << (4294967295u % 32u), -27830i) | u_input.e.x;
    return select(arg_2, (!global3.a && global3.a) || all(select(select(vec4<bool>(true, global3.a, arg_2, true), vec4<bool>(false, true, false, true), false), select(vec4<bool>(true, global3.a, true, arg_2), vec4<bool>(global3.a, arg_2, arg_2, global3.a), vec4<bool>(global3.a, global3.a, true, false)), vec4<bool>(false, false, true, false))), any(select(vec3<bool>(arg_2 & false, true, any(vec4<bool>(global3.a, arg_2, true, global3.a))), select(!vec3<bool>(true, false, arg_2), vec3<bool>(true, true, true), !vec3<bool>(true, global3.a, global3.a)), false && arg_2)));
}

fn func_2() -> Struct_1 {
    return Struct_1(any(vec3<bool>(global3.a, func_3(-vec2<i32>(-35560i, u_input.b), Struct_2(global2.a), true), false)));
}

fn func_1() -> Struct_3 {
    let var_0 = 2147483647i ^ _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.a, u_input.c.x), -select(abs(-49765i), -u_input.e.x, false));
    var var_1 = func_2();
    let var_2 = func_2();
    var var_3 = global0[_wgslsmith_index_u32(~global2.a, 10u)];
    var var_4 = Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(70709u, global2.a, global2.a) >> (vec3<u32>(firstTrailingBit(1u), countOneBits(global2.a), ~global2.a) % vec3<u32>(32u)), ~(~(vec3<u32>(global2.a, global2.a, 86410u) & vec3<u32>(46615u, 1u, global2.a)))));
    return Struct_3(Struct_1(~(41682u << (var_4.a % 32u)) == 1191u));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = ~(~(vec4<u32>(min(4294967295u, global2.a), global2.a, 16157u, global2.a) | vec4<u32>(global2.a, 4294967295u, global2.a, min(32389u, 46315u))));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(52086u, 10u)]));
    let var_3 = Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(~(~47639u), ~var_0.x), select(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(var_0.wz, var_0.wy, var_0.yx), ~var_0.zx), countOneBits(var_0.zx), true)));
    global3 = arg_0.a;
    return func_1().a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, global2.a) >> (vec3<u32>(62997u, global2.a, global2.a) % vec3<u32>(32u)), vec3<u32>(87511u, global2.a, 4294967295u)), vec3<u32>(global2.a, ~22538u, 1u & global2.a)));
    global3 = func_4(func_1());
    let var_1 = Struct_3(Struct_1(global3.a));
    global4 = ~var_0.a;
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-1185f - -1000f))));
    var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(firstTrailingBit(1u) >> (1u % 32u), 10u)]))));
    global1 = array<vec3<i32>, 2>();
    var var_3 = Struct_2(~firstLeadingBit(~(~var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-963f, global0[_wgslsmith_index_u32(var_3.a, 10u)]))), vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2.a, 10u)] - 1618f), -523f))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 10u)] + global0[_wgslsmith_index_u32(var_3.a, 10u)]))), global0[_wgslsmith_index_u32(global2.a, 10u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(23729u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)]), vec3<f32>(global0[_wgslsmith_index_u32(77477u, 10u)], global0[_wgslsmith_index_u32(var_0.a, 10u)], -1227f)))))));
}

