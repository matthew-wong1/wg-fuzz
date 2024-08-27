struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_1,
    d: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 12581u;

var<private> global1: array<vec3<bool>, 14>;

var<private> global2: array<Struct_3, 17>;

var<private> global3: i32 = 1i;

var<private> global4: Struct_4;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = u_input.a;
    global2 = array<Struct_3, 17>();
    global2 = array<Struct_3, 17>();
    return 4294967295u;
}

fn func_2() -> Struct_4 {
    global1 = array<vec3<bool>, 14>();
    global4 = Struct_4(global4.a, global2[_wgslsmith_index_u32(~1u, 17u)], global4.b.c, global4.c.a);
    var var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.e, vec3<i32>(u_input.e.x, u_input.d ^ -13678i, u_input.d)), ~(~(~u_input.e))) | vec3<i32>(-u_input.d, u_input.e.x, u_input.e.x);
    var var_1 = ~_wgslsmith_div_vec2_u32(~vec2<u32>(func_3(), u_input.c.x), u_input.c.zx << (~u_input.c.yw % vec2<u32>(32u)));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1173f, -778f, 1719f) - vec3<f32>(-1450f, -113f, 170f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1164f, -1802f, -149f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(367f, 757f, -297f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-573f, -741f, 1433f), vec3<f32>(-699f, -1881f, -2145f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1382f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1973f + -2324f) - _wgslsmith_f_op_f32(sign(573f)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1756f))), _wgslsmith_f_op_f32(-357f - -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1290f)) * _wgslsmith_f_op_f32(f32(-1f) * -1187f)))));
    return Struct_4(Struct_2(select(vec4<u32>(~4294967295u, 37516u, ~u_input.c.x, 0u), vec4<u32>(~var_1.x, _wgslsmith_clamp_u32(var_1.x, global4.a.b.x, global4.a.b.x), _wgslsmith_mult_u32(var_1.x, var_1.x), global4.a.b.x), vec4<bool>(false, all(vec4<bool>(false, global4.b.c.a, false, true)), global4.c.a | false, true)), ~(~(~vec4<u32>(var_1.x, 1u, u_input.c.x, u_input.c.x))), Struct_1(!any(vec3<bool>(global4.b.c.a, global4.c.a, false)))), global2[_wgslsmith_index_u32(1u, 17u)], global4.c, any(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, _wgslsmith_dot_vec2_u32(u_input.c.wx, firstLeadingBit(vec2<u32>(17194u, 0u)))), 14u)]));
}

fn func_1() -> u32 {
    global4 = func_2();
    var var_0 = func_2().a;
    var_0 = Struct_2(~u_input.c, ~(~(~u_input.c) >> (abs(firstLeadingBit(u_input.c)) % vec4<u32>(32u))), var_0.c);
    global1 = array<vec3<bool>, 14>();
    let var_1 = any(select(select(vec4<bool>(var_0.c.a, true, true, !global4.a.c.a), !vec4<bool>(global4.a.c.a, var_0.c.a, true, true), !func_2().d), !select(vec4<bool>(global4.d, global4.d, true, global4.d), select(vec4<bool>(true, false, true, false), vec4<bool>(var_0.c.a, global4.b.b, false, false), vec4<bool>(var_0.c.a, true, true, true)), !vec4<bool>(false, global4.c.a, false, false)), vec4<bool>(!var_0.c.a, all(select(global1[_wgslsmith_index_u32(0u, 14u)], global1[_wgslsmith_index_u32(global4.a.b.x, 14u)], false)), var_0.c.a, func_2().b.a.x && global4.a.c.a)));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(global4.a, Struct_3(vec2<bool>(true && !global4.a.c.a, true), global4.b.b, global4.b.c), global4.b.c, _wgslsmith_sub_u32(func_1(), 1u) == ~(~(~71801u)));
    let var_1 = ~(~(abs(u_input.b.xy) | select(vec2<i32>(u_input.e.x, u_input.a), vec2<i32>(u_input.d, u_input.a), true)));
    var var_2 = func_2().a;
    var var_3 = var_1;
    var var_4 = func_2().a.c;
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(countOneBits(i32(-1i) * -1i), ~_wgslsmith_div_i32(-45673i, var_3.x)), 106f);
}

