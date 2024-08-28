struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: bool,
    d: vec2<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
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

var<private> global0: Struct_4;

var<private> global1: array<f32, 8>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = vec4<bool>(global0.c, any(vec4<bool>(false, true, true, false)), global0.a.x, true);
    var var_1 = Struct_3(-1i);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -827f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2610f))))), global0.b.b, Struct_1(~u_input.c.yx, arg_1.b.b, ~_wgslsmith_div_u32(~42841u, ~arg_1.d.b.x), ~abs(abs(vec3<u32>(62518u, global0.b.c.d.x, 1u)))), Struct_1(_wgslsmith_mod_vec2_u32(~(~arg_1.c.b.zy), vec2<u32>(4294967295u, u_input.c.x) << (firstTrailingBit(arg_1.b.b.yz) % vec2<u32>(32u))), _wgslsmith_mod_vec3_u32(arg_1.d.d, ~arg_1.c.b | ~u_input.c.zwy), _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(arg_0, global0.b.d.b.x), 16113u, _wgslsmith_clamp_u32(~1u, firstTrailingBit(u_input.d.x), ~arg_0)), ~abs(global0.b.d.b)), _wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(arg_1.d.c, ~(~arg_1.c.a.x))));
    var var_3 = !((max(var_1.a, -2147483647i) & (i32(-1i) * -2147483647i)) == var_1.a);
    var var_4 = select(vec4<bool>(all(var_0.yy), var_0.x, global0.a.x != select(false, any(vec4<bool>(global0.a.x, true, true, var_0.x)), true), true), select(!(!select(vec4<bool>(var_0.x, global0.c, true, false), vec4<bool>(false, global0.c, false, var_0.x), vec4<bool>(false, var_0.x, global0.a.x, true))), vec4<bool>(all(select(vec3<bool>(global0.c, true, true), vec3<bool>(true, var_0.x, var_0.x), true)), select(var_0.x, false, false), !(!var_0.x), true), false), select(select(select(vec4<bool>(var_0.x, var_0.x, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, global0.c, true, true), vec4<bool>(var_0.x, global0.c, true, true)), vec4<bool>(false, var_0.x, var_0.x, var_0.x)), vec4<bool>(true, false, global0.a.x, global0.a.x || true), select(select(vec4<bool>(global0.a.x, false, true, global0.c), vec4<bool>(true, true, global0.a.x, global0.a.x), true), !vec4<bool>(false, var_0.x, global0.c, false), false)), !vec4<bool>(true, false, any(var_0.yxw), global0.b.a > -2441f), !vec4<bool>(true, !var_0.x, global0.a.x, true)));
    return ~(~min(abs(countOneBits(vec3<u32>(26235u, 0u, u_input.c.x))), abs(countOneBits(arg_1.d.d))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> f32 {
    var var_0 = global0.b.b;
    let var_1 = vec2<i32>(arg_0.a, _wgslsmith_add_i32(~(_wgslsmith_sub_i32(arg_0.a, -1i) | select(8005i, 20572i, global0.c)), ~arg_0.a));
    let var_2 = global0.b;
    global0 = Struct_4(global0.a, global0.b, true, vec2<f32>(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(~11902u, 8u)])), 1000f));
    global0 = Struct_4(vec2<bool>(true, global0.a.x), Struct_2(-1000f, Struct_1(var_0.d.zx, global0.b.d.b, global0.b.b.c, ~global0.b.c.b | _wgslsmith_mod_vec3_u32(var_0.b, u_input.c.zyz)), Struct_1(u_input.c.yz, _wgslsmith_sub_vec3_u32(~global0.b.c.b, var_2.c.d >> (var_2.d.d % vec3<u32>(32u))), 1u, select(func_3(arg_1.c, global0.b), vec3<u32>(arg_1.a.x, 4294967295u, 0u), select(vec3<bool>(global0.a.x, global0.c, false), vec3<bool>(arg_3, arg_3, global0.a.x), global0.a.x))), Struct_1(func_3(~u_input.b, Struct_2(var_2.a, Struct_1(arg_1.b.zy, vec3<u32>(132467u, global0.b.d.a.x, 1u), 59778u, arg_2.d), Struct_1(var_0.a, u_input.c.yxz, u_input.c.x, arg_1.b), Struct_1(u_input.d, var_0.b, 0u, vec3<u32>(arg_1.d.x, 51830u, arg_2.d.x)), 55771u)).xz, _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(38900u, global0.b.b.d.x, 4294967295u), var_2.d.d), vec3<u32>(4294967295u, 0u, global0.b.c.b.x) << (var_2.d.d % vec3<u32>(32u))), ~arg_2.d.x, var_2.d.b), arg_1.b.x), select(!(-21768i > var_1.x) || !(arg_3 & true), all(!select(vec4<bool>(arg_3, false, arg_3, false), vec4<bool>(arg_3, false, arg_3, true), global0.a.x)), global1[_wgslsmith_index_u32(func_3(18079u, Struct_2(1759f, arg_1, var_2.b, arg_1, var_2.c.b.x)).x, 8u)] >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.a)))), global0.d);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(654f * global0.b.a) * 861f)))));
}

fn func_1(arg_0: vec2<bool>) -> vec3<bool> {
    global1 = array<f32, 8>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.a, -1721f)) * _wgslsmith_f_op_f32(-223f - global1[_wgslsmith_index_u32(firstTrailingBit(83763u), 8u)])), _wgslsmith_f_op_f32(func_2(Struct_3(-32898i), global0.b.b, Struct_1(u_input.c.xy, global0.b.b.d, abs(global0.b.c.b.x), ~global0.b.c.d), false))));
    return !select(!vec3<bool>(all(arg_0), all(vec2<bool>(false, true)), arg_0.x), select(!select(vec3<bool>(false, true, true), vec3<bool>(false, arg_0.x, global0.c), vec3<bool>(arg_0.x, true, arg_0.x)), !(!vec3<bool>(arg_0.x, arg_0.x, global0.a.x)), vec3<bool>(true, true, all(vec3<bool>(arg_0.x, arg_0.x, global0.c)))), select(all(!arg_0), true, true));
}

fn func_4(arg_0: vec3<bool>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(func_2(Struct_3(-9523i), global0.b.b, Struct_1(~(~vec2<u32>(0u, u_input.c.x)), ~min(vec3<u32>(27951u, 3743u, 45580u), _wgslsmith_div_vec3_u32(vec3<u32>(global0.b.e, 0u, global0.b.e), vec3<u32>(0u, 1u, global0.b.e))), 28201u, ~(_wgslsmith_div_vec3_u32(u_input.c.wxz, vec3<u32>(global0.b.c.c, global0.b.b.a.x, global0.b.c.d.x)) >> (select(vec3<u32>(global0.b.d.c, global0.b.d.d.x, u_input.d.x), vec3<u32>(global0.b.e, 68775u, 4294967295u), arg_0) % vec3<u32>(32u)))), arg_0.x));
    global0 = Struct_4(func_1(select(!vec2<bool>(global0.a.x, true), arg_0.yy, vec2<bool>(arg_0.x, false))).zy, global0.b, 1u <= ~u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(global0.d))))) - global0.d));
    global0 = Struct_4(func_1(vec2<bool>(false, all(select(vec4<bool>(false, global0.a.x, false, global0.a.x), vec4<bool>(true, true, global0.a.x, false), vec4<bool>(false, false, true, true))))).yx, global0.b, true, vec2<f32>(global0.b.a, _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-var_0))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(1862f, var_0, true)), var_0, _wgslsmith_f_op_f32(global0.b.a * global0.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -864f), _wgslsmith_f_op_f32(floor(global0.b.a)))))));
    let var_2 = var_1;
    return global0.d;
}

fn func_5(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_4) -> Struct_4 {
    var var_0 = arg_2.b;
    global1 = array<f32, 8>();
    var var_1 = ~(~arg_1.x);
    let var_2 = Struct_5(var_0.d, countOneBits(countOneBits(abs(vec3<u32>(35120u, u_input.a, arg_0)))) >> (~func_3(0u >> (0u % 32u), arg_2.b) % vec3<u32>(32u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.b.a), -1000f, arg_2.b.a, var_0.a) * vec4<f32>(-793f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -750f)), -1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d.x, global0.d.x))))));
    return Struct_4(!func_1(vec2<bool>(true == arg_2.c, true)).yz, global0.b, all(vec4<bool>(true, false, false, false)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.d))), arg_2.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(global0.b.b.a.x, ~(-(~vec2<i32>(-20417i, 4435i))), Struct_4(!global0.a, global0.b, 0u < ~u_input.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.a, global0.d.x)))), _wgslsmith_f_op_vec2_f32(func_4(func_1(vec2<bool>(global0.a.x, true)))), global0.a))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(u_input.b, 8u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(10585u, 21467u), vec2<u32>(4294967295u, 4294967295u) ^ global0.b.c.d.zx), 8u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(4294967295u, 8u)])))))));
    let var_1 = Struct_3(_wgslsmith_mod_i32(70768i, countOneBits(max(1i, abs(2147483647i)))));
    let var_2 = vec2<u32>(_wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_div_u32(abs(u_input.c.x), _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(4294967295u, u_input.d.x, u_input.a, 0u)))), 13084u, 1u), 4294967295u);
    global1 = array<f32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.a);
}

