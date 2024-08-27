struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 10166u), vec2<u32>(0u, 50112u), vec2<u32>(67065u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(105428u, 36996u), vec2<u32>(0u, 61811u), vec2<u32>(4294967295u, 1u), vec2<u32>(64441u, 6411u), vec2<u32>(20784u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(23155u, 0u), vec2<u32>(31370u, 28253u), vec2<u32>(9603u, 15203u), vec2<u32>(1u, 4294967295u));

var<private> global2: array<u32, 20>;

var<private> global3: vec3<bool> = vec3<bool>(false, true, true);

var<private> global4: array<i32, 27>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec3<u32>) -> f32 {
    global2 = array<u32, 20>();
    global3 = !global0.xzy;
    global2 = array<u32, 20>();
    global1 = array<vec2<u32>, 17>();
    var var_0 = Struct_3(~(~min(abs(9379i), -16113i)), _wgslsmith_f_op_f32(ceil(-1576f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(367f, -421f, 1475f, -868f) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, 436f, 729f, arg_0)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(1099f * arg_0), arg_0))), Struct_2(Struct_1(-vec4<i32>(-1i, u_input.a, 0i, 2147483647i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, 1000f, 223f, arg_0), vec4<f32>(-1510f, arg_0, -669f, 2406f))) - vec4<f32>(221f, arg_0, arg_0, 823f))), Struct_1(~_wgslsmith_div_vec4_i32(vec4<i32>(-30775i, u_input.c.x, u_input.c.x, 36045i), vec4<i32>(u_input.c.x, 0i, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 20u)], 20u)], 27u)], global4[_wgslsmith_index_u32(9192u, 27u)])), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -660f, 116f, -851f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1348f, arg_0, -1668f, 734f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1011f, 460f, -331f, 1481f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, arg_0) + vec4<f32>(-644f, arg_0, -599f, arg_0))))));
    return _wgslsmith_f_op_f32(abs(1138f));
}

fn func_2() -> vec3<u32> {
    let var_0 = Struct_2(Struct_1(select(u_input.c, firstTrailingBit(vec4<i32>(global4[_wgslsmith_index_u32(0u, 27u)], 2147483647i, -35256i, global4[_wgslsmith_index_u32(4294967295u, 27u)])), !global3.x) & (u_input.c << (firstTrailingBit(vec4<u32>(0u, 0u, 4294967295u, 4294967295u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(153f, 272f, -731f, -1430f)))))), Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(global4[_wgslsmith_index_u32(1u, 27u)], u_input.a, 0i, 0i)), countOneBits(vec4<i32>(u_input.c.x, global4[_wgslsmith_index_u32(1u, 27u)], global4[_wgslsmith_index_u32(u_input.d.x, 27u)], global4[_wgslsmith_index_u32(u_input.b.x, 27u)]))) & ~max(u_input.c, vec4<i32>(u_input.c.x, u_input.a, -1i, -1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-490f, -2106f, 932f, 1000f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1342f, -1000f, -700f) + vec4<f32>(-1459f, -335f, -1000f, 172f))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(1051f, u_input.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(813f, 1882f))), -207f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * 1302f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1389f, -488f, _wgslsmith_f_op_f32(f32(-1f) * -1092f)))));
    global1 = array<vec2<u32>, 17>();
    global2 = array<u32, 20>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.b.x, var_0.b.b.x, 1658f), vec3<f32>(764f, var_0.c.x, var_0.c.x), vec3<bool>(global0.x, false, false))))), var_0.c.wyz)) * vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(var_0.c.x, u_input.d ^ vec3<u32>(39148u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 20u)], 20u)], global2[_wgslsmith_index_u32(u_input.d.x, 20u)]))), var_0.a.b.x)), 801f, -542f));
    global2 = array<u32, 20>();
    return select(u_input.d, select(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(95573u, 20592u, 4294967295u), vec3<u32>(4294967295u, u_input.b.x, 21015u), u_input.d), u_input.d ^ u_input.d), reverseBits(u_input.d), global0.x), any(vec4<bool>(global3.x | global3.x, false, !global3.x, true))) << ((~(~select(u_input.d, vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27113u, 20u)], 20u)], global2[_wgslsmith_index_u32(u_input.d.x, 20u)], 1u), global3.x)) ^ vec3<u32>(_wgslsmith_mult_u32(u_input.d.x, _wgslsmith_sub_u32(u_input.d.x, global2[_wgslsmith_index_u32(u_input.b.x, 20u)])), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~select(global2[_wgslsmith_index_u32(50464u, 20u)], u_input.b.x, global0.x), 20u)], 20u)], _wgslsmith_add_u32(57736u, u_input.b.x))) % vec3<u32>(32u));
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_3) -> Struct_5 {
    global0 = vec4<bool>(all(!select(vec3<bool>(global3.x, global3.x, global3.x), select(vec3<bool>(true, true, global3.x), global0.yzy, global0.x), !vec3<bool>(arg_1, arg_1, global3.x))), true, true, global3.x || true);
    let var_0 = -44002i;
    global0 = vec4<bool>(any(!global0.yzw), global0.x, select((-arg_3.a ^ ~1i) > firstLeadingBit(-1i), false, select(any(select(global0.yyy, vec3<bool>(true, true, false), global0.zyw)), all(select(vec4<bool>(true, global3.x, true, global0.x), vec4<bool>(global0.x, global3.x, true, global0.x), vec4<bool>(global0.x, arg_1, true, global0.x))), global0.x)), true);
    let var_1 = 6527u;
    global4 = array<i32, 27>();
    return Struct_5(u_input.d, _wgslsmith_clamp_vec3_i32(arg_3.d.b.a.yyx, select(_wgslsmith_div_vec3_i32(u_input.c.yxy, select(vec3<i32>(global4[_wgslsmith_index_u32(u_input.d.x, 27u)], -2147483647i, -1i), arg_3.d.a.a.yzy, global0.xxy)), u_input.c.xyy >> (arg_0 % vec3<u32>(32u)), vec3<bool>(true, true, arg_1)), ~(vec3<i32>(global4[_wgslsmith_index_u32(24010u, 27u)], 11712i, global4[_wgslsmith_index_u32(var_1, 27u)]) << (u_input.d % vec3<u32>(32u)))), arg_3.d.b.b.x);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_5 {
    global4 = array<i32, 27>();
    var var_0 = arg_0;
    global1 = array<vec2<u32>, 17>();
    let var_1 = Struct_2(arg_0.a, Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(arg_0.a.a.yyz, u_input.c.yxz), ~arg_0.a.a.zxx), _wgslsmith_div_i32(~arg_1.x, var_0.b.a.x & global4[_wgslsmith_index_u32(20396u, 27u)]), _wgslsmith_sub_i32(u_input.a, 0i) ^ 0i, -26716i), var_0.c), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(159f - 2289f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.c.x, arg_0.b.b.x)))), var_0.b.b.x, 361f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(296f - arg_0.a.b.x))) - _wgslsmith_f_op_f32(354f * arg_0.a.b.x))));
    global1 = array<vec2<u32>, 17>();
    return func_4(func_2(), global3.x, global1[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, global2[_wgslsmith_index_u32(42545u, 20u)]) & u_input.b.x, 20u)], 20u)], 0u), firstLeadingBit(u_input.b.x)), 17u)], Struct_3(~(~(-arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c.x, -1364f) - _wgslsmith_f_op_f32(ceil(var_0.a.b.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(-484f, 160f), _wgslsmith_f_op_f32(528f + 1118f), var_1.b.b.x, arg_0.a.b.x), var_1.c, vec4<bool>(false, true, true, !global0.x))), Struct_2(var_0.a, arg_0.a, var_0.c)));
}

fn func_5(arg_0: Struct_5, arg_1: f32, arg_2: vec2<u32>) -> vec2<i32> {
    let var_0 = Struct_2(Struct_1(max(u_input.c, -select(u_input.c, u_input.c, vec4<bool>(false, global3.x, false, global3.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1 * -261f), _wgslsmith_div_f32(-1213f, arg_0.c), _wgslsmith_f_op_f32(ceil(334f)), 743f))), Struct_1(countOneBits(vec4<i32>(_wgslsmith_clamp_i32(37146i, global4[_wgslsmith_index_u32(u_input.d.x, 27u)], 2147483647i), global4[_wgslsmith_index_u32(arg_0.a.x & u_input.b.x, 27u)], 1i, firstTrailingBit(u_input.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1815f, arg_1, -849f, -861f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_0.c, arg_1))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), arg_1, arg_1), vec4<f32>(arg_1, -580f, -557f, arg_0.c))));
    let var_1 = Struct_3(~(27926i & arg_0.b.x), 345f, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1156f + 691f) + -750f), _wgslsmith_f_op_f32(1051f * arg_0.c), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(473f + -147f)))), var_0);
    let var_2 = true;
    let var_3 = !vec3<bool>(global3.x == select(true, 0u == global2[_wgslsmith_index_u32(7032u, 20u)], false), any(vec2<bool>(any(vec4<bool>(var_2, global0.x, true, true)), true)), true);
    global3 = global0.zyx;
    return arg_0.b.yy;
}

fn func_6(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_4) -> vec4<bool> {
    let var_0 = arg_3;
    var var_1 = ~abs(~vec4<u32>(min(global2[_wgslsmith_index_u32(u_input.b.x, 20u)], 0u), func_2().x, func_1(Struct_2(Struct_1(u_input.c, vec4<f32>(var_0.b.c.x, arg_3.a.x, -2045f, -360f)), Struct_1(vec4<i32>(arg_0.x, var_0.b.a.a.x, arg_3.b.a.a.x, -61204i), arg_3.a), vec4<f32>(-246f, arg_3.a.x, arg_3.b.c.x, 1202f)), vec3<i32>(arg_3.b.b.a.x, 2147483647i, var_0.b.a.a.x)).a.x, global2[_wgslsmith_index_u32(arg_1.x | arg_1.x, 20u)]));
    var var_2 = ~(~global1[_wgslsmith_index_u32(var_1.x, 17u)]);
    global2 = array<u32, 20>();
    return select(!vec4<bool>(global0.x, global0.x, global0.x, any(select(vec4<bool>(false, false, false, global3.x), vec4<bool>(global0.x, global0.x, global3.x, global0.x), vec4<bool>(global3.x, global3.x, true, true)))), select(select(!select(vec4<bool>(global3.x, true, global3.x, global3.x), vec4<bool>(global0.x, true, global3.x, global0.x), vec4<bool>(false, global0.x, global3.x, false)), !vec4<bool>(global0.x, true, false, global3.x), select(select(vec4<bool>(global3.x, global3.x, global0.x, true), vec4<bool>(global3.x, false, global3.x, global0.x), global3.x), select(vec4<bool>(false, global3.x, global0.x, global3.x), vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(false, true, global0.x, global0.x)), vec4<bool>(true, global0.x, global0.x, global3.x))), vec4<bool>(global3.x, true, !global0.x | any(vec4<bool>(global3.x, global0.x, true, true)), true), any(vec2<bool>(global0.x, false))), !(!vec4<bool>(1u >= arg_1.x, any(vec4<bool>(true, global0.x, true, global3.x)), false, all(vec4<bool>(true, true, global3.x, global0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(func_6(select(u_input.c.zw, func_5(func_1(Struct_2(Struct_1(vec4<i32>(u_input.c.x, global4[_wgslsmith_index_u32(4294967295u, 27u)], u_input.a, global4[_wgslsmith_index_u32(u_input.d.x, 27u)]), vec4<f32>(635f, -1512f, 105f, -1000f)), Struct_1(u_input.c, vec4<f32>(984f, -1768f, -276f, -1132f)), vec4<f32>(1810f, 728f, -1963f, 1909f)), u_input.c.zwx), -379f, _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.d.x), vec2<u32>(u_input.d.x, global2[_wgslsmith_index_u32(u_input.d.x, 20u)]))), vec2<bool>(!global0.x, global3.x && false)), firstTrailingBit(u_input.d), -1000f, Struct_4(vec4<f32>(470f, -516f, _wgslsmith_f_op_f32(-387f + 176f), -603f), Struct_2(Struct_1(u_input.c, vec4<f32>(2059f, 592f, 792f, -336f)), Struct_1(u_input.c, vec4<f32>(-1486f, 282f, 1285f, -498f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-809f, 828f, 1000f, 1036f), vec4<f32>(658f, -1975f, -963f, 700f)))))));
    var_0 = true;
    global3 = select(global0.yxy, global0.zyw, any(!vec4<bool>(true, global0.x, global0.x, global0.x)) | global0.x);
    let var_1 = select(7111u, global2[_wgslsmith_index_u32(u_input.d.x, 20u)], !(!global3.x));
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(733f * -1628f), _wgslsmith_div_f32(-1030f, -312f), 1974f, func_4(vec3<u32>(26816u, 19301u, var_1), false, u_input.d.yy, Struct_3(-18458i, -227f, vec4<f32>(1783f, -188f, 390f, 1466f), Struct_2(Struct_1(vec4<i32>(global4[_wgslsmith_index_u32(65253u, 27u)], 0i, 7586i, 2147483647i), vec4<f32>(584f, 437f, 821f, -1000f)), Struct_1(u_input.c, vec4<f32>(-508f, -1688f, -199f, 763f)), vec4<f32>(-1000f, -640f, -863f, -1000f)))).c))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -617f), -336f, _wgslsmith_f_op_f32(select(845f, 833f, false)), _wgslsmith_f_op_f32(463f - 1689f))))), Struct_2(Struct_1(u_input.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(-923f, -425f, 299f, -1141f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1675f, -1085f, -633f, 1458f) + vec4<f32>(-542f, -1125f, 1215f, -1463f)))), Struct_1(_wgslsmith_sub_vec4_i32(u_input.c, u_input.c), vec4<f32>(-1621f, -958f, _wgslsmith_f_op_f32(624f * 325f), -1000f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(836f, -496f, -1000f, -295f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(271f, 545f, 1813f, 1030f)), vec4<f32>(-204f, -524f, -1138f, -1181f), !vec4<bool>(true, global3.x, global0.x, true))))));
    global3 = global0.xwx;
    var var_3 = vec2<i32>(-u_input.a, -(_wgslsmith_mult_i32(func_5(Struct_5(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], 0u, 4294967295u), var_2.b.a.a.zxz, var_2.b.a.b.x), -856f, global1[_wgslsmith_index_u32(5133u, 17u)]).x, -43397i) & firstLeadingBit(2147483647i)));
    var var_4 = Struct_4(var_2.b.a.b, Struct_2(Struct_1(_wgslsmith_mult_vec4_i32(~vec4<i32>(var_3.x, 2147483647i, u_input.c.x, var_3.x), -u_input.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.b.c.x, var_2.b.a.b.x, 1560f, var_2.b.a.b.x), var_2.b.a.b, vec4<bool>(false, false, global0.x, true))))), Struct_1(firstTrailingBit(vec4<i32>(-4515i, -4347i, u_input.a, -22846i)), vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.c.x), _wgslsmith_f_op_f32(var_2.a.x * -1339f), _wgslsmith_f_op_f32(-var_2.a.x), func_4(vec3<u32>(var_1, u_input.d.x, global2[_wgslsmith_index_u32(4294967295u, 20u)]), true, u_input.d.yx, Struct_3(1i, var_2.b.a.b.x, var_2.b.a.b, var_2.b)).c)), _wgslsmith_f_op_vec4_f32(var_2.b.a.b - _wgslsmith_f_op_vec4_f32(var_2.a + vec4<f32>(var_2.b.c.x, 995f, var_2.a.x, var_2.b.a.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(_wgslsmith_sub_i32(func_4(vec3<u32>(u_input.d.x, 0u, 26034u), true, global1[_wgslsmith_index_u32(39237u, 17u)], Struct_3(global4[_wgslsmith_index_u32(13079u, 27u)], var_4.b.b.b.x, vec4<f32>(159f, var_4.a.x, var_2.b.a.b.x, var_2.a.x), Struct_2(Struct_1(vec4<i32>(var_2.b.a.a.x, 52472i, u_input.c.x, -52682i), var_4.a), Struct_1(var_2.b.b.a, var_4.b.a.b), vec4<f32>(var_4.a.x, 1289f, -477f, var_2.a.x)))).b.x, -17202i), -select(-1i, var_3.x, global0.x)));
}

