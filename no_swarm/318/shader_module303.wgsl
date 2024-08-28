struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: Struct_2 = Struct_2(vec3<u32>(3940u, 49576u, 0u));

var<private> global2: Struct_1 = Struct_1(false, vec4<bool>(false, false, false, true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    global1 = Struct_2(vec3<u32>(~(~_wgslsmith_dot_vec3_u32(global1.a, vec3<u32>(u_input.d, global1.a.x, u_input.a.x))), global1.a.x & _wgslsmith_add_u32(~global1.a.x, 5892u), 1u));
    let var_0 = Struct_2(vec3<u32>(u_input.e, (global1.a.x | 1u) | firstTrailingBit(u_input.d), u_input.a.x));
    global2 = Struct_1(all(!vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(30999u, u_input.e), 2u)], global2.a, true)), select(global2.b, !vec4<bool>(true, global2.b.x, global2.b.x, 1i >= u_input.b.x), !global2.b));
    global2 = Struct_1(global0[_wgslsmith_index_u32(var_0.a.x, 2u)], global2.b);
    global1 = var_0;
    return abs(1u) <= u_input.d;
}

fn func_2() -> Struct_1 {
    global2 = Struct_1(func_3(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, -173f, -424f)))), vec4<bool>(any(!select(vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(1u, 2u)]), vec4<bool>(global2.a, global2.b.x, false, true), global2.b)), global2.a, !(!func_3(vec3<f32>(346f, -518f, 1406f))), func_3(vec3<f32>(_wgslsmith_div_f32(-118f, 464f), -1000f, -1000f))));
    global0 = array<bool, 2>();
    let var_0 = Struct_1(true, global2.b);
    let var_1 = vec4<i32>(u_input.b.x, ~(-21687i), 1i, ~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), u_input.b.zz), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b.x), u_input.b.yy)));
    return var_0;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec3<f32>) -> vec4<bool> {
    global1 = arg_1;
    var var_0 = 11395u | ~(~(~global1.a.x));
    let var_1 = u_input.a.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_3.x + 1f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1150f, -859f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0) * _wgslsmith_f_op_vec2_f32(trunc(arg_3.xx))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-167f, arg_3.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.zx))));
    let var_3 = func_2();
    return vec4<bool>(true | func_3(vec3<f32>(_wgslsmith_f_op_f32(step(arg_2.x, arg_3.x)), _wgslsmith_div_f32(arg_2.x, arg_0.x), _wgslsmith_div_f32(-2160f, arg_0.x))), select(true, true, !(true & (-140f == arg_2.x))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1, _wgslsmith_sub_u32(~(arg_1.a.x & global1.a.x), arg_1.a.x)), 2u)], true);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global2 = Struct_1(false, vec4<bool>(global0[_wgslsmith_index_u32(global1.a.x, 2u)], func_2().a, true, false));
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, abs(_wgslsmith_mult_i32(i32(-1i) * -64572i, u_input.b.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(36054i, -2147483647i), abs(u_input.b.x), u_input.c, 30937i), vec4<i32>(-u_input.b.x, -1i, u_input.c, reverseBits(-41830i)))), ~_wgslsmith_clamp_vec4_i32(min(vec4<i32>(24530i, -5582i, u_input.c, 0i), vec4<i32>(2147483647i, -30847i, -2147483647i, 2147483647i)), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.c) & -vec4<i32>(u_input.c, u_input.c, -1i, 28200i), _wgslsmith_add_vec4_i32(vec4<i32>(-39499i, -42306i, u_input.c, u_input.c), vec4<i32>(u_input.c, u_input.b.x, 1i, -1i))));
    var var_1 = min(abs(_wgslsmith_add_u32(firstLeadingBit(1u), global1.a.x & ~64798u)), u_input.d);
    var var_2 = ~1u ^ ~global1.a.x;
    let var_3 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-1i & u_input.c, -19442i, -2147483647i & _wgslsmith_sub_i32(~0i, u_input.b.x)), u_input.c);
    return ~u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -816f)), _wgslsmith_div_f32(-1122f, _wgslsmith_f_op_f32(f32(-1f) * -792f)), _wgslsmith_f_op_f32(round(-1549f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-343f + 375f), -532f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(402f, -498f, -410f, -1099f) + vec4<f32>(-517f, 142f, 1222f, -1262f))), vec4<f32>(-1767f, 735f, _wgslsmith_f_op_f32(689f + -464f), _wgslsmith_f_op_f32(f32(-1f) * -569f))))));
    let var_1 = false;
    global2 = Struct_1(select((true & (var_1 & var_1)) & !all(vec2<bool>(false, var_1)), (i32(-1i) * -1574i) == reverseBits(u_input.b.x), any(select(vec2<bool>(global2.b.x, global0[_wgslsmith_index_u32(global1.a.x, 2u)]), !global2.b.xy, global2.b.zw))), select(select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(58452u, 2u)], true, false), global2.b, false), !(!global2.b), vec4<bool>(global0[_wgslsmith_index_u32(abs(0u), 2u)], global0[_wgslsmith_index_u32(reverseBits(global1.a.x), 2u)], 1u <= global1.a.x, !global2.b.x)), select(vec4<bool>(any(global2.b.yyy), true, 1308f > var_0.x, true), !vec4<bool>(true, global0[_wgslsmith_index_u32(global1.a.x, 2u)], global0[_wgslsmith_index_u32(global1.a.x, 2u)], global2.b.x), true), select(vec4<bool>(global1.a.x == global1.a.x, global0[_wgslsmith_index_u32(~7476u, 2u)], true, all(vec4<bool>(false, true, false, var_1))), vec4<bool>(true, true, true, true), vec4<bool>(!global0[_wgslsmith_index_u32(21113u, 2u)], true, all(global2.b.xzw), false))));
    global0 = array<bool, 2>();
    let var_2 = func_4(!(!global2.b.xxz), Struct_1(!all(vec4<bool>(global0[_wgslsmith_index_u32(global1.a.x, 2u)], global0[_wgslsmith_index_u32(15846u, 2u)], global2.a, global2.a)) && var_1, global2.b), Struct_1(true, !select(global2.b, func_1(var_0.zw, Struct_2(vec3<u32>(52170u, u_input.a.x, global1.a.x)), var_0, vec3<f32>(var_0.x, var_0.x, -754f)), all(global2.b))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(global1.a.x), u_input.b, func_4(select(global2.b.xzz, global2.b.zxw, !(!global2.b.yyz)), Struct_1(all(global2.b.yw), vec4<bool>(all(vec2<bool>(global0[_wgslsmith_index_u32(74375u, 2u)], false)), var_1, func_1(var_0.zz, Struct_2(u_input.a.wwx), vec4<f32>(var_0.x, -320f, -457f, var_0.x), var_0.wzz).x, false)), func_2()));
}

