struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec4<f32>(-549f, -455f, 2302f, -1649f));

var<private> global1: vec2<i32> = vec2<i32>(-7456i, 2147483647i);

var<private> global2: array<bool, 25> = array<bool, 25>(true, false, false, true, true, true, false, false, true, false, true, true, false, true, true, false, true, false, false, false, true, true, true, false, true);

var<private> global3: array<u32, 29> = array<u32, 29>(4294967295u, 4294967295u, 57233u, 38439u, 1u, 49410u, 1u, 0u, 7782u, 49640u, 65083u, 39500u, 43895u, 44339u, 15731u, 45472u, 0u, 23077u, 2745u, 23073u, 0u, 1548u, 0u, 0u, 19655u, 77319u, 9471u, 0u, 38756u);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    global3 = array<u32, 29>();
    var var_0 = all(select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.e, 25u)], global0.a), select(select(select(vec2<bool>(true, false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.e, 25u)], true), true), vec2<bool>(global0.a, global0.a), select(vec2<bool>(true, false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.e, 25u)], false), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e, 29u)], 25u)])), select(select(vec2<bool>(false, global0.a), vec2<bool>(false, global0.a), global0.a), select(vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 25u)]), vec2<bool>(global0.a, false), global0.a), !vec2<bool>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 29u)], 29u)], 25u)], true)), true), true));
    global1 = max(vec2<i32>(16587i, reverseBits(_wgslsmith_dot_vec2_i32(u_input.c.ww, vec2<i32>(global1.x, -31178i) >> (vec2<u32>(1u, u_input.e) % vec2<u32>(32u))))), _wgslsmith_clamp_vec2_i32(u_input.c.ww, vec2<i32>(~35914i & _wgslsmith_mod_i32(u_input.d, global1.x), global1.x), u_input.c.xw));
    var_0 = all(!vec4<bool>(global0.a && (global2[_wgslsmith_index_u32(u_input.e, 25u)] && false), global0.a, global2[_wgslsmith_index_u32(88728u, 25u)], global2[_wgslsmith_index_u32(u_input.e, 25u)]));
    var var_1 = u_input.b;
    return u_input.a;
}

fn func_2() -> u32 {
    let var_0 = Struct_1(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_div_f32(751f, 824f))), global0.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.b.x), global0.b.x, all(vec3<bool>(global0.a, true, global0.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2113f * global0.b.x) + _wgslsmith_f_op_f32(-global0.b.x)))));
    let var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(61865i, countOneBits(1i), u_input.a), vec3<i32>(u_input.d, _wgslsmith_div_i32(global1.x, select(u_input.d, 1i, true)), -13849i)) & (select(vec3<i32>(u_input.b, -u_input.a, _wgslsmith_div_i32(global1.x, -2147483647i)), firstLeadingBit(u_input.c.wzw) ^ -vec3<i32>(global1.x, u_input.a, global1.x), false | global2[_wgslsmith_index_u32(u_input.e, 25u)]) & vec3<i32>(_wgslsmith_mod_i32(-1i, ~5095i), ~func_3(), select(u_input.c.x, -19262i, var_0.a) & 2147483647i));
    return abs(~u_input.e);
}

fn func_4(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = u_input.c.zzy;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, -1033f, global0.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global0.b.xyw, vec3<f32>(-1806f, 244f, global0.b.x))))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(203f, -1995f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b.x))))));
    let var_2 = ~(~0i << (~(~_wgslsmith_dot_vec3_u32(vec3<u32>(16243u, u_input.e, arg_0.x), arg_0)) % 32u));
    global2 = array<bool, 25>();
    global3 = array<u32, 29>();
    return Struct_1(!global0.a, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-947f, 691f))), var_1.x, global0.b.x))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> vec4<bool> {
    global0 = func_4(~vec3<u32>(~1u ^ func_2(), global3[_wgslsmith_index_u32(u_input.e, 29u)], ~25530u));
    let var_0 = 4294967295u;
    let var_1 = vec2<i32>(2147483647i, -1i);
    let var_2 = _wgslsmith_mult_vec3_i32(min(abs(vec3<i32>(-1i) * -vec3<i32>(-27009i, 0i, var_1.x)), -u_input.c.yyz), vec3<i32>(abs(abs(31122i) ^ _wgslsmith_add_i32(0i, u_input.a)), global1.x, -27151i));
    var var_3 = vec3<u32>(~0u, u_input.e, global3[_wgslsmith_index_u32(u_input.e, 29u)]) | _wgslsmith_div_vec3_u32(~vec3<u32>(var_0, 1u, ~global3[_wgslsmith_index_u32(50479u, 29u)]), ~(vec3<u32>(var_0, 2471u, var_0) >> (select(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0, 29u)], 29u)], 0u, var_0), vec3<u32>(var_0, 1u, 23727u), vec3<bool>(global0.a, arg_1, global0.a)) % vec3<u32>(32u))));
    return vec4<bool>(true, true, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(true, global0.a, global2[_wgslsmith_index_u32(~firstLeadingBit(0u), 25u)], global2[_wgslsmith_index_u32(~(~39104u), 25u)]), select(select(func_1(Struct_1(global0.a, vec4<f32>(global0.b.x, -474f, global0.b.x, 487f)), true), vec4<bool>(false, select(true, false, true), any(vec2<bool>(true, true)), global2[_wgslsmith_index_u32(4294967295u, 25u)]), !(!global0.a)), select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.e, 25u)], true, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.e, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 29u)], 29u)]), 25u)]), vec4<bool>(global0.a, true, !global2[_wgslsmith_index_u32(u_input.e, 25u)], global0.a), vec4<bool>(true, false, !global2[_wgslsmith_index_u32(u_input.e, 25u)], u_input.e != 1u)), !vec4<bool>(false | global2[_wgslsmith_index_u32(71749u, 25u)], select(false, false, global0.a), global2[_wgslsmith_index_u32(~u_input.e, 25u)], true)), !global0.a & !global0.a);
    var var_1 = _wgslsmith_sub_vec3_u32(countOneBits(~vec3<u32>(~4227u, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 4294967295u)), _wgslsmith_div_vec3_u32(select(_wgslsmith_sub_vec3_u32(~vec3<u32>(global3[_wgslsmith_index_u32(0u, 29u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e, 29u)], 29u)], global3[_wgslsmith_index_u32(1u, 29u)]), ~vec3<u32>(u_input.e, 2823u, 26293u)), ~reverseBits(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e, 29u)], 29u)], u_input.e, 8682u)), all(vec2<bool>(false, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(60471u, 29u)], 25u)]))), ~vec3<u32>(u_input.e, ~u_input.e, global3[_wgslsmith_index_u32(reverseBits(15498u), 29u)])));
    global2 = array<bool, 25>();
    global2 = array<bool, 25>();
    global1 = u_input.c.wy;
    global2 = array<bool, 25>();
    var var_2 = vec4<i32>(global1.x, ~(~(4116i & global1.x) << (_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_1.yz, vec2<u32>(19611u, 0u)), reverseBits(vec2<u32>(30476u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 29u)], 29u)]))) % 32u)), _wgslsmith_mult_i32(-1i, func_3()), 2147483647i);
    let var_3 = _wgslsmith_clamp_i32(firstTrailingBit(20943i), _wgslsmith_mod_i32(u_input.b, (i32(-1i) * -global1.x) << (abs(global3[_wgslsmith_index_u32(23831u, 29u)] << (var_1.x % 32u)) % 32u)), 28871i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b.zz) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.b.x), -1000f) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(global0.b.zx, global0.b.xw, vec2<bool>(global0.a, var_0.x))), global0.b.xz)))), vec4<f32>(_wgslsmith_div_f32(global0.b.x, global0.b.x), -1207f, global0.b.x, _wgslsmith_f_op_f32(-921f + 348f)), vec2<f32>(-465f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))));
}

