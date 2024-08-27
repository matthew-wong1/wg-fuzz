struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: u32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: bool = false;

var<private> global2: Struct_1;

var<private> global3: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(4294967295u, -317f, Struct_2(Struct_1(vec3<u32>(60106u, 1u, 21227u), vec2<f32>(-212f, 238f), vec3<u32>(4294967295u, 4294967295u, 41941u), false, vec2<i32>(49228i, 3943i)), 1u, true, Struct_1(vec3<u32>(0u, 4235u, 21547u), vec2<f32>(-106f, -872f), vec3<u32>(54520u, 4294967295u, 85421u), true, vec2<i32>(1i, i32(-2147483648))), vec3<u32>(4294967295u, 0u, 4294967295u))), Struct_3(4294967295u, 282f, Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 1u), vec2<f32>(1633f, -187f), vec3<u32>(4294967295u, 7787u, 0u), false, vec2<i32>(-1i, 41306i)), 0u, false, Struct_1(vec3<u32>(14103u, 1u, 26256u), vec2<f32>(1649f, 367f), vec3<u32>(4294967295u, 4294967295u, 4294967295u), true, vec2<i32>(-40769i, 0i)), vec3<u32>(1u, 1u, 18774u))), Struct_3(23220u, -2174f, Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 53097u), vec2<f32>(-565f, 402f), vec3<u32>(24112u, 26379u, 4294967295u), true, vec2<i32>(1i, i32(-2147483648))), 4294967295u, false, Struct_1(vec3<u32>(45288u, 4294967295u, 33642u), vec2<f32>(612f, -588f), vec3<u32>(4294967295u, 135621u, 16502u), true, vec2<i32>(i32(-2147483648), 699i)), vec3<u32>(4294967295u, 32480u, 4294967295u))), Struct_3(1u, 153f, Struct_2(Struct_1(vec3<u32>(1u, 65593u, 32105u), vec2<f32>(688f, -370f), vec3<u32>(73472u, 32109u, 103239u), false, vec2<i32>(34202i, 3506i)), 37550u, true, Struct_1(vec3<u32>(21198u, 32163u, 28902u), vec2<f32>(-1607f, 164f), vec3<u32>(109389u, 1u, 1u), false, vec2<i32>(1i, -56510i)), vec3<u32>(1u, 4294967295u, 1u))));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: i32) -> u32 {
    var var_0 = countOneBits(max(abs(vec4<u32>(global2.a.x, 4294967295u, u_input.d, 1u) & vec4<u32>(arg_1.c, 4294967295u, global2.c.x, 25908u)), ~(~vec4<u32>(u_input.d, 32527u, 60199u, 0u)))) & vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c, 1u, u_input.d, 0u), vec4<u32>(arg_1.a.a, arg_1.a.a, 4294967295u, arg_1.b.c.x)) & arg_1.c, arg_1.a.a | global2.a.x), reverseBits(countOneBits(arg_1.b.a.x)), _wgslsmith_add_u32(arg_1.c, ~countOneBits(u_input.d)), ~(46143u | _wgslsmith_div_u32(arg_1.b.a.x, u_input.d)));
    var var_1 = firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(-vec4<i32>(global2.e.x, global2.e.x, 15405i, global2.e.x)), abs(abs(vec4<i32>(u_input.c, 12315i, arg_1.b.e.x, 2147483647i)))), u_input.c));
    global0 = -1i;
    var var_2 = arg_1.d;
    let var_3 = _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(-arg_1.b.e.x, _wgslsmith_div_i32(arg_1.a.c.d.e.x, arg_1.a.c.d.e.x), global2.e.x)), abs(vec3<i32>(0i, -1i, u_input.a.x))) & -_wgslsmith_clamp_vec3_i32(u_input.b, _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(-1i, -4870i, var_2.x)), ~u_input.b), -_wgslsmith_mult_vec3_i32(u_input.b, u_input.b));
    return 1787u;
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: u32) -> vec3<f32> {
    global1 = global2.d;
    let var_0 = Struct_1(~abs(~vec3<u32>(1u, 1863u, global2.a.x) ^ global2.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b) - vec2<f32>(global2.b.x, -1040f)) - global2.b)), _wgslsmith_div_vec3_u32(vec3<u32>(~u_input.d, firstLeadingBit(arg_2), func_3(_wgslsmith_f_op_vec2_f32(trunc(global2.b)), Struct_5(global3[_wgslsmith_index_u32(55968u, 4u)], Struct_1(global2.a, global2.b, global2.a, arg_0, u_input.a), global2.a.x, u_input.a), global2.e.x >> (4294967295u % 32u))), global2.c), arg_1.x, u_input.a);
    global2 = Struct_1(vec3<u32>(9100u, ~var_0.c.x, arg_2), var_0.b, ~firstLeadingBit(abs(_wgslsmith_div_vec3_u32(global2.c, vec3<u32>(37226u, var_0.a.x, 4294967295u)))), arg_0, -firstTrailingBit(u_input.b.zy));
    let var_1 = !(!arg_0);
    var var_2 = !vec3<bool>(true, true, !any(!vec4<bool>(true, true, false, var_1)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(max(global2.b.x, -1000f)), 760f, -925f), vec3<f32>(_wgslsmith_div_f32(521f, var_0.b.x), 1f, _wgslsmith_f_op_f32(ceil(var_0.b.x)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, global2.b.x, var_0.b.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-3197f, 231f, 752f) - vec3<f32>(-591f, -377f, global2.b.x))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b.x, -1156f, var_0.b.x))))));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.x, _wgslsmith_f_op_f32(-1095f - _wgslsmith_f_op_f32(-global2.b.x)), _wgslsmith_f_op_f32(min(global2.b.x, _wgslsmith_f_op_f32(sign(global2.b.x))))) * _wgslsmith_f_op_vec3_f32(func_2(true, select(select(vec3<bool>(false, true, global2.d), vec3<bool>(global2.d, global2.d, false), vec3<bool>(false, global2.d, true)), vec3<bool>(global2.d, true, global2.d), all(vec2<bool>(true, false))), ~global2.c.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(542f * global2.b.x)), global2.b.x, -1000f)));
    var var_1 = select(vec4<u32>(~(~u_input.d), 0u, global2.c.x, _wgslsmith_add_u32(u_input.d, ~u_input.d)) >> ((((vec4<u32>(u_input.d, u_input.d, global2.c.x, u_input.d) >> (vec4<u32>(58755u, u_input.d, 40513u, u_input.d) % vec4<u32>(32u))) & max(vec4<u32>(global2.c.x, 38172u, global2.c.x, global2.c.x), vec4<u32>(1u, 0u, u_input.d, 1u))) & (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, u_input.d, global2.a.x, 1u), vec4<u32>(global2.c.x, 0u, 1u, 6105u)) << (~vec4<u32>(1u, u_input.d, global2.a.x, u_input.d) % vec4<u32>(32u)))) % vec4<u32>(32u)), vec4<u32>(select(u_input.d, u_input.d, true), countOneBits(_wgslsmith_dot_vec2_u32(~global2.c.xx, global2.c.xx)), abs(~(~global2.a.x)), 64504u), select(vec4<bool>((u_input.c << (1u % 32u)) > countOneBits(35120i), false, true, global2.d), select(select(!vec4<bool>(true, true, global2.d, true), vec4<bool>(true, true, true, true), vec4<bool>(global2.d, true, false, global2.d)), !(!vec4<bool>(false, true, global2.d, false)), true), !select(vec4<bool>(false, true, global2.d, global2.d), select(vec4<bool>(true, global2.d, global2.d, true), vec4<bool>(global2.d, global2.d, true, global2.d), vec4<bool>(global2.d, global2.d, false, false)), vec4<bool>(true, true, true, true))));
    var var_2 = global2.e.x;
    let var_3 = Struct_4(any(!select(vec4<bool>(global2.d, global2.d, global2.d, global2.d), !vec4<bool>(global2.d, false, global2.d, global2.d), vec4<bool>(true, true, true, true))), !(!select(vec3<bool>(false, true, global2.d), vec3<bool>(false, global2.d, false), select(vec3<bool>(global2.d, true, global2.d), vec3<bool>(false, global2.d, global2.d), global2.d))));
    var_2 = ~u_input.e;
    return _wgslsmith_div_u32(global2.c.x, abs(0u));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: i32) -> Struct_5 {
    let var_0 = ~vec2<u32>(arg_1 & 0u, firstLeadingBit(countOneBits(1u)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_0.x, -1000f))))))), _wgslsmith_f_op_f32(-2820f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.b.x, _wgslsmith_f_op_f32(arg_0.x + 2062f), false)))), 1035f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-267f * _wgslsmith_f_op_f32(246f + arg_0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_0.x, global2.b.x, global2.d))))), u_input.d > 4294967295u)));
    global1 = 4949i <= _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-17933i, 1i), 70737i, _wgslsmith_sub_i32(arg_2, -2147483647i)) | (select(u_input.c, -54729i, global2.d) >> (~0u % 32u)), firstTrailingBit(abs(-37233i) | firstTrailingBit(0i)));
    let var_2 = Struct_2(Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1, 37215u, reverseBits(4294967295u)), vec3<u32>(arg_1 & u_input.d, 0u, ~arg_1)), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -502f))), 1f), ~(~global2.c), (abs(global2.c.x) >= _wgslsmith_mod_u32(global2.c.x, 74242u)) & (_wgslsmith_mult_i32(u_input.e, 0i) == arg_2), vec2<i32>(32702i, _wgslsmith_mult_i32(-1i, 0i)) | (firstLeadingBit(vec2<i32>(global2.e.x, 1020i)) & vec2<i32>(28861i, u_input.b.x))), 0u, global2.d, Struct_1(global2.a ^ _wgslsmith_mult_vec3_u32(select(global2.a, vec3<u32>(4294967295u, 7255u, global2.c.x), vec3<bool>(false, false, global2.d)), global2.c), vec2<f32>(1021f, _wgslsmith_f_op_f32(-var_1.x)), countOneBits(vec3<u32>(19470u, 31045u, _wgslsmith_div_u32(arg_1, 92086u))), false, u_input.a), vec3<u32>(~((var_0.x >> (1u % 32u)) << (_wgslsmith_add_u32(u_input.d, 0u) % 32u)), var_0.x, global2.a.x));
    return Struct_5(Struct_3(max(~var_0.x, _wgslsmith_div_u32(reverseBits(1u), global2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(104f))), var_2), Struct_1(vec3<u32>(67098u, 4294967295u, _wgslsmith_dot_vec3_u32(reverseBits(global2.a), abs(vec3<u32>(45401u, 0u, 4294967295u)))), _wgslsmith_div_vec2_f32(global2.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b) * vec2<f32>(var_1.x, -1069f))), _wgslsmith_mod_vec3_u32(global2.c, vec3<u32>(5944u, reverseBits(7087u), 4294967295u)), all(!select(vec3<bool>(false, false, global2.d), vec3<bool>(true, var_2.a.d, global2.d), false)), vec2<i32>(i32(-1i) * -var_2.a.e.x, min(arg_2, -26209i ^ var_2.d.e.x))), ~reverseBits(_wgslsmith_add_u32(arg_1, 4294967295u)), -min(abs(-global2.e), _wgslsmith_mult_vec2_i32(-global2.e, reverseBits(vec2<i32>(1i, u_input.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-611f - 1367f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.b.x)))))), func_1(), u_input.c);
    global2 = func_4(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global2.b.x, _wgslsmith_f_op_f32(min(-1973f, global2.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(228f - -183f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b.b.x, -1000f))))), 0u, ~0i).b;
    let var_1 = Struct_4(true, select(vec3<bool>(!(true | var_0.b.d), true, _wgslsmith_f_op_f32(abs(global2.b.x)) != _wgslsmith_f_op_f32(-1000f + var_0.b.b.x)), select(vec3<bool>(var_0.a.c.c, var_0.b.d && var_0.a.c.c, var_0.b.d != true), select(!vec3<bool>(var_0.b.d, var_0.b.d, var_0.a.c.c), !vec3<bool>(false, global2.d, true), vec3<bool>(var_0.b.d, var_0.b.d, true)), vec3<bool>(var_0.b.d, false & global2.d, var_0.b.d)), true));
    var var_2 = _wgslsmith_sub_u32(func_3(vec2<f32>(global2.b.x, _wgslsmith_f_op_f32(global2.b.x - global2.b.x)), var_0, ~_wgslsmith_mod_i32(-20209i, var_0.d.x)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(~10028u, var_0.a.a, _wgslsmith_add_u32(var_0.c, 0u), global2.a.x ^ var_0.b.a.x), vec4<u32>(~u_input.d, u_input.d, 1u >> (var_0.a.a % 32u), abs(41535u))), u_input.d >> (reverseBits(0u) % 32u));
    global3 = array<Struct_3, 4>();
    var var_3 = !(!(!vec2<bool>(all(vec2<bool>(false, true)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(811f, -160f));
}

