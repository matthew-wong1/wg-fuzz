struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, false), false, -1000f, vec3<bool>(true, true, true));

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec2<bool>(true, true), false, -644f, vec3<bool>(false, true, false)), Struct_1(vec2<bool>(true, false), false, -2347f, vec3<bool>(true, true, true)), Struct_1(vec2<bool>(false, false), false, -679f, vec3<bool>(true, false, true)), Struct_1(vec2<bool>(false, true), false, 111f, vec3<bool>(true, false, false)), Struct_1(vec2<bool>(false, true), true, 1000f, vec3<bool>(true, false, false)), Struct_1(vec2<bool>(true, true), false, 345f, vec3<bool>(false, false, true)), Struct_1(vec2<bool>(false, true), true, 845f, vec3<bool>(true, false, false)), Struct_1(vec2<bool>(true, false), false, -772f, vec3<bool>(true, true, true)), Struct_1(vec2<bool>(true, false), true, -1571f, vec3<bool>(false, true, false)), Struct_1(vec2<bool>(false, false), true, 1113f, vec3<bool>(true, false, true)), Struct_1(vec2<bool>(true, false), false, -898f, vec3<bool>(true, false, true)), Struct_1(vec2<bool>(true, true), true, -1462f, vec3<bool>(false, true, false)), Struct_1(vec2<bool>(false, true), false, 786f, vec3<bool>(true, true, false)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<u32>) -> vec4<u32> {
    let var_0 = abs(_wgslsmith_mod_vec2_u32(vec2<u32>(min(arg_0.x, countOneBits(u_input.b.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(49884u, 53767u), vec2<u32>(u_input.b.x, arg_0.x), vec2<u32>(arg_0.x, 4294967295u)), u_input.b.xy)), vec2<u32>(max(4294967295u, arg_0.x), u_input.b.x)));
    var var_1 = global0.b;
    var var_2 = !global0.a;
    let var_3 = global1[_wgslsmith_index_u32(~(~(~(~reverseBits(u_input.b.x)))), 13u)];
    let var_4 = false;
    return abs(vec4<u32>(~abs(4532u ^ u_input.b.x), _wgslsmith_mult_u32(arg_0.x, firstLeadingBit(u_input.b.x & 42275u)), 1u << (0u % 32u), ~1u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> vec3<f32> {
    global1 = array<Struct_1, 13>();
    let var_0 = vec3<bool>(any(select(arg_1.d.yz, !(!arg_1.d.xy), 1i <= (u_input.c.x >> (u_input.b.x % 32u)))), arg_1.a.x != true, !all(vec4<bool>(true, all(vec4<bool>(true, arg_1.a.x, false, true)), arg_2 != -412f, !global0.d.x)));
    var var_1 = ~((vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.b.x), _wgslsmith_mod_u32(4294967295u, u_input.b.x), u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, 0u, u_input.b.x), vec4<u32>(52920u, u_input.b.x, u_input.b.x, u_input.b.x))) >> (func_3(~vec3<u32>(0u, 4294967295u, 22858u)) % vec4<u32>(32u))) ^ ~(vec4<u32>(u_input.b.x, 58250u, 51073u, u_input.b.x) ^ vec4<u32>(1u, 4294967295u, 4294967295u, u_input.b.x)));
    var_1 = select(vec4<u32>(_wgslsmith_add_u32(~11060u, _wgslsmith_mult_u32(1u, var_1.x)) | ~u_input.b.x, ~(~1u), 28264u, ~var_1.x), func_3(~select(select(u_input.b, vec3<u32>(4294967295u, 78517u, 0u), arg_1.b), var_1.wyx ^ var_1.yxz, arg_1.d)), !select(vec4<bool>(true, arg_0.a.x, arg_0.b, false), select(vec4<bool>(arg_0.d.x, arg_1.a.x, false, var_0.x), select(vec4<bool>(true, true, true, var_0.x), vec4<bool>(arg_0.b, global0.a.x, arg_0.b, var_0.x), vec4<bool>(true, arg_1.b, var_0.x, false)), var_1.x < 6167u), !arg_1.d.x));
    global0 = arg_1;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2711f, arg_2, 1868f) + vec3<f32>(-370f, global0.c, 158f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(603f, -356f, arg_0.c))))));
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_1 {
    global1 = array<Struct_1, 13>();
    global0 = global1[_wgslsmith_index_u32(4294967295u, 13u)];
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1030f, _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(-global0.c)) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_1(global0.d.yx, global0.a.x, global0.c, global0.d), global1[_wgslsmith_index_u32(0u, 13u)], global0.c))), vec3<f32>(_wgslsmith_div_f32(-755f, -471f), _wgslsmith_f_op_f32(-990f + global0.c), global0.c), global0.d)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_2(Struct_1(vec2<bool>(false, false), global0.a.x, global0.c, vec3<bool>(true, true, true)), Struct_1(global0.d.yy, true, 1362f, vec3<bool>(global0.d.x, false, global0.d.x)), 152f)))))))));
    let var_1 = _wgslsmith_add_i32(-1i, u_input.a);
    var var_2 = countOneBits(vec4<u32>(~(~u_input.b.x), ~u_input.b.x, ~(4294967295u >> ((0u << (0u % 32u)) % 32u)), func_3(~u_input.b).x));
    return global1[_wgslsmith_index_u32(~u_input.b.x, 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_sub_i32(u_input.c.x, ~u_input.c.x), -1i);
    global1 = array<Struct_1, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-253f, global0.c, -1385f, global0.c) + vec4<f32>(-181f, 1563f, global0.c, global0.c)), vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.c)), _wgslsmith_f_op_f32(select(1073f, -1182f, true)), func_1(u_input.c.x, -2147483647i).c, _wgslsmith_f_op_f32(-global0.c)))), vec3<u32>(4294967295u, ~29026u, u_input.b.x));
}

