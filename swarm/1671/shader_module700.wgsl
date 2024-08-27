struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: Struct_2,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: Struct_3,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global1: i32 = -11752i;

var<private> global2: array<Struct_3, 30>;

var<private> global3: array<vec4<bool>, 26> = array<vec4<bool>, 26>(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    var var_0 = ~(~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~u_input.c, ~u_input.e.zz), 2147483647i));
    var var_1 = -752f > _wgslsmith_f_op_f32(sign(-1000f));
    var_1 = (all(!global0.wx) && global0.x) && false;
    global1 = -33951i;
    var var_2 = Struct_2(Struct_1(arg_0.x, vec2<f32>(_wgslsmith_f_op_f32(586f + -770f), 1597f), 1i, global0.x), Struct_1(_wgslsmith_mod_u32(0u, 33064u), vec2<f32>(1f, 1f), -max(i32(-1i) * -1i, u_input.c.x), global0.x), ~arg_0.zx);
    return _wgslsmith_sub_i32(0i, -reverseBits(firstLeadingBit(countOneBits(var_2.b.c))));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: f32, arg_3: u32) -> Struct_5 {
    let var_0 = -594f;
    var var_1 = Struct_5(arg_0.c.a.d, Struct_4(Struct_3(_wgslsmith_f_op_f32(select(arg_2, var_0, arg_0.b.x)), vec4<bool>(true, any(global3[_wgslsmith_index_u32(4294967295u, 26u)]), false, arg_0.e.b.x > 1082f), arg_0.c, vec4<u32>(_wgslsmith_dot_vec4_u32(arg_0.d, vec4<u32>(arg_1, 4294967295u, arg_3, 0u)), _wgslsmith_div_u32(23355u, 24484u), ~4294967295u, 1137u), arg_0.e), Struct_2(arg_0.c.a, Struct_1(_wgslsmith_mult_u32(4294967295u, 1u), vec2<f32>(-1000f, -349f), func_3(arg_0.d), arg_0.e.d | arg_0.b.x), abs(arg_0.d.yy)), arg_0.d), global2[_wgslsmith_index_u32(~0u, 30u)], arg_0.b.zxx, ~u_input.e.x);
    let var_2 = reverseBits(_wgslsmith_div_i32(func_3(~vec4<u32>(58542u, var_1.c.e.a, 4652u, arg_3)), -4940i));
    let var_3 = Struct_5(false, var_1.b, arg_0, var_1.b.a.b.wxz, ~(~arg_0.c.a.c));
    var var_4 = ~var_3.c.e.c;
    return var_3;
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_5, arg_3: Struct_4) -> bool {
    let var_0 = func_2(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(12966u, 19783u), u_input.a), 30u)], u_input.a & ~u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3.a.e.b.x * arg_2.b.b.b.b.x), 117f)) + _wgslsmith_f_op_f32(arg_3.a.a + arg_3.a.e.b.x))), arg_2.c.d.x).b.a.e;
    global2 = array<Struct_3, 30>();
    global0 = !(!func_2(arg_3.a, 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.a)), var_0.a).c.b);
    global1 = abs(arg_1);
    let var_1 = arg_2.b.b.a.b.x;
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(arg_3.a.c.c, vec2<u32>(arg_3.a.d.x | 4294967295u, ~arg_2.b.b.b.a)), arg_3.a.e.a) == ~_wgslsmith_dot_vec3_u32(arg_3.c.zyx, vec3<u32>(arg_3.a.c.c.x, 49717u, 0u));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_4) -> bool {
    let var_0 = vec3<i32>(select(abs(_wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(u_input.d, u_input.b, u_input.d))), _wgslsmith_add_i32(0i, -u_input.b), !func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.b.b.x, arg_2.a.c.a.b.x, arg_2.b.b.b.x, arg_2.b.b.b.x)), -2147483647i << (u_input.a % 32u), func_2(Struct_3(arg_2.a.a, arg_2.a.b, Struct_2(Struct_1(47860u, arg_2.b.b.b, -1753i, true), Struct_1(u_input.a, arg_2.a.e.b, arg_2.a.c.b.c, false), vec2<u32>(44284u, 15351u)), arg_2.a.d, Struct_1(4294967295u, arg_2.b.a.b, -1i, arg_1.x)), 5423u, -382f, 0u), Struct_4(global2[_wgslsmith_index_u32(0u, 30u)], arg_2.a.c, arg_2.c))), -2147483647i, -1i);
    global0 = !vec4<bool>(arg_2.b.a.d, (reverseBits(u_input.e.x) > var_0.x) || func_4(vec4<f32>(arg_2.b.b.b.x, -1301f, arg_2.a.c.a.b.x, -320f), _wgslsmith_clamp_i32(6747i, 11329i, u_input.e.x), func_2(Struct_3(arg_2.b.b.b.x, vec4<bool>(true, arg_1.x, global0.x, false), Struct_2(Struct_1(arg_2.a.e.a, vec2<f32>(127f, 2442f), arg_2.a.e.c, true), Struct_1(24428u, vec2<f32>(-251f, arg_2.a.e.b.x), -2147483647i, false), arg_2.c.zx), arg_2.a.d, Struct_1(1u, vec2<f32>(-775f, 293f), var_0.x, true)), 85115u, arg_2.b.b.b.x, u_input.a), Struct_4(arg_2.a, arg_2.b, vec4<u32>(arg_2.c.x, 0u, 1u, 0u))), true, ~(~(-2147483647i)) <= min(_wgslsmith_mod_i32(arg_2.b.a.c, arg_2.b.a.c), arg_2.b.a.c));
    global0 = arg_2.a.b;
    global0 = select(select(arg_2.a.b, global3[_wgslsmith_index_u32(arg_2.a.c.b.a, 26u)], !select(select(vec4<bool>(true, arg_1.x, global0.x, true), vec4<bool>(false, arg_0, false, arg_1.x), arg_2.a.b), select(arg_2.a.b, global3[_wgslsmith_index_u32(u_input.a, 26u)], false), arg_0)), vec4<bool>(false, !(!all(vec3<bool>(true, global0.x, false))), arg_0, arg_2.a.b.x), vec4<bool>(arg_2.b.b.d, true, _wgslsmith_clamp_i32(~u_input.e.x, _wgslsmith_div_i32(-1i, arg_2.b.a.c), -arg_2.a.e.c) >= _wgslsmith_sub_i32(var_0.x, _wgslsmith_mod_i32(u_input.d, 23917i)), global0.x));
    global2 = array<Struct_3, 30>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<bool>, 26>();
    global1 = u_input.e.x;
    var var_0 = Struct_1(~(max(~u_input.a, firstTrailingBit(u_input.a)) >> (~(~u_input.a) % 32u)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1065f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-630f + -441f))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-296f * -2416f))), -1000f), all(!global0.zy))), 1i, true | (!(global0.x & true) && !func_1(global0.x, vec2<bool>(false, true), Struct_4(global2[_wgslsmith_index_u32(5241u, 30u)], Struct_2(Struct_1(u_input.a, vec2<f32>(156f, 234f), u_input.b, true), Struct_1(68543u, vec2<f32>(-393f, -1321f), u_input.c.x, false), vec2<u32>(5785u, u_input.a)), vec4<u32>(30051u, u_input.a, 1u, u_input.a)))));
    var var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(~1u), 30u)];
    var_0 = Struct_1(reverseBits(0u) & ~(~(u_input.a ^ 1u)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(-2212f + var_0.b.x)), var_1.a))), u_input.c.x, true);
    var_0 = Struct_1(_wgslsmith_add_u32(var_0.a, u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-325f, -726f)))), min(u_input.c.x, -1i), !var_1.e.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~4294967295u, ~var_1.d.x) << (countOneBits(countOneBits(var_1.c.c)) % vec2<u32>(32u)), var_1.e.c);
}

