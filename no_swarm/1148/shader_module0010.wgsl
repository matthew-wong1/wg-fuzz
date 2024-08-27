struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<f32>(823f, -1534f)));

var<private> global1: bool = true;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = ~(u_input.b.zzw >> (vec3<u32>(0u, 1u, u_input.b.x) % vec3<u32>(32u)));
    let var_1 = global0[_wgslsmith_index_u32(max(countOneBits(var_0.x), ~89855u), 1u)];
    let var_2 = vec3<bool>(arg_0, false, !arg_0);
    var var_3 = !select(vec3<bool>(var_2.x, u_input.c.x <= (-47901i >> (0u % 32u)), all(vec4<bool>(var_2.x, true, var_2.x, true))), !select(!var_2, var_2, arg_0), vec3<bool>(var_2.x, false, false));
    global0 = array<Struct_1, 1>();
    return _wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_div_i32(-39925i, 24960i))), ~1i), countOneBits(_wgslsmith_add_vec2_i32(firstTrailingBit(firstLeadingBit(u_input.c.xy)), _wgslsmith_add_vec2_i32(u_input.c.zz ^ vec2<i32>(1i, -1i), countOneBits(vec2<i32>(-7696i, 2147483647i))))));
}

fn func_2(arg_0: bool, arg_1: i32) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -546f), -1648f))))));
    global1 = arg_0;
    let var_1 = -2147483647i ^ -(~func_3(true) | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 52890i, 5787i), u_input.c.ywx));
    var var_2 = var_0;
    var var_3 = _wgslsmith_sub_vec3_i32(vec3<i32>(~((u_input.c.x << (4294967295u % 32u)) >> (~0u % 32u)), var_1, i32(-1i) * -23294i), u_input.c.xzw);
    return !vec2<bool>(true | arg_0, all(vec3<bool>(1637f < var_0.a.x, false, arg_0 & arg_0)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: vec2<i32>) -> Struct_1 {
    global1 = all(arg_0.wyx);
    global1 = any(!func_2(true, u_input.c.x));
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-988f + 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1000f)))) - 498f), _wgslsmith_div_f32(1216f, 1f)) * vec3<f32>(1f, 1f, 1f));
    var var_1 = _wgslsmith_add_u32(~arg_1.x, _wgslsmith_dot_vec4_u32(~abs(u_input.b) | u_input.b, max(u_input.b ^ ~u_input.b, ~vec4<u32>(951u, 40593u, arg_1.x, 27246u))));
    var_1 = ~1u;
    return global0[_wgslsmith_index_u32(~countOneBits(50555u), 1u)];
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, -671f), vec4<f32>(203f, arg_1.a.x, -1373f, 2056f), vec4<bool>(arg_0, arg_0, true, arg_0))), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, arg_1.a.x, -542f, 1653f), vec4<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x))), vec4<f32>(arg_1.a.x, func_1(vec4<bool>(true, false, arg_0, false), u_input.b.wzx, u_input.a).a.x, _wgslsmith_f_op_f32(-1604f * -1208f), -1365f)))));
    global0 = array<Struct_1, 1>();
    var var_1 = vec2<bool>(true, select(arg_0, any(select(vec3<bool>(true, true, true), !vec3<bool>(arg_0, arg_0, false), true)), u_input.b.x >= 63569u));
    global1 = false;
    return StorageBuffer(u_input.c.x, min(min(~(~vec3<u32>(1u, 1u, u_input.b.x)), vec3<u32>(47159u, u_input.b.x, 1u)), u_input.b.xxz), reverseBits(u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~_wgslsmith_dot_vec2_u32(u_input.b.zx, u_input.b.xx & vec2<u32>(u_input.b.x, 26346u)) != ~_wgslsmith_mod_u32(~u_input.b.x | 13836u, 4294967295u);
    let var_0 = 0i;
    let var_1 = ~firstLeadingBit(u_input.b.x & abs(u_input.b.x));
    global1 = -183f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1675f)) + 598f)));
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-602f, 1000f) - _wgslsmith_f_op_f32(-496f * -113f))), _wgslsmith_f_op_f32(max(-477f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -435f) + _wgslsmith_f_op_f32(floor(2130f)))))));
    var var_3 = u_input.b.wy;
    let x = u_input.a;
    s_output = func_4(all(select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, true)), any(vec2<bool>(false, true)), var_1 == 4294967295u), true)), func_1(vec4<bool>(false, false, !all(vec3<bool>(true, false, true)), true), ~max(vec3<u32>(var_3.x, 70636u, var_1), ~vec3<u32>(1u, 11298u, var_1)), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0, 2147483647i), vec2<i32>(u_input.c.x, u_input.c.x)), u_input.c.zy)));
}

