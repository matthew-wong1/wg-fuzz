struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 47404u, 0u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32) -> vec4<i32> {
    return vec4<i32>(u_input.c, -(~_wgslsmith_add_i32(18620i, u_input.c)), u_input.b.x, ~u_input.c);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> u32 {
    global0 = abs(arg_1.c);
    var var_0 = arg_1;
    let var_1 = _wgslsmith_dot_vec4_i32(func_3(1u), select(select(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, 0i), vec4<i32>(u_input.c, -71690i, -2147483647i, u_input.b.x)), ~vec4<i32>(4995i, u_input.b.x, u_input.c, u_input.b.x)), vec4<i32>(-12837i, 0i & u_input.c, u_input.c | 0i, u_input.c), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), false))), _wgslsmith_mod_vec4_i32(min(~vec4<i32>(u_input.b.x, 0i, -1i, u_input.c), vec4<i32>(-31130i, u_input.b.x, u_input.c, u_input.b.x) << (vec4<u32>(arg_0.x, 0u, u_input.a.x, 4294967295u) % vec4<u32>(32u))), select(-vec4<i32>(2147483647i, u_input.c, -2147483647i, u_input.c), vec4<i32>(u_input.c, -1i, u_input.c, -5110i), false)), !select(true, all(vec4<bool>(true, false, false, false)), true)));
    var var_2 = !(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), 0u > var_0.c.x)));
    var var_3 = !(!(!select(select(vec2<bool>(var_2.x, false), vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, var_2.x)), select(vec2<bool>(var_2.x, false), vec2<bool>(false, var_2.x), var_2.x), vec2<bool>(true, true))));
    return firstTrailingBit(33215u);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<bool>) -> vec3<u32> {
    global0 = vec3<u32>(0u, ~4294967295u, 4294967295u);
    let var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(0u, ~firstLeadingBit(u_input.a.x), (_wgslsmith_mod_u32(u_input.a.x, 69600u) | global0.x) << (76334u % 32u)), max(abs(vec3<u32>(53211u, u_input.a.x, arg_0.x) ^ ~vec3<u32>(1u, 14830u, arg_0.x)), u_input.a.xxy));
    let var_1 = Struct_1(reverseBits(~vec3<u32>(global0.x, 0u, arg_0.x)) & u_input.a.xww, _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.zzy, vec3<u32>(0u, arg_0.x, global0.x)) | max(var_0.x, 1u), 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(5755u, 0u >> (var_0.x % 32u)), firstTrailingBit(vec2<u32>(u_input.a.x, u_input.a.x)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(~countOneBits(arg_0.x), u_input.a.x, u_input.a.x), reverseBits(~(~vec3<u32>(0u, 91482u, 4294967295u))), ~u_input.a.zxx));
    global0 = var_0;
    global0 = ~firstLeadingBit(~arg_0.zxz);
    return ~(~var_0 & u_input.a.zwy);
}

fn func_1() -> u32 {
    let var_0 = Struct_1(func_4(vec4<u32>(global0.x, func_2(u_input.a, Struct_1(vec3<u32>(u_input.a.x, 22462u, u_input.a.x), vec2<u32>(115220u, 0u), vec3<u32>(0u, 21922u, 51212u))), global0.x ^ _wgslsmith_clamp_u32(global0.x, 4294967295u, 14537u), 1u), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), ~abs(~u_input.a.yy), u_input.a.wzw);
    global0 = vec3<u32>(global0.x, _wgslsmith_sub_u32(22938u, ~(~_wgslsmith_clamp_u32(71231u, global0.x, var_0.a.x))), global0.x);
    let var_1 = u_input.a.wx;
    var var_2 = (2139u >> (reverseBits(min(_wgslsmith_dot_vec2_u32(global0.xz, var_1), 1u)) % 32u)) ^ (var_0.b.x >> (_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(~var_0.c.x, 65293u, 1u, countOneBits(u_input.a.x))) % 32u));
    global0 = u_input.a.zyx;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a.yyy;
    global0 = vec3<u32>(func_1(), (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, 1u) ^ vec3<u32>(4294967295u, 25623u, u_input.a.x), u_input.a.xyy) >> ((60616u ^ ~global0.x) % 32u)) | 1u, min(~50057u, _wgslsmith_dot_vec3_u32(u_input.a.wzx, firstLeadingBit(u_input.a.yzx) & u_input.a.wwx)));
    let var_0 = Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(abs(u_input.a.x) ^ 0u, u_input.a.x, ~(~18014u)), u_input.a.zwz, (u_input.a.xxw ^ u_input.a.wwy) ^ vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, global0.x, global0.x, 6200u)), func_1(), 4294967295u)), abs(~firstTrailingBit(vec2<u32>(global0.x, u_input.a.x) & u_input.a.xw)), abs(firstLeadingBit(_wgslsmith_mod_vec3_u32(u_input.a.xxx & u_input.a.zxx, ~vec3<u32>(27727u, global0.x, u_input.a.x)))));
    global0 = u_input.a.zzz;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1000f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3008f) + -1410f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -586f)), var_0.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-1592f, -1821f, 271f, -484f), vec4<f32>(-293f, 734f, 182f, -1125f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-137f, -246f, 560f, -1229f), vec4<f32>(819f, 749f, 458f, 750f))))))));
}

