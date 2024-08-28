struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 26> = array<vec4<bool>, 26>(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false));

var<private> global1: bool;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>) -> f32 {
    global1 = false;
    global0 = array<vec4<bool>, 26>();
    global1 = ~u_input.a.x != ~(u_input.a.x & u_input.a.x);
    var var_0 = ~u_input.a.xz;
    return _wgslsmith_f_op_f32(step(2595f, 371f));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<i32>) -> i32 {
    var var_0 = (false & all(vec3<bool>(true, true, true))) != all(vec2<bool>(true, true));
    let var_1 = Struct_2(-2346f);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(max(var_1.a, var_1.a)));
    let var_3 = abs(_wgslsmith_mod_vec2_u32(min(~vec2<u32>(25640u, u_input.a.x) & select(u_input.a.zw, vec2<u32>(u_input.a.x, 30704u), false), u_input.a.wx), _wgslsmith_div_vec2_u32(u_input.a.wz, u_input.a.yx)));
    let var_4 = Struct_1(u_input.a.x, arg_1.x, select(vec4<bool>(any(vec4<bool>(true, false, false, false)), _wgslsmith_f_op_f32(round(var_2.a)) > _wgslsmith_f_op_f32(var_2.a - var_2.a), (arg_0.x < arg_0.x) || true, -2907i != (u_input.b << (1244u % 32u))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~select(var_3.x, 1u, false), 1u >> (_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) % 32u)), 26u)], vec4<bool>(true || all(vec3<bool>(false, false, true)), all(vec4<bool>(true, false, true, true)), false, true)));
    return max(select(countOneBits(u_input.b), 2147483647i, all(select(global0[_wgslsmith_index_u32(var_4.a, 26u)], vec4<bool>(var_4.c.x, var_4.c.x, var_4.c.x, false), select(vec4<bool>(var_4.c.x, var_4.c.x, var_4.c.x, var_4.c.x), vec4<bool>(true, false, true, false), global0[_wgslsmith_index_u32(var_4.a, 26u)])))), u_input.b);
}

fn func_2() -> f32 {
    global0 = array<vec4<bool>, 26>();
    global1 = false;
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1266f)));
    let var_1 = func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -854f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(func_3(45771u, vec4<i32>(u_input.b, u_input.b, u_input.b, 1i)))))), var_0.a, _wgslsmith_f_op_f32(func_3(1u, -abs(vec4<i32>(0i, u_input.b, u_input.b, u_input.b)))), _wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-var_0.a))))), vec3<i32>(u_input.b, firstTrailingBit(_wgslsmith_mod_i32(1i, u_input.b)) ^ u_input.b, -9797i & ~firstTrailingBit(u_input.b)));
    let var_2 = ~21992u;
    return var_0.a;
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-110f * -167f));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(min(var_0.a, var_0.a)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -827f)) * _wgslsmith_div_f32(-1033f, _wgslsmith_f_op_f32(sign(var_0.a))))) - _wgslsmith_f_op_f32(func_2()));
    var var_2 = all(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)))) & false;
    let var_3 = var_0;
    let var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2())));
    return Struct_2(-1189f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(~_wgslsmith_mult_i32(firstTrailingBit(3099i), ~u_input.b)) >= 2147483647i;
    var var_0 = vec3<bool>(!(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -346f), _wgslsmith_f_op_f32(1902f * -700f))) == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-304f, 684f)), 660f))), true, 0i > u_input.b);
    let var_1 = func_1(u_input.a.wzw, abs(u_input.b), _wgslsmith_div_vec3_u32(~u_input.a.xxy, reverseBits(u_input.a.yyx)));
    var var_2 = -341f;
    var_2 = 394f;
    var var_3 = ~min(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, u_input.a.x), ~11961u)), ~u_input.a.x);
    var var_4 = ~_wgslsmith_clamp_vec2_u32(u_input.a.wz, abs(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a.xy)) << (~(u_input.a.xx >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(abs(vec2<u32>(u_input.a.x, 23152u)), ~vec2<u32>(u_input.a.x, 4294967295u)) | reverseBits(_wgslsmith_sub_vec2_u32(u_input.a.xw, vec2<u32>(0u, u_input.a.x))));
    var_0 = select(vec3<bool>(!var_0.x, any(var_0.zz), var_0.x), vec3<bool>(false, !(var_4.x <= countOneBits(4294967295u)), !any(vec3<bool>(false, var_0.x, var_0.x))), (1u <= min(u_input.a.x, _wgslsmith_add_u32(var_4.x, 1006u))) && any(select(vec3<bool>(var_0.x, false, var_0.x), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, false, var_0.x), true), !vec3<bool>(var_0.x, false, var_0.x))));
    var var_5 = -(vec2<i32>(-1i) * -vec2<i32>(u_input.b, u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(62986u, 1369f, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(531f + 1162f), var_1.a, _wgslsmith_f_op_f32(select(-166f, -232f, true))))))), _wgslsmith_div_vec3_i32(-vec3<i32>(~var_5.x, u_input.b, abs(u_input.b)), vec3<i32>(~(-18139i), var_5.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_5.x, 3805i, u_input.b), vec4<i32>(var_5.x, u_input.b, u_input.b, 73461i))) ^ select(vec3<i32>(var_5.x, -2147483647i, var_5.x), _wgslsmith_mult_vec3_i32(vec3<i32>(-25605i, 2147483647i, -21603i), vec3<i32>(var_5.x, var_5.x, 0i)), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, false, true), vec3<bool>(true, var_0.x, false)))));
}

