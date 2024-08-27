struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: i32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: vec3<u32>) -> i32 {
    var var_0 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(0i, 0i) ^ _wgslsmith_div_i32(u_input.a, u_input.a), u_input.a) ^ u_input.a, ~_wgslsmith_dot_vec2_i32(~(~vec2<i32>(1i, 23974i)), countOneBits(countOneBits(vec2<i32>(24365i, 2147483647i)))), u_input.a, -1i);
    let var_1 = vec4<u32>(~32418u, max(~_wgslsmith_sub_u32(arg_2.x & 32722u, _wgslsmith_sub_u32(1u, 1u)), ~arg_2.x), _wgslsmith_mod_u32(arg_2.x, select(select(arg_2.x, arg_2.x, arg_0), select(arg_2.x, 35879u, arg_0), true)) << (arg_2.x % 32u), _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_2.x, 12514u), _wgslsmith_div_u32(arg_2.x, 9175u)), 33326u) ^ firstTrailingBit(39125u));
    let var_2 = Struct_2(max(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a, 1i, var_0.x, u_input.a) | -vec4<i32>(2147483647i, var_0.x, -1i, -1i), _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(var_0.x, -1i, -26612i, -21858i)), -vec4<i32>(2147483647i, 0i, 0i, 2147483647i), vec4<i32>(42634i, -2273i, 0i, var_0.x))), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_0.x, var_0.x), var_0.xwz), ~var_0.x), -1i, 47408i, -3161i)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -444f), arg_1, _wgslsmith_mod_u32(select(4294967295u, 0u, true), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, 0u, 4294967295u, var_1.x), vec4<u32>(arg_2.x, 4294967295u, var_1.x, arg_2.x)), vec4<u32>(0u, var_1.x, 21250u, var_1.x) ^ var_1)), 1i), ~_wgslsmith_add_vec2_u32(vec2<u32>(51800u >> (arg_2.x % 32u), 80836u), arg_2.yz), true);
    var var_3 = select(select(select(select(select(vec2<bool>(true, var_2.d), vec2<bool>(false, arg_0), vec2<bool>(var_2.d, false)), select(vec2<bool>(false, arg_0), vec2<bool>(var_2.d, arg_0), vec2<bool>(false, var_2.d)), !var_2.d), select(!vec2<bool>(arg_0, false), select(vec2<bool>(arg_0, var_2.d), vec2<bool>(arg_0, var_2.d), var_2.d), true), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), true)), vec2<bool>(any(vec4<bool>(true, arg_0, true, true)) || true, false), vec2<bool>(!var_2.d, var_2.d)), vec2<bool>(var_2.a.x >= ~u_input.a, u_input.a < var_2.a.x), vec2<bool>(var_2.d, var_2.d));
    global0 = array<f32, 6>();
    return _wgslsmith_div_i32(u_input.a, abs(var_0.x) >> (~_wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(0u, var_2.b.c, var_2.c.x)) % 32u));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_mult_u32(0u, 97268u), select(!any(select(vec2<bool>(false, arg_1), vec2<bool>(false, arg_1), vec2<bool>(true, arg_1))), true, arg_1), _wgslsmith_dot_vec4_i32(~(~(~vec4<i32>(arg_0, u_input.a, -1i, u_input.a))), vec4<i32>(14419i, arg_0, func_3(!arg_1, _wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(0u, 6u)], 678f), arg_2), vec3<u32>(1u, 72264u, 67631u)), i32(-1i) * -u_input.a)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(arg_2)), arg_2, !(!(!arg_1)))));
    var_0 = Struct_3(1u, var_0.b, _wgslsmith_clamp_i32(abs(var_0.c), arg_0, max(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_0, 1i, -21218i), vec4<i32>(var_0.c, u_input.a, var_0.c, 36572i))), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_0, arg_0) & vec3<i32>(u_input.a, u_input.a, u_input.a), firstTrailingBit(vec3<i32>(var_0.c, 6750i, 1i))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(var_0.a, 6u)], global0[_wgslsmith_index_u32(var_0.a, 6u)]) * vec2<f32>(1030f, 1000f)) + _wgslsmith_f_op_vec2_f32(var_0.d + arg_2)), vec2<f32>(global0[_wgslsmith_index_u32(var_0.a, 6u)], _wgslsmith_f_op_f32(var_0.d.x + -237f))))));
    global0 = array<f32, 6>();
    let var_1 = arg_0;
    global0 = array<f32, 6>();
    return Struct_2(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32((vec4<i32>(2147483647i, arg_0, u_input.a, 1i) | vec4<i32>(var_0.c, 1i, 0i, arg_0)) >> (~vec4<u32>(144765u, 1u, var_0.a, var_0.a) % vec4<u32>(32u)), ~vec4<i32>(-3291i, 0i, -17960i, arg_0)), select(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(1i, arg_0, u_input.a, u_input.a), vec4<i32>(-2147483647i, var_1, u_input.a, 18221i))), min(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.c, -1i, 2147483647i, 1i), vec4<i32>(var_0.c, 1i, -2147483647i, var_0.c), vec4<i32>(-1i, u_input.a, 58834i, -38355i)), vec4<i32>(53655i, arg_0, var_1, u_input.a) | vec4<i32>(0i, arg_0, u_input.a, 14312i)), var_0.b)), Struct_1(arg_2.x, vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.d.x)), arg_2.x), var_0.a, ~var_1 << (_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_0.a, 49689u), var_0.a) % 32u)), reverseBits(firstLeadingBit(vec2<u32>(var_0.a, 37434u))) & vec2<u32>(4294967295u, var_0.a), var_0.b & arg_1);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: u32) -> Struct_1 {
    var var_0 = 10940u;
    let var_1 = func_2(arg_2.x, !((false && arg_1.d) | true) | true, _wgslsmith_f_op_vec2_f32(ceil(arg_1.b.b)));
    var_0 = ~var_1.c.x;
    var var_2 = _wgslsmith_add_u32(arg_1.b.c, ~2840u);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(391f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) * _wgslsmith_f_op_f32(-var_1.b.a)))), 1640f, _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(arg_3, 6u)])));
    return arg_1.b;
}

fn func_1(arg_0: vec4<bool>) -> bool {
    let var_0 = func_4(30312i, func_2(firstTrailingBit(2147483647i), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)])))))), vec2<i32>(u_input.a, u_input.a), ~select(0u, _wgslsmith_mod_u32(abs(1u), _wgslsmith_mult_u32(7483u, 82098u)), any(!vec3<bool>(true, arg_0.x, false))));
    let var_1 = func_3(true, var_0.b, ~abs(~min(vec3<u32>(0u, var_0.c, var_0.c), vec3<u32>(var_0.c, var_0.c, var_0.c))));
    return all(vec4<bool>(true, arg_0.x && (u_input.a <= _wgslsmith_mult_i32(20319i, 57446i)), any(arg_0), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(func_1(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true)));
    var var_1 = vec4<i32>(-_wgslsmith_sub_i32(~(~60855i), u_input.a), _wgslsmith_clamp_i32(abs(u_input.a), 10553i, countOneBits(u_input.a)), select(_wgslsmith_mult_i32(u_input.a, 2147483647i), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -86877i, -12428i), vec4<i32>(u_input.a, 1i, 0i, u_input.a))) >> (~4294967295u % 32u), true), (_wgslsmith_sub_i32(i32(-1i) * -3378i, u_input.a) >> (1u % 32u)) << (min(1u, ~firstLeadingBit(4294967295u)) % 32u));
    var_1 = ~(vec4<i32>(_wgslsmith_mult_i32(~u_input.a, -11910i), _wgslsmith_mod_i32(u_input.a, -u_input.a), func_4(~(-23906i), Struct_2(vec4<i32>(-2147483647i, var_1.x, u_input.a, u_input.a), Struct_1(global0[_wgslsmith_index_u32(25805u, 6u)], vec2<f32>(global0[_wgslsmith_index_u32(1u, 6u)], -1000f), 38194u, var_1.x), vec2<u32>(4294967295u, 0u), var_0.x), _wgslsmith_mod_vec2_i32(var_1.yy, var_1.yz), 4294967295u).d, 55415i) | max(-firstLeadingBit(vec4<i32>(u_input.a, u_input.a, 4053i, var_1.x)), abs(-vec4<i32>(var_1.x, var_1.x, 1i, 31547i))));
    let var_2 = func_2(abs(_wgslsmith_add_i32(-23689i, select(-1i, 0i, true)) ^ (i32(-1i) * -33388i)), true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-527f, -897f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)]) - vec2<f32>(global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(18571u, 6u)])))))));
    global0 = array<f32, 6>();
    var var_3 = firstTrailingBit(func_4(var_2.b.d, Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, 1i, 68406i, var_2.b.d), vec4<i32>(u_input.a, 0i, -2147483647i, -35181i), var_2.a), func_4(_wgslsmith_dot_vec2_i32(var_1.wy, var_1.xw), var_2, var_2.a.yy, ~var_2.c.x), vec2<u32>(var_2.b.c, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.c.x, var_2.c.x), var_2.c)), 31013u > ~var_2.b.c), _wgslsmith_div_vec2_i32(select(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -23199i), vec2<i32>(-79135i, var_2.b.d)), abs(vec2<i32>(1i, -18567i)), vec2<bool>(true, true)), firstLeadingBit(-var_2.a.xx)), _wgslsmith_dot_vec2_u32(countOneBits(var_2.c), ~abs(vec2<u32>(1u, 0u)))).d);
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.x, var_2.a, ~var_2.a);
}

