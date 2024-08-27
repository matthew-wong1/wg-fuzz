struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec3<u32>(43131u, 19837u, 1u), vec2<u32>(1u, 1u), -1i, 43596i), Struct_1(vec3<u32>(0u, 21666u, 1u), vec2<u32>(15219u, 78874u), 1i, -1i), Struct_1(vec3<u32>(0u, 10225u, 4294967295u), vec2<u32>(1u, 1u), 9881i, i32(-2147483648)), Struct_1(vec3<u32>(1u, 1524u, 1u), vec2<u32>(60344u, 47929u), 51343i, -1i), Struct_1(vec3<u32>(4294967295u, 0u, 24788u), vec2<u32>(1u, 0u), 1i, -52459i), Struct_1(vec3<u32>(40682u, 40664u, 4294967295u), vec2<u32>(0u, 0u), 1i, -1i), Struct_1(vec3<u32>(4294967295u, 35407u, 37666u), vec2<u32>(51810u, 43294u), 12957i, i32(-2147483648)), Struct_1(vec3<u32>(1u, 0u, 14241u), vec2<u32>(6786u, 4294967295u), -1i, 7818i), Struct_1(vec3<u32>(6951u, 0u, 4294967295u), vec2<u32>(31000u, 19535u), 0i, 2147483647i), Struct_1(vec3<u32>(31904u, 17832u, 24618u), vec2<u32>(24349u, 1u), -36085i, -1i), Struct_1(vec3<u32>(4294967295u, 1u, 73570u), vec2<u32>(18631u, 1u), -12057i, 1i), Struct_1(vec3<u32>(1667u, 64307u, 76225u), vec2<u32>(46113u, 0u), -36286i, -47976i), Struct_1(vec3<u32>(1u, 43270u, 1u), vec2<u32>(4294967295u, 33909u), 18520i, 2147483647i), Struct_1(vec3<u32>(4294967295u, 40797u, 30040u), vec2<u32>(0u, 4294967295u), -47887i, -30636i), Struct_1(vec3<u32>(63603u, 4294967295u, 0u), vec2<u32>(4294967295u, 4294967295u), 0i, 30700i), Struct_1(vec3<u32>(84705u, 5222u, 25168u), vec2<u32>(0u, 30947u), 56716i, -33640i), Struct_1(vec3<u32>(60716u, 1u, 4294967295u), vec2<u32>(0u, 0u), 0i, 0i), Struct_1(vec3<u32>(55926u, 4294967295u, 4294967295u), vec2<u32>(0u, 30180u), 42060i, -56771i), Struct_1(vec3<u32>(38783u, 4294967295u, 57291u), vec2<u32>(14505u, 49595u), 77878i, 57862i), Struct_1(vec3<u32>(4294967295u, 1u, 31796u), vec2<u32>(9432u, 4294967295u), 28214i, 516i), Struct_1(vec3<u32>(6305u, 1u, 6859u), vec2<u32>(28816u, 4294967295u), 79260i, 55377i), Struct_1(vec3<u32>(4294967295u, 98029u, 4294967295u), vec2<u32>(1u, 55141u), 23780i, 0i), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), vec2<u32>(4294967295u, 14724u), -1i, 1i), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), vec2<u32>(20547u, 0u), 2147483647i, i32(-2147483648)));

var<private> global1: array<f32, 31>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(522f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~26888u, 31u)] + _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(37352u, 31u)], false))))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: i32) -> u32 {
    global1 = array<f32, 31>();
    global1 = array<f32, 31>();
    let var_0 = vec4<i32>(-16956i, u_input.b, -(i32(-1i) * -43438i) ^ -_wgslsmith_div_i32(-u_input.b, -2147483647i), -12035i);
    global0 = array<Struct_1, 24>();
    global1 = array<f32, 31>();
    return _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(min(select(arg_1.b, vec2<u32>(4294967295u, arg_1.b.x), vec2<bool>(true, false)), vec2<u32>(66691u, arg_1.b.x)), arg_1.a.zy) | 4294967295u, ~(~(~3660u) >> (arg_1.b.x % 32u)));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_1(~(~(~vec3<u32>(25301u, 1u, 52715u))), select(~vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(~vec2<u32>(788u, 1u), vec2<u32>(73539u, _wgslsmith_add_u32(0u, 4294967295u))), !arg_0.zz), _wgslsmith_dot_vec3_i32(vec3<i32>(1i | _wgslsmith_mod_i32(-26853i, u_input.b), u_input.a >> (~83280u % 32u), 9061i), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), select(vec3<i32>(9867i, u_input.b, u_input.b), vec3<i32>(u_input.b, 0i, 2147483647i), arg_0.x), vec3<i32>(1i, -4786i, -12910i)), vec3<i32>(u_input.a, u_input.b, 24493i) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), arg_0.x)), ~(~(-28265i)));
    var var_1 = _wgslsmith_div_i32(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-15462i, var_0.d, -1i), vec3<i32>(u_input.b, -2147483647i, -2147483647i) << (vec3<u32>(var_0.a.x, var_0.b.x, 1u) % vec3<u32>(32u))) >> (var_0.a.x % 32u)) ^ _wgslsmith_clamp_i32(-7798i, _wgslsmith_mult_i32(-_wgslsmith_add_i32(-16824i, u_input.b), var_0.c), max(-67880i, ~(~0i)));
    let var_2 = Struct_1(vec3<u32>(1u << (func_3(vec2<f32>(1913f, 803f), Struct_1(var_0.a, var_0.b, -1i, u_input.b), 0i) % 32u), _wgslsmith_mod_u32(~var_0.b.x, var_0.a.x), var_0.a.x), countOneBits(_wgslsmith_mod_vec2_u32(var_0.b << (vec2<u32>(var_0.a.x, 34408u) % vec2<u32>(32u)), select(select(var_0.b, var_0.b, vec2<bool>(false, arg_1)), abs(vec2<u32>(31874u, 12477u)), true))), 0i, max(var_0.d, max(-2147483647i, max(var_0.d, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, u_input.a), vec3<i32>(var_0.c, u_input.b, -1i))))));
    global1 = array<f32, 31>();
    var var_3 = Struct_1(vec3<u32>(~var_2.a.x, ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 74071u, var_0.a.x, 0u), vec4<u32>(var_2.b.x, var_2.a.x, var_2.b.x, 4294967295u)), 4294967295u), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(40609u, var_2.a.x, 35534u, 93049u)), countOneBits(vec4<u32>(23616u, 0u, var_0.a.x, var_2.a.x))) | 107486u), firstTrailingBit(~var_2.b), -_wgslsmith_div_i32(-16122i & var_2.c, firstLeadingBit(-2147483647i)), u_input.a);
    return var_0;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: bool) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(arg_1.a.x, 31u)], 1033f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) - 326f)));
    var_0 = _wgslsmith_mod_u32(arg_1.a.x, ~(~arg_1.a.x)) == _wgslsmith_sub_u32(_wgslsmith_sub_u32(abs(arg_1.b.x), 1u), _wgslsmith_sub_u32(6167u, _wgslsmith_add_u32(4294967295u, _wgslsmith_mod_u32(arg_1.b.x, 17251u))));
    global1 = array<f32, 31>();
    let var_1 = countOneBits(arg_1.a);
    var var_2 = arg_1.b.x;
    return -vec2<i32>(_wgslsmith_mult_i32(countOneBits(-u_input.b), 1i), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-u_input.b, countOneBits(2147483647i));
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    var_0 = func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(38893u, 31u)]), 279f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(34457u, 31u)] - -1030f)))) - vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 21526u), vec2<u32>(0u, 35852u)) | ~4294967295u, 31u)], 101f, _wgslsmith_f_op_f32(func_1()))), func_2(!vec4<bool>(all(vec2<bool>(true, false)), true, true, true), true), select(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<bool>(global1[_wgslsmith_index_u32(1u, 31u)] > global1[_wgslsmith_index_u32(60175u, 31u)], any(vec4<bool>(true, true, true, false))), vec2<bool>(all(vec4<bool>(true, true, false, false)), all(vec4<bool>(false, true, false, true)))), !vec2<bool>(false, u_input.a >= var_0.x), !select(true, all(vec4<bool>(false, true, false, true)), true)), false);
    var var_1 = func_2(select(vec4<bool>(true, true, !any(vec2<bool>(true, false)), any(vec3<bool>(true, true, true))), !vec4<bool>(any(vec3<bool>(true, false, false)), false, all(vec4<bool>(true, false, true, false)), all(vec3<bool>(true, true, true))), any(vec3<bool>(any(vec2<bool>(false, false)), all(vec3<bool>(false, true, true)), true))), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(vec3<u32>(11789u, var_1.b.x, _wgslsmith_clamp_u32(4294967295u, var_1.b.x, 26281u)) >> (select(var_1.a << (var_1.a % vec3<u32>(32u)), var_1.a, select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true)) % vec3<u32>(32u)), abs(vec3<u32>(var_1.b.x, var_1.a.x, 62669u) >> (~vec3<u32>(var_1.a.x, 1u, 1u) % vec3<u32>(32u)))), ~(~_wgslsmith_mult_i32(u_input.a, max(var_0.x, var_0.x))));
}

