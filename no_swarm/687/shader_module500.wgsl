struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<u32, 24> = array<u32, 24>(1u, 1u, 41597u, 9166u, 4294967295u, 10620u, 19062u, 19305u, 1u, 4294967295u, 32703u, 0u, 4294967295u, 4294967295u, 22977u, 15647u, 4294967295u, 1u, 86388u, 0u, 1u, 31430u, 1u, 1u);

var<private> global2: vec3<u32>;

var<private> global3: Struct_2 = Struct_2(vec2<f32>(312f, -401f), Struct_1(vec3<i32>(-19626i, -3178i, 1i), 79800u), Struct_1(vec3<i32>(0i, -21841i, 1i), 4294967295u), vec2<i32>(-345i, i32(-2147483648)), vec2<i32>(1i, 0i));

var<private> global4: Struct_5;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<f32>) -> vec3<i32> {
    global2 = ~abs(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(global3.b.b, global2.x), 5340u), 4294967295u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, 43804u), u_input.a.x)));
    var var_0 = select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, false, true)), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), true)), vec4<bool>(true, true, true, true), true), !vec4<bool>(global4.a.a.a.x >= _wgslsmith_f_op_f32(-arg_0.x), all(vec2<bool>(true, true)), false, !any(vec4<bool>(true, true, true, true))), vec4<bool>(true, any(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true)), false, !any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)))));
    let var_1 = -(vec2<i32>(-1i) * -vec2<i32>(24521i, global4.b.e.x));
    var_0 = vec4<bool>((!(1761f > global4.a.c) && all(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, false, true)))) & true, var_0.x, all(vec2<bool>(true, true)), -var_1.x <= 1i);
    let var_2 = Struct_4(global4.a.a, -22338i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) + _wgslsmith_f_op_f32(-375f - _wgslsmith_f_op_f32(-1566f - -655f)))));
    return vec3<i32>(global4.a.b, -firstLeadingBit(global4.a.a.e.x), 2147483647i);
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1) -> i32 {
    var var_0 = global4.a;
    global1 = array<u32, 24>();
    let var_1 = Struct_1(func_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x)), global3.a.x)), _wgslsmith_clamp_u32(global3.c.b, 4294967295u, arg_1.x));
    var var_2 = -(global3.c.a.x & -(-global3.e.x & 2147483647i));
    let var_3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -205f), var_0.c))), _wgslsmith_f_op_f32(-var_0.c)), Struct_1(~(vec3<i32>(-1i) * -global3.b.a), global4.a.a.c.b), global4.b.c, ~_wgslsmith_mult_vec2_i32(abs(abs(var_1.a.zy)), var_1.a.yy), reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(2147483647i, var_0.b), arg_2.a.yy)));
    return var_1.a.x;
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    var var_0 = global4.a.a.a.x;
    let var_1 = Struct_1(reverseBits(vec3<i32>(global4.a.b, -abs(global3.c.a.x), func_2(true, arg_0, global3.b))), ~_wgslsmith_add_u32(~(u_input.c.x << (global3.b.b % 32u)), global4.b.b.b));
    let var_2 = global4.b;
    let var_3 = Struct_3(abs(firstLeadingBit(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(-1i, global4.a.a.d.x, var_1.a.x, 2147483647i)), vec4<i32>(-6956i, -1i, 9724i, global4.a.b)))), true);
    var var_4 = Struct_5(Struct_4(global4.b, -14779i, _wgslsmith_f_op_f32(max(global3.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.a.x, -133f), global4.b.a.x))))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.a.a.a.x, global3.a.x) - var_2.a))), Struct_1(global3.b.a | _wgslsmith_sub_vec3_i32(var_2.b.a, vec3<i32>(-8042i, -1i, global4.a.a.d.x)), ~59931u), global4.b.c, ~countOneBits(_wgslsmith_mod_vec2_i32(global4.b.c.a.yz, vec2<i32>(global3.d.x, 31111i))), max((var_3.a.xy & vec2<i32>(-55160i, var_1.a.x)) << ((arg_0 | vec2<u32>(1u, 56706u)) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(func_3(vec2<f32>(global4.b.a.x, -542f)).zy, ~global3.e))), global3.b.b);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -208f), global4.a.a.a.x);
}

fn func_4(arg_0: f32, arg_1: u32) -> Struct_3 {
    global3 = Struct_2(_wgslsmith_f_op_vec2_f32(global4.b.a - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.a.a.a))), Struct_1(-countOneBits(global3.c.a), 4294967295u), global0[_wgslsmith_index_u32(~1u, 7u)], global4.a.a.d, func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-272f, -890f)))).xx);
    var var_0 = min(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(global3.e.x), i32(-1i) * -12403i, -27221i), global4.b.b.a ^ ~vec3<i32>(-2147483647i, 34928i, -2147483647i))), -global3.b.a.x);
    let var_1 = vec3<u32>(max(global4.a.a.b.b, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(13321u, 9146u, u_input.c.x, global4.b.c.b) >> (u_input.a % vec4<u32>(32u)), ~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.c, 24u)], 24u)], global2.x, 1u, 20230u)), vec4<u32>(global3.c.b, _wgslsmith_div_u32(global3.c.b, 70207u), countOneBits(6393u), global3.b.b))), arg_1, arg_1);
    let var_2 = Struct_5(Struct_4(global4.b, global4.a.a.e.x, global4.a.a.a.x), Struct_2(global4.a.a.a, Struct_1(global4.a.a.b.a, ~(~global2.x)), global4.b.c, vec2<i32>(-1i) * -vec2<i32>(global4.b.e.x, 1i), global3.c.a.yx), ~var_1.x);
    global3 = global4.a.a;
    return Struct_3(_wgslsmith_sub_vec4_i32(select(firstLeadingBit(-vec4<i32>(global4.b.b.a.x, 2147483647i, 17391i, var_2.a.a.c.a.x)), countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(global4.b.e.x, global3.d.x, -43925i, -48528i), vec4<i32>(global3.e.x, var_2.b.c.a.x, var_2.b.d.x, -22300i), vec4<i32>(-2147483647i, 36390i, var_2.b.b.a.x, -2147483647i))), true), firstLeadingBit(firstTrailingBit(vec4<i32>(global3.b.a.x, global3.c.a.x, -7996i, var_2.a.a.d.x) | vec4<i32>(19741i, -2147483647i, var_2.b.c.a.x, 2147483647i)))), -32357i == global3.c.a.x);
}

fn func_5(arg_0: Struct_3, arg_1: f32) -> Struct_2 {
    var var_0 = global4.a.a.b.b;
    global3 = global4.a.a;
    global3 = global4.a.a;
    let var_1 = 1000f;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -447f), _wgslsmith_f_op_f32(abs(942f)), -1937f);
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(arg_1 + -453f), 1264f), Struct_1(arg_0.a.zxy, 79869u), global4.b.b, abs(firstTrailingBit(min(vec2<i32>(global4.b.d.x, 3051i), vec2<i32>(arg_0.a.x, -2147483647i))) | (select(arg_0.a.zy, vec2<i32>(global3.b.a.x, 38718i), vec2<bool>(arg_0.b, arg_0.b)) << (vec2<u32>(62775u, global1[_wgslsmith_index_u32(1u, 24u)]) % vec2<u32>(32u)))), countOneBits(abs(~global4.b.b.a.yy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(true, _wgslsmith_dot_vec2_u32(global2.zz, vec2<u32>(global4.a.a.c.b, global2.x)) > global2.x);
    global3 = func_5(func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-780f, global3.a.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.a.wy)) + global4.b.a.x)), ~firstLeadingBit(countOneBits(4294967295u))), -258f);
    var var_1 = Struct_1(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(global4.b.d.x, -2435i ^ global4.a.a.b.a.x, -70473i)), ~(~countOneBits(vec3<i32>(1i, -22658i, -2147483647i)))), func_5(Struct_3(countOneBits(abs(vec4<i32>(global4.b.c.a.x, -10311i, 0i, global4.b.c.a.x))), var_0.x), 174f).b.b);
    let var_2 = firstTrailingBit(global4.b.e.x);
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(1i, i32(-1i) * -var_2) << (_wgslsmith_dot_vec2_u32(u_input.c, ~(~vec2<u32>(global1[_wgslsmith_index_u32(u_input.b, 24u)], global1[_wgslsmith_index_u32(4294967295u, 24u)]))) % 32u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.a + _wgslsmith_f_op_vec2_f32(global4.b.a + vec2<f32>(global4.a.c, global4.b.a.x))))), 377f);
}

