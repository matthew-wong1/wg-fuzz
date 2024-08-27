struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 0u, 0u, 160u);

var<private> global1: u32 = 1u;

var<private> global2: Struct_1;

var<private> global3: i32 = -10002i;

var<private> global4: array<f32, 9>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: u32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(reverseBits(abs(global0.x)), 9u)])));
    var var_1 = 0u;
    var var_2 = arg_0.a.xw;
    var var_3 = Struct_1(select(!(!select(global2.a, arg_0.a, global2.a)), vec4<bool>(true, arg_0.a.x | global2.a.x, all(vec2<bool>(true, arg_0.a.x)), !select(false, global2.a.x, var_2.x)), vec4<bool>(global2.a.x, true, true, any(select(vec4<bool>(arg_0.a.x, true, global2.a.x, false), arg_0.a, global2.a)))));
    let var_4 = Struct_1(vec4<bool>(false, true, !all(global2.a.xzw), false));
    return vec4<u32>(global0.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(~arg_2, _wgslsmith_div_u32(arg_2, 4294967295u)), global0.x), 4294967295u, _wgslsmith_div_u32(~92266u, 1u));
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    var var_0 = !all(global2.a.zxw);
    var_0 = !global2.a.x;
    global0 = abs(func_3(Struct_1(vec4<bool>(false, global2.a.x, true, true)), vec4<f32>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 12034u), global0.yy), 9u)], _wgslsmith_f_op_f32(arg_0.x - arg_0.x), -867f, global4[_wgslsmith_index_u32(u_input.a, 9u)]), 0u) | vec4<u32>(4294967295u, ~countOneBits(global0.x), global0.x, ~global0.x));
    var var_1 = Struct_1(global2.a);
    global3 = 0i ^ ~u_input.c.x;
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global0.zww, _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(12193u, 19335u, 4294967295u), global0.wwx), firstLeadingBit(global0.wwy)), ~min(global0.yyx, vec3<u32>(0u, global0.x, 29171u)))), 1u);
}

fn func_4(arg_0: f32) -> Struct_1 {
    global0 = vec4<u32>(~global0.x, 0u, ~select(global0.x, countOneBits(13883u >> (global0.x % 32u)), global2.a.x), global0.x);
    let var_0 = Struct_1(!select(!(!vec4<bool>(global2.a.x, false, true, false)), !global2.a, global2.a));
    var var_1 = var_0;
    var var_2 = !(!var_0.a.xwz);
    global3 = firstLeadingBit(-2147483647i);
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec2<i32>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_1(vec4<bool>(!(!select(true, false, global2.a.x)), (~arg_2.x | select(arg_2.x, arg_2.x, global2.a.x)) <= 0i, !(!func_4(global4[_wgslsmith_index_u32(24213u, 9u)]).a.x), all(arg_0.a.xx)));
    let var_1 = _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c, firstLeadingBit(u_input.c)), countOneBits(-_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1, arg_1, -2147483647i), u_input.c << (global0.yyy % vec3<u32>(32u)))));
    let var_2 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-385f))));
    global3 = arg_2.x;
    var var_3 = Struct_1(!(!global2.a));
    return Struct_1(arg_0.a);
}

fn func_1(arg_0: u32) -> vec4<bool> {
    global2 = func_5(func_4(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global4[_wgslsmith_index_u32(arg_0, 9u)], -449f, global4[_wgslsmith_index_u32(19950u, 9u)]), vec3<f32>(global4[_wgslsmith_index_u32(arg_0, 9u)], global4[_wgslsmith_index_u32(0u, 9u)], 106f)))), 9u)] + 405f)), u_input.c.x, _wgslsmith_mod_vec2_i32(u_input.d, max(~u_input.c.zx | (u_input.d | u_input.c.xy), vec2<i32>(i32(-1i) * -1i, ~(-46892i)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(global0.x, 9u)], _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(4294967295u ^ global0.x, 9u)]), -556f)));
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(global0.x, 9u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(arg_0, 9u)], 749f) - _wgslsmith_f_op_f32(floor(-1316f)))))))));
    let var_1 = ~u_input.d.x;
    var var_2 = func_4(1535f);
    let var_3 = Struct_1(vec4<bool>(true, all(vec3<bool>(!var_2.a.x, var_1 >= u_input.d.x, true)), false, var_2.a.x));
    return select(vec4<bool>(true == global2.a.x, var_3.a.x, global0.x <= ~u_input.b, false || var_2.a.x), func_5(func_4(445f), 0i, u_input.c.xx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1187f, global4[_wgslsmith_index_u32(u_input.e.x, 9u)], 1675f), vec3<f32>(868f, global4[_wgslsmith_index_u32(117017u, 9u)], global4[_wgslsmith_index_u32(0u, 9u)]))))).a, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(func_1(34163u), func_4(global4[_wgslsmith_index_u32(reverseBits(select(6991u, global0.x, global2.a.x)), 9u)]).a, true));
    var var_1 = func_4(global4[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(max(~u_input.e.x, ~global0.x), _wgslsmith_add_u32(54618u, u_input.a), _wgslsmith_mod_u32(~global0.x, _wgslsmith_add_u32(35613u, 41041u))), 9u)]);
    var_0 = Struct_1(select(vec4<bool>(var_1.a.x, true, func_5(Struct_1(vec4<bool>(var_0.a.x, var_0.a.x, true, var_1.a.x)), _wgslsmith_div_i32(u_input.d.x, u_input.c.x), vec2<i32>(46472i, 2147483647i), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(265f, global4[_wgslsmith_index_u32(0u, 9u)], 928f)))).a.x, true), global2.a, var_1.a.x));
    global1 = 0u;
    var var_2 = min(vec2<i32>(-5535i, ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, u_input.d.x), u_input.c.x & u_input.c.x)), select(u_input.c.zz, u_input.d, var_0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.c.x, 22122i, -20i), max(-31396i, -var_2.x), u_input.e.x, global0.x, abs(_wgslsmith_sub_vec2_u32(global0.wz, ~vec2<u32>(1u, global0.x) ^ _wgslsmith_mult_vec2_u32(u_input.e, vec2<u32>(1u, u_input.e.x)))));
}

