struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global2: Struct_2 = Struct_2(vec4<u32>(0u, 6695u, 132746u, 0u), vec3<u32>(39624u, 1u, 1u), vec4<u32>(16488u, 0u, 1u, 4294967295u), Struct_1(vec2<f32>(-388f, 1151f), false, vec3<f32>(884f, 433f, -802f), false), true);

var<private> global3: Struct_1 = Struct_1(vec2<f32>(1073f, -867f), true, vec3<f32>(778f, 645f, -712f), false);

var<private> global4: f32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> vec4<bool> {
    let var_0 = vec2<i32>(u_input.b.x, 0i << (max(global2.a.x, ~global2.a.x) % 32u));
    var var_1 = _wgslsmith_add_vec2_u32(global0.b.a.xx, u_input.c.yy);
    return !(!select(!(!vec4<bool>(global2.d.d, global3.d, true, false)), vec4<bool>(global3.b, global0.c, false | global3.b, true), max(82630i, u_input.b.x) < 1i));
}

fn func_1() -> Struct_1 {
    let var_0 = global2.e;
    var var_1 = ~u_input.c.yz;
    global1 = vec4<bool>(true, (((global2.b.x << (20667u % 32u)) ^ global2.b.x) | _wgslsmith_sub_u32(61225u, global2.a.x)) < u_input.a, any(global1.wy), select(false, true, true));
    let var_2 = -u_input.b.zy;
    global1 = func_2();
    return global2.d;
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_4) -> vec2<i32> {
    global0 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(323f, arg_0.d.a.x))), global1.x, global3.c, global0.a.b), arg_0, all(func_2()));
    let var_0 = Struct_3(arg_2.b.b.d, global0.b, !any(vec2<bool>(!arg_0.d.d, !global2.d.d)));
    global3 = var_0.b.d;
    var var_1 = _wgslsmith_dot_vec2_u32(u_input.c.zz, abs(firstLeadingBit(var_0.b.b.xx)));
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global2.d.a.x)))) + arg_0.d.c.x), _wgslsmith_f_op_f32(1283f * -1650f)), arg_2.c.d.b, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-801f, 1576f, 164f)) * vec3<f32>(arg_0.d.a.x, _wgslsmith_f_op_f32(global3.a.x - -1569f), _wgslsmith_f_op_f32(floor(global2.d.c.x)))))), global1.x);
    return abs(u_input.b.yy) | ~_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), min(-3694i, -2147483647i)), arg_2.a, min(arg_2.a, vec2<i32>(-10230i, 34314i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_mult_u32(global2.a.x, abs(~(~15801u))), global2.c.x);
    global3 = global0.a;
    global3 = func_1();
    let var_1 = Struct_4(func_3(global0.b, 12932i, Struct_4(u_input.b.yz << (select(u_input.c.xy, vec2<u32>(global0.b.b.x, global0.b.a.x), false) % vec2<u32>(32u)), Struct_3(global0.b.d, global0.b, false), Struct_2(firstTrailingBit(global0.b.a), ~vec3<u32>(global2.a.x, global0.b.c.x, 96597u), global2.c, func_1(), global3.d), _wgslsmith_f_op_vec2_f32(-global0.a.a))), Struct_3(global2.d, global0.b, true), Struct_2(vec4<u32>(74979u, 13570u, ~1u, 6013u ^ ~global0.b.b.x), (global0.b.b ^ global2.c.wxy) | ~u_input.c, vec4<u32>(_wgslsmith_dot_vec4_u32(global2.c, global0.b.c), 4294967295u, ~global2.a.x, ~27786u), global2.d, any(!vec4<bool>(global1.x, global1.x, global2.d.d, global0.b.d.d))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1243f * global2.d.c.x))));
    global1 = !(!vec4<bool>(!(-229i == u_input.b.x), all(!global1.xyz), true, var_1.b.c | all(vec4<bool>(global2.d.d, global2.d.d, global3.b, global1.x))));
    var var_2 = global2.d;
    global3 = global2.d;
    let var_3 = var_1.a.x;
    let var_4 = Struct_3(global2.d, var_1.c, !(_wgslsmith_mult_u32(global0.b.a.x, global2.c.x) != 1u) & true);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(var_1.b.b.a.x ^ u_input.c.x, firstLeadingBit(0u), _wgslsmith_sub_u32(var_1.b.b.b.x, global0.b.c.x))));
}

