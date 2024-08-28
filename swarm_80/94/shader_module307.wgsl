struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true));

var<private> global1: Struct_1;

var<private> global2: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true));

var<private> global3: vec2<u32> = vec2<u32>(2052u, 1u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = _wgslsmith_sub_vec2_u32(min(~(vec2<u32>(global3.x, global3.x) >> (vec2<u32>(global3.x, 0u) % vec2<u32>(32u))), ~(~vec2<u32>(u_input.a, global3.x)) << (~(~vec2<u32>(global3.x, global3.x)) % vec2<u32>(32u))), ~(~(~vec2<u32>(1u, 82248u) << ((vec2<u32>(1u, u_input.a) << (vec2<u32>(global3.x, global3.x) % vec2<u32>(32u))) % vec2<u32>(32u)))));
    let var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(max(u_input.a, ~var_0.x), ~u_input.a, 0u ^ _wgslsmith_clamp_u32(u_input.a, global3.x, u_input.a)), firstLeadingBit(~(~vec3<u32>(var_0.x, 16751u, 0u)))), abs(~countOneBits(vec3<u32>(0u, 4294967295u, global3.x))));
    global0 = array<vec3<bool>, 8>();
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -975f) - -322f), arg_1, -266f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), arg_1, -128f), select(!global0[_wgslsmith_index_u32(1u, 8u)], !global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, u_input.a), 8u)], vec3<bool>(true, true, true))))));
    var var_3 = Struct_3(!any(select(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(8362u, 1u), 8u)], select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), select(global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(47077u, 8u)], global0[_wgslsmith_index_u32(var_1.x, 8u)]))));
    return vec2<u32>(40301u, min(~3036u, 0u));
}

fn func_2() -> bool {
    let var_0 = vec2<i32>(-u_input.b.x, global1.a.x);
    global3 = _wgslsmith_mod_vec2_u32(vec2<u32>(global3.x, 4294967295u), func_3(-1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -896f) * -1463f), _wgslsmith_clamp_vec3_i32(global1.a, _wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i)), vec3<i32>(global1.a.x, 0i, -2147483647i)), Struct_1(_wgslsmith_mod_vec3_i32(u_input.b, u_input.b)))) >> (~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(110591u, u_input.a), vec2<u32>(global3.x, u_input.a), vec2<u32>(1u, 4294967295u))) % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1378f)), -152f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-443f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1574f)))) + 405f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(195f, _wgslsmith_div_f32(-1120f, -1962f), _wgslsmith_f_op_f32(-1010f * _wgslsmith_f_op_f32(ceil(-429f))))))));
    global0 = array<vec3<bool>, 8>();
    var var_2 = Struct_3(var_1.x <= _wgslsmith_f_op_f32(abs(var_1.x)));
    return true;
}

fn func_1(arg_0: f32) -> vec3<i32> {
    global2 = array<vec2<bool>, 27>();
    let var_0 = (func_2() && (((-53801i & global1.a.x) >= global1.a.x) & (select(u_input.b.x, 2147483647i, false) != ~(-1i)))) && false;
    global3 = min(vec2<u32>(global3.x, ~(~10070u) | ~_wgslsmith_clamp_u32(global3.x, global3.x, global3.x)), select(_wgslsmith_div_vec2_u32(~vec2<u32>(35723u, 87837u), vec2<u32>(u_input.a, ~global3.x)), vec2<u32>(global3.x, ~global3.x), arg_0 <= 1155f));
    var var_1 = vec3<bool>(var_0, (min(1254u, _wgslsmith_mult_u32(35274u, global3.x)) << ((_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global3.x), vec2<u32>(3116u, u_input.a)) ^ global3.x) % 32u)) < func_3(_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.b.x, 1i), u_input.b.x), 196f, firstTrailingBit(vec3<i32>(18545i, 2147483647i, -9208i)), Struct_1(~u_input.b)).x, var_0);
    global0 = array<vec3<bool>, 8>();
    return ~u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1056f + 1020f)))) | global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_sub_i32(-24718i, -1i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(33916u, 49945u), vec2<u32>(0u, u_input.a)) % 32u)), select(u_input.b.x, -30365i, true)), vec4<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(var_0.a.x, 17988i, -39097i, global1.a.x) & vec4<i32>(global1.a.x, global1.a.x, -1i, global1.a.x)), ~(~vec4<i32>(u_input.b.x, -1i, 1i, 6374i))), -_wgslsmith_mod_i32(-2147483647i, countOneBits(2147483647i)), ~(-38888i), -13224i), 2147483647i, countOneBits(select(vec2<u32>(~51107u, u_input.a), (vec2<u32>(u_input.a, 4294967295u) & vec2<u32>(u_input.a, u_input.a)) | abs(vec2<u32>(4294967295u, global3.x)), true)));
}

