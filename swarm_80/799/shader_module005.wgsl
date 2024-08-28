struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: f32,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec4<i32>, 19>;

var<private> global2: array<Struct_1, 4>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(round(227f));
    let var_1 = ~arg_3.e.xw;
    global2 = array<Struct_1, 4>();
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.c) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_0))))))), var_0));
    var_2 = 2109f;
    return 0i;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>) -> vec3<i32> {
    global1 = array<vec4<i32>, 19>();
    global1 = array<vec4<i32>, 19>();
    var var_0 = arg_2.x;
    global1 = array<vec4<i32>, 19>();
    let var_1 = _wgslsmith_sub_vec4_u32(~(arg_1.e & _wgslsmith_mod_vec4_u32(arg_1.e & vec4<u32>(1u, 73302u, u_input.d, 47442u), ~arg_1.e)), abs(max(arg_1.e, arg_1.e) >> (~(vec4<u32>(4294967295u, 0u, u_input.d, u_input.d) | vec4<u32>(u_input.d, u_input.d, 31370u, u_input.d)) % vec4<u32>(32u))));
    return vec3<i32>(func_3(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, arg_1.c, 889f, 1437f))), ~(var_1.x << (14520u % 32u)), arg_1, global2[_wgslsmith_index_u32(23987u, 4u)]), _wgslsmith_clamp_i32(1i, min(2147483647i, arg_1.b) >> ((arg_1.e.x ^ 4294967295u) % 32u), -arg_1.b), 1i) << (firstTrailingBit(var_1.zyz) % vec3<u32>(32u));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_add_vec3_i32(abs(_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a, u_input.b, -2147483647i) >> (vec3<u32>(u_input.d, u_input.e, u_input.e) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, -27032i, u_input.b), countOneBits(vec3<i32>(-39431i, u_input.b, u_input.a))))), _wgslsmith_mod_vec3_i32(countOneBits(func_2(true, Struct_1(vec3<bool>(true, false, false), 2147483647i, -1115f, vec4<bool>(false, false, false, true), vec4<u32>(u_input.e, u_input.e, u_input.e, u_input.e)), abs(vec2<i32>(-6578i, -1i)))), _wgslsmith_mult_vec3_i32(select(_wgslsmith_sub_vec3_i32(vec3<i32>(-22669i, -61720i, u_input.a), vec3<i32>(21531i, 2147483647i, 1i)), min(vec3<i32>(u_input.b, u_input.a, -20137i), vec3<i32>(u_input.b, -28181i, u_input.a)), all(vec4<bool>(true, true, true, true))), _wgslsmith_mod_vec3_i32(vec3<i32>(2540i, -22625i, 1i) << (vec3<u32>(4878u, 39721u, u_input.d) % vec3<u32>(32u)), vec3<i32>(u_input.a, 2147483647i, -8946i)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1718f + 558f))), -371f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -713f), _wgslsmith_f_op_f32(f32(-1f) * -346f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -766f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-196f, 451f, 869f, -627f), vec4<f32>(1076f, -204f, -3365f, 510f)))))));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.c, -4765i, func_3(Struct_2(vec4<f32>(1373f, var_1.x, var_1.x, var_1.x)), _wgslsmith_div_u32(14365u, u_input.d), global2[_wgslsmith_index_u32(u_input.e, 4u)], global2[_wgslsmith_index_u32(select(u_input.e, 1u, true), 4u)])), firstLeadingBit(firstLeadingBit(vec3<i32>(-2147483647i, 0i, var_0.x)))) >> (~u_input.d % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_2 {
    global2 = array<Struct_1, 4>();
    let var_0 = true;
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, 1685f, arg_2.c, 1000f) + vec4<f32>(arg_2.c, arg_0.c, arg_0.c, -159f))))))));
    var_1 = Struct_2(var_1.a);
    var var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.d, ~(arg_0.e.x >> (26481u % 32u)), countOneBits(arg_2.e.x)), 4u)];
    return Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-281f, arg_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-124f - arg_2.c)), _wgslsmith_f_op_f32(arg_1.x + var_2.c), arg_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-598f)) - 1000f) - _wgslsmith_f_op_f32(716f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(804f)), 1000f)))) >= _wgslsmith_f_op_f32(select(-1000f, -863f, true));
    let var_0 = func_4(global2[_wgslsmith_index_u32(u_input.d, 4u)], vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-757f + _wgslsmith_f_op_f32(2396f - 193f)) * -684f), 495f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-803f - _wgslsmith_f_op_f32(-764f * -650f))), _wgslsmith_f_op_f32(-1140f - _wgslsmith_f_op_f32(max(-1248f, _wgslsmith_f_op_f32(-443f + -750f))))), Struct_1(vec3<bool>(true, true, true), func_1(), _wgslsmith_div_f32(-787f, -113f), !vec4<bool>(true, any(vec4<bool>(false, false, false, false)), all(vec4<bool>(false, false, true, true)), false), _wgslsmith_div_vec4_u32(~vec4<u32>(100236u, 43866u, u_input.d, u_input.d), firstLeadingBit(min(vec4<u32>(1u, u_input.e, u_input.d, 53757u), vec4<u32>(u_input.e, u_input.d, 37592u, u_input.e))))));
    var var_1 = Struct_1(!select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), vec3<bool>(false, true, 0i == u_input.c)), -52i, func_4(Struct_1(vec3<bool>(select(true, true, true), all(vec3<bool>(false, false, false)), any(vec3<bool>(false, true, false))), u_input.c << (u_input.e % 32u), -824f, select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true), firstTrailingBit(vec4<u32>(u_input.d, 0u, u_input.e, u_input.e))), _wgslsmith_f_op_vec4_f32(min(var_0.a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, -790f, var_0.a.x, 1148f), _wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), vec4<bool>(false, false, true, false))))), Struct_1(vec3<bool>(true, true, false), u_input.c >> (936u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), ~vec4<u32>(u_input.e, 4294967295u, u_input.d, u_input.d) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.d, 27808u, u_input.e), vec4<u32>(0u, u_input.e, u_input.d, 39978u)))).a.x, vec4<bool>(!select(any(vec4<bool>(true, false, false, false)), u_input.b < 18880i, any(vec3<bool>(true, false, true))), false, false, false), vec4<u32>(1u, u_input.d, u_input.e, 19132u));
    global1 = array<vec4<i32>, 19>();
    var var_2 = select(min(firstTrailingBit(~countOneBits(vec3<u32>(45865u, var_1.e.x, 5484u))), max(~_wgslsmith_mod_vec3_u32(vec3<u32>(39436u, 22557u, 1u), var_1.e.xxz), ~var_1.e.xxy)), var_1.e.wzy & vec3<u32>(38690u, var_1.e.x, min(~var_1.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 111093u, var_1.e.x), var_1.e.zxz))), vec3<bool>(true, var_1.d.x, !var_1.d.x));
    let var_3 = global2[_wgslsmith_index_u32(22585u, 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(24900u);
}

