struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(false, true, true, false, false, false, true, true, false, false, false, false, true, false, true, false, false, true, true, false, true, true, false, true, false, false, true, false, true, true, false);

var<private> global1: Struct_1 = Struct_1(-39496i, 4294967295u, vec4<bool>(true, false, true, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<i32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-467f))))), -1721f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -111f)) - -195f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1675f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(396f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-294f - 1000f) + _wgslsmith_f_op_f32(f32(-1f) * -313f)))), true)));
    var var_1 = Struct_3(Struct_2(Struct_1(global1.a, 4294967295u & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 6335u), vec3<u32>(1u, 21022u, 61567u)), global1.c), select(global1.c.yyz, select(vec3<bool>(false, global0[_wgslsmith_index_u32(global1.b, 31u)], false), global1.c.zyw, select(vec3<bool>(global1.c.x, false, true), global1.c.yzz, global1.c.x)), global0[_wgslsmith_index_u32(~u_input.c, 31u)])), Struct_1(-global1.a, countOneBits(~(1u << (1u % 32u))), select(vec4<bool>(!global1.c.x, false, true, false), !(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 31u)], false, false, global0[_wgslsmith_index_u32(u_input.a.x, 31u)])), true)), _wgslsmith_mod_i32(u_input.e.x, ~u_input.d & -9966i) | -18861i, max(_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, global1.b, u_input.c), vec3<u32>(global1.b, 4294967295u, u_input.a.x) >> (vec3<u32>(global1.b, 4294967295u, 1u) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(4522u, 0u, 46794u), vec3<u32>(0u, 1u, global1.b), vec3<u32>(29464u, global1.b, 55142u)) << (select(vec3<u32>(u_input.b.x, u_input.a.x, 0u), vec3<u32>(u_input.a.x, 0u, global1.b), vec3<bool>(global0[_wgslsmith_index_u32(global1.b, 31u)], global0[_wgslsmith_index_u32(u_input.c, 31u)], global1.c.x)) % vec3<u32>(32u))) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global1.b, u_input.c) & (vec3<u32>(u_input.b.x, u_input.a.x, global1.b) | vec3<u32>(u_input.c, 12048u, 79495u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global1.b, u_input.a.x, 65775u), abs(vec3<u32>(34411u, global1.b, 77018u)), reverseBits(vec3<u32>(96616u, 1691u, u_input.b.x)))));
    let var_2 = 4912i;
    var_1 = Struct_3(var_1.a, Struct_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(-17995i, 1i, -1i, var_1.a.a.a), vec4<i32>(-25070i, 73613i, 66955i, ~u_input.d)), var_1.a.a.b, var_1.b.c), var_1.a.a.a, vec3<u32>(~(~_wgslsmith_add_u32(var_1.d.x, 7654u)), countOneBits(_wgslsmith_div_u32(u_input.a.x, u_input.c | 42830u)), ~(~4294967295u) & _wgslsmith_sub_u32(~global1.b, 0u)));
    var var_3 = vec2<i32>(max(5768i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, var_2), 1i)), -59649i);
    return -vec4<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(0i, global1.a)), u_input.e), -global1.a, ~global1.a, 2147483647i);
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: vec2<f32>) -> f32 {
    let var_0 = Struct_2(Struct_1(arg_0, 89718u, vec4<bool>(true, true, true, _wgslsmith_mod_i32(-24910i, 13205i) == _wgslsmith_add_i32(19342i, arg_1.x))), select(!(!global1.c.wwy), global1.c.xxz, select(vec3<bool>(any(global1.c.wzz), global1.c.x, !global0[_wgslsmith_index_u32(4294967295u, 31u)]), vec3<bool>(global1.c.x, true, true), global1.c.xxw)));
    var var_1 = var_0;
    global0 = array<bool, 31>();
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_div_i32(-22364i, -(reverseBits(30192i) << (_wgslsmith_div_u32(45613u, 115918u) % 32u))), _wgslsmith_dot_vec4_i32(func_3() << (_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 3647u, 0u, u_input.b.x) ^ vec4<u32>(0u, 18568u, 1u, global1.b), _wgslsmith_sub_vec4_u32(vec4<u32>(44128u, var_0.a.b, 4294967295u, u_input.c), vec4<u32>(82732u, global1.b, 1u, global1.b))) % vec4<u32>(32u)), min(-_wgslsmith_mult_vec4_i32(vec4<i32>(global1.a, var_0.a.a, arg_0, u_input.e.x), vec4<i32>(28674i, 1i, arg_0, 2147483647i)), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(arg_0, var_0.a.a, global1.a, arg_1.x)), ~vec4<i32>(0i, -667i, arg_1.x, arg_0)))));
    var var_3 = ~(0u << ((max(~global1.b, 1u) | 49722u) % 32u));
    return -283f;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: u32, arg_3: u32) -> vec4<f32> {
    global0 = array<bool, 31>();
    var var_0 = Struct_3(Struct_2(Struct_1(~(~arg_1.c), _wgslsmith_mult_u32(~arg_1.d.x, arg_3), global1.c), vec3<bool>(true, arg_1.a.b.x, any(global1.c.wyx))), arg_1.b, 9773i, abs(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, u_input.b.x, global1.b), _wgslsmith_mult_vec3_u32(vec3<u32>(20510u, arg_2, arg_2), arg_1.d)), arg_1.d)));
    var var_1 = u_input.e | countOneBits(u_input.e);
    var var_2 = 14160u;
    var var_3 = _wgslsmith_clamp_vec2_i32(-vec2<i32>((arg_1.b.a ^ var_0.c) & abs(arg_1.b.a), -2147483647i), firstLeadingBit(countOneBits(~u_input.e)), u_input.e);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1569f * _wgslsmith_f_op_f32(func_2(u_input.d, vec3<i32>(arg_1.b.a, u_input.e.x, var_0.c), arg_0))), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(func_2(_wgslsmith_add_i32(2147483647i, var_1.x), vec3<i32>(-2147483647i, var_1.x, -1i), arg_0)), _wgslsmith_f_op_f32(-arg_0.x)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -969f, -473f, arg_0.x))))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) - arg_0.x), -1347f, -922f, -638f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 31>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec2<f32>(628f, -478f), Struct_3(Struct_2(Struct_1(global1.a, 1759u, vec4<bool>(false, true, global1.c.x, global1.c.x)), global1.c.wzw), Struct_1(global1.a, 61107u, vec4<bool>(true, true, global0[_wgslsmith_index_u32(44234u, 31u)], false)), 13677i, vec3<u32>(u_input.c, u_input.a.x, 4294967295u)), 30953u, global1.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1005f, -735f, 200f, -458f) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(114f, 504f, 571f, 824f), vec4<f32>(772f, -1414f, 1211f, -636f))))), ~(~u_input.e.x) < ~(-4615i))));
    var var_1 = func_3().xxx;
    var_1 = vec3<i32>(abs(-var_1.x), 17687i, -1i);
    var var_2 = Struct_2(Struct_1(i32(-1i) * -abs(0i), 13377u, global1.c), vec3<bool>(true, u_input.a.x != (~4294967295u << ((70603u >> (global1.b % 32u)) % 32u)), all(vec3<bool>(global1.c.x, global0[_wgslsmith_index_u32(u_input.c, 31u)], false == global0[_wgslsmith_index_u32(global1.b, 31u)]))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-966f * _wgslsmith_div_f32(var_0.x, var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(var_0.x * var_0.x)), 553f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(33350i, global1.a), vec2<i32>(2147483647i, 0i)), -77360i), u_input.e));
}

