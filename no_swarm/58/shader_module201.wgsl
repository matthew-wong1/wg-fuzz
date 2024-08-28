struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<f32>,
    c: Struct_4,
    d: Struct_3,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32 = 1u;

var<private> global2: array<vec2<bool>, 24>;

var<private> global3: array<vec4<u32>, 2>;

var<private> global4: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(807f, 155f, 131f, 1000f), vec4<f32>(-587f, -1000f, 367f, 1272f), vec4<f32>(305f, -1348f, -361f, 1330f), vec4<f32>(-648f, 1270f, 348f, 3165f), vec4<f32>(1363f, 640f, -408f, -1606f), vec4<f32>(-686f, 445f, -362f, 195f));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: i32) -> Struct_4 {
    let var_0 = 629u;
    var var_1 = 1f;
    let var_2 = 1470f;
    global2 = array<vec2<bool>, 24>();
    var_1 = -132f;
    return Struct_4(Struct_1(!(-1059f <= _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_2, 318f))), ~(u_input.a | ~vec4<u32>(37629u, u_input.a.x, 1u, 0u)), vec4<bool>(true, u_input.b.x <= -arg_0, true, all(vec3<bool>(false, false, true)))), vec2<u32>(~52654u, min(1u, abs(firstLeadingBit(0u)))));
}

fn func_1(arg_0: u32, arg_1: f32) -> u32 {
    global1 = 42326u;
    global3 = array<vec4<u32>, 2>();
    let var_0 = 466f;
    let var_1 = _wgslsmith_sub_i32(u_input.b.x, -u_input.b.x);
    let var_2 = func_2(abs(_wgslsmith_add_i32(u_input.d, ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, 2147483647i, 18602i, 0i), vec4<i32>(0i, 0i, var_1, var_1)))));
    return 4294967295u;
}

fn func_3() -> vec2<i32> {
    let var_0 = Struct_3(17086u, -441f, _wgslsmith_mod_vec4_u32(vec4<u32>(~(~4294967295u), ~u_input.c.x, u_input.c.x, 1u), ~(~(vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.c.x) & vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)))), min(1i, min(_wgslsmith_add_i32(u_input.b.x, -1i), 26190i)) << (4294967295u % 32u));
    let var_1 = Struct_5(Struct_4(func_2(-min(2147483647i, var_0.d)).a, _wgslsmith_add_vec2_u32(vec2<u32>(abs(u_input.c.x), 1u), ~(~u_input.a.zz))), vec4<f32>(var_0.b, 1279f, _wgslsmith_f_op_f32(abs(func_2(u_input.d ^ 0i).a.b.x)), -157f), Struct_4(func_2(_wgslsmith_div_i32(u_input.d & -1i, -u_input.b.x)).a, select(select(_wgslsmith_clamp_vec2_u32(var_0.c.ww, u_input.a.zw, vec2<u32>(0u, 47796u)), min(var_0.c.wx, u_input.c.yx), vec2<bool>(true, false)), var_0.c.ww, false)), Struct_3(~(~_wgslsmith_mod_u32(var_0.a, var_0.c.x)), _wgslsmith_f_op_f32(-var_0.b), (~vec4<u32>(4385u, var_0.c.x, var_0.c.x, 4294967295u) << (~vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 1u) % vec4<u32>(32u))) >> (~(u_input.a & global3[_wgslsmith_index_u32(0u, 2u)]) % vec4<u32>(32u)), var_0.d), func_2(u_input.b.x));
    var var_2 = firstLeadingBit(u_input.b);
    global0 = abs(var_1.d.d);
    let var_3 = _wgslsmith_f_op_f32(sign(-464f));
    return _wgslsmith_mod_vec2_i32(select(-(u_input.b.zz << (var_0.c.xz % vec2<u32>(32u))), vec2<i32>(var_1.d.d, var_2.x) >> (countOneBits(vec2<u32>(var_0.c.x, u_input.c.x)) % vec2<u32>(32u)), !vec2<bool>(var_1.e.a.a, var_1.e.a.a)) >> (vec2<u32>(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(var_0.c.x, 42997u, var_1.e.b.x)), countOneBits(var_0.c.xww)), _wgslsmith_sub_u32(_wgslsmith_div_u32(var_0.c.x, 0u), 12784u)) % vec2<u32>(32u)), vec2<i32>(abs(var_0.d), -abs(reverseBits(var_1.d.d))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b - 1268f)) + 426f)) - -398f);
    global1 = ~arg_2;
    global2 = array<vec2<bool>, 24>();
    var var_1 = !func_2(10055i).a.a;
    let var_2 = vec4<bool>(any(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false))), true, func_2(~(-_wgslsmith_div_i32(14923i, arg_3.d))).a.a, (reverseBits(arg_0.x ^ arg_0.x) < ~(-20255i)) || true);
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(~(~86543u), 24u)];
    let var_1 = vec3<u32>(max(_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_mult_u32(4294967295u, func_1(14330u, -751f))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a.x, 22439u, u_input.c.x), vec4<u32>(u_input.c.x, 31348u, 0u, u_input.a.x)), global3[_wgslsmith_index_u32(~u_input.c.x, 2u)])), ~1u, ~_wgslsmith_add_u32(1u, 69717u));
    var var_2 = Struct_3((var_1.x & u_input.a.x) & 1u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1314f - _wgslsmith_f_op_f32(-837f - 155f)))))), firstTrailingBit(global3[_wgslsmith_index_u32(~firstTrailingBit(~u_input.c.x), 2u)]), _wgslsmith_mod_i32(-u_input.b.x & u_input.d, countOneBits(countOneBits(-9806i))));
    global0 = var_2.d;
    global1 = ~func_4(-_wgslsmith_add_vec4_i32(vec4<i32>(var_2.d, 12974i, 9653i, var_2.d), vec4<i32>(0i, u_input.d, u_input.b.x, var_2.d)), ~func_3(), _wgslsmith_clamp_u32(~var_2.a, 15318u, ~4294967295u), Struct_3(var_2.a, _wgslsmith_f_op_f32(var_2.b * -973f), vec4<u32>(var_2.c.x, var_1.x, var_2.c.x, 50720u), u_input.b.x)) >> (~(71177u << (1u % 32u)) % 32u);
    var var_3 = min(vec2<i32>(reverseBits(abs(u_input.d)), 42208i), vec2<i32>(reverseBits(countOneBits(u_input.b.x)), ~var_2.d));
    var_0 = vec2<bool>(any(vec2<bool>(false, false)), all(vec4<bool>(true, var_0.x, true, true)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.b - _wgslsmith_f_op_f32(1f * var_2.b)))) - _wgslsmith_f_op_f32(-var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(1062f, global4[_wgslsmith_index_u32(var_2.a | ~u_input.c.x, 6u)], -45988i);
}

