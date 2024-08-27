struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32;

var<private> global2: i32;

var<private> global3: Struct_1 = Struct_1(vec4<i32>(1i, i32(-2147483648), -1i, i32(-2147483648)), 123411u, 0u);

var<private> global4: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    var var_0 = global3.a.x >> (u_input.c % 32u);
    let var_1 = !(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true))));
    global0 = arg_0;
    global0 = arg_0;
    var var_2 = Struct_1(firstTrailingBit(vec4<i32>(abs(_wgslsmith_add_i32(1i, global3.a.x)), global3.a.x, reverseBits(global3.a.x) >> (~global0.b % 32u), 1i)), 66453u, abs(~max(4294967295u, 0u)));
    return firstLeadingBit(~var_2.c);
}

fn func_2(arg_0: u32) -> u32 {
    global3 = Struct_1(vec4<i32>(~(-2147483647i) | abs(global3.a.x), -68741i, 7138i, 0i), func_3(Struct_2(global4.a, 28691u), Struct_2(vec4<f32>(1184f, 797f, _wgslsmith_div_f32(-126f, 614f), 1059f), ~(~4294967295u))), ~(~(~(~27764u))));
    var var_0 = Struct_2(_wgslsmith_div_vec4_f32(global0.a, _wgslsmith_f_op_vec4_f32(global4.a * _wgslsmith_f_op_vec4_f32(-global0.a))), ~39109u);
    return 17257u;
}

fn func_1() -> Struct_2 {
    var var_0 = vec2<bool>(true, 66284u == global0.b);
    global1 = _wgslsmith_mod_u32(_wgslsmith_div_u32(~49629u, 15156u), func_2(0u));
    var var_1 = vec3<i32>(global3.a.x, firstLeadingBit(_wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(global3.a.xz, global3.a.zy), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-12944i, -2185i), global3.a.yz), firstTrailingBit(global3.a.yz)))), _wgslsmith_sub_i32(abs(_wgslsmith_sub_i32(-7485i, global3.a.x) & 1i), -select(global3.a.x >> (4294967295u % 32u), -1i, all(vec4<bool>(true, true, true, false)))));
    var var_2 = -var_1.x;
    var var_3 = _wgslsmith_f_op_f32(step(global0.a.x, _wgslsmith_f_op_f32(-2055f * _wgslsmith_f_op_f32(max(-1398f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1399f))))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(exp2(global4.a)), 50760u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.b >> (_wgslsmith_div_u32(~global0.b, 4294967295u) % 32u), _wgslsmith_add_u32(32746u, global4.b), global0.b, 4294967295u), vec4<u32>(firstLeadingBit(global3.c), 1667u << (global0.b % 32u), ~4294967295u, 21096u));
    global1 = _wgslsmith_sub_u32(u_input.d.x, _wgslsmith_dot_vec2_u32(~(vec2<u32>(global3.b, 16777u) >> (vec2<u32>(4294967295u, global4.b) % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(u_input.d.yx | vec2<u32>(var_0.x, var_0.x), ~u_input.a))) >> (min(min(_wgslsmith_mod_u32(global4.b, global4.b), var_0.x), var_0.x) % 32u);
    global1 = 1u;
    var var_1 = Struct_1(global3.a, global4.b, var_0.x);
    global4 = func_1();
    var var_2 = _wgslsmith_f_op_f32(round(-318f));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_vec3_i32(~vec3<i32>(global3.a.x, var_1.a.x, global3.a.x), abs(abs(var_1.a.zyw)), vec3<i32>(-1i, global3.a.x, ~22701i)), _wgslsmith_mult_vec3_i32(global3.a.xzz, vec3<i32>(min(2147483647i, ~global3.a.x), ~abs(-2147483647i), -global3.a.x)));
}

