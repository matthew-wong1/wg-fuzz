struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1260f, 154f, -1681f, -1710f);

var<private> global1: Struct_1 = Struct_1(false, 1u);

var<private> global2: Struct_1 = Struct_1(false, 4175u);

var<private> global3: array<Struct_3, 19>;

var<private> global4: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    let var_0 = vec4<i32>(1i, -33492i, -75417i & u_input.d, u_input.d);
    let var_1 = Struct_2(select(!vec4<bool>(global2.a, true, global4.x, any(vec4<bool>(false, false, global1.a, true))), !vec4<bool>(false, !global2.a, true, !global2.a), !vec4<bool>(select(true, global1.a, global4.x), true, true, !global1.a)), Struct_1(global1.a, u_input.a), var_0.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c.yx, u_input.c.zx), ~(~vec2<u32>(global2.b, global1.b))));
    return 1i;
}

fn func_2(arg_0: u32) -> vec4<bool> {
    var var_0 = 2147483647i;
    var var_1 = Struct_2(!vec4<bool>(global1.b >= 0u, global4.x, !(!global2.a), global4.x), Struct_1(true, arg_0), 0i, u_input.c.x);
    let var_2 = vec4<i32>(reverseBits(-1i), -(var_1.c | var_1.c) | -34304i, min(func_3(), ~reverseBits(-var_1.c)), _wgslsmith_dot_vec3_i32(u_input.b, abs(vec3<i32>(min(-44407i, 20914i), var_1.c, -var_1.c))));
    var var_3 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global0.x);
    let var_4 = vec3<i32>(u_input.d, _wgslsmith_sub_i32(i32(-1i) * -u_input.b.x, -(~(u_input.d << (10648u % 32u)))), -2147483647i);
    return !select(vec4<bool>(var_1.a.x != false, global2.a, true != (global1.b != 47866u), 93441u < global1.b), !var_1.a, var_1.a);
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2008f, global0.x))) + _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(round(-667f)))));
    let var_1 = Struct_2(select(select(vec4<bool>(false, global1.a == global4.x, false, true), vec4<bool>(true, select(global2.a, global4.x, global2.a), !global1.a, true && global2.a), !(!vec4<bool>(false, global1.a, false, true))), select(select(!vec4<bool>(false, false, false, global4.x), select(vec4<bool>(true, global2.a, global4.x, global1.a), vec4<bool>(false, true, true, global4.x), vec4<bool>(global4.x, global4.x, global2.a, false)), global4.x), vec4<bool>(true, true, global2.a, global1.a), vec4<bool>(true, true, true, true)), !func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global2.b, global1.b), vec3<u32>(global2.b, global2.b, 0u)))), Struct_1(all(vec4<bool>(global4.x, !global4.x, any(vec4<bool>(true, false, false, global1.a)), all(vec3<bool>(global4.x, true, false)))), _wgslsmith_add_u32(~u_input.a, global2.b)), -2147483647i, _wgslsmith_dot_vec2_u32(reverseBits(u_input.c.xx), ~(~vec2<u32>(1u, 4294967295u)) ^ select(~vec2<u32>(0u, 4294967295u), u_input.c.xx, select(vec2<bool>(global2.a, false), vec2<bool>(global1.a, false), global2.a))));
    var var_2 = vec3<f32>(955f, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(142f))));
    let var_3 = Struct_2(!var_1.a, var_1.b, ~(-39769i), _wgslsmith_div_u32(abs(countOneBits(reverseBits(44454u))), 1u));
    var var_4 = vec2<i32>(func_3(), _wgslsmith_div_i32(-(~countOneBits(7324i)), (2147483647i << (0u % 32u)) & _wgslsmith_clamp_i32(func_3(), firstLeadingBit(u_input.d), u_input.d)));
    return Struct_1(global1.a, 4813u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.b;
    let var_1 = 1i;
    var var_2 = ~u_input.c;
    var var_3 = false;
    var var_4 = Struct_2(vec4<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(472f + global0.x), _wgslsmith_f_op_f32(151f + -577f))) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-349f, global0.x)), global2.a, true, true), func_1(1i), 12632i, 4294967295u);
    let var_5 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(select(global0.x, global0.x, false))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -875f), 213f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(302f + global0.x)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) + 449f), _wgslsmith_f_op_f32(global0.x * global0.x), global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec4_u32(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a, 30379u, global1.b), vec4<u32>(136965u, 1u, global1.b, var_4.d), vec4<u32>(53463u, global1.b, 1u, var_2.x)), vec4<u32>(var_4.b.b, global2.b, global2.b, 72797u) ^ vec4<u32>(1u, 4294967295u, 26440u, global2.b), true), _wgslsmith_div_vec4_u32(vec4<u32>(var_4.d, global2.b, 24583u, global2.b), vec4<u32>(12832u, 41469u, var_4.b.b, 30687u)) ^ ~vec4<u32>(var_4.b.b, global1.b, 14114u, var_4.d)), countOneBits(u_input.c.xy));
}

