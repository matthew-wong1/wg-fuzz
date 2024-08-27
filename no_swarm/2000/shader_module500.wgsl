struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: Struct_2,
    d: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<i32> = vec4<i32>(-1i, 0i, -1i, i32(-2147483648));

var<private> global2: vec4<i32> = vec4<i32>(1i, -1300i, 2147483647i, 18517i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>) -> u32 {
    let var_0 = vec2<i32>(_wgslsmith_add_i32(arg_0.b, ~(-1438i)), 1i);
    let var_1 = arg_1;
    let var_2 = arg_0.c;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_0.d.x, arg_0.c.a.x)))))) * -2584f));
    let var_4 = false;
    return u_input.c;
}

fn func_3(arg_0: f32, arg_1: vec2<bool>) -> vec4<u32> {
    let var_0 = _wgslsmith_sub_i32(-41506i, -46689i);
    global0 = -136f;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-498f, -829f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-293f, arg_0), vec2<f32>(arg_0, arg_0)))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0, arg_0)), -771f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - -1587f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-319f, 763f)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, 1334f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-918f, 177f)), arg_1)))));
    let var_2 = !vec4<bool>(true, any(!vec3<bool>(true, true, arg_1.x)), !(-u_input.e != _wgslsmith_dot_vec2_i32(u_input.b.zy, global2.xx)), select(true, true, arg_1.x));
    let var_3 = _wgslsmith_clamp_u32(~u_input.c, 0u, _wgslsmith_dot_vec3_u32(firstLeadingBit(abs(vec3<u32>(u_input.c, 6840u, u_input.c)) >> (min(vec3<u32>(u_input.c, u_input.c, 79513u), vec3<u32>(u_input.c, u_input.c, u_input.c)) % vec3<u32>(32u))), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 38931u, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c)) << ((vec3<u32>(16345u, 13779u, u_input.c) | vec3<u32>(u_input.c, 4294967295u, u_input.c)) % vec3<u32>(32u))));
    return vec4<u32>(~_wgslsmith_add_u32(u_input.c, firstLeadingBit(var_3)), var_3 & 4294967295u, u_input.c, ~_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(u_input.c, u_input.c, 4294967295u)) ^ abs(vec3<u32>(12271u, 0u, u_input.c)), ~(~vec3<u32>(u_input.c, u_input.c, 0u))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: i32) -> vec4<i32> {
    global2 = vec4<i32>(-1i, ~(~(-arg_2)), _wgslsmith_dot_vec4_i32(max(vec4<i32>(global1.x, global1.x, 23722i, arg_0.d), vec4<i32>(-30974i, -2147483647i, 0i, -23799i)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, -6598i, 0i, u_input.b.x), vec4<i32>(u_input.a, u_input.b.x, arg_2, -8799i)), vec4<i32>(u_input.a, -1i, -28716i, arg_0.d), !vec4<bool>(false, arg_0.c.d.x, arg_0.c.d.x, false))), ~(_wgslsmith_clamp_i32(arg_0.b.x, arg_2, global2.x) ^ global1.x)) ^ -firstLeadingBit(-(~vec4<i32>(arg_2, 1i, u_input.d, global1.x)));
    var var_0 = vec2<bool>(false, u_input.c > ~_wgslsmith_div_u32(~12465u, 1u & arg_0.a.x));
    let var_1 = arg_0;
    var var_2 = vec4<bool>(false, false, all(vec2<bool>(arg_0.c.b.a, (var_1.a.x > 37947u) & !var_0.x)), any(!arg_0.c.d));
    global1 = firstTrailingBit(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(arg_0.d, -51493i, 48697i, global1.x)), max(vec4<i32>(arg_2, -24370i, var_1.d, 15299i), vec4<i32>(global2.x, global2.x, u_input.b.x, global2.x)), vec4<i32>(-60406i, global1.x, arg_0.b.x, global2.x)), -abs(vec4<i32>(1i, global2.x, -2147483647i, -1i))), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, ~(-1i), _wgslsmith_div_i32(var_1.d, global2.x), 2147483647i), -min(vec4<i32>(arg_2, 46346i, global1.x, -1i), vec4<i32>(-2147483647i, 2147483647i, -31420i, arg_0.d)))));
    return firstTrailingBit(vec4<i32>(arg_2 | _wgslsmith_sub_i32(global2.x, arg_0.b.x), abs(-1i), -arg_2 >> (u_input.c % 32u), arg_2)) | ~select(~countOneBits(vec4<i32>(15722i, var_1.b.x, 0i, global1.x)), -vec4<i32>(arg_0.d, global1.x, 0i, -2147483647i), arg_1.x | (arg_0.c.a.x >= 1123f));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: vec2<u32>) -> vec4<bool> {
    let var_0 = ~func_4(Struct_4(func_3(663f, vec2<bool>(true, true)), u_input.b.zz, Struct_2(arg_0.xx, Struct_1(true), Struct_1(false), vec2<bool>(false, false)), -1i), !vec3<bool>(true, any(vec2<bool>(false, true)), -113f <= arg_0.x), ~_wgslsmith_add_i32(global1.x, _wgslsmith_div_i32(-2147483647i, u_input.b.x)));
    global0 = arg_0.x;
    let var_1 = -926f;
    let var_2 = Struct_3(var_1, -2147483647i, Struct_2(arg_0.zy, Struct_1(false), Struct_1(true), select(!select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_1))))));
    var var_3 = 1u;
    return !select(vec4<bool>(!all(vec3<bool>(var_2.c.c.a, var_2.c.b.a, var_2.c.b.a)), !all(var_2.c.d), false, _wgslsmith_clamp_i32(var_0.x, 0i, 1i) != (global1.x ^ -2147483647i)), select(vec4<bool>(all(vec4<bool>(false, var_2.c.b.a, var_2.c.d.x, true)), var_2.c.c.a, var_2.c.d.x, !var_2.c.b.a), !vec4<bool>(true, var_2.c.c.a, false, true), true), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c, 0u, u_input.c, 19068u)), select(vec4<u32>(53665u, 29555u, 43573u, 0u), vec4<u32>(u_input.c, 0u, 64652u, 3243u), true)) < 25894u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(vec4<i32>(_wgslsmith_sub_i32(global1.x, 0i), _wgslsmith_sub_i32(global2.x ^ global2.x, _wgslsmith_dot_vec3_i32(global1.xxx, vec3<i32>(u_input.e, global2.x, 0i))), 2147483647i, _wgslsmith_dot_vec3_i32(~vec3<i32>(global1.x, 40791i, u_input.b.x), vec3<i32>(global2.x, global1.x, global2.x))) | ~vec4<i32>(-1i, -u_input.d, ~u_input.e, global2.x << (4294967295u % 32u)));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1369f, -1727f) - -863f)))));
    var var_1 = vec2<bool>(false, all(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-727f, -1403f, -1192f), vec3<f32>(1125f, -781f, -267f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1126f, -596f, 294f) + vec3<f32>(-1079f, 1273f, -1197f))), 1i, vec2<u32>(func_1(Struct_3(1860f, 1i, Struct_2(vec2<f32>(300f, -457f), Struct_1(false), Struct_1(false), vec2<bool>(true, true)), vec3<f32>(-246f, 224f, -549f)), vec2<u32>(u_input.c, 5944u)), 20090u | u_input.c))));
    var_1 = select(!(!vec2<bool>(var_1.x, true)), select(vec2<bool>(select(any(vec3<bool>(var_1.x, false, false)), false, var_1.x), true), vec2<bool>(var_1.x, var_1.x), !vec2<bool>(true, all(vec4<bool>(true, true, var_1.x, var_1.x)))), (max(-global1.x, select(global2.x, global2.x, false)) >= ~(~global2.x)) & any(vec2<bool>(true, true)));
    let var_2 = _wgslsmith_sub_u32(reverseBits(~(~u_input.c)) & u_input.c, 0u);
    let var_3 = Struct_1(true);
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(select(2054f, -768f, false)), -308f, -1226f)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(633f - 337f), 1812f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -208f)), 379f));
    let x = u_input.a;
    s_output = StorageBuffer(111f);
}

