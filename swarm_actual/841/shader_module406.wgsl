struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, true, false), vec4<f32>(125f, 414f, 912f, -1431f), vec4<u32>(1u, 68760u, 8237u, 1u), vec3<i32>(-1i, 1i, 1i));

var<private> global1: Struct_1;

var<private> global2: array<vec2<f32>, 6>;

var<private> global3: array<i32, 29>;

var<private> global4: array<i32, 10> = array<i32, 10>(-18244i, -1i, 11897i, 2147483647i, -6314i, 2147483647i, 2147483647i, 2147483647i, -1i, 16466i);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec2<i32>) -> u32 {
    global3 = array<i32, 29>();
    global3 = array<i32, 29>();
    return u_input.a;
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(vec3<bool>(select((global1.c.x & 26580u) < ~global0.c.x, global0.a.x, !any(vec4<bool>(false, false, global1.a.x, global1.a.x))), !global1.a.x, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, global0.b.x, 2027f, 874f) - global0.b)))), vec4<u32>(1u, ~func_3(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.b, global3[_wgslsmith_index_u32(29619u, 29u)], global3[_wgslsmith_index_u32(u_input.c.x, 29u)]), vec4<i32>(global4[_wgslsmith_index_u32(global1.c.x, 10u)], global3[_wgslsmith_index_u32(u_input.c.x, 29u)], 20259i, 20238i), vec4<i32>(u_input.b, u_input.b, 0i, global4[_wgslsmith_index_u32(4294967295u, 10u)])), global0.b.yx, _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(1i, global3[_wgslsmith_index_u32(global1.c.x, 29u)]))), countOneBits(global1.c.x) | (global0.c.x | u_input.a), 4294967295u), vec3<i32>(firstLeadingBit(23676i), -17047i, global1.d.x));
    global3 = array<i32, 29>();
    let var_0 = vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(-476f * 437f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.b.x)) - _wgslsmith_f_op_f32(step(global0.b.x, 1110f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global0.b.x)))))));
    let var_1 = _wgslsmith_dot_vec2_i32(~global0.d.zz & max(reverseBits(~global0.d.zx), _wgslsmith_mult_vec2_i32(select(vec2<i32>(34630i, global1.d.x), vec2<i32>(global3[_wgslsmith_index_u32(global1.c.x, 29u)], u_input.b), vec2<bool>(global1.a.x, true)), global1.d.zx)), countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(global1.d.x, -21786i), _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.d.x, global4[_wgslsmith_index_u32(0u, 10u)]), global0.d.yy, vec2<i32>(-34553i, global0.d.x)), firstLeadingBit(vec2<i32>(-2147483647i, 2147483647i))))));
    global1 = Struct_1(vec3<bool>(u_input.a == (_wgslsmith_dot_vec4_u32(global1.c, global0.c) << (max(8068u, 7945u) % 32u)), global1.b.x != global0.b.x, !global0.a.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-792f + 475f), -502f)) + _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(round(792f)), true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2854f * var_0.x) + _wgslsmith_f_op_f32(ceil(global1.b.x))))), _wgslsmith_div_f32(-177f, _wgslsmith_f_op_f32(global0.b.x * -2105f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(112f - global1.b.x)))), firstLeadingBit((_wgslsmith_mult_vec4_u32(vec4<u32>(96027u, 14149u, global0.c.x, 59019u), global0.c) | (global1.c ^ global0.c)) ^ vec4<u32>(global1.c.x << (global0.c.x % 32u), max(u_input.a, 85602u), _wgslsmith_clamp_u32(global0.c.x, 0u, global0.c.x), 11907u)), ~(-_wgslsmith_add_vec3_i32(abs(vec3<i32>(1i, global1.d.x, global1.d.x)), global1.d << (global0.c.yxz % vec3<u32>(32u)))));
    return Struct_1(!global1.a, vec4<f32>(global0.b.x, 678f, 269f, _wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x - 2485f) + _wgslsmith_f_op_f32(-global1.b.x)))), ~firstLeadingBit(vec4<u32>(global0.c.x, 19379u, global1.c.x, 42638u) & firstLeadingBit(vec4<u32>(58924u, global0.c.x, 6956u, global0.c.x))), vec3<i32>(_wgslsmith_mod_i32(-reverseBits(global3[_wgslsmith_index_u32(u_input.a, 29u)]), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.c.x, 4294967295u) >> (abs(global0.c.x) % 32u), 10u)]), min(global3[_wgslsmith_index_u32(reverseBits(~13042u), 29u)], -(global4[_wgslsmith_index_u32(global0.c.x, 10u)] | global4[_wgslsmith_index_u32(10919u, 10u)])), _wgslsmith_dot_vec3_i32(global1.d, _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, var_1, global4[_wgslsmith_index_u32(21253u, 10u)]), max(global0.d, vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 29u)], global0.d.x, u_input.b))))));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(round(-771f));
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(-arg_0.d.x, 1i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(global0.d.x, 1i), arg_0.d.xz >> (vec2<u32>(global1.c.x, arg_0.c.x) % vec2<u32>(32u))), i32(-1i) * -52360i, global4[_wgslsmith_index_u32(global1.c.x, 10u)]), firstTrailingBit(vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(u_input.b, 14035i, 1i, 1599i))));
    global3 = array<i32, 29>();
    global3 = array<i32, 29>();
    global3 = array<i32, 29>();
    return Struct_1(vec3<bool>(all(global0.a.yy), true, any(select(select(vec4<bool>(true, false, true, global1.a.x), vec4<bool>(true, false, global0.a.x, global1.a.x), false), vec4<bool>(global0.a.x, false, global1.a.x, true), global1.a.x))), global0.b, _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.c.x, abs(47398u), ~4294967295u, global1.c.x ^ ~4294967295u), ~vec4<u32>(85124u, ~1u, _wgslsmith_dot_vec2_u32(global0.c.yz, vec2<u32>(arg_0.c.x, arg_0.c.x)), select(11087u, 68544u, true))), global1.d);
}

fn func_1(arg_0: i32, arg_1: i32) -> u32 {
    let var_0 = global1.b.x;
    let var_1 = 0i;
    global1 = func_4(func_2(), all(!select(vec3<bool>(true, false, false), global1.a, true)) || (global0.b.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -413f) * 536f)));
    let var_2 = vec4<u32>(53606u, _wgslsmith_dot_vec3_u32(global0.c.zyz, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, 37957u, u_input.a), vec3<u32>(0u, 0u, 64935u) << (u_input.c % vec3<u32>(32u)), vec3<u32>(39168u, 0u, 67171u))), u_input.a, _wgslsmith_add_u32(~(global0.c.x >> (global0.c.x % 32u)), countOneBits(u_input.a))) | vec4<u32>(global0.c.x, u_input.c.x, 39268u, abs(~func_4(Struct_1(global0.a, vec4<f32>(708f, -295f, global1.b.x, global0.b.x), vec4<u32>(u_input.a, u_input.a, global0.c.x, 0u), global1.d), true).c.x));
    var var_3 = ~arg_1;
    return global0.c.x | ~global0.c.x;
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = select(select(vec4<bool>(arg_1.x, func_2().a.x && true, global0.a.x, func_2().a.x), !(!(!vec4<bool>(true, arg_2.a.x, false, false))), !(!select(vec4<bool>(true, arg_2.a.x, arg_1.x, arg_2.a.x), vec4<bool>(true, false, arg_3.x, false), true))), !vec4<bool>(true, func_2().a.x && arg_3.x, true, _wgslsmith_div_f32(arg_2.b.x, global1.b.x) < _wgslsmith_f_op_f32(-global1.b.x)), !select(vec4<bool>(false, global1.a.x, arg_3.x, true), !vec4<bool>(true, true, arg_3.x, false), !select(vec4<bool>(arg_3.x, false, true, global0.a.x), vec4<bool>(arg_2.a.x, arg_3.x, true, false), false)));
    let var_1 = arg_2;
    global0 = Struct_1(vec3<bool>(all(select(!var_1.a, var_0.yzw, global0.a.x)), false, true), vec4<f32>(func_2().b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(389f)))), global1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b.x, _wgslsmith_f_op_f32(round(-476f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))), -1223f), vec4<u32>(~(~(~arg_2.c.x)), global1.c.x, ~(~4294967295u), abs(~4294967295u) ^ abs(u_input.c.x)), var_1.d);
    var var_2 = vec2<u32>(_wgslsmith_mult_u32(arg_2.c.x, _wgslsmith_dot_vec2_u32(global0.c.zx, vec2<u32>(1u, arg_2.c.x))), func_2().c.x & global1.c.x);
    return func_4(Struct_1(select(!(!global1.a), vec3<bool>(false | var_0.x, 1u <= global0.c.x, var_1.a.x), !global0.a), vec4<f32>(-269f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), 311f, arg_2.b.x), arg_2.c, global0.d), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1853f)))) > -220f);
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    global0 = arg_0;
    global4 = array<i32, 10>();
    let var_0 = Struct_1(vec3<bool>(global1.a.x, arg_0.c.x < firstLeadingBit(~6749u), select(true, all(vec3<bool>(global0.a.x, false, false)), any(global0.a.yz))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global1.b)) - arg_0.b) * _wgslsmith_f_op_vec4_f32(-global0.b)) - _wgslsmith_f_op_vec4_f32(-arg_0.b)), ~(~vec4<u32>(15972u, arg_0.c.x, 41328u, 4294967295u) & (_wgslsmith_mult_vec4_u32(vec4<u32>(16886u, global0.c.x, 0u, global0.c.x), vec4<u32>(47247u, 0u, 0u, 37856u)) ^ arg_0.c)), global1.d);
    var var_1 = vec2<i32>(~(~0i), ~countOneBits(global0.d.x));
    var var_2 = Struct_1(func_4(arg_0, false).a, var_0.b, var_0.c, select(var_0.d | _wgslsmith_add_vec3_i32(var_0.d, arg_0.d), _wgslsmith_mod_vec3_i32(var_0.d & vec3<i32>(global3[_wgslsmith_index_u32(global0.c.x, 29u)], -43768i, 9426i), vec3<i32>(var_0.d.x, var_0.d.x, 1i)), global0.a) | _wgslsmith_add_vec3_i32(vec3<i32>(-5512i, 1i, var_1.x), var_0.d));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(func_5(global4[_wgslsmith_index_u32(func_1(-2147483647i, _wgslsmith_div_i32(-22006i, _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(global1.c.x, 29u)], u_input.b))), 10u)], func_4(Struct_1(global1.a, vec4<f32>(global1.b.x, 982f, global0.b.x, -220f), global1.c, -global1.d), global0.a.x).a, func_4(Struct_1(func_4(Struct_1(vec3<bool>(global1.a.x, global1.a.x, global0.a.x), global1.b, vec4<u32>(4294967295u, 4294967295u, u_input.c.x, u_input.a), vec3<i32>(global0.d.x, -2147483647i, global1.d.x)), global1.a.x).a, _wgslsmith_f_op_vec4_f32(-global0.b), vec4<u32>(4294967295u, global0.c.x, u_input.a, global0.c.x), vec3<i32>(1i, 1i, global1.d.x)), any(!global0.a)), global0.a));
    var var_0 = global0.c.xw;
    var var_1 = func_6(func_4(func_2(), !global1.a.x)).a.zy;
    let var_2 = Struct_1(global0.a, vec4<f32>(-636f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(432f + global0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-330f, 575f)) - -699f))), -398f, global1.b.x), global1.c, vec3<i32>(firstTrailingBit(~(i32(-1i) * -3396i)), abs(_wgslsmith_mod_i32(global1.d.x, global4[_wgslsmith_index_u32(76018u, 10u)]) << (1u % 32u)), select(~2147483647i, global1.d.x ^ global0.d.x, -8145i >= global4[_wgslsmith_index_u32(0u, 10u)]) & ~1i));
    var var_3 = func_2().c;
    let var_4 = func_4(func_6(var_2), true).a.x;
    let x = u_input.a;
    s_output = StorageBuffer(global0.c, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-559f, -1212f, -696f)), var_2.b.zxy)), _wgslsmith_add_i32(~23270i, global3[_wgslsmith_index_u32(max(~(global1.c.x >> (global1.c.x % 32u)), min(31259u, var_0.x)), 29u)]), 0i);
}

