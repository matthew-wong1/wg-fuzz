struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec3<u32>(0u, 1u, 4294967295u), 62780u), Struct_1(vec3<u32>(17928u, 71183u, 38132u), 0u), Struct_1(vec3<u32>(64253u, 3774u, 4294967295u), 4294967295u), Struct_1(vec3<u32>(1u, 0u, 79458u), 7157u), Struct_1(vec3<u32>(25055u, 22952u, 1u), 19304u), Struct_1(vec3<u32>(0u, 6424u, 0u), 1u), Struct_1(vec3<u32>(1u, 15722u, 17709u), 45731u), Struct_1(vec3<u32>(4294967295u, 24254u, 3249u), 0u), Struct_1(vec3<u32>(0u, 20814u, 1u), 5092u), Struct_1(vec3<u32>(56131u, 2972u, 1908u), 4294967295u), Struct_1(vec3<u32>(1u, 88733u, 31484u), 1u), Struct_1(vec3<u32>(0u, 0u, 4294967295u), 4294967295u), Struct_1(vec3<u32>(0u, 0u, 4294967295u), 1u), Struct_1(vec3<u32>(0u, 12624u, 4255u), 4294967295u), Struct_1(vec3<u32>(10581u, 36659u, 0u), 4294967295u), Struct_1(vec3<u32>(1u, 4294967295u, 6979u), 34031u), Struct_1(vec3<u32>(13871u, 40027u, 0u), 0u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32, arg_3: f32) -> vec3<u32> {
    let var_0 = select(!(true | all(vec3<bool>(true, true, true))), any(vec4<bool>(false, true, (-47050i << (arg_0.a.x % 32u)) <= _wgslsmith_dot_vec4_i32(vec4<i32>(5308i, -2147483647i, 23386i, -2147483647i), vec4<i32>(45070i, -1i, -4741i, 1i)), true & all(vec4<bool>(false, false, true, false)))), arg_0.a.x == _wgslsmith_div_u32(0u, ~arg_0.a.x));
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    var var_1 = 1i;
    return _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), ~arg_0.a);
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_1, 17>();
    let var_0 = _wgslsmith_sub_i32(abs(~1i), 1i);
    let var_1 = global0[_wgslsmith_index_u32(u_input.a ^ ~u_input.a, 17u)];
    var var_2 = Struct_1(~var_1.a, ~482u);
    var var_3 = Struct_1(vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(64250u), 7026u, 37925u, _wgslsmith_mult_u32(var_1.a.x, var_1.a.x)), vec4<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.a, var_2.a.x), 10723u >> (u_input.a % 32u), max(13475u, var_2.b), ~var_2.a.x)), ~var_2.a.x), reverseBits(~_wgslsmith_mult_u32(4294967295u, var_1.b)) ^ reverseBits(24680u));
    return Struct_1(func_3(Struct_1(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.b, 3736u, u_input.a), var_2.a), firstTrailingBit(_wgslsmith_mod_u32(var_2.b, 1u))), min(reverseBits(vec2<u32>(var_1.b, 1u)) >> (vec2<u32>(141982u, u_input.a) % vec2<u32>(32u)), vec2<u32>(4294967295u, abs(0u))), 1060f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -362f))))), _wgslsmith_dot_vec2_u32(vec2<u32>(~21945u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 21275u), vec2<u32>(29656u, u_input.a) | vec2<u32>(0u, 2726u))), ~vec2<u32>(var_3.b, ~var_3.a.x)));
}

fn func_4(arg_0: Struct_1) -> vec4<u32> {
    global0 = array<Struct_1, 17>();
    var var_0 = 62647u;
    var_0 = ~_wgslsmith_mod_u32(arg_0.a.x << (firstTrailingBit(reverseBits(4294967295u)) % 32u), reverseBits(4294967295u));
    var var_1 = 1i;
    var var_2 = Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(u_input.a), u_input.a, 86018u), reverseBits(arg_0.a)), arg_0.a.x, ~u_input.a), 1u);
    return ~abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.a.x, 1u, 45600u, 4353u), max(vec4<u32>(28028u, 0u, arg_0.a.x, 1u), vec4<u32>(1u, u_input.a, 16343u, arg_0.b))) << ((abs(vec4<u32>(arg_0.b, 1u, arg_0.a.x, u_input.a)) & ~vec4<u32>(46523u, 0u, 15664u, var_2.b)) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> Struct_1 {
    var var_0 = select(~(select(vec4<u32>(15159u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 4294967295u, 4294967295u), arg_1) ^ (vec4<u32>(4294967295u, 4294967295u, u_input.a, 0u) | vec4<u32>(u_input.a, u_input.a, u_input.a, 0u))), vec4<u32>(~(u_input.a | 1u), 4294967295u, 0u, _wgslsmith_sub_u32(u_input.a, u_input.a) & 1u), _wgslsmith_mult_u32(u_input.a, 1u) == 1u) & vec4<u32>(u_input.a, 12683u & (0u ^ ~u_input.a), 39898u, 1u);
    let var_1 = vec3<bool>(false, false | (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-936f, 1036f)) - arg_0.x) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(floor(arg_0.x)), arg_1))), arg_1);
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    var_0 = _wgslsmith_mult_vec4_u32(~_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 118103u, u_input.a, 59827u) & vec4<u32>(u_input.a, var_0.x, 36659u, var_0.x), func_4(func_2())), countOneBits((vec4<u32>(1u, var_0.x, var_0.x, 11753u) << (~vec4<u32>(4294967295u, var_0.x, var_0.x, u_input.a) % vec4<u32>(32u))) ^ vec4<u32>(1u, ~28008u, u_input.a, 0u)));
    return global0[_wgslsmith_index_u32(u_input.a, 17u)];
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_1) -> u32 {
    var var_0 = !(!select(select(select(vec4<bool>(arg_0.x, true, false, false), vec4<bool>(arg_0.x, true, false, false), true), !vec4<bool>(arg_0.x, true, arg_0.x, false), false), !select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(false, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)), select(select(vec4<bool>(false, false, false, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), false), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), !vec4<bool>(true, false, arg_0.x, arg_0.x))));
    return abs(reverseBits(4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 17>();
    let var_0 = 3126f;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, -709f), vec2<f32>(var_0, -1489f)) - vec2<f32>(var_0, 1267f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(176f, var_0) * vec2<f32>(var_0, var_0))))));
    var var_2 = Struct_1(~(~(~vec3<u32>(1060u, u_input.a, 4294967295u))) & vec3<u32>(~(~u_input.a), ~0u, 7787u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(~reverseBits(8836u), func_5(vec3<bool>(true, true, true), firstTrailingBit(vec3<u32>(u_input.a, 1u, u_input.a)), select(1i, -27518i, true), func_1(var_1, true))), 0u));
    let var_3 = func_2();
    var var_4 = global0[_wgslsmith_index_u32(61123u, 17u)];
    global0 = array<Struct_1, 17>();
    let var_5 = all(vec3<bool>(any(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, false), vec2<bool>(true, true))), select(all(vec2<bool>(true, true)), !(u_input.a == 59118u), !all(vec4<bool>(false, true, false, true))), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(var_2.b, u_input.a)), reverseBits(~0u), max(19079u, _wgslsmith_sub_u32(~u_input.a, _wgslsmith_mult_u32(u_input.a, 38772u))), ~var_4.b), ~abs(vec4<u32>(var_4.a.x, u_input.a, var_2.b, var_4.a.x) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, var_3.a.x, 79630u), vec4<u32>(1u, var_2.a.x, u_input.a, 0u))), _wgslsmith_f_op_f32(step(var_0, var_0)));
}

