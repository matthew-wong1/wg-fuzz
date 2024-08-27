struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2() -> vec3<bool> {
    let var_0 = u_input.c.x;
    let var_1 = Struct_1(2381f, vec2<f32>(-1803f, _wgslsmith_div_f32(-629f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1000f, -405f)))))), _wgslsmith_div_vec3_u32(~_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a.yxw, u_input.a.xzx, u_input.a.xxz), vec3<u32>(u_input.d, 2710u, u_input.d) & vec3<u32>(30274u, 4294967295u, u_input.a.x)), vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, 1u), countOneBits(u_input.d), ~43585u)), ~14964u);
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-630f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.x + var_1.b.x), _wgslsmith_f_op_f32(ceil(var_1.a))), _wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1177f))), var_1.a));
    return vec3<bool>(false, any(vec3<bool>(true, true, true)), false);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1;
    var var_1 = var_0;
    var var_2 = arg_1;
    let var_3 = true;
    let var_4 = 68742u;
    return 35749u;
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    var var_0 = vec4<bool>(any(select(arg_0, !func_2(), _wgslsmith_add_i32(0i, u_input.c.x) == select(u_input.c.x, u_input.c.x, arg_0.x))), all(vec4<bool>(true, any(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)) && true, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, u_input.d, 0u, u_input.a.x)) > _wgslsmith_mod_u32(0u, u_input.d), false)), true, arg_0.x);
    let var_1 = ~(-u_input.c);
    var_0 = vec4<bool>(true, true && var_0.x, true && (~func_3(1098f, Struct_1(-1389f, vec2<f32>(-1000f, -1086f), vec3<u32>(u_input.d, 43741u, u_input.d), u_input.d)) <= _wgslsmith_mult_u32(~u_input.d, 73825u)), arg_0.x);
    var_0 = select(!(!select(!vec4<bool>(var_0.x, var_0.x, arg_0.x, var_0.x), select(vec4<bool>(arg_0.x, false, true, var_0.x), vec4<bool>(arg_0.x, false, false, false), vec4<bool>(false, false, true, false)), !var_0.x)), vec4<bool>(true, !var_0.x, all(vec2<bool>(u_input.d > u_input.d, var_0.x)), all(select(vec4<bool>(false, true, var_0.x, var_0.x), select(vec4<bool>(var_0.x, false, false, false), vec4<bool>(false, true, var_0.x, true), vec4<bool>(true, false, arg_0.x, arg_0.x)), select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(true, var_0.x, false, true), false)))), !vec4<bool>(select(var_0.x, true, arg_0.x), arg_0.x, func_2().x, var_0.x | arg_0.x));
    var var_2 = firstLeadingBit(37918u);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-893f - 1473f), _wgslsmith_f_op_f32(min(678f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), 207f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-923f)), _wgslsmith_f_op_f32(select(242f, -283f, true))) - -625f), -445f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(_wgslsmith_f_op_f32(func_1(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)))), -799f)), vec3<u32>(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec3_u32(~u_input.a.yxy, vec3<u32>(77437u, u_input.d, u_input.d) & vec3<u32>(u_input.a.x, u_input.d, u_input.a.x))) >> (vec3<u32>(4294967295u, ~u_input.a.x, u_input.d) % vec3<u32>(32u)), u_input.d);
    let var_1 = Struct_1(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(round(-1168f)), var_0.b.x), _wgslsmith_clamp_vec3_u32(u_input.a.xxy, vec3<u32>(~_wgslsmith_mod_u32(1u, 25459u), _wgslsmith_mult_u32(u_input.d << (u_input.a.x % 32u), _wgslsmith_mod_u32(1u, 4294967295u)), ~func_3(var_0.b.x, Struct_1(var_0.b.x, var_0.b, vec3<u32>(var_0.c.x, 1314u, u_input.d), 4294967295u))), ~u_input.a.xxy), 1u);
    let var_2 = ~countOneBits(abs(_wgslsmith_div_vec3_u32(var_0.c, firstTrailingBit(u_input.a.zxy))));
    var_0 = Struct_1(-532f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(879f, -1535f), vec2<f32>(1412f, var_1.a), true)))))), (firstTrailingBit(select(vec3<u32>(u_input.d, var_1.d, 23508u), var_2, vec3<bool>(false, true, true))) | var_0.c) >> (_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 43678u, _wgslsmith_div_u32(var_1.d, var_1.c.x)), u_input.a.xxx) % vec3<u32>(32u)), reverseBits(4487u));
    var var_3 = ~select(_wgslsmith_sub_u32(42034u, firstLeadingBit(firstLeadingBit(u_input.d))), _wgslsmith_mod_u32(countOneBits(var_1.d) ^ _wgslsmith_div_u32(1u, var_0.d), 1u), !all(func_2()));
    var var_4 = func_2().zy;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_mult_vec3_i32(-countOneBits(vec3<i32>(u_input.c.x, u_input.c.x, 69228i)), vec3<i32>(~12748i, u_input.c.x, u_input.c.x)), u_input.a.x, _wgslsmith_mod_i32(u_input.c.x, firstLeadingBit(i32(-1i) * -u_input.b)), var_2.x << (_wgslsmith_dot_vec4_u32(abs(u_input.a), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(var_1.c.x, 1u, var_2.x, u_input.d)), u_input.a)) % 32u));
}

