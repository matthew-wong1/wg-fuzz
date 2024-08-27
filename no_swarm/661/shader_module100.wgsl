struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: bool) -> vec2<bool> {
    return select(vec2<bool>(false, any(select(!arg_0, select(vec2<bool>(false, arg_2), arg_0, arg_0), !arg_2))), arg_0, vec2<bool>(!(!arg_2), select(~arg_1.a > arg_1.a, false, true)));
}

fn func_3() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1982f), 1751f, 1000f))) + vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -509f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-969f + 1000f))))));
    var var_1 = ~(~_wgslsmith_clamp_u32(max(firstLeadingBit(u_input.a.x), u_input.b.x), min(4294967295u, u_input.b.x ^ u_input.b.x), firstLeadingBit(~u_input.b.x)));
    let var_2 = max(firstLeadingBit(vec3<i32>(reverseBits(-1520i), ~1i, _wgslsmith_mult_i32(30641i, -18957i)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.b.x, 45687u), vec3<u32>(u_input.b.x, u_input.b.x, 0u)) % vec3<u32>(32u))), vec3<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, 15540i), ~vec3<i32>(-26679i, 52099i, -6412i)), 1i) << (u_input.b.zzz % vec3<u32>(32u)));
    let var_3 = var_2.xx;
    let var_4 = abs(var_3.x);
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 694f), var_0.zy)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-249f, 249f)))))))));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1190f), -1722f)) * 1353f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -486f)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_3()))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-982f, -612f) + vec2<f32>(659f, -1105f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1095f, 1691f)))))));
    var var_1 = Struct_2(!all(func_1(vec2<bool>(true, true), Struct_4(-2147483647i, vec3<u32>(4294967295u, 0u, u_input.b.x), u_input.a.x), true)) | !all(vec4<bool>(true, true, false, false)), Struct_1(_wgslsmith_add_u32(u_input.b.x << ((u_input.b.x << (u_input.a.x % 32u)) % 32u), u_input.b.x), ~(~(u_input.b.x >> (u_input.a.x % 32u))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false))), firstLeadingBit(~(~vec4<i32>(-5265i, 2147483647i, -26470i, 0i)))));
    let var_2 = !vec2<bool>(var_0.x >= -2353f, any(!vec3<bool>(var_1.b.c, var_1.a, false)));
    var var_3 = ~var_1.b.d;
    let var_4 = firstLeadingBit(u_input.b.zw);
    return Struct_2(countOneBits(4294967295u) < max(_wgslsmith_add_u32(~var_1.b.a, max(3450u, var_4.x)), u_input.a.x), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(vec2<bool>(true, true), func_1(vec2<bool>(false, true), Struct_4(20159i, u_input.b.zyy, u_input.a.x), any(vec4<bool>(false, false, true, true))), true), vec2<bool>(false, all(vec3<bool>(false, true, true))), select(!(!func_1(vec2<bool>(true, false), Struct_4(-1i, vec3<u32>(47063u, u_input.b.x, u_input.a.x), 31908u), false)), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), false)), vec2<bool>(true, false)));
    var var_1 = func_2();
    var_1 = func_2();
    let var_2 = Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1525f - 997f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -276f), _wgslsmith_f_op_f32(round(-168f)), true)))));
    var_0 = !select(vec2<bool>(_wgslsmith_sub_i32(var_1.b.d.x, -1i) == var_1.b.d.x, any(vec2<bool>(false, false)) || var_1.a), vec2<bool>(var_0.x, !(!var_1.b.c)), any(vec4<bool>(var_0.x, true, false, false)));
    let var_3 = Struct_4(var_1.b.d.x, u_input.a.yxz, var_1.b.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(select(-76096i, 0i, true), 2147483647i), var_1.b.d.yz), abs(-4792i | _wgslsmith_add_i32(var_1.b.d.x, var_3.a)), countOneBits(-(i32(-1i) * -1i))), ~(func_2().b.b << (var_1.b.b % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-879f, var_2.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, 993f)), any(vec4<bool>(var_1.b.c, true, var_1.a, var_0.x)))))));
}

