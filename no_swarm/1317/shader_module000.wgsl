struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<i32>, 12>;

var<private> global2: array<Struct_2, 18>;

var<private> global3: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(i32(-2147483648), -1i, -12381i, 2147483647i), vec4<i32>(i32(-2147483648), i32(-2147483648), 6797i, -9673i), vec4<i32>(i32(-2147483648), 9900i, 2147483647i, 0i), vec4<i32>(82021i, 2147483647i, -1i, 20415i), vec4<i32>(i32(-2147483648), -37778i, 54460i, 34284i), vec4<i32>(2147483647i, 40123i, i32(-2147483648), -16270i), vec4<i32>(37735i, 10058i, 32640i, 0i), vec4<i32>(-15446i, 11367i, 36186i, 52124i), vec4<i32>(1i, 1i, -26492i, i32(-2147483648)), vec4<i32>(45161i, 21533i, -44901i, 0i), vec4<i32>(26049i, i32(-2147483648), 39162i, 43859i), vec4<i32>(78951i, -1i, i32(-2147483648), 2147483647i), vec4<i32>(i32(-2147483648), 48600i, 1i, -1i), vec4<i32>(-29587i, 7101i, 2147483647i, 15395i), vec4<i32>(0i, -1i, -6777i, -1i), vec4<i32>(-59980i, 2147483647i, 40507i, 0i), vec4<i32>(2147483647i, 21164i, -945i, -23980i), vec4<i32>(0i, -33415i, i32(-2147483648), -25675i), vec4<i32>(1i, 54724i, -4114i, 53263i), vec4<i32>(0i, 0i, 0i, 48094i), vec4<i32>(-1i, 32164i, -1i, 68029i));

var<private> global4: array<Struct_2, 32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> i32 {
    global3 = array<vec4<i32>, 21>();
    global0 = arg_1.b;
    var var_0 = arg_1;
    var var_1 = vec3<u32>(~arg_1.b.c.x, var_0.b.d, var_0.b.d);
    var var_2 = 975f;
    return -2147483647i;
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> vec2<u32> {
    global3 = array<vec4<i32>, 21>();
    let var_0 = Struct_2(~2147483647i, Struct_1(vec2<f32>(_wgslsmith_div_f32(-1003f, global0.a.x), 568f), func_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(475f, arg_1, 1463f) * vec3<f32>(1336f, -1051f, arg_1)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1, global0.a.x, arg_1), vec3<f32>(1521f, arg_1, arg_1))), true)), Struct_2(global0.b ^ 1i, Struct_1(global0.a, arg_0.x, vec4<u32>(0u, global0.c.x, 35053u, global0.c.x), 4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, 1000f, 1076f) - vec3<f32>(arg_1, 1000f, -389f)), Struct_1(global0.a, global0.b, global0.c, 9469u), 251f)), _wgslsmith_div_vec4_u32(global0.c, reverseBits(abs(global0.c))), 1u), _wgslsmith_f_op_vec3_f32(vec3<f32>(113f, _wgslsmith_f_op_f32(step(-571f, 290f)), 303f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global0.a.x, 1327f))))), Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global0.a, vec2<f32>(-836f, global0.a.x))), _wgslsmith_f_op_vec2_f32(-global0.a)))), -(i32(-1i) * -u_input.b), min(select(global0.c, vec4<u32>(4294967295u, global0.d, 45945u, 43131u), false) | global0.c, select(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 113817u, global0.d, global0.d), vec4<u32>(30628u, global0.c.x, global0.d, u_input.c)), vec4<u32>(global0.c.x, 0u, global0.c.x, 35252u), true)), ~u_input.c), -405f);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(arg_1, -818f)), -1000f)) * var_0.c.xz), _wgslsmith_dot_vec3_i32(vec3<i32>(~0i, 1i, _wgslsmith_sub_i32(arg_0.x, arg_0.x)) << (var_0.d.c.zxz % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(abs(max(vec3<i32>(-25782i, -2147483647i, -1i), global1[_wgslsmith_index_u32(42225u, 12u)])), vec3<i32>(_wgslsmith_add_i32(u_input.b, var_0.b.b), 65754i, countOneBits(arg_0.x)), abs(vec3<i32>(u_input.a, var_0.b.b, -6179i)))), ~(~firstTrailingBit(var_0.b.c << (var_0.d.c % vec4<u32>(32u)))), ~27814u);
    let var_2 = var_1.c.xw << (var_1.c.yz % vec2<u32>(32u));
    global2 = array<Struct_2, 18>();
    return abs(countOneBits(vec2<u32>(~(global0.d >> (var_2.x % 32u)), var_1.d)));
}

fn func_4(arg_0: vec2<u32>) -> i32 {
    return _wgslsmith_sub_i32(-30460i, ~u_input.b);
}

fn func_1() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + -752f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(517f * 972f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.a.x, 706f)))))));
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_1.x)), var_1.x), func_4(_wgslsmith_sub_vec2_u32(global0.c.yy, vec2<u32>(u_input.c, global0.c.x)) >> (func_2(global1[_wgslsmith_index_u32(7427u, 12u)] | global1[_wgslsmith_index_u32(36457u, 12u)], 1000f) % vec2<u32>(32u))), ~abs(firstLeadingBit(select(global0.c, vec4<u32>(global0.d, 10645u, u_input.c, u_input.c), false))), ~u_input.c);
    var var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(global0.b, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(~global3[_wgslsmith_index_u32(46822u, 21u)], firstLeadingBit(global3[_wgslsmith_index_u32(19027u, 21u)])), 2147483647i << (u_input.c % 32u), func_3(vec3<f32>(global0.a.x, var_2.a.x, var_2.a.x), Struct_2(-10473i, Struct_1(global0.a, 24247i, vec4<u32>(u_input.c, u_input.c, var_2.c.x, 4294967295u), 52561u), vec3<f32>(var_2.a.x, var_2.a.x, 1465f), Struct_1(var_2.a, 1i, var_2.c, global0.c.x), -755f)) | -2147483647i), min(_wgslsmith_div_i32(global0.b, ~(-45145i)), func_4(~vec2<u32>(global0.c.x, 12502u)))), ~(-vec3<i32>(37839i, global0.b, -22925i)) >> (vec3<u32>(select(global0.c.x, select(global0.c.x, 0u, true), false), ~(u_input.c ^ u_input.c), global0.d) % vec3<u32>(32u)));
    global1 = array<vec3<i32>, 12>();
    return global1[_wgslsmith_index_u32(4294967295u, 12u)];
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_2 {
    global3 = array<vec4<i32>, 21>();
    global3 = array<vec4<i32>, 21>();
    global0 = arg_1.b;
    let var_0 = select(_wgslsmith_div_vec4_i32(global3[_wgslsmith_index_u32(arg_0, 21u)], _wgslsmith_div_vec4_i32(vec4<i32>(firstTrailingBit(arg_2.x), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.d.b, global0.b, arg_2.x, 2147483647i), global3[_wgslsmith_index_u32(13636u, 21u)]), global0.b, arg_2.x >> (arg_0 % 32u)), -global3[_wgslsmith_index_u32(17143u, 21u)])), global3[_wgslsmith_index_u32(global0.d, 21u)], (-func_3(arg_1.c, global2[_wgslsmith_index_u32(global0.c.x, 18u)]) >= countOneBits(-7849i)) | false);
    let var_1 = vec2<u32>(~(countOneBits(abs(arg_1.b.d)) << (_wgslsmith_clamp_u32(0u, 1u, countOneBits(83254u)) % 32u)), 54323u);
    return global2[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(firstTrailingBit(74173u)) << (~_wgslsmith_mult_u32(54423u, _wgslsmith_mult_u32(global0.c.x, var_1.x)) % 32u), u_input.c), 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 18>();
    let var_0 = func_5(~_wgslsmith_sub_u32(global0.d, 11225u), global2[_wgslsmith_index_u32(0u, 18u)], -func_1());
    let var_1 = select(vec3<bool>(any(vec4<bool>(all(vec3<bool>(false, true, false)), true, all(vec4<bool>(true, true, false, false)), -821f != global0.a.x)), false, !(max(global0.b, u_input.a) >= func_1().x)), vec3<bool>(true, true, true), !all(vec4<bool>(true, false, true, false)) || (_wgslsmith_f_op_f32(trunc(var_0.b.a.x)) != _wgslsmith_f_op_f32(752f - -482f)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a), 1i, vec4<u32>(max(max(global0.d, 21852u), 0u), ~(62868u << (u_input.c % 32u)), select(~1u, u_input.c, false), func_2(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.b, u_input.b, var_0.b.b), vec3<i32>(u_input.b, u_input.a, global0.b)), _wgslsmith_f_op_f32(-873f * -1000f)).x) & _wgslsmith_add_vec4_u32(~max(global0.c, vec4<u32>(u_input.c, 37428u, 1u, 116448u)), ~vec4<u32>(58958u, var_0.b.d, 4294967295u, u_input.c) & vec4<u32>(var_0.b.d, var_0.b.d, var_0.b.c.x, 37613u)), ~func_2(vec3<i32>(_wgslsmith_add_i32(-14991i, u_input.b), u_input.b >> (4294967295u % 32u), 5036i << (u_input.c % 32u)), global0.a.x).x);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(277f + _wgslsmith_f_op_f32(-var_0.c.x)))), _wgslsmith_f_op_f32(-var_0.c.x));
    global1 = array<vec3<i32>, 12>();
    let var_4 = 1138f;
    let var_5 = func_5(select(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.d, 16004u), vec2<u32>(u_input.c, 1u) << (var_2.c.xy % vec2<u32>(32u)))), 55313u, all(select(vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(false, true, var_1.x, false), u_input.c <= u_input.c))), Struct_2(_wgslsmith_sub_i32(var_2.b, ~(-var_2.b)), func_5(~var_2.d, Struct_2(~var_0.a, var_2, _wgslsmith_div_vec3_f32(var_0.c, vec3<f32>(410f, var_3.x, global0.a.x)), var_2, _wgslsmith_f_op_f32(-var_4)), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.a, var_0.a), -global1[_wgslsmith_index_u32(u_input.c, 12u)])).d, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-537f, -925f, var_4)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_0.c)))), var_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(func_5(19362u, var_0, global1[_wgslsmith_index_u32(global0.d, 12u)]).b.a.x)), _wgslsmith_f_op_f32(global0.a.x - 797f))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(var_2.c, ~vec4<u32>(global0.d, var_0.d.d, 0u, var_0.b.d)) ^ _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global0.c.wz, vec2<u32>(26679u, u_input.c)), 3082u), ~(_wgslsmith_sub_u32(var_2.d, global0.d) ^ 1u)), 12u)]);
    var var_6 = vec3<u32>(17315u, 1u, global0.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_0.c)) * _wgslsmith_f_op_vec3_f32(-var_0.c)));
}

