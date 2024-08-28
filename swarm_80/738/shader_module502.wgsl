struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6> = array<f32, 6>(438f, 592f, 967f, -726f, -1242f, 1178f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: i32, arg_3: vec2<f32>) -> f32 {
    return _wgslsmith_f_op_f32(min(-1183f, 488f));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    var var_0 = Struct_3(-select(u_input.b.yz, u_input.b.zz, select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(arg_0.zxw - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(arg_2.b.yxx + vec3<f32>(arg_0.x, 1000f, -1048f)))))));
    var_0 = Struct_3(vec2<i32>(var_0.a.x | (-2147483647i >> (u_input.e.x % 32u)), -1i), _wgslsmith_div_vec3_f32(var_0.b, _wgslsmith_f_op_vec3_f32(arg_2.b.wyy - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.b.x, -1297f, arg_2.a)))))));
    let var_1 = arg_2;
    global0 = array<f32, 6>();
    var var_2 = Struct_3(vec2<i32>(countOneBits(-2147483647i ^ -var_0.a.x), var_0.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b.yzy)));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-265f, -725f)))))));
}

fn func_2() -> u32 {
    var var_0 = Struct_3(vec2<i32>(_wgslsmith_mult_i32(u_input.b.x, -1i), u_input.d) << (~_wgslsmith_clamp_vec2_u32(u_input.a.yz, vec2<u32>(0u, 0u), u_input.e) % vec2<u32>(32u)), vec3<f32>(503f, 1127f, global0[_wgslsmith_index_u32(u_input.e.x, 6u)]));
    var var_1 = Struct_4(Struct_1(u_input.b, vec3<f32>(global0[_wgslsmith_index_u32(6647u, 6u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(u_input.c, 6u)])), 1139f), _wgslsmith_f_op_f32(f32(-1f) * -3276f) < _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(379f, 375f, -338f, global0[_wgslsmith_index_u32(u_input.c, 6u)])), Struct_2(var_0.b.x, vec4<f32>(global0[_wgslsmith_index_u32(48797u, 6u)], var_0.b.x, var_0.b.x, 231f)), Struct_2(-969f, vec4<f32>(-549f, 1000f, var_0.b.x, 672f)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, 6459i == var_0.a.x, true))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, -2354f) + var_0.b.zx), _wgslsmith_f_op_vec2_f32(vec2<f32>(992f, -2323f) + vec2<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 6u)], -364f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -256f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_0.b.x)))))), countOneBits(_wgslsmith_div_i32(_wgslsmith_div_i32(~var_0.a.x, min(u_input.d, var_0.a.x)), (-3918i << (u_input.a.x % 32u)) >> (max(1u, u_input.a.x) % 32u))), Struct_1(u_input.b, _wgslsmith_div_vec3_f32(var_0.b, var_0.b), any(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), false)), select(vec4<bool>(any(vec3<bool>(false, true, false)), true, all(vec3<bool>(true, false, false)), false), vec4<bool>(all(vec4<bool>(false, false, false, true)), u_input.e.x != 1u, -192f <= global0[_wgslsmith_index_u32(25869u, 6u)], true), true)));
    var var_2 = Struct_2(-265f, vec4<f32>(_wgslsmith_f_op_f32(step(var_1.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b.x))))), var_1.d.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(343f)))), var_0.b.x));
    var_0 = Struct_3(var_0.a, var_2.b.zzy);
    let var_3 = vec3<bool>(false, true, _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, var_1.a.a.x, u_input.b.x, var_0.a.x), abs(~vec4<i32>(-1i, var_0.a.x, 13026i, -2147483647i))) != u_input.b.x);
    return u_input.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-959f, 535f, _wgslsmith_f_op_f32(1000f - global0[_wgslsmith_index_u32(1u, 6u)]), -1000f)))));
    var var_1 = countOneBits(_wgslsmith_mult_vec4_u32(~_wgslsmith_clamp_vec4_u32(min(vec4<u32>(18128u, 13506u, 1u, u_input.e.x), vec4<u32>(7265u, u_input.e.x, u_input.e.x, 71137u)), vec4<u32>(u_input.a.x, 4294967295u, 39385u, 0u) ^ vec4<u32>(1u, u_input.e.x, 15672u, u_input.e.x), ~vec4<u32>(4551u, u_input.c, u_input.a.x, 55207u)), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(14108u, u_input.e.x, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, 27498u, u_input.c)) ^ ~vec4<u32>(u_input.c, u_input.e.x, 82082u, u_input.c))));
    var var_2 = !any(vec2<bool>(all(vec2<bool>(false, true)), !all(vec2<bool>(true, false))));
    var_1 = vec4<u32>(_wgslsmith_clamp_u32(u_input.e.x >> (~0u % 32u), 19652u, 1u), abs(~81592u), var_1.x, ~1u);
    var var_3 = global0[_wgslsmith_index_u32(firstTrailingBit(~var_1.x), 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(abs(var_1.zzy | u_input.a)), -1083f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(678f, vec4<f32>(var_0.a, -114f, var_0.a, 587f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(450f, global0[_wgslsmith_index_u32(u_input.e.x, 6u)], -231f, 771f)), _wgslsmith_mod_i32(firstLeadingBit(u_input.b.x), _wgslsmith_mod_i32(u_input.d, -6582i)), var_0.b.wx)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -561f) - var_0.a))), i32(-1i) * -firstLeadingBit(_wgslsmith_add_i32(u_input.b.x, u_input.b.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.e.x, 58370u, 0u, 83334u) << ((vec4<u32>(4294967295u, 0u, 1u, var_1.x) >> (vec4<u32>(63222u, 10159u, 1u, var_1.x) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(~4294967295u, u_input.e.x << (var_1.x % 32u), _wgslsmith_dot_vec2_u32(var_1.ww, vec2<u32>(var_1.x, 4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 26993u, 19342u), var_1.xyz))), vec4<u32>(firstLeadingBit(1590u), _wgslsmith_add_u32(func_2(), _wgslsmith_dot_vec4_u32(vec4<u32>(26396u, u_input.e.x, u_input.a.x, 1u), vec4<u32>(4294967295u, var_1.x, 98424u, var_1.x))), _wgslsmith_clamp_u32(var_1.x, ~var_1.x, u_input.e.x), u_input.e.x)));
}

