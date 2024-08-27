struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<bool>, 15>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> u32 {
    var var_0 = any(vec2<bool>(true, arg_0.b));
    let var_1 = Struct_1(arg_0.c, true, reverseBits(~0u));
    let var_2 = arg_0;
    let var_3 = Struct_1(abs(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c.yy, vec2<u32>(4294967295u, var_2.c)), vec2<u32>(u_input.e.x, arg_0.c) >> (vec2<u32>(global0.a, 4294967295u) % vec2<u32>(32u)))), -52298i > u_input.d.x, arg_2.a);
    var var_4 = arg_1.xz;
    return 39227u;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: vec3<f32>) -> i32 {
    global0 = Struct_1(~4294967295u, 23513i >= u_input.d.x, arg_1.c);
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(514f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.x, arg_3.x) + arg_3.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3.x + arg_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(241f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * arg_3.x))))));
    var var_1 = false;
    var var_2 = arg_1;
    let var_3 = -770f;
    return _wgslsmith_div_i32(-9247i, ~u_input.b);
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: vec4<bool>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = 1444f;
    global0 = Struct_1(~firstTrailingBit(_wgslsmith_add_u32(arg_0.x, 94524u)) ^ ~1u, global0.b || false, select(u_input.c.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.e.x), u_input.e >> (vec2<u32>(u_input.a, 27725u) % vec2<u32>(32u))), arg_3.x));
    global1 = array<vec4<bool>, 15>();
    var var_1 = vec3<i32>(select(u_input.b, u_input.d.x << (u_input.a % 32u), -u_input.b != (0i & _wgslsmith_sub_i32(u_input.d.x, u_input.b))), ~(i32(-1i) * -18433i), func_4(962f != var_0, Struct_1(1u, !any(global1[_wgslsmith_index_u32(global0.a, 15u)]), _wgslsmith_mod_u32(func_3(Struct_1(global0.a, false, 4294967295u), vec3<f32>(1388f, var_0, var_0), Struct_1(0u, arg_3.x, 80699u)), 1u)), true, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-567f, var_0, var_0)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, var_0, 484f))), vec3<f32>(_wgslsmith_div_f32(538f, arg_1), _wgslsmith_f_op_f32(-var_0), 546f)))));
    let var_2 = max(~_wgslsmith_clamp_i32(~var_1.x, _wgslsmith_sub_i32(var_1.x, ~(-1i)), u_input.b), var_1.x);
    return Struct_1(0u, all(vec2<bool>(arg_3.x, !(!global0.b))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, ~abs(59269u), u_input.c.x), _wgslsmith_sub_vec3_u32(u_input.c.wxz, u_input.c.yzx)));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_mod_u32(abs(min(22602u, 1u)) ^ _wgslsmith_add_u32(~512u, _wgslsmith_add_u32(_wgslsmith_div_u32(arg_3.a, 39643u), max(u_input.e.x, u_input.c.x))), countOneBits(~_wgslsmith_mult_u32(select(u_input.a, arg_0.c, arg_3.b), ~global0.a)));
    let var_1 = arg_3;
    global0 = arg_3;
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(var_1.a), 31833u), 15u)];
    global0 = func_2(select(_wgslsmith_mod_vec4_u32(u_input.c, u_input.c), u_input.c, var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -955f), select(vec4<bool>(true, !(!global0.b), arg_0.b, true), global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(15243u, 15u)]), select(vec2<bool>(arg_3.b, var_1.b), vec2<bool>(u_input.b > (i32(-1i) * -1i), false), vec2<bool>(false, !(!arg_0.b))));
    return vec2<bool>(arg_0.b, any(select(vec3<bool>(global0.b, var_1.b, false), vec3<bool>(arg_0.b, global0.b, false), any(var_2.xy))) || global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1000f;
    let var_1 = u_input.c.x;
    var var_2 = 413f;
    let var_3 = !select(vec2<bool>(global0.b, global0.b), !func_1(Struct_1(global0.a, true, 28483u), _wgslsmith_f_op_f32(f32(-1f) * -1068f), _wgslsmith_f_op_f32(trunc(-204f)), Struct_1(global0.c, global0.b, 1u)), true);
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-220f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(270f + 180f))))));
    var var_5 = u_input.c.xwz << (_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(firstLeadingBit(global0.a), 32450u, global0.c)), vec3<u32>(global0.c, 21364u, _wgslsmith_mod_u32(4294967295u, reverseBits(u_input.c.x)))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-35410i, ~max(var_1, var_5.x));
}

