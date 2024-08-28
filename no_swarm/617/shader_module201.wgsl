struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: bool,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<i32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: Struct_4;

var<private> global2: array<Struct_1, 19>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> f32 {
    global2 = array<Struct_1, 19>();
    global2 = array<Struct_1, 19>();
    global1 = Struct_4(_wgslsmith_sub_u32(~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.a, u_input.c.x), u_input.a.yz)), u_input.c.x), any(!(!vec4<bool>(global1.c.x, true, false, false))), global1.c);
    global1 = Struct_4(global1.a, true, global1.c);
    var var_0 = 190f;
    return _wgslsmith_f_op_f32(f32(-1f) * -885f);
}

fn func_2(arg_0: i32, arg_1: Struct_4) -> i32 {
    global2 = array<Struct_1, 19>();
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(func_3(true)), 290f), Struct_1(~(-abs(vec2<i32>(arg_0, arg_0)))), !all(global1.c.zx), u_input.b, any(vec2<bool>(arg_1.b, any(select(vec4<bool>(false, arg_1.b, global1.b, true), vec4<bool>(true, arg_1.c.x, true, global1.c.x), vec4<bool>(true, false, arg_1.b, global1.c.x))))));
    global1 = Struct_4(arg_1.a, true, vec3<bool>(true, ~global1.a <= ~_wgslsmith_clamp_u32(u_input.a.x, global1.a, var_0.d), !all(vec3<bool>(global1.b, global1.c.x, false)) && true));
    let var_1 = 1i ^ ~min(-_wgslsmith_mult_i32(-1i, arg_0), var_0.b.a.x);
    let var_2 = Struct_3(global0[_wgslsmith_index_u32(1u, 27u)], u_input.a, -(~(-vec3<i32>(arg_0, arg_0, -17064i) | _wgslsmith_add_vec3_i32(vec3<i32>(var_1, 67715i, var_0.b.a.x), vec3<i32>(var_1, 2147483647i, arg_0)))), Struct_1(-var_0.b.a), vec4<u32>(countOneBits(~(~u_input.c.x)), _wgslsmith_add_u32(abs(var_0.d), 14507u), 11822u, reverseBits(_wgslsmith_div_u32(~6083u, 1836u))));
    return var_2.d.a.x & select(min(-1i, firstTrailingBit(min(var_1, 2147483647i))), firstTrailingBit((i32(-1i) * -22563i) >> (_wgslsmith_add_u32(var_2.e.x, 4294967295u) % 32u)), !(!(!global1.c.x)));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> bool {
    let var_0 = func_2(1i, Struct_4(global1.a, global1.c.x, global1.c));
    global0 = array<Struct_1, 27>();
    let var_1 = Struct_3(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(select(select(vec4<u32>(33039u, 1u, global1.a, 39983u), vec4<u32>(43134u, 30272u, 4294967295u, u_input.b), vec4<bool>(true, false, global1.b, global1.b)), vec4<u32>(u_input.a.x, global1.a, 16953u, 98625u), global1.c.x), _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 60201u, 1u, u_input.b), vec4<u32>(u_input.b, 21704u, 38458u, 4294967295u))), 27u)], vec3<u32>(2188u, global1.a, 12485u), -(~select(~vec3<i32>(-9294i, 10873i, arg_1), -vec3<i32>(-2147483647i, -2147483647i, arg_1), true)), global0[_wgslsmith_index_u32(u_input.b, 27u)], min(~(~vec4<u32>(global1.a, 141631u, global1.a, u_input.b)), vec4<u32>(global1.a, u_input.c.x, select(max(u_input.c.x, u_input.a.x), 4294967295u, all(global1.c.yz)), u_input.c.x)));
    let var_2 = vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x));
    var var_3 = !vec4<bool>(true, true, global1.c.x, true);
    return !(!(!(all(global1.c.yz) | any(vec3<bool>(var_3.x, false, global1.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~u_input.a.x, 27u)];
    let var_1 = vec2<bool>(global1.c.x, all(vec4<bool>(true, global1.b, false, func_1(vec2<f32>(-1549f, 128f), var_0.a.x))));
    global2 = array<Struct_1, 19>();
    let var_2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(~2251u, u_input.c.x), 1u, ~1u, 1u), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, global1.a, 29958u, u_input.a.x), _wgslsmith_mod_vec4_u32(select(vec4<u32>(74030u, 74681u, 4294967295u, 0u), vec4<u32>(0u, global1.a, global1.a, u_input.a.x), false), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x)))), max(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 41776u, _wgslsmith_add_u32(1u, u_input.b), u_input.a.x), (vec4<u32>(global1.a, u_input.a.x, 21376u, u_input.c.x) >> (vec4<u32>(0u, global1.a, global1.a, u_input.c.x) % vec4<u32>(32u))) | reverseBits(vec4<u32>(44445u, 4294967295u, 36358u, 4294967295u))), ~vec4<u32>(~4294967295u, ~11582u, 34647u, 16565u)), _wgslsmith_mult_vec4_u32(firstLeadingBit(~(vec4<u32>(global1.a, 46390u, global1.a, 0u) ^ vec4<u32>(636u, global1.a, u_input.a.x, u_input.a.x))), abs(~vec4<u32>(u_input.a.x, 4294967295u, 1u, global1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(482f * _wgslsmith_f_op_f32(round(1083f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1187f + _wgslsmith_f_op_f32(f32(-1f) * -1375f))))), 1u, var_2.xxw, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(196f)) - -154f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(var_1.x)))))));
}

