struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 19> = array<u32, 19>(4294967295u, 19794u, 9868u, 51409u, 74121u, 4294967295u, 34850u, 4294967295u, 0u, 4294967295u, 37655u, 0u, 1u, 60065u, 67835u, 56046u, 4294967295u, 30582u, 0u);

var<private> global2: array<bool, 17>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: vec2<u32>) -> u32 {
    return _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), _wgslsmith_mult_vec2_u32(arg_3, ~firstLeadingBit(~vec2<u32>(1u, global1[_wgslsmith_index_u32(99357u, 19u)]))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = ~vec3<u32>(28496u & global1[_wgslsmith_index_u32(~(~3533u), 19u)], global1[_wgslsmith_index_u32(1u, 19u)], 4294967295u);
    global0 = _wgslsmith_sub_u32(1u, func_3(vec4<u32>(u_input.b.x, ~global1[_wgslsmith_index_u32(24733u, 19u)], 47697u, u_input.c.x >> (0u % 32u)), vec3<bool>(false, true, arg_1.a == -341f), arg_0.b, firstTrailingBit(abs(var_0.zx)))) == u_input.c.x;
    var var_1 = 3807i;
    global0 = ~(-(~(-2147483647i))) >= -arg_0.b.x;
    var var_2 = Struct_2(vec2<i32>(~_wgslsmith_clamp_i32(arg_0.a.x >> (u_input.a % 32u), ~1i, arg_0.d), -23010i), arg_0.b, _wgslsmith_div_u32(var_0.x, 42079u), -_wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_0.d, 1i) & (i32(-1i) * -20970i), 1i, ~arg_0.a.x >> (4294967295u % 32u)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1336f, arg_1.a, 1313f, 1068f) - vec4<f32>(184f, -466f, -1130f, arg_1.a)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32) -> vec3<bool> {
    let var_0 = firstTrailingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(abs(_wgslsmith_mod_vec2_u32(u_input.b.zz, u_input.c.yw)), vec2<u32>(~0u, _wgslsmith_mod_u32(u_input.a, 1u)), vec2<u32>(0u ^ global1[_wgslsmith_index_u32(u_input.c.x, 19u)], _wgslsmith_add_u32(54337u, 14877u))), vec2<u32>(_wgslsmith_mult_u32(4294967295u, firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 19u)], 19u)])), 1u)));
    let var_1 = (countOneBits(_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, -23471i), abs(vec2<i32>(1858i, 1i)))) << (var_0 % 32u)) >> (~(~(~u_input.a) ^ _wgslsmith_add_u32(~u_input.b.x, var_0)) % 32u);
    let var_2 = 0u;
    let var_3 = Struct_2(abs(~firstLeadingBit(vec2<i32>(var_1, var_1)) & _wgslsmith_sub_vec2_i32(vec2<i32>(var_1, var_1) << (u_input.b.yy % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(36363i, var_1)))), -firstLeadingBit(-(~vec4<i32>(-1i, 0i, var_1, var_1))), 33504u, countOneBits(_wgslsmith_sub_i32(-(~var_1), select(var_1, min(var_1, 0i), true))));
    var var_4 = var_3;
    return select(vec3<bool>(select(true, global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(var_4.c, 19u)], var_3.c), 17u)], 0u == _wgslsmith_mult_u32(4172u, var_0)), all(select(select(vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(1u, 17u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 19u)], 17u)], global2[_wgslsmith_index_u32(var_2, 17u)], global2[_wgslsmith_index_u32(var_3.c, 17u)]), true), select(vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(30575u, 17u)], global2[_wgslsmith_index_u32(8638u, 17u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(var_2, 17u)], global2[_wgslsmith_index_u32(var_3.c, 17u)], global2[_wgslsmith_index_u32(5959u, 17u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(var_2, 17u)], true, false)), select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 17u)], global2[_wgslsmith_index_u32(var_2, 17u)], global2[_wgslsmith_index_u32(u_input.c.x, 17u)], true), vec4<bool>(global2[_wgslsmith_index_u32(53843u, 17u)], false, global2[_wgslsmith_index_u32(var_2, 17u)], global2[_wgslsmith_index_u32(65543u, 17u)]), global2[_wgslsmith_index_u32(u_input.b.x, 17u)]))), false), !select(!vec3<bool>(global2[_wgslsmith_index_u32(var_3.c, 17u)], global2[_wgslsmith_index_u32(20134u, 17u)], global2[_wgslsmith_index_u32(12681u, 17u)]), !(!vec3<bool>(global2[_wgslsmith_index_u32(var_0, 17u)], true, true)), all(!vec4<bool>(global2[_wgslsmith_index_u32(64354u, 17u)], global2[_wgslsmith_index_u32(var_2, 17u)], global2[_wgslsmith_index_u32(var_2, 17u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32136u, 19u)], 17u)]))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(max(-288f, _wgslsmith_f_op_f32(f32(-1f) * -1681f))), false)) == _wgslsmith_f_op_f32(sign(arg_1)));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> bool {
    global0 = (true || !global2[_wgslsmith_index_u32(u_input.a, 17u)]) || global2[_wgslsmith_index_u32(~4294967295u, 17u)];
    global0 = all(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_2(vec2<i32>(4322i, 22597i), vec4<i32>(4871i, -40706i, -1i, -2147483647i), 49072u, 1i), Struct_1(-1553f, vec4<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 19u)], 17u)], false, true, false)))))), -334f));
    global1 = array<u32, 19>();
    global1 = array<u32, 19>();
    let var_0 = _wgslsmith_mult_u32(~u_input.c.x, ~global1[_wgslsmith_index_u32(1714u, 19u)]) != 4294967295u;
    return func_4(vec4<f32>(_wgslsmith_div_f32(182f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.x, -448f, global2[_wgslsmith_index_u32(13722u, 17u)])))), arg_1.x, arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)), arg_1.x).x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    global0 = func_1(true, vec2<f32>(950f, _wgslsmith_f_op_f32(round(191f))));
    var var_0 = Struct_2(abs(~(~reverseBits(vec2<i32>(-6734i, -1i)))), vec4<i32>(36609i, 1i, ~reverseBits(33928i), ~43278i), select(12561u, firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.c.ww, abs(u_input.c.xw))), select(!all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 17u)], false, global2[_wgslsmith_index_u32(7303u, 17u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 19u)], 17u)])), global2[_wgslsmith_index_u32(~(10788u | u_input.b.x), 17u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(4284u, 19u)], 21929u) | ~37813u, 17u)])), ~abs(0i));
    var var_1 = global2[_wgslsmith_index_u32(~(~(~(~0u))), 17u)];
    global1 = array<u32, 19>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) - _wgslsmith_f_op_f32(f32(-1f) * -2113f));
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec3<f32>(-288f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1849f, -629f, global2[_wgslsmith_index_u32(var_0.c, 17u)])))) - _wgslsmith_f_op_f32(abs(-421f))), _wgslsmith_f_op_f32(1265f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-653f, 376f, global2[_wgslsmith_index_u32(18862u, 17u)])) + _wgslsmith_f_op_f32(f32(-1f) * -2761f)))));
}

