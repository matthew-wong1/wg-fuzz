struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24>;

var<private> global1: array<f32, 27>;

var<private> global2: i32 = 2147483647i;

var<private> global3: vec4<f32> = vec4<f32>(2628f, -1036f, 1000f, -637f);

var<private> global4: u32 = 1u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    var var_0 = vec2<bool>(true, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_f_op_f32(f32(-1f) * -1684f)) != 1513f);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(firstTrailingBit(57924u), 27u)], -2902f, _wgslsmith_f_op_f32(-arg_0.x), global3.x) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(739f, arg_0.x, 1000f, -2152f) * vec4<f32>(-279f, global3.x, global3.x, -463f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-339f, global1[_wgslsmith_index_u32(18990u, 27u)], global1[_wgslsmith_index_u32(21043u, 27u)], -1000f), _wgslsmith_div_vec4_f32(vec4<f32>(-387f, global3.x, -149f, 398f), vec4<f32>(global1[_wgslsmith_index_u32(8583u, 27u)], -1749f, -1184f, -1000f)), vec4<bool>(false, false, true, false))))));
    let var_2 = var_1.a.zwy;
    global1 = array<f32, 27>();
    global0 = array<Struct_3, 24>();
    return -1176f;
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(-1024f - _wgslsmith_f_op_f32(func_3(vec2<f32>(global3.x, -1390f))))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-511f, _wgslsmith_f_op_f32(f32(-1f) * -155f)))));
    global1 = array<f32, 27>();
    global0 = array<Struct_3, 24>();
    let var_1 = _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(~select(-20339i, -1i, true), -29575i, u_input.a), -min(~vec3<i32>(u_input.a, u_input.b, 47644i), reverseBits(vec3<i32>(u_input.a, u_input.b, u_input.b)))), min(vec3<i32>(min(31981i, 2147483647i), 2147483647i, _wgslsmith_clamp_i32(u_input.b, u_input.a, ~u_input.a)), vec3<i32>(i32(-1i) * -u_input.a, 1i, ~u_input.b)));
    let var_2 = ~(~1u);
    return _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(61591u, 4294967295u, var_2))), vec3<u32>(~var_2 ^ _wgslsmith_add_u32(var_2, var_2), _wgslsmith_sub_u32(~var_2, _wgslsmith_mod_u32(var_2, 28558u)), ~_wgslsmith_clamp_u32(var_2, var_2, var_2))), 6467u, 0u);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: i32, arg_3: u32) -> f32 {
    global1 = array<f32, 27>();
    let var_0 = _wgslsmith_f_op_vec2_f32(max(global3.wy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-641f + arg_1.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -2720f)))));
    global4 = _wgslsmith_add_u32(_wgslsmith_mod_u32(arg_3, _wgslsmith_mod_u32(abs(1u), func_2())), func_2()) ^ arg_3;
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1761f, global3.x, -663f, global3.x))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -785f), 616f, _wgslsmith_f_op_f32(arg_1.a.x + 794f), _wgslsmith_f_op_f32(-arg_1.a.x))))) - _wgslsmith_f_op_vec4_f32(arg_1.a - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 1000f, -1011f, -1102f), vec4<f32>(435f, -1714f, global3.x, -1000f), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global1[_wgslsmith_index_u32(arg_3, 27u)], 2587f, -2215f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_1.a))))));
    global0 = array<Struct_3, 24>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(-arg_1.a.x))));
}

fn func_4(arg_0: vec4<f32>) -> Struct_1 {
    global0 = array<Struct_3, 24>();
    var var_0 = Struct_3(select(vec4<u32>(1u, ~12591u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 1u, 1u)), 1u), vec4<u32>(1u, 1u, 1u, 1u), !all(vec4<bool>(false, false, true, false))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(ceil(global3.wy)))), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(1u, 27u)])), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.x * -1046f))), 1343f)), Struct_1(_wgslsmith_f_op_vec2_f32(global3.xz * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global3.xw), vec2<f32>(global1[_wgslsmith_index_u32(41938u, 27u)], global1[_wgslsmith_index_u32(1u, 27u)]), vec2<bool>(true, false)))), select(~0i >> (1u % 32u), ~(u_input.a << (50029u % 32u)), any(vec2<bool>(false, false)))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(func_1(vec2<bool>(false, false), Struct_2(vec4<f32>(-232f, -147f, arg_0.x, 1219f)), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 26638i), vec2<i32>(-23900i, 2147483647i)), ~57979u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(202f, global1[_wgslsmith_index_u32(4294967295u, 27u)], true)) + arg_0.x), _wgslsmith_f_op_f32(round(1573f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3.x)) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(57396u, 27u)])))), select(-abs(u_input.b) & 2147483647i, u_input.a, !any(vec3<bool>(true, true, true))));
    global0 = array<Struct_3, 24>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-827f, -216f, true))))) > _wgslsmith_f_op_f32(584f - global3.x);
    global0 = array<Struct_3, 24>();
    return var_0.c;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    let var_0 = select(select(vec3<bool>(true, false, false && all(vec4<bool>(false, true, true, true))), select(vec3<bool>(arg_1.b.a.x > global1[_wgslsmith_index_u32(arg_1.a.x, 27u)], all(vec2<bool>(true, false)), true), vec3<bool>(all(vec4<bool>(true, false, true, false)), all(vec3<bool>(true, true, false)), true), vec3<bool>(true, true, true)), any(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)))), vec3<bool>(any(vec4<bool>(any(vec3<bool>(true, false, true)), true, 565u < arg_1.a.x, false)), true, !(arg_2.c.b != (i32(-1i) * -1i))), any(vec4<bool>(all(vec3<bool>(true, true, true)) == false, select(false, false, true) | true, true, true)));
    let var_1 = arg_2.b;
    let var_2 = Struct_3(~arg_1.a, Struct_2(_wgslsmith_f_op_vec4_f32(var_1.a - arg_1.d.a)), func_4(_wgslsmith_f_op_vec4_f32(-arg_1.b.a)), Struct_2(_wgslsmith_f_op_vec4_f32(arg_1.d.a - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.b.a) - _wgslsmith_f_op_vec4_f32(arg_1.d.a - vec4<f32>(arg_2.b.a.x, arg_0.a.x, -967f, 335f))))), arg_0.b);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(8642i | u_input.a);
    var var_0 = 1000f;
    global4 = func_5(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(~4294967295u, 27u)], _wgslsmith_f_op_f32(func_1(vec2<bool>(true, false), Struct_2(vec4<f32>(global3.x, 137f, global3.x, 745f)), u_input.b, 4294967295u)), 461f, _wgslsmith_f_op_f32(-global3.x)))), Struct_3(firstLeadingBit(select(reverseBits(vec4<u32>(28260u, 21723u, 4294967295u, 42798u)), max(vec4<u32>(4072u, 0u, 86703u, 0u), vec4<u32>(26628u, 4294967295u, 0u, 6050u)), true)), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(713f, -1755f, global1[_wgslsmith_index_u32(119693u, 27u)], 948f)))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, global3.x) - global3.yz), _wgslsmith_f_op_vec2_f32(global3.xw - global3.zz), false)), -72402i), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(floor(2725f)), _wgslsmith_div_f32(-996f, 377f), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(21502u, 27u)])), _wgslsmith_f_op_f32(round(-2009f)))), -u_input.a), Struct_3(~vec4<u32>(10728u, 23800u, 1u, 165226u), Struct_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-996f, 852f, -624f, global1[_wgslsmith_index_u32(4294967295u, 27u)])))), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -594f, global3.x, -670f))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global1[_wgslsmith_index_u32(1438u, 27u)], 226f, global1[_wgslsmith_index_u32(1u, 27u)]) + vec4<f32>(-992f, global3.x, 1014f, global3.x)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, 186f, -303f, global1[_wgslsmith_index_u32(1u, 27u)]), vec4<f32>(global1[_wgslsmith_index_u32(22484u, 27u)], -216f, 1064f, global1[_wgslsmith_index_u32(4294967295u, 27u)]))))), _wgslsmith_mult_i32(u_input.b >> (_wgslsmith_add_u32(18848u, 0u) % 32u), u_input.a)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(max(-476f, global1[_wgslsmith_index_u32(100971u, 27u)]))), 1626f) > _wgslsmith_f_op_f32(min(-823f, _wgslsmith_f_op_f32(step(1170f, -358f))));
    global2 = 2147483647i;
    var var_2 = global0[_wgslsmith_index_u32(~firstTrailingBit(func_5(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, 990f, -1645f))), Struct_3(vec4<u32>(1u, 64247u, 3014u, 3480u), Struct_2(vec4<f32>(-2253f, global3.x, global3.x, 1475f)), func_4(vec4<f32>(global3.x, global3.x, -593f, global3.x)), Struct_2(vec4<f32>(global1[_wgslsmith_index_u32(0u, 27u)], global3.x, global3.x, global3.x)), 7141i), global0[_wgslsmith_index_u32(1u, 24u)])), 24u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(global3.zxz + vec3<f32>(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.a.x)))), var_2.a.x, _wgslsmith_div_vec2_u32(max(vec2<u32>(var_2.a.x >> (var_2.a.x % 32u), var_2.a.x), firstTrailingBit(max(var_2.a.wy, var_2.a.xy))), var_2.a.xw), var_2.a.x);
}

