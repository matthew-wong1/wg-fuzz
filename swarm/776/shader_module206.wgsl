struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: bool,
    d: f32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_3 = Struct_3(43136u, 2147483647i, false, 1169f, vec4<f32>(-753f, -743f, -475f, 2042f));

var<private> global2: array<bool, 8> = array<bool, 8>(false, true, false, true, true, true, false, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: u32) -> vec4<u32> {
    let var_0 = arg_1.x > arg_1.x;
    let var_1 = arg_0;
    var var_2 = abs(u_input.a.yyw);
    global2 = array<bool, 8>();
    global0 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~(~vec4<u32>(var_2.x, var_2.x, u_input.a.x, arg_1.x)), u_input.a), ~vec4<u32>(firstTrailingBit(var_2.x), ~firstTrailingBit(49259u), ~28564u, ~global1.a));
    return vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x >> (~40532u % 32u), _wgslsmith_mod_u32(firstTrailingBit(930u), abs(global0.x)), _wgslsmith_div_u32(~13252u, var_2.x & 33830u)), ~(~firstLeadingBit(vec3<u32>(arg_1.x, global0.x, arg_1.x)))), arg_2, global0.x, firstLeadingBit(arg_2));
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = vec4<u32>(~(22089u ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(6979u, 81908u, u_input.a.x), u_input.a.yxy)), 21646u, _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(func_3(Struct_2(vec3<i32>(global1.b, global1.b, 12084i), Struct_1(-423f), 2328f), vec3<u32>(39577u, 0u, global1.a), 38297u), u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(3427u, global1.a), 0u << (global0.x % 32u), _wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(u_input.a.x, global1.a))), min(~vec3<u32>(global1.a, 0u, 117416u), firstLeadingBit(global0.wxz)))), ~global0.x);
    var var_1 = any(!vec2<bool>(!(false && global2[_wgslsmith_index_u32(u_input.a.x, 8u)]), false));
    global2 = array<bool, 8>();
    global2 = array<bool, 8>();
    var var_2 = Struct_3(~(~global1.a), global1.b, !global1.c, arg_0.x, global1.e);
    return Struct_2(reverseBits(vec3<i32>(-global1.b, global1.b, -1i)), Struct_1(1061f), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_3 {
    global2 = array<bool, 8>();
    global1 = Struct_3(select(32187u, ~(~firstLeadingBit(u_input.a.x)), (true & global1.c) && false), select(~_wgslsmith_mult_i32(-12457i, global1.b), reverseBits(abs(global1.b)), !all(vec2<bool>(false, global2[_wgslsmith_index_u32(arg_0.x, 8u)]))) << (reverseBits(0u << (global1.a % 32u)) % 32u), global1.c, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-247f, _wgslsmith_f_op_f32(sign(-257f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.b.a, 799f, arg_3.c, _wgslsmith_f_op_f32(-arg_3.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-938f, 767f, global1.e.x, -474f)), select(vec4<bool>(true, arg_1, true, arg_1), vec4<bool>(true, false, global1.c, false), !vec4<bool>(global1.c, true, arg_1, arg_1))))));
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_3.b.a)), global1.e.x, _wgslsmith_f_op_f32(188f * arg_3.c));
    global1 = Struct_3(20882u, _wgslsmith_add_i32(_wgslsmith_div_i32(-5693i, _wgslsmith_mult_i32(1i, 7115i >> (0u % 32u))), reverseBits(32746i)), false, var_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.e - _wgslsmith_f_op_vec4_f32(floor(global1.e))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(777f, global1.d, 849f, arg_3.c)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-273f, var_0.x, -137f, global1.d))))));
    return Struct_3(4294967295u, min(-25898i, abs(arg_2.x)), !select(arg_1 && (arg_2.x >= -19906i), select(global2[_wgslsmith_index_u32(global0.x, 8u)], true, global2[_wgslsmith_index_u32(global1.a, 8u)]) || true, 4294967295u > ~global1.a), 1000f, _wgslsmith_f_op_vec4_f32(global1.e + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e.x, _wgslsmith_f_op_f32(var_0.x - 236f), -1000f, _wgslsmith_div_f32(arg_3.c, -1852f)))));
}

fn func_1() -> Struct_2 {
    var var_0 = global0.xz & u_input.a.zz;
    let var_1 = _wgslsmith_f_op_f32(ceil(450f));
    global2 = array<bool, 8>();
    let var_2 = func_4(u_input.a, global2[_wgslsmith_index_u32(global1.a, 8u)], vec4<i32>(2147483647i, -(_wgslsmith_dot_vec4_i32(vec4<i32>(32021i, 7465i, 33287i, global1.b), vec4<i32>(global1.b, 2147483647i, 2147483647i, 2147483647i)) & 1i), global1.b & 1i, ~(-14964i)), func_2(global1.e));
    global2 = array<bool, 8>();
    return Struct_2(vec3<i32>(_wgslsmith_add_i32(2147483647i, ~(-var_2.b)), -25083i, _wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(var_2.b, global1.b, global1.b), vec3<i32>(34843i, 1i, 29124i)), vec3<i32>(_wgslsmith_mod_i32(var_2.b, var_2.b), select(var_2.b, global1.b, global1.c), 75602i))), Struct_1(_wgslsmith_f_op_f32(-410f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.e.x + -684f))))), _wgslsmith_f_op_f32(-var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_mult_u32(_wgslsmith_mult_u32(10045u, global0.x), ~_wgslsmith_clamp_u32(~6783u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.a, u_input.a.x), u_input.a.xx), ~global0.x)), _wgslsmith_dot_vec3_i32(select(select(~vec3<i32>(-15198i, -32137i, global1.b), firstLeadingBit(vec3<i32>(22179i, global1.b, 1i)), false), vec3<i32>(global1.b, -global1.b, global1.b), global2[_wgslsmith_index_u32(u_input.a.x, 8u)]), ~vec3<i32>(global1.b, global1.b, global1.b)), all(!select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 8u)], true, false, true), vec4<bool>(global1.c, global1.c, true, true), vec4<bool>(global2[_wgslsmith_index_u32(1u, 8u)], global1.c, global1.c, global1.c))) | !all(select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 8u)], global1.c, global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)]), vec4<bool>(false, global1.c, global2[_wgslsmith_index_u32(global1.a, 8u)], false), vec4<bool>(global1.c, global2[_wgslsmith_index_u32(global0.x, 8u)], true, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -233f) * global1.d), vec4<f32>(global1.e.x, _wgslsmith_f_op_f32(global1.d - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * global1.d)), _wgslsmith_f_op_f32(-968f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-163f, -449f) + -1566f)), -2081f));
    var var_1 = var_0.e.yxw;
    var var_2 = func_1();
    var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -731f) + 137f), func_2(global1.e).b.a, global1.d)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -136f), true)));
    var_0 = Struct_3(u_input.a.x, firstLeadingBit(-_wgslsmith_mod_i32(1i, -36298i)) | (_wgslsmith_clamp_i32(0i, 2147483647i ^ var_2.a.x, 1i) & 32125i), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a, u_input.a) | vec4<u32>(0u, var_0.a, 43070u, global1.a), ~vec4<u32>(global0.x, global1.a, 11956u, global0.x) ^ ~u_input.a) == global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.e.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1521f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), -1331f, _wgslsmith_f_op_f32(f32(-1f) * -2449f))));
    global1 = Struct_3(u_input.a.x, global1.b, !(-1712f >= var_2.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e.x + -665f))) * _wgslsmith_f_op_f32(-110f * _wgslsmith_f_op_f32(-var_2.b.a))), var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(u_input.a, all(vec2<bool>(true, true)), -abs(min(vec4<i32>(-21874i, -14164i, global1.b, global1.b), vec4<i32>(var_0.b, -11792i, -34913i, global1.b))), func_1()).b, vec4<f32>(func_1().b.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1305f + 594f), _wgslsmith_f_op_f32(f32(-1f) * -158f)), _wgslsmith_f_op_f32(max(func_1().b.a, var_2.c)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(func_4(u_input.a, global1.c, vec4<i32>(1i, var_2.a.x, 0i, var_2.a.x), Struct_2(vec3<i32>(-5407i, 31849i, 2147483647i), var_2.b, var_1.x)).e.x)))));
}

