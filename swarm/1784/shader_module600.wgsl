struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -982f;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec4<bool>) -> f32 {
    return _wgslsmith_f_op_f32(f32(-1f) * -611f);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: bool) -> u32 {
    let var_0 = Struct_2(arg_0.a, min(arg_1.x, 44841u), -(_wgslsmith_div_i32(~arg_0.d.a.x, 1i) & -firstTrailingBit(arg_0.d.a.x)), arg_0.d, ~vec2<u32>(_wgslsmith_mod_u32(arg_0.e.x & 4294967295u, ~57142u), ~firstTrailingBit(4294967295u)));
    var var_1 = Struct_2(countOneBits(vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.a.zyx, vec3<i32>(arg_0.c, -1i, 54225i)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c, arg_0.c), var_0.a.zx), _wgslsmith_dot_vec2_i32(arg_0.a.ww, arg_0.a.wx), reverseBits(36703i))) << (arg_1 % vec4<u32>(32u)), _wgslsmith_dot_vec2_u32(~arg_0.e & select(var_0.e >> (vec2<u32>(0u, 27625u) % vec2<u32>(32u)), vec2<u32>(60663u, 4294967295u), all(var_0.d.b)), reverseBits(abs(vec2<u32>(arg_1.x, 4294967295u)))), _wgslsmith_mod_i32(u_input.b, var_0.d.a.x), Struct_1(vec2<i32>(2147483647i, -arg_0.d.a.x), var_0.d.b), ~var_0.e ^ ~var_0.e);
    let var_2 = select(vec3<u32>(arg_1.x, ~var_0.e.x << (var_0.e.x % 32u), _wgslsmith_clamp_u32(51453u, ~38449u, firstTrailingBit(96009u))) << (arg_1.zzy % vec3<u32>(32u)), abs(arg_1.zyy & select(arg_1.ywy, ~vec3<u32>(arg_1.x, 8995u, 22784u), select(arg_0.d.b, var_0.d.b, vec3<bool>(arg_2, false, arg_2)))), arg_2);
    let var_3 = var_0;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-110f, 944f, true)), _wgslsmith_f_op_f32(-123f * 322f))), _wgslsmith_f_op_f32(abs(-611f)))) - _wgslsmith_f_op_f32(max(-939f, -1396f))));
    return abs(var_3.b);
}

fn func_1(arg_0: Struct_1) -> vec4<f32> {
    global0 = _wgslsmith_f_op_f32(func_2(8229u, Struct_2(_wgslsmith_mult_vec4_i32(max(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a.x, arg_0.a.x, 1i, u_input.b), vec4<i32>(-2147483647i, u_input.a, u_input.b, -17840i)), ~vec4<i32>(arg_0.a.x, -1i, u_input.b, arg_0.a.x)), vec4<i32>(0i, firstLeadingBit(arg_0.a.x), -u_input.b, firstLeadingBit(u_input.b))), abs(~_wgslsmith_clamp_u32(23781u, 1u, 1u)), arg_0.a.x, arg_0, ~vec2<u32>(1u, firstTrailingBit(1u))), !select(!select(vec4<bool>(arg_0.b.x, false, true, true), vec4<bool>(false, true, true, arg_0.b.x), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x)), !(!vec4<bool>(false, arg_0.b.x, arg_0.b.x, true)), !vec4<bool>(false, arg_0.b.x, false, false))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -1856f) * _wgslsmith_f_op_f32(abs(-1535f))))))));
    let var_0 = vec4<u32>(51821u, (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 44460u), vec3<u32>(1u, 8339u, 4294967295u)) << (abs(65489u) % 32u)) << (1u % 32u), func_3(Struct_2(-vec4<i32>(arg_0.a.x, 33977i, arg_0.a.x, 64136i), 1u, 2537i, arg_0, _wgslsmith_mult_vec2_u32(vec2<u32>(106655u, 8025u), vec2<u32>(24959u, 0u))), select(vec4<u32>(39187u, 22338u, 1u, 6041u), vec4<u32>(73777u, 35199u, 14704u, 46284u), vec4<bool>(true, false, arg_0.b.x, arg_0.b.x)) | ~vec4<u32>(21316u, 4294967295u, 1u, 0u), true), _wgslsmith_div_u32(abs(0u), abs(48794u))) >> (firstTrailingBit(_wgslsmith_mod_vec4_u32(max(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 94296u, 0u), vec4<u32>(71409u, 73207u, 1u, 0u))), ~select(vec4<u32>(56656u, 1703u, 8610u, 25575u), vec4<u32>(11243u, 4294967295u, 50488u, 0u), vec4<bool>(false, arg_0.b.x, arg_0.b.x, false)))) % vec4<u32>(32u));
    var var_1 = true;
    var var_2 = true;
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1189f, -1204f, -717f, 1000f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-327f - _wgslsmith_f_op_f32(step(-400f, 683f))));
    var var_0 = _wgslsmith_f_op_vec4_f32(func_1(Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a >> (0u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(20199i, u_input.b), vec2<i32>(30392i, u_input.b))), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, u_input.a), vec2<i32>(u_input.b, u_input.a), vec2<i32>(u_input.b, u_input.a)) & vec2<i32>(-29898i, 1i)), vec3<bool>(true || (-1i <= u_input.a), false, true))));
    let var_1 = Struct_2(vec4<i32>(-43710i, u_input.a, select(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, u_input.a, u_input.a, -1i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.a, u_input.a, u_input.b), vec4<i32>(u_input.b, u_input.b, 0i, -68999i))), u_input.a ^ -75643i, any(vec2<bool>(false, false))), u_input.b), 0u, _wgslsmith_add_i32(u_input.b, -_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, u_input.b, u_input.a), select(vec3<i32>(u_input.a, u_input.b, 0i), vec3<i32>(-2147483647i, u_input.b, -4983i), true))), Struct_1(max(firstTrailingBit(abs(vec2<i32>(-12145i, u_input.b))), ~vec2<i32>(u_input.a, u_input.a) >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))), vec3<bool>(true, true, true)), ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1231u, 0u, 1u, 33728u), vec4<u32>(4294967295u, 1u, 199u, 46778u)), ~4294967295u) << (~(~select(vec2<u32>(1u, 21981u), vec2<u32>(1u, 4294967295u), vec2<bool>(true, true))) % vec2<u32>(32u)));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1359f, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(605f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(2182f, 198f)), _wgslsmith_f_op_f32(step(var_0.x, -1000f)), !var_1.d.b.x)))), -807f, var_0.x);
    var var_2 = ~(~var_1.e.x & (_wgslsmith_add_u32(var_1.e.x, 1u << (0u % 32u)) | var_1.b));
    var var_3 = var_1.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.xz >> (~(~(~vec2<u32>(4294967295u, 0u))) % vec2<u32>(32u)));
}

