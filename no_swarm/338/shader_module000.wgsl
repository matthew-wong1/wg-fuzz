struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<vec4<u32>, 24>;

var<private> global2: array<u32, 10> = array<u32, 10>(0u, 4294967295u, 38233u, 30200u, 18449u, 18094u, 94293u, 6522u, 0u, 4294967295u);

var<private> global3: array<Struct_3, 5>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: f32) -> Struct_1 {
    var var_0 = firstLeadingBit(reverseBits(_wgslsmith_clamp_u32(abs(abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(11689u, 10u)], 10u)])), u_input.c.x ^ _wgslsmith_div_u32(40405u, 1u), ~62361u)));
    var var_1 = global3[_wgslsmith_index_u32(u_input.c.x, 5u)];
    let var_2 = u_input.a;
    let var_3 = true;
    var var_4 = ~(reverseBits(vec3<u32>(global2[_wgslsmith_index_u32(35975u, 10u)], global2[_wgslsmith_index_u32(u_input.c.x, 10u)], u_input.c.x) & select(vec3<u32>(arg_0.x, global2[_wgslsmith_index_u32(76653u, 10u)], 1u), u_input.c, var_3)) ^ select(u_input.c, ~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 10u)], 10u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 10u)], 10u)], u_input.c.x), !vec3<bool>(var_3, false, var_3)));
    return Struct_1(u_input.b.x, _wgslsmith_f_op_f32(min(-447f, -1119f)), vec2<i32>(var_1.a, 10687i), var_3, u_input.a);
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_1(u_input.b.x, _wgslsmith_f_op_f32(max(1f, 1000f)), (vec2<i32>(arg_1, -55361i ^ arg_1) ^ u_input.b.zx) << (arg_0 % vec2<u32>(32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(638f))))) == _wgslsmith_f_op_f32(-332f - _wgslsmith_f_op_f32(floor(-572f))), min(u_input.a, u_input.a));
    let var_1 = Struct_2(~global2[_wgslsmith_index_u32(57661u, 10u)] == ~abs(min(u_input.c.x, 11100u)), var_0.d);
    global0 = _wgslsmith_div_u32(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, arg_0.x, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(0u, u_input.c.x, 1u)), u_input.c & vec3<u32>(u_input.c.x, global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(92832u, 10u)]))), ~max(vec4<u32>(42452u, 4294967295u, u_input.c.x, u_input.c.x), vec4<u32>(global2[_wgslsmith_index_u32(0u, 10u)], u_input.c.x, 43006u, u_input.c.x)) >> (global1[_wgslsmith_index_u32(arg_0.x, 24u)] % vec4<u32>(32u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.b, 1000f) * vec3<f32>(var_0.b, var_0.b, var_0.b)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, 171f, var_0.b)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-620f, var_0.b, var_0.b) * vec3<f32>(-1758f, var_0.b, var_0.b)))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(var_0.b - 169f), _wgslsmith_f_op_f32(floor(991f)), _wgslsmith_div_f32(-493f, var_0.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, 526f, var_0.b))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.b, var_0.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, -485f))))));
    let var_3 = 1i;
    return ~(-_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_3, 2147483647i), var_0.e.yw) & var_0.c, vec2<i32>(-2147483647i, firstTrailingBit(-20583i))));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> u32 {
    let var_0 = Struct_2(!(!(!(false & arg_1.a))), true);
    global1 = array<vec4<u32>, 24>();
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(517f, _wgslsmith_f_op_f32(floor(-334f))))), 1000f));
    var var_2 = firstTrailingBit(countOneBits(reverseBits(~countOneBits(u_input.b.x))));
    var var_3 = arg_1.a;
    return countOneBits(~abs(reverseBits(37778u)));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_4, arg_3: i32) -> Struct_5 {
    var var_0 = arg_2.b.d;
    var var_1 = global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 10u)], 5u)];
    var var_2 = arg_2;
    let var_3 = global2[_wgslsmith_index_u32(select(func_4(func_3(select(abs(u_input.c.yx), u_input.c.zz, select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, arg_2.b.d))), _wgslsmith_dot_vec4_i32(vec4<i32>(-30335i, 11791i, u_input.b.x, arg_3), vec4<i32>(u_input.a.x, 10906i, 2147483647i, var_2.c.x)), Struct_2(u_input.c.x >= u_input.c.x, any(vec2<bool>(true, true)))), Struct_2(false, arg_2.b.d)), global2[_wgslsmith_index_u32(4294967295u, 10u)], _wgslsmith_clamp_i32(~2147483647i, _wgslsmith_dot_vec2_i32(~var_2.b.e.xz, _wgslsmith_mult_vec2_i32(u_input.a.yw, vec2<i32>(var_2.c.x, 25262i))), 2147483647i << ((u_input.c.x ^ 6792u) % 32u)) <= (-var_2.c.x | (-4177i & firstTrailingBit(arg_3)))), 10u)];
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.a.xzz) * vec3<f32>(-1000f, arg_2.b.b, _wgslsmith_f_op_f32(ceil(var_2.a.x)))));
    return Struct_5(-arg_2.c.zy, select(false, arg_2.b.d, func_1(u_input.c, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-423f, -857f, -1112f, arg_0.x))), var_4.x).d), u_input.a.zy);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_5) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(21516u, 10u)];
    var var_1 = Struct_3(arg_0.c.x, _wgslsmith_div_i32(~(~arg_1.a.x), -arg_1.a.x << (1u % 32u)));
    let var_2 = _wgslsmith_mult_vec3_i32((-vec3<i32>(arg_0.e.x, 10349i, -1i) & min(_wgslsmith_mult_vec3_i32(arg_0.e.yyx, vec3<i32>(arg_1.a.x, -13875i, arg_1.c.x)), ~arg_0.e.xxz)) | firstLeadingBit(_wgslsmith_div_vec3_i32(u_input.a.www & arg_0.e.yzx, vec3<i32>(u_input.b.x, u_input.a.x, arg_0.e.x))), vec3<i32>(-var_1.b, -22259i, _wgslsmith_div_i32(min(33042i, var_1.a), ~14706i) | -2147483647i));
    let var_3 = vec2<bool>(false, -1000f < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_0.b, arg_0.b)))));
    let var_4 = Struct_1(-_wgslsmith_sub_i32(arg_1.c.x, var_2.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1007f))))), 2300f)), arg_1.a, !(!select(true, var_3.x, !arg_1.b)), vec4<i32>(select(_wgslsmith_sub_i32(firstTrailingBit(arg_1.c.x), var_1.b), -11675i, any(var_3)), _wgslsmith_div_i32(u_input.b.x, u_input.b.x), -arg_0.a, -2147483647i));
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.c.x;
    var var_0 = func_5(Struct_1(_wgslsmith_div_i32(15573i, 2147483647i), _wgslsmith_f_op_f32(-516f + -242f), vec2<i32>(u_input.b.x, ~u_input.a.x), true, ~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-12385i, u_input.a.x)), ~(-4322i), _wgslsmith_dot_vec3_i32(vec3<i32>(-7455i, u_input.a.x, 2147483647i), vec3<i32>(46823i, -1i, u_input.a.x)), -1i)), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-260f, -1783f))), u_input.a.x, Struct_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-441f, -2073f, 1137f, -137f)), vec4<f32>(-442f, 500f, 760f, 1957f))), func_1(vec3<u32>(u_input.c.x, global2[_wgslsmith_index_u32(u_input.c.x, 10u)], 4294967295u), vec4<f32>(507f, -1251f, 290f, 610f), _wgslsmith_f_op_f32(sign(-827f))), select(u_input.a.zyy >> (vec3<u32>(36811u, 40651u, u_input.c.x) % vec3<u32>(32u)), -u_input.a.xyw, any(vec4<bool>(true, true, true, true)))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x ^ 43241i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1258i, u_input.a.x, u_input.b.x), u_input.a), -2147483647i), ~u_input.a.zxy)));
    var var_1 = false;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1761f) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-117f, 1496f)))), vec2<f32>(_wgslsmith_f_op_f32(-535f + 201f), _wgslsmith_f_op_f32(1000f * 136f))))));
    let var_3 = _wgslsmith_mod_u32(u_input.c.x, u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_sub_u32(reverseBits(68279u), (~u_input.c.x ^ ~1u) ^ 1u), -1i, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.x, var_2.x, _wgslsmith_f_op_f32(-func_1(vec3<u32>(73221u, 46618u, 4294967295u), vec4<f32>(918f, var_2.x, var_2.x, var_2.x), var_2.x).b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, -660f, 473f), vec3<f32>(var_2.x, var_2.x, -313f), true)), vec3<f32>(-1890f, 1000f, var_2.x)) + _wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, var_2.x, var_2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 828f, var_2.x)))))));
}

