struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: bool,
    d: i32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_4,
    d: Struct_4,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_1(904f, vec3<f32>(2015f, -494f, 884f), 2147483647i, 57032u), vec4<i32>(0i, -7792i, 17950i, 2147483647i), Struct_4(vec4<bool>(false, true, true, false), 9510i, vec2<i32>(14334i, 2147483647i), vec2<i32>(1i, 1i), -15212i), Struct_4(vec4<bool>(false, false, false, false), i32(-2147483648), vec2<i32>(-1i, -968i), vec2<i32>(2147483647i, 9479i), 1i), Struct_4(vec4<bool>(true, true, true, true), 0i, vec2<i32>(-82619i, 1i), vec2<i32>(1i, 2147483647i), 10204i));

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: bool = true;

var<private> global3: array<vec4<f32>, 10>;

var<private> global4: array<bool, 26> = array<bool, 26>(true, false, true, true, true, true, true, true, false, true, true, true, true, false, false, false, true, true, true, true, false, true, true, true, true, false);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec3<u32>) -> vec3<f32> {
    let var_0 = arg_1.e.x;
    let var_1 = -1i;
    global4 = array<bool, 26>();
    global1 = !arg_0.zy;
    global2 = !all(vec2<bool>(arg_2.x & true, true)) | global0.d.a.x;
    return arg_1.a;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3) -> f32 {
    var var_0 = global0.d.d.x;
    var var_1 = Struct_5(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1404f - 868f), -1000f), _wgslsmith_f_op_vec3_f32(func_3(select(vec4<bool>(true, global1.x, false, arg_0.c), !vec4<bool>(true, arg_1.b.x, true, true), true), arg_0, vec3<bool>(arg_1.b.x, any(global0.c.a.wz), !global0.e.a.x), ~u_input.a.wzx)), 0i, 34216u), global0.b, Struct_4(!global0.c.a, -2147483647i, -select(vec2<i32>(global0.d.c.x, global0.c.d.x), -global0.d.d, global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 24874u), 26u)]), ~global0.c.c, u_input.e), global0.c, Struct_4(arg_1.b, global0.d.b, ~vec2<i32>(global0.d.c.x >> (16676u % 32u), global0.b.x), global0.c.d, _wgslsmith_mod_i32(48591i, -select(-50056i, global0.a.c, true))));
    let var_2 = ~_wgslsmith_mod_i32(1088i, 302i);
    global0 = Struct_5(global0.a, global0.b, Struct_4(select(!vec4<bool>(true, arg_0.c, global1.x, false), global0.e.a, arg_0.c), _wgslsmith_dot_vec2_i32(var_1.b.ww, global0.c.d), vec2<i32>(-2147483647i, _wgslsmith_add_i32(min(6116i, arg_0.b), ~u_input.d)), _wgslsmith_div_vec2_i32(vec2<i32>(var_1.e.c.x, _wgslsmith_add_i32(-46780i, -1i)), var_1.d.c), firstLeadingBit(1i)), var_1.c, Struct_4(var_1.c.a, var_2, _wgslsmith_clamp_vec2_i32(~(var_1.b.yy << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u))), vec2<i32>(select(-22601i, -1155i, true), var_2), var_1.e.c), firstLeadingBit(var_1.c.c), min(var_1.d.c.x << (abs(0u) % 32u), var_2)));
    global1 = var_1.d.a.yx;
    return -1000f;
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(global0.a.b.yz, _wgslsmith_f_op_vec2_f32(-global0.a.b.zz), global0.c.a.x));
    let var_1 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + global0.a.b.x)) * _wgslsmith_f_op_f32(sign(-932f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(Struct_2(vec3<f32>(global0.a.a, -630f, global0.a.b.x), 0i, true, 49954i, u_input.a.yw), Struct_3(global0.a.b, global0.c.a))), var_0.x)) + _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.a.a)) * -1865f), 693f)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(func_2(Struct_2(vec3<f32>(-253f, _wgslsmith_f_op_f32(-global0.a.a), _wgslsmith_f_op_f32(step(var_0.x, var_1.x))), u_input.e, true, ~global0.c.d.x, u_input.a.zw), Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(global0.a.b)))), vec4<bool>(all(global0.c.a.wwz), false, u_input.d <= global0.b.x, 1i > u_input.e)))), global0.a.b, global0.e.d.x, 263u);
    var var_3 = Struct_3(vec3<f32>(global0.a.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.a.a * var_1.x))))), var_0.x), select(global0.d.a, vec4<bool>(all(vec2<bool>(true, global4[_wgslsmith_index_u32(global0.a.d, 26u)])) | (var_2.c >= var_2.c), global0.b.x <= 0i, true, !global1.x), select(vec4<bool>(any(global0.d.a.yyz), true, global0.d.a.x, !global0.c.a.x), !global0.d.a, global0.c.a)));
    global4 = array<bool, 26>();
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global0.a.b))), var_3.b);
}

fn func_4(arg_0: Struct_3) -> vec2<u32> {
    var var_0 = !func_1().b;
    global3 = array<vec4<f32>, 10>();
    let var_1 = global0.a.b.xx;
    let var_2 = -486f;
    global1 = select(global0.e.a.yy, func_1().b.zx, vec2<bool>(false, global0.e.a.x));
    return _wgslsmith_mod_vec2_u32(~(~_wgslsmith_add_vec2_u32(vec2<u32>(global0.a.d, global0.a.d), u_input.b.xz >> (vec2<u32>(0u, 5088u) % vec2<u32>(32u)))), u_input.b.yw ^ u_input.b.yw);
}

fn func_5(arg_0: Struct_2) -> u32 {
    global0 = Struct_5(global0.a, _wgslsmith_sub_vec4_i32(max(select(vec4<i32>(global0.e.c.x, arg_0.d, u_input.d, u_input.c), global0.b, vec4<bool>(arg_0.c, global1.x, true, arg_0.c)), global0.b), vec4<i32>(i32(-1i) * -40900i, select(i32(-1i) * -31637i, u_input.e, global1.x | true), select(_wgslsmith_dot_vec3_i32(vec3<i32>(-12921i, -31006i, arg_0.d), vec3<i32>(u_input.d, 21672i, arg_0.b)), countOneBits(arg_0.d), select(arg_0.c, true, false)), global0.b.x)), global0.c, global0.c, Struct_4(func_1().b, global0.b.x, global0.d.d, vec2<i32>(abs(_wgslsmith_clamp_i32(u_input.d, global0.c.d.x, 20820i)), firstLeadingBit(countOneBits(global0.c.d.x))), global0.e.c.x));
    var var_0 = true;
    global2 = min(u_input.c ^ select(global0.a.c | u_input.e, _wgslsmith_add_i32(u_input.d, 1i), true), (_wgslsmith_div_i32(18161i, 3344i) ^ arg_0.d) >> (18819u % 32u)) <= -2647i;
    var var_1 = !(!(_wgslsmith_mod_u32(~0u, global0.a.d) != ~4294967295u));
    var var_2 = firstLeadingBit(-vec2<i32>(min(~(-36321i), _wgslsmith_mod_i32(-27847i, 54474i)), u_input.e));
    return min(26168u, reverseBits(_wgslsmith_div_u32(func_4(func_1()).x, ~u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global4[_wgslsmith_index_u32(firstTrailingBit(func_5(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(875f, global0.a.a, 351f)), ~global0.a.c, any(global0.c.a), 1i, func_4(func_1())))), 26u)];
    let var_0 = ~(~(_wgslsmith_div_u32(~global0.a.d, ~1u) << (~(~u_input.a.x) % 32u)));
    global0 = Struct_5(global0.a, ~vec4<i32>(22962i, ~u_input.c, -(u_input.c << (47172u % 32u)), u_input.c), Struct_4(select(vec4<bool>(any(vec3<bool>(true, true, global4[_wgslsmith_index_u32(1u, 26u)])), global0.d.a.x, true, true), !vec4<bool>(global1.x, false, false, true), global1.x), -42084i, vec2<i32>(-40788i, global0.d.b), _wgslsmith_add_vec2_i32(global0.e.d, global0.e.d), -(-global0.e.e & global0.c.c.x)), global0.c, global0.e);
    let var_1 = 16501i;
    let var_2 = _wgslsmith_div_vec3_u32(~(~countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(1u, global0.a.d, 7477u)))), reverseBits(u_input.b.xxz) << (u_input.b.zxy % vec3<u32>(32u)));
    global4 = array<bool, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~(~vec2<u32>(var_0, u_input.a.x))), _wgslsmith_add_i32(~global0.c.d.x, 21933i));
}

