struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false));

var<private> global2: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global3: Struct_3 = Struct_3(Struct_2(4294967295u, false, Struct_1(vec3<f32>(-1543f, 201f, -257f), 23647i, vec4<u32>(62360u, 1u, 4294967295u, 1u), vec3<u32>(7359u, 0u, 38427u)), vec2<u32>(29543u, 4294967295u), Struct_1(vec3<f32>(695f, -711f, -1009f), -52151i, vec4<u32>(4294967295u, 0u, 44405u, 1u), vec3<u32>(1u, 1u, 4294967295u))), 47921u, Struct_1(vec3<f32>(324f, -686f, -327f), -1i, vec4<u32>(51782u, 15442u, 4294967295u, 9848u), vec3<u32>(34495u, 47933u, 1460u)), Struct_1(vec3<f32>(251f, 135f, -994f), 63759i, vec4<u32>(55725u, 2023u, 11184u, 76510u), vec3<u32>(70108u, 1u, 60439u)));

var<private> global4: Struct_4;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: u32) -> f32 {
    var var_0 = vec4<f32>(158f, -317f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1389f))) * global3.d.a.x), arg_1.x);
    global2 = global1[_wgslsmith_index_u32(firstLeadingBit(~countOneBits(firstTrailingBit(71269u)) | arg_0), 5u)];
    var var_1 = any(global2.xyw);
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(863f * -894f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global4.c.c.a.x))), -512f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(259f + 896f), _wgslsmith_f_op_f32(sign(-545f))) * 656f)));
    let var_2 = 0u;
    return 2373f;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>) -> bool {
    global1 = array<vec4<bool>, 5>();
    var var_0 = true;
    var var_1 = Struct_4(vec2<bool>(global3.a.b, global4.c.d.b > (i32(-1i) * -1754i)), _wgslsmith_mult_vec3_i32(vec3<i32>(global4.b.x, u_input.a, 1i), firstTrailingBit(global4.b)), Struct_3(Struct_2(global4.c.b, arg_2.x, global3.d, vec2<u32>(~42852u, global3.c.c.x), Struct_1(vec3<f32>(147f, global3.a.c.a.x, arg_0.a.x), global3.c.b, global3.a.c.c, ~global3.a.e.c.wzx)), 104494u, Struct_1(arg_0.a, -18582i, arg_0.c, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 69065u, arg_0.d.x), _wgslsmith_mod_vec3_u32(vec3<u32>(global3.c.d.x, 4294967295u, 71981u), global3.c.c.wyy))), arg_0));
    let var_2 = _wgslsmith_f_op_f32(func_3(~(~abs(~u_input.b)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), -1304f) - vec2<f32>(_wgslsmith_f_op_f32(step(1265f, 901f)), -515f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-513f, global3.d.a.x) * vec2<f32>(global3.c.a.x, 273f))))), var_1.c.c.d.x));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-843f + -1728f), _wgslsmith_div_f32(var_1.c.d.a.x, 1000f)))))) - var_1.c.a.c.a.x);
    return all(select(!(!vec3<bool>(false, arg_2.x, global4.c.a.b)), !vec3<bool>(true, any(arg_2.xx), any(arg_2.xwy)), false));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: vec4<f32>, arg_3: u32) -> vec4<i32> {
    let var_0 = _wgslsmith_add_vec2_u32(global4.c.d.c.zx, ~max(global4.c.a.e.c.xz, global3.d.c.ww));
    global1 = array<vec4<bool>, 5>();
    var var_1 = select(global1[_wgslsmith_index_u32(arg_3, 5u)], vec4<bool>(global2.x, all(global1[_wgslsmith_index_u32(14469u, 5u)]), true, func_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, global4.c.c.a.x, 712f) + vec3<f32>(global4.c.c.a.x, -357f, global3.a.c.a.x)), -29003i, ~vec4<u32>(u_input.b, 20830u, arg_3, u_input.b), vec3<u32>(51235u, 1u, 1521u)), !select(global4.c.a.b, global2.x, true), !select(global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(1u, 5u)], vec4<bool>(global4.c.a.b, global3.a.b, global2.x, global2.x)))), select(!global1[_wgslsmith_index_u32(~231u, 5u)], !vec4<bool>(true, false, true, all(vec3<bool>(true, true, false))), global4.a.x));
    var var_2 = vec4<u32>(~u_input.b, 35052u, max(0u, _wgslsmith_mult_u32(u_input.b, _wgslsmith_sub_u32(1u, global4.c.c.d.x))) & u_input.b, select(0u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(arg_0, _wgslsmith_sub_vec3_u32(vec3<u32>(42217u, 23299u, global3.a.c.c.x), global4.c.d.c.zzx)), firstTrailingBit(arg_0.x)), global2.x));
    let var_3 = reverseBits(global4.c.c.c.yy);
    return vec4<i32>(~u_input.c, global4.c.d.b, 0i | _wgslsmith_div_i32(_wgslsmith_div_i32(66995i, global0.x ^ 7675i), abs(global3.a.c.b) | -21496i), global3.c.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(abs(vec3<u32>(~_wgslsmith_sub_u32(50990u, global3.d.d.x), 19150u, global4.c.c.c.x)), -1000f, vec4<f32>(554f, global4.c.a.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c.d.a.x * 414f)), _wgslsmith_f_op_f32(-global4.c.c.a.x)), 1u);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2003f + _wgslsmith_f_op_f32(-global3.a.c.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -164f)), -373f, global3.b <= global4.c.d.c.x)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(global3.c.a + _wgslsmith_div_vec3_f32(global3.c.a, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(275f, global3.a.e.a.x, global3.d.a.x) - global3.d.a), global4.c.d.a)))), -706i, (_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global3.d.d.x, global4.c.a.d.x, global3.c.d.x, global4.c.b), vec4<u32>(u_input.b, u_input.b, global3.c.d.x, u_input.b)), vec4<u32>(1u, 4294967295u, 4294967295u, 1u)) & global3.d.c) & _wgslsmith_add_vec4_u32(global4.c.a.c.c, vec4<u32>(global3.d.d.x, global4.c.a.a, _wgslsmith_clamp_u32(global4.c.a.e.d.x, global3.a.a, 75824u), global4.c.a.c.d.x)), max(global3.d.d, max(~vec3<u32>(12779u, u_input.b, u_input.b), global3.d.c.zww)) | ~(~global4.c.a.c.c.yxy ^ ~global4.c.a.e.d));
    var_0 = -1001f;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-500f, 1000f, global4.c.c.a.x, 1001f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, 959f))), vec4<f32>(global3.a.c.a.x, 111f, -163f, var_1.a.x)))), true));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.yzz)));
    global0 = vec4<i32>(global4.c.c.b, firstTrailingBit(global3.a.e.b | ~u_input.c), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(global0.wyx, max(vec3<i32>(var_1.b, 8268i, -41314i), vec3<i32>(32966i, var_1.b, -7920i))), -select(vec3<i32>(1i, u_input.a, global0.x), global0.wxz, global2.wzz)), 26520i) & select(_wgslsmith_sub_vec4_i32(-select(vec4<i32>(1i, 5882i, global3.d.b, -11186i), vec4<i32>(17807i, 41841i, global0.x, global4.c.d.b), vec4<bool>(false, true, global4.c.a.b, true)), -vec4<i32>(var_1.b, -1608i, 0i, -1i)), min(func_1(global3.a.e.d, _wgslsmith_div_f32(1051f, var_2.x), vec4<f32>(global3.a.e.a.x, -2293f, global3.a.c.a.x, -1087f), max(39758u, 1u)), func_1(global3.d.d, -1000f, vec4<f32>(var_1.a.x, global4.c.d.a.x, var_2.x, var_3.x), 0u) & (vec4<i32>(23021i, global3.d.b, u_input.c, 35736i) | vec4<i32>(global0.x, -1i, 0i, -1i))), !all(select(global4.a, global4.a, global2.x)));
    global3 = Struct_3(Struct_2(~_wgslsmith_dot_vec3_u32(~vec3<u32>(global4.c.a.e.d.x, 4294967295u, u_input.b), _wgslsmith_sub_vec3_u32(var_1.c.zwx, global3.d.d)), !global4.a.x, var_1, ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.d.x, 71370u), global3.a.d), var_1), ~global4.c.c.d.x, global3.d, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.x, var_1.a.x, var_3.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 1124f, -143f) + vec3<f32>(117f, -194f, var_1.a.x)))) * _wgslsmith_f_op_vec3_f32(-global3.c.a)), u_input.a, select(vec4<u32>(78971u, u_input.b, global4.c.a.a, global4.c.b) & vec4<u32>(4263u, 4294967295u, 11980u, 0u), var_1.c ^ _wgslsmith_clamp_vec4_u32(global3.c.c, vec4<u32>(81369u, global4.c.a.d.x, 4294967295u, u_input.b), var_1.c), select(vec4<bool>(false, global2.x, false, false), vec4<bool>(false, global2.x, false, false), global0.x > 0i)), abs(vec3<u32>(~14146u, var_1.d.x, reverseBits(1u)))));
    global1 = array<vec4<bool>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(global3.a.e.d.yz, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global4.c.c.a))), _wgslsmith_f_op_f32(-635f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1222f + var_2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.a.x + 1f)))));
}

