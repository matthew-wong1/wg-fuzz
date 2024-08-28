struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global1: array<Struct_1, 3>;

var<private> global2: array<Struct_2, 32>;

var<private> global3: Struct_1 = Struct_1(9528u, vec4<f32>(-947f, 1000f, 145f, -1000f), 1u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>) -> vec4<i32> {
    global1 = array<Struct_1, 3>();
    global2 = array<Struct_2, 32>();
    let var_0 = global1[_wgslsmith_index_u32(u_input.b.x, 3u)];
    let var_1 = global2[_wgslsmith_index_u32(u_input.a, 32u)];
    var var_2 = 5309u ^ abs(var_1.a.a);
    return firstLeadingBit(arg_0);
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<i32>, arg_3: i32) -> Struct_1 {
    var var_0 = arg_0.zxx | _wgslsmith_div_vec3_i32(-arg_2.yzy, select(max(max(arg_0.zzw, arg_2.yyz), -vec3<i32>(-14147i, arg_2.x, arg_3)), vec3<i32>(-29131i, arg_0.x, 38272i), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false))));
    global1 = array<Struct_1, 3>();
    let var_1 = 4294967295u;
    let var_2 = Struct_1(_wgslsmith_mod_u32(15306u, arg_1), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, global3.b.x, 1000f, 775f))), ~abs((0u & u_input.b.x) | 0u));
    var var_3 = true;
    return Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, -1709f, global3.b.x, global3.b.x) * vec4<f32>(962f, -1000f, global3.b.x, 759f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.x, 1640f, 1443f, -1014f) - vec4<f32>(global3.b.x, 1815f, global3.b.x, global3.b.x))))), arg_1);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_2 {
    global0 = array<vec2<bool>, 16>();
    let var_0 = func_3(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-23310i, u_input.c.x, 28986i), vec3<i32>(-34690i, u_input.c.x, 2147483647i)) >> ((4294967295u | global3.a) % 32u), select(i32(-1i) * -6127i, 14036i, true), -u_input.c.x, max(min(u_input.c.x, 12623i), u_input.c.x)) >> (~(~(~vec4<u32>(31105u, 82377u, 4294967295u, 0u))) % vec4<u32>(32u)), ~7894u, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, _wgslsmith_mult_i32(13582i, _wgslsmith_div_i32(u_input.c.x, -1i)), countOneBits(42649i)), ~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, u_input.c.x), countOneBits(vec4<i32>(u_input.c.x, 0i, -1i, -44078i)))), _wgslsmith_mult_i32(firstTrailingBit(-2147483647i), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -12650i, 12749i, 68747i) | vec4<i32>(48793i, u_input.c.x, u_input.c.x, u_input.c.x), countOneBits(vec4<i32>(u_input.c.x, 11740i, -1i, -2814i))))));
    var var_1 = select(!vec4<bool>(true || any(vec4<bool>(true, true, false, true)), any(select(vec2<bool>(true, false), global0[_wgslsmith_index_u32(0u, 16u)], true)), false, var_0.c >= 2511u), vec4<bool>(true, true, any(vec4<bool>(all(vec3<bool>(true, false, true)), all(global0[_wgslsmith_index_u32(arg_0.c, 16u)]), false, true)), all(vec2<bool>(true, true))), any(vec4<bool>(true, true, true, true)));
    var var_2 = all(vec2<bool>(-23489i > u_input.c.x, all(vec4<bool>(true, true, true, true))));
    var var_3 = func_3(-func_2(~(-vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 6510i)), func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 13866i), vec4<i32>(-2147483647i, 0i, u_input.c.x, -35941i)), -vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(11443u, 1u, 53215u, var_0.a))), ~global3.a), vec4<i32>(-u_input.c.x, firstLeadingBit(-_wgslsmith_dot_vec2_i32(u_input.c, u_input.c)), _wgslsmith_mult_i32(~_wgslsmith_div_i32(-27911i, u_input.c.x), 13042i), u_input.c.x & -_wgslsmith_add_i32(3776i, -2441i)), -41752i);
    return global2[_wgslsmith_index_u32(95441u, 32u)];
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = 1u;
    let var_1 = func_4(func_3(abs(func_2(-vec4<i32>(-2147483647i, u_input.c.x, 2147483647i, u_input.c.x), abs(vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, -1i)))), ~u_input.a, vec4<i32>(-934i, 0i, _wgslsmith_mult_i32(_wgslsmith_div_i32(0i, -26389i), firstTrailingBit(u_input.c.x)), ~u_input.c.x), _wgslsmith_mult_i32(select(_wgslsmith_div_i32(22585i, u_input.c.x), -16208i, 4294967295u != global3.c), ~(u_input.c.x ^ u_input.c.x))), vec3<f32>(603f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-609f - -1201f) + global3.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.b.x, 1000f))))));
    global3 = func_4(func_3(_wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.c.x, 1i, u_input.c.x, -2147483647i)), firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 1i, -33224i), vec4<i32>(1i, u_input.c.x, 2147483647i, 11034i)))), 4294967295u, vec4<i32>(abs(u_input.c.x), (u_input.c.x & u_input.c.x) ^ -1i, 1i, 17403i), ~abs(u_input.c.x)), _wgslsmith_f_op_vec3_f32(-global3.b.wwx)).c;
    global0 = array<vec2<bool>, 16>();
    let var_2 = var_1;
    return Struct_1(firstTrailingBit(global3.a), func_4(Struct_1(global3.a, vec4<f32>(-1731f, _wgslsmith_f_op_f32(step(global3.b.x, 547f)), _wgslsmith_f_op_f32(ceil(904f)), -467f), _wgslsmith_mod_u32(~4294967295u, 19469u)), vec3<f32>(global3.b.x, _wgslsmith_f_op_f32(abs(var_2.b.b.x)), -783f)).c.b, abs(~101505u));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<f32>) -> bool {
    let var_0 = func_4(arg_2, vec3<f32>(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-536f - _wgslsmith_div_f32(arg_2.b.x, global3.b.x))), 243f, _wgslsmith_f_op_f32(arg_3.x + -977f)));
    global1 = array<Struct_1, 3>();
    global1 = array<Struct_1, 3>();
    var var_1 = select(vec4<bool>(true, var_0.d, false, !(all(vec2<bool>(var_0.d, var_0.d)) | false)), !(!vec4<bool>(all(vec4<bool>(true, false, var_0.d, var_0.d)), any(vec3<bool>(false, true, true)), var_0.d, true)), !(!arg_1.d) == var_0.d);
    return any(!(!select(vec3<bool>(arg_1.d, var_1.x, false), var_1.zyy, var_0.d)));
}

fn func_6(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = u_input.c.x;
    var var_1 = 1412f;
    global1 = array<Struct_1, 3>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -188f), -592f);
    let var_3 = global3.b;
    return global2[_wgslsmith_index_u32(global3.c, 32u)];
}

fn func_7(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(global3.b - _wgslsmith_f_op_vec4_f32(global3.b - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(func_6(vec4<bool>(arg_0.d, arg_0.d, arg_0.d, arg_0.d), u_input.b.xyx, Struct_2(Struct_1(22870u, vec4<f32>(global3.b.x, 132f, global3.b.x, 2158f), 24929u), arg_0.a, global1[_wgslsmith_index_u32(1u, 3u)], arg_1.x, vec4<u32>(u_input.e.x, arg_0.e.x, u_input.e.x, u_input.b.x))).b.b.x, global3.b.x, func_6(vec4<bool>(true, true, arg_0.d, arg_0.d), vec3<u32>(3476u, 76140u, 4294967295u), global2[_wgslsmith_index_u32(0u, 32u)]).a.b.x, 352f)))));
    var var_1 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(arg_0.c.c, u_input.e.x), min(u_input.a, 1u), _wgslsmith_sub_u32(func_6(vec4<bool>(arg_1.x, arg_1.x, true, arg_0.d), vec3<u32>(16958u, 9397u, 30003u), Struct_2(Struct_1(117904u, arg_0.b.b, 0u), global1[_wgslsmith_index_u32(1u, 3u)], Struct_1(global3.a, vec4<f32>(var_0.x, -1000f, 1203f, var_0.x), 0u), true, arg_0.e)).e.x, 1034u), 0u), firstTrailingBit(vec4<u32>(global3.a, ~22431u, 32595u, arg_0.e.x)));
    var var_2 = arg_0.c;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.b.zx - _wgslsmith_f_op_vec2_f32(vec2<f32>(-642f, var_0.x) + arg_0.a.b.ww)))));
    return -arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 32>();
    var var_0 = _wgslsmith_sub_i32(select(u_input.c.x, _wgslsmith_dot_vec4_i32(min(-vec4<i32>(-10393i, u_input.c.x, u_input.c.x, u_input.c.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-47669i, u_input.c.x, 47880i, 7751i), vec4<i32>(-2147483647i, 2147483647i, u_input.c.x, 9548i))), -(vec4<i32>(1i, -20048i, -2147483647i, u_input.c.x) >> (vec4<u32>(4294967295u, u_input.a, global3.a, 4294967295u) % vec4<u32>(32u)))), all(vec3<bool>(false, u_input.e.x >= 13195u, true))), u_input.c.x);
    var_0 = func_7(func_6(vec4<bool>((u_input.c.x == 2147483647i) || true, func_5(global3.b.xx, Struct_2(Struct_1(global3.c, global3.b, global3.c), Struct_1(1u, vec4<f32>(-628f, global3.b.x, 457f, 1000f), 30228u), global1[_wgslsmith_index_u32(u_input.a, 3u)], true, u_input.b), func_1(u_input.b.x), global3.b.yw), _wgslsmith_div_u32(4294967295u, u_input.a) != abs(115096u), 1i == firstLeadingBit(u_input.c.x)), ~u_input.d, Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), 9251u), 3u)], Struct_1(~u_input.e.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-510f, -539f, global3.b.x, global3.b.x)), 4294967295u), Struct_1(u_input.d.x, vec4<f32>(global3.b.x, global3.b.x, 1147f, global3.b.x), global3.c ^ global3.a), false, select(u_input.b, ~u_input.b, true))), select(global0[_wgslsmith_index_u32(~(abs(8389u) | func_6(vec4<bool>(false, true, false, false), vec3<u32>(global3.c, u_input.d.x, u_input.b.x), Struct_2(Struct_1(4294967295u, global3.b, global3.a), global1[_wgslsmith_index_u32(0u, 3u)], Struct_1(1u, global3.b, global3.c), true, u_input.b)).b.c), 16u)], vec2<bool>(!all(vec2<bool>(false, false)), false), vec2<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), false)), all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), true)))), 67087i);
    var var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(-(u_input.c.x << (4265u % 32u)), u_input.c.x, u_input.c.x), vec3<i32>(firstLeadingBit(max(u_input.c.x, u_input.c.x) ^ u_input.c.x), 0i, min(firstTrailingBit(-21347i), select(u_input.c.x, u_input.c.x, true)) << (~(~21633u) % 32u)));
    global0 = array<vec2<bool>, 16>();
    var var_2 = func_4(Struct_1(~(4294967295u & global3.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, 1944f, global3.b.x, 1000f)) * _wgslsmith_f_op_vec4_f32(global3.b * vec4<f32>(global3.b.x, 1000f, global3.b.x, global3.b.x)))), _wgslsmith_dot_vec2_u32(countOneBits(~u_input.e.zx), ~u_input.e.zz)), func_1(select(~global3.a & reverseBits(u_input.a), ~global3.a, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false))))).b.zyw).b;
    global1 = array<Struct_1, 3>();
    var var_3 = ~(func_6(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), false)), abs(~vec3<u32>(u_input.d.x, global3.a, 14830u)), global2[_wgslsmith_index_u32(~u_input.a, 32u)]).a.a << (~u_input.e.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(947f, var_2.b.x, 262f)))), _wgslsmith_dot_vec2_i32(~((vec2<i32>(var_1.x, u_input.c.x) >> (u_input.e.xz % vec2<u32>(32u))) & u_input.c), u_input.c), _wgslsmith_add_u32(~firstTrailingBit(_wgslsmith_clamp_u32(1u, 4294967295u, 31070u)), ~1u), ~abs(-u_input.c.x), vec4<u32>(max(~(~global3.c), ~u_input.e.x >> (u_input.e.x % 32u)), var_2.c, ~firstLeadingBit(~u_input.b.x), u_input.d.x));
}

