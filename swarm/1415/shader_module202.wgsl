struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<f32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9>;

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_3, 18>;

var<private> global3: Struct_3 = Struct_3(Struct_1(vec3<bool>(true, false, false), 5427u), Struct_2(Struct_1(vec3<bool>(true, false, false), 4294967295u), vec2<u32>(0u, 4294967295u), vec2<f32>(1382f, 332f), Struct_1(vec3<bool>(false, false, true), 21631u), vec2<f32>(-1403f, 374f)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    var var_0 = global3.b.c.x;
    global2 = array<Struct_3, 18>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(global3.b.c.x, global3.b.c.x, global3.b.e.x), vec3<f32>(arg_2.e.x, 347f, -1240f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2.e.x, global3.b.e.x, 1034f))), _wgslsmith_div_vec3_f32(vec3<f32>(-774f, 831f, global3.b.e.x), vec3<f32>(248f, arg_2.c.x, global3.b.c.x))))), global3.a.a.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-269f, global3.b.c.x, -1872f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(675f, -1595f, global3.b.e.x))))));
    var var_2 = arg_2.d.a.x;
    let var_3 = global2[_wgslsmith_index_u32(27245u, 18u)];
    return ~(~_wgslsmith_div_u32(arg_1.b, 22343u) ^ 1u);
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1, arg_3: u32) -> vec3<bool> {
    let var_0 = ~reverseBits(global3.b.b);
    global3 = Struct_3(arg_2, global0[_wgslsmith_index_u32(~(~47321u), 9u)]);
    return !global3.a.a;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: Struct_3) -> vec3<i32> {
    return -max(vec3<i32>(~max(u_input.c, u_input.c), -1i, ~(u_input.c & u_input.c)), -vec3<i32>(1i, u_input.c, u_input.c));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> Struct_3 {
    var var_0 = 15843u;
    var var_1 = select(func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -2173f), global3.b.e.x), !select(vec3<bool>(arg_0, arg_1.a.x, arg_0), func_3(false, Struct_3(Struct_1(vec3<bool>(global3.a.a.x, global3.b.a.a.x, arg_0), 4294967295u), Struct_2(Struct_1(global3.b.d.a, u_input.b.x), vec2<u32>(u_input.a.x, 31681u), vec2<f32>(147f, global3.b.c.x), global3.a, vec2<f32>(global3.b.e.x, 1123f))), Struct_1(global3.a.a, 0u), 61438u), select(vec3<bool>(arg_1.a.x, arg_0, arg_0), global3.a.a, true)), global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global1.x, 1u ^ arg_1.b), 18u)]), -min(_wgslsmith_sub_vec3_i32(~vec3<i32>(2147483647i, 4404i, u_input.c), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, -5683i, arg_2), vec3<i32>(arg_2, -2147483647i, arg_2))), _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(-1i, arg_2, arg_2)), vec3<i32>(2147483647i, arg_2, u_input.c) ^ vec3<i32>(u_input.c, 25829i, u_input.c))), select(vec3<bool>(true, true, all(!arg_1.a)), !select(global3.a.a, !vec3<bool>(arg_1.a.x, true, true), any(vec4<bool>(global3.b.d.a.x, global3.a.a.x, global3.b.d.a.x, arg_0))), arg_0));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global3.b.c.x)))), global3.b.c.x)))));
    var_2 = 748f;
    var_0 = 1u;
    return global2[_wgslsmith_index_u32(0u, 18u)];
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: i32) -> Struct_2 {
    global0 = array<Struct_2, 9>();
    global1 = select(~(~vec4<u32>(arg_0.b.a.b, min(arg_0.a.b, u_input.b.x), arg_0.a.b, ~22752u)), vec4<u32>(u_input.b.x, global3.b.a.b, u_input.a.x, u_input.a.x), select(vec4<bool>(false, false, true, arg_0.a.a.x), select(!select(vec4<bool>(true, arg_0.a.a.x, true, arg_0.b.d.a.x), vec4<bool>(true, global3.b.d.a.x, false, false), vec4<bool>(false, true, arg_0.a.a.x, global3.a.a.x)), select(!vec4<bool>(false, global3.a.a.x, global3.a.a.x, false), vec4<bool>(true, true, true, true), vec4<bool>(global3.b.a.a.x, true, global3.a.a.x, false)), select(!vec4<bool>(arg_0.a.a.x, false, arg_0.a.a.x, true), vec4<bool>(arg_0.b.a.a.x, true, false, true), select(vec4<bool>(true, true, false, arg_0.b.d.a.x), vec4<bool>(false, false, global3.b.a.a.x, global3.b.d.a.x), false))), (_wgslsmith_f_op_f32(352f + global3.b.e.x) < _wgslsmith_f_op_f32(-global3.b.e.x)) & arg_0.b.d.a.x));
    let var_0 = func_2(false, func_2(true | (true & !global3.b.d.a.x), Struct_1(select(select(vec3<bool>(global3.b.a.a.x, false, true), arg_0.b.a.a, true), arg_0.b.d.a, arg_0.b.d.a), ~max(global3.a.b, arg_1.x)), _wgslsmith_div_i32(-u_input.c, -32225i)).a, arg_2).b.d;
    var var_1 = false & ((global1.x != var_0.b) | (!select(false, var_0.a.x, global3.b.a.a.x) && all(func_3(true, Struct_3(var_0, Struct_2(var_0, global1.yw, global3.b.e, Struct_1(vec3<bool>(false, true, true), 16694u), vec2<f32>(arg_0.b.e.x, arg_0.b.c.x))), arg_0.b.d, var_0.b).xx)));
    let var_2 = Struct_2(Struct_1(func_3(global3.a.a.x, Struct_3(var_0, arg_0.b), global3.a, ~(33405u ^ arg_0.b.a.b)), ~(~reverseBits(u_input.a.x))), _wgslsmith_sub_vec2_u32(min(~_wgslsmith_div_vec2_u32(arg_1, vec2<u32>(var_0.b, 4294967295u)), func_2(u_input.b.x == global3.a.b, Struct_1(vec3<bool>(false, true, arg_0.a.a.x), global3.b.d.b), i32(-1i) * -1i).b.b), vec2<u32>(global3.a.b, u_input.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global3.b.e.x + 575f), -976f) * vec2<f32>(arg_0.b.c.x, _wgslsmith_f_op_f32(314f * arg_0.b.c.x))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1200f))), 583f)), Struct_1(!var_0.a, select(arg_1.x, 74863u, true)), vec2<f32>(391f, _wgslsmith_f_op_f32(global3.b.e.x + 822f)));
    return Struct_2(func_2(all(vec2<bool>(global3.a.a.x, !arg_0.a.a.x)), func_2(true, func_2(var_2.d.a.x, func_2(true, Struct_1(var_2.a.a, global3.b.a.b), u_input.c).b.d, -1286i).a, ~1i).a, u_input.c).a, vec2<u32>(var_0.b, 0u) | arg_1, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_0.b.c))), Struct_1(func_3(true, global2[_wgslsmith_index_u32(~1u, 18u)], arg_0.b.d, 1u), var_2.b.x), _wgslsmith_f_op_vec2_f32(abs(arg_0.b.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.c;
    var var_1 = _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a.x, ~_wgslsmith_div_u32(global1.x, u_input.b.x)), vec2<u32>(abs(min(func_1(global3.b.d.a, global3.b.d, global0[_wgslsmith_index_u32(global1.x, 9u)]), global3.b.b.x | 101260u)), 4294967295u));
    let var_2 = Struct_1(!(!global3.a.a), ~38817u);
    global2 = array<Struct_3, 18>();
    let var_3 = func_5(func_2(global3.a.a.x, var_2, -u_input.c), firstLeadingBit(global3.b.b) & _wgslsmith_mod_vec2_u32(firstLeadingBit(u_input.b) & abs(global3.b.b), max(global1.xz, vec2<u32>(4478u, 1u)) << (_wgslsmith_mod_vec2_u32(global3.b.b, vec2<u32>(0u, var_1.x)) % vec2<u32>(32u))), -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(vec4<u32>(~_wgslsmith_clamp_u32(1u, 76593u, 26737u), ~(~81624u), ~var_1.x >> (2394u % 32u), var_2.b), select(vec4<u32>(1u, 0u, u_input.a.x, 0u) | vec4<u32>(4294967295u, 12874u, global3.b.a.b, u_input.b.x), ~(vec4<u32>(global3.b.a.b, global1.x, var_2.b, var_3.b.x) >> (vec4<u32>(1u, 1u, global3.b.b.x, 48719u) % vec4<u32>(32u))), !vec4<bool>(var_3.d.a.x, var_3.a.a.x, true, true))), vec2<i32>(-46477i, reverseBits(abs(-u_input.c))));
}

