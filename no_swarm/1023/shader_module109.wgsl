struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: vec3<bool>,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
    c: bool,
    d: Struct_3,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<f32, 23> = array<f32, 23>(-1467f, 882f, -1282f, -1962f, -753f, -205f, 1248f, -902f, -686f, 1306f, 356f, -249f, -1000f, 804f, -1484f, -1441f, -1210f, -1689f, -487f, -1306f, -1342f, 1798f, -334f);

var<private> global2: array<vec2<i32>, 18> = array<vec2<i32>, 18>(vec2<i32>(1i, -47086i), vec2<i32>(-17984i, 1i), vec2<i32>(22027i, i32(-2147483648)), vec2<i32>(1i, -12502i), vec2<i32>(-11318i, -32484i), vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, -1i), vec2<i32>(-22403i, 2147483647i), vec2<i32>(-36282i, 1i), vec2<i32>(-1i, -1i), vec2<i32>(-4414i, 0i), vec2<i32>(-9717i, -1i), vec2<i32>(83446i, 26276i), vec2<i32>(2147483647i, 32548i), vec2<i32>(0i, 2147483647i), vec2<i32>(1i, 0i), vec2<i32>(i32(-2147483648), -54703i), vec2<i32>(-3840i, 1i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec2<f32> {
    let var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(~_wgslsmith_mult_u32(arg_0.b.x, arg_0.b.x), arg_0.a) >> (~((vec2<u32>(global0.b.x, 29649u) | global0.b.yx) ^ firstLeadingBit(global0.b.yw)) % vec2<u32>(32u)), vec2<u32>(~66651u, arg_0.b.x));
    let var_1 = any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, u_input.a <= 2147483647i), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, true, false))), !((u_input.a == u_input.a) | any(vec4<bool>(false, false, false, false)))));
    var var_2 = _wgslsmith_f_op_f32(ceil(802f));
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(283f, global1[_wgslsmith_index_u32(arg_0.b.x, 23u)])) + global1[_wgslsmith_index_u32(reverseBits(123170u), 23u)])));
    var var_4 = arg_0;
    return vec2<f32>(1000f, 1f);
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(63869u, select(vec4<u32>(1u, 75302u, global0.a, 0u), global0.b, vec4<bool>(true, false, false, true))))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(global0.a, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)])))), global1[_wgslsmith_index_u32(~global0.a, 23u)]))), _wgslsmith_div_i32(arg_0, u_input.b.x), select(select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(true, false, false)), -1758f >= global1[_wgslsmith_index_u32(0u, 23u)], true), true), vec3<bool>((global0.b.x << (global0.a % 32u)) >= (4294967295u ^ global0.b.x), false, (global1[_wgslsmith_index_u32(global0.b.x, 23u)] >= 1000f) && true), true), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-u_input.b, u_input.b), u_input.b), u_input.a);
    global2 = array<vec2<i32>, 18>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), global1[_wgslsmith_index_u32(~1u, 23u)], -372f, var_0.a.x) + vec4<f32>(-645f, var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1078f)) + global1[_wgslsmith_index_u32(global0.a, 23u)]), _wgslsmith_f_op_f32(-1460f - global1[_wgslsmith_index_u32(global0.b.x, 23u)]))), !(!var_0.c.x));
    let var_2 = global1[_wgslsmith_index_u32(global0.a & _wgslsmith_add_u32(global0.a, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(global0.b.zx, vec2<u32>(4294967295u, 4294967295u)), abs(reverseBits(6991u)), global0.a)), 23u)];
    var var_3 = Struct_4(global0.b, var_1.a.x, any(!vec4<bool>(all(vec4<bool>(false, var_0.c.x, var_1.b, false)), !var_0.c.x, all(vec4<bool>(false, var_1.b, true, true)), select(false, true, var_0.c.x))), Struct_3(_wgslsmith_dot_vec2_u32(select(select(global0.b.yw, vec2<u32>(5943u, 1u), var_0.c.zz), countOneBits(global0.b.yy), var_1.b), ~vec2<u32>(4294967295u, 39218u)), global0.b), var_0.a.x);
    return Struct_3(_wgslsmith_dot_vec2_u32(~global0.b.zy, var_3.a.yx), vec4<u32>(firstTrailingBit(abs(var_3.d.b.x)) >> ((~global0.b.x & var_3.a.x) % 32u), global0.a, max(global0.a, _wgslsmith_clamp_u32(abs(var_3.d.a), firstTrailingBit(global0.b.x), var_3.d.a)), abs(global0.a)));
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    global0 = Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(~arg_0.a.x, arg_0.a.x, 4294967295u), vec3<u32>(~_wgslsmith_add_u32(1u, 0u), 7047u, 27293u)), vec4<u32>(~func_2(firstTrailingBit(-1i)).a, global0.a, _wgslsmith_clamp_u32(0u, firstTrailingBit(global0.b.x), ~(~1u)), global0.b.x));
    var var_0 = Struct_4(vec4<u32>(func_2(_wgslsmith_mult_i32(0i, -2147483647i)).b.x, _wgslsmith_sub_u32(abs(4294967295u), 0u), ~firstTrailingBit(arg_0.d.b.x), ~_wgslsmith_add_u32(global0.a, arg_0.a.x)) | ~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_0.d.a, 40322u, arg_0.d.b.x), ~vec4<u32>(0u, arg_0.a.x, 4294967295u, arg_0.a.x), ~vec4<u32>(0u, global0.b.x, global0.a, arg_0.a.x)), 1000f, true, Struct_3(1u, global0.b), -176f);
    var var_1 = var_0.a.zyx;
    let var_2 = ~(~reverseBits(~(~var_0.d.b)));
    let var_3 = -firstTrailingBit(-_wgslsmith_add_i32(u_input.b.x, u_input.a)) > -15949i;
    return Struct_3(global0.a, vec4<u32>(abs(8178u ^ var_0.d.b.x), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, 0u), 1u, var_0.d.b.x), abs(var_0.a.x), _wgslsmith_mod_u32(arg_0.a.x, var_0.a.x)) ^ vec4<u32>(_wgslsmith_add_u32(0u, var_1.x), 1u, 1783u, abs(var_0.a.x)));
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_3 {
    let var_0 = firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(62576u, ~global0.b.x), global0.a), global0.b.x));
    var var_1 = false;
    var var_2 = select(min(_wgslsmith_mult_vec3_u32(global0.b.xyy, _wgslsmith_mod_vec3_u32(vec3<u32>(71167u, var_0, global0.a), vec3<u32>(78645u, global0.a, global0.a))), _wgslsmith_mod_vec3_u32(vec3<u32>(20885u, var_0, 0u) >> (global0.b.wxz % vec3<u32>(32u)), global0.b.xyz) >> (vec3<u32>(var_0 >> (25435u % 32u), global0.b.x, var_0) % vec3<u32>(32u))), global0.b.ywy, (-1030f <= _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-arg_0))) || true);
    var var_3 = ~(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, var_2.x, 51446u)), global0.b), select(~vec4<u32>(80358u, 83600u, 3407u, 56760u), global0.b, 17141i == arg_1)));
    global2 = array<vec2<i32>, 18>();
    return func_4(Struct_4(reverseBits(~(~vec4<u32>(1u, var_0, var_2.x, var_2.x))), _wgslsmith_f_op_f32(round(arg_0)), !(_wgslsmith_f_op_f32(abs(1000f)) != _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(14358u, 23u)]))), func_2(u_input.b.x), _wgslsmith_f_op_f32(f32(-1f) * -567f)));
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: vec2<u32>) -> f32 {
    global2 = array<vec2<i32>, 18>();
    global0 = arg_1;
    global2 = array<vec2<i32>, 18>();
    var var_0 = vec2<bool>(!any(vec3<bool>(true, false, false)), firstTrailingBit(max(u_input.a, _wgslsmith_dot_vec3_i32(u_input.b.ywz, vec3<i32>(-1i, u_input.b.x, u_input.a)))) < firstTrailingBit(u_input.b.x));
    global2 = array<vec2<i32>, 18>();
    return 929f;
}

fn func_6(arg_0: f32, arg_1: i32, arg_2: vec2<i32>, arg_3: i32) -> i32 {
    let var_0 = Struct_3(global0.a, ~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.b.x, global0.b.x, global0.b.x, global0.a) & vec4<u32>(global0.b.x, global0.b.x, 0u, 0u), global0.b) | ~_wgslsmith_mult_vec4_u32(global0.b, ~global0.b));
    let var_1 = max(_wgslsmith_mult_vec2_i32(select(vec2<i32>(20448i, -arg_1), -select(vec2<i32>(-32557i, 8901i), vec2<i32>(arg_2.x, arg_2.x), false), all(vec2<bool>(true, true))), vec2<i32>(-1i) * -countOneBits(u_input.b.yz)), firstLeadingBit(arg_2));
    global0 = var_0;
    global2 = array<vec2<i32>, 18>();
    var var_2 = vec4<u32>(var_0.b.x, global0.a, 9375u, _wgslsmith_div_u32(13983u, 43817u) >> ((_wgslsmith_clamp_u32(0u, var_0.b.x, 1u) >> (67932u % 32u)) % 32u));
    return ~1i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 23>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1447f, 665f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1950f, -613f)) * vec2<f32>(global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(0u, 23u)])))))), _wgslsmith_mod_i32(func_6(_wgslsmith_f_op_f32(func_5(global0.a, func_1(1000f, 1i), func_2(1i).b.wx)), u_input.a, select(-vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(0i, u_input.b.x), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), _wgslsmith_mult_i32(~u_input.a, -2147483647i)), -countOneBits(_wgslsmith_mod_i32(u_input.a, u_input.b.x))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(true, false, false, true)))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false)), vec3<bool>(true, true, true)), any(select(vec2<bool>(false, false), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, false), true)))), 1i, -24933i);
    global1 = array<f32, 23>();
    let var_1 = min(_wgslsmith_mult_vec4_u32(global0.b, ~(~vec4<u32>(0u, 0u, global0.a, global0.a))), vec4<u32>(~64067u, 0u, 66912u, _wgslsmith_sub_u32(0u | global0.a, global0.a) ^ 0u));
    global1 = array<f32, 23>();
    let var_2 = select(var_0.c, select(var_0.c, select(select(select(var_0.c, vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x), vec3<bool>(var_0.c.x, true, var_0.c.x)), select(var_0.c, vec3<bool>(true, true, var_0.c.x), vec3<bool>(var_0.c.x, true, true)), select(var_0.c, var_0.c, vec3<bool>(true, var_0.c.x, var_0.c.x))), select(!vec3<bool>(var_0.c.x, false, false), var_0.c, select(var_0.c, var_0.c, var_0.c.x)), true), !var_0.c.x), select(var_0.c, !vec3<bool>(select(false, var_0.c.x, var_0.c.x), true, !var_0.c.x), select(var_0.c, select(select(var_0.c, vec3<bool>(true, true, true), vec3<bool>(false, var_0.c.x, var_0.c.x)), var_0.c, var_0.c), true)));
    global2 = array<vec2<i32>, 18>();
    var var_3 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~var_1.x), global0.b.xw, 1f, _wgslsmith_dot_vec2_u32((global0.b.wy | var_1.xw) >> (~global0.b.zz % vec2<u32>(32u)), ~(vec2<u32>(global0.b.x, global0.a) ^ global0.b.zz)) << (~51737u % 32u), vec4<i32>(u_input.a, ~u_input.a, u_input.b.x, _wgslsmith_dot_vec2_i32(firstTrailingBit(~vec2<i32>(u_input.a, var_0.d)), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(u_input.b.x, var_0.d)), -vec2<i32>(var_0.b, 2147483647i), vec2<i32>(-8107i, -40542i)))));
}

