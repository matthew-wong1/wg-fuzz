struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16> = array<u32, 16>(80729u, 1u, 6675u, 34838u, 94677u, 1u, 4294967295u, 12753u, 0u, 89834u, 1u, 1u, 56564u, 0u, 27569u, 6592u);

var<private> global1: Struct_1 = Struct_1(vec2<u32>(22996u, 4294967295u), -1000f, -597f);

var<private> global2: Struct_3 = Struct_3(15692u, vec4<bool>(true, true, true, true), 30097u);

var<private> global3: Struct_5;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> f32 {
    global1 = global3.a.a;
    global1 = global3.a.a;
    global0 = array<u32, 16>();
    global3 = Struct_5(global3.a, Struct_1(vec2<u32>(19032u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)]) ^ (vec2<u32>(u_input.a.x, global1.a.x) & ~u_input.a), global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-179f)))), global3.c, !global3.d, ~u_input.c);
    var var_0 = select(select(global3.d, vec4<bool>(true, global2.b.x, firstTrailingBit(global3.e) >= 27780i, any(global2.b.yxz)), true), !global2.b, global2.b.x);
    return _wgslsmith_f_op_f32(-global3.a.a.c);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(global1.b - 323f);
    var var_1 = vec3<i32>(_wgslsmith_add_i32(~global3.e, firstTrailingBit(u_input.c)), ~countOneBits(min(1i ^ u_input.c, -u_input.c)), i32(-1i) * -7640i);
    var var_2 = Struct_5(Struct_2(Struct_1(arg_1.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3()))), global3.a.a.b)), Struct_1(arg_0.a, var_0, -3248f), _wgslsmith_add_vec2_i32(global3.c >> (u_input.a % vec2<u32>(32u)), -_wgslsmith_mod_vec2_i32(-var_1.xy, vec2<i32>(u_input.c, global3.e))), global2.b, ~global3.c.x);
    var var_3 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1066f), var_2.a.a.b);
    let var_4 = arg_1;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.a.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_2.a.a.c)), _wgslsmith_f_op_f32(-var_4.b)))))));
}

fn func_1() -> vec2<bool> {
    global0 = array<u32, 16>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b.b, 575f, -837f) * vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(vec2<u32>(global3.b.a.x, 1155u), global1.b, -301f), Struct_1(vec2<u32>(global3.a.a.a.x, 1u), global1.b, -1000f))), -1455f, _wgslsmith_f_op_f32(135f * global1.b))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(146f, global3.a.a.c, -402f), vec3<f32>(global1.b, global1.b, global3.b.b)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-509f, global3.a.a.b, global3.b.c))))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -724f), -107f, _wgslsmith_f_op_f32(-global1.c))))));
    let var_1 = Struct_1(reverseBits(vec2<u32>(global1.a.x, min(global2.a, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global3.a.a.a.x, 16u)], global3.b.a.x)))), _wgslsmith_f_op_f32(var_0.x * 1f), var_0.x);
    var var_2 = Struct_2(Struct_1(global1.a, _wgslsmith_f_op_f32(func_3()), 569f));
    var var_3 = false;
    return !(!(!vec2<bool>(459f > global1.b, true)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3) -> Struct_4 {
    var var_0 = !global3.d.xx;
    let var_1 = ~((min(_wgslsmith_div_i32(-1i, u_input.c), u_input.c) | -u_input.c) | _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(0i, -2147483647i, u_input.c)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, 1i, global3.e), vec3<i32>(u_input.c, u_input.c, -33066i))), ~abs(vec3<i32>(u_input.c, 2147483647i, -2147483647i))));
    var_0 = vec2<bool>(any(vec2<bool>(arg_1.b.x, var_0.x)) == !(~0u < max(1u, global2.c)), true);
    var var_2 = Struct_5(global3.a, global3.a.a, ~min(_wgslsmith_mult_vec2_i32(global3.c, global3.c), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, var_1), vec2<i32>(global3.e, 43198i))) << ((_wgslsmith_div_vec2_u32(min(global1.a, vec2<u32>(global3.a.a.a.x, 50915u)), vec2<u32>(8448u, 4294967295u) ^ global3.b.a) << (global1.a % vec2<u32>(32u))) % vec2<u32>(32u)), !(!global2.b), _wgslsmith_clamp_i32(-19070i, global3.e, firstTrailingBit(9962i)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c), global3.a.a.c)), 1345f)));
    return Struct_4(1i, Struct_2(global3.a.a), vec2<u32>(~4294967295u, _wgslsmith_sub_u32(_wgslsmith_add_u32(2928u, var_2.a.a.a.x), global0[_wgslsmith_index_u32(4294967295u, 16u)]) & ~(~arg_1.a)));
}

fn func_5(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: Struct_3) -> Struct_3 {
    var var_0 = max(arg_0.a, 1i);
    global2 = arg_2;
    global2 = arg_2;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-434f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.a.b), 1418f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a.c)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.a.a.b + arg_0.b.a.b))) + global1.c)));
    var var_2 = Struct_5(func_4(select(select(select(global3.d.xx, global3.d.wy, vec2<bool>(true, arg_2.b.x)), vec2<bool>(true, global3.d.x), any(global3.d.xwz)), select(vec2<bool>(true, true), select(global2.b.yy, vec2<bool>(global2.b.x, false), arg_2.b.x), vec2<bool>(true, true)), global2.b.xx), arg_2).b, func_4(!func_1(), arg_2).b.a, global3.c, global2.b, u_input.c << (arg_1.x % 32u));
    return Struct_3(arg_1.x, select(!vec4<bool>(var_2.e != -5544i, arg_2.b.x, func_1().x, true), arg_2.b, !select(global2.b, vec4<bool>(arg_2.b.x, global2.b.x, global3.d.x, false), select(vec4<bool>(var_2.d.x, global3.d.x, false, global3.d.x), vec4<bool>(arg_2.b.x, true, true, var_2.d.x), vec4<bool>(false, false, var_2.d.x, arg_2.b.x)))), _wgslsmith_dot_vec2_u32(func_4(vec2<bool>(global2.b.x, global2.b.x), arg_2).b.a.a >> ((func_4(arg_2.b.xw, arg_2).b.a.a | ~var_2.b.a) % vec2<u32>(32u)), global1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = -1333f;
    global0 = array<u32, 16>();
    var var_2 = func_5(func_4(select(!func_1(), select(global2.b.yw, select(vec2<bool>(global2.b.x, global3.d.x), vec2<bool>(false, true), global3.d.x), select(global3.d.xw, vec2<bool>(false, true), vec2<bool>(true, global3.d.x))), true), Struct_3(reverseBits(global1.a.x), global3.d, reverseBits(select(u_input.b.x, global0[_wgslsmith_index_u32(global3.b.a.x, 16u)], global2.b.x)))), func_4(select(func_1(), select(global2.b.wz, vec2<bool>(false, true), !global2.b.x), true), Struct_3(global1.a.x ^ min(global3.a.a.a.x, 86357u), select(global2.b, vec4<bool>(true, global2.b.x, global2.b.x, global3.d.x), !global2.b), global2.a)).b.a.a, Struct_3(_wgslsmith_mult_u32(1u, ~global1.a.x), select(vec4<bool>(true, global3.d.x & global2.b.x, true, select(true, global2.b.x, false)), vec4<bool>(false, false, global3.d.x, true), select(global3.d, select(global2.b, vec4<bool>(global3.d.x, true, true, true), true), global3.d.x)), ~4294967295u));
    var var_3 = vec4<bool>(true, true, -446f < _wgslsmith_div_f32(999f, _wgslsmith_f_op_f32(global1.c * -245f)), true);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_i32(-2241i, firstLeadingBit(_wgslsmith_div_i32(2147483647i, u_input.c))), 6057u, ~((u_input.a | u_input.b) >> (vec2<u32>(28851u, global1.a.x) % vec2<u32>(32u))), -291f);
}

