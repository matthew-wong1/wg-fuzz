struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: i32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12> = array<i32, 12>(-3012i, 54834i, 8586i, 24003i, 25666i, -3178i, 5356i, -1i, -14002i, -50637i, 1i, 1i);

var<private> global1: Struct_3;

var<private> global2: i32;

var<private> global3: vec3<f32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_3) -> i32 {
    return _wgslsmith_mod_i32(0i, u_input.a);
}

fn func_2() -> Struct_2 {
    global1 = Struct_3(_wgslsmith_sub_i32(abs(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, -1i, global0[_wgslsmith_index_u32(u_input.c, 12u)]), vec3<i32>(u_input.b, 0i, global1.a))), 0i));
    var var_0 = firstLeadingBit(vec3<i32>(func_3(_wgslsmith_f_op_f32(global3.x - global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-126f))), Struct_3(countOneBits(15522i))), -55440i, _wgslsmith_clamp_i32(global1.a, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.c, 30776u), 44425u, _wgslsmith_div_u32(9481u, u_input.c)), 12u)], _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.b, 1i), _wgslsmith_sub_i32(-17740i, -49465i)))));
    let var_1 = -1164f;
    let var_2 = Struct_3(2147483647i);
    var var_3 = true;
    return Struct_2(Struct_1(~4294967295u, !any(vec4<bool>(true, true, true, true)), _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(0u, u_input.c), ~u_input.c), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(106404u, 0u)), reverseBits(vec2<u32>(u_input.c, u_input.c))))), var_1, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.x))) + 913f), global3.x, 139f, -1603f), vec2<i32>(global1.a, -756i) << (_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_div_u32(0u, u_input.c), u_input.c), _wgslsmith_mod_vec2_u32(vec2<u32>(47764u, u_input.c), reverseBits(vec2<u32>(0u, u_input.c)))) % vec2<u32>(32u)), ~abs(firstLeadingBit(-global0[_wgslsmith_index_u32(36124u, 12u)])));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> Struct_3 {
    global2 = -2147483647i;
    global3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1207f * -252f))), _wgslsmith_f_op_f32(abs(global3.x)))))));
    let var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-global1.a, func_3(303f, global3.x, Struct_3(65637i)), 12142i, global0[_wgslsmith_index_u32(select(u_input.c, arg_0.a.c, false), 12u)])), ~_wgslsmith_div_vec4_i32(-vec4<i32>(global1.a, arg_0.e, -1i, 1i), firstLeadingBit(vec4<i32>(1i, arg_0.e, global0[_wgslsmith_index_u32(0u, 12u)], u_input.b)))), ~u_input.a, reverseBits(u_input.b), _wgslsmith_mult_i32(abs(-28637i), -30926i));
    let var_1 = vec3<bool>(select(arg_0.a.b, arg_0.a.b, arg_0.a.b), false, !(!arg_0.a.b));
    global3 = arg_0.c.wzz;
    return Struct_3(global1.a);
}

fn func_1() -> Struct_1 {
    global1 = func_4(func_2(), -835f);
    var var_0 = Struct_2(func_2().a, _wgslsmith_f_op_f32(496f - _wgslsmith_f_op_f32(135f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global3.x, global3.x)), func_2().c.x)))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), false)), _wgslsmith_f_op_f32(-278f - 608f), global3.x, global3.x), _wgslsmith_mod_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(-1i, global1.a), ~vec2<i32>(-50130i, -2147483647i)), countOneBits(abs(-vec2<i32>(-35729i, -19808i)))), global1.a);
    var var_1 = func_4(func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_0.b)), _wgslsmith_f_op_f32(select(var_0.b, -1636f, var_0.a.b)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(303f, global3.x)), var_0.a.b))));
    let var_2 = all(select(select(vec4<bool>(var_0.a.b, var_0.a.b, any(vec4<bool>(var_0.a.b, true, true, false)), any(vec2<bool>(false, true))), !(!vec4<bool>(var_0.a.b, var_0.a.b, false, false)), vec4<bool>(var_0.a.c != 19314u, var_0.a.b, true, false)), select(select(vec4<bool>(var_0.a.b, true, false, false), vec4<bool>(var_0.a.b, var_0.a.b, false, var_0.a.b), select(vec4<bool>(var_0.a.b, var_0.a.b, false, var_0.a.b), vec4<bool>(var_0.a.b, false, false, var_0.a.b), var_0.a.b)), select(vec4<bool>(var_0.a.b, var_0.a.b, false, var_0.a.b), !vec4<bool>(false, true, var_0.a.b, var_0.a.b), select(vec4<bool>(var_0.a.b, true, var_0.a.b, false), vec4<bool>(var_0.a.b, true, var_0.a.b, true), var_0.a.b)), !(u_input.c >= var_0.a.a)), var_0.a.b));
    global0 = array<i32, 12>();
    return func_2().a;
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_3 {
    var var_0 = func_2();
    let var_1 = u_input.c;
    let var_2 = var_1;
    let var_3 = func_4(Struct_2(Struct_1(firstTrailingBit(var_1), func_2().a.b || all(vec2<bool>(false, true)), _wgslsmith_clamp_u32(~4882u, var_2, _wgslsmith_dot_vec3_u32(vec3<u32>(39305u, var_0.a.a, 69245u), vec3<u32>(var_2, u_input.c, arg_1.a)))), _wgslsmith_f_op_f32(var_0.b - _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.b)), _wgslsmith_div_f32(-584f, global3.x))), _wgslsmith_f_op_vec4_f32(-func_2().c), ~var_0.d, global0[_wgslsmith_index_u32(var_0.a.a, 12u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c.x)))) - global3.x));
    let var_4 = -2147483647i;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 12>();
    global3 = vec3<f32>(global3.x, -630f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-213f)) * _wgslsmith_f_op_f32(max(-481f, global3.x))));
    global2 = reverseBits(global1.a);
    global1 = func_5(true, func_1());
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, -1337f, global3.x) * vec4<f32>(-578f, -1000f, global3.x, global3.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-1234f, global3.x, global3.x, 553f), vec4<f32>(1439f, global3.x, 559f, -461f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-221f, global3.x, global3.x, global3.x), vec4<f32>(global3.x, 1077f, -143f, global3.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(175f, global3.x, -1640f, -699f), vec4<f32>(global3.x, global3.x, global3.x, global3.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, -194f, global3.x, global3.x) + vec4<f32>(1040f, global3.x, 142f, global3.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 179f, 427f, -1466f) + vec4<f32>(global3.x, 1138f, global3.x, 655f)))))));
    var var_1 = var_0.zxw;
    global3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2558f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * var_1.x)), -507f) * var_0.xzw)));
    global2 = 32916i;
    var var_2 = select(vec3<bool>(false, !(83831u <= u_input.c) & any(vec4<bool>(false, false, false, true)), !all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), false))), select(select(vec3<bool>(false, true, any(vec4<bool>(false, true, false, false))), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)))), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true), true);
    let x = u_input.a;
    s_output = StorageBuffer(62817u, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 13097u, _wgslsmith_dot_vec3_u32(vec3<u32>(32883u, u_input.c, u_input.c), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 0u, u_input.c), vec3<u32>(u_input.c, 9053u, 53502u))), 4294967295u), (select(vec4<u32>(49111u, 67856u, 82653u, 4294967295u), vec4<u32>(1u, u_input.c, u_input.c, u_input.c), var_2.x) >> (~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u))) << ((vec4<u32>(1005u, 116396u, u_input.c, u_input.c) ^ ~vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(4294967295u, 5229u, 0u, 17130u)), firstTrailingBit(firstLeadingBit(vec4<u32>(u_input.c, 1u, u_input.c, u_input.c))))), 1u);
}

