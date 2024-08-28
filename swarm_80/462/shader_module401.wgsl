struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec3<i32>,
    d: vec2<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 5> = array<vec2<bool>, 5>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global1: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false));

var<private> global2: array<i32, 26> = array<i32, 26>(1i, 37410i, 66758i, 1i, 1i, -30670i, -3295i, i32(-2147483648), 11394i, i32(-2147483648), -1821i, -8502i, 1i, -45063i, -363i, 2147483647i, 18611i, i32(-2147483648), -1i, 2693i, -54887i, 2147483647i, -48607i, 726i, 1i, 11552i);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    return -392f;
}

fn func_2() -> i32 {
    let var_0 = u_input.c.xyw;
    global1 = array<vec3<bool>, 24>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1779f, -1170f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-639f, 815f)), vec2<f32>(690f, 497f))))))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x);
    global2 = array<i32, 26>();
    return global2[_wgslsmith_index_u32(~u_input.b, 26u)];
}

fn func_3() -> i32 {
    global2 = array<i32, 26>();
    var var_0 = Struct_3(max(8465u, u_input.a.x), false, vec3<i32>(u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, func_2()), u_input.c.x), vec2<i32>(global2[_wgslsmith_index_u32(7090u, 26u)], -1i), Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1239f))), ~_wgslsmith_add_vec4_i32(~u_input.c, ~u_input.c)));
    global1 = array<vec3<bool>, 24>();
    global2 = array<i32, 26>();
    var var_1 = max(min(select(select(vec3<u32>(37059u, 89371u, 10210u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, var_0.a, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, var_0.a)), !global1[_wgslsmith_index_u32(u_input.b, 24u)]), ~abs(vec3<u32>(18637u, u_input.a.x, u_input.b)), vec3<bool>(true, any(global1[_wgslsmith_index_u32(u_input.a.x, 24u)]), any(vec2<bool>(true, false)))), countOneBits(~vec3<u32>(1u, u_input.b, var_0.a))), abs(vec3<u32>(4294967295u, firstLeadingBit(reverseBits(u_input.b)), 1436u << (~u_input.a.x % 32u))));
    return u_input.c.x >> (48645u % 32u);
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: vec3<f32>, arg_3: i32) -> u32 {
    var var_0 = Struct_3(max(u_input.a.x, ~_wgslsmith_mod_u32(~20146u, u_input.a.x)), false, _wgslsmith_mod_vec3_i32(vec3<i32>(~arg_1, ~arg_3, 1i) >> (max(vec3<u32>(u_input.a.x, 23175u, 4294967295u) << (vec3<u32>(0u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(u_input.a.x, 51847u, 0u))) % vec3<u32>(32u)), vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, -7939i, arg_0.x), arg_0.zwy), -_wgslsmith_mod_i32(-1i, arg_0.x), 1i)), countOneBits(-(~_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.x, global2[_wgslsmith_index_u32(1u, 26u)]), vec2<i32>(8331i, -69173i)))), Struct_2(-1854f, ((vec4<i32>(u_input.c.x, 1i, arg_0.x, u_input.c.x) | arg_0) ^ vec4<i32>(arg_1, arg_3, arg_0.x, 2147483647i)) | countOneBits(vec4<i32>(arg_1, arg_0.x, arg_0.x, -24008i))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(397f + arg_2.x), _wgslsmith_f_op_f32(func_1(_wgslsmith_sub_vec3_i32(u_input.c.xzx, firstLeadingBit(vec3<i32>(-27998i, -1i, arg_0.x))))))), -782f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.e.a)) - var_0.e.a), _wgslsmith_f_op_f32(f32(-1f) * -402f));
    var var_2 = ~u_input.a.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.a, _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -329f))), 1074f) * vec3<f32>(-2377f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(188f)), var_1.x), 1302f)), -1016f));
    let var_4 = var_0.a;
    return 1u;
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_3(~u_input.b, true, firstTrailingBit(vec3<i32>(~u_input.c.x, u_input.c.x, abs(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], u_input.c.x)))), vec2<i32>(countOneBits(1782i), ~u_input.c.x), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1122f - -168f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0), true))), vec4<i32>(~(-2147483647i), -29091i, _wgslsmith_dot_vec4_i32(~u_input.c, _wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(arg_2.x, global2[_wgslsmith_index_u32(u_input.b, 26u)], -2147483647i, arg_2.x))), -15054i)));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -985f) == var_0.e.a;
    var_1 = ((_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0, 1000f, var_0.b)), -175f) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), -242f))) && var_0.b) | true;
    var_1 = !any(!select(!vec4<bool>(true, var_0.b, var_0.b, true), vec4<bool>(true, var_0.b, var_0.b, var_0.b), select(vec4<bool>(false, true, true, var_0.b), vec4<bool>(var_0.b, true, false, false), var_0.b)));
    global1 = array<vec3<bool>, 24>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(arg_0, -1000f), arg_0, _wgslsmith_f_op_f32(arg_0 + var_0.e.a))))), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(~(abs(~u_input.a.x) | ~u_input.a.x), _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.a, u_input.a), u_input.a) & _wgslsmith_sub_u32(~(u_input.b >> (4294967295u % 32u)), u_input.b));
    var var_1 = u_input.c;
    let var_2 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<i32>(u_input.c.x, -15137i, 2147483647i))) + 1000f), 4294967295u, select(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(var_1.yw, vec2<i32>(-36359i, 2147483647i), u_input.c.zz), -u_input.c.wx), ~0i, func_2()), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, 0i, global2[_wgslsmith_index_u32(14869u, 26u)]), _wgslsmith_mod_vec3_i32(u_input.c.wzy, var_1.xwy)), -firstTrailingBit(u_input.c.ywy)), global1[_wgslsmith_index_u32(abs(func_4(u_input.c, func_3(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2301f, -1181f, 1781f)), abs(var_1.x))), 24u)]));
    global2 = array<i32, 26>();
    var var_3 = u_input.a.x;
    global0 = array<vec2<bool>, 5>();
    var var_4 = countOneBits(min(~(~_wgslsmith_div_u32(4294967295u, 50087u)), ~1u));
    var_3 = _wgslsmith_mod_u32(0u, ~var_0);
    let x = u_input.a;
    s_output = StorageBuffer(2936i, firstLeadingBit(vec2<u32>(4294967295u, 0u)));
}

