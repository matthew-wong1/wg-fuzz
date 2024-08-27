struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.a + global0.a) * vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), -1332f, _wgslsmith_f_op_f32(abs(arg_0.c.x)))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-arg_0.b.x, -1i, -12031i, firstTrailingBit(u_input.e.x)), firstTrailingBit(global0.b & vec4<i32>(11521i, 0i, 2147483647i, arg_0.b.x))), arg_0.c, ~u_input.a.yx);
    let var_0 = ~_wgslsmith_clamp_vec3_u32(reverseBits(u_input.d.xzz), ~reverseBits(u_input.d.xww), u_input.d.zwy);
    let var_1 = 4294967295u;
    var var_2 = 2130f;
    let var_3 = select(!select(vec2<bool>(-1653f != global0.a.x, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), true), vec2<bool>(true, true), vec2<bool>((select(global0.b.x, -1i, true) < 1i) != true, !select(true, any(vec3<bool>(true, false, false)), true)));
    return !vec4<bool>(any(select(vec3<bool>(var_3.x, true, var_3.x), select(vec3<bool>(var_3.x, true, var_3.x), vec3<bool>(var_3.x, false, true), vec3<bool>(var_3.x, false, var_3.x)), false)), false & (_wgslsmith_dot_vec4_i32(vec4<i32>(-26784i, -2147483647i, 0i, -58493i), global0.b) == _wgslsmith_mod_i32(-1i, 35609i)), true, var_3.x);
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: Struct_1) -> bool {
    var var_0 = 2620i;
    var_0 = _wgslsmith_mult_i32(1i | (abs(~u_input.e.x) << (_wgslsmith_add_u32(~1u, arg_3.d.x) % 32u)), 2628i);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.a.x))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1189f)), _wgslsmith_f_op_f32(min(arg_3.c.x, global0.c.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2033f, -999f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(880f, 246f, arg_0))))) - -192f);
    global0 = arg_3;
    let var_2 = arg_2.zzw;
    return arg_0;
}

fn func_2(arg_0: vec2<i32>) -> bool {
    var var_0 = func_4((_wgslsmith_mult_u32(0u, global0.d.x) | _wgslsmith_dot_vec4_u32(vec4<u32>(49017u, u_input.a.x, 8190u, 4294967295u), u_input.d)) >= ~_wgslsmith_mod_u32(global0.d.x, 1u), !select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, any(vec2<bool>(true, false))), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), func_3(Struct_1(vec3<f32>(-1390f, 410f, global0.c.x), vec4<i32>(0i, 28580i, arg_0.x, arg_0.x), global0.a.xz, u_input.c))), Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.c.x, -2010f, global0.a.x), _wgslsmith_f_op_vec3_f32(ceil(global0.a)))), -global0.b, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.c.x, 146f), _wgslsmith_div_vec2_f32(vec2<f32>(514f, global0.c.x), global0.c), true)), vec2<u32>(_wgslsmith_div_u32(28976u, 12400u), ~u_input.a.x))) || (true || all(vec2<bool>(any(vec3<bool>(true, true, false)), func_4(false, vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), Struct_1(vec3<f32>(1000f, -901f, 201f), global0.b, global0.a.xx, u_input.a.wz)))));
    global0 = Struct_1(global0.a, -(~global0.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(800f + -578f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.c) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, global0.a.x))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.x, global0.a.x) * vec2<f32>(-779f, -713f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(364f, -150f) - vec2<f32>(global0.a.x, global0.a.x)), func_3(Struct_1(vec3<f32>(479f, 446f, 1931f), global0.b, global0.a.zy, vec2<u32>(u_input.b, u_input.b))).zy)))), select(abs(vec2<u32>(u_input.d.x, 4294967295u) | ~global0.d), _wgslsmith_div_vec2_u32(select(global0.d ^ vec2<u32>(0u, global0.d.x), vec2<u32>(38005u, u_input.d.x), true), global0.d), vec2<bool>(1u < u_input.c.x, true)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.a.x, 1127f, global0.c.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, global0.c.x, -1412f))))), vec4<i32>(~(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.e.x, u_input.e.x), global0.b.xxz) & -global0.b.x), global0.b.x, arg_0.x >> (23537u % 32u), 2147483647i), global0.c, select(~vec2<u32>(15102u, _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(global0.d.x, 41720u))), vec2<u32>(~countOneBits(global0.d.x), abs(u_input.d.x)), vec2<bool>(true, true)));
    global0 = var_1;
    return false;
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: u32) -> bool {
    let var_0 = false;
    return (any(!(!vec2<bool>(var_0, var_0))) & true) && any(vec3<bool>(any(select(vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(false, false, false, true), vec4<bool>(false, var_0, true, true))), !func_2(vec2<i32>(17217i, u_input.e.x)), any(select(vec4<bool>(var_0, false, var_0, false), vec4<bool>(false, var_0, false, var_0), vec4<bool>(false, true, var_0, var_0)))));
}

fn func_5(arg_0: bool) -> Struct_1 {
    global0 = Struct_1(vec3<f32>(global0.a.x, -192f, _wgslsmith_f_op_f32(f32(-1f) * -516f)), -_wgslsmith_add_vec4_i32(-vec4<i32>(global0.b.x, u_input.e.x, u_input.e.x, global0.b.x), vec4<i32>(u_input.e.x, global0.b.x, u_input.e.x, 82105i)) | select(~global0.b, -vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, 1i), true), _wgslsmith_f_op_vec2_f32(-global0.a.zz), ~(~global0.d));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1184f), -574f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec4<i32>(u_input.e.x, 1i, 3233i, 18745i), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.c.x - -985f), 1f, u_input.e.x < 6620i)), _wgslsmith_f_op_f32(-global0.c.x)), firstTrailingBit(firstTrailingBit(~vec2<u32>(0u, 0u) ^ ~vec2<u32>(u_input.c.x, 4294967295u))));
    var var_0 = 1u;
    var var_1 = true;
    var var_2 = vec3<u32>(79950u, global0.d.x, firstLeadingBit(u_input.c.x) ^ global0.d.x);
    return Struct_1(global0.a, global0.b | -vec4<i32>(~(-2147483647i), -2147483647i, -10039i << (var_2.x % 32u), _wgslsmith_mod_i32(-45040i, -91737i)), vec2<f32>(_wgslsmith_f_op_f32(333f + _wgslsmith_f_op_f32(f32(-1f) * -183f)), _wgslsmith_f_op_f32(global0.c.x - _wgslsmith_f_op_f32(-2004f - _wgslsmith_f_op_f32(-1253f * global0.a.x)))), abs(_wgslsmith_mod_vec2_u32(var_2.xz, ~(vec2<u32>(u_input.d.x, 0u) | global0.d))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(all(vec3<bool>(true, true, func_1(u_input.e.x, Struct_2(u_input.b), _wgslsmith_f_op_vec3_f32(global0.a - vec3<f32>(global0.c.x, -1771f, 939f)), u_input.b))));
    let var_0 = all(vec3<bool>((_wgslsmith_add_u32(global0.d.x, 4294967295u) < select(global0.d.x, u_input.b, true)) || all(vec3<bool>(true, true, true)), false, true));
    let x = u_input.a;
    s_output = StorageBuffer(global0.d.x, global0.d.x);
}

