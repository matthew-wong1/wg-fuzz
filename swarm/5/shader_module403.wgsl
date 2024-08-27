struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<f32>,
    c: Struct_2,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<bool>(false, false), vec3<bool>(true, false, true), -382f));

var<private> global2: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_5, arg_3: Struct_4) -> vec4<f32> {
    let var_0 = -2147483647i;
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.a.c)))));
    return _wgslsmith_f_op_vec4_f32(-arg_2.a.a);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> vec4<f32> {
    var var_0 = 824f;
    var var_1 = Struct_3(Struct_2(Struct_1(vec2<bool>(!arg_1.a.a.x, true), select(vec3<bool>(false, false, arg_0.a.b.x), vec3<bool>(arg_1.a.a.x, true, true), true), -273f)));
    global0 = arg_0.a;
    global0 = var_1.a.a;
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(1u, 1u, 1u), arg_0, Struct_5(Struct_4(vec4<f32>(-1000f, -269f, arg_1.a.c, global0.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-586f, arg_1.a.c)), arg_0, arg_1.a.a.x, false), Struct_4(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.a.c, 143f, var_1.a.a.c, global1.a.c), vec4<f32>(-1371f, 1107f, 1000f, 1811f)))))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, var_1.a.a.c, 1238f, -504f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2337f, global1.a.c, -152f, var_1.a.a.c)))))));
    return vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(474f - global1.a.c) + var_2.a.x))), _wgslsmith_f_op_f32(min(arg_0.a.c, var_2.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.a.c))), arg_1.a.c);
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<f32>) -> Struct_2 {
    global0 = global1.a;
    global0 = global1.a;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.a.c - 276f))), global1.a.c) + 250f);
    global0 = Struct_1(select(global0.a, vec2<bool>(true, true), vec2<bool>(global0.a.x, !(!global1.a.a.x))), !global0.b, global1.a.c);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1328f), 1000f, global1.a.c));
    return Struct_2(global1.a);
}

fn func_1() -> bool {
    var var_0 = func_4(~(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(41715u, 1u, 85582u)) & (select(vec3<u32>(0u, 1u, 72840u), vec3<u32>(23143u, 1u, 34609u), global1.a.b.x) | vec3<u32>(62164u, 4294967295u, 0u))), true, _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c + -393f)), global0.c, global0.c) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.c, global0.c, global1.a.c, global0.c) + _wgslsmith_f_op_vec4_f32(func_2(Struct_2(Struct_1(global1.a.a, global0.b, global0.c)), Struct_2(Struct_1(global0.a, vec3<bool>(global1.a.a.x, global1.a.b.x, false), 293f)), false))), vec4<f32>(_wgslsmith_f_op_f32(-706f * global0.c), 502f, global0.c, _wgslsmith_f_op_f32(-1467f * 1301f))))));
    var var_1 = (var_0.a.a.x || false) && true;
    global1 = Struct_2(Struct_1(global0.a, select(select(!vec3<bool>(global0.a.x, global0.b.x, global0.b.x), var_0.a.b, vec3<bool>(false, global1.a.b.x, false)), vec3<bool>(true, all(vec4<bool>(true, global1.a.b.x, false, var_0.a.b.x)), true), all(vec4<bool>(var_0.a.b.x, false, true, var_0.a.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -533f)));
    var var_2 = !vec3<bool>(true || global0.b.x, select(false, false, true), var_0.a.b.x);
    let var_3 = vec4<u32>(_wgslsmith_add_u32(1u, 1u), 1u, ~_wgslsmith_div_u32(abs(firstTrailingBit(4294967295u)), 1u), firstLeadingBit(select(~firstTrailingBit(0u), min(_wgslsmith_sub_u32(1u, 1u), 1u), any(vec3<bool>(true, false, false)))));
    return !select(true, any(!(!vec4<bool>(var_2.x, var_2.x, true, false))), !any(vec4<bool>(false, false, false, global0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(vec2<bool>(!func_1(), all(select(select(vec2<bool>(global1.a.a.x, false), global1.a.a, vec2<bool>(global1.a.b.x, true)), !global1.a.a, all(vec4<bool>(global1.a.a.x, true, false, true))))), select(vec3<bool>(!(!global0.b.x), global0.a.x, true), select(vec3<bool>(global0.a.x, !global1.a.a.x, 23783i > u_input.a), func_4(~vec3<u32>(27495u, 0u, 4294967295u), global1.a.b.x, vec4<f32>(-1066f, global0.c, 521f, global1.a.c)).a.b, global1.a.a.x), select(!(!global1.a.b), global1.a.b, global1.a.a.x & all(vec4<bool>(global0.a.x, global1.a.a.x, false, false)))), -851f);
    global2 = countOneBits(~12869u);
    var var_0 = abs(-(~(vec2<i32>(u_input.a, 27968i) ^ max(vec2<i32>(1i, u_input.a), vec2<i32>(-25553i, u_input.a)))));
    let var_1 = !global1.a.b;
    var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32(-(select(vec3<i32>(-16664i, u_input.a, 35322i), vec3<i32>(u_input.a, var_0.x, -49899i), global0.b) << (vec3<u32>(1u, 62117u, 38564u) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(vec3<i32>(select(u_input.a, var_0.x, true), select(var_0.x, 1i, true), i32(-1i) * -1180i), _wgslsmith_mod_vec3_i32(-vec3<i32>(var_0.x, -1i, -22920i), ~vec3<i32>(-25455i, u_input.a, u_input.a)))), u_input.a);
    var var_2 = global0.c;
    let var_3 = true;
    global2 = 32691u;
    let x = u_input.a;
    s_output = StorageBuffer(812f, _wgslsmith_add_u32(58250u, 1u), global1.a.c, global0.c);
}

