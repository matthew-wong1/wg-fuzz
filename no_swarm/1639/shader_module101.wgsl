struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<bool, 3>;

var<private> global2: array<Struct_3, 3>;

var<private> global3: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(5925i, 50759u), Struct_1(-20494i, 1u), Struct_1(-6103i, 13015u), Struct_1(2147483647i, 1u), Struct_1(1i, 70546u), Struct_1(-27982i, 0u), Struct_1(59945i, 38227u), Struct_1(i32(-2147483648), 0u), Struct_1(63165i, 10446u), Struct_1(2147483647i, 0u), Struct_1(12450i, 20805u), Struct_1(i32(-2147483648), 30011u), Struct_1(0i, 28426u), Struct_1(2147483647i, 45128u), Struct_1(1i, 1u), Struct_1(i32(-2147483648), 10226u), Struct_1(1i, 4294967295u), Struct_1(-36497i, 39676u), Struct_1(1351i, 12132u), Struct_1(10256i, 19213u), Struct_1(0i, 402u), Struct_1(-1i, 9180u), Struct_1(-7267i, 94319u), Struct_1(-8929i, 51616u), Struct_1(4191i, 4294967295u), Struct_1(i32(-2147483648), 1u), Struct_1(i32(-2147483648), 82970u));

var<private> global4: bool;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = ~(~37365u);
    return arg_0.b;
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> vec3<u32> {
    global2 = array<Struct_3, 3>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_add_i32(firstLeadingBit(_wgslsmith_div_i32(0i, arg_1.b.a)), (i32(-1i) * -8238i) ^ _wgslsmith_clamp_i32(-1i, 38439i, arg_1.b.a)), 52887u), ~arg_1.b.b, ~(-firstTrailingBit(vec2<i32>(arg_1.b.a, 0i))));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1351f))))), 1397f, -1419f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-397f - 727f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-310f, 1f, _wgslsmith_f_op_f32(round(146f)), _wgslsmith_f_op_f32(f32(-1f) * -1368f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-655f, 1000f, 636f, 1222f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 961f, 373f, -996f)))))));
    global0 = !(!(!(!vec4<bool>(false, global0.x, global0.x, global1[_wgslsmith_index_u32(1u, 3u)]))));
    let var_2 = var_0.a;
    return _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(arg_1.a.x, arg_1.b.b), max(1u, 97122u)), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_2.b), vec2<u32>(var_0.a.b, var_2.b)) | vec2<u32>(var_0.b, 0u)), var_0.b, var_0.b), _wgslsmith_add_vec3_u32(vec3<u32>(0u & var_0.b, abs(var_0.a.b), ~var_2.b) << (_wgslsmith_add_vec3_u32(arg_1.a, reverseBits(arg_1.a)) % vec3<u32>(32u)), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_2.b, arg_1.b.b), arg_1.a))));
}

fn func_2() -> Struct_2 {
    var var_0 = global3[_wgslsmith_index_u32(~0u, 27u)];
    var var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(var_0.b, ~var_0.b, ~(~var_0.b)), firstLeadingBit(~(~vec3<u32>(0u, var_0.b, var_0.b)))) << (_wgslsmith_add_vec3_u32(func_3(1i, global2[_wgslsmith_index_u32(var_0.b, 3u)]), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.b, var_0.b, var_0.b), ~(~vec3<u32>(var_0.b, var_0.b, var_0.b)))) % vec3<u32>(32u));
    let var_2 = abs(_wgslsmith_add_vec3_i32(~(~_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, var_0.a, 16451i), vec3<i32>(u_input.b, var_0.a, u_input.b))), min(~abs(vec3<i32>(-2147483647i, var_0.a, var_0.a)), -vec3<i32>(var_0.a, 15197i, 1i))));
    var var_3 = _wgslsmith_dot_vec4_i32(reverseBits(~_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.x, var_2.x, -72342i, 13079i), vec4<i32>(-10276i, 1i, -36457i, var_0.a))) | ~firstLeadingBit(vec4<i32>(var_0.a, var_0.a, u_input.a, 2147483647i)), vec4<i32>(20821i, 19779i, firstLeadingBit(reverseBits(var_2.x) >> (abs(25778u) % 32u)), 65293i));
    let var_4 = Struct_2(global3[_wgslsmith_index_u32(var_0.b, 27u)], 1u, var_2.zz);
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(48199u, 15559u), vec2<u32>(24347u, 26265u))), _wgslsmith_mod_u32(~_wgslsmith_mult_u32(86734u, 30494u), countOneBits(~26345u)), 1u, _wgslsmith_add_u32(~(~4294967295u), _wgslsmith_mod_u32(~1u, func_1(Struct_1(u_input.b, 1u)))));
    let var_1 = -1i;
    var var_2 = Struct_3(var_0.wzx, global3[_wgslsmith_index_u32(~(_wgslsmith_div_u32(~var_0.x, ~var_0.x) >> (103927u % 32u)), 27u)]);
    var var_3 = func_2();
    let var_4 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -358f) + _wgslsmith_f_op_f32(abs(-1086f))), _wgslsmith_f_op_f32(ceil(-1000f))))));
    global3 = array<Struct_1, 27>();
    var var_5 = _wgslsmith_f_op_f32(round(-1000f));
    var var_6 = var_2.b.b;
    var var_7 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_4.x)), var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, _wgslsmith_f_op_f32(ceil(var_4.x)), 2147483647i, var_4.x, -vec3<i32>(-2147483647i, _wgslsmith_add_i32(var_3.c.x, i32(-1i) * -594i), var_1));
}

