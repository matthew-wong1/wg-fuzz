struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: i32) -> u32 {
    var var_0 = arg_1;
    let var_1 = Struct_1(~(var_0.yz ^ arg_1.yy), ~arg_1.xx, vec4<u32>(var_0.x, arg_0, 0u, ~42670u), abs(_wgslsmith_dot_vec2_u32((vec2<u32>(arg_0, 0u) << (arg_1.yx % vec2<u32>(32u))) & min(arg_1.xy, var_0.zx), countOneBits(abs(vec2<u32>(0u, 41908u))))), ~var_0.zz);
    var var_2 = _wgslsmith_add_vec3_u32(min(~firstTrailingBit(var_1.c.xww), arg_1), vec3<u32>(~arg_0, ~1u, _wgslsmith_dot_vec3_u32(var_1.c.wxy, _wgslsmith_sub_vec3_u32(arg_1 & vec3<u32>(var_0.x, var_0.x, 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_1.b.x, 32655u), var_1.c.xzy)))));
    var var_3 = var_1.c;
    let var_4 = var_1;
    return arg_1.x;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> u32 {
    return ~_wgslsmith_add_u32(~arg_2, func_3(~4294967295u, vec3<u32>(arg_1.d, arg_2, arg_2), u_input.a) << ((52421u & abs(arg_1.c.x)) % 32u));
}

fn func_1(arg_0: vec3<i32>) -> vec2<bool> {
    let var_0 = -(~(-(~_wgslsmith_sub_i32(arg_0.x, -74676i))));
    let var_1 = ~min(~vec4<u32>(1u, reverseBits(4294967295u), 1u, max(4294967295u, 0u)), vec4<u32>(~3969u, 1u, abs(~80065u), func_2(select(u_input.c.x, arg_0.x, false), Struct_1(vec2<u32>(103153u, 118590u), vec2<u32>(62641u, 4294967295u), vec4<u32>(4294967295u, 7722u, 29639u, 4294967295u), 6450u, vec2<u32>(74429u, 1u)), ~0u, max(var_0, -21065i))));
    var var_2 = -2147483647i;
    var var_3 = ~max(~6394i << (0u % 32u), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(arg_0, -u_input.c), abs(_wgslsmith_dot_vec3_i32(arg_0, arg_0))));
    let var_4 = 9458i;
    return !vec2<bool>(!((1u <= var_1.x) || true), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(63184u, 9445u, 19051u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(97374u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 1u))), _wgslsmith_add_vec3_u32(firstLeadingBit(select(vec3<u32>(1u, 26496u, 4294967295u), vec3<u32>(0u, 1u, 1u), vec3<bool>(false, false, false))), vec3<u32>(1u, 0u << (1u % 32u), ~94673u))));
    let var_1 = select(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), func_1(vec3<i32>(-41726i, 37224i, u_input.b.x))), vec2<bool>(true, true), vec2<bool>(select(false, false, true), true)), func_1(u_input.b.www ^ vec3<i32>(2147483647i, 1i, -41854i)), vec2<bool>(all(select(func_1(vec3<i32>(0i, u_input.a, -1i)), vec2<bool>(true, true), func_1(vec3<i32>(u_input.b.x, u_input.a, 2147483647i)))), false));
    let var_2 = 1u;
    var var_3 = 1u;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(548f))), _wgslsmith_f_op_f32(f32(-1f) * -1219f))) + 308f), -714f, _wgslsmith_f_op_f32(f32(-1f) * -1295f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-709f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.xz, select(_wgslsmith_dot_vec3_i32(u_input.b.yzx, vec3<i32>(_wgslsmith_sub_i32(u_input.a, -2147483647i), -1i, -1i)), 1i, !(!any(vec2<bool>(var_1.x, var_1.x)))), ~vec2<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_0.x, 1u, 0u), vec3<u32>(var_0.x, 0u, var_0.x), false), vec3<u32>(var_2, var_2, var_0.x)), 32129u), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(var_4.x)), _wgslsmith_f_op_f32(floor(var_4.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_4.x, var_4.x), var_4.yw)) * _wgslsmith_f_op_vec2_f32(-var_4.yy)) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(805f, 225f) * var_4.zy), var_4.zz))))), _wgslsmith_div_vec3_i32(vec3<i32>(~reverseBits(u_input.a), -select(-8048i, 2147483647i, var_1.x), -71830i), ~(-firstLeadingBit(u_input.b.zzw))));
}

