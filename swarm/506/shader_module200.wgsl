struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

var<private> global1: array<bool, 31> = array<bool, 31>(true, true, false, false, false, false, true, true, true, false, true, true, false, false, true, false, true, false, false, false, true, true, false, true, false, false, false, true, true, true, false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: f32, arg_3: vec2<i32>) -> u32 {
    var var_0 = u_input.b.x;
    let var_1 = u_input.b.x;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-302f, arg_2, arg_2), vec3<f32>(arg_0.a.a.x, -1491f, arg_2)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2313f, -1000f, -1732f) + vec3<f32>(658f, arg_2, arg_0.a.a.x)))) + vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.a.a.x)), arg_0.a.a.x, arg_2)))), ~vec4<i32>(_wgslsmith_div_i32(firstLeadingBit(-29602i), u_input.d.x), -20008i, _wgslsmith_mod_i32(-arg_1.x, arg_1.x), 39036i), !arg_0.b, countOneBits(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1, 4294967295u, 0u, var_1), vec4<u32>(var_1, var_1, u_input.a.x, var_1), u_input.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1301f, arg_2))))));
    let var_3 = _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(var_1, 1u, 1u))), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(0u, u_input.c.x), 1u, ~var_1), var_2.d.xzx)) >> (~(_wgslsmith_mod_u32(~8051u, 19994u) >> (abs(var_1 ^ var_1) % 32u)) % 32u);
    var var_4 = var_2.c.x;
    return var_1;
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> Struct_4 {
    let var_0 = 0i;
    global0 = array<i32, 26>();
    global0 = array<i32, 26>();
    let var_1 = min(vec4<u32>(u_input.a.x, func_3(Struct_4(Struct_2(vec2<f32>(733f, 1518f)), vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.c.x, 31u)])), min(vec4<i32>(-1i, u_input.d.x, 0i, 16384i), vec4<i32>(-14591i, arg_1.x, -40158i, var_0)), _wgslsmith_f_op_f32(ceil(arg_0)), u_input.d), _wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 0u), vec2<u32>(25741u, u_input.b.x), global1[_wgslsmith_index_u32(4294967295u, 31u)]), u_input.c), ~(19613u ^ u_input.a.x)), ~(~(~vec4<u32>(u_input.b.x, u_input.a.x, 4294967295u, u_input.c.x)))) << (vec4<u32>(0u, 25804u, ~max(1u, 1u), u_input.c.x) % vec4<u32>(32u));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -604f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), -905f, true)))));
    return Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(var_2.a * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.a.x, -393f), vec2<f32>(arg_0, 1000f))) - _wgslsmith_f_op_vec2_f32(ceil(var_2.a))))), select(vec3<bool>(true, all(select(vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(u_input.a.x, 31u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(var_1.x, 31u)], true, false), vec4<bool>(global1[_wgslsmith_index_u32(53449u, 31u)], global1[_wgslsmith_index_u32(var_1.x, 31u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 31u)]))), (var_0 >> (u_input.c.x % 32u)) < _wgslsmith_add_i32(23396i, u_input.d.x)), !select(vec3<bool>(false, global1[_wgslsmith_index_u32(52857u, 31u)], true), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], global1[_wgslsmith_index_u32(0u, 31u)], true), all(vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(u_input.a.x, 31u)]))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~var_1, _wgslsmith_clamp_vec4_u32(~u_input.a, ~vec4<u32>(var_1.x, var_1.x, u_input.c.x, var_1.x), var_1 >> (var_1 % vec4<u32>(32u)))), 31u)]));
}

fn func_1(arg_0: vec2<i32>) -> Struct_4 {
    var var_0 = func_2(1440f, _wgslsmith_add_vec3_i32(abs(vec3<i32>(arg_0.x, arg_0.x, global0[_wgslsmith_index_u32(21915u, 26u)]) & vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], u_input.d.x, global0[_wgslsmith_index_u32(u_input.b.x, 26u)])), -(vec3<i32>(arg_0.x, arg_0.x, 1i) << (u_input.b % vec3<u32>(32u)))) >> (~(~(~vec3<u32>(u_input.a.x, u_input.b.x, 4294967295u))) % vec3<u32>(32u)));
    let var_1 = 23445u > firstLeadingBit(_wgslsmith_div_u32(~(u_input.b.x >> (u_input.c.x % 32u)), max(0u, ~3952u)));
    let var_2 = 16134i | max(firstTrailingBit(u_input.d.x), 2147483647i);
    global1 = array<bool, 31>();
    global0 = array<i32, 26>();
    return func_2(var_0.a.a.x, -select(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, -11890i, 2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(87762u, 26u)], arg_0.x, arg_0.x))), abs(-vec3<i32>(-1i, -39770i, u_input.d.x)), select(var_0.b, var_0.b, select(var_0.b, vec3<bool>(var_1, true, global1[_wgslsmith_index_u32(21644u, 31u)]), false))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: Struct_2, arg_3: bool) -> vec3<bool> {
    let var_0 = select(~u_input.a, u_input.a << (_wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.a.x)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.b.x, u_input.b.x, 4294967295u) ^ u_input.a, firstTrailingBit(vec4<u32>(1u, 0u, 52856u, u_input.c.x)))) % vec4<u32>(32u)), any(vec3<bool>(false | arg_3, func_1(select(vec2<i32>(-1i, 0i), vec2<i32>(-1i, 1i), vec2<bool>(arg_3, arg_3))).b.x, false)));
    global0 = array<i32, 26>();
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1142f, arg_2.a.x, -393f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) * -1367f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(701f, arg_1.a.a.x, arg_0.a.a.x, -298f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(781f, 431f, -969f, -150f), _wgslsmith_f_op_vec4_f32(vec4<f32>(270f, arg_2.a.x, 290f, arg_1.a.a.x) + vec4<f32>(-565f, arg_2.a.x, -841f, 1159f))))))));
    global0 = array<i32, 26>();
    global0 = array<i32, 26>();
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(2147483647i);
    let var_1 = select(select(vec3<bool>(!global1[_wgslsmith_index_u32(0u, 31u)] | false, global1[_wgslsmith_index_u32(1u | u_input.c.x, 31u)], false), func_4(func_1(~vec2<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 26u)], var_0)), Struct_5(func_2(908f, vec3<i32>(2147483647i, 19771i, 1i)).a, vec4<i32>(u_input.d.x, global0[_wgslsmith_index_u32(u_input.c.x, 26u)], 1i, u_input.d.x)), func_1(vec2<i32>(u_input.d.x, 0i)).a, true), all(func_1(vec2<i32>(var_0, 0i)).b)), vec3<bool>(!(true | global1[_wgslsmith_index_u32(min(51028u, u_input.c.x), 31u)]), true, !global1[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 31u)]), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-574f)) + _wgslsmith_f_op_f32(-570f - 191f)) - -201f), vec3<i32>(u_input.d.x, global0[_wgslsmith_index_u32(reverseBits(41048u), 26u)], -_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(2693u, 26u)], 0i))).b);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2725f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(211f * -1000f), _wgslsmith_f_op_f32(trunc(-137f)))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1320f))))))));
    let var_3 = Struct_3(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, u_input.d.x, -1i), vec4<i32>(-5703i, 44995i, u_input.d.x, var_0)), var_0), 1i), u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(64963i, -89660i, ~var_0, var_0 & -1i), _wgslsmith_add_vec4_i32(vec4<i32>(7459i, -758i, u_input.d.x, var_0), firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], -1i, global0[_wgslsmith_index_u32(u_input.c.x, 26u)], global0[_wgslsmith_index_u32(u_input.b.x, 26u)]))))));
    var var_4 = ~u_input.a.zz;
    var_4 = reverseBits(firstLeadingBit(reverseBits(~select(u_input.b.zy, vec2<u32>(40125u, u_input.a.x), global1[_wgslsmith_index_u32(var_4.x, 31u)]))));
    global0 = array<i32, 26>();
    global0 = array<i32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_mod_vec4_u32(u_input.a, u_input.a));
}

