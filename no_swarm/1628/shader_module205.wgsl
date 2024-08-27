struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_3,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_5) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-813f, 1000f, -168f), vec3<f32>(-446f, 1445f, -259f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1284f, 714f, -1000f)), arg_0)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1273f, 1948f)) + vec3<f32>(731f, 1034f, -1000f)))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(411f, -1532f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(164f - _wgslsmith_f_op_f32(-var_0.x))))), -372f, _wgslsmith_f_op_f32(f32(-1f) * -1252f));
    var_1 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(189f, _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(960f - 517f))))), 287f, 774f);
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(select(-1584f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -132f)), false));
    return firstTrailingBit(_wgslsmith_mod_u32(4294967295u, _wgslsmith_sub_u32(~u_input.d.x, u_input.d.x))) >> (1u % 32u);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = abs(_wgslsmith_clamp_vec2_u32(~(~u_input.d.xx & vec2<u32>(u_input.d.x, 812u)), u_input.d.xz, _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(21194u, 4294967295u), vec2<u32>(u_input.d.x, u_input.d.x)), vec2<u32>(u_input.d.x, u_input.d.x)) & reverseBits(~u_input.d.xz)));
    let var_1 = vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x);
    var var_2 = Struct_5(vec2<u32>(~(~var_0.x), var_0.x), Struct_3(reverseBits(~_wgslsmith_add_vec2_i32(u_input.a, vec2<i32>(0i, 51115i)))), vec4<bool>(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_div_f32(arg_1, arg_1)) < arg_1, true, false && (select(false, arg_0, arg_0) || true)), _wgslsmith_div_u32(func_3(true, true, Struct_5(var_0, Struct_3(vec2<i32>(var_1.x, 78148i)), vec4<bool>(arg_0, arg_0, false, arg_0), arg_0)), var_0.x) != 0u);
    var var_3 = 198f;
    var var_4 = Struct_5(var_0 >> (firstTrailingBit(firstTrailingBit(vec2<u32>(1u, 0u))) % vec2<u32>(32u)), Struct_3(vec2<i32>(u_input.c.x, -1i)), !var_2.c, arg_0);
    return Struct_1(var_2.c.yz, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1 * arg_1))) - -1400f), _wgslsmith_f_op_f32(trunc(-675f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(260f)), arg_1)), _wgslsmith_f_op_f32(floor(-889f)))), _wgslsmith_add_i32(-_wgslsmith_sub_i32(1i, 24783i) & reverseBits(u_input.a.x), 62232i), vec2<u32>(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_0.x, 14446u), var_2.a.x, 0u), _wgslsmith_mod_u32(func_3(all(vec2<bool>(var_4.c.x, arg_0)), any(var_4.c.yy), Struct_5(var_4.a, Struct_3(vec2<i32>(7162i, 34452i)), vec4<bool>(true, true, true, true), var_2.c.x)), _wgslsmith_dot_vec3_u32(~u_input.d, u_input.d))));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1) -> f32 {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.d.x, _wgslsmith_dot_vec3_u32(arg_1.wyy, min(u_input.d, vec3<u32>(18114u, arg_2.d.x, arg_1.x))), firstLeadingBit(17455u)), _wgslsmith_clamp_vec3_u32(~u_input.d, ~vec3<u32>(19200u, u_input.d.x, 1u) & select(arg_1.zxy, vec3<u32>(4294967295u, 4294967295u, arg_2.d.x), false), arg_1.yxx)), max(4357u, u_input.d.x), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(39064u << (1u % 32u), abs(4294967295u), ~u_input.d.x, ~arg_2.d.x), ~arg_1 & abs(vec4<u32>(4294967295u, arg_2.d.x, 4294967295u, 4294967295u)))));
    var var_1 = _wgslsmith_f_op_f32(-519f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_2.b.x))))));
    var var_2 = Struct_5(_wgslsmith_div_vec2_u32(vec2<u32>(min(~9424u, 1u), u_input.d.x), _wgslsmith_div_vec2_u32(~arg_1.yx << (firstTrailingBit(vec2<u32>(0u, 0u)) % vec2<u32>(32u)), abs(~arg_1.zw))), Struct_3(min((u_input.a ^ vec2<i32>(arg_2.c, arg_2.c)) & vec2<i32>(arg_0, arg_0), ~firstTrailingBit(u_input.b.zz))), !select(vec4<bool>(!arg_2.a.x, select(true, arg_2.a.x, arg_2.a.x), all(vec2<bool>(arg_2.a.x, true)), true), select(vec4<bool>(false, true, true, arg_2.a.x), !vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, arg_2.a.x), true), select(select(vec4<bool>(arg_2.a.x, true, true, true), vec4<bool>(true, false, arg_2.a.x, arg_2.a.x), vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, false)), !vec4<bool>(arg_2.a.x, true, true, true), select(vec4<bool>(arg_2.a.x, true, true, false), vec4<bool>(arg_2.a.x, true, arg_2.a.x, arg_2.a.x), vec4<bool>(arg_2.a.x, arg_2.a.x, false, true)))), !(true | (true || (u_input.b.x >= u_input.c.x))));
    var_1 = arg_2.b.x;
    var var_3 = select(select(vec3<bool>(!(!arg_2.a.x), var_2.d, true), vec3<bool>(false, true, var_2.d), !vec3<bool>(arg_2.a.x & var_2.c.x, u_input.d.x > u_input.d.x, !arg_2.a.x)), !vec3<bool>(arg_2.a.x & (var_0.x <= 39826u), all(select(var_2.c, vec4<bool>(var_2.d, var_2.d, true, var_2.c.x), var_2.d)), var_2.c.x == var_2.d), vec3<bool>(!(arg_0 < -3279i), all(vec2<bool>(!var_2.c.x, var_2.d)), func_2(all(vec2<bool>(true, false)), -784f, ~vec2<i32>(35851i, u_input.b.x)).a.x));
    return arg_2.b.x;
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_2(Struct_1(vec2<bool>(true, true), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1181f * -754f), _wgslsmith_f_op_f32(sign(1153f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(949f * 421f), -170f)), _wgslsmith_f_op_f32(func_4(-u_input.a.x, vec4<u32>(0u, 4294967295u, u_input.d.x, 7567u), func_2(false, -198f, vec2<i32>(u_input.b.x, u_input.a.x))))), 50250i, min(~firstTrailingBit(u_input.d.zx), abs(vec2<u32>(u_input.d.x, 11862u)))));
    var var_1 = Struct_2(Struct_1(vec2<bool>(true, !var_0.a.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2308f, 169f, var_0.a.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b.x, var_0.a.b.x, 2105f)), false))), _wgslsmith_mod_i32(u_input.b.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -24802i, -24955i, u_input.b.x), u_input.b)), reverseBits(abs(var_0.a.d & vec2<u32>(17011u, 4294967295u)))));
    var var_2 = Struct_3(u_input.c.xy);
    let var_3 = Struct_4(-300f);
    var_1 = Struct_2(Struct_1(vec2<bool>(var_0.a.a.x, false), var_1.a.b, var_1.a.c, _wgslsmith_clamp_vec2_u32(~u_input.d.zx, reverseBits(vec2<u32>(33481u, var_0.a.d.x)), u_input.d.xz)));
    return StorageBuffer(u_input.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.b.x + _wgslsmith_f_op_f32(var_3.a - -409f)) * var_1.a.b.x), 1000f, any(vec4<bool>(false, var_1.a.a.x, var_1.a.a.x, false)) == true)), ~(_wgslsmith_mult_u32(var_0.a.d.x, _wgslsmith_div_u32(var_0.a.d.x, var_1.a.d.x)) & u_input.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(var_0.a.a.x, var_3.a, u_input.b.yz).b.x * _wgslsmith_f_op_f32(trunc(509f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a.b.x + var_0.a.b.x))))), _wgslsmith_add_i32(-min(var_1.a.c, var_2.a.x), i32(-1i) * -68005i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mult_i32(~(~(-1i)), firstLeadingBit(firstTrailingBit(firstLeadingBit(15117i))));
    let x = u_input.a;
    s_output = func_1();
}

