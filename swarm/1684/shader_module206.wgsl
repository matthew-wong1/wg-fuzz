struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec3<i32>, 24>;

var<private> global2: array<vec4<bool>, 6>;

var<private> global3: i32 = 80558i;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> f32 {
    global1 = array<vec3<i32>, 24>();
    global0 = vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1426f)) - _wgslsmith_div_f32(-987f, arg_0.a))), 543f);
    let var_0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1011f, arg_0.a))), global0.xx, true)), global0.xz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(814f, _wgslsmith_div_f32(global0.x, -1017f), _wgslsmith_f_op_f32(floor(-209f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1367f, 680f, _wgslsmith_f_op_f32(-arg_1.x)))), Struct_1(1000f, _wgslsmith_clamp_i32(~(~0i), -65483i, -abs(-2147483647i)), arg_0.c, vec3<i32>(arg_0.d.x, select(~arg_0.b, -13393i, false), ~_wgslsmith_mod_i32(-30579i, u_input.c.x))), vec3<bool>(abs(_wgslsmith_add_i32(arg_0.d.x, u_input.d.x)) <= _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.e.zxx, global1[_wgslsmith_index_u32(0u, 24u)]), arg_0.d), arg_0.c.x, true), _wgslsmith_mod_i32(arg_0.d.x, arg_0.b << (_wgslsmith_mult_u32(max(u_input.b, 83664u), ~0u) % 32u)));
    global0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.b.x, -555f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1037f)) - _wgslsmith_div_f32(global0.x, -1000f)))))));
    let var_1 = ~u_input.b;
    return 124f;
}

fn func_2() -> Struct_2 {
    global3 = u_input.e.x;
    let var_0 = _wgslsmith_f_op_f32(-1759f - -237f);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(global0.x + 1423f), -992f, 1f, global0.x);
    global1 = array<vec3<i32>, 24>();
    global1 = array<vec3<i32>, 24>();
    return Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(519f, var_1.x)))), vec2<f32>(-285f, _wgslsmith_f_op_f32(abs(138f))))))), vec3<f32>(-1044f, _wgslsmith_f_op_f32(-818f * _wgslsmith_f_op_f32(func_3(Struct_1(global0.x, 1i, vec4<bool>(true, false, false, true), u_input.c.yzw), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-542f, 1075f))))), _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(623f * -1000f), u_input.c.x, select(global2[_wgslsmith_index_u32(72162u, 6u)], global2[_wgslsmith_index_u32(u_input.b, 6u)], vec4<bool>(false, false, true, false)), u_input.e.xww), global0.zx))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, 339f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-632f * -1457f), -294f))), ~(-1i), global2[_wgslsmith_index_u32(abs(~_wgslsmith_clamp_u32(u_input.b, u_input.a.x, u_input.b)), 6u)], global1[_wgslsmith_index_u32(select(u_input.b, u_input.a.x, true) ^ (~58934u << (~u_input.b % 32u)), 24u)]), vec3<bool>(true, true, var_1.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(132f + var_1.x))), u_input.d.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_2) -> f32 {
    var var_0 = func_2();
    return arg_2.b.x;
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(func_4(func_2(), _wgslsmith_mult_vec4_u32(~(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 10928u, 7745u, u_input.a.x), vec4<u32>(16633u, u_input.a.x, 5290u, 4294967295u)) & select(vec4<u32>(20582u, 1583u, 4294967295u, 15547u), vec4<u32>(u_input.b, u_input.a.x, 33126u, u_input.a.x), global2[_wgslsmith_index_u32(u_input.b, 6u)])), firstTrailingBit(~vec4<u32>(33538u, 1u, 26891u, u_input.a.x))), Struct_2(_wgslsmith_f_op_vec2_f32(select(global0.yy, global0.xz, all(vec3<bool>(arg_0, arg_0, arg_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -915f, arg_1.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1300f * 504f)), u_input.c.x, vec4<bool>(false, all(vec3<bool>(true, arg_0, arg_0)), true, false || arg_0), min(~global1[_wgslsmith_index_u32(u_input.a.x, 24u)], u_input.c.xyx)), !select(!vec3<bool>(false, arg_0, true), func_2().c.c.zzz, arg_0), u_input.c.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(global0.zx + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-1230f, _wgslsmith_f_op_f32(func_3(Struct_1(global0.x, u_input.c.x, global2[_wgslsmith_index_u32(4294967295u, 6u)], u_input.c.xyy), global0.yz)))), -296f)));
    var var_2 = func_2();
    var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(var_2.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(var_2.a.x - -512f), var_0))), func_2().c, var_2.c.c.xzw, ~u_input.d.x & min(min(~u_input.e.x, ~20282i), -var_2.c.b));
    let var_3 = select(~vec2<u32>(~0u, u_input.b), vec2<u32>(~(~4294967295u), u_input.b), u_input.e.x == (~u_input.e.x << (~58111u % 32u))) ^ (~(~(~vec2<u32>(u_input.a.x, u_input.a.x))) & u_input.a);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.c.a - -1646f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_1.x)) + global0.x);
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_div_f32(-161f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.a)))), arg_1.e, global2[_wgslsmith_index_u32(~86731u, 6u)], func_2().c.d);
    global3 = 0i;
    global0 = arg_1.b;
    global1 = array<vec3<i32>, 24>();
    var var_1 = arg_1;
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a)) * var_1.c.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.a - var_0.a) - _wgslsmith_f_op_f32(-var_0.a)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1110f)))))), var_0.d.x, !var_1.c.c, var_1.c.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global0.xy, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x * global0.x)))), 318f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2297f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), func_5(func_1(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(806f, global0.x)))), func_2(), -u_input.e.x), !(!select(func_2().c.c.wxy, func_2().c.c.zzz, vec3<bool>(true, true, true))), 2147483647i);
    var_0 = func_2();
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1795f, -541f)), var_0.b, var_0.c, !vec3<bool>(all(vec4<bool>(var_0.c.c.x, true, var_0.d.x, var_0.c.c.x)), !var_0.c.c.x, any(var_0.d.yz)), _wgslsmith_dot_vec2_i32(-vec2<i32>(~u_input.c.x, -6336i), u_input.e.xw));
    let var_1 = var_0.c.c;
    let var_2 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global0.zx))), _wgslsmith_f_op_vec2_f32(-var_0.a)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(func_4(Struct_2(global0.zx, var_0.b, Struct_1(-1566f, -25743i, var_0.c.c, vec3<i32>(u_input.e.x, 97418i, var_0.e)), vec3<bool>(var_1.x, var_1.x, var_1.x), var_0.c.d.x), vec4<u32>(u_input.a.x, u_input.b, u_input.b, 4294967295u), Struct_2(global0.xx, var_0.b, var_0.c, var_0.d, var_0.c.d.x)))), global0.yz)), _wgslsmith_f_op_vec3_f32(vec3<f32>(324f, _wgslsmith_f_op_f32(-1171f - _wgslsmith_f_op_f32(select(var_0.b.x, -781f, true))), 452f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0.b))) + var_0.b)), var_0.c, select(select(!(!vec3<bool>(false, var_1.x, var_0.c.c.x)), vec3<bool>(false, any(var_0.d), true), var_1.x || all(vec2<bool>(var_0.c.c.x, false))), var_0.c.c.yzy, vec3<bool>(all(vec4<bool>(var_1.x, false, false, var_0.d.x)) || all(var_1.wz), false, true)), -2147483647i);
    var var_3 = u_input.a.x;
    global1 = array<vec3<i32>, 24>();
    var var_4 = 30241u;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(vec4<u32>(21208u, 61950u, u_input.a.x, 1u) << (vec4<u32>(46954u, 4294967295u, 21496u, u_input.a.x) % vec4<u32>(32u))) & _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, 45013u, u_input.a.x, u_input.b), vec4<u32>(u_input.b, 4962u, u_input.b, 0u))), vec2<u32>(u_input.a.x, _wgslsmith_clamp_u32(~u_input.a.x, countOneBits(_wgslsmith_div_u32(31018u, u_input.a.x)), ~0u)));
}

