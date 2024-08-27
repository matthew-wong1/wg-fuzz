struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: Struct_2,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(0u, 91938u, 103647u, 4294967295u, 0u, 69949u, 16884u, 70974u, 23631u, 0u, 108774u, 47618u);

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global2: array<u32, 6> = array<u32, 6>(78089u, 0u, 1u, 55238u, 1u, 34306u);

var<private> global3: vec3<u32> = vec3<u32>(10070u, 71362u, 0u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>) -> f32 {
    global2 = array<u32, 6>();
    global2 = array<u32, 6>();
    var var_0 = ~(~u_input.b.wzy) >> (vec3<u32>(0u, 8728u, global3.x) % vec3<u32>(32u));
    global1 = select(!vec4<bool>(false, true, false, select(true, global1.x, false)), !(!(!select(vec4<bool>(global1.x, false, true, true), vec4<bool>(true, global1.x, global1.x, true), global1.x))), vec4<bool>(any(global1.zyy) | false, false, true, !global1.x));
    return _wgslsmith_f_op_f32(select(416f, arg_1.x, !global1.x));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: bool) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-684f)) * _wgslsmith_div_f32(arg_0.x, arg_0.x))))));
    let var_1 = arg_1.x | arg_1.x;
    global2 = array<u32, 6>();
    global3 = u_input.b.wxy;
    var var_2 = select(u_input.b, abs(vec4<u32>(_wgslsmith_div_u32(7519u, 96937u), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, global0[_wgslsmith_index_u32(66883u, 12u)]), vec2<u32>(1u, 8829u)), 1u), _wgslsmith_clamp_u32(~global2[_wgslsmith_index_u32(4294967295u, 6u)], _wgslsmith_dot_vec4_u32(u_input.b, u_input.b), 1u), 33286u)), var_1);
    return !arg_1.x;
}

fn func_2() -> Struct_1 {
    global1 = vec4<bool>(func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-179f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-1i, vec2<f32>(214f, -192f))))), select(!(!global1.yyw), global1.xzw, vec3<bool>(true, false, true)), -2147483647i < _wgslsmith_div_i32(-u_input.a, u_input.a | -32742i)), global1.x, global1.x, false);
    let var_0 = max(global3.x >> (109650u % 32u), _wgslsmith_div_u32(global3.x, _wgslsmith_add_u32((1u | global3.x) ^ 1u, 39645u)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_sub_i32(i32(-1i) * -1i, u_input.a) >> ((global3.x | 8403u) % 32u)), select(all(select(global1.yz, select(global1.zz, vec2<bool>(false, true), false), !global1.zy)), func_4(vec2<f32>(_wgslsmith_f_op_f32(559f - -1328f), -556f), select(vec3<bool>(false, global1.x, global1.x), global1.wwz, select(global1.xzy, vec3<bool>(global1.x, global1.x, global1.x), global1.x)), true), any(!select(global1.xzx, global1.yzx, vec3<bool>(true, true, global1.x)))));
    let var_2 = Struct_4(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.b, _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(83780u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.x, 6u)], 6u)], global0[_wgslsmith_index_u32(global3.x, 12u)], 32271u), vec4<u32>(global2[_wgslsmith_index_u32(20397u, 6u)], global2[_wgslsmith_index_u32(107171u, 6u)], 50528u, 0u)), u_input.b | vec4<u32>(0u, u_input.b.x, 0u, u_input.b.x))), abs(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, global3.x, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 12u)], 6u)], u_input.c.x), vec4<u32>(global3.x, 8771u, 0u, 79964u), vec4<u32>(var_0, global0[_wgslsmith_index_u32(4294967295u, 12u)], 42964u, 1u))))), Struct_1(-28539i >> (~select(75600u, u_input.b.x, false) % 32u)), Struct_1(min(abs(var_1.a.a), abs(u_input.a)) & ~1i), Struct_2(Struct_1(~_wgslsmith_sub_i32(-70390i, u_input.a)), (~var_0 | 41702u) <= _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, global2[_wgslsmith_index_u32(u_input.c.x, 6u)], global2[_wgslsmith_index_u32(29489u, 6u)]), u_input.b.yyx << (u_input.b.xzz % vec3<u32>(32u)))));
    let var_3 = Struct_4(var_2.a | max(~var_2.a, vec4<u32>(~26448u, 30980u, countOneBits(global2[_wgslsmith_index_u32(global3.x, 6u)]), ~0u)), var_2.c, var_2.d.a, var_2.d);
    return Struct_1(_wgslsmith_div_i32(abs(var_2.d.a.a >> (abs(global0[_wgslsmith_index_u32(3150u, 12u)]) % 32u)), -6256i));
}

fn func_1() -> Struct_4 {
    var var_0 = !global1.zz;
    var_0 = global1.xw;
    let var_1 = func_2();
    global1 = select(vec4<bool>(false, false, u_input.a <= min(u_input.a, ~var_1.a), true), !vec4<bool>(true, var_0.x, !select(false, global1.x, global1.x), true | global1.x), global1.x);
    var var_2 = ~global3.xx;
    return Struct_4(abs(min(_wgslsmith_sub_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], 6u)], 35998u, 46556u, 1u), countOneBits(vec4<u32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.x, 6u)], 12u)], 12u)], 6u)], global2[_wgslsmith_index_u32(u_input.b.x, 6u)], u_input.b.x, 55040u))), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(53137u, 6u)], 6u)] << (4294967295u % 32u), ~4294967295u, ~global3.x, _wgslsmith_div_u32(30594u, 25636u)))), Struct_1(countOneBits(var_1.a)), Struct_1(firstLeadingBit(firstLeadingBit(~38735i))), Struct_2(var_1, any(vec2<bool>(var_0.x, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1270f)), -863f)))) + 285f);
    let var_2 = var_0.c;
    var var_3 = func_1().c;
    global0 = array<u32, 12>();
    global3 = ~vec3<u32>(~0u, _wgslsmith_div_u32(firstLeadingBit(select(4294967295u, global2[_wgslsmith_index_u32(63391u, 6u)], global1.x)), 1u), _wgslsmith_sub_u32(~var_0.a.x, 0u));
    global2 = array<u32, 6>();
    let var_4 = Struct_5(-2147483647i, 634f, Struct_2(func_1().c, true), -1i, func_2().a);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.ywx, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_4.b))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_4.b)))), 1747f, var_4.b) + vec4<f32>(_wgslsmith_f_op_f32(max(var_4.b, var_4.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.b) - _wgslsmith_f_op_f32(step(-637f, 396f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_4.b, var_4.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.b - -2227f)))), vec3<i32>(-1i) * -(~vec3<i32>(u_input.a, -12105i, 2147483647i) ^ vec3<i32>(2147483647i, 2147483647i, u_input.a)));
}

