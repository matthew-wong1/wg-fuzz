struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(10288i, -1i, 1i), vec3<i32>(2147483647i, 1i, -691i), vec3<i32>(57286i, i32(-2147483648), 12574i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_1(vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), true, !(-2147483647i == u_input.c.x), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(213f, 1180f))))), -1000f)));
    global0 = true;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.b - -1906f), -212f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b, var_0.b))))) - var_0.b);
    global1 = array<vec3<i32>, 3>();
    let var_2 = 45780u;
    return !(!var_0.a);
}

fn func_2() -> Struct_1 {
    global1 = array<vec3<i32>, 3>();
    global1 = array<vec3<i32>, 3>();
    global1 = array<vec3<i32>, 3>();
    var var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a.wwx, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x | u_input.b.x, ~abs(4294967295u)), 3u)], global1[_wgslsmith_index_u32((21352u >> (1u % 32u)) ^ ~u_input.b.x, 3u)] ^ select(_wgslsmith_add_vec3_i32(u_input.c, u_input.c), vec3<i32>(u_input.c.x, 2147483647i, u_input.d.x) | global1[_wgslsmith_index_u32(u_input.b.x, 3u)], true)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), 3u)]);
    global0 = !all(vec3<bool>(true, true, true));
    return Struct_1(select(!select(func_3(), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, !any(vec4<bool>(true, true, true, true)), u_input.c.x > ~(-10665i), select(any(vec4<bool>(false, true, true, false)), any(vec4<bool>(true, true, true, true)), all(vec2<bool>(false, true)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, u_input.b.x > 0u), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-121f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -201f) + 910f))));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_2 {
    global0 = any(arg_0.a.yww);
    var var_0 = _wgslsmith_mult_i32(-reverseBits(1i), u_input.c.x);
    global1 = array<vec3<i32>, 3>();
    var_0 = 0i;
    var_0 = -reverseBits(u_input.c.x) >> ((~u_input.b.x >> ((u_input.b.x >> (~_wgslsmith_div_u32(u_input.b.x, 52754u) % 32u)) % 32u)) % 32u);
    return Struct_2(vec3<i32>(firstTrailingBit(i32(-1i) * -u_input.c.x), 2147483647i, _wgslsmith_dot_vec2_i32(~reverseBits(vec2<i32>(22698i, 3558i)), u_input.c.zz)), vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.a, abs(abs(vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, u_input.a.x)))), _wgslsmith_clamp_i32(select(-2147483647i, i32(-1i) * -1i, true), i32(-1i) * -u_input.a.x, 1i), 1i << (0u % 32u), 6644i), -min(countOneBits(u_input.a.x >> (u_input.b.x % 32u)), firstLeadingBit(-66941i)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, 1000f, 369f) - vec3<f32>(arg_0.b, -256f, arg_0.b))) + vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b), arg_0.b, -2254f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b, 899f, 257f), vec3<f32>(505f, arg_0.b, arg_0.b), arg_0.a.zyx)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(115f, arg_0.b, 1218f))), _wgslsmith_div_vec3_f32(vec3<f32>(-197f, arg_0.b, arg_0.b), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b, arg_0.b, 1011f), vec3<f32>(607f, 519f, arg_0.b), vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x)))), vec3<bool>(true, u_input.d.x != u_input.d.x, false))), func_3().x)));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_3 {
    let var_0 = arg_2.a.x;
    let var_1 = func_4(func_2(), arg_0).b.zx;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1139f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.b, arg_1.d.x))))), _wgslsmith_f_op_f32(min(arg_2.b, arg_1.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x))) - _wgslsmith_f_op_f32(f32(-1f) * -179f)));
    global0 = any(arg_2.a);
    global0 = var_0;
    return Struct_3(Struct_2(vec3<i32>(func_4(func_2(), arg_0 | arg_0).a.x, min(_wgslsmith_clamp_i32(var_1.x, 48866i, arg_1.b.x), reverseBits(u_input.c.x)), _wgslsmith_mult_i32(firstTrailingBit(var_1.x), min(-9914i, var_1.x))), vec4<i32>(16325i, 1i, func_4(Struct_1(arg_2.a, arg_2.b), arg_0).c, -var_1.x) >> (vec4<u32>(_wgslsmith_add_u32(arg_0, u_input.b.x), 4294967295u, u_input.b.x >> (0u % 32u), arg_0) % vec4<u32>(32u)), countOneBits(-(~(-5573i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(531f, _wgslsmith_f_op_f32(f32(-1f) * -843f), var_2.x))), abs(~u_input.b), arg_1.a.zx, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(808f)), _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-arg_1.d.x))));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: u32) -> f32 {
    let var_0 = func_5(1u, func_4(func_2(), 17035u), Struct_1(!vec4<bool>(true, func_2().a.x, true, u_input.a.x == u_input.a.x), func_2().b));
    global1 = array<vec3<i32>, 3>();
    var var_1 = _wgslsmith_mult_u32(select(arg_1, ~39399u, true), 4294967295u);
    var_1 = _wgslsmith_sub_u32(~(~43182u), var_0.b.x & arg_2);
    let var_2 = func_5(9381u, var_0.a, Struct_1(vec4<bool>(func_3().x, true, false, true), -161f)).a;
    return _wgslsmith_f_op_f32(1811f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d - arg_0) - _wgslsmith_f_op_f32(step(var_0.d, var_2.d.x))));
}

fn func_6(arg_0: f32) -> StorageBuffer {
    global1 = array<vec3<i32>, 3>();
    global1 = array<vec3<i32>, 3>();
    global1 = array<vec3<i32>, 3>();
    global1 = array<vec3<i32>, 3>();
    var var_0 = select(!select(func_2().a.zww, !func_2().a.ywz, !select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, false), true)) || all(vec3<bool>(true, false, true)), !select(func_2().a.x, true, true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-353f, -1000f)) != arg_0), vec3<bool>(true, true, true));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(min(arg_0, 931f)), _wgslsmith_div_f32(-561f, arg_0), _wgslsmith_f_op_f32(max(arg_0, arg_0))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, arg_0) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, -956f) - vec4<f32>(arg_0, -1733f, arg_0, arg_0)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(908f, 101f, arg_0, arg_0), vec4<f32>(arg_0, arg_0, arg_0, -117f)))))), -firstTrailingBit(vec3<i32>(-u_input.d.x, abs(u_input.c.x), reverseBits(u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-629f, 1403f)) + _wgslsmith_div_f32(2517f, -1605f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -729f))))), _wgslsmith_f_op_f32(abs(-891f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-629f)))))), 2041f);
    var var_1 = true;
    var_1 = !(!((_wgslsmith_mult_i32(u_input.a.x, u_input.d.x) >> (8973u % 32u)) < -u_input.a.x));
    global0 = true;
    global1 = array<vec3<i32>, 3>();
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-675f - _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(select(-184f, -177f, true)), _wgslsmith_add_u32(4294967295u, u_input.b.x), _wgslsmith_sub_u32(1u, u_input.b.x)))))));
}

