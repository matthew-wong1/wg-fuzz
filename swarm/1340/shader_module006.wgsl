struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    let var_0 = select(vec2<bool>(any(select(arg_1.c.a, vec4<bool>(arg_1.c.a.x, true, arg_2.c.b, arg_1.c.b), vec4<bool>(true, false, arg_2.c.d, arg_0.c.b))), arg_0.a.x >= _wgslsmith_f_op_f32(1070f - -1000f)), select(!select(!vec2<bool>(arg_3.c.d, arg_0.c.d), select(arg_1.c.a.xy, arg_2.c.a.yy, arg_2.c.a.x), all(vec3<bool>(arg_0.c.d, true, true))), select(arg_3.c.a.xx, select(vec2<bool>(true, false), vec2<bool>(true, arg_0.c.d), arg_2.c.a.wy), select(vec2<bool>(true, arg_2.c.a.x), !arg_3.c.a.yw, !arg_2.c.b)), vec2<bool>(any(arg_1.c.a.xwz), (arg_3.a.x == arg_3.a.x) | true)), true);
    let var_1 = arg_3.c;
    return _wgslsmith_add_i32(1i, -1i);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(vec4<bool>(true, true, true, true), true, u_input.b.x, true);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -435f);
    let var_2 = var_0.c;
    var_1 = _wgslsmith_f_op_f32(-785f + -1059f);
    var var_3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2227f + -1268f)), -2101f), func_3(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-577f, 1931f)), -702i, var_0, 2147483647i), Struct_2(vec2<f32>(1f, _wgslsmith_f_op_f32(-585f - -892f)), ~(-var_0.c), Struct_1(vec4<bool>(false, false, var_0.d, false), true, firstLeadingBit(22152i), !var_0.a.x), _wgslsmith_div_i32(_wgslsmith_clamp_i32(var_0.c, 0i, 24293i), -1i)), Struct_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1723f, 733f))), u_input.b.x, Struct_1(var_0.a, true, 20121i, true), _wgslsmith_clamp_i32(-30772i, u_input.b.x, ~(-1i))), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(196f, 1000f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1159f, 237f))), _wgslsmith_sub_i32(2147483647i, -var_2), Struct_1(var_0.a, false, -2147483647i, true), ~20318i)), var_0, ~(-_wgslsmith_div_i32(39409i, var_2) >> (1u % 32u)));
    return Struct_2(_wgslsmith_f_op_vec2_f32(floor(var_3.a)), firstTrailingBit(i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i, 0i, -57386i), vec4<i32>(0i, var_0.c, -2147483647i, var_3.b))), var_0, ~1i);
}

fn func_1(arg_0: vec4<u32>) -> vec4<bool> {
    var var_0 = func_2();
    var_0 = func_2();
    let var_1 = var_0.c.a.xxx;
    var var_2 = var_0.c.a.yxz;
    var_2 = !(!var_0.c.a.zyz);
    return select(!select(!vec4<bool>(var_1.x, true, var_0.c.b, true), vec4<bool>(true, any(vec3<bool>(false, var_2.x, var_2.x)), var_2.x, true), var_1.x), vec4<bool>(var_0.c.a.x, all(vec2<bool>(true, var_1.x && var_2.x)), !(_wgslsmith_f_op_f32(trunc(var_0.a.x)) > var_0.a.x), select(true || var_2.x, false, false)), !(!vec4<bool>(var_2.x, all(vec4<bool>(false, false, true, var_2.x)), !var_2.x, 2147483647i < u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(any(select(vec4<bool>(true, true, true, true), func_1(vec4<u32>(1u, 65694u, 0u, 0u)), vec4<bool>(false, func_1(vec4<u32>(0u, 21565u, 105028u, 0u)).x, func_1(vec4<u32>(25661u, 1u, 0u, 0u)).x, true))), true, !any(vec2<bool>(true, true)));
    let var_1 = _wgslsmith_mod_vec3_u32(abs(vec3<u32>(~(~50480u), ~4294967295u, firstLeadingBit(~0u))), vec3<u32>(min(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 53697u, 51766u, 4294967295u), vec4<u32>(4294967295u, 541u, 43572u, 4294967295u)), ~90827u) | _wgslsmith_add_u32(max(361u, 84158u), _wgslsmith_dot_vec3_u32(vec3<u32>(54506u, 1u, 1u), vec3<u32>(0u, 0u, 1u))), 24556u, _wgslsmith_add_u32(~1u, 1u) >> (1u % 32u)));
    let var_2 = var_0.x || false;
    var_0 = func_1(firstTrailingBit(~abs(firstTrailingBit(vec4<u32>(53432u, 17316u, var_1.x, var_1.x))))).xxy;
    let var_3 = Struct_1(vec4<bool>(true, !var_0.x, (_wgslsmith_f_op_f32(trunc(-138f)) != 129f) == (0i <= _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 30318i, u_input.a.x), u_input.b)), any(vec4<bool>(true, var_0.x, false, true))), (reverseBits(~u_input.b.x) >= -(2147483647i ^ u_input.b.x)) | false, 1i, true);
    let var_4 = func_2();
    let var_5 = -_wgslsmith_mod_vec2_i32(u_input.b.xy, vec2<i32>(_wgslsmith_mult_i32(var_4.c.c, var_4.d) >> (select(29785u, 12776u, var_3.b) % 32u), var_3.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_4.a.x - _wgslsmith_f_op_f32(round(func_2().a.x))))), var_1.x);
}

