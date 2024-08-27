struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec3<bool>(true, true, false));

var<private> global1: array<u32, 3>;

var<private> global2: Struct_4 = Struct_4(181f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4) -> i32 {
    let var_0 = true;
    global1 = array<u32, 3>();
    let var_1 = Struct_2(_wgslsmith_dot_vec3_i32(abs(~vec3<i32>(u_input.b, u_input.a, -2147483647i)), vec3<i32>(-u_input.b, -2147483647i, select(-2147483647i, ~u_input.b, all(vec4<bool>(var_0, true, true, false))))), ~abs(~0u));
    global1 = array<u32, 3>();
    let var_2 = Struct_2(_wgslsmith_dot_vec3_i32(~abs(firstTrailingBit(vec3<i32>(u_input.b, -13999i, u_input.a))), ~(vec3<i32>(-1i) * -vec3<i32>(var_1.a, var_1.a, var_1.a))), var_1.b);
    return select(~(~(~var_2.a ^ _wgslsmith_mod_i32(var_1.a, 5460i))), _wgslsmith_div_i32(-1i, 14441i), global0.a.x);
}

fn func_2(arg_0: vec4<u32>) -> vec4<u32> {
    global1 = array<u32, 3>();
    var var_0 = _wgslsmith_add_u32(0u & firstTrailingBit(abs(_wgslsmith_add_u32(22130u, 7029u))), _wgslsmith_mult_u32(0u, 1u));
    var var_1 = 4294967295u;
    let var_2 = ~vec4<i32>(0i, min(~u_input.b | 1i, u_input.b), _wgslsmith_div_i32(u_input.b, -43250i), _wgslsmith_clamp_i32(-func_3(Struct_4(835f)), u_input.a, -(~(-6504i))));
    var_0 = max(4294967295u, 1u);
    return reverseBits(~(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 4294967295u, arg_0.x), ~arg_0) | arg_0));
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = global2.a;
    global0 = Struct_5(vec3<bool>(true, true, true));
    global2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1569f)));
    var var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(1i, -18321i), max(_wgslsmith_clamp_vec2_i32(max(~vec2<i32>(1i, u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(632i, -86653i))), ~vec2<i32>(u_input.b, u_input.a), -select(vec2<i32>(-15537i, -1i), vec2<i32>(u_input.b, u_input.a), global0.a.x)), -select(vec2<i32>(u_input.a, u_input.b) >> (arg_1.wy % vec2<u32>(32u)), vec2<i32>(u_input.a, u_input.a), select(vec2<bool>(true, global0.a.x), vec2<bool>(false, false), arg_2.wz))));
    global0 = Struct_5(!vec3<bool>(true, global0.a.x, !(!global0.a.x)));
    return Struct_1(_wgslsmith_f_op_f32(global2.a * global2.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-423f, global2.a, 389f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(785f, 664f, 137f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.a, 3197f, 1000f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(622f, global2.a, global2.a))))) + vec3<f32>(global2.a, 1602f, -1332f))), arg_2);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: bool) -> Struct_4 {
    global2 = arg_2;
    global0 = Struct_5(func_4(~_wgslsmith_add_u32(~global1[_wgslsmith_index_u32(22482u, 3u)], 4294967295u), ~_wgslsmith_div_vec4_u32(vec4<u32>(81704u, global1[_wgslsmith_index_u32(66595u, 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43800u, 3u)], 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 3u)], 3u)], 3u)], 3u)]), vec4<u32>(64484u, global1[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2388u, 3u)], 3u)], 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 3u)], 3u)], 3u)])), !arg_0.c).c.xyz);
    var var_0 = !arg_3;
    global0 = Struct_5(!(!func_4(~4294967295u, vec4<u32>(global1[_wgslsmith_index_u32(27441u, 3u)], global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(18018u, 3u)], 4294967295u) & vec4<u32>(global1[_wgslsmith_index_u32(11731u, 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(35826u, 3u)], 3u)], 1u, 0u), vec4<bool>(arg_3, arg_0.c.x, arg_3, false)).c.xxy));
    var var_1 = _wgslsmith_clamp_i32(reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(arg_1 << (vec3<u32>(global1[_wgslsmith_index_u32(0u, 3u)], 1u, 0u) % vec3<u32>(32u)), ~vec3<i32>(u_input.a, arg_1.x, arg_1.x)), (vec3<i32>(0i, arg_1.x, u_input.b) << (vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24121u, 3u)], 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 3u)], 3u)]) % vec3<u32>(32u))) << (vec3<u32>(37793u, 2276u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5744u, 3u)], 3u)], 3u)], 3u)], 3u)]) % vec3<u32>(32u)))), _wgslsmith_div_i32(38092i, firstLeadingBit(_wgslsmith_sub_i32(u_input.a, -arg_1.x))), -u_input.b);
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-756f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1464f - arg_2.a) + _wgslsmith_f_op_f32(1258f * arg_0.a))) - _wgslsmith_f_op_f32(round(627f))));
}

fn func_1(arg_0: Struct_5) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.a * global2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(global2.a * global2.a)))));
    global2 = func_5(func_4(global1[_wgslsmith_index_u32(max(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(32864u, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)], 1u) ^ vec3<u32>(17455u, global1[_wgslsmith_index_u32(57380u, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)]), ~vec3<u32>(global1[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(1u, 3u)], 99701u)), 2473u), 3u)], _wgslsmith_clamp_vec4_u32(func_2(~vec4<u32>(4294967295u, 190855u, global1[_wgslsmith_index_u32(3265u, 3u)], 18006u)), min(~vec4<u32>(0u, 4294967295u, 43838u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3853u, 3u)], 3u)], 3u)]), vec4<u32>(0u, global1[_wgslsmith_index_u32(1u, 3u)], 63u, global1[_wgslsmith_index_u32(1u, 3u)])), firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(17663u, 41574u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 3u)]), vec4<u32>(4294967295u, 1181u, 41761u, 114167u)))), !vec4<bool>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 3u)] != 4294967295u, true, global0.a.x, global2.a == -868f)), vec3<i32>(abs(-select(u_input.b, u_input.a, arg_0.a.x)), u_input.b, _wgslsmith_mult_i32(14564i, u_input.b)), Struct_4(_wgslsmith_f_op_f32(abs(930f))), !global0.a.x);
    return vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_0)))), func_4(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global1[_wgslsmith_index_u32(1712u, 3u)], global1[_wgslsmith_index_u32(1u, 3u)], 0u)), max(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 3u)], 10001u, global1[_wgslsmith_index_u32(94220u, 3u)]), vec3<u32>(global1[_wgslsmith_index_u32(91600u, 3u)], global1[_wgslsmith_index_u32(0u, 3u)], 4294967295u))), select(~vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(36155u, 3u)], 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 3u)], 3u)], 3u)], 3u)], 816u), max(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41887u, 3u)], 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 3u)], 3u)], 3u)], 3u)], 1u, 80650u), vec4<u32>(global1[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(3739u, 3u)], global1[_wgslsmith_index_u32(42089u, 3u)], 18623u)), arg_0.a.x), vec4<bool>(true, true, true, arg_0.a.x | false)).a)), _wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(0u, vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(55768u, 3u)], 3u)], 3u)], 3u)], 34610u, 1u, 4294967295u), vec4<bool>(true, true, arg_0.a.x, false)).a + var_0), -1616f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.a)) + _wgslsmith_f_op_f32(trunc(var_0))) * var_0), global2.a, _wgslsmith_f_op_f32(sign(1f)) < var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-1611f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, -948f, global2.a)), _wgslsmith_f_op_vec3_f32(func_1(Struct_5(global0.a)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, -1256f, global2.a) - vec3<f32>(global2.a, global2.a, global2.a)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.a, global2.a, -398f), vec3<f32>(-1185f, 956f, 399f), true)))) - _wgslsmith_div_vec3_f32(vec3<f32>(global2.a, _wgslsmith_f_op_f32(-global2.a), 1000f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1646f, global2.a, -927f)), vec3<f32>(global2.a, global2.a, global2.a))))), func_4(_wgslsmith_sub_u32(8958u, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, global1[_wgslsmith_index_u32(10753u, 3u)]) ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(72374u, 3u)], 3u)], 3u)]), countOneBits(~max(vec4<u32>(27036u, 54769u, 0u, global1[_wgslsmith_index_u32(64796u, 3u)]), vec4<u32>(global1[_wgslsmith_index_u32(1u, 3u)], 58579u, 69162u, 40263u))), select(!(!vec4<bool>(true, global0.a.x, global0.a.x, global0.a.x)), select(vec4<bool>(true, true, true, true), func_4(14112u, vec4<u32>(global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23941u, 3u)], 3u)], 3u)], 1013u), vec4<bool>(global0.a.x, global0.a.x, false, global0.a.x)).c, vec4<bool>(global0.a.x, global0.a.x, global0.a.x, true)), (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(130729u, 3u)], 3u)], 3u)], 3u)], 3u)], 3u)], 3u)], 3u)], 3u)], 3u)] >= 50872u) != global0.a.x)).c);
    var var_1 = max(firstTrailingBit(vec3<i32>(-11085i, u_input.b, -1i | u_input.a)), vec3<i32>(u_input.b, abs(firstTrailingBit(u_input.b)), 1i)) >> (_wgslsmith_add_vec3_u32(~func_2(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8710u, 3u)], 3u)], global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(42453u, 3u)])).wyx, vec3<u32>(select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(88555u, 3u)], 3u)], 3u)], 3u)], 3u)] >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(85176u, 3u)], 3u)] % 32u), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], false), abs(~0u), global1[_wgslsmith_index_u32(~1u, 3u)])) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(15104i, -1i, i32(-1i) * -var_1.x), max(4294967295u, global1[_wgslsmith_index_u32(37033u, 3u)]));
}

