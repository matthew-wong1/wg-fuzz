struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_3,
    d: vec3<u32>,
    e: i32,
}

struct Struct_5 {
    a: i32,
    b: vec4<i32>,
    c: Struct_2,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(2071f, -722f), vec2<f32>(1000f, 1248f), vec2<f32>(-1750f, -1950f));

var<private> global1: f32 = -453f;

var<private> global2: vec2<u32>;

var<private> global3: array<Struct_4, 20>;

var<private> global4: i32 = 0i;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    global0 = array<vec2<f32>, 3>();
    let var_0 = Struct_1(vec2<u32>(global2.x, ~4294967295u), -1i, vec4<u32>(global2.x, u_input.a, 4294967295u, ~(~(~u_input.c.x))));
    let var_1 = 81791u;
    let var_2 = var_0.b;
    global4 = u_input.d;
    return 761f;
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: u32, arg_3: Struct_3) -> Struct_4 {
    global0 = array<vec2<f32>, 3>();
    let var_0 = ~(-2147483647i);
    var var_1 = ~80218u;
    var var_2 = global3[_wgslsmith_index_u32(4294967295u, 20u)];
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + 1027f))) != arg_1;
    return global3[_wgslsmith_index_u32(arg_3.b.x, 20u)];
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: Struct_4, arg_3: Struct_4) -> i32 {
    let var_0 = ~_wgslsmith_sub_vec4_i32(select(-firstTrailingBit(arg_1.b), vec4<i32>(_wgslsmith_clamp_i32(3750i, u_input.b, 13364i), ~(-1i), ~u_input.d, countOneBits(701i)), arg_2.a.a.x && arg_2.a.a.x), arg_1.b);
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_2.c.a))));
    let var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(arg_3.a.b.b, arg_1.c.d.b)) >> (~arg_3.c.b % vec2<u32>(32u)), ~arg_3.c.c ^ ~vec2<i32>(62022i, 1i)), vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-21026i, 28862i, 20963i, arg_3.e), ~arg_1.b), (u_input.d >> (7098u % 32u)) ^ _wgslsmith_dot_vec3_i32(var_0.zwy, vec3<i32>(var_0.x, 0i, 0i)))) & -15477i;
    var var_2 = select(arg_2.a.a.xy, func_2(_wgslsmith_f_op_vec4_f32(-arg_0), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-func_2(arg_0, 962f, 4294967295u, arg_3.c).c.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.a) * _wgslsmith_f_op_f32(f32(-1f) * -738f)))), 0u, Struct_3(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(-arg_3.c.a))), arg_2.d.yy, func_2(arg_0, arg_0.x, _wgslsmith_add_u32(91144u, global2.x), arg_3.c).c.c, max(-1i, _wgslsmith_mult_i32(var_0.x, -2147483647i)), firstTrailingBit(arg_1.a) ^ ~var_0.x)).a.a.zy, !(0i < arg_2.c.e));
    global3 = array<Struct_4, 20>();
    return 1i;
}

fn func_5(arg_0: vec3<u32>, arg_1: bool, arg_2: bool, arg_3: i32) -> vec4<bool> {
    global2 = vec2<u32>(arg_0.x, u_input.c.x);
    return vec4<bool>(all(!(!vec4<bool>(arg_2, true, false, arg_1))), arg_1, select(arg_2, !any(vec3<bool>(true, false, true)) != true, true | all(vec3<bool>(true, true, true))), arg_2);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec4<bool>) -> vec4<u32> {
    let var_0 = Struct_2(func_5(arg_2.c.wwx, true, arg_0.a.a.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(arg_0.c.c.x, firstTrailingBit(arg_2.b)), func_4(vec4<f32>(arg_0.c.a, -814f, 1207f, 2005f), Struct_5(u_input.d, vec4<i32>(arg_2.b, -14993i, -13819i, arg_0.c.e), arg_0.a, global2.x, arg_1.a), Struct_4(arg_0.a, global2.x, arg_0.c, vec3<u32>(arg_1.b.x, arg_2.a.x, 8746u), 1i), func_2(vec4<f32>(arg_0.c.a, 407f, -1027f, -320f), arg_1.a, 1u, arg_1)))), arg_0.a.c, arg_0.a.b, func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-483f, arg_0.c.a, arg_0.c.a, arg_0.c.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, arg_1.a, -1448f, 1358f) + vec4<f32>(arg_0.c.a, -1494f, 1069f, arg_0.c.a))))), _wgslsmith_f_op_f32(trunc(arg_1.a)), ~global2.x, arg_0.c).a.b);
    global0 = array<vec2<f32>, 3>();
    global2 = var_0.d.a & vec2<u32>(26303u, global2.x);
    let var_1 = any(select(select(vec3<bool>(arg_0.a.a.x, arg_0.a.a.x, true), func_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-305f, -315f, arg_0.c.a, 494f))), -1289f, _wgslsmith_mod_u32(global2.x, 32826u), Struct_3(-1377f, var_0.b.a, arg_1.c, arg_0.a.d.b, u_input.d)).a.a.ywy, true), vec3<bool>(func_5(var_0.c.c.xzx, arg_0.a.a.x, true, arg_1.e).x, all(func_2(vec4<f32>(arg_0.c.a, 375f, arg_1.a, arg_1.a), 1000f, 0u, arg_1).a.a), all(arg_3.yww)), var_0.a.x));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.c.a))))));
    return vec4<u32>(~(_wgslsmith_div_u32(global2.x, global2.x) << (u_input.a % 32u)) & ~arg_2.c.x, 65218u, abs(_wgslsmith_mod_u32(abs(~global2.x), arg_1.b.x)), min(~518u & _wgslsmith_dot_vec2_u32(arg_2.a, vec2<u32>(arg_2.c.x, u_input.a)), arg_2.a.x) ^ min(~(~arg_0.c.b.x), global2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(40821u, u_input.a, 1u, 4294967295u), func_1(global3[_wgslsmith_index_u32(12037u, 20u)], Struct_3(101f, u_input.c, vec2<i32>(u_input.b, -2147483647i), 55133i, u_input.b), Struct_1(vec2<u32>(4294967295u, 1u), -73i, vec4<u32>(4294967295u, u_input.a, u_input.a, 36477u)), vec4<bool>(false, false, true, true))) ^ (reverseBits(vec4<u32>(global2.x, global2.x, 18587u, u_input.a)) ^ ~vec4<u32>(global2.x, 1u, 11187u, u_input.a)), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(19832u, u_input.a, 4294967295u, u_input.a), vec4<u32>(global2.x, u_input.a, 4294967295u, 12670u)), vec4<u32>(global2.x, 32534u, 12713u, 0u)), u_input.a, 1u, 109466u >> (1u % 32u))), firstLeadingBit(min(abs(vec4<u32>(global2.x, 4294967295u, global2.x, u_input.a)), vec4<u32>(4294967295u, global2.x, u_input.a, 62705u)) << (func_1(func_2(vec4<f32>(-134f, 1820f, -1563f, -498f), -1973f, global2.x, Struct_3(1285f, u_input.c, vec2<i32>(28114i, -1i), 0i, 0i)), Struct_3(1233f, u_input.c, vec2<i32>(-1i, u_input.d), u_input.b, -1i), func_2(vec4<f32>(1085f, 2305f, 1335f, 2051f), 785f, u_input.a, Struct_3(-238f, vec2<u32>(u_input.a, global2.x), vec2<i32>(-2147483647i, u_input.b), u_input.b, 54675i)).a.c, func_2(vec4<f32>(637f, 1054f, -1297f, 587f), 699f, global2.x, Struct_3(-638f, vec2<u32>(u_input.c.x, 0u), vec2<i32>(1i, u_input.b), u_input.b, u_input.b)).a.a) % vec4<u32>(32u))));
    let var_1 = ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, select(1u, global2.x, true)), countOneBits(vec2<u32>(global2.x, u_input.c.x)) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.c.x), u_input.c, vec2<u32>(80626u, global2.x)) % vec2<u32>(32u))));
    let var_2 = u_input.d;
    let var_3 = (u_input.d ^ var_2) | u_input.b;
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -249f)))), 1310f, -520f));
    global1 = func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(var_4.x + 267f), 1087f, -572f, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, -1853f, -1000f, var_4.x)))))), _wgslsmith_f_op_f32(trunc(var_4.x)), u_input.c.x, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, _wgslsmith_f_op_f32(-1630f - var_4.x), _wgslsmith_f_op_f32(floor(var_4.x)), _wgslsmith_f_op_f32(var_4.x + 994f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_4.x - var_4.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1466f) + 573f))), _wgslsmith_mod_u32(~(~var_1.x), max(global2.x, u_input.c.x)), func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_4.x, var_4.x, var_4.x) - vec4<f32>(-206f, var_4.x, -390f, 516f)))), -1460f, 4294967295u, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, -1039f, var_4.x, var_4.x)), _wgslsmith_f_op_f32(var_4.x * 443f), global2.x ^ 4294967295u, func_2(vec4<f32>(var_4.x, 843f, var_4.x, var_4.x), 1750f, u_input.a, Struct_3(var_4.x, vec2<u32>(var_0.x, u_input.a), vec2<i32>(73852i, var_2), -1i, 2147483647i)).c).c).c).c).c.a;
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(4294967295u, 3u)]);
}

