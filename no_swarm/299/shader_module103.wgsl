struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

var<private> global1: array<u32, 25>;

var<private> global2: array<vec2<i32>, 5>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = ~max(vec3<u32>(~u_input.b, abs(~arg_2.b), 22382u), u_input.c);
    let var_1 = min((abs(firstTrailingBit(vec4<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 25u)], var_0.x, u_input.b, arg_3.c.b))) & (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, global1[_wgslsmith_index_u32(arg_0.c.b, 25u)], 0u, 55466u), vec4<u32>(1u, 19801u, global1[_wgslsmith_index_u32(arg_1, 25u)], arg_3.c.b)) & ~vec4<u32>(global1[_wgslsmith_index_u32(arg_2.b, 25u)], arg_3.c.b, global1[_wgslsmith_index_u32(arg_1, 25u)], 1u))) << ((_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 0u, 1u, 0u), vec4<u32>(4294967295u, 72080u, var_0.x, arg_3.c.b)), ~vec4<u32>(var_0.x, arg_1, arg_1, arg_2.b)) & vec4<u32>(countOneBits(global1[_wgslsmith_index_u32(0u, 25u)]), u_input.c.x, _wgslsmith_sub_u32(1u, 1u), 1u)) % vec4<u32>(32u)), vec4<u32>(~_wgslsmith_mod_u32(~0u, 7451u), select(arg_2.b, arg_3.c.b, !(!arg_2.c)), _wgslsmith_div_u32(_wgslsmith_div_u32(firstLeadingBit(u_input.b), 0u), var_0.x), ~arg_0.c.b));
    var var_2 = arg_3.c;
    let var_3 = vec4<i32>(2147483647i, -arg_3.c.a.x, _wgslsmith_mult_i32(96719i, -37727i >> (1u % 32u)), -42998i >> (~max(var_1.x, firstLeadingBit(global1[_wgslsmith_index_u32(arg_3.c.b, 25u)])) % 32u));
    let var_4 = _wgslsmith_f_op_f32(sign(arg_0.c.d));
    return var_1;
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> bool {
    let var_0 = vec3<i32>(u_input.a.x ^ abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-22150i, global0[_wgslsmith_index_u32(u_input.b, 1u)], u_input.a.x, 5375i), u_input.a)), u_input.a.x, u_input.a.x) >> (~u_input.c % vec3<u32>(32u));
    let var_1 = Struct_2(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true)), false, Struct_1(((vec4<i32>(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(u_input.c.x, 1u)], global0[_wgslsmith_index_u32(0u, 1u)]) << (vec4<u32>(u_input.c.x, 19888u, global1[_wgslsmith_index_u32(16238u, 25u)], global1[_wgslsmith_index_u32(9804u, 25u)]) % vec4<u32>(32u))) & u_input.a) >> (~func_3(Struct_2(vec4<bool>(false, false, true, false), true, Struct_1(u_input.a, 1u, false, arg_0)), 14052u, Struct_1(u_input.a, 9858u, false, arg_1.x), Struct_2(vec4<bool>(true, false, false, false), false, Struct_1(u_input.a, 1u, false, arg_0))) % vec4<u32>(32u)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)] | 8430u, 56396u), ~(u_input.c.x ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 25u)], 25u)])), all(vec3<bool>(select(true, false, false), true, any(vec4<bool>(false, false, false, false)))), -434f));
    var var_2 = -1094f;
    let var_3 = vec2<u32>(~var_1.c.b, firstTrailingBit(var_1.c.b));
    var var_4 = vec4<u32>(1u, ~var_1.c.b, reverseBits(~4294967295u), global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~abs(1u), _wgslsmith_mod_u32(u_input.c.x | 9254u, 1u), 4294967295u), 25u)]);
    return var_1.b;
}

fn func_1(arg_0: i32, arg_1: f32) -> vec4<i32> {
    var var_0 = any(select(vec3<bool>(func_2(arg_1, vec4<f32>(arg_1, -1608f, arg_1, 915f)) | all(vec3<bool>(true, true, true)), any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false))), all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), true), true), false));
    return abs(_wgslsmith_div_vec4_i32(-abs(u_input.a) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(39027i, -23223i, arg_0, 30500i), abs(u_input.a)), (u_input.a << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.c.x, global1[_wgslsmith_index_u32(32307u, 25u)]), vec4<u32>(1u, 4294967295u, 51566u, u_input.b), vec4<u32>(16833u, u_input.b, 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 25u)])) % vec4<u32>(32u))) ^ vec4<i32>(abs(arg_0), select(-2147483647i, 62823i, false), ~(-19381i), 1i)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global1 = array<u32, 25>();
    global2 = array<vec2<i32>, 5>();
    global2 = array<vec2<i32>, 5>();
    let var_0 = true;
    let var_1 = _wgslsmith_add_i32(abs(_wgslsmith_mult_i32(-_wgslsmith_sub_i32(-662i, global0[_wgslsmith_index_u32(arg_0.b, 1u)]), 29323i)), _wgslsmith_clamp_i32(~global0[_wgslsmith_index_u32(6128u, 1u)], u_input.a.x, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global1[_wgslsmith_index_u32(arg_0.b, 25u)], func_3(Struct_2(vec4<bool>(true, true, true, var_0), var_0, Struct_1(vec4<i32>(-1i, 68179i, global0[_wgslsmith_index_u32(u_input.b, 1u)], 1i), arg_0.b, var_0, arg_0.d)), max(1u, u_input.b), arg_0, Struct_2(vec4<bool>(true, var_0, true, arg_0.c), false, Struct_1(vec4<i32>(2147483647i, 76829i, 2147483647i, arg_0.a.x), 58983u, true, arg_0.d))).x), 1u)]));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 25>();
    var var_0 = func_4(Struct_1(func_1(-2147483647i, -249f) | ~vec4<i32>(41177i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48153u, 25u)], 1u)], global0[_wgslsmith_index_u32(u_input.b, 1u)], 1i), global1[_wgslsmith_index_u32(~(~4294967295u), 25u)], true, _wgslsmith_f_op_f32(abs(1f))));
    var var_1 = Struct_2(select(!select(select(vec4<bool>(false, true, var_0.c, var_0.c), vec4<bool>(false, true, false, true), false), vec4<bool>(var_0.c, true, var_0.c, var_0.c), select(vec4<bool>(true, true, true, true), vec4<bool>(false, var_0.c, true, var_0.c), var_0.c)), !vec4<bool>(func_2(var_0.d, vec4<f32>(671f, 518f, 870f, var_0.d)), var_0.c, true, func_2(var_0.d, vec4<f32>(var_0.d, 696f, 2344f, var_0.d))), u_input.a.x >= _wgslsmith_sub_i32(func_1(var_0.a.x, var_0.d).x, -1i)), var_0.c, Struct_1(u_input.a, u_input.c.x, !(!var_0.c), _wgslsmith_f_op_f32(max(var_0.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(525f))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(610f, 220f, 258f, 237f), vec4<f32>(var_1.c.d, var_1.c.d, var_1.c.d, var_0.d)), vec4<f32>(var_0.d, 357f, var_1.c.d, var_0.d)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.d, -359f, var_1.c.d, -1690f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(963f, var_0.d, 708f, var_1.c.d)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -439f), _wgslsmith_div_f32(var_0.d, var_1.c.d), _wgslsmith_f_op_f32(ceil(363f)), 942f))), !(!select(vec4<bool>(false, var_0.c, false, false), vec4<bool>(var_1.b, var_1.b, var_0.c, false), true)))));
    var var_3 = Struct_2(select(!(!select(var_1.a, vec4<bool>(var_1.a.x, var_1.b, var_0.c, var_0.c), vec4<bool>(false, false, false, true))), vec4<bool>(!(!var_1.a.x), true, true, var_1.c.c && true), var_1.a), !var_1.b, Struct_1(_wgslsmith_div_vec4_i32(~var_0.a, vec4<i32>(0i, -52642i, ~(-48822i), 9954i)), ~(~firstLeadingBit(4294967295u)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.c.d)) + var_0.d))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~4294967295u), ~var_1.c.a.yz, vec4<u32>(_wgslsmith_clamp_u32(var_3.c.b, var_0.b, var_0.b) << (_wgslsmith_sub_u32(0u, var_0.b) % 32u), ~func_4(Struct_1(vec4<i32>(u_input.a.x, -1i, var_3.c.a.x, var_1.c.a.x), 1u, var_0.c, var_0.d)).b, ~var_0.b << (global1[_wgslsmith_index_u32(28076u, 25u)] % 32u), 0u) & vec4<u32>(firstTrailingBit(~var_3.c.b), countOneBits(4294967295u), ~_wgslsmith_div_u32(var_3.c.b, 0u), _wgslsmith_div_u32(_wgslsmith_mult_u32(var_1.c.b, 1u), 4294967295u)), ~(~min(firstTrailingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(55726u, 7293u), vec2<u32>(var_3.c.b, var_0.b)))));
}

