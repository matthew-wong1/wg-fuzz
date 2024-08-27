struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<u32>, 9>;

var<private> global2: f32;

var<private> global3: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(2147483647i, vec2<i32>(1i, -13897i), 96703u, true, vec4<i32>(-36394i, 9500i, 0i, -1i)), Struct_1(i32(-2147483648), vec2<i32>(-1i, -4358i), 4294967295u, true, vec4<i32>(1i, -60722i, 1i, i32(-2147483648))));

var<private> global4: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> u32 {
    let var_0 = !select(!vec2<bool>(all(vec2<bool>(true, true)), true), vec2<bool>(true, true), !select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true)));
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u & _wgslsmith_add_u32(firstTrailingBit(~1u), ~_wgslsmith_div_u32(43405u, 4294967295u)), _wgslsmith_div_u32(21294u, ~u_input.b)), 2u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(982f, -638f, -379f))))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1362f - 1000f), 1000f, all(vec3<bool>(false, var_1.d, var_1.d)))))), 1f, _wgslsmith_f_op_f32(-1000f - -499f)), var_1.d));
    let var_3 = Struct_3(Struct_1(-20282i, vec2<i32>(~(-u_input.a), -arg_0), 56622u, true, var_1.e), !var_0.x, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.x, var_2.x))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-287f, var_2.x) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 1441f) + vec2<f32>(var_2.x, var_2.x))), var_1.d && false)))));
    var var_4 = Struct_2(_wgslsmith_clamp_vec3_i32(-_wgslsmith_div_vec3_i32(var_3.a.e.yzy, var_1.e.xwx), firstLeadingBit(arg_1), vec3<i32>(arg_1.x, arg_1.x, 2147483647i) >> (~vec3<u32>(var_1.c, var_3.a.c, 1u) % vec3<u32>(32u))) << (vec3<u32>(_wgslsmith_mult_u32(var_3.a.c, 1u), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, 12449u, 4294967295u)), ~vec3<u32>(4294967295u, var_3.a.c, var_1.c)), var_3.a.c) % vec3<u32>(32u)));
    return _wgslsmith_add_u32(14605u, firstTrailingBit(_wgslsmith_add_u32(~u_input.b << (~u_input.b % 32u), 1u)));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> Struct_4 {
    global4 = false;
    let var_0 = _wgslsmith_clamp_u32(firstTrailingBit(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, u_input.b, 4294967295u), vec3<u32>(u_input.b, arg_2, arg_2)) << (1750u % 32u))), _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(0u, 9u)], vec4<u32>(7876u, func_3(9028i, arg_0.e.wzz), 4294967295u, arg_2 | _wgslsmith_add_u32(arg_2, arg_2))), ~(~(~arg_1) >> (4294967295u % 32u)));
    return Struct_4(!vec3<bool>(true, true, !arg_0.d && !arg_0.d), !(!(!vec4<bool>(arg_0.d, arg_0.d, false, true))));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: Struct_3) -> Struct_4 {
    var var_0 = Struct_2(countOneBits(arg_2.a.e.zzx));
    var var_1 = _wgslsmith_add_i32(arg_2.a.e.x, select(arg_2.a.b.x, 23670i, arg_1));
    let var_2 = ~(~4294967295u);
    var_0 = Struct_2(_wgslsmith_mult_vec3_i32(min(_wgslsmith_sub_vec3_i32(var_0.a, vec3<i32>(-2147483647i, -12449i, arg_2.a.a) & arg_2.a.e.xww), vec3<i32>(0i, u_input.a, -2147483647i) | reverseBits(var_0.a)), arg_2.a.e.yyy));
    global4 = arg_0.b.x;
    return func_2(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_3((arg_2.a.a << (var_2 % 32u)) & 1i, vec3<i32>(_wgslsmith_mod_i32(-32673i, var_0.a.x), firstTrailingBit(30330i), 1i)), 9147u, arg_2.a.c), 2u)], 69536u << (var_2 % 32u), arg_2.a.c >> (_wgslsmith_div_u32(~(~arg_2.a.c), ~1u) % 32u));
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    global4 = true != arg_0.d;
    let var_0 = reverseBits(-_wgslsmith_mult_i32(u_input.a, arg_0.b.x));
    var var_1 = func_4(func_2(global3[_wgslsmith_index_u32(16064u >> (~(arg_0.c & arg_0.c) % 32u), 2u)], ~_wgslsmith_mult_u32(1u, 60699u), _wgslsmith_mod_u32(u_input.b, 1u)), !arg_0.d, Struct_3(global3[_wgslsmith_index_u32(~(~(~u_input.b)), 2u)], any(vec2<bool>(true, !arg_0.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1126f, -719f))))));
    global1 = array<vec4<u32>, 9>();
    let var_2 = _wgslsmith_sub_vec3_i32(arg_0.e.yxy, vec3<i32>(16006i, 0i, firstTrailingBit(_wgslsmith_add_i32(~var_0, _wgslsmith_mod_i32(arg_0.e.x, -857i)))));
    return vec4<bool>(!any(vec4<bool>(false, true, true, arg_0.d)), !all(select(var_1.b, vec4<bool>(arg_0.d, arg_0.d, arg_0.d, var_1.b.x), arg_0.a != -22258i)), var_1.b.x, var_1.b.x);
}

fn func_5(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: u32, arg_3: vec4<bool>) -> StorageBuffer {
    var var_0 = select(!func_4(arg_0, all(func_2(global3[_wgslsmith_index_u32(98647u, 2u)], u_input.b, arg_2).b.xwx), Struct_3(global3[_wgslsmith_index_u32(34488u, 2u)], false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -844f)))).b.x, true, true);
    let var_1 = func_4(arg_0, true, Struct_3(Struct_1(-17489i, select(abs(vec2<i32>(8303i, 20550i)), vec2<i32>(5000i, u_input.a) ^ vec2<i32>(u_input.a, u_input.a), arg_3.x || true), max(~4294967295u, firstLeadingBit(u_input.b)), arg_3.x, -vec4<i32>(0i, 17304i, u_input.a, u_input.a)), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1300f, 1592f))), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 200f), vec2<f32>(-728f, -708f)), vec2<bool>(arg_3.x, false))))));
    global1 = array<vec4<u32>, 9>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f - 721f), -353f, _wgslsmith_f_op_f32(390f - -717f), _wgslsmith_f_op_f32(trunc(1387f))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-856f, 1571f, -229f, -1405f)))))));
    var var_3 = max(~(~(~10427u)), arg_1.x);
    return StorageBuffer(vec2<u32>(arg_1.x, 33526u), vec3<i32>(35920i, max(u_input.a, -1i), 1i) << (vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(arg_1.xxw, arg_1.zyx), vec3<u32>(arg_2, arg_1.x, 4294967295u)), u_input.b, u_input.b) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_4(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), true), true)), global1[_wgslsmith_index_u32(u_input.b, 9u)], ~0u, !select(vec4<bool>(true, 0i == u_input.a, true, all(vec4<bool>(false, false, false, false))), func_1(Struct_1(1i, vec2<i32>(1i, u_input.a), 36646u, true, vec4<i32>(26216i, 44383i, -2147483647i, 30521i))), all(vec2<bool>(true, false))));
}

