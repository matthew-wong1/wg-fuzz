struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec3<i32>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_2) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1296f + _wgslsmith_f_op_f32(f32(-1f) * -827f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -164f), 269f));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: Struct_2) -> vec2<i32> {
    global0 = _wgslsmith_div_vec4_f32(arg_1, vec4<f32>(_wgslsmith_f_op_f32(func_2(arg_3)), _wgslsmith_f_op_f32(exp2(arg_3.b.c)), 1000f, arg_3.a));
    var var_0 = 8004u;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) * arg_3.a) + 116f)), arg_2.b, arg_3.c, (i32(-1i) * -_wgslsmith_div_i32(28667i, 45411i)) ^ (arg_2.d | (i32(-1i) * -31957i)));
    var_0 = var_1.c.x;
    return firstLeadingBit(vec2<i32>(var_1.d, -(~(-var_1.b.a.x))));
}

fn func_1() -> i32 {
    let var_0 = Struct_1(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(global1.x, -44289i), 1i), abs(global1.x)), -_wgslsmith_div_i32(1i, _wgslsmith_add_i32(-2147483647i, 1i)), global1.x), _wgslsmith_sub_vec2_i32(vec2<i32>(countOneBits(global1.x) & reverseBits(-60382i), _wgslsmith_mult_i32(-global1.x, reverseBits(global1.x))), _wgslsmith_clamp_vec2_i32(global1.xy, max(global1.zz, vec2<i32>(global1.x, 36514i)), firstTrailingBit(global1.xx)) << (firstLeadingBit(~vec2<u32>(6479u, 15803u)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(min(global0.x, 153f)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + 794f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(-234f, Struct_1(vec3<i32>(-1i, 0i, global1.x), vec2<i32>(-19164i, global1.x), -1000f), vec4<u32>(u_input.a, 8377u, 34005u, u_input.a), global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1881f))))));
    global1 = ~vec3<i32>(var_0.b.x, _wgslsmith_dot_vec2_i32(-var_0.a.zy ^ reverseBits(vec2<i32>(var_0.b.x, var_0.b.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a.x, global1.x), ~global1.xy)), ~var_0.a.x);
    var var_1 = Struct_2(var_0.c, Struct_1(firstTrailingBit(var_0.a), func_3(-15492i, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(978f, -1000f, -974f, -724f), vec4<f32>(448f, global0.x, -805f, -960f), vec4<bool>(true, false, false, false))), Struct_2(var_0.c, Struct_1(vec3<i32>(var_0.b.x, 1i, -2147483647i), vec2<i32>(-36433i, var_0.b.x), var_0.c), vec4<u32>(36208u, u_input.a, u_input.a, 31162u), global1.x), Struct_2(-271f, var_0, vec4<u32>(4294967295u, u_input.a, 57528u, u_input.a), 2147483647i)) << (~(~vec2<u32>(60764u, u_input.a)) % vec2<u32>(32u)), -625f), ~vec4<u32>(~35330u, u_input.a, max(~4294967295u, _wgslsmith_sub_u32(u_input.a, u_input.a)), u_input.a), -28478i);
    var var_2 = 4294967295u;
    return var_0.a.x | -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, -2147483647i, 11419i), vec3<i32>(global1.x, global1.x, global1.x)), 27367i, -1i), vec3<i32>(0i, func_1(), _wgslsmith_mod_i32(func_1(), select(-38420i, global1.x, true))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -263f));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(select(220f, _wgslsmith_f_op_f32(min(1578f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-438f, -438f)))))), false)), Struct_1(select(vec3<i32>(global1.x, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-33266i, global1.x, global1.x), vec3<i32>(global1.x, 0i, global1.x))), min(vec3<i32>(0i, -9361i, global1.x), _wgslsmith_add_vec3_i32(vec3<i32>(28911i, -39i, 1i), vec3<i32>(global1.x, global1.x, -30348i))), vec3<bool>(true, all(vec3<bool>(true, false, false)), global1.x < global1.x)), ~(~(~global1.xy)), 151f), ~vec4<u32>(12037u, 4294967295u, _wgslsmith_sub_u32(54578u, u_input.a), u_input.a & u_input.a) >> (~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(8393u, 1u, u_input.a, 0u), vec4<u32>(84277u, 38286u, u_input.a, u_input.a)), ~vec4<u32>(27439u, u_input.a, u_input.a, 4294967295u)) % vec4<u32>(32u)), -_wgslsmith_mod_i32(global1.x, select(global1.x, global1.x & -1i, true)));
    let var_2 = false;
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(global1.x >> (var_1.c.x % 32u));
}

