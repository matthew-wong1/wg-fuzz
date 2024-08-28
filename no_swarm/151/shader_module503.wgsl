struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<f32>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: i32,
}

struct Struct_5 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: Struct_1 = Struct_1(true, vec2<i32>(0i, 28209i), vec3<bool>(true, false, true));

var<private> global2: Struct_3;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<i32> {
    var var_0 = _wgslsmith_dot_vec4_u32(reverseBits(firstTrailingBit(vec4<u32>(u_input.b, 0u, _wgslsmith_mod_u32(0u, u_input.b), ~16718u))), max(vec4<u32>((4557u << (u_input.b % 32u)) & u_input.b, u_input.b, 15073u, 9245u), ~(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 43898u, u_input.b, 1806u), vec4<u32>(u_input.b, 18196u, 4294967295u, u_input.b)) >> (~vec4<u32>(u_input.b, u_input.b, 88669u, u_input.b) % vec4<u32>(32u)))));
    let var_1 = u_input.b;
    var var_2 = global2.d == _wgslsmith_f_op_f32(-305f - -652f);
    var_0 = ~4294967295u;
    let var_3 = Struct_4(global1.b.x, Struct_2(global2.a), Struct_2(global2.a), i32(-1i) * -global1.b.x);
    return global2.b;
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    global2 = Struct_3(Struct_1(!((global1.b.x << (44328u % 32u)) == 0i), vec2<i32>(-3570i, -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global2.b.x), global2.b.zz)), global2.a.c), select(~(-(~vec4<i32>(u_input.a, u_input.a, global2.a.b.x, -25891i))), -global2.b, all(!select(global1.c.zy, vec2<bool>(false, global2.a.c.x), global1.c.x))), global2.c, global2.e.x, _wgslsmith_div_vec2_f32(vec2<f32>(global2.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global2.e.x)), _wgslsmith_f_op_f32(global2.d * -1014f)))), _wgslsmith_f_op_vec2_f32(abs(global2.c.yy))));
    var var_0 = all(select(vec2<bool>(global1.a, !global1.a), vec2<bool>(global0.x, any(global2.a.c.xy)), global2.e.x >= -226f)) != global2.a.c.x;
    let var_1 = 1i;
    let var_2 = global2.b.wzx;
    global2 = Struct_3(global2.a, _wgslsmith_mod_vec4_i32(func_3(), vec4<i32>(~u_input.a, 11619i, 1i, 7797i)), global2.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-801f, _wgslsmith_f_op_f32(round(723f)))), global2.c.x, !(_wgslsmith_mod_u32(4294967295u, arg_0.x) >= arg_0.x))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(549f, global2.e.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global2.e.x))), true)), _wgslsmith_f_op_vec2_f32(select(global2.e, _wgslsmith_f_op_vec2_f32(round(global2.c.xy)), true)))));
    return Struct_3(Struct_1(all(vec3<bool>(global2.a.a, global1.a, false)) | !global1.c.x, firstLeadingBit(var_2.xx), global1.c), vec4<i32>(-50342i, ~(-(global2.a.b.x | global1.b.x)), reverseBits(-(u_input.a >> (4294967295u % 32u))), ~min(1i, min(10695i, 52353i))), _wgslsmith_f_op_vec4_f32(abs(global2.c)), global2.d, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.e.x, 1424f), global2.c.xz)), vec2<f32>(_wgslsmith_f_op_f32(global2.e.x * 1299f), global2.d), true)));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: u32) -> Struct_4 {
    let var_0 = func_2(max(vec3<u32>(84140u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(u_input.b, 55356u)), u_input.b), ~firstLeadingBit(vec3<u32>(41481u, 1u, u_input.b))) & ~(~vec3<u32>(u_input.b, u_input.b, arg_2)));
    var var_1 = Struct_4(-2147483647i, Struct_2(func_2(~vec3<u32>(4294967295u, 1u, u_input.b)).a), Struct_2(func_2(~vec3<u32>(1u, u_input.b, arg_2)).a), ~func_3().x);
    let var_2 = any(vec3<bool>(!global0.x, func_2(vec3<u32>(4294967295u, 58478u, arg_2)).a.b.x >= _wgslsmith_sub_i32(global1.b.x, -1i), false)) | true;
    let var_3 = var_1.b.a;
    global1 = global2.a;
    return Struct_4(reverseBits(1i), var_1.c, Struct_2(Struct_1(any(select(vec4<bool>(true, false, global0.x, global1.a), vec4<bool>(false, var_2, true, false), true)), global2.a.b, global2.a.c)), func_2(~vec3<u32>(~29300u, ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 18894u, u_input.b, 1u), vec4<u32>(6357u, 49789u, arg_2, arg_2)))).b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global0.yz, ~u_input.b, 0u);
    let var_1 = ~_wgslsmith_clamp_i32(~_wgslsmith_mult_i32(0i, global1.b.x), -global2.b.x, _wgslsmith_add_i32(_wgslsmith_mult_i32(global1.b.x, 14289i), ~global2.b.x)) ^ _wgslsmith_add_i32(33238i, 20556i);
    var var_2 = ~9119u;
    var_2 = 51124u;
    let var_3 = var_0.b.a.a;
    var var_4 = func_1(select(select(!(!vec2<bool>(global0.x, var_0.b.a.c.x)), global2.a.c.xx, vec2<bool>(true, global2.d >= -1049f)), select(vec2<bool>(true, global2.a.a), !(!vec2<bool>(false, global1.a)), !global1.c.yx), true), 1149u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b, min(u_input.b, u_input.b)), u_input.b)).b.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(-48552i), -1223f, global2.d, abs(u_input.b), _wgslsmith_sub_vec2_u32(firstLeadingBit(~vec2<u32>(1u, u_input.b)), select(max(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 10324u)), select(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.b, u_input.b), global0.x), vec2<bool>(global1.a, true)) & ~(~vec2<u32>(0u, u_input.b))));
}

