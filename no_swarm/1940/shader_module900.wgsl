struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_3,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(52431i, i32(-2147483648)), Struct_1(false, 1327f), vec3<f32>(1591f, 658f, -323f));

var<private> global1: Struct_3 = Struct_3(Struct_1(false, 461f), -25489i, vec4<i32>(-24465i, -1i, -1i, 30949i));

var<private> global2: Struct_4;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_5 {
    var var_0 = true;
    var var_1 = ~_wgslsmith_sub_vec3_i32(global2.c.c.wyw, firstTrailingBit(global1.c.yyw));
    let var_2 = reverseBits(-global1.c);
    let var_3 = Struct_5(u_input.a.x, ~select(abs(21705i << (1u % 32u)), select(-1i, 1i, global2.c.a.a), 1i == _wgslsmith_clamp_i32(-2147483647i, -37614i, u_input.d)), Struct_1(false, global1.a.b));
    var var_4 = global2.c;
    return Struct_5(-(~1i) ^ firstTrailingBit(-22816i), reverseBits(-_wgslsmith_div_i32(0i, -var_3.a)), global0.b);
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    global1 = Struct_3(func_2(_wgslsmith_f_op_f32(-global2.c.a.b), 0u).c, _wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a.x, 1i), ~global2.c.c.x, -65839i)), abs(max(0i, global0.a.x)), -(u_input.a.x >> (1u % 32u))), ~(~(-(~vec4<i32>(global2.b, 20224i, 5670i, 26853i)))));
    global0 = Struct_2(u_input.a, global1.a, global0.c);
    let var_0 = Struct_3(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.b - 1000f)) * func_2(_wgslsmith_f_op_f32(global2.c.a.b + global2.c.a.b), 1u).c.b), ~min(1u, u_input.b)).c, -35363i, _wgslsmith_clamp_vec4_i32(~min(vec4<i32>(u_input.a.x, -35893i, 1i, global2.c.b), ~vec4<i32>(-32926i, global2.b, global1.c.x, 0i)), firstTrailingBit(abs(global1.c & vec4<i32>(global1.c.x, -10507i, 2147483647i, u_input.d))), abs(global2.c.c)));
    var var_1 = func_2(func_2(248f, 30182u).c.b, (~u_input.b << (firstTrailingBit(arg_0.x >> (30764u % 32u)) % 32u)) & reverseBits(1u));
    let var_2 = global2.d;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.a.b, -1851f)))), global0.b.b) + 766f);
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(global1.c.yy >> (u_input.c.xy % vec2<u32>(32u)), arg_3, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.b, _wgslsmith_f_op_f32(func_3(firstTrailingBit(u_input.c))), func_2(global0.b.b, ~u_input.c.x).c.b)));
    let var_1 = Struct_3(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1737f), global2.a).c, arg_0.b, global2.c.c);
    global0 = Struct_2(abs(~(reverseBits(u_input.a) << (~vec2<u32>(0u, 0u) % vec2<u32>(32u)))), func_2(_wgslsmith_f_op_f32(sign(var_0.c.x)), u_input.c.x).c, var_0.c);
    var var_2 = var_1;
    var var_3 = abs(countOneBits(u_input.c));
    return func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.b.b, var_0.b.b), arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1001f + var_0.c.x) + _wgslsmith_f_op_f32(func_3(vec3<u32>(var_3.x, 17765u, 0u))))))), 1u).c;
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = select(vec4<bool>(global2.c.a.a, !global2.c.a.a, global0.b.a, all(vec3<bool>(select(global1.a.a, false, true), global0.b.a == global2.d.b.a, true))), select(select(!(!vec4<bool>(global1.a.a, false, false, true)), vec4<bool>(all(global2.e.xz), true, !global2.c.a.a, global0.c.x > 570f), !(global2.d.b.a & global1.a.a)), !(!vec4<bool>(global1.a.a, true, true, global1.a.a)), !vec4<bool>(all(global2.e), 0i >= u_input.a.x, 61908i >= arg_0.x, all(vec3<bool>(true, global1.a.a, false)))), !(!vec4<bool>(select(false, false, false), true, true, true)));
    global1 = Struct_3(func_4(func_2(global2.d.c.x, u_input.b), min(-39938i, -_wgslsmith_dot_vec2_i32(vec2<i32>(17858i, 1i), vec2<i32>(global0.a.x, u_input.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.c))) - -2307f), global2.c.a), _wgslsmith_dot_vec2_i32(-vec2<i32>(global0.a.x, global1.b), global0.a) >> ((global2.a >> (_wgslsmith_mult_u32(global2.a, global2.a) % 32u)) % 32u), countOneBits(min(_wgslsmith_div_vec4_i32(global1.c ^ global1.c, _wgslsmith_add_vec4_i32(global1.c, global1.c)), countOneBits(vec4<i32>(global0.a.x, global2.c.b, global1.c.x, global2.d.a.x)))));
    return global2.d.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(max(global1.b & -reverseBits(u_input.d), firstLeadingBit(2147483647i)), -_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a, _wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(u_input.d, global0.a.x))), vec2<i32>(-global0.a.x, i32(-1i) * -23910i)), global2.c.a);
    var var_1 = func_1(min(~(~(global2.c.c.xww & vec3<i32>(var_0.a, global0.a.x, global0.a.x))), firstLeadingBit(global1.c.wxy & -vec3<i32>(global2.d.a.x, global2.c.b, var_0.b))));
    var var_2 = Struct_3(global1.a, -1i, vec4<i32>(~_wgslsmith_sub_i32(var_0.a, 47903i), _wgslsmith_mod_i32(firstTrailingBit(global2.b), ~(-1i)), u_input.d, func_2(func_1(abs(global1.c.xzw)).b, reverseBits(u_input.b) << (~u_input.c.x % 32u)).a));
    global0 = global2.d;
    var_1 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, global1.a.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(step(global2.c.a.b, var_0.c.b)))), -1324f)), 73327u, abs(40686u));
}

