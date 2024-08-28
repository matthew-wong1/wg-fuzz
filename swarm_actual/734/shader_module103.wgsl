struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 31>;

var<private> global1: Struct_2;

var<private> global2: array<i32, 2>;

var<private> global3: array<Struct_1, 21>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    global0 = array<vec4<f32>, 31>();
    let var_0 = -1570f;
    let var_1 = global3[_wgslsmith_index_u32(~u_input.c, 21u)];
    var var_2 = any(arg_1.a);
    return vec4<bool>(false, var_1.b, var_1.b, 356f == global1.c);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: i32) -> Struct_1 {
    var var_0 = select(vec4<bool>(any(select(!arg_0.a, select(arg_0.a, vec4<bool>(false, true, false, false), false), global1.d.b | arg_0.b)), !arg_0.b, true, !global1.a.a.x), !(!vec4<bool>(true, true, !arg_0.a.x, arg_0.a.x)), !(!arg_0.a.x));
    global1 = Struct_2(Struct_1(!(!global1.d.a), true), Struct_1(global1.a.a, any(!select(vec2<bool>(true, true), vec2<bool>(true, true), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-188f, _wgslsmith_f_op_f32(-arg_1)))) + 668f), Struct_1(arg_0.a, global1.b.a.x && true));
    global1 = Struct_2(Struct_1(func_3(global1.d, global3[_wgslsmith_index_u32(max(71415u, 4294967295u), 21u)]), all(select(global1.d.a, arg_0.a, global1.d.a))), arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * arg_1))), global3[_wgslsmith_index_u32(arg_2, 21u)]);
    global3 = array<Struct_1, 21>();
    var var_1 = arg_2 > (_wgslsmith_mult_u32(0u | _wgslsmith_mod_u32(1u, u_input.a), u_input.a) & arg_2);
    return global3[_wgslsmith_index_u32(~12642u, 21u)];
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> vec4<i32> {
    let var_0 = func_2(func_2(global3[_wgslsmith_index_u32(u_input.c, 21u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1999f)), _wgslsmith_f_op_f32(select(862f, global1.c, false))))), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1, 4294967295u), vec2<u32>(arg_1, u_input.a), vec2<u32>(u_input.a, 1u))), 8109i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1120f, global1.c, false)), -721f) + _wgslsmith_f_op_f32(f32(-1f) * -570f)) + 1095f), u_input.a, -17165i).a.wx;
    var var_1 = Struct_2(global1.b, Struct_1(!global1.d.a, false), 1f, func_2(Struct_1(select(arg_0.a, vec4<bool>(var_0.x, global1.b.b, var_0.x, false), func_3(Struct_1(vec4<bool>(false, false, var_0.x, arg_0.b), false), global3[_wgslsmith_index_u32(arg_2, 21u)])), all(vec4<bool>(arg_0.b, arg_0.b, global1.b.a.x, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.c + _wgslsmith_f_op_f32(select(-294f, global1.c, true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(global1.c * global1.c), any(arg_0.a.yy)))), 19522u, ~(~_wgslsmith_clamp_i32(11497i, -1i, u_input.b))));
    var var_2 = reverseBits(_wgslsmith_mod_i32(9676i, -31514i >> (_wgslsmith_mod_u32(u_input.c, abs(arg_1)) % 32u)));
    var var_3 = vec4<f32>(_wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(1023f + _wgslsmith_f_op_f32(min(1670f, _wgslsmith_f_op_f32(round(var_1.c)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1133f))))), _wgslsmith_f_op_f32(round(-1255f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -295f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c * global1.c) - _wgslsmith_f_op_f32(-global1.c)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c + -1275f))))));
    let var_4 = ~(-u_input.b);
    return vec4<i32>(-1i) * -vec4<i32>(28076i, reverseBits(~global2[_wgslsmith_index_u32(1192u, 2u)]), 2147483647i, -(~34269i));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = select(-vec2<i32>(-16692i, -(i32(-1i) * -13862i)), select(_wgslsmith_add_vec2_i32(-arg_1.yy, ~_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.x, arg_1.x), arg_1.zy)), ~(~arg_1.wx), global1.d.b), true);
    var_0 = vec2<i32>(arg_1.x, 22136i);
    let var_1 = Struct_2(Struct_1(!(!(!global1.d.a)), false), Struct_1(vec4<bool>(true, !(!global1.d.b), global1.a.b, _wgslsmith_f_op_f32(global1.c * -1234f) == global1.c), any(!global1.a.a.yy)), _wgslsmith_f_op_f32(max(765f, _wgslsmith_f_op_f32(-global1.c))), Struct_1(func_3(func_2(global3[_wgslsmith_index_u32(~101997u, 21u)], _wgslsmith_f_op_f32(abs(global1.c)), _wgslsmith_div_u32(18264u, arg_0.x), -30916i), global1.a), true));
    var var_2 = global1.d.a.xyw;
    var var_3 = vec4<u32>(28028u & u_input.c, _wgslsmith_div_u32(4294967295u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, countOneBits(0u), ~26041u), _wgslsmith_dot_vec4_u32(arg_0, arg_0))), abs(firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_mult_u32(0u, 64081u), ~4294967295u))), ~arg_0.x & 7065u);
    return var_1;
}

fn func_1() -> Struct_2 {
    let var_0 = global1.a.a.wxx;
    let var_1 = select(vec2<bool>(var_0.x, global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.a, u_input.c), 2u)] < select(~global2[_wgslsmith_index_u32(4294967295u, 2u)], _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(3681u, 2u)], 1i), !var_0.x)), vec2<bool>(var_0.x, !select(true, false, global1.b.b)), !(!var_0.yx));
    let var_2 = 0u;
    global3 = array<Struct_1, 21>();
    global3 = array<Struct_1, 21>();
    return func_5(~(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 6349u, 0u, 0u), reverseBits(vec4<u32>(1u, var_2, u_input.a, 0u))) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(7434u, var_2, var_2, 0u), vec4<u32>(var_2, u_input.a, u_input.c, 4294967295u)) % vec4<u32>(32u))), abs(func_4(func_2(Struct_1(vec4<bool>(false, var_0.x, false, var_0.x), true), 281f, u_input.a >> (1u % 32u), -7543i), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2, var_2, var_2, 14562u) ^ vec4<u32>(var_2, 33134u, 45850u, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(14578u, var_2, 0u, 11987u), vec4<u32>(u_input.c, 0u, 1u, u_input.a))), 28542u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    var var_0 = Struct_1(global1.a.a, global1.d.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global1.c), countOneBits(_wgslsmith_add_vec3_u32(countOneBits(max(vec3<u32>(15139u, 8834u, 73087u), vec3<u32>(21366u, u_input.c, 38148u))), vec3<u32>(63018u, 128954u >> (1u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(u_input.c, u_input.c))))), _wgslsmith_f_op_f32(exp2(global1.c)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c, 251f, -612f) * vec3<f32>(global1.c, global1.c, global1.c))) + vec3<f32>(_wgslsmith_f_op_f32(max(global1.c, global1.c)), -440f, -1981f)))), abs(~min(vec4<u32>(1u, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 41627u, u_input.a)) >> (vec4<u32>(u_input.c, ~1u, 7405u, ~1u) % vec4<u32>(32u))));
}

