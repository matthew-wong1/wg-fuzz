struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: vec3<bool>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, true, false, true)));

var<private> global1: array<i32, 27> = array<i32, 27>(2147483647i, 62566i, 30473i, -18489i, i32(-2147483648), 10394i, 47529i, 1i, -34313i, -16895i, 22672i, 1i, 1i, 22062i, 1i, 34951i, -51132i, 44186i, -16807i, -1i, 1i, -1i, -40017i, 0i, -1i, -1i, 2147483647i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: Struct_1, arg_3: i32) -> bool {
    let var_0 = select(select(!select(vec4<bool>(arg_2.a.x, false, true, true), !vec4<bool>(arg_1.c.x, true, true, false), arg_1.c.x), vec4<bool>(false, arg_1.c.x, all(arg_2.a), !arg_1.c.x || all(vec2<bool>(arg_1.c.x, arg_2.a.x))), vec4<bool>(arg_1.c.x, true, true, _wgslsmith_div_f32(arg_1.b.x, -836f) != arg_1.b.x)), !vec4<bool>(select(arg_1.c.x, true, 21941i < arg_3), all(arg_2.a.wyw), !any(vec4<bool>(true, arg_1.c.x, true, arg_2.a.x)), any(vec2<bool>(true, arg_2.a.x))), !arg_1.c.x);
    let var_1 = vec4<bool>(true || select((2147483647i << (arg_0.x % 32u)) < (2147483647i >> (arg_0.x % 32u)), all(!arg_1.c), var_0.x), !((true && any(arg_1.c)) | false), true, all(vec3<bool>(false, var_0.x, arg_2.a.x)) | true);
    let var_2 = Struct_2(~reverseBits(-arg_1.a << (arg_0.x % 32u)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1.d, arg_0.x), vec3<u32>(arg_0.x, arg_1.d, arg_1.d)), arg_1.d), ~reverseBits(vec2<u32>(arg_1.d, arg_1.d))), 1u, reverseBits(abs(39697u))), arg_1.b.x);
    var var_3 = (-countOneBits(arg_3) ^ 1i) ^ (i32(-1i) * -1i);
    global1 = array<i32, 27>();
    return any(!arg_2.a.yyy);
}

fn func_2() -> vec4<bool> {
    var var_0 = _wgslsmith_add_u32(firstLeadingBit(47586u), 1u);
    let var_1 = Struct_2(-u_input.b, ~abs(_wgslsmith_mod_vec3_u32(min(vec3<u32>(1u, 62097u, 0u), vec3<u32>(8301u, 0u, 4294967295u)), vec3<u32>(1u, 1u, 1u))), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(abs(-186f)))))));
    let var_2 = _wgslsmith_add_i32(_wgslsmith_sub_i32(1i, -u_input.c), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(u_input.b, -59795i, global1[_wgslsmith_index_u32(4294967295u, 27u)], u_input.a)), vec4<i32>(_wgslsmith_add_i32(0i, var_1.a), -97104i | u_input.b, u_input.b, 33868i << (var_1.b.x % 32u))), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, var_1.a, -2147483647i, abs(68497i)), firstTrailingBit(~vec4<i32>(global1[_wgslsmith_index_u32(var_1.b.x, 27u)], u_input.a, var_1.a, global1[_wgslsmith_index_u32(4294967295u, 27u)])))));
    var var_3 = Struct_3(12563i >= -min(6555i, abs(global1[_wgslsmith_index_u32(var_1.b.x, 27u)])));
    var var_4 = _wgslsmith_add_vec3_i32(-vec3<i32>(var_2, reverseBits(~u_input.a), abs(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(14623u, var_1.b.x), 27u)])), reverseBits(~(~(~vec3<i32>(-9409i, var_2, -1i)))));
    return !select(select(!select(vec4<bool>(true, false, true, var_3.a), vec4<bool>(var_3.a, var_3.a, false, var_3.a), true), vec4<bool>(true, var_3.a == var_3.a, !var_3.a, var_3.a), ~4294967295u < abs(var_1.b.x)), vec4<bool>(false, var_3.a, select(var_3.a, var_3.a, func_3(var_1.b.yz, Struct_4(2147483647i, vec2<f32>(-1526f, 328f), vec3<bool>(var_3.a, false, true), 4294967295u), Struct_1(vec4<bool>(var_3.a, var_3.a, var_3.a, false)), 1i)), var_3.a), var_3.a);
}

fn func_1(arg_0: bool, arg_1: vec3<bool>, arg_2: vec4<f32>) -> vec3<f32> {
    let var_0 = firstTrailingBit(1u);
    var var_1 = select(select(!select(vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(arg_1.x, false, true, false), select(vec4<bool>(false, arg_0, false, arg_1.x), vec4<bool>(true, false, false, false), true)), select(vec4<bool>(arg_1.x, false, arg_2.x <= arg_2.x, arg_0), !vec4<bool>(true, arg_1.x, true, true), arg_1.x), !func_2()), !func_2(), select(true, true, arg_1.x));
    global1 = array<i32, 27>();
    var var_2 = Struct_3(!(select(u_input.a, _wgslsmith_add_i32(44200i, u_input.a), var_1.x) == select(-1i, select(-2524i, global1[_wgslsmith_index_u32(0u, 27u)], true), any(vec4<bool>(true, arg_0, arg_0, false)))));
    let var_3 = Struct_2(_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(~(var_0 << (19201u % 32u)) & var_0, 27u)], -15165i, i32(-1i) * -(~u_input.c)), _wgslsmith_mod_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_0, var_0) | vec3<u32>(6488u, 1u, 4294967295u), vec3<u32>(var_0, var_0, 4049u)), ~vec3<u32>(var_0, var_0, 0u)), _wgslsmith_f_op_f32(1199f * 342f));
    return _wgslsmith_f_op_vec3_f32(max(arg_2.yxz, arg_2.xxx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(69407u, 14u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(false, !(!(!var_0.a.xyx)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1013f, -852f, 997f, -616f)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -288f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2587f + 604f), _wgslsmith_f_op_f32(step(-710f, 912f)), true)))));
    let var_2 = _wgslsmith_dot_vec2_i32(abs(vec2<i32>(1i, 1i)), ~(vec2<i32>(u_input.c, 1i) >> (~vec2<u32>(1u, 1u) % vec2<u32>(32u)))) == u_input.a;
    var var_3 = countOneBits(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, 4294967295u), 0u), ~1u));
    global1 = array<i32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~_wgslsmith_mod_i32(u_input.b, -1932i) | firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-60162i, 2147483647i), vec2<i32>(u_input.a, u_input.a))), i32(-1i) * -41742i, countOneBits(u_input.b), u_input.c << (firstLeadingBit(~var_3.x) % 32u)), vec2<u32>(var_3.x, var_3.x) & (_wgslsmith_mult_vec2_u32(~vec2<u32>(var_3.x, 131874u), _wgslsmith_add_vec2_u32(vec2<u32>(var_3.x, 19506u), vec2<u32>(65429u, var_3.x))) << (_wgslsmith_mult_vec2_u32(vec2<u32>(var_3.x, 18445u), max(vec2<u32>(1u, 62185u), vec2<u32>(var_3.x, var_3.x))) % vec2<u32>(32u))));
}

