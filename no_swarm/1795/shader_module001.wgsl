struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<bool>(true, false, false, true), 0i), Struct_1(vec4<bool>(false, false, false, false), 2147483647i), Struct_1(vec4<bool>(true, true, true, true), -1i), Struct_1(vec4<bool>(true, false, true, false), 0i), Struct_1(vec4<bool>(false, true, false, false), -27016i), Struct_1(vec4<bool>(true, false, true, false), -1i), Struct_1(vec4<bool>(true, true, false, true), -30845i), Struct_1(vec4<bool>(true, false, true, false), -1i), Struct_1(vec4<bool>(true, true, true, true), i32(-2147483648)), Struct_1(vec4<bool>(true, false, true, false), i32(-2147483648)), Struct_1(vec4<bool>(false, false, true, true), i32(-2147483648)), Struct_1(vec4<bool>(true, true, true, false), 7525i), Struct_1(vec4<bool>(false, false, true, true), 1i), Struct_1(vec4<bool>(false, false, true, true), i32(-2147483648)), Struct_1(vec4<bool>(true, false, false, false), 14884i), Struct_1(vec4<bool>(false, true, true, false), 2147483647i), Struct_1(vec4<bool>(false, true, true, true), 2147483647i), Struct_1(vec4<bool>(false, true, false, false), -3979i), Struct_1(vec4<bool>(false, false, false, false), i32(-2147483648)), Struct_1(vec4<bool>(false, true, false, false), -21986i), Struct_1(vec4<bool>(false, true, true, true), 20945i), Struct_1(vec4<bool>(false, true, true, true), 1i), Struct_1(vec4<bool>(false, true, true, true), 0i), Struct_1(vec4<bool>(false, true, false, false), i32(-2147483648)), Struct_1(vec4<bool>(false, false, true, true), 10532i), Struct_1(vec4<bool>(true, false, false, false), -17519i), Struct_1(vec4<bool>(true, true, false, true), -18929i), Struct_1(vec4<bool>(true, false, true, false), -1i), Struct_1(vec4<bool>(true, true, true, false), 1i), Struct_1(vec4<bool>(false, false, false, false), -19974i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: f32) -> f32 {
    return -1582f;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(true, vec3<bool>(true, false, true), -13286i), vec4<i32>(-2147483647i, -44980i, u_input.b.x, u_input.c), Struct_3(false, vec3<bool>(false, true, false), u_input.c), -1144f)), 1109f, -700f, -304f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(438f, -519f, 728f, -219f)))))))), ~(~(~vec4<u32>(u_input.a, u_input.a, 17844u, 0u)) >> (~(~vec4<u32>(u_input.a, 0u, 73877u, 4294967295u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(747f, -151f, 689f, -201f)), vec4<f32>(1116f, -509f, -469f, -1883f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(480f, 1173f, -485f, -640f))))));
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    var var_1 = ~vec2<u32>(var_0.b.x, _wgslsmith_mult_u32(~var_0.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.b.xxw, vec3<u32>(u_input.a, 19342u, u_input.a)), vec3<u32>(var_0.b.x, var_0.b.x, u_input.a))));
    let var_2 = var_0.a.xx;
    return Struct_2(vec4<f32>(-528f, var_0.a.x, var_2.x, var_2.x), ~vec4<u32>(~u_input.a, 4294967295u, 0u, _wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, var_0.b.x, u_input.a), var_0.b.wzz), vec3<u32>(21374u, 5259u, u_input.a) | vec3<u32>(u_input.a, var_0.b.x, 0u))), var_0.a);
}

fn func_1() -> bool {
    let var_0 = func_2();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(953f * var_0.c.x), var_0.c.x, -714f);
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_0.a.x, 1736f));
    let var_2 = _wgslsmith_f_op_f32(-var_1.x);
    let var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.a, 20350u), 30u)];
    return var_3.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<bool>(true, select(any(vec4<bool>(false, true, true, true)), (u_input.b.x <= u_input.b.x) & select(false, true, true), false), ~(~(-2147483647i)) < u_input.c, (0i <= min(u_input.b.x, 2147483647i)) && func_1()), ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, u_input.c), u_input.b)) >> ((u_input.a & 13808u) % 32u));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-255f, -373f) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1238f, -1329f)))))));
    let var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1.x)), 1712f, _wgslsmith_f_op_f32(select(-552f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2241f, 1288f)), any(select(vec2<bool>(false, var_0.a.x), var_0.a.xy, vec2<bool>(false, var_0.a.x))))), var_1.x), _wgslsmith_div_vec4_u32(vec4<u32>(firstTrailingBit(4294967295u), 0u, ~1u, ~16520u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 4294967295u, 4294967295u) ^ vec4<u32>(13118u, 4294967295u, u_input.a, u_input.a))) ^ (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 11830u, 4294967295u, u_input.a) >> (vec4<u32>(u_input.a, 7182u, u_input.a, u_input.a) % vec4<u32>(32u)), vec4<u32>(1u, 64415u, u_input.a, 1u)) >> (vec4<u32>(u_input.a, ~u_input.a, ~u_input.a, ~0u) % vec4<u32>(32u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-418f, var_1.x, _wgslsmith_f_op_f32(750f - 539f), _wgslsmith_f_op_f32(-var_1.x)), vec4<f32>(_wgslsmith_f_op_f32(271f * var_1.x), 245f, _wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(min(var_1.x, var_1.x))))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x * -561f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_1.x, -259f)))), 546f, -1205f)));
    global0 = array<Struct_1, 30>();
    var var_3 = _wgslsmith_dot_vec3_i32(u_input.b, u_input.b) & _wgslsmith_clamp_i32(abs(reverseBits(_wgslsmith_mult_i32(var_0.b, -26181i))), 17264i, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, var_0.b, -2147483647i, u_input.b.x), vec4<i32>(0i, u_input.c, 1i, u_input.b.x)));
    var var_4 = -2698f;
    var_3 = 38084i | abs(u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(~max(var_2.b.x, u_input.a), 1u), _wgslsmith_add_vec2_u32(func_2().b.ww, ~(~vec2<u32>(4294967295u, var_2.b.x))), any(vec4<bool>(any(vec3<bool>(var_0.a.x, false, true)), var_0.a.x, var_0.a.x, true))), _wgslsmith_f_op_f32(f32(-1f) * -1374f));
}

