struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 16>;

var<private> global1: f32;

var<private> global2: vec2<f32> = vec2<f32>(-1000f, -405f);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: vec2<f32>, arg_3: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1220f, -970f, 1330f, -852f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.b, arg_1, global2.x, arg_0.a.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(141f, -1296f, -106f, arg_1) - vec4<f32>(global2.x, arg_1, 660f, -975f)))), all(vec3<bool>(!arg_0.b.c.a.x, true, u_input.b.x >= arg_0.d.x))))));
    let var_1 = arg_0;
    let var_2 = Struct_4(var_1.a, Struct_3(!(!(!vec4<bool>(false, arg_0.a.a.x, arg_0.a.c.a.x, false))), _wgslsmith_f_op_f32(var_0.x * global2.x), Struct_1(arg_0.a.c.a, arg_0.b.c.b, true)), ~15779u, select(abs(vec2<i32>(-2147483647i, u_input.b.x)) | vec2<i32>(0i, u_input.a), -_wgslsmith_add_vec2_i32(vec2<i32>(44792i, -1i), vec2<i32>(2147483647i, var_1.d.x)), vec2<bool>(true, true)) << (select(~vec2<u32>(1u, 1u), vec2<u32>(firstLeadingBit(var_1.b.c.b), var_1.c >> (4294967295u % 32u)), all(vec4<bool>(true, false, var_1.b.c.c, arg_0.a.a.x))) % vec2<u32>(32u)), vec3<i32>(u_input.a, abs(-11588i), ~39553i | _wgslsmith_div_i32(arg_0.d.x, arg_0.e.x)) ^ vec3<i32>(1i, -19335i, arg_0.d.x));
    return _wgslsmith_f_op_f32(sign(var_1.a.b));
}

fn func_2() -> f32 {
    let var_0 = vec3<bool>(true, _wgslsmith_f_op_f32(func_3(Struct_4(Struct_3(vec4<bool>(false, false, false, true), 542f, Struct_1(vec2<bool>(true, true), 0u, true)), Struct_3(vec4<bool>(false, true, true, true), 1000f, Struct_1(vec2<bool>(false, false), 67582u, true)), 54139u, global0[_wgslsmith_index_u32(0u, 16u)] | global0[_wgslsmith_index_u32(86531u, 16u)], -u_input.b.zzy), global2.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)), u_input.a)) != global2.x, select(_wgslsmith_dot_vec4_u32(vec4<u32>(21211u, 65250u, 44766u, 1u), vec4<u32>(1u, 1u, 0u, 11882u)) > countOneBits(0u), true, any(vec4<bool>(true, true, true, true))) && (2147483647i <= _wgslsmith_sub_i32(u_input.a, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, u_input.a, 1i, u_input.b.x)))));
    return 1243f;
}

fn func_1() -> vec2<i32> {
    var var_0 = u_input.a;
    global1 = global2.x;
    global2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(func_2()), -213f)));
    var var_1 = u_input.b;
    let var_2 = Struct_1(select(vec2<bool>(true, true), !vec2<bool>(true, select(false, false, false)), all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))), ~firstTrailingBit(30593u), global2.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(2449f, global2.x), _wgslsmith_f_op_f32(-global2.x), true))));
    return _wgslsmith_sub_vec2_i32(global0[_wgslsmith_index_u32(var_2.b, 16u)] ^ _wgslsmith_add_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.x, 30885i), vec2<i32>(u_input.a, 1i)), _wgslsmith_sub_vec2_i32(select(var_1.wy, vec2<i32>(u_input.b.x, -40951i), false), firstTrailingBit(u_input.b.yx))), _wgslsmith_div_vec2_i32(global0[_wgslsmith_index_u32(~1u, 16u)], _wgslsmith_sub_vec2_i32(vec2<i32>(-18012i, _wgslsmith_div_i32(-15559i, -2147483647i)), countOneBits(firstLeadingBit(u_input.b.wx)))));
}

fn func_4(arg_0: vec4<i32>) -> StorageBuffer {
    var var_0 = ~vec4<u32>(1u, ~0u, ~max(4294967295u, firstTrailingBit(5414u)), reverseBits(1u));
    var var_1 = Struct_1(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), all(vec4<bool>(true, true, true, false)))), ~(~(~countOneBits(4721u))), _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(floor(global2.x))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -172f) + -263f));
    var var_2 = -2147483647i;
    global1 = global2.x;
    var_2 = _wgslsmith_sub_i32(select(1i, _wgslsmith_clamp_i32(i32(-1i) * -39562i, u_input.b.x, u_input.a), true), u_input.a) ^ firstLeadingBit(u_input.a);
    return StorageBuffer(select(select(arg_0.yyy, u_input.b.wxw, any(!vec4<bool>(false, true, var_1.c, true))), arg_0.wxw, !vec3<bool>(true, !var_1.c, all(vec2<bool>(true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(vec4<i32>(_wgslsmith_mod_i32(1i >> (1u % 32u), 2147483647i), ~(i32(-1i) * -2792i), select(-1i ^ -u_input.b.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b.x, u_input.a, -1i, u_input.a), u_input.b), any(vec3<bool>(false, false, false)) || false), _wgslsmith_dot_vec2_i32(~func_1(), abs(~u_input.b.xw))));
}

