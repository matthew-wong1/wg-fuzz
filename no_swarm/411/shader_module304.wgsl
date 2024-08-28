struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec2<f32>) -> bool {
    var var_0 = Struct_1(vec4<u32>(89145u, u_input.a.x, firstTrailingBit(40526u) & (0u << (u_input.a.x % 32u)), 0u) >> (~(~vec4<u32>(1u, 133208u, u_input.c.x, 2098u)) % vec4<u32>(32u)));
    let var_1 = ~u_input.a.x;
    let var_2 = !(!vec3<bool>(false, global0[_wgslsmith_index_u32(var_1, 26u)], global0[_wgslsmith_index_u32(10303u ^ var_1, 26u)] && false));
    var_0 = Struct_1(~vec4<u32>(80365u, abs(~u_input.a.x), _wgslsmith_clamp_u32(66822u << (u_input.c.x % 32u), ~var_1, ~78590u), _wgslsmith_mult_u32(47983u, var_0.a.x & var_0.a.x)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_0.x, -1950f), 1537f, _wgslsmith_f_op_f32(select(arg_0.x, 1000f, var_2.x))));
    return !(false != !any(select(var_2.yx, vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.a.x, 26u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 26u)]))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> bool {
    var var_0 = Struct_5(-(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.b, u_input.b, u_input.b, -26221i), firstLeadingBit(vec4<i32>(u_input.b, u_input.b, -8541i, u_input.b))) ^ ~vec4<i32>(1i, u_input.b, 32736i, u_input.b)), global0[_wgslsmith_index_u32(abs(u_input.a.x), 26u)]);
    global0 = array<bool, 26>();
    var_0 = Struct_5(abs(max(select(vec4<i32>(var_0.a.x, 23412i, var_0.a.x, u_input.b), var_0.a, var_0.b), var_0.a)) >> (arg_1.e.a % vec4<u32>(32u)), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(813f, 198f) - vec2<f32>(-1781f, 299f)))))));
    var_0 = Struct_5(var_0.a, any(arg_0.a));
    global0 = array<bool, 26>();
    return false;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: u32, arg_3: bool) -> StorageBuffer {
    let var_0 = u_input.c.x;
    var var_1 = -577f;
    var var_2 = select(select(vec3<bool>(true, true, true), vec3<bool>(true, any(select(vec3<bool>(global0[_wgslsmith_index_u32(44008u, 26u)], arg_3, arg_3), vec3<bool>(global0[_wgslsmith_index_u32(arg_2, 26u)], true, global0[_wgslsmith_index_u32(arg_2, 26u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(u_input.c.x, 26u)]))), arg_1 < _wgslsmith_f_op_f32(arg_1 - arg_1)), vec3<bool>(true, true, true)), vec3<bool>(any(select(!vec4<bool>(false, false, arg_3, false), select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 26u)], global0[_wgslsmith_index_u32(arg_2, 26u)], false), vec4<bool>(false, true, arg_3, global0[_wgslsmith_index_u32(arg_2, 26u)]), vec4<bool>(false, arg_3, false, arg_3)), !arg_3)), func_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1, arg_1), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, 209f), vec2<f32>(620f, arg_1), true))))), false), true);
    let var_3 = vec4<bool>(true, true, true, true);
    var_2 = select(vec3<bool>(false, all(var_3.yyz), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(393f, -323f)))), select(vec3<bool>(arg_3 | true, !(!var_2.x), true), vec3<bool>(false || func_3(Struct_3(vec3<bool>(var_3.x, false, true)), Struct_2(-105f, false, var_3.x, global0[_wgslsmith_index_u32(u_input.c.x, 26u)], Struct_1(vec4<u32>(u_input.a.x, 1u, arg_2, 47744u)))), true, all(select(vec3<bool>(global0[_wgslsmith_index_u32(6299u, 26u)], var_2.x, false), var_3.yzx, var_3.xzw))), ~var_0 <= abs(u_input.c.x ^ arg_2)), vec3<bool>(all(vec4<bool>(arg_3, func_3(Struct_3(var_3.xwx), Struct_2(386f, global0[_wgslsmith_index_u32(4294967295u, 26u)], arg_3, true, Struct_1(vec4<u32>(11411u, 1u, 1u, var_0)))), !var_2.x, func_3(Struct_3(var_3.wyy), Struct_2(arg_1, true, var_3.x, true, Struct_1(vec4<u32>(arg_2, arg_2, arg_2, arg_2)))))), !(!all(vec4<bool>(global0[_wgslsmith_index_u32(var_0, 26u)], true, var_2.x, arg_3))), true));
    return StorageBuffer(50208i >> (u_input.c.x % 32u), ~vec4<i32>(arg_0, u_input.b, _wgslsmith_mod_i32(48640i, u_input.b) & max(arg_0, -2147483647i), 1i), arg_0, 68232i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 26>();
    var var_0 = true;
    let x = u_input.a;
    s_output = func_1(u_input.b, 696f, u_input.c.x, firstTrailingBit(u_input.c.x) != (~(~u_input.c.x) >> (u_input.c.x % 32u)));
}

