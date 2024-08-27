struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
    d: vec4<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool = true;

var<private> global2: i32 = 0i;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> f32 {
    global2 = u_input.d.x & abs(1i);
    global2 = abs(-abs(abs(2147483647i)));
    var var_0 = ~(vec4<u32>(global0.e, arg_3.c, ~0u, reverseBits(u_input.a.x ^ arg_0.a.c)) | u_input.a);
    var var_1 = ~(-1i);
    var_0 = ~u_input.a;
    return -2348f;
}

fn func_2() -> bool {
    global0 = Struct_2(Struct_1(1565f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(global0.a, global0.b, false, vec4<i32>(u_input.d.x, global0.d.x, 2147483647i, global0.d.x), 0u), 32475u | global0.a.c, global0.a.e, global0.a)) - global0.a.a), max(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 27047u), ~u_input.b)), false, global0.a.e), select(!vec2<bool>(-342f >= global0.a.a, false), select(!(!global0.b), global0.b, select(vec2<bool>(false, false), vec2<bool>(global0.c, false), select(global0.b, global0.b, global0.b))), global0.a.d), !global0.a.d, global0.d, 1u);
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, global0.a.e)) - -1161f)), _wgslsmith_f_op_f32(-567f + _wgslsmith_f_op_f32(func_3(Struct_2(global0.a, vec2<bool>(global0.b.x, false), global0.c, global0.d, global0.e), 4294967295u, 621f, global0.a))), u_input.b.x, any(!(!vec3<bool>(true, global0.a.d, global0.c))), _wgslsmith_div_f32(1651f, _wgslsmith_f_op_f32(-1f))), global0.b, !any(vec2<bool>(true, all(vec3<bool>(global0.c, true, global0.b.x)))), abs(u_input.d), global0.a.c);
    var var_1 = var_0.a;
    var var_2 = Struct_2(var_0.a, !(!(!(!global0.b))), 746f >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(707f)), _wgslsmith_f_op_f32(var_1.b - -296f)) - -448f), -global0.d, 4294967295u);
    return !all(!select(select(vec2<bool>(global0.a.d, global0.b.x), var_2.b, false), !var_0.b, select(var_2.b, vec2<bool>(var_2.b.x, false), global0.b)));
}

fn func_1() -> Struct_1 {
    global1 = global0.b.x;
    global1 = func_2();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1397f)) * _wgslsmith_f_op_f32(global0.a.b * 884f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-511f * global0.a.e), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(698f * global0.a.a)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a.e))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a)))), u_input.c & 1u, all(select(!(!vec3<bool>(false, global0.c, false)), select(vec3<bool>(global0.a.d, false, global0.a.d), vec3<bool>(true, false, global0.b.x), false), global0.a.d)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global0.a.b)))));
    global2 = -countOneBits(_wgslsmith_dot_vec4_i32(~vec4<i32>(15635i, 1i, 2147483647i, global0.d.x), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, global0.d.x, 0i, -2147483647i), vec4<i32>(1i, u_input.d.x, global0.d.x, global0.d.x))));
    global1 = 40163u >= var_0.c;
    return Struct_1(var_0.e, 1961f, reverseBits(~1891u) << (_wgslsmith_dot_vec4_u32(u_input.a, ~firstTrailingBit(u_input.a)) % 32u), true, _wgslsmith_f_op_f32(trunc(global0.a.a)));
}

fn func_4(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-global0.a.e), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1150f - _wgslsmith_f_op_f32(global0.a.b + -1352f)), _wgslsmith_f_op_f32(arg_0.e - arg_0.a))), _wgslsmith_div_f32(-169f, -309f));
    global2 = 1i;
    let var_1 = var_0.x;
    let var_2 = 4294967295u;
    global1 = arg_0.d;
    return StorageBuffer(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(var_0.xz)))), _wgslsmith_f_op_vec2_f32(-var_0.zz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global0.a.b, -983f), vec2<f32>(739f, -1690f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(764f, arg_0.a)), select(vec2<bool>(arg_0.d, true), global0.b, arg_0.d))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(func_1().b))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.a), _wgslsmith_f_op_f32(f32(-1f) * -926f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.a.e)) + _wgslsmith_f_op_f32(var_0.x - 1031f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_0.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-251f, global0.a.b, true)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1599f)))), ~u_input.b, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1());
}

