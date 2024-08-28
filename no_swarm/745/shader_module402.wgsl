struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 1u, 1u);

var<private> global1: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> bool {
    let var_0 = global1.a;
    global1 = Struct_2(Struct_1(countOneBits(firstTrailingBit(global1.a.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.b)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-3039f * _wgslsmith_f_op_f32(global1.b * 512f)), global1.b))));
    let var_1 = ~global1.a.a.x;
    let var_2 = global1.a;
    let var_3 = global1.a;
    return false;
}

fn func_3(arg_0: vec4<f32>) -> vec3<bool> {
    return select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), vec3<bool>(~_wgslsmith_sub_u32(39797u, 0u) <= global0.x, !any(vec4<bool>(true, true, true, true)), false), false);
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = vec4<bool>(false, func_2(), true, !all(func_3(vec4<f32>(-1305f, -1000f, -546f, arg_0))));
    let var_1 = global1.a;
    let var_2 = u_input.b;
    global0 = u_input.a.xzx;
    let var_3 = firstTrailingBit(u_input.c.x);
    return _wgslsmith_f_op_f32(f32(-1f) * -230f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(680f * 281f))), -1680f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, 1656f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, global1.b)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, global1.b) * vec2<f32>(global1.b, -559f)))))));
    var var_2 = vec2<i32>(_wgslsmith_add_i32(-1i, _wgslsmith_sub_i32(i32(-1i) * -1i, u_input.c.x)), 1i);
    let var_3 = _wgslsmith_dot_vec4_i32(min(vec4<i32>(firstLeadingBit(~(-8805i)), i32(-1i) * -u_input.c.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, -1i), vec3<i32>(var_2.x, u_input.d, 59541i)), _wgslsmith_mult_i32(2652i, global1.a.a.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(global1.a.a.x | 15420i, global1.a.a.x, 1i, _wgslsmith_mod_i32(-1i, -16692i)), max(vec4<i32>(global1.a.a.x, -16739i, 2147483647i, var_2.x) << (vec4<u32>(global0.x, 39861u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), vec4<i32>(global1.a.a.x, var_2.x, u_input.d, -30401i)))), _wgslsmith_add_vec4_i32(vec4<i32>(max(var_2.x, 35453i), 1i, countOneBits(global1.a.a.x), select(global1.a.a.x, -2147483647i, false)) | vec4<i32>(firstLeadingBit(global1.a.a.x), 1i, firstLeadingBit(global1.a.a.x), var_2.x), abs(vec4<i32>(global1.a.a.x, _wgslsmith_dot_vec2_i32(global1.a.a, global1.a.a), global1.a.a.x, -u_input.d))));
    var var_4 = !any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), false))) || (-1000f > _wgslsmith_f_op_f32(exp2(var_1.x)));
    let var_5 = _wgslsmith_dot_vec2_u32(u_input.a.xz << (vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(global0.x, 0u), _wgslsmith_dot_vec3_u32(u_input.a.wyw, u_input.a.wyw)), reverseBits(global0.x)) % vec2<u32>(32u)), global0.zz | vec2<u32>(abs(~u_input.a.x), 82368u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_3, u_input.d, 19392i), _wgslsmith_add_i32(~global1.a.a.x, firstTrailingBit(var_3)), global1.a.a.x << (var_5 % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.x - -483f), var_1.x, _wgslsmith_f_op_f32(select(1000f, -1374f, false)), _wgslsmith_f_op_f32(var_1.x - global1.b)) - vec4<f32>(global1.b, _wgslsmith_f_op_f32(f32(-1f) * -1222f), -485f, global1.b))));
}

