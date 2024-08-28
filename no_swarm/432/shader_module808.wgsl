struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec4<bool>,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: i32,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 29>;

var<private> global1: Struct_4 = Struct_4(false, -532f, 0i, Struct_2(61058i, 1000f, vec4<bool>(true, true, true, false), vec2<u32>(0u, 11373u), vec4<bool>(false, false, false, false)));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = vec3<u32>(~21189u, _wgslsmith_sub_u32(~global1.d.d.x, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.b, global1.d.d.x, u_input.b), global1.d.d.x >> (u_input.b % 32u), 0u) & _wgslsmith_div_u32(max(60645u, u_input.b), 26500u)), 1u);
    let var_1 = select(vec2<u32>(~var_0.x, global1.d.d.x), reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x | var_0.x, _wgslsmith_mod_u32(1369u, 1u)), ~vec2<u32>(20632u, u_input.b))), !global1.d.c.xw);
    let var_2 = ~vec2<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(14527i, 0i, global1.d.a, 19259i)), _wgslsmith_div_vec4_i32(vec4<i32>(global1.d.a, u_input.a.x, u_input.a.x, 2147483647i) ^ vec4<i32>(global1.d.a, 2147483647i, 90001i, -4412i), vec4<i32>(2147483647i, global1.c, global1.c, u_input.a.x) >> (global0[_wgslsmith_index_u32(0u, 29u)] % vec4<u32>(32u)))));
    var var_3 = 476f;
    return var_0.x >> (_wgslsmith_div_u32(var_0.x << (~_wgslsmith_mod_u32(u_input.b, global1.d.d.x) % 32u), _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b, min(global1.d.d.x, var_0.x)), 0u, 71211u)) % 32u);
}

fn func_2(arg_0: u32) -> Struct_5 {
    var var_0 = global1.d;
    global0 = array<vec4<u32>, 29>();
    let var_1 = var_0.c.wz;
    var var_2 = func_3();
    let var_3 = Struct_1(select(var_0.e.yx, select(vec2<bool>(var_1.x, any(vec2<bool>(false, var_0.e.x))), global1.d.e.xx, var_0.e.x), select(var_0.e.xw, select(!vec2<bool>(global1.d.c.x, var_1.x), vec2<bool>(true, true), all(global1.d.e.xxy)), !global1.d.e.yy)));
    return Struct_5(u_input.a.x, vec2<i32>(1i, _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a.x & global1.c, 1i), _wgslsmith_mod_i32(max(2566i, 0i), -global1.d.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1227f, global1.b, global1.b, var_0.b)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1147f, 404f, -2015f, global1.b), vec4<f32>(1167f, -1078f, var_0.b, var_0.b))))) + vec4<f32>(-599f, _wgslsmith_f_op_f32(sign(-1166f)), 1f, global1.b)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.d.b, -2096f, -1351f, global1.b)))))), Struct_3(108719u));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_5) -> u32 {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.b, global1.b, -461f, global1.d.b) * arg_2.c)) + arg_2.c))));
    var var_2 = vec3<bool>(true, arg_0.a.x, func_3() == 4294967295u);
    var var_3 = _wgslsmith_f_op_vec4_f32(-arg_2.c);
    global0 = array<vec4<u32>, 29>();
    return ~4294967295u;
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_3(func_4(Struct_1(global1.d.c.xx), u_input.b, func_2(global1.d.d.x)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(963f, -1517f, global1.b), vec3<f32>(272f, global1.b, global1.b))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1134f * global1.d.b));
    var var_3 = -2147483647i;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -971f, _wgslsmith_f_op_f32(min(global1.d.b, var_1.x)), 442f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, -429f, global1.b, _wgslsmith_div_f32(var_1.x, global1.d.b))))));
    return Struct_4(true, -343f, 7716i, Struct_2(-global1.d.a, _wgslsmith_f_op_f32(func_2(~u_input.b).c.x + _wgslsmith_f_op_f32(f32(-1f) * -1450f)), global1.d.c, ~(~global1.d.d) << (_wgslsmith_clamp_vec2_u32(global1.d.d, _wgslsmith_div_vec2_u32(vec2<u32>(global1.d.d.x, 4294967295u), vec2<u32>(var_0.a, var_0.a)), select(global1.d.d, vec2<u32>(57361u, var_0.a), global1.d.e.ww)) % vec2<u32>(32u)), global1.d.e));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 29>();
    var var_0 = Struct_4(true, _wgslsmith_f_op_f32(ceil(-726f)), -13113i, Struct_2(max(2147483647i, ~u_input.a.x), 992f, select(global1.d.e, global1.d.c, false && global1.a), global1.d.d, !global1.d.e));
    global0 = array<vec4<u32>, 29>();
    var_0 = func_1();
    var var_1 = false;
    let var_2 = global1.d.e.wxy;
    var var_3 = vec3<u32>(~100679u, ~(~4294967295u), 0u) & _wgslsmith_mod_vec3_u32(max(vec3<u32>(_wgslsmith_add_u32(42322u, 1u), global1.d.d.x, ~global1.d.d.x), ~vec3<u32>(4294967295u, 63649u, var_0.d.d.x) >> (firstLeadingBit(vec3<u32>(var_0.d.d.x, 4294967295u, 0u)) % vec3<u32>(32u))), ~(~(~vec3<u32>(34582u, global1.d.d.x, 39963u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(~20567i, reverseBits(0i), abs(u_input.a.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(var_0.d.b - -1000f), _wgslsmith_f_op_f32(-global1.b), var_0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.d.b, 122f, global1.b), vec3<f32>(-1453f, 517f, global1.d.b), true)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.b, var_0.d.b, var_0.b) - vec3<f32>(-233f, 398f, 831f)))))));
}

