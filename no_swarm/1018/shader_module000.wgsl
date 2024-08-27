struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 16>;

var<private> global1: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec2<u32> {
    global1 = -48534i >= max(~(-u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, 2147483647i, u_input.a) << (vec4<u32>(4294967295u, 41363u, 12523u, 82751u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(-87739i, u_input.a, u_input.a, -2147483647i), vec4<i32>(u_input.a, -9548i, u_input.a, 0i))) | _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, 2147483647i, 1003i)), min(vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(-53407i, 10232i, u_input.a))));
    let var_0 = -439f;
    let var_1 = true;
    global1 = var_1;
    var var_2 = -57731i;
    return ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, 106515u, abs(0u), 2822u), ~(~vec4<u32>(48371u, 0u, 1u, 88295u))), min(58089u, 1u));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: vec2<u32>) -> u32 {
    var var_0 = Struct_3(func_3(), !arg_1);
    let var_1 = _wgslsmith_div_f32(-464f, _wgslsmith_f_op_f32(step(866f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1771f))))));
    var var_2 = abs(_wgslsmith_add_vec3_i32(~abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-13795i, u_input.a, u_input.a))), min(reverseBits(vec3<i32>(u_input.a, u_input.a, 2147483647i) ^ vec3<i32>(-1i, u_input.a, u_input.a)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 0i, -2147483647i), -vec3<i32>(u_input.a, 13384i, -1i)))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(751f, var_1, 731f, -855f) * vec4<f32>(var_1, 332f, var_1, 519f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_1, var_1, -1201f, var_1), vec4<f32>(152f, 600f, var_1, 387f)))))), vec2<i32>(var_2.x, var_2.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)), ~_wgslsmith_mult_i32(21959i, 1i));
    let var_4 = Struct_3(var_0.a, arg_1);
    return 4294967295u << (~arg_2.x % 32u);
}

fn func_1() -> Struct_4 {
    global1 = !(_wgslsmith_sub_u32(func_2(abs(vec3<u32>(7071u, 11867u, 1u)), true, min(vec2<u32>(4168u, 82783u), vec2<u32>(0u, 14326u))), 0u) >= func_3().x);
    var var_0 = Struct_3(vec2<u32>(1u, 1u), !select(func_3().x > ~1u, all(vec4<bool>(true, true, true, true)), true));
    var var_1 = _wgslsmith_div_f32(-931f, 205f);
    let var_2 = Struct_3(countOneBits(select(var_0.a, _wgslsmith_mod_vec2_u32(var_0.a, var_0.a), select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(false, var_0.b), var_0.b)) & reverseBits(min(vec2<u32>(var_0.a.x, var_0.a.x), var_0.a))), true);
    var var_3 = ~firstLeadingBit(reverseBits((vec2<i32>(0i, -21850i) | vec2<i32>(u_input.a, u_input.a)) >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))));
    return global0[_wgslsmith_index_u32(~var_0.a.x, 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(_wgslsmith_f_op_f32(select(-325f, _wgslsmith_f_op_f32(-167f + _wgslsmith_f_op_f32(trunc(991f))), false)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-647f - 126f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_0 = func_1();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, -886f, _wgslsmith_f_op_f32(-var_0.c.x), var_0.c.x)), -reverseBits(-vec2<i32>(u_input.a, -9899i)) & (reverseBits(reverseBits(vec2<i32>(u_input.a, 30222i))) | _wgslsmith_div_vec2_i32(~vec2<i32>(u_input.a, -1i), select(vec2<i32>(0i, -1i), vec2<i32>(-28211i, u_input.a), true))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-322f * _wgslsmith_f_op_f32(var_0.c.x + -1187f)), _wgslsmith_f_op_f32(ceil(-4022f))))), 2147483647i);
    let var_2 = func_1();
    var var_3 = var_2;
    var var_4 = true;
    let var_5 = all(select(vec4<bool>(true, all(vec2<bool>(true, false)) || all(vec4<bool>(false, false, false, false)), all(vec3<bool>(false, false, false)) && true, all(vec2<bool>(false, false))), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), false), 1f < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_2.b)), _wgslsmith_f_op_f32(abs(var_3.c.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(-abs(abs(var_1.d) ^ u_input.a), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.a.xzz, var_0.c.zyy, var_5)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2721f, var_2.b, var_3.c.x), vec3<f32>(var_1.c.x, var_1.c.x, 1209f), vec3<bool>(false, false, true))))))), ~var_0.a.x);
}

