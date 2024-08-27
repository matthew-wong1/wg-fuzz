struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: bool,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
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

var<private> global0: Struct_1;

var<private> global1: f32 = -1000f;

var<private> global2: array<bool, 26>;

var<private> global3: array<vec2<f32>, 27> = array<vec2<f32>, 27>(vec2<f32>(-1000f, -221f), vec2<f32>(-1000f, -1362f), vec2<f32>(1370f, -745f), vec2<f32>(848f, 367f), vec2<f32>(805f, -469f), vec2<f32>(-1294f, -596f), vec2<f32>(1177f, 310f), vec2<f32>(-185f, 1605f), vec2<f32>(-1051f, 326f), vec2<f32>(-236f, -1075f), vec2<f32>(1000f, 1000f), vec2<f32>(734f, 484f), vec2<f32>(-911f, 1380f), vec2<f32>(-103f, 177f), vec2<f32>(-1887f, 1300f), vec2<f32>(-485f, 1000f), vec2<f32>(1291f, 915f), vec2<f32>(341f, -852f), vec2<f32>(790f, 926f), vec2<f32>(223f, -1526f), vec2<f32>(-449f, -694f), vec2<f32>(-1000f, 639f), vec2<f32>(297f, 1146f), vec2<f32>(740f, 1106f), vec2<f32>(-1066f, 327f), vec2<f32>(-549f, -1000f), vec2<f32>(-508f, -2703f));

var<private> global4: Struct_3;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: f32) -> Struct_2 {
    return global4.c;
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: vec3<u32>) -> i32 {
    var var_0 = arg_1.c.b.x;
    var var_1 = abs(abs(_wgslsmith_dot_vec3_i32(func_1(false, 0u, -499f).d.b.yxy, _wgslsmith_mod_vec3_i32(vec3<i32>(4656i, u_input.c.x, u_input.c.x), u_input.c))));
    var var_2 = func_1(any(select(select(vec3<bool>(false, arg_1.c.c, global0.c), vec3<bool>(global2[_wgslsmith_index_u32(130117u, 26u)], global0.c, arg_1.d), vec3<bool>(true, arg_1.c.c, true)), vec3<bool>(false, true, false), true)) | (max(u_input.c.x, _wgslsmith_dot_vec3_i32(arg_1.c.b.xzx, global4.a.b.wxw)) <= abs(arg_1.a)), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))));
    var var_3 = ~(~0i);
    var var_4 = Struct_4(max(-1i, -func_1(global4.a.c, u_input.a.x, 345f).a.b.x << (firstTrailingBit(~0u) % 32u)), arg_1.c.a.zy, global4.a, 4294967295u <= ~arg_2.x, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-385f, 507f, 891f, arg_0), arg_1.e)), _wgslsmith_f_op_vec4_f32(vec4<f32>(774f, global4.b.d.a.x, arg_1.e.x, -171f) - arg_1.e)) - vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-global0.a.x), -193f, -1823f)))));
    return var_2.d.b.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: vec4<bool>) -> f32 {
    var var_0 = vec3<i32>(_wgslsmith_add_i32(-13648i, -31178i), -50751i, i32(-1i) * -2147483647i);
    global4 = Struct_3(Struct_1(global0.a, ~vec4<i32>(u_input.c.x, func_3(global0.a.x, Struct_4(0i, global3[_wgslsmith_index_u32(42986u, 27u)], global4.a, arg_3.x, vec4<f32>(-2572f, global4.b.a.a.x, 501f, 257f)), vec3<u32>(1u, global0.d, 98285u)), global0.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(47244i, 2147483647i), arg_0)), any(arg_3) & (true && any(arg_3)), max(~1u, ~_wgslsmith_add_u32(0u, global4.c.d.e.x)), max(~vec2<u32>(28488u, 8486u), u_input.a)), Struct_2(Struct_1(arg_2, global0.b, !any(vec3<bool>(arg_3.x, global4.c.a.c, global0.c)), ~_wgslsmith_add_u32(0u, 62771u), _wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(12307u, 11302u) >> (u_input.a % vec2<u32>(32u)), ~vec2<u32>(u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1056f * arg_2.x) - -728f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1052f - -474f) + _wgslsmith_f_op_f32(max(arg_2.x, arg_2.x))), any(select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 26u)], false, true), arg_3, vec4<bool>(false, false, global4.b.a.c, global2[_wgslsmith_index_u32(global0.e.x, 26u)]))))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(sign(695f))), func_1(func_1(global2[_wgslsmith_index_u32(u_input.a.x, 26u)] || false, _wgslsmith_div_u32(6247u, 79871u), global4.b.c).d.c, u_input.b, 202f).d), Struct_2(func_1(arg_1.x, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(42937u, 1u, 117268u, 19268u)), vec4<u32>(global0.e.x, global4.a.e.x, 20724u, 1u)), 1146f).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c.b * global0.a.x))), _wgslsmith_f_op_f32(round(-412f)), global4.c.a), firstTrailingBit(global0.d));
    let var_1 = global2[_wgslsmith_index_u32(~68374u, 26u)];
    global3 = array<vec2<f32>, 27>();
    var var_2 = Struct_2(Struct_1(arg_2, vec4<i32>(var_0.x << (~global0.e.x % 32u), 17756i, _wgslsmith_dot_vec3_i32(global0.b.xxw, max(u_input.c, vec3<i32>(var_0.x, global0.b.x, var_0.x))), _wgslsmith_add_i32(arg_0.x, _wgslsmith_mult_i32(-1i, -9124i))), global0.c, 1u, vec2<u32>(1u, global0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.c.b, global4.b.c)))), 486f, global4.a);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global0.a.x, _wgslsmith_f_op_f32(global4.b.c + global4.b.b))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.a.a.x * -150f), -1944f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!(!(!all(vec4<bool>(false, global0.c, true, true)))), max(global0.e.x, ~1u), global4.a.a.x);
    var var_1 = _wgslsmith_dot_vec4_i32(~global0.b, global0.b);
    let var_2 = var_0.b;
    let var_3 = ~max(var_0.d.b.zzz, firstTrailingBit(vec3<i32>(var_0.a.b.x, 0i, _wgslsmith_div_i32(-2147483647i, 1i))));
    let var_4 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global4.b.a.b.yy, vec2<bool>(global0.c, false), global4.c.d.a, vec4<bool>(global4.b.a.c, false, var_0.d.c, false)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - var_2))), _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a.a.x)) - var_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -192f) - -2449f))), var_0.d.b, global4.b.d.c, ~(~_wgslsmith_clamp_u32(global0.d, var_0.a.e.x, 18297u) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.d, 4294967295u, var_0.a.e.x, 1u), abs(vec4<u32>(global0.d, 5275u, u_input.a.x, 40148u)))), _wgslsmith_mult_vec2_u32(max(u_input.a, _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(global0.e, vec2<u32>(7894u, 0u), global0.e), global4.a.e, var_0.a.e)), ~(firstTrailingBit(var_0.d.e) ^ global4.c.a.e)));
    var var_5 = global0.b.x;
    global3 = array<vec2<f32>, 27>();
    let var_6 = select(!(!vec3<bool>(!global2[_wgslsmith_index_u32(27547u, 26u)], u_input.c.x <= -2147483647i, true)), vec3<bool>(var_2 > 787f, all(select(!vec4<bool>(true, var_0.a.c, false, var_4.c), select(vec4<bool>(global4.a.c, true, var_0.a.c, true), vec4<bool>(true, var_0.d.c, true, var_0.d.c), global4.b.a.c), false)), firstTrailingBit(39413i) > -6809i), true);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_i32(var_4.b.x, _wgslsmith_mult_i32(~(-15485i), _wgslsmith_add_i32(52161i, u_input.c.x)))));
}

