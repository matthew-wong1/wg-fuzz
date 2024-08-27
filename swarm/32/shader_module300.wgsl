struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<i32>(i32(-2147483648), 0i, 10315i, -1i), Struct_2(Struct_1(4294967295u, vec4<f32>(1400f, -1000f, -773f, 603f), -489f, 1180f), -1574f, vec4<bool>(false, true, true, true)), Struct_2(Struct_1(4294967295u, vec4<f32>(350f, -127f, 1000f, 171f), 1000f, -1787f), -877f, vec4<bool>(true, false, true, false)));

var<private> global1: array<vec2<u32>, 4>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_2) -> f32 {
    global1 = array<vec2<u32>, 4>();
    let var_0 = vec4<i32>(abs(1i), _wgslsmith_mod_i32(-(~(0i | arg_1)), arg_1 & 15885i), arg_1 ^ ~(~reverseBits(1i)), select(global0.a.x, (-1i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-39266i, -5627i), vec2<i32>(global0.a.x, -1i))) << (~arg_2.a.a % 32u), false));
    global1 = array<vec2<u32>, 4>();
    global1 = array<vec2<u32>, 4>();
    var var_1 = _wgslsmith_sub_u32(1u, abs(abs(~max(25703u, arg_2.a.a))));
    return _wgslsmith_div_f32(arg_2.a.b.x, 616f);
}

fn func_2() -> Struct_2 {
    var var_0 = global0.b.c.yww;
    global0 = Struct_3(global0.a, Struct_2(global0.c.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(164f, _wgslsmith_f_op_f32(func_3(vec2<f32>(-1332f, global0.b.a.b.x), -38628i, Struct_2(global0.c.a, global0.b.b, vec4<bool>(false, true, global0.c.c.x, global0.c.c.x))))) + global0.c.b), select(global0.c.c, !vec4<bool>(true, global0.b.c.x, true, true), any(!vec3<bool>(var_0.x, true, false)))), Struct_2(global0.b.a, global0.b.a.c, select(select(vec4<bool>(true, true, true, global0.b.c.x), vec4<bool>(global0.b.c.x, var_0.x, global0.c.c.x, true), !global0.b.c), !select(global0.b.c, global0.c.c, var_0.x), global0.c.c)));
    var_0 = !vec3<bool>(global0.c.b > -610f, all(select(!global0.c.c, !global0.c.c, !var_0.x)), true);
    let var_1 = 16647u;
    global1 = array<vec2<u32>, 4>();
    return Struct_2(Struct_1(u_input.b, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.a.c, 539f, -238f, 919f) + global0.c.a.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), global0.b.a.d), global0.b.a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-global0.c.a.b.yx), firstTrailingBit(global0.a.x) | -global0.a.x, global0.b))), global0.b.c);
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> bool {
    global1 = array<vec2<u32>, 4>();
    var var_0 = ~vec4<u32>(99617u, ~_wgslsmith_add_u32(~15957u, 14385u & arg_0.x), 0u, _wgslsmith_sub_u32(~firstLeadingBit(global0.c.a.a), 15268u));
    global0 = Struct_3(-(~(vec4<i32>(-56138i, global0.a.x, 15021i, -1i) << (vec4<u32>(4294967295u, 21124u, global0.c.a.a, 16813u) % vec4<u32>(32u))) | vec4<i32>(global0.a.x, 14130i, firstLeadingBit(global0.a.x), -67603i)), func_2(), global0.c);
    var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(1u, ~global0.c.a.a, _wgslsmith_sub_u32(u_input.a, u_input.a), min(u_input.b, 0u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 0u, 258u, 27591u), vec4<u32>(u_input.b, 4294967295u, global0.b.a.a, global0.c.a.a)), !(!global0.c.c)), vec4<u32>(~(u_input.b << (arg_0.x % 32u)), ~min(arg_0.x, 0u), ~(~49988u), 4294967295u)), ~vec4<u32>(~_wgslsmith_mod_u32(4294967295u, 4294967295u), ~(~56841u), func_2().a.a, 44459u));
    let var_1 = vec4<i32>(-1i) * -(~global0.a);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(global0.c.c.x, all(!vec4<bool>(func_1(global1[_wgslsmith_index_u32(u_input.b, 4u)], false), all(vec3<bool>(global0.c.c.x, global0.b.c.x, global0.b.c.x)), all(global0.c.c.xz), true)));
    let var_1 = Struct_5(~abs(_wgslsmith_sub_i32(-global0.a.x, _wgslsmith_div_i32(7441i, -9253i))), Struct_1(~4294967295u, global0.c.a.b, _wgslsmith_f_op_f32(-global0.c.b), _wgslsmith_f_op_f32(f32(-1f) * -392f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1000f, -1584f)))), _wgslsmith_f_op_f32(round(global0.c.b)))))), -select(vec2<i32>(~global0.a.x, -4471i), countOneBits(countOneBits(global0.a.zy)), !select(false, false, false)));
    var var_2 = vec2<f32>(1507f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global0.c.b, var_1.c)))));
    let var_3 = _wgslsmith_mult_u32(max(var_1.b.a, u_input.a), u_input.b);
    let var_4 = !func_2().c;
    global1 = array<vec2<u32>, 4>();
    global1 = array<vec2<u32>, 4>();
    let var_5 = vec3<bool>(all(global0.b.c), var_4.x, select(~var_1.b.a == u_input.b, true | any(vec4<bool>(false, var_0.x, true, var_4.x)), !(!var_0.x)) || var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(var_1.b.b.wxw + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.b.a.b.wwz, global0.c.a.b.yzy, 0u < u_input.a)))), _wgslsmith_f_op_vec3_f32(round(func_2().a.b.wwz)), -1000f, ~_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(1u, 4294967295u, 19837u, 20367u)), abs(vec4<u32>(4294967295u, 50740u, 26311u, u_input.b))));
}

