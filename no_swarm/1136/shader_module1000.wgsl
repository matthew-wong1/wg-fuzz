struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(13356i, i32(-2147483648), -95434i, -1i, 0i, -29090i, -4142i, 135i, -25744i, -13769i, -37487i, 0i, 3496i, 2147483647i, 0i);

var<private> global1: array<bool, 4> = array<bool, 4>(true, true, false, true);

var<private> global2: Struct_1;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = vec3<f32>(-679f, arg_0.c.a, -182f);
    var var_1 = select(!vec2<bool>(true, all(select(vec4<bool>(false, global1[_wgslsmith_index_u32(arg_0.d, 4u)], global1[_wgslsmith_index_u32(u_input.a.x, 4u)], true), vec4<bool>(arg_0.b, false, global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(u_input.c.x, 4u)]), vec4<bool>(arg_0.b, true, arg_0.b, false)))), vec2<bool>(_wgslsmith_mult_i32(0i, -1i) <= arg_0.e, _wgslsmith_f_op_f32(max(global2.a, _wgslsmith_f_op_f32(-var_0.x))) >= 585f), true);
    var var_2 = select(vec2<bool>(true, select(var_1.x, true, any(vec3<bool>(false, arg_0.b, var_1.x)))), !vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 4u)] != (var_1.x | true)), var_1.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(463f, arg_0.c.a, arg_0.c.a, arg_0.c.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c.a, 938f, 741f, global2.a), vec4<f32>(arg_0.c.a, -424f, arg_0.c.a, -1706f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, -254f, arg_0.c.a, 541f))), var_2.x)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.a, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1395f)), _wgslsmith_f_op_f32(min(-213f, _wgslsmith_f_op_f32(arg_0.c.a - 1179f)))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1394f, -452f)))), _wgslsmith_f_op_f32(-global2.a), global2.a, _wgslsmith_div_f32(628f, _wgslsmith_f_op_f32(select(310f, -1360f, arg_0.b))))));
    var_2 = vec2<bool>(select(arg_0.b, select(any(!vec3<bool>(false, var_1.x, true)), all(!vec4<bool>(false, true, false, var_2.x)), false), any(vec3<bool>(false, select(true, false, true), var_3.x < global2.a))), var_2.x);
    return !(!(!select(!vec2<bool>(global1[_wgslsmith_index_u32(arg_0.d, 4u)], var_1.x), select(vec2<bool>(true, var_2.x), vec2<bool>(global1[_wgslsmith_index_u32(63326u, 4u)], false), vec2<bool>(var_2.x, global1[_wgslsmith_index_u32(4294967295u, 4u)])), vec2<bool>(true, true))));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1527f)))) * global2.a), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-20220i, 1i & arg_2.x, global0[_wgslsmith_index_u32(u_input.c.x, 15u)] | -55859i, global0[_wgslsmith_index_u32(~u_input.c.x, 15u)]), arg_2), abs(vec3<i32>(0i, _wgslsmith_div_i32(u_input.b, 1i), global0[_wgslsmith_index_u32(4496u, 15u)]) & firstLeadingBit(global2.c)));
    let var_1 = _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(select(~u_input.a, abs(~u_input.d.yw), func_3(Struct_3(42054u, false, Struct_1(arg_1, vec4<i32>(global2.b.x, var_0.b.x, -2147483647i, 12365i), vec3<i32>(1i, global0[_wgslsmith_index_u32(u_input.d.x, 15u)], 965i)), 4294967295u, -2147483647i))), ~vec2<u32>(1u, select(u_input.d.x, u_input.a.x, arg_0))), ~abs(~u_input.c));
    let var_2 = ~(~0u);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - 864f)), 1929f));
    var var_4 = Struct_4(max(abs(~26195u), 45463u) <= _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(u_input.c.x, 24386u, 7329u, u_input.c.x)), ~(~vec4<u32>(var_2, u_input.d.x, 1501u, 52293u))), vec3<u32>(var_1.x, ~_wgslsmith_mult_u32(23260u, u_input.d.x), 36265u) ^ (_wgslsmith_sub_vec3_u32(max(u_input.d.yyw, u_input.d.xzy), u_input.d.xzy) >> (~u_input.d.ywy % vec3<u32>(32u))));
    return Struct_1(_wgslsmith_f_op_f32(-var_0.a), ~firstLeadingBit(_wgslsmith_mod_vec4_i32(arg_2, vec4<i32>(12583i, u_input.b, global2.b.x, 10252i)) | -vec4<i32>(11570i, 45265i, arg_2.x, arg_2.x)), firstLeadingBit(max(abs(global2.b.wxx >> (var_4.b % vec3<u32>(32u))), countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -21871i, arg_2.x), arg_2.zxy, var_0.c)))));
}

fn func_1() -> Struct_3 {
    global0 = array<i32, 15>();
    let var_0 = global2.b.yyy;
    var var_1 = reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, var_0.x), max(reverseBits(_wgslsmith_div_vec2_i32(var_0.zy, global2.b.zw)), global2.c.yz | -global2.b.zx)));
    var_1 = var_0.yz;
    var var_2 = !global1[_wgslsmith_index_u32(select(~4294967295u, u_input.c.x, false), 4u)];
    return Struct_3(4294967295u, false, func_2(false, -464f, global2.b), 1645u, 0i);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: bool, arg_3: u32) -> f32 {
    global2 = arg_1.c;
    let var_0 = Struct_1(func_1().c.a, abs(_wgslsmith_mod_vec4_i32(-(arg_1.c.b | arg_1.c.b), abs(func_2(false, global2.a, global2.b).b))), ~(abs(global2.b.yyz) << (~abs(vec3<u32>(4294967295u, 22118u, arg_3)) % vec3<u32>(32u))));
    global1 = array<bool, 4>();
    var var_1 = global2.a;
    global0 = array<i32, 15>();
    return arg_1.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 4>();
    var var_0 = vec2<f32>(-916f, _wgslsmith_f_op_f32(func_4(abs(~(u_input.d.x << (41695u % 32u))), func_1(), global1[_wgslsmith_index_u32(4294967295u, 4u)], countOneBits(~1u))));
    global1 = array<bool, 4>();
    let var_1 = u_input.d.ywx;
    global1 = array<bool, 4>();
    var var_2 = abs(~(~1u));
    var var_3 = ~4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(((73640u ^ u_input.a.x) | 1u) >> (u_input.d.x % 32u), u_input.a.x), func_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~41018u, ~1u), 4u)], 246f, _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(global2.b, func_2(true, -316f, global2.b).b), vec4<i32>(_wgslsmith_mod_i32(37940i, global0[_wgslsmith_index_u32(u_input.d.x, 15u)]), -u_input.b, ~1i, func_2(true, var_0.x, global2.b).b.x), abs(abs(global2.b)))).b, _wgslsmith_f_op_f32(round(-593f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.a, var_0.x), vec2<f32>(var_0.x, -142f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a, -244f) * vec2<f32>(var_0.x, global2.a))), vec2<f32>(_wgslsmith_f_op_f32(var_0.x - -491f), func_1().c.a)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(-1067f, 463f, global1[_wgslsmith_index_u32(8826u, 4u)])), -2431f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, global2.a), vec2<f32>(-1171f, 1127f))), vec2<bool>(true, true)))));
}

