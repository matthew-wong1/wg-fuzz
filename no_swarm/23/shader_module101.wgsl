struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<bool>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(1i, -7176i, 1i);

var<private> global1: array<i32, 2> = array<i32, 2>(-1i, -1i);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: i32, arg_3: Struct_3) -> vec4<u32> {
    let var_0 = Struct_4(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), Struct_1(arg_2, vec2<f32>(arg_3.a, arg_3.a)), Struct_1(_wgslsmith_clamp_i32(~(~u_input.b), ~_wgslsmith_add_i32(-56097i, global1[_wgslsmith_index_u32(1u, 2u)]), 1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1790f, -251f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1715f) - vec2<f32>(-1849f, arg_3.a))))));
    global1 = array<i32, 2>();
    global1 = array<i32, 2>();
    global0 = (countOneBits(~(vec3<i32>(global1[_wgslsmith_index_u32(arg_0.x, 2u)], u_input.b, 0i) ^ vec3<i32>(var_0.c.a, global0.x, arg_2))) | vec3<i32>(_wgslsmith_mod_i32(firstLeadingBit(arg_2), countOneBits(2147483647i)), ~(-2147483647i), _wgslsmith_mult_i32(arg_2, -7190i) >> (_wgslsmith_sub_u32(arg_1, arg_1) % 32u))) & vec3<i32>(2147483647i, ~max(~(-2147483647i), -1i ^ global1[_wgslsmith_index_u32(4294967295u, 2u)]), 44906i);
    let var_1 = _wgslsmith_f_op_f32(exp2(arg_3.a));
    return vec4<u32>(countOneBits(_wgslsmith_dot_vec3_u32((vec3<u32>(u_input.d, arg_1, arg_0.x) << (vec3<u32>(41219u, 4294967295u, u_input.d) % vec3<u32>(32u))) & vec3<u32>(u_input.a, arg_1, 4294967295u), ~vec3<u32>(arg_1, arg_0.x, 41286u) >> (~vec3<u32>(0u, 5949u, 0u) % vec3<u32>(32u)))), ~15618u, reverseBits(_wgslsmith_dot_vec2_u32(arg_0, reverseBits(select(arg_0, arg_0, var_0.a.x)))), 29031u);
}

fn func_2() -> vec4<i32> {
    var var_0 = 19644u;
    let var_1 = 1273f;
    var_0 = u_input.c;
    var var_2 = -1241f;
    let var_3 = !(!select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), false), true));
    return (vec4<i32>(-_wgslsmith_mod_i32(0i, global0.x), global0.x, 1i | global1[_wgslsmith_index_u32(abs(4294967295u), 2u)], ~87288i << (countOneBits(u_input.a) % 32u)) >> (~_wgslsmith_add_vec4_u32(min(vec4<u32>(u_input.a, 16509u, u_input.a, u_input.c), vec4<u32>(u_input.c, u_input.a, u_input.c, u_input.d)), func_3(vec2<u32>(u_input.c, u_input.a), u_input.d, -2147483647i, Struct_3(var_1))) % vec4<u32>(32u))) >> (abs(vec4<u32>(54368u, ~(~u_input.c), 4294967295u, 11505u)) % vec4<u32>(32u));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_3(-682f);
    let var_1 = vec3<i32>(-34215i, arg_2, func_2().x << (_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, 0u, ~arg_3.b.x), ~(~arg_3.b.x)) % 32u));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 347f, 571f, var_0.a))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-928f, 2426f, 576f, -1573f) * vec4<f32>(arg_1.b.x, 444f, 679f, arg_3.a.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(108f, 1282f, -473f, arg_1.b.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1270f), _wgslsmith_div_f32(513f, var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a, -192f)) - _wgslsmith_f_op_f32(-var_0.a)), -1352f)), vec4<bool>(!arg_3.c.x || arg_3.c.x, arg_3.c.x, !(arg_3.c.x && all(arg_3.c)), any(select(vec2<bool>(arg_3.c.x, true), !arg_3.c.zx, -1i < arg_0.x)))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.d.b.x + _wgslsmith_f_op_f32(-arg_1.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_3.a.x, -1023f))))) * var_0.a);
    global0 = select(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32((var_1 << (arg_3.b.wyw % vec3<u32>(32u))) | (var_1 & var_1), ~var_1), _wgslsmith_sub_vec3_i32(~select(vec3<i32>(-1i, 2147483647i, var_1.x), arg_0.zxz, vec3<bool>(arg_3.c.x, arg_3.c.x, true)), vec3<i32>(func_2().x, _wgslsmith_dot_vec4_i32(vec4<i32>(23730i, arg_1.a, -2147483647i, global1[_wgslsmith_index_u32(u_input.d, 2u)]), arg_0), -1i))), vec3<i32>((var_1.x & -12686i) & firstLeadingBit(0i), -arg_2, -2147483647i) << (~(arg_3.b.xwy | arg_3.b.zww) % vec3<u32>(32u)), any(!select(select(vec4<bool>(arg_3.c.x, arg_3.c.x, arg_3.c.x, arg_3.c.x), vec4<bool>(false, arg_3.c.x, arg_3.c.x, arg_3.c.x), vec4<bool>(false, arg_3.c.x, arg_3.c.x, arg_3.c.x)), !vec4<bool>(arg_3.c.x, false, arg_3.c.x, true), any(vec2<bool>(arg_3.c.x, arg_3.c.x)))));
    return 1i;
}

fn func_1(arg_0: Struct_4) -> f32 {
    global1 = array<i32, 2>();
    global0 = vec3<i32>(~(~_wgslsmith_add_i32(i32(-1i) * -31105i, _wgslsmith_div_i32(2147483647i, global0.x))), func_4(func_2(), arg_0.c, global0.x, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_0.b.b))), vec4<u32>(67596u, 0u, u_input.c, 4194u) >> (vec4<u32>(u_input.a, 4294967295u, u_input.d, 1u) % vec4<u32>(32u)), vec3<bool>(all(vec4<bool>(true, arg_0.a.x, arg_0.a.x, false)), true, false || arg_0.a.x), arg_0.b, arg_0.b.a)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, ~(u_input.a ^ _wgslsmith_clamp_u32(4294967295u, 1u, 4294967295u))), 2u)]);
    var var_0 = _wgslsmith_sub_u32(u_input.d, 20953u);
    var var_1 = Struct_4(!vec2<bool>(max(199i, u_input.b) >= firstTrailingBit(26202i), !all(vec2<bool>(arg_0.a.x, true))), Struct_1(-63686i, arg_0.b.b), Struct_1(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.b, arg_0.b.a, u_input.b)) ^ vec3<i32>(9781i, arg_0.b.a, 1i), abs(func_2().zzz)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.c.b.x)) - _wgslsmith_f_op_f32(-arg_0.b.b.x)), _wgslsmith_f_op_f32(arg_0.c.b.x - -910f))));
    var_1 = Struct_4(var_1.a, Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(global0.xz, global0.yx), arg_0.b.a), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -520f), -237f)), 1579f)), arg_0.b);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.b.b.x + -721f), _wgslsmith_f_op_f32(round(var_1.c.b.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 2>();
    var var_0 = vec4<f32>(-141f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(Struct_4(vec2<bool>(false, false), Struct_1(global0.x, vec2<f32>(-1009f, 309f)), Struct_1(u_input.b, vec2<f32>(-472f, -1000f))))), _wgslsmith_f_op_f32(f32(-1f) * -875f)))), 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -259f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))));
    let var_1 = u_input.d;
    global1 = array<i32, 2>();
    var var_2 = Struct_4(!select(!select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(false, true, false, false)))), Struct_1(_wgslsmith_add_i32(-4614i, _wgslsmith_div_i32(-3386i, global1[_wgslsmith_index_u32(var_1, 2u)])) >> (~(var_1 & var_1) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yy)))), Struct_1(-_wgslsmith_clamp_i32(-u_input.b, -6109i, global1[_wgslsmith_index_u32(~5079u, 2u)]), _wgslsmith_f_op_vec2_f32(var_0.xw * var_0.wx)));
    var var_3 = vec3<bool>(true, (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(var_0.x * var_2.c.b.x)) == _wgslsmith_f_op_f32(-var_2.c.b.x)) & !(_wgslsmith_div_f32(var_0.x, -277f) > _wgslsmith_f_op_f32(var_2.c.b.x + var_0.x)), any(select(select(select(vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x), vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x), var_2.a.x), !vec3<bool>(false, true, var_2.a.x), true), select(select(vec3<bool>(var_2.a.x, true, true), vec3<bool>(false, true, false), false), !vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x), !vec3<bool>(var_2.a.x, var_2.a.x, false)), abs(var_1) >= firstLeadingBit(var_1))));
    var_0 = vec4<f32>(_wgslsmith_div_f32(var_2.b.b.x, -1656f), -213f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(-458f, _wgslsmith_f_op_f32(min(-1003f, 1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

