struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool;

var<private> global2: array<u32, 29> = array<u32, 29>(61838u, 43490u, 37399u, 40684u, 8348u, 1u, 4294967295u, 110858u, 4294967295u, 1u, 0u, 0u, 1u, 10138u, 52162u, 92843u, 0u, 4294967295u, 15740u, 0u, 52614u, 1u, 1u, 24777u, 4294967295u, 67877u, 4294967295u, 64212u, 66319u);

var<private> global3: i32 = 32723i;

var<private> global4: Struct_1 = Struct_1(vec2<bool>(true, true), 1u, vec3<u32>(1u, 1u, 4294967295u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>, arg_3: f32) -> u32 {
    let var_0 = Struct_1(!(!arg_0.a), 88698u, arg_2);
    global0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_3, 1435f), _wgslsmith_f_op_f32(ceil(global0.a))), vec3<bool>(arg_0.a.x, var_0.a.x, !(_wgslsmith_f_op_f32(min(1216f, arg_3)) < _wgslsmith_f_op_f32(-global0.a))), 32348u);
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.a * -1874f))), _wgslsmith_f_op_f32(trunc(-1386f)), 1561f, _wgslsmith_f_op_f32(min(-1818f, _wgslsmith_f_op_f32(floor(110f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(887f, arg_3, 829f, arg_3)) + vec4<f32>(211f, global0.a, 3228f, global0.a)) + vec4<f32>(_wgslsmith_f_op_f32(arg_3 + arg_3), arg_3, _wgslsmith_f_op_f32(step(global0.a, -417f)), -858f)))));
    let var_2 = arg_1;
    global4 = Struct_1(global4.a, 36550u, firstLeadingBit(arg_0.c));
    return global4.c.x;
}

fn func_2(arg_0: Struct_2) -> i32 {
    var var_0 = abs(abs(_wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(global0.c, global4.b, global4.b, global2[_wgslsmith_index_u32(global4.c.x, 29u)]), vec4<u32>(15737u, 0u, 2564u, 0u)), ~(~vec4<u32>(4294967295u, u_input.d.x, 1u, global0.c)))));
    var var_1 = global4.c.x;
    let var_2 = _wgslsmith_clamp_vec3_u32(select(~abs(var_0.yzx), ~firstTrailingBit(var_0.yxy), vec3<bool>(global4.a.x, false, global0.b.x)) & var_0.wwy, vec3<u32>(53054u, func_3(Struct_1(vec2<bool>(global0.b.x, arg_0.b.x), 20048u, global4.c), global4.b, vec3<u32>(firstLeadingBit(var_0.x), global4.b ^ global4.b, 75248u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1205f, -660f))), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, 43315u), 29u)]), _wgslsmith_div_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c.x), global4.c.yx), 58688u, 17886u), ~((vec3<u32>(6283u, 1000u, 0u) & vec3<u32>(var_0.x, var_0.x, global0.c)) ^ var_0.zyx)));
    let var_3 = Struct_1(select(select(!vec2<bool>(global4.a.x, false), vec2<bool>(false, !global0.b.x), arg_0.b.yy), arg_0.b.xz, !global4.a.x), 26455u, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u ^ var_2.x, arg_0.c, _wgslsmith_div_u32(var_2.x, 5310u), 77463u | var_2.x), ~vec4<u32>(u_input.c.x, 1382u, 14181u, var_2.x)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(var_2, var_0.zxy), 21675u), global4.b));
    let var_4 = var_3;
    return u_input.a.x >> (1u % 32u);
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: i32, arg_3: vec3<i32>) -> vec3<f32> {
    global0 = Struct_2(_wgslsmith_f_op_f32(step(-140f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -818f))))), global0.b, _wgslsmith_add_u32(1u >> (global0.c % 32u), ~_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(arg_0 ^ global4.b, 29u)], global2[_wgslsmith_index_u32(1u, 29u)] | global0.c, 0u)));
    global3 = _wgslsmith_add_i32(abs(_wgslsmith_mult_i32(arg_1.x, _wgslsmith_sub_i32(-9082i, -2147483647i)) ^ (arg_1.x & u_input.b.x)), _wgslsmith_clamp_i32(_wgslsmith_add_i32(~firstLeadingBit(u_input.a.x), func_2(Struct_2(global0.a, vec3<bool>(false, false, true), 5122u))), _wgslsmith_sub_i32(arg_2, firstLeadingBit(arg_1.x << (11234u % 32u))), ~(-2147483647i)));
    global0 = Struct_2(global0.a, !global0.b, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global4.c.xz & (u_input.c << (u_input.c % vec2<u32>(32u))), global4.c.xz), _wgslsmith_clamp_u32(~func_3(Struct_1(global4.a, global0.c, global4.c), 3793u, global4.c, global0.a), _wgslsmith_div_u32(19042u, 4294967295u) ^ global4.b, 34156u)));
    global4 = Struct_1(global4.a, global4.b, abs(_wgslsmith_clamp_vec3_u32(global4.c, global4.c, _wgslsmith_clamp_vec3_u32(vec3<u32>(10521u, 49901u, 0u), global4.c, ~vec3<u32>(0u, global2[_wgslsmith_index_u32(12674u, 29u)], arg_0)))));
    global1 = all(!global4.a) && true;
    return vec3<f32>(global0.a, _wgslsmith_div_f32(219f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a), -233f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(-554f - -1687f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * 845f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(~global4.c.x, firstLeadingBit(u_input.b.xw), u_input.a.x, u_input.a)))));
    global0 = Struct_2(var_0.x, !global0.b, ~4242u);
    let var_1 = Struct_2(-1142f, global0.b, 8590u);
    var var_2 = Struct_1(vec2<bool>(global4.a.x, ~countOneBits(global2[_wgslsmith_index_u32(var_1.c, 29u)]) != _wgslsmith_mod_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global0.c, 29u)], 39178u), abs(1u))), 4294967295u, max(global4.c, min(global4.c, vec3<u32>(u_input.d.x, global0.c, 1u)) >> (~max(vec3<u32>(global0.c, var_1.c, 96296u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 29u)], 29u)], global2[_wgslsmith_index_u32(1u, 29u)], u_input.c.x)) % vec3<u32>(32u))));
    var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, global0.a, -713f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2077f, 478f, 849f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-497f, var_0.x, 142f), vec3<f32>(var_0.x, -373f, global0.a))), vec3<f32>(-664f, -1065f, _wgslsmith_f_op_f32(exp2(var_0.x)))))))));
    var var_3 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, _wgslsmith_f_op_f32(2021f - 1598f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * global0.a) * global0.a))), firstLeadingBit(_wgslsmith_add_i32(abs(~(-2147483647i)), _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.b.x, 15991i), u_input.a.x))), vec3<i32>(-u_input.a.x, -(~(~18232i)), _wgslsmith_sub_i32(-u_input.a.x, u_input.a.x)), global4.c.x);
}

