struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1804f, -563f, -2646f);

var<private> global1: Struct_4;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    var var_0 = Struct_4(arg_0, _wgslsmith_sub_u32(43426u, 1783u), vec3<bool>(select(false, global1.b >= 0u, global1.a.a.a.x), true, true));
    let var_1 = Struct_1(!select(select(vec3<bool>(global1.a.a.a.x, var_0.a.a.a.x, false), vec3<bool>(arg_0.a.a.x, false, false), true), select(select(var_0.a.a.a, global1.a.a.a, true), vec3<bool>(var_0.c.x, global1.c.x, global1.c.x), select(true, arg_0.a.a.x, var_0.a.a.a.x)), all(select(vec4<bool>(global1.c.x, false, var_0.a.a.a.x, false), vec4<bool>(false, false, false, false), true))));
    let var_2 = !(!(!(!vec4<bool>(global1.c.x, true, true, var_0.a.a.a.x))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) * -1003f);
    let var_4 = ~firstLeadingBit(vec4<u32>(0u, 0u, var_0.b, 60671u));
    return var_0.a;
}

fn func_3() -> u32 {
    let var_0 = -(~(_wgslsmith_add_i32(i32(-1i) * -6962i, abs(u_input.d.x)) >> (85466u % 32u)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), 623f, 1162f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 477f) * vec3<f32>(global0.x, -1222f, global0.x)))) + vec3<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_div_f32(global0.x, global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1371f, -483f)))));
    var var_1 = !(!vec4<bool>(!(global1.b <= u_input.a), true, all(select(vec4<bool>(global1.a.a.a.x, global1.c.x, true, global1.c.x), vec4<bool>(false, global1.c.x, false, global1.a.a.a.x), global1.a.a.a.x)), all(!global1.c.yy)));
    let var_2 = !vec2<bool>(!(firstTrailingBit(u_input.e.x) <= ~var_0), true);
    var_1 = !vec4<bool>(false, all(vec4<bool>(true, true, true, true)), true, !any(vec4<bool>(var_1.x, true, var_1.x, false)) | var_2.x);
    return ~(~(~4294967295u << (_wgslsmith_sub_u32(_wgslsmith_sub_u32(global1.b, global1.b), u_input.a) % 32u)));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    let var_0 = func_2(global1.a);
    global1 = Struct_4(Struct_3(func_2(var_0).a), ~26174u, global1.a.a.a);
    let var_1 = Struct_4(global1.a, ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1.b, u_input.a), vec3<u32>(u_input.a, 18510u, global1.b)) | ~global1.b, abs(_wgslsmith_add_u32(0u, 0u)), func_3()), vec3<bool>(arg_2.c.a.x, true, !arg_1));
    let var_2 = min(max(~vec2<u32>(min(27593u, u_input.a), 45489u << (1u % 32u)), ~(~(~vec2<u32>(u_input.a, 32108u)))), vec2<u32>(var_1.b, u_input.a));
    let var_3 = vec2<i32>(_wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(u_input.d.xy ^ u_input.b, vec2<i32>(1i, u_input.c.x)), u_input.d.x), u_input.e.x);
    return arg_2;
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec2<f32>) -> bool {
    global1 = Struct_4(global1.a, ~1u, func_1(!func_1(u_input.a >= 0u, 1u <= u_input.a, Struct_2(vec4<f32>(980f, 1518f, -665f, 1561f), true, arg_2.c)).b, global1.c.x, arg_2).c.a);
    global1 = Struct_4(global1.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(func_3(), abs(14996u), ~938u), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 0u, 36954u), vec3<u32>(2952u, arg_0, 12257u))), !vec3<bool>(any(vec3<bool>(global1.a.a.a.x, false, arg_2.c.a.x)), true & !global1.c.x, all(select(vec2<bool>(false, true), arg_1.wz, false))));
    var var_0 = arg_2;
    var_0 = arg_2;
    var var_1 = ~u_input.b.x;
    return all(vec3<bool>(!var_0.b, !(!(u_input.a <= 1u)), false));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * global0.x), global0.x)), 710f)));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1729f, 242f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 459f, -912f) + vec3<f32>(216f, 230f, -462f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1089f, global0.x, global0.x))), vec3<f32>(global0.x, 1302f, 1000f), any(vec4<bool>(true, true, true, true)))))) + vec3<f32>(global0.x, _wgslsmith_div_f32(637f, -2131f), -714f)));
    var var_1 = Struct_4(Struct_3(Struct_1(!(!global1.c))), ~min(global1.b, ~1u), !vec3<bool>(func_4(u_input.a & u_input.a, vec4<bool>(global1.a.a.a.x, global1.c.x, global1.a.a.a.x, true), func_1(false, true, Struct_2(vec4<f32>(584f, 1000f, var_0.x, 1147f), false, Struct_1(vec3<bool>(global1.a.a.a.x, false, false)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, -694f)))), func_1(false, global1.c.x, Struct_2(vec4<f32>(global0.x, var_0.x, var_0.x, global0.x), global1.c.x, Struct_1(vec3<bool>(global1.a.a.a.x, global1.a.a.a.x, true)))).b, true));
    let var_2 = countOneBits(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(var_1.b, global1.b, u_input.a) >> (~vec3<u32>(u_input.a, 1u, u_input.a) % vec3<u32>(32u))), vec3<u32>(abs(4294967295u), 1u, firstLeadingBit(firstTrailingBit(var_1.b)))));
    var var_3 = u_input.a;
    let var_4 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1564f)), var_0.yx)), var_0.xx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 2599f)))) * var_0.zz)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(0u), 25030u);
}

