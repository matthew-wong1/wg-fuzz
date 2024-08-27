struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 16>;

var<private> global1: Struct_1;

var<private> global2: bool = true;

var<private> global3: array<i32, 21>;

var<private> global4: array<vec2<f32>, 29>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec2<u32> {
    let var_0 = arg_0;
    global1 = arg_0;
    var var_1 = _wgslsmith_dot_vec4_u32(select(~abs(max(vec4<u32>(arg_1, 4574u, 54705u, global1.b.x), vec4<u32>(51783u, 65658u, 4294967295u, u_input.e.x))), vec4<u32>(min(~56975u, var_0.b.x & global1.b.x), countOneBits(arg_1), var_0.c, 1u), true), ~vec4<u32>(max(25103u, ~u_input.d), ~18022u & _wgslsmith_add_u32(arg_1, arg_1), 73829u, ~1u | global1.b.x));
    let var_2 = Struct_2(var_0, ~60268u, global1.d, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(374f, _wgslsmith_f_op_f32(round(arg_0.d)), 1000f, var_0.d))));
    let var_3 = ~u_input.e.x;
    return global1.b;
}

fn func_2() -> vec4<i32> {
    let var_0 = Struct_1(false, _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_add_u32(35609u, u_input.e.x), 1u), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 35364u), _wgslsmith_add_vec2_u32(u_input.c, global1.b)), func_3(Struct_1(true, vec2<u32>(34170u, 0u), 36936u, global1.d), 4294967295u))), ~countOneBits(4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.d))));
    let var_1 = u_input.a;
    let var_2 = select(vec3<bool>(true, true, global1.a), select(select(vec3<bool>(var_0.a, select(false, var_0.a, global1.a), true), select(vec3<bool>(false, true, false), select(vec3<bool>(var_0.a, true, false), vec3<bool>(global1.a, true, false), true), !vec3<bool>(false, var_0.a, var_0.a)), !any(vec4<bool>(false, true, var_0.a, global1.a))), !vec3<bool>(true, false, global1.d > 1435f), any(select(!vec4<bool>(var_0.a, global1.a, true, true), select(vec4<bool>(true, var_0.a, global1.a, false), vec4<bool>(global1.a, var_0.a, false, true), vec4<bool>(var_0.a, var_0.a, false, var_0.a)), true))), ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 1u, var_0.c)), max(vec3<u32>(u_input.e.x, 1u, var_0.c), vec3<u32>(global1.c, global1.c, 1u))) != global1.c);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1040f * -364f))), var_0.d));
    let var_4 = Struct_1(global1.a, var_0.b, ~global1.b.x, var_0.d);
    return select(vec4<i32>(-1i, u_input.a, ~((var_1 >> (global1.c % 32u)) >> (var_0.b.x % 32u)), ~(-global3[_wgslsmith_index_u32(var_0.b.x, 21u)]) ^ countOneBits(u_input.a)), abs(abs(vec4<i32>(-1i, global3[_wgslsmith_index_u32(var_4.c, 21u)], -2147483647i, 43291i) << (vec4<u32>(70727u, var_4.b.x, global1.b.x, 26723u) % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(35308u, global1.c, var_4.b.x, global1.b.x), vec4<u32>(u_input.d, 104519u, 63062u, global1.c)), ~vec4<u32>(0u, 1u, var_4.b.x, 4294967295u)) % vec4<u32>(32u))), !(!select(vec4<bool>(var_4.a, true, var_4.a, false), !vec4<bool>(global1.a, var_2.x, false, true), !vec4<bool>(global1.a, false, true, false))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -330f) <= _wgslsmith_f_op_f32(sign(arg_1.d));
    global3 = array<i32, 21>();
    var var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(~global1.c, 1u) << (firstLeadingBit(countOneBits(global1.c)) % 32u), global1.b.x, 1u, 0u), ~firstTrailingBit(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.b.x, 22159u, arg_1.c, 25361u), vec4<u32>(arg_1.c, 121968u, 4294967295u, 1u)), countOneBits(vec4<u32>(45383u, arg_1.b.x, arg_1.b.x, 4294967295u)))), abs(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(30662u, u_input.c.x, 1u, arg_1.b.x)), min(vec4<u32>(4898u, 0u, 6422u, 36072u), vec4<u32>(0u, arg_1.b.x, u_input.c.x, 4294967295u)), ~(~vec4<u32>(8126u, 0u, 1u, arg_1.c)))));
    let var_2 = _wgslsmith_add_u32(1u, 1u) & firstLeadingBit(select(~firstLeadingBit(0u), 1u, any(vec3<bool>(arg_1.a, true, arg_1.a))));
    global0 = array<vec2<u32>, 16>();
    return Struct_2(arg_1, _wgslsmith_div_u32(abs((var_1.x >> (1u % 32u)) >> (23923u % 32u)), _wgslsmith_dot_vec3_u32(var_1.zxy, ~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, 0u), var_1.zyw))), -251f, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(193f, _wgslsmith_f_op_f32(f32(-1f) * -1122f), _wgslsmith_f_op_f32(551f * _wgslsmith_f_op_f32(step(204f, global1.d))), _wgslsmith_f_op_f32(f32(-1f) * -447f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1005f, 771f, arg_1.d), vec4<f32>(706f, 1036f, global1.d, global1.d)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-1718f, arg_1.d, arg_1.d, arg_1.d), vec4<f32>(-426f, global1.d, 252f, -717f))))), select(!select(vec4<bool>(global1.a, true, arg_1.a, global1.a), vec4<bool>(global1.a, false, true, false), arg_1.a), vec4<bool>(true, !arg_1.a, global1.a == true, !global1.a), !(-702f == arg_1.d)))));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec4<u32>) -> vec3<u32> {
    var var_0 = select(select(i32(-1i) * -23971i, global3[_wgslsmith_index_u32(1u >> (u_input.c.x % 32u), 21u)], true) < arg_0.x, all(vec2<bool>(select(global1.a, true, true), !arg_2.x)), false) & true;
    let var_1 = Struct_1(true, abs(u_input.e), arg_3.x, _wgslsmith_f_op_f32(trunc(768f)));
    return ~_wgslsmith_add_vec3_u32(~(~(~arg_3.zww)), ~vec3<u32>(607u, arg_1.a.c, u_input.e.x) << (~select(arg_3.zxz, vec3<u32>(0u, global1.b.x, u_input.e.x), vec3<bool>(arg_1.a.a, var_1.a, false)) % vec3<u32>(32u)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<f32>) -> vec2<u32> {
    let var_0 = min(_wgslsmith_mod_vec3_u32(~firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(global1.b.x, global1.b.x, 25075u), vec3<u32>(global1.b.x, 1u, 4972u))), ~_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(u_input.c.x, 3044u, u_input.c.x)), vec3<u32>(92599u, 0u, u_input.d))), func_5(~(~(~u_input.b)), func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(global1.c, 21u)], 13888i, global3[_wgslsmith_index_u32(u_input.e.x, 21u)], -2147483647i), func_2()), Struct_1(all(vec2<bool>(global1.a, global1.a)), vec2<u32>(u_input.e.x, u_input.d), ~28436u, arg_0.x)), select(vec2<bool>(global1.a, true), vec2<bool>(u_input.a <= global3[_wgslsmith_index_u32(0u, 21u)], select(false, true, global1.a)), !select(vec2<bool>(true, global1.a), vec2<bool>(true, false), global1.a)), ~vec4<u32>(abs(global1.b.x), firstTrailingBit(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(2916u, u_input.e.x, global1.b.x), vec3<u32>(16402u, 1u, 0u)), ~global1.c)));
    return ~u_input.c;
}

fn func_6(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<u32>, arg_3: vec2<i32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1252f, global1.d, global1.d)))));
    let var_1 = 80803u;
    var var_2 = Struct_1(!any(select(vec3<bool>(global1.a, global1.a, false), vec3<bool>(global1.a, true, true), false)) && true, ~vec2<u32>(global1.c, global1.b.x), _wgslsmith_sub_u32(var_1, ~func_5(u_input.b, Struct_2(Struct_1(global1.a, arg_2.yx, 78122u, var_0.x), u_input.c.x, 379f, vec4<f32>(1017f, global1.d, -239f, 747f)), vec2<bool>(false, true), vec4<u32>(var_1, arg_2.x, u_input.d, var_1)).x) & _wgslsmith_sub_u32(364u, _wgslsmith_clamp_u32(global1.b.x, 4294967295u, func_1(vec3<f32>(global1.d, var_0.x, var_0.x), var_0).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 230f) + _wgslsmith_f_op_f32(-var_0.x)) - global1.d) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.d)))));
    global4 = array<vec2<f32>, 29>();
    global4 = array<vec2<f32>, 29>();
    return vec3<u32>(reverseBits(abs(~30968u)), u_input.c.x, firstTrailingBit(~1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_6(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-705f, global1.d, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d, 704f, global1.d) - vec3<f32>(131f, global1.d, -545f))), select(~(-38620i), global3[_wgslsmith_index_u32(global1.b.x, 21u)] >> (u_input.e.x % 32u), global1.a), firstLeadingBit(select(vec3<u32>(global1.b.x, global1.c, global1.b.x), vec3<u32>(112127u, u_input.c.x, u_input.e.x), vec3<bool>(true, false, false))), u_input.b) ^ reverseBits(~(~func_6(u_input.c, -72533i, vec3<u32>(4294967295u, 45121u, global1.c), u_input.b)));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(323f * 713f) + global1.d)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1024f + 1257f)))));
    let var_2 = func_4((abs(vec4<i32>(u_input.a, 1i, 44525i, -38141i) << (vec4<u32>(1u, 12779u, 1u, 4294967295u) % vec4<u32>(32u))) >> ((~vec4<u32>(1u, 1u, 1u, 4294967295u) & _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, 0u, 1u), vec4<u32>(52380u, 52681u, 18423u, 92615u))) % vec4<u32>(32u))) & _wgslsmith_mod_vec4_i32(vec4<i32>(-global3[_wgslsmith_index_u32(var_0.x, 21u)], firstLeadingBit(u_input.b.x), firstTrailingBit(-1i), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 10771u), vec3<u32>(u_input.c.x, global1.c, 6785u)), 21u)]), ~(vec4<i32>(13572i, -17154i, -8425i, 2167i) << (vec4<u32>(1u, global1.b.x, 4294967295u, 18025u) % vec4<u32>(32u)))), Struct_1(true, u_input.e, ~global1.b.x, _wgslsmith_f_op_f32(1201f + _wgslsmith_f_op_f32(max(global1.d, global1.d))))).a;
    global1 = var_2;
    let var_3 = select(!select(vec4<bool>(false, true, global1.a, true & global1.a), vec4<bool>(var_2.a, var_1 <= var_2.d, !var_2.a, global1.a), vec4<bool>(false, true, global1.a, any(vec4<bool>(true, global1.a, var_2.a, global1.a)))), vec4<bool>(all(vec4<bool>(false, var_2.a, true, false)), true, all(select(!vec2<bool>(false, global1.a), !vec2<bool>(var_2.a, false), true & global1.a)), any(vec3<bool>(any(vec4<bool>(global1.a, global1.a, var_2.a, true)), false, var_2.a))), global1.a);
    global1 = func_4(firstLeadingBit(abs(vec4<i32>(-1i) * -vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 21u)], global3[_wgslsmith_index_u32(35849u, 21u)], global3[_wgslsmith_index_u32(39345u, 21u)], u_input.b.x))), var_2).a;
    global3 = array<i32, 21>();
    let var_4 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.b.x, global3[_wgslsmith_index_u32(0u, 21u)]) >> (select(vec3<u32>(8457u, 5374u, global1.b.x), vec3<u32>(var_2.c, 0u, var_2.b.x), vec3<bool>(var_2.a, var_3.x, true)) % vec3<u32>(32u)), max(~vec3<i32>(global3[_wgslsmith_index_u32(0u, 21u)], -1i, 2147483647i), vec3<i32>(u_input.a, 82747i, global3[_wgslsmith_index_u32(28838u, 21u)]))) >> (~(vec3<u32>(4294967295u, 122193u, var_0.x) & (vec3<u32>(40190u, global1.c, 4294967295u) ^ vec3<u32>(global1.b.x, u_input.c.x, u_input.e.x))) % vec3<u32>(32u)));
}

