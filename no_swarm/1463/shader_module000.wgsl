struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_3, 16>;

var<private> global2: vec3<f32> = vec3<f32>(-273f, -1202f, 469f);

var<private> global3: array<vec2<u32>, 19>;

var<private> global4: Struct_5;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_4) -> f32 {
    global4 = Struct_5(Struct_2(vec4<bool>(global4.a.a.x, !(!arg_0.b.x), !(false | arg_0.e), arg_0.d.x)), Struct_4(463f, arg_0.d.zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c)), vec3<bool>(~u_input.a > global0.x, !arg_0.d.x, true), !global4.c.a.x != global4.c.a.x), Struct_2(global4.a.a));
    let var_0 = true;
    global1 = array<Struct_3, 16>();
    let var_1 = global1[_wgslsmith_index_u32(global0.x | _wgslsmith_sub_u32(~15503u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(21926u, 32902u, u_input.a), vec3<bool>(global4.b.b.x, arg_0.e, false)) & firstLeadingBit(vec3<u32>(14532u, u_input.a, u_input.a)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 63144u, 8427u) >> (vec3<u32>(global0.x, 4294967295u, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(1u, 0u, global0.x)))), 16u)];
    let var_2 = 1i;
    return _wgslsmith_f_op_f32(152f - _wgslsmith_f_op_f32(f32(-1f) * -1243f));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: f32) -> f32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1334f, 1988f, -1000f, arg_0.a) - vec4<f32>(1000f, -402f, arg_2, global4.b.c.x)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1549f, _wgslsmith_f_op_f32(floor(arg_0.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1142f)))), _wgslsmith_f_op_f32(-arg_0.c.x))));
    global1 = array<Struct_3, 16>();
    global4 = Struct_5(global4.c, Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1446f), select(arg_0.b, vec2<bool>(global4.a.a.x, all(global4.c.a)), !arg_0.b.x), _wgslsmith_f_op_vec2_f32(select(arg_0.c, arg_0.c, global4.a.a.yw)), vec3<bool>(all(!vec3<bool>(arg_1, false, false)), all(arg_0.b), select(true, arg_0.b.x, 0u <= global0.x)), true), global4.a);
    var var_1 = Struct_5(global4.a, Struct_4(arg_2, !vec2<bool>(all(global4.c.a.zx), global4.b.d.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0.c.x)), _wgslsmith_f_op_f32(sign(global2.x))) * vec2<f32>(1f, _wgslsmith_f_op_f32(-104f + 726f))), !select(select(arg_0.d, vec3<bool>(true, true, global4.a.a.x), arg_0.d), global4.b.d, false), !arg_1), global4.c);
    var var_2 = -(~vec3<i32>(u_input.c.x, 1i, -1i) ^ u_input.c);
    return _wgslsmith_f_op_f32(-var_0.x);
}

fn func_1(arg_0: i32, arg_1: Struct_5, arg_2: vec2<i32>, arg_3: Struct_5) -> vec3<f32> {
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.b.a, arg_1.b.c.x, -520f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1180f, arg_3.b.a, arg_1.b.a) + vec3<f32>(global4.b.c.x, 903f, global2.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global4.b.c.x, -354f))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1248f), arg_3.b.a, _wgslsmith_f_op_f32(func_2(arg_1.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1027f, 315f, arg_3.b.a) - vec3<f32>(global4.b.c.x, 481f, arg_3.b.a)))), !(!vec3<bool>(false, arg_1.a.a.x, global4.b.e)))));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_4(_wgslsmith_f_op_f32(-arg_3.b.a), select(select(vec2<bool>(arg_3.a.a.x, true), vec2<bool>(arg_1.b.e, global4.b.b.x), global4.c.a.ww), global4.a.a.zy, select(arg_1.b.b, vec2<bool>(false, true), global4.a.a.x)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -488f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1788f, global4.b.c.x), global2.xx, arg_1.c.a.wx)))), !arg_3.b.d, false), arg_3.c.a.x & arg_1.a.a.x, -476f)), _wgslsmith_f_op_f32(floor(global4.b.c.x)));
    global2 = vec3<f32>(-1211f, _wgslsmith_f_op_f32(min(104f, arg_1.b.c.x)), global2.x);
    global3 = array<vec2<u32>, 19>();
    global1 = array<Struct_3, 16>();
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-global4.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -462f) + global2.x), _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global4.b.c.x, global2.x)), arg_3.b.c.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(368f, -773f, -286f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, arg_1.b.c.x, -919f), vec3<f32>(1879f, 549f, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.c.x, global2.x, -1967f) - vec3<f32>(arg_3.b.c.x, global2.x, 798f))))), false));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 16>();
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-464f, -749f, global2.x) * vec3<f32>(-1475f, global4.b.a, global4.b.a)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_1(u_input.b, Struct_5(global4.a, global4.b, Struct_2(global4.c.a)), u_input.c.yx, Struct_5(global4.c, global4.b, global4.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 848f, 421f)), global4.b.b.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, global2.x, global2.x), vec3<f32>(1420f, 290f, -452f), global4.b.e)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, global4.b.a) - vec3<f32>(281f, 992f, -472f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(752f, 1339f, 1360f), vec3<f32>(global2.x, -1000f, 1238f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(u_input.a, ~40384u), 12184u, _wgslsmith_div_u32(firstTrailingBit(~u_input.a), 5069u));
}

