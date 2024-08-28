struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13>;

var<private> global1: array<vec3<u32>, 25> = array<vec3<u32>, 25>(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(20116u, 100709u, 69706u), vec3<u32>(13859u, 34869u, 1u), vec3<u32>(0u, 9528u, 22292u), vec3<u32>(38357u, 42407u, 30244u), vec3<u32>(4871u, 4294967295u, 84575u), vec3<u32>(90597u, 16834u, 93747u), vec3<u32>(1u, 86511u, 1u), vec3<u32>(60065u, 43085u, 57847u), vec3<u32>(1u, 15896u, 3868u), vec3<u32>(550u, 20139u, 78042u), vec3<u32>(4294967295u, 71003u, 0u), vec3<u32>(52658u, 2600u, 36164u), vec3<u32>(4294967295u, 37753u, 0u), vec3<u32>(34211u, 19641u, 28687u), vec3<u32>(1u, 1u, 5241u), vec3<u32>(38802u, 9985u, 7164u), vec3<u32>(0u, 0u, 25856u), vec3<u32>(1u, 32278u, 4294967295u), vec3<u32>(0u, 58645u, 4294967295u), vec3<u32>(127855u, 31807u, 1u), vec3<u32>(0u, 0u, 44162u), vec3<u32>(4294967295u, 32119u, 11924u), vec3<u32>(87345u, 32921u, 55343u));

var<private> global2: Struct_2 = Struct_2(0i, vec3<i32>(-1i, 54193i, i32(-2147483648)), -1i);

var<private> global3: vec4<u32> = vec4<u32>(1u, 17545u, 56059u, 39168u);

var<private> global4: bool = true;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: u32, arg_3: vec4<f32>) -> f32 {
    global1 = array<vec3<u32>, 25>();
    global0 = array<u32, 13>();
    global1 = array<vec3<u32>, 25>();
    global4 = arg_0.x;
    global4 = arg_0.x;
    return _wgslsmith_f_op_f32(select(arg_3.x, _wgslsmith_f_op_f32(f32(-1f) * -165f), arg_0.x));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-arg_0.x)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x * 214f)))) - 160f), Struct_2(select(i32(-1i) * -u_input.d.x, countOneBits(_wgslsmith_add_i32(17274i, global2.b.x)), true), global2.b & vec3<i32>(0i, ~26482i, 2147483647i), 2147483647i), global3.x ^ 4294967295u, vec4<bool>(all(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false)))), true, all(vec2<bool>(true, true)), true));
    let var_1 = var_0;
    global0 = array<u32, 13>();
    return abs(-_wgslsmith_div_i32(abs(34554i), reverseBits(-1495i))) & -_wgslsmith_mult_i32(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_div_i32(var_0.b.c, u_input.d.x)), -global2.b.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: vec2<bool>) -> f32 {
    global2 = Struct_2(-1i, _wgslsmith_div_vec3_i32(abs(global2.b) | _wgslsmith_add_vec3_i32(u_input.d, vec3<i32>(2423i, -465i, 30524i)), u_input.d), -global2.a);
    global0 = array<u32, 13>();
    var var_0 = u_input.b;
    global2 = Struct_2(reverseBits(1i), vec3<i32>(global2.c, global2.c << (46396u % 32u), 43308i), func_3(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-166f)))), 1056f)));
    var var_1 = u_input.c.xzx;
    return -501f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -570f) * _wgslsmith_f_op_f32(func_1(vec4<bool>(false, true, false, false), vec4<u32>(23377u, global0[_wgslsmith_index_u32(4294967295u, 13u)], 52783u, 14162u), global0[_wgslsmith_index_u32(1u, 13u)], vec4<f32>(202f, 396f, -2357f, 1092f)))) - _wgslsmith_f_op_f32(func_2(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec2<bool>(false, false)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-692f, 1283f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(241f - 673f)))), 1f));
    let var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d.x, 2147483647i, 31466i, u_input.d.x), abs(vec4<i32>(2147483647i, u_input.d.x, global2.a, 0i))) & abs(i32(-1i) * -16075i), 44016i, ~14834i, _wgslsmith_dot_vec2_i32(~(-vec2<i32>(21762i, global2.a)), vec2<i32>(11044i, abs(u_input.a)))), vec4<i32>(2147483647i ^ global2.b.x, func_3(vec2<f32>(_wgslsmith_f_op_f32(max(1166f, var_0.x)), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_sub_i32(firstTrailingBit(0i), abs(u_input.a << (u_input.e.x % 32u))), 0i & u_input.a));
    global3 = _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(28965u, u_input.c.x | global3.x, ~0u, u_input.c.x), ~(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], 0u, global3.x, u_input.c.x) & (vec4<u32>(u_input.c.x, 1u, global3.x, 4427u) >> (u_input.c % vec4<u32>(32u)))), _wgslsmith_mod_vec4_u32(~select(vec4<u32>(global3.x, global0[_wgslsmith_index_u32(global3.x, 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.x, 13u)], 13u)], 17344u), vec4<u32>(u_input.e.x, global3.x, u_input.e.x, global3.x), true), abs(u_input.b))), abs(min((u_input.c ^ vec4<u32>(80890u, global3.x, u_input.e.x, 1u)) >> (~u_input.c % vec4<u32>(32u)), u_input.b)));
    var var_2 = Struct_2(_wgslsmith_sub_i32(-(i32(-1i) * -1788i), _wgslsmith_clamp_i32(-global2.c, countOneBits(-var_1.x), _wgslsmith_mod_i32(_wgslsmith_div_i32(var_1.x, -7952i), -77736i))), u_input.d, ~var_1.x);
    global3 = vec4<u32>(global3.x, global0[_wgslsmith_index_u32(global3.x, 13u)], firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1u, 13u)], 18743u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 13u)], 4294967295u, min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9699u, 13u)], 13u)], 4294967295u)), _wgslsmith_mod_vec4_u32(max(u_input.b, u_input.c), u_input.b))), _wgslsmith_mod_u32(~global3.x, _wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, global3.x), 24663u)) ^ 5469u);
    var var_3 = select(vec4<bool>((-u_input.d.x < ~(-61723i)) && true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-var_0.x)) < var_0.x, !all(vec2<bool>(false, true)), !all(vec4<bool>(true, true, true, true))), vec4<bool>(all(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), var_0.x == 1033f)), true, true, true), any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(all(vec4<bool>(true, false, false, false)), true), all(vec2<bool>(true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, ~(~_wgslsmith_mod_vec2_u32(global3.ww, countOneBits(vec2<u32>(5324u, 4294967295u)))), 1145f, 1770f, _wgslsmith_clamp_vec3_u32(global1[_wgslsmith_index_u32(~global3.x, 25u)], max(global3.yzy >> (global1[_wgslsmith_index_u32(0u, 25u)] % vec3<u32>(32u)), u_input.e.xzy), u_input.e.yww));
}

