struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: array<Struct_1, 25>;

var<private> global2: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = 4294967295u;
    let var_2 = ~(-2147483647i) | -arg_0.a;
    var var_3 = global0[_wgslsmith_index_u32(13238u, 4u)];
    var_1 = u_input.a;
    return Struct_1(arg_0.a, vec3<bool>(true, any(vec4<bool>(false || var_3.b.x, true, true, var_0.b.x)), false));
}

fn func_1(arg_0: i32, arg_1: f32) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -1000f, arg_1, arg_1) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1, arg_1, -261f, arg_1))))))), ~(~(~vec3<u32>(1u, u_input.a, u_input.a) << (vec3<u32>(4294967295u, u_input.a, 0u) % vec3<u32>(32u)))), func_2(Struct_1(-2147483647i, vec3<bool>(true, false, false))), -u_input.b, func_2(Struct_1(_wgslsmith_sub_i32(0i >> (0u % 32u), firstLeadingBit(arg_0)), vec3<bool>(false, true, false))));
    global2 = array<vec3<bool>, 27>();
    let var_1 = Struct_2(var_0.a, var_0.b, Struct_1(var_0.d, vec3<bool>(var_0.e.b.x, false, var_0.e.b.x)), -1i, global0[_wgslsmith_index_u32(max(26752u, var_0.b.x), 4u)]);
    let var_2 = var_1.a.x;
    let var_3 = Struct_1(u_input.b, var_0.e.b);
    return !(!(!((7748i > var_1.e.a) | true)));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, _wgslsmith_mult_i32(u_input.b, 837i), 1i, 2147483647i), vec4<i32>(reverseBits(arg_0.d), arg_0.d, 4925i, ~arg_0.d)), vec4<i32>(2147483647i, -21861i, _wgslsmith_mod_i32(u_input.b, arg_0.d >> (13531u % 32u)), ~select(27738i, u_input.b, arg_0.c.b.x))) >> (48328u % 32u);
    global0 = array<Struct_1, 4>();
    var var_1 = Struct_2(arg_0.a, ~vec3<u32>(1u, arg_0.b.x, 1u), global0[_wgslsmith_index_u32(u_input.a ^ ~_wgslsmith_sub_u32(arg_0.b.x ^ u_input.a, ~u_input.a), 4u)], abs(16802i) & -_wgslsmith_div_i32(func_2(Struct_1(var_0, vec3<bool>(arg_0.c.b.x, true, arg_0.c.b.x))).a, -18226i), Struct_1(firstLeadingBit(arg_0.c.a), !select(global2[_wgslsmith_index_u32(select(41838u, arg_0.b.x, arg_0.c.b.x), 27u)], global2[_wgslsmith_index_u32(35733u, 27u)], !arg_0.c.b)));
    global0 = array<Struct_1, 4>();
    var var_2 = _wgslsmith_f_op_f32(select(-447f, arg_0.a.x, select(!all(select(vec4<bool>(true, false, true, var_1.e.b.x), vec4<bool>(arg_0.c.b.x, false, var_1.e.b.x, false), arg_0.e.b.x)), !func_1(max(var_1.d, -24838i), _wgslsmith_f_op_f32(f32(-1f) * -467f)), true)));
    return ~(abs(reverseBits(0u) & arg_0.b.x) ^ (_wgslsmith_div_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.x, 0u, 74834u), vec3<u32>(arg_0.b.x, 32502u, 48786u))) >> (_wgslsmith_mult_u32(select(1u, 15515u, true), 34675u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(select(u_input.a, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(22720u, 0u, u_input.a)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.a), vec3<u32>(29082u, 0u, 43331u)), 1u, u_input.a)), !func_1(~2147483647i, _wgslsmith_f_op_f32(ceil(-792f)))), ~u_input.a, func_3(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-265f, -1209f, -2183f, -2746f)), ~(~vec3<u32>(1u, u_input.a, 1u)), Struct_1(u_input.b, !global2[_wgslsmith_index_u32(u_input.a, 27u)]), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(29218i, 53344i)), Struct_1(~u_input.b, vec3<bool>(true, true, true))), all(vec3<bool>(true, true, true))));
    global2 = array<vec3<bool>, 27>();
    var var_1 = -3096f;
    let var_2 = func_2(Struct_1(func_2(global1[_wgslsmith_index_u32((u_input.a >> (var_0.x % 32u)) >> (_wgslsmith_div_u32(0u, 4294967295u) % 32u), 25u)]).a, !(!func_2(global1[_wgslsmith_index_u32(0u, 25u)]).b)));
    let var_3 = ~(~(firstTrailingBit(vec3<i32>(var_2.a, var_2.a, -12738i)) ^ vec3<i32>(var_2.a, -1i, 34518i)) | countOneBits(vec3<i32>(_wgslsmith_mult_i32(-2147483647i, var_2.a), ~var_2.a, 0i)));
    var var_4 = firstLeadingBit(var_0);
    global2 = array<vec3<bool>, 27>();
    var_4 = ~(var_0 | reverseBits(vec3<u32>(u_input.a, 0u, var_0.x))) | vec3<u32>(_wgslsmith_sub_u32(73415u, 1u), var_0.x ^ _wgslsmith_clamp_u32(_wgslsmith_mod_u32(61207u, 41754u), ~56359u, func_3(Struct_2(vec4<f32>(-131f, 342f, -1000f, 560f), var_0, Struct_1(u_input.b, vec3<bool>(true, var_2.b.x, true)), -1i, var_2), var_2.b.x)), abs(_wgslsmith_add_u32(var_0.x << (32732u % 32u), _wgslsmith_mod_u32(u_input.a, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~(-1i), var_2.a), ~(abs(_wgslsmith_add_vec4_i32(vec4<i32>(var_2.a, var_3.x, var_3.x, var_3.x), vec4<i32>(u_input.b, -32484i, u_input.b, var_2.a))) & -(vec4<i32>(-13169i, 31493i, u_input.b, u_input.b) | vec4<i32>(10193i, 9353i, var_3.x, var_2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -510f)), -15007i, abs(u_input.a));
}

