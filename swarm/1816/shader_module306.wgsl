struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(60282u, true, -763f, vec4<bool>(false, false, true, false)), Struct_1(1u, false, -235f, vec4<bool>(true, false, true, false)), Struct_1(93381u, false, 2370f, vec4<bool>(false, false, false, true)), Struct_1(1u, false, -652f, vec4<bool>(false, false, false, false)), Struct_1(22843u, false, -832f, vec4<bool>(false, false, false, false)), Struct_1(4294967295u, true, -435f, vec4<bool>(false, true, true, false)), Struct_1(4807u, true, -1000f, vec4<bool>(true, false, false, false)), Struct_1(42773u, true, -1981f, vec4<bool>(true, true, false, true)), Struct_1(4294967295u, true, -194f, vec4<bool>(true, true, true, false)), Struct_1(1u, false, 1696f, vec4<bool>(false, true, false, false)), Struct_1(15515u, false, 119f, vec4<bool>(false, true, false, false)), Struct_1(0u, false, 207f, vec4<bool>(true, true, true, false)), Struct_1(0u, true, -1647f, vec4<bool>(false, false, false, true)));

var<private> global1: vec2<f32> = vec2<f32>(675f, 1584f);

var<private> global2: array<vec4<f32>, 12>;

var<private> global3: i32;

var<private> global4: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<i32>) -> i32 {
    var var_0 = Struct_4(arg_0.a, Struct_2(countOneBits(~vec3<u32>(43135u, arg_0.b.a.x, 79955u))));
    let var_1 = global0[_wgslsmith_index_u32(36359u, 13u)];
    let var_2 = -2147483647i;
    let var_3 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-290f * -577f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(919f)))) > _wgslsmith_f_op_f32(step(-180f, _wgslsmith_f_op_f32(floor(arg_0.a.a)))), false);
    let var_4 = var_1.a;
    return i32(-1i) * -2147483647i;
}

fn func_4(arg_0: i32, arg_1: vec4<i32>) -> f32 {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, _wgslsmith_div_f32(global1.x, global1.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(537f, global1.x))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) * global1.x);
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: u32) -> vec2<f32> {
    let var_0 = Struct_1(max(abs(~u_input.b), max(~arg_2, arg_2 | arg_1.x)) | u_input.a, false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1510f - _wgslsmith_div_f32(global1.x, 357f))), _wgslsmith_f_op_f32(func_4(_wgslsmith_clamp_i32(24066i | u_input.c, -44168i, u_input.c), vec4<i32>(i32(-1i) * -6660i, func_3(Struct_4(Struct_3(global1.x), Struct_2(arg_1.ywy)), u_input.d.yz), u_input.d.x, _wgslsmith_add_i32(u_input.c, 34234i)))), any(vec2<bool>(-1395f == global1.x, any(vec3<bool>(false, true, true)))))), vec4<bool>(false, any(vec3<bool>(true, arg_2 <= u_input.b, false)), (_wgslsmith_dot_vec2_u32(arg_1.yy, vec2<u32>(39655u, u_input.b)) <= 75893u) | true, true));
    let var_1 = vec4<bool>(var_0.b, true, !any(var_0.d), var_0.d.x);
    global4 = u_input.c;
    let var_2 = Struct_1(_wgslsmith_dot_vec2_u32(firstTrailingBit(firstLeadingBit(arg_1.yw)), vec2<u32>(_wgslsmith_mult_u32(10078u, arg_1.x) & 0u, u_input.a)), any(!select(!var_0.d.wx, select(var_0.d.ww, var_1.zy, vec2<bool>(var_0.d.x, var_1.x)), select(var_1.xw, vec2<bool>(false, true), vec2<bool>(var_1.x, var_1.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(278f - 1031f)) - _wgslsmith_div_f32(-484f, arg_0)))), var_0.d);
    global3 = _wgslsmith_dot_vec4_i32(select(vec4<i32>(~(24573i & u_input.c), min(_wgslsmith_sub_i32(u_input.d.x, u_input.d.x), u_input.d.x), 1251i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, 2147483647i, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -7238i)), -2147483647i)), ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, -2147483647i, -49504i, u_input.d.x), reverseBits(vec4<i32>(17545i, 2147483647i, 7155i, 0i))), true), _wgslsmith_mult_vec4_i32(vec4<i32>(func_3(Struct_4(Struct_3(1048f), Struct_2(arg_1.wyz)), u_input.d.yy), _wgslsmith_dot_vec2_i32(u_input.d.zz, u_input.d.yx), -13971i, abs(u_input.c)), firstLeadingBit(vec4<i32>(-26531i, 60015i, u_input.d.x, -225i) & vec4<i32>(2147483647i, u_input.d.x, 17183i, -13497i))) ^ ((vec4<i32>(2147483647i, 0i, 1i, -2147483647i) >> (firstLeadingBit(arg_1) % vec4<u32>(32u))) & (vec4<i32>(-1i) * -vec4<i32>(0i, 5465i, u_input.d.x, u_input.c))));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.c)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(943f - var_2.c), _wgslsmith_f_op_f32(ceil(117f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(u_input.c, vec4<i32>(u_input.d.x, -2147483647i, 0i, u_input.c)))))), -205f);
}

fn func_1() -> Struct_3 {
    let var_0 = ~vec4<i32>(u_input.d.x, -u_input.d.x, u_input.d.x & ((i32(-1i) * -21583i) >> (abs(u_input.a) % 32u)), min(~u_input.c, max(0i, u_input.c | -18915i)));
    var var_1 = _wgslsmith_f_op_f32(-global1.x);
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(598f, -741f), vec2<f32>(-1003f, 551f)) - _wgslsmith_f_op_vec2_f32(func_2(global1.x, vec4<u32>(4294967295u, u_input.b, u_input.a, 13130u), u_input.a))), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -262f), _wgslsmith_div_vec2_f32(vec2<f32>(2461f, -864f), vec2<f32>(-1000f, global1.x))))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(global1.x + global1.x), ~((vec4<u32>(u_input.b, 1u, u_input.b, u_input.a) ^ vec4<u32>(5225u, 78613u, u_input.a, 8428u)) & select(vec4<u32>(0u, u_input.a, u_input.a, 31788u), vec4<u32>(1u, u_input.b, 4294967295u, 1u), true)), firstTrailingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(58721u, u_input.b, 4294967295u), vec3<u32>(u_input.b, 1134u, u_input.a))))).x);
    var var_3 = global0[_wgslsmith_index_u32(abs(u_input.a), 13u)];
    return Struct_3(_wgslsmith_f_op_f32(round(881f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = firstTrailingBit(-(countOneBits(-vec2<i32>(-7886i, -2147483647i)) & -vec2<i32>(2147483647i, u_input.d.x)));
    var_1 = vec2<i32>(-1i) * -(~u_input.d.xx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(~(~abs(vec4<u32>(4294967295u, u_input.a, u_input.a, 26859u))), vec4<u32>(14031u, ~(u_input.b ^ u_input.a), 38574u, 4294967295u)), vec2<i32>(max(var_1.x, _wgslsmith_div_i32(-6978i, func_3(Struct_4(Struct_3(global1.x), Struct_2(vec3<u32>(u_input.b, u_input.a, u_input.b))), vec2<i32>(var_1.x, 6361i)))), countOneBits(-1i) ^ _wgslsmith_div_i32(~var_1.x, _wgslsmith_sub_i32(u_input.c, 2147483647i))), vec4<i32>(_wgslsmith_clamp_i32(-(~(-8177i)), u_input.d.x, u_input.c), 1i, abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(28506i, -1i, var_1.x, 0i), vec4<i32>(var_1.x, 10485i, 26982i, var_1.x))), var_1.x));
}

