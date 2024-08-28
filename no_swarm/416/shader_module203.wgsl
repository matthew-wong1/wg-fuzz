struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

var<private> global1: array<u32, 4> = array<u32, 4>(24249u, 4294967295u, 23251u, 4713u);

var<private> global2: array<f32, 22>;

var<private> global3: array<Struct_2, 13>;

var<private> global4: Struct_4 = Struct_4(1u, vec4<i32>(-1i, -25661i, -10402i, -10212i), vec2<bool>(false, true), Struct_2(0i, Struct_1(false, vec2<f32>(-358f, 321f)), Struct_1(true, vec2<f32>(-1856f, -1762f))));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec2<bool>) -> u32 {
    let var_0 = Struct_2(_wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(-vec4<i32>(global4.d.a, -39303i, -8858i, global4.d.a), ~global4.b), vec4<i32>(_wgslsmith_sub_i32(~arg_0.d.a, max(-50736i, 41374i)), arg_1.c.a, max(42929i, 0i), -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.x, -1i, arg_1.b.a), vec3<i32>(-1i, arg_0.d.a, 21866i)))), Struct_1(global4.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.d.c.b) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1272f, global2[_wgslsmith_index_u32(36864u, 22u)]))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b.b.b) + arg_0.d.c.b))), Struct_1(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(256f, arg_0.d.c.b.x))));
    let var_1 = _wgslsmith_div_vec2_i32(-select(-arg_0.b.wx, select(~vec2<i32>(166i, arg_0.d.a), vec2<i32>(global4.d.a, global4.d.a), arg_0.c), arg_2), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, -2147483647i), vec2<i32>(arg_1.c.a, var_0.a)), arg_0.d.a), -(~countOneBits(arg_1.b.a))));
    global0 = array<u32, 11>();
    let var_2 = Struct_4(1u, countOneBits(vec4<i32>(arg_1.b.a, -arg_1.b.a, var_1.x, global4.b.x) | vec4<i32>(i32(-1i) * -8354i, -arg_1.c.a, _wgslsmith_add_i32(2147483647i, arg_1.b.a), arg_1.c.a)), arg_2, global4.d);
    let var_3 = -vec4<i32>(-1i, global4.b.x, ~var_0.a, 2147483647i);
    return _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 11u)], 63626u) & ~vec2<u32>(global1[_wgslsmith_index_u32(global4.a, 4u)], 40885u), vec2<u32>(~1u, 4294967295u)));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: u32, arg_3: vec2<u32>) -> u32 {
    global0 = array<u32, 11>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(arg_3.x, 22u)], arg_1))), Struct_2(-72738i, Struct_1(true, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2821f), arg_1)), global4.d.c), Struct_2(-2147483647i, global4.d.b, global4.d.c));
    global4 = Struct_4(max(global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x, 4294967295u, global4.a, 49496u), vec4<u32>(23848u, 1105u, 1u, 4294967295u))), 4u)] >> (~5832u % 32u), 1u >> (func_3(Struct_4(global4.a, global4.b, arg_0, global3[_wgslsmith_index_u32(arg_2, 13u)]), Struct_3(arg_1, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.a, 4u)], 13u)], Struct_2(31866i, Struct_1(var_0.c.b.a, vec2<f32>(arg_1, var_0.c.b.b.x)), var_0.c.c)), select(vec2<bool>(global4.d.c.a, false), vec2<bool>(global4.c.x, true), var_0.c.b.a)) % 32u)), select(_wgslsmith_mult_vec4_i32(abs(max(vec4<i32>(44462i, var_0.c.a, var_0.b.a, global4.d.a), vec4<i32>(45663i, global4.d.a, var_0.c.a, 2147483647i))), ~(-global4.b)), global4.b, select(!select(vec4<bool>(true, arg_0.x, false, var_0.b.b.a), vec4<bool>(true, var_0.c.c.a, arg_0.x, arg_0.x), vec4<bool>(global4.c.x, false, true, true)), vec4<bool>(var_0.c.c.a & global4.c.x, any(vec4<bool>(var_0.b.c.a, global4.c.x, false, global4.d.b.a)), global4.c.x, any(vec3<bool>(true, arg_0.x, false))), true)), vec2<bool>((~global1[_wgslsmith_index_u32(arg_2, 4u)] == ~0u) && !any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), true | any(global4.c)), var_0.b);
    let var_1 = 61119u;
    let var_2 = ~(firstLeadingBit(global4.a) & global4.a);
    return func_3(Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(23866u, reverseBits(~45919u)), 11u)], ((vec4<i32>(-29287i, var_0.c.a, global4.d.a, global4.d.a) << (vec4<u32>(arg_3.x, arg_2, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2, 4u)], 11u)], var_1) % vec4<u32>(32u))) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1, 5821u, 18311u, 54363u), vec4<u32>(arg_2, 0u, var_1, 0u), vec4<u32>(7742u, var_1, 45356u, 0u)) % vec4<u32>(32u))) & (-vec4<i32>(global4.b.x, var_0.b.a, -19026i, -2147483647i) >> (~vec4<u32>(arg_2, var_1, arg_3.x, 4403u) % vec4<u32>(32u))), !select(vec2<bool>(global4.d.c.a, var_0.b.c.a), vec2<bool>(false, arg_0.x), select(global4.c, vec2<bool>(true, var_0.c.b.a), true)), var_0.c), Struct_3(_wgslsmith_f_op_f32(-global4.d.b.b.x), global4.d, Struct_2(~global4.b.x, var_0.c.b, var_0.c.c)), select(select(select(vec2<bool>(false, arg_0.x), arg_0, arg_3.x <= global4.a), select(!global4.c, select(vec2<bool>(true, false), vec2<bool>(var_0.c.b.a, var_0.b.b.a), vec2<bool>(true, false)), global4.c.x && false), global4.c), global4.c, !(var_0.a <= _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = abs(1u);
    return global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, func_2(select(vec2<bool>(!global4.c.x, false), global4.c, false), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_clamp_u32(1u, 7237u, 0u), ~42840u), 22u)], ~global4.a, (_wgslsmith_mult_vec2_u32(vec2<u32>(global4.a, u_input.a), vec2<u32>(0u, var_0)) << (~vec2<u32>(64852u, 11280u) % vec2<u32>(32u))) >> (_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(var_0, u_input.a)), _wgslsmith_mult_vec2_u32(vec2<u32>(42280u, 63936u), vec2<u32>(u_input.a, 1u))) % vec2<u32>(32u)))), 13u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_4(_wgslsmith_div_u32(reverseBits((global4.a ^ 0u) ^ 0u), ~abs(1u >> (global4.a % 32u))), countOneBits(select(countOneBits(global4.b), firstTrailingBit(global4.b), global4.d.b.a) & global4.b), !(!(!(!global4.c))), func_1(4294967295u ^ global4.a));
    return ~(var_0.a | 75545u) ^ ~abs(countOneBits(global0[_wgslsmith_index_u32(var_0.a, 11u)]) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global4.a, global4.a), vec2<u32>(u_input.a, 93631u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global4.a, 1u), 4u)], 13u)];
    var var_1 = reverseBits(vec3<i32>(_wgslsmith_add_i32(global4.b.x, -global4.b.x), 1i << (func_4(func_1(global0[_wgslsmith_index_u32(87524u, 11u)]), Struct_2(var_0.a, global4.d.b, var_0.c)) % 32u), -2147483647i));
    var var_2 = func_1(u_input.a);
    var var_3 = vec3<i32>(~firstTrailingBit(-9905i), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_1.x, var_0.a) | (-var_0.a ^ var_0.a), ~global4.b.x, var_2.a), var_2.a);
    var_3 = -_wgslsmith_div_vec3_i32(vec3<i32>(1i, ~(~var_0.a), 2147483647i), vec3<i32>(func_1(global1[_wgslsmith_index_u32(u_input.a, 4u)] << (u_input.a % 32u)).a, var_3.x >> (countOneBits(1u) % 32u), -_wgslsmith_mod_i32(25794i, var_0.a)));
    let var_4 = true;
    var var_5 = global4.d.c;
    global0 = array<u32, 11>();
    global4 = Struct_4(min(1u, u_input.a), -(~vec4<i32>(global4.d.a & var_3.x, select(var_3.x, 33392i, var_0.c.a), -80401i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0.a), var_3.zz))), !vec2<bool>(var_5.a, any(vec3<bool>(false, global4.c.x, var_4))), global4.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(199f * 126f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1224f, _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(u_input.a, 22u)])), var_2.c.b.x, global2[_wgslsmith_index_u32(global4.a, 22u)]) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.b.x, 502f, 1000f, -570f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1056f, var_2.b.b.x, var_5.b.x, var_0.b.b.x) + vec4<f32>(global4.d.c.b.x, var_5.b.x, -1533f, 2761f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.d.c.b.x, _wgslsmith_f_op_f32(sign(-1000f)), func_1(global1[_wgslsmith_index_u32(1u, 4u)]).c.b.x, var_0.b.b.x) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-311f, 1519f, global4.d.b.b.x, global4.d.b.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.b.x, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22306u, 11u)], 22u)], 1869f, var_0.c.b.x) - vec4<f32>(-1000f, -116f, var_2.b.b.x, var_2.c.b.x))))), -var_2.a);
}

