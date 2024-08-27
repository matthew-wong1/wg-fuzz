struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<u32>;

var<private> global2: vec3<u32>;

var<private> global3: array<vec4<bool>, 17>;

var<private> global4: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(2147483647i, 1i, 2147483647i, 2147483647i), vec4<i32>(-32823i, -21851i, -14457i, -38780i), vec4<i32>(i32(-2147483648), -64848i, -7868i, -1i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: f32) -> u32 {
    global3 = array<vec4<bool>, 17>();
    global4 = array<vec4<i32>, 3>();
    let var_0 = 0u;
    global2 = _wgslsmith_mult_vec3_u32(~vec3<u32>(global1.x << (36171u % 32u), firstLeadingBit(var_0), _wgslsmith_mod_u32(global2.x, global2.x)), ~(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.a.b, 0u, 7553u), vec3<u32>(u_input.a, arg_0.b, arg_1.a.b)) & vec3<u32>(0u, global2.x, 4294967295u))) & _wgslsmith_sub_vec3_u32(~(~(vec3<u32>(global1.x, arg_1.a.b, 1u) & vec3<u32>(23366u, global1.x, 21102u))), vec3<u32>(_wgslsmith_mod_u32(var_0, _wgslsmith_div_u32(arg_0.b, 59224u)), 46049u, _wgslsmith_dot_vec4_u32(vec4<u32>(3654u, global2.x, var_0, var_0), vec4<u32>(4930u, global1.x, 11094u, var_0)) >> (reverseBits(arg_0.b) % 32u)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -672f)) >= arg_1.a.a.x;
    return 1u;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>) -> f32 {
    global3 = array<vec4<bool>, 17>();
    global0 = true;
    let var_0 = vec2<u32>(global2.x, u_input.a);
    var var_1 = arg_0.a;
    global1 = ~_wgslsmith_div_vec3_u32(~(~vec3<u32>(1u, var_0.x, 0u)), vec3<u32>(func_3(arg_0.a, arg_0, vec2<i32>(arg_1.x, u_input.b), -919f), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(44764u, 18449u), global1.xz))) << (abs(vec3<u32>(arg_0.a.b, 13133u, min(17287u, global2.x)) >> (firstTrailingBit(~vec3<u32>(var_1.b, 0u, global2.x)) % vec3<u32>(32u))) % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1877f * 1584f));
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = 4294967295u;
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(vec3<f32>(-829f, 223f, 214f), 3713u)), ~vec4<i32>(u_input.c.x, u_input.c.x, u_input.b, -35789i))), -443f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1358f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-301f, 241f, -1390f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -570f, -1724f))))))));
    let var_2 = global1.xx;
    let var_3 = u_input.c;
    let var_4 = vec3<i32>((-3314i << (reverseBits(global1.x << (11230u % 32u)) % 32u)) >> (countOneBits(_wgslsmith_mult_u32(11660u, reverseBits(global1.x))) % 32u), arg_0 | ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, -2147483647i, 34201i), vec3<i32>(-12021i, 16884i, -2147483647i)), ~(-countOneBits(abs(21326i))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<u32>(~func_1(~u_input.b), global1.x, ~(~4294967295u | global2.x));
    var var_0 = true;
    var var_1 = u_input.c.x;
    var_1 = -(~_wgslsmith_add_i32(12627i << (~global2.x % 32u), u_input.b));
    let var_2 = 13704u;
    global1 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.a, 99689u << (1u % 32u)), _wgslsmith_mult_u32(~u_input.a, 60899u), global1.x), firstTrailingBit(~(vec3<u32>(var_2, var_2, global1.x) << (vec3<u32>(u_input.a, global1.x, global2.x) % vec3<u32>(32u))))) | ~(~(~vec3<u32>(global1.x, 14520u, 4294967295u) & abs(vec3<u32>(var_2, u_input.a, 50237u))));
    var var_3 = _wgslsmith_dot_vec3_i32(max(reverseBits((vec3<i32>(u_input.b, u_input.b, u_input.b) << (vec3<u32>(33826u, 4294967295u, 61732u) % vec3<u32>(32u))) | (vec3<i32>(u_input.b, u_input.c.x, 0i) ^ vec3<i32>(-18777i, -19247i, 31563i))), select(vec3<i32>(-1i) * -vec3<i32>(-1502i, u_input.b, 2147483647i), -_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, 2147483647i, -1i), vec3<i32>(u_input.c.x, 16186i, 44493i)), vec3<bool>(true, true, true))), vec3<i32>(max(u_input.c.x, max(u_input.c.x, 3642i) ^ ~(-9823i)), 0i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-25224i, 62462i, 2147483647i), vec3<i32>(u_input.c.x, u_input.c.x, -6837i)) | -vec3<i32>(u_input.c.x, u_input.b, 1193i), ~(~vec3<i32>(u_input.c.x, -1i, 0i)))));
    var_3 = (-u_input.b | 2147483647i) >> (~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(66040u, var_2, global2.x) << (vec3<u32>(global2.x, 1u, 1u) % vec3<u32>(32u)), vec3<u32>(37620u, global1.x, global2.x)), ~(vec3<u32>(global2.x, global1.x, 1u) << (vec3<u32>(global2.x, 4294967295u, 25950u) % vec3<u32>(32u)))) % 32u);
    var_0 = all(vec4<bool>(true, !(!(4294967295u >= global2.x)), all(vec2<bool>(true, true)), (u_input.b ^ ~1i) < _wgslsmith_add_i32(-4489i, _wgslsmith_div_i32(u_input.b, u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(u_input.c.x), global2.yz, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -706f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-260f + -1412f), _wgslsmith_f_op_f32(round(-607f)))))));
}

