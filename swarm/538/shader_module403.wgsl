struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> vec4<u32> {
    var var_0 = Struct_2(-550f, Struct_1(arg_0, 16634i, firstTrailingBit(u_input.b), u_input.d));
    let var_1 = Struct_1(true, u_input.c.x, u_input.b, var_0.b.d);
    var var_2 = -25387i;
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, var_0.a)) * _wgslsmith_f_op_f32(1000f - 786f)) * var_0.a), Struct_1(var_1.a, max((i32(-1i) * -20935i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(59273u, var_1.d, 32065u), vec3<u32>(0u, var_0.b.d, var_1.c.x)) % 32u), i32(-1i) * -var_1.b), ~vec4<u32>(~4294967295u, var_1.d, _wgslsmith_sub_u32(var_1.c.x, var_1.d), select(var_1.d, 99210u, true)), ~u_input.b.x));
    let var_3 = Struct_1(!all(vec2<bool>(true, true)), -(~_wgslsmith_sub_i32(var_0.b.b, u_input.c.x) | abs(-1i)), ~reverseBits(u_input.b), var_1.d);
    return ~select(reverseBits(vec4<u32>(u_input.d, var_1.d, var_0.b.c.x, var_0.b.c.x) >> (vec4<u32>(4294967295u, var_3.c.x, var_0.b.d, var_1.c.x) % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(62446u, var_1.d, 4294967295u, var_0.b.d), select(var_3.c, var_3.c, arg_0)) % vec4<u32>(32u)), var_0.b.c, var_1.a & true);
}

fn func_2() -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-302f, 1178f))) * _wgslsmith_f_op_f32(floor(-430f)))), Struct_1(~u_input.c.x >= u_input.c.x, ~u_input.c.x, func_3(!any(vec4<bool>(true, true, true, false))), 0u));
    var var_1 = !all(!vec3<bool>(true, select(var_0.b.a, var_0.b.a, true), var_0.b.a));
    var var_2 = ~countOneBits(vec2<u32>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(27234u, u_input.d), vec2<u32>(20220u, 16827u))), ~u_input.a));
    var var_3 = select(var_0.b.c.xx, ~select(select(u_input.b.xz, u_input.b.wx, any(vec2<bool>(true, var_0.b.a))), max(var_0.b.c.ww, vec2<u32>(var_0.b.c.x, var_0.b.c.x)) & (vec2<u32>(51998u, var_2.x) << (var_0.b.c.zz % vec2<u32>(32u))), !(!var_0.b.a)), all(vec4<bool>(true, true, true, true)));
    return _wgslsmith_f_op_f32(-129f - var_0.a);
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(round(-1436f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1535f))), _wgslsmith_f_op_f32(func_2())));
    let var_1 = false;
    var var_2 = Struct_1(false, -29873i, _wgslsmith_div_vec4_u32(u_input.b, countOneBits(vec4<u32>(4294967295u, firstTrailingBit(0u), u_input.b.x, countOneBits(u_input.a)))), ~(_wgslsmith_mult_u32(u_input.a, ~u_input.d) >> (firstTrailingBit(u_input.d) % 32u)));
    var_2 = Struct_1(!(!var_2.a), u_input.c.x | _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(u_input.c.x, 1i), _wgslsmith_div_i32(u_input.c.x, u_input.c.x), ~48675i), vec3<i32>(_wgslsmith_sub_i32(-2147483647i, var_2.b), 0i, var_2.b & -14076i)), vec4<u32>(1u, 4294967295u, 4001u, _wgslsmith_dot_vec4_u32(~u_input.b, reverseBits(vec4<u32>(4294967295u, u_input.d, var_2.d, 80731u)))), var_2.c.x);
    var_2 = Struct_1((select(u_input.c.x, -1i, var_2.a) & var_2.b) > 0i, 14585i, var_2.c, ~55079u);
    return firstTrailingBit(35673u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(1i);
    var_0 = u_input.c.x;
    var_0 = u_input.c.x;
    var var_1 = false;
    let var_2 = vec2<u32>(_wgslsmith_sub_u32(u_input.d, u_input.d), _wgslsmith_clamp_u32(~4294967295u, u_input.b.x, ~(~reverseBits(u_input.d))));
    let var_3 = select(vec2<i32>(-(~(-398i)), ~(-u_input.c.x)) | u_input.c.zy, u_input.c.xx << (vec2<u32>(~22148u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(6620u, 1u, 4294967295u), func_1())) % vec2<u32>(32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1447f * -1402f))))) == _wgslsmith_div_f32(1700f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1440f))));
    var var_4 = !select(vec4<bool>(any(vec4<bool>(false, false, false, true)), false, any(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), false), select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, all(vec4<bool>(true, true, true, true)), any(vec4<bool>(false, true, false, false)), true), 2147483647i < u_input.c.x), !select(true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(565f)) + _wgslsmith_f_op_f32(abs(1227f))), _wgslsmith_div_f32(-202f, _wgslsmith_f_op_f32(sign(547f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -303f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1612f)))), -2147483647i, u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -1195f))) + _wgslsmith_f_op_f32(f32(-1f) * -1560f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(966f, -1381f))))));
}

