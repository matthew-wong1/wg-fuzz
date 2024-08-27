struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1905f, 375f);

var<private> global1: array<f32, 17>;

var<private> global2: u32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(~vec2<i32>(1i, 1i) ^ (_wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(2147483647i, -29146i)), select(vec2<i32>(1i, 1i), vec2<i32>(-1i, 2147483647i), vec2<bool>(false, false))) ^ _wgslsmith_mod_vec2_i32(abs(vec2<i32>(-23598i, 0i)), vec2<i32>(-2147483647i, 2147483647i))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c, 17u)] * -1322f), -353f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.x)) + -704f)), global1[_wgslsmith_index_u32(u_input.b, 17u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(50555u, 9001u, u_input.d.x, u_input.c)), ~u_input.c), 17u)] + -974f)), Struct_2(4294967295u));
    let var_1 = var_0.c;
    global2 = var_1.a;
    return 1234f;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1.c.xy;
    global0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_1.a.wz * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(global0.x * 429f), 519f)))), vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-arg_0.x))));
    let var_1 = Struct_3(min(_wgslsmith_sub_vec2_i32(vec2<i32>(~arg_1.c.x, _wgslsmith_dot_vec2_i32(var_0, vec2<i32>(1i, var_0.x))), arg_1.c.zz ^ vec2<i32>(arg_1.e, -35086i)), var_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -668f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-413f, global0.x))), -421f)), Struct_2(max(reverseBits(arg_1.d & 1u), u_input.b)));
    var var_2 = arg_1.d;
    var_2 = ~((13329u & u_input.c) >> (~58691u % 32u));
    return select(6294u, 4294967295u | ~_wgslsmith_sub_u32(1u, arg_1.d), !arg_1.b.x || false) ^ (_wgslsmith_sub_u32(var_1.c.a, var_1.c.a) | (41271u << (0u % 32u)));
}

fn func_1() -> u32 {
    global1 = array<f32, 17>();
    let var_0 = ~u_input.a;
    var var_1 = _wgslsmith_add_i32(0i, 1i);
    var var_2 = all(vec4<bool>(15416u <= ~(~u_input.d.x), (any(vec4<bool>(true, true, true, true)) | true) | true, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 17u)] * -921f) < global0.x, 1i == _wgslsmith_dot_vec2_i32(vec2<i32>(-47607i, -23834i), ~vec2<i32>(-66818i, 2147483647i))));
    var_1 = -16641i >> ((abs(func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, -295f, 448f), vec3<f32>(282f, global1[_wgslsmith_index_u32(4294967295u, 17u)], -1000f))), Struct_1(vec4<f32>(1128f, global0.x, 1000f, 300f), vec2<bool>(false, true), vec3<i32>(0i, -11986i, -2147483647i), 1u, 0i))) & _wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.x, u_input.a.x), ~min(u_input.b, u_input.d.x))) % 32u);
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(vec4<u32>(func_1(), 27535u, _wgslsmith_div_u32(u_input.d.x, u_input.d.x), 66257u) << (countOneBits(_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(76499u, u_input.a.x, u_input.c, u_input.d.x))) % vec4<u32>(32u))));
    var var_1 = -947f;
    var var_2 = true;
    var var_3 = min(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, countOneBits(23723i)), _wgslsmith_mult_vec3_i32(-vec3<i32>(-37564i, 45606i, -28237i), vec3<i32>(9994i, 16943i, 21778i) >> (u_input.d.xxy % vec3<u32>(32u))) & vec3<i32>(i32(-1i) * -1i, firstTrailingBit(-12193i), _wgslsmith_sub_i32(-10046i, 55340i))), 2147483647i);
    let var_4 = vec2<u32>(_wgslsmith_sub_u32(var_0.x, 0u), 0u) << (~select(var_0.wx, firstLeadingBit(~var_0.wy), select(vec2<bool>(true, false), vec2<bool>(true, false), any(vec3<bool>(true, true, false)))) % vec2<u32>(32u));
    var var_5 = _wgslsmith_f_op_f32(-590f * global0.x);
    let var_6 = Struct_2(min(func_1(), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, min(-(-14798i >> (u_input.b % 32u)), 1i));
}

