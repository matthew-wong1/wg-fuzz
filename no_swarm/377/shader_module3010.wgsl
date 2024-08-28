struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec4<u32>,
    d: u32,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_5;

var<private> global2: array<vec3<f32>, 27> = array<vec3<f32>, 27>(vec3<f32>(-206f, 814f, -363f), vec3<f32>(251f, 407f, -1179f), vec3<f32>(423f, -1645f, 1000f), vec3<f32>(180f, -1542f, -330f), vec3<f32>(1079f, 1668f, 1315f), vec3<f32>(825f, -1250f, 1357f), vec3<f32>(-507f, -1705f, -338f), vec3<f32>(957f, 1000f, 436f), vec3<f32>(2825f, 115f, 1335f), vec3<f32>(-1680f, -2179f, -568f), vec3<f32>(1152f, -737f, 105f), vec3<f32>(1000f, 1000f, -117f), vec3<f32>(299f, 752f, -229f), vec3<f32>(-1378f, -1032f, 464f), vec3<f32>(115f, -2326f, 647f), vec3<f32>(-426f, -1857f, 1150f), vec3<f32>(737f, -383f, 556f), vec3<f32>(763f, -714f, 553f), vec3<f32>(480f, -609f, -1000f), vec3<f32>(142f, 2631f, 168f), vec3<f32>(-731f, -830f, -291f), vec3<f32>(-178f, 1000f, 991f), vec3<f32>(-692f, 833f, -2097f), vec3<f32>(1000f, 465f, 740f), vec3<f32>(-213f, -137f, -449f), vec3<f32>(-2683f, 578f, -851f), vec3<f32>(-1000f, -361f, -116f));

var<private> global3: array<vec4<i32>, 12> = array<vec4<i32>, 12>(vec4<i32>(i32(-2147483648), 2147483647i, 23361i, -23297i), vec4<i32>(3450i, 10520i, 0i, i32(-2147483648)), vec4<i32>(-1i, i32(-2147483648), -28i, -3095i), vec4<i32>(-1i, -1i, 0i, -33078i), vec4<i32>(-28273i, 39767i, 0i, -26879i), vec4<i32>(-13850i, 23640i, 23900i, 0i), vec4<i32>(-1i, 2147483647i, 0i, -1i), vec4<i32>(-22761i, i32(-2147483648), 49374i, -1i), vec4<i32>(i32(-2147483648), 0i, -10727i, -1i), vec4<i32>(20442i, -33605i, 1i, 55166i), vec4<i32>(3731i, -5947i, -16174i, 0i), vec4<i32>(54385i, 6356i, -7287i, -1i));

var<private> global4: array<vec2<u32>, 27>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_3) -> f32 {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-489f * arg_2.a.b.a.x))), vec3<bool>(true, true, true), arg_1.b.b.xz, _wgslsmith_add_vec2_i32(-firstTrailingBit(vec2<i32>(1i, 1i)), global1.a), ~arg_1.b.e);
    return _wgslsmith_div_f32(arg_2.a.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - -723f) - 378f));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: i32) -> Struct_1 {
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-220f, -1348f, 1398f, -942f))), Struct_2(vec4<bool>(true, true, true, true), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], vec3<bool>(false, true, true), vec2<bool>(false, true), vec2<i32>(0i, 1i), 4294967295u), Struct_1(global2[_wgslsmith_index_u32(46719u, 27u)], vec3<bool>(false, true, true), vec2<bool>(false, false), global1.a, u_input.a.x)), Struct_3(Struct_2(vec4<bool>(false, true, false, false), Struct_1(vec3<f32>(arg_0.x, -1000f, -257f), vec3<bool>(true, false, true), vec2<bool>(false, false), global1.a, u_input.a.x), Struct_1(vec3<f32>(arg_0.x, -1881f, arg_0.x), vec3<bool>(false, true, true), vec2<bool>(true, false), vec2<i32>(global0.x, -2147483647i), 2351u)), true, _wgslsmith_add_vec4_u32(vec4<u32>(0u, 32648u, u_input.a.x, 7482u), vec4<u32>(u_input.a.x, 4652u, u_input.a.x, 0u)), abs(u_input.a.x)))), _wgslsmith_f_op_f32(-994f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1061f)) * _wgslsmith_f_op_f32(min(989f, -1285f)))), _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(arg_1))))))), vec3<bool>(true, true, true), !vec2<bool>(select(u_input.a.x != u_input.a.x, true, true), false), global0.wz, ~_wgslsmith_dot_vec2_u32(u_input.a.xx, ~vec2<u32>(u_input.a.x, u_input.a.x)));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_3) -> Struct_2 {
    let var_0 = 29369u;
    let var_1 = func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_3.a.c.a.xz)))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(arg_2.a.xx, arg_3.a.c.a.yx), _wgslsmith_div_vec2_f32(vec2<f32>(-1014f, 479f), vec2<f32>(arg_0.c.a.x, arg_2.a.x))), _wgslsmith_f_op_vec2_f32(-arg_2.a.zz))), 1706f, global0.x >> (arg_3.c.x % 32u));
    var var_2 = Struct_1(var_1.a, arg_0.c.b, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_3.a.c.a.yz, _wgslsmith_div_vec2_f32(vec2<f32>(153f, -1158f), vec2<f32>(arg_2.a.x, 1000f)), !arg_3.b))), 856f, -1i).c, abs(vec2<i32>(-31976i, _wgslsmith_add_i32(firstLeadingBit(arg_3.a.c.d.x), -arg_2.d.x))), reverseBits(~abs(117076u >> (arg_3.a.b.e % 32u))));
    var_2 = arg_0.b;
    let var_3 = -171f;
    return Struct_2(select(select(vec4<bool>(func_2(arg_2.a.xx, var_2.a.x, arg_2.d.x).b.x, all(arg_2.b.zx), false, any(var_2.b.zz)), arg_0.a, false), vec4<bool>(any(select(vec4<bool>(true, arg_2.b.x, arg_2.b.x, arg_0.b.b.x), vec4<bool>(arg_3.b, arg_3.a.a.x, arg_1.x, true), var_1.c.x)), (1u < var_2.e) || var_2.c.x, true, !arg_1.x), true), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-268f, _wgslsmith_div_f32(-207f, arg_2.a.x), func_2(var_2.a.yx, -1871f, 1i).a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global2[_wgslsmith_index_u32(1u, 27u)]))), arg_2.b)), !vec3<bool>(var_1.e > arg_2.e, select(false, false, true), arg_0.b.c.x), !(!vec2<bool>(arg_2.b.x, arg_2.b.x)), global0.yx << (~_wgslsmith_sub_vec2_u32(vec2<u32>(11071u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)) % vec2<u32>(32u)), var_2.e), arg_3.a.b);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5, arg_2: Struct_5) -> Struct_2 {
    var var_0 = true;
    global1 = Struct_5(vec2<i32>(~((i32(-1i) * -2147483647i) & _wgslsmith_clamp_i32(0i, global1.b, -6688i)), global0.x), firstTrailingBit(firstLeadingBit(-2147483647i)));
    global1 = Struct_5(firstLeadingBit(firstTrailingBit(~reverseBits(vec2<i32>(-2147483647i, global1.a.x)))), abs(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.b, 1i), arg_0.b.d), _wgslsmith_add_i32(_wgslsmith_div_i32(1i, arg_2.b), 2147483647i ^ global1.b), abs(-2147483647i))));
    global2 = array<vec3<f32>, 27>();
    var var_1 = max(~select(~1u, ~75634u, arg_0.c.c.x) & u_input.a.x, arg_0.b.e);
    return arg_0;
}

fn func_5(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: vec3<f32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1170f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(arg_3.x * arg_3.x)))), 1247f)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_3.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(Struct_2(arg_2.a.a, Struct_1(global2[_wgslsmith_index_u32(4294967295u, 27u)], vec3<bool>(arg_2.a.a.x, false, false), vec2<bool>(true, arg_2.a.c.b.x), vec2<i32>(27010i, arg_2.a.b.d.x), 0u), arg_2.a.b), vec2<bool>(arg_2.b, true), Struct_1(global2[_wgslsmith_index_u32(64186u, 27u)], arg_2.a.a.yyy, vec2<bool>(false, arg_2.b), vec2<i32>(global1.b, 39822i), 1681u), arg_2).c.a.x)), var_0.x)));
    let var_2 = Struct_3(arg_2.a, true, ~reverseBits(~min(arg_2.c, arg_2.c)), ~firstTrailingBit(min(abs(0u), 4294967295u)));
    return func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-1306f - arg_3.x), _wgslsmith_f_op_f32(arg_2.a.b.a.x + 1277f))))), _wgslsmith_f_op_f32(func_1(Struct_2(!vec4<bool>(false, false, false, arg_2.a.a.x), arg_2.a.c, Struct_1(vec3<f32>(-483f, -132f, arg_2.a.c.a.x), arg_2.a.a.wxw, vec2<bool>(false, arg_2.b), global1.a, var_2.a.c.e)), vec2<bool>(var_2.a.c.d.x >= -336i, arg_2.b), arg_2.a.c, Struct_3(arg_2.a, false, var_2.c, arg_2.d)).b.a.x + _wgslsmith_f_op_f32(f32(-1f) * -910f)), _wgslsmith_mult_i32(-1i, _wgslsmith_mult_i32(func_1(arg_2.a, vec2<bool>(true, arg_2.b), arg_2.a.b, var_2).c.d.x, global0.x << (arg_2.a.c.e % 32u))) | arg_2.a.c.d.x).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global4 = array<vec2<u32>, 27>();
    let var_1 = !func_5(countOneBits((vec3<i32>(global1.a.x, 14717i, 1i) ^ vec3<i32>(16719i, 20130i, global1.a.x)) << (~u_input.a % vec3<u32>(32u))), vec3<u32>(~u_input.a.x, u_input.a.x, 1u), Struct_3(func_4(func_1(Struct_2(vec4<bool>(false, var_0, false, var_0), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], vec3<bool>(var_0, false, var_0), vec2<bool>(false, var_0), vec2<i32>(53005i, global0.x), 0u), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], vec3<bool>(var_0, false, var_0), vec2<bool>(var_0, var_0), vec2<i32>(30159i, 0i), 37224u)), vec2<bool>(true, true), Struct_1(vec3<f32>(264f, -1483f, -313f), vec3<bool>(var_0, true, var_0), vec2<bool>(var_0, var_0), vec2<i32>(-14308i, 28398i), u_input.a.x), Struct_3(Struct_2(vec4<bool>(true, false, false, var_0), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], vec3<bool>(var_0, true, var_0), vec2<bool>(var_0, var_0), vec2<i32>(3739i, global0.x), u_input.a.x), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], vec3<bool>(true, var_0, true), vec2<bool>(false, false), global1.a, u_input.a.x)), var_0, vec4<u32>(19083u, u_input.a.x, 2587u, u_input.a.x), u_input.a.x)), Struct_5(global1.a, global0.x), Struct_5(vec2<i32>(global1.a.x, global0.x), -3354i)), var_0, min(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u)), 4294967295u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-286f, 348f, -400f), global2[_wgslsmith_index_u32(u_input.a.x, 27u)], false)))) - vec3<f32>(-224f, _wgslsmith_f_op_f32(f32(-1f) * -2627f), _wgslsmith_f_op_f32(sign(-1492f)))));
    let var_2 = Struct_4(vec4<u32>(_wgslsmith_sub_u32(24736u, countOneBits(~u_input.a.x)), 0u, ~44577u, 64429u));
    global0 = reverseBits(_wgslsmith_sub_vec4_i32(~vec4<i32>(firstTrailingBit(global1.b), global0.x << (18274u % 32u), global1.b, -global0.x), select(global3[_wgslsmith_index_u32(u_input.a.x, 12u)], ~firstLeadingBit(vec4<i32>(0i, global0.x, 2147483647i, global0.x)), any(vec2<bool>(var_1.x, true)))));
    global1 = Struct_5(~abs(firstTrailingBit(vec2<i32>(0i, 7516i))), -_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(global0.yyz, -global0.zyz, vec3<i32>(global0.x, global0.x, -6592i)), firstLeadingBit(global0.xwz)));
    var var_3 = Struct_3(func_1(Struct_2(select(!vec4<bool>(var_0, var_1.x, false, var_1.x), vec4<bool>(var_0, true, var_1.x, var_0), !vec4<bool>(var_1.x, true, var_0, var_0)), Struct_1(_wgslsmith_div_vec3_f32(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], global2[_wgslsmith_index_u32(36097u, 27u)]), func_5(global0.wyz, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_3(Struct_2(vec4<bool>(true, false, var_1.x, var_0), Struct_1(vec3<f32>(329f, -2015f, 177f), vec3<bool>(var_1.x, false, var_1.x), vec2<bool>(true, true), global0.yx, var_2.a.x), Struct_1(global2[_wgslsmith_index_u32(var_2.a.x, 27u)], var_1, vec2<bool>(false, true), vec2<i32>(18229i, global1.a.x), u_input.a.x)), var_0, vec4<u32>(var_2.a.x, 21662u, u_input.a.x, 0u), 46288u), global2[_wgslsmith_index_u32(1u, 27u)]), vec2<bool>(var_1.x, true), vec2<i32>(global0.x, -4386i), 50690u >> (0u % 32u)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1070f, -1191f, 852f) + vec3<f32>(-722f, 414f, -1582f)), select(var_1, vec3<bool>(false, var_1.x, true), false), vec2<bool>(var_1.x, true), firstLeadingBit(vec2<i32>(0i, global1.b)), firstLeadingBit(var_2.a.x))), vec2<bool>(var_0, true), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], vec3<f32>(-1067f, 642f, -1000f), false))), !var_1, select(var_1.zy, vec2<bool>(true, var_0), !var_1.x), ~vec2<i32>(global1.a.x, global1.a.x), ~(~48939u)), Struct_3(Struct_2(func_1(Struct_2(vec4<bool>(var_0, var_0, var_0, var_1.x), Struct_1(vec3<f32>(-345f, -438f, 318f), var_1, vec2<bool>(false, true), global0.zz, 0u), Struct_1(global2[_wgslsmith_index_u32(1u, 27u)], vec3<bool>(var_1.x, var_1.x, var_0), var_1.yy, global1.a, u_input.a.x)), var_1.xx, Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], vec3<bool>(true, var_0, false), var_1.zx, vec2<i32>(-1i, -1i), var_2.a.x), Struct_3(Struct_2(vec4<bool>(false, var_1.x, false, false), Struct_1(vec3<f32>(-306f, 333f, 1533f), vec3<bool>(true, false, true), vec2<bool>(var_1.x, true), vec2<i32>(global0.x, global1.b), u_input.a.x), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], vec3<bool>(false, var_1.x, false), vec2<bool>(true, false), global1.a, 4294967295u)), var_0, var_2.a, var_2.a.x)).a, func_4(Struct_2(vec4<bool>(var_1.x, var_0, true, var_1.x), Struct_1(vec3<f32>(854f, -847f, 646f), vec3<bool>(true, var_0, false), var_1.zx, vec2<i32>(global0.x, global0.x), 7594u), Struct_1(global2[_wgslsmith_index_u32(7384u, 27u)], vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.yz, vec2<i32>(global1.a.x, global0.x), var_2.a.x)), Struct_5(vec2<i32>(global0.x, -1i), global1.b), Struct_5(global1.a, global0.x)).b, func_4(Struct_2(vec4<bool>(false, false, var_0, true), Struct_1(global2[_wgslsmith_index_u32(25534u, 27u)], vec3<bool>(var_1.x, true, var_0), vec2<bool>(true, var_0), vec2<i32>(-1i, global0.x), u_input.a.x), Struct_1(vec3<f32>(-547f, -1115f, 168f), var_1, var_1.yx, vec2<i32>(1i, -26464i), var_2.a.x)), Struct_5(global1.a, global1.a.x), Struct_5(vec2<i32>(-6364i, 10795i), global1.a.x)).b), any(select(vec4<bool>(var_1.x, var_1.x, false, var_0), vec4<bool>(true, var_0, true, var_1.x), var_1.x)), vec4<u32>(~37355u, _wgslsmith_add_u32(u_input.a.x, 49775u), ~46279u, countOneBits(7059u)), func_4(func_4(Struct_2(vec4<bool>(var_1.x, true, false, false), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], vec3<bool>(var_0, true, false), vec2<bool>(var_1.x, var_0), global0.yw, 12297u), Struct_1(global2[_wgslsmith_index_u32(var_2.a.x, 27u)], var_1, vec2<bool>(var_0, var_1.x), vec2<i32>(-2147483647i, global0.x), var_2.a.x)), Struct_5(vec2<i32>(-21479i, -16011i), 10492i), Struct_5(global1.a, -574i)), Struct_5(vec2<i32>(global1.a.x, global0.x), global0.x), Struct_5(global0.wx, -2147483647i)).b.e)), false, vec4<u32>(var_2.a.x, var_2.a.x, _wgslsmith_mult_u32(4294967295u, func_4(Struct_2(vec4<bool>(false, var_1.x, var_1.x, false), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], vec3<bool>(true, true, true), vec2<bool>(var_0, var_1.x), global1.a, var_2.a.x), Struct_1(vec3<f32>(-680f, -184f, -584f), vec3<bool>(var_0, true, var_1.x), vec2<bool>(var_0, false), global1.a, 1u)), Struct_5(vec2<i32>(-2147483647i, global0.x), global0.x), Struct_5(global1.a, global1.b)).c.e), ~reverseBits(var_2.a.x)), u_input.a.x & (select(10973u, _wgslsmith_clamp_u32(u_input.a.x, var_2.a.x, u_input.a.x), false | var_1.x) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(23025u, 19684u, 16834u)), u_input.a) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_3.a.b.a.x, _wgslsmith_f_op_f32(354f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.b.a.x))), 229f), select(vec4<u32>(var_2.a.x, var_2.a.x, func_1(Struct_2(var_3.a.a, var_3.a.b, var_3.a.b), var_1.xx, var_3.a.c, Struct_3(var_3.a, false, var_3.c, u_input.a.x)).c.e, _wgslsmith_mult_u32(29215u, ~u_input.a.x)), abs(~var_2.a) >> (vec4<u32>(firstLeadingBit(1u), ~24687u, min(5252u, u_input.a.x), var_3.c.x) % vec4<u32>(32u)), vec4<bool>(func_4(var_3.a, Struct_5(global1.a, global0.x), Struct_5(global0.xy, global1.a.x)).c.b.x, any(vec3<bool>(var_3.a.b.c.x, false, var_1.x)), true, true)));
}

