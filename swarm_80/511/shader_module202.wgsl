struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<bool>,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<vec3<u32>, 15> = array<vec3<u32>, 15>(vec3<u32>(26895u, 7633u, 1u), vec3<u32>(4294967295u, 1u, 31370u), vec3<u32>(4294967295u, 5118u, 34848u), vec3<u32>(1u, 23915u, 4294967295u), vec3<u32>(31335u, 29669u, 4294967295u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(1539u, 46584u, 4294967295u), vec3<u32>(11334u, 53840u, 4294967295u), vec3<u32>(7912u, 23449u, 102628u), vec3<u32>(4294967295u, 0u, 20041u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(25472u, 1u, 0u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(15553u, 1u, 4294967295u));

var<private> global2: array<bool, 26>;

var<private> global3: vec2<u32> = vec2<u32>(1u, 4294967295u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: bool) -> f32 {
    var var_0 = arg_0;
    global1 = array<vec3<u32>, 15>();
    var_0 = arg_0;
    global0 = u_input.a.x;
    let var_1 = ~countOneBits(~max(~vec4<u32>(88246u, global3.x, 0u, arg_1), ~vec4<u32>(arg_1, u_input.a.x, 46528u, 50499u)));
    return -305f;
}

fn func_2() -> Struct_2 {
    global0 = ~global3.x;
    let var_0 = firstTrailingBit(u_input.a);
    global3 = var_0.yz;
    global1 = array<vec3<u32>, 15>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(1013f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(855f * -412f), _wgslsmith_f_op_f32(-1111f * -158f)) - _wgslsmith_f_op_f32(f32(-1f) * -675f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-816f + _wgslsmith_f_op_f32(f32(-1f) * -302f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-498f)))))), _wgslsmith_f_op_f32(-269f - -965f));
    return Struct_2(Struct_1(var_1.x, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.b), 26u)], _wgslsmith_mod_vec3_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.x, u_input.c.x, u_input.c.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(11692u, global3.x, 3273u, u_input.a.x), vec4<u32>(u_input.a.x, var_0.x, var_0.x, u_input.e), vec4<u32>(u_input.a.x, var_0.x, 5308u, 0u))), 15u)], u_input.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -462f)), var_1.x))), Struct_1(-518f, true, _wgslsmith_div_vec3_u32(vec3<u32>(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, global3.x, var_0.x), vec3<u32>(var_0.x, 1u, 26898u)), var_0.x | 0u), max(~global1[_wgslsmith_index_u32(0u, 15u)], _wgslsmith_mod_vec3_u32(var_0, vec3<u32>(14334u, 57554u, 4294967295u)))), 551f), Struct_1(_wgslsmith_f_op_f32(func_3(u_input.d ^ 2147483647i, ~firstTrailingBit(u_input.c.x), global2[_wgslsmith_index_u32(select(_wgslsmith_dot_vec2_u32(var_0.yz, vec2<u32>(0u, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 1u, u_input.b), vec4<u32>(9898u, 1u, var_0.x, var_0.x)), global2[_wgslsmith_index_u32(countOneBits(1u), 26u)]), 26u)])), false, var_0, 1f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(181f))), var_1.x), var_1.xz)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) - _wgslsmith_f_op_f32(1183f * 190f)) + var_1.x), !(!global2[_wgslsmith_index_u32(firstTrailingBit(30710u), 26u)]), select(~global1[_wgslsmith_index_u32(2081u, 15u)], vec3<u32>(1u, ~6468u, _wgslsmith_dot_vec3_u32(var_0, vec3<u32>(2278u, 1u, var_0.x))), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 26u)] | true, global2[_wgslsmith_index_u32(4294967295u, 26u)], !global2[_wgslsmith_index_u32(0u, 26u)])), var_1.x));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: vec3<f32>) -> Struct_5 {
    var var_0 = arg_2;
    var var_1 = Struct_4(!arg_2.c.x, firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(~33335u, 4294967295u, ~0u, var_0.a.c.x), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.a.c.x, 4294967295u, var_0.a.c.x, 0u), vec4<u32>(var_0.b.c.c.x, 0u, 4294967295u, 0u))))), func_2(), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2082f, -905f)) * _wgslsmith_f_op_f32(-var_0.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a * _wgslsmith_div_f32(1386f, var_0.b.b.d)))));
    var var_2 = true;
    global3 = var_0.b.b.c.zy;
    global3 = ~(~arg_2.b.e.c.zz);
    return Struct_5(!(!var_0.c.zz), arg_1.xzz, var_0.b.b, Struct_3(arg_2.e.e, Struct_2(func_2().b, var_1.c.a, Struct_1(109f, arg_2.e.e.b && false, _wgslsmith_add_vec3_u32(var_0.b.e.c, var_0.b.e.c), _wgslsmith_div_f32(920f, 279f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 251f), arg_2.e.d)), _wgslsmith_div_vec2_f32(arg_2.b.d, vec2<f32>(-1203f, 734f))), func_2().c), select(!(!arg_2.c), select(select(var_0.c, vec3<bool>(global2[_wgslsmith_index_u32(arg_2.b.e.c.x, 26u)], global2[_wgslsmith_index_u32(41079u, 26u)], false), vec3<bool>(var_0.c.x, false, false)), !vec3<bool>(global2[_wgslsmith_index_u32(45635u, 26u)], false, var_1.c.a.b), true), !all(var_0.c.zy)), 37423i, func_2()));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, _wgslsmith_add_i32(68216i, u_input.d), _wgslsmith_clamp_i32(u_input.d, firstLeadingBit(u_input.d), u_input.d)), -vec3<i32>(u_input.d, u_input.d, 7033i));
    var var_1 = vec4<bool>(true, true, all(select(select(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 26u)], false), select(vec2<bool>(true, global2[_wgslsmith_index_u32(arg_0, 26u)]), vec2<bool>(global2[_wgslsmith_index_u32(global3.x, 26u)], true), global2[_wgslsmith_index_u32(u_input.b, 26u)]), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 26u)], true)), !(!vec2<bool>(true, global2[_wgslsmith_index_u32(29138u, 26u)])), !any(vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(arg_0, 26u)], global2[_wgslsmith_index_u32(u_input.e, 26u)])))), global2[_wgslsmith_index_u32(u_input.e, 26u)]);
    var_0 = _wgslsmith_add_vec3_i32(-vec3<i32>(firstTrailingBit(1i), _wgslsmith_mod_i32(var_0.x, -23276i), var_0.x), abs(~vec3<i32>(2147483647i, 0i, var_0.x))) ^ _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(var_0.x, -2237i, 36674i) | vec3<i32>(u_input.d, u_input.d, 0i)), -(~vec3<i32>(52576i, 1932i, -1i))), ~_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.d, u_input.d, u_input.d), ~vec3<i32>(-1667i, var_0.x, -4518i)));
    var var_2 = func_4(_wgslsmith_f_op_vec2_f32(-arg_1.xz), _wgslsmith_sub_vec4_i32(vec4<i32>(~min(u_input.d, 67400i), reverseBits(-2147483647i), var_0.x, ~_wgslsmith_sub_i32(19032i, u_input.d)), ~_wgslsmith_mult_vec4_i32(abs(vec4<i32>(14343i, var_0.x, -2147483647i, -1i)), ~vec4<i32>(1i, u_input.d, u_input.d, 10021i))), Struct_3(Struct_1(arg_1.x, any(var_1.wwz), ~firstTrailingBit(u_input.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x)))), func_2(), !select(var_1.wzw, vec3<bool>(false, true, true), var_1.xyz), var_0.x, Struct_2(func_2().b, func_2().c, func_2().c, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-487f, 389f))), Struct_1(_wgslsmith_f_op_f32(-arg_1.x), global2[_wgslsmith_index_u32(abs(12738u), 26u)], max(global1[_wgslsmith_index_u32(31639u, 15u)], global1[_wgslsmith_index_u32(62687u, 15u)]), arg_1.x))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-2084f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x * -337f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1.x, 852f), _wgslsmith_f_op_f32(arg_1.x - arg_1.x))))), arg_1.x));
    global1 = array<vec3<u32>, 15>();
    return func_4(_wgslsmith_f_op_vec2_f32(step(var_2.d.e.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2.d.e.d, vec2<f32>(var_2.c.d, -1285f), false)) + vec2<f32>(arg_1.x, -1655f)) * vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_f32(var_2.d.e.b.d, arg_1.x))))), vec4<i32>(min(firstLeadingBit(39321i), -(var_2.b.x << (var_2.d.b.a.c.x % 32u))), 13901i, 21529i, 18446i), var_2.d, arg_1).c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 26>();
    var var_0 = u_input.a.xy;
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1077f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -725f) + _wgslsmith_f_op_f32(-390f + 1870f))), -219f, -223f)));
    var var_2 = Struct_3(func_1(select(~var_0.x, global3.x, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x << (global3.x % 32u), ~global3.x), 26u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.zxw) - var_1.ywx)), func_4(var_1.yz, vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(1i, 0i)), vec2<i32>(u_input.d, 2147483647i)), -1i, firstLeadingBit(2147483647i), -(u_input.d ^ 5599i)), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1089f, 1000f), vec2<f32>(var_1.x, 334f)))), ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, -1i, u_input.d, u_input.d), vec4<i32>(u_input.d, 18541i, u_input.d, u_input.d)), func_4(var_1.wx, -vec4<i32>(-74679i, u_input.d, -2147483647i, u_input.d), Struct_3(Struct_1(var_1.x, global2[_wgslsmith_index_u32(5057u, 26u)], u_input.a, var_1.x), Struct_2(Struct_1(var_1.x, true, global1[_wgslsmith_index_u32(global3.x, 15u)], var_1.x), Struct_1(-1343f, false, global1[_wgslsmith_index_u32(4294967295u, 15u)], var_1.x), Struct_1(var_1.x, true, vec3<u32>(1494u, global3.x, global3.x), 395f), vec2<f32>(var_1.x, var_1.x), Struct_1(-1449f, global2[_wgslsmith_index_u32(var_0.x, 26u)], u_input.a, -952f)), vec3<bool>(true, false, false), -31358i, Struct_2(Struct_1(var_1.x, global2[_wgslsmith_index_u32(global3.x, 26u)], vec3<u32>(u_input.b, 40984u, 5878u), 1361f), Struct_1(-134f, true, global1[_wgslsmith_index_u32(u_input.c.x, 15u)], -710f), Struct_1(521f, global2[_wgslsmith_index_u32(global3.x, 26u)], global1[_wgslsmith_index_u32(46128u, 15u)], var_1.x), vec2<f32>(1796f, var_1.x), Struct_1(var_1.x, global2[_wgslsmith_index_u32(var_0.x, 26u)], global1[_wgslsmith_index_u32(u_input.e, 15u)], 1098f))), _wgslsmith_f_op_vec3_f32(var_1.yzy * vec3<f32>(var_1.x, var_1.x, -353f))).d, _wgslsmith_f_op_vec3_f32(vec3<f32>(-635f, var_1.x, var_1.x) - _wgslsmith_f_op_vec3_f32(abs(var_1.zwx)))).d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 350f, 1347f)) - var_1.xyw)).d.b, !vec3<bool>(all(!vec4<bool>(true, global2[_wgslsmith_index_u32(8180u, 26u)], true, global2[_wgslsmith_index_u32(0u, 26u)])), true, global2[_wgslsmith_index_u32(global3.x, 26u)]), _wgslsmith_dot_vec4_i32(select(~(-vec4<i32>(-42919i, u_input.d, u_input.d, u_input.d)), ~vec4<i32>(39721i, u_input.d, 1i, -1327i), !any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 26u)], true))), ~(-_wgslsmith_sub_vec4_i32(vec4<i32>(37579i, 36217i, u_input.d, -5145i), vec4<i32>(u_input.d, 36255i, u_input.d, u_input.d)))), func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.x, var_1.x))), vec2<f32>(399f, var_1.x))) * _wgslsmith_f_op_vec2_f32(-func_2().d)), abs(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(-44465i, u_input.d, 0i, u_input.d)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, 2147483647i, 12461i, -40651i), vec4<i32>(-12125i, 0i, u_input.d, 52674i)))), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.zw - var_1.xw)), vec4<i32>(-1i) * -vec4<i32>(u_input.d, u_input.d, u_input.d, 64392i), func_4(var_1.zy, vec4<i32>(u_input.d, u_input.d, -1i, u_input.d) & vec4<i32>(u_input.d, u_input.d, 1i, -15542i), func_4(vec2<f32>(var_1.x, var_1.x), vec4<i32>(-1i, u_input.d, u_input.d, 1i), Struct_3(Struct_1(1521f, global2[_wgslsmith_index_u32(75400u, 26u)], u_input.a, var_1.x), Struct_2(Struct_1(var_1.x, false, vec3<u32>(var_0.x, 1u, u_input.b), var_1.x), Struct_1(var_1.x, global2[_wgslsmith_index_u32(0u, 26u)], vec3<u32>(1u, 50431u, var_0.x), var_1.x), Struct_1(523f, true, vec3<u32>(var_0.x, 0u, 13682u), 1981f), var_1.yx, Struct_1(var_1.x, global2[_wgslsmith_index_u32(var_0.x, 26u)], vec3<u32>(0u, var_0.x, global3.x), var_1.x)), vec3<bool>(global2[_wgslsmith_index_u32(global3.x, 26u)], global2[_wgslsmith_index_u32(var_0.x, 26u)], global2[_wgslsmith_index_u32(20696u, 26u)]), u_input.d, Struct_2(Struct_1(var_1.x, global2[_wgslsmith_index_u32(4294967295u, 26u)], u_input.a, 974f), Struct_1(1059f, true, vec3<u32>(1u, var_0.x, 4294967295u), 571f), Struct_1(var_1.x, false, vec3<u32>(0u, var_0.x, 1u), -1517f), vec2<f32>(213f, var_1.x), Struct_1(var_1.x, false, global1[_wgslsmith_index_u32(0u, 15u)], var_1.x))), vec3<f32>(1000f, var_1.x, var_1.x)).d, _wgslsmith_f_op_vec3_f32(step(var_1.wyy, vec3<f32>(var_1.x, var_1.x, var_1.x)))).d, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_1.ywx), var_1.ywz))).d, var_1.xwx).d.b);
    let var_3 = _wgslsmith_div_u32(var_0.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(53781u, 1u, 527u, ~global3.x), vec4<u32>(func_1(4294967295u, _wgslsmith_f_op_vec3_f32(-var_1.xxy)).c.x, 0u, 1u, func_4(var_1.yy, vec4<i32>(var_2.d, -2147483647i, 0i, var_2.d), Struct_3(var_2.b.c, Struct_2(var_2.e.c, Struct_1(var_2.b.b.d, global2[_wgslsmith_index_u32(36289u, 26u)], u_input.a, 532f), var_2.b.c, vec2<f32>(-1061f, var_2.a.d), var_2.e.b), var_2.c, -4254i, Struct_2(Struct_1(458f, global2[_wgslsmith_index_u32(var_0.x, 26u)], u_input.a, 155f), Struct_1(var_2.b.d.x, var_2.c.x, vec3<u32>(u_input.c.x, global3.x, 0u), var_2.b.c.d), var_2.e.c, vec2<f32>(1134f, -1000f), Struct_1(var_2.e.c.d, false, u_input.a, 578f))), var_1.xwz).c.c.x & 28631u)));
    let var_4 = var_2.a.b || false;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, 8103i, 21072i, u_input.d), vec4<i32>(2147483647i, u_input.d, -1i, var_2.d), vec4<i32>(-42598i, 82004i, var_2.d, -1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(48912i, var_2.d, var_2.d, -1i), vec4<i32>(var_2.d, u_input.d, u_input.d, 1i))), ~vec4<i32>(2147483647i, var_2.d, -6094i, var_2.d)), vec4<i32>(1i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.d, var_2.d, u_input.d)), -vec3<i32>(8959i, u_input.d, u_input.d)), -22912i, 2147483647i)), 4294967295u, vec3<u32>(1u, u_input.a.x, reverseBits(var_3)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1) + var_1)));
}

