struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 6>;

var<private> global1: array<Struct_2, 22>;

var<private> global2: array<Struct_4, 7>;

var<private> global3: array<bool, 29>;

var<private> global4: i32 = 24864i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> bool {
    var var_0 = u_input.a;
    var var_1 = true;
    global0 = array<vec4<bool>, 6>();
    var var_2 = select(vec3<u32>(u_input.a, abs(_wgslsmith_clamp_u32(u_input.a, 6689u, 50321u)), 4294967295u) & (vec3<u32>(11132u, 1964u, u_input.b) ^ ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.b, 13156u), vec3<u32>(4294967295u, 39618u, u_input.b), vec3<u32>(1u, 38081u, u_input.b))), vec3<u32>(u_input.b >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 38911u, 16327u), vec3<u32>(u_input.a, 68564u, 66028u)), ~32796u) % 32u), 4294967295u, 25337u), select(!select(select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 29u)], true, global3[_wgslsmith_index_u32(40690u, 29u)]), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 29u)], true, false), true), select(vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 29u)], global3[_wgslsmith_index_u32(u_input.a, 29u)]), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 29u)], global3[_wgslsmith_index_u32(u_input.b, 29u)], global3[_wgslsmith_index_u32(u_input.b, 29u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(19341u, 29u)], global3[_wgslsmith_index_u32(22386u, 29u)])), global3[_wgslsmith_index_u32(34419u, 29u)]), !select(vec3<bool>(false, true, false), !vec3<bool>(global3[_wgslsmith_index_u32(0u, 29u)], true, true), false), select(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 29u)], global3[_wgslsmith_index_u32(u_input.b, 29u)], false), vec3<bool>(false, select(global3[_wgslsmith_index_u32(54259u, 29u)], global3[_wgslsmith_index_u32(0u, 29u)], global3[_wgslsmith_index_u32(u_input.a, 29u)]), !global3[_wgslsmith_index_u32(u_input.b, 29u)]), vec3<bool>(any(global0[_wgslsmith_index_u32(u_input.a, 6u)]), global3[_wgslsmith_index_u32(57504u << (u_input.a % 32u), 29u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, u_input.b, u_input.a), vec4<u32>(3720u, u_input.a, 4294967295u, u_input.b)), 29u)]))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1432f, -2045f, -131f) + vec3<f32>(-136f, -533f, 648f))))))));
    return global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(1u), firstTrailingBit(var_2.x)), 29u)];
}

fn func_2() -> f32 {
    global3 = array<bool, 29>();
    var var_0 = _wgslsmith_f_op_f32(trunc(-264f));
    var var_1 = Struct_4(Struct_1(select(vec3<bool>(true, !global3[_wgslsmith_index_u32(u_input.b, 29u)], true), vec3<bool>(func_3(), global3[_wgslsmith_index_u32(u_input.b, 29u)], true), vec3<bool>(u_input.b <= 4294967295u, true, false & global3[_wgslsmith_index_u32(0u, 29u)])), select(!vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.b, 29u)], global3[_wgslsmith_index_u32(u_input.b, 29u)]), !select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 29u)], global3[_wgslsmith_index_u32(0u, 29u)], global3[_wgslsmith_index_u32(u_input.a, 29u)]), vec3<bool>(global3[_wgslsmith_index_u32(0u, 29u)], global3[_wgslsmith_index_u32(u_input.b, 29u)], global3[_wgslsmith_index_u32(u_input.a, 29u)]), global3[_wgslsmith_index_u32(u_input.b, 29u)]), !global3[_wgslsmith_index_u32(u_input.a, 29u)]), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 0u) & vec2<u32>(0u, u_input.b), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 0u))) & _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 4294967295u), ~vec2<u32>(74279u, u_input.b)), vec4<i32>(firstLeadingBit(-20650i << (0u % 32u)), 8098i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -29496i) >> (vec2<u32>(u_input.b, 26983u) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(-1181i, 2147483647i), vec2<i32>(-5225i, -6150i))), -52430i)), u_input.a, ~select(reverseBits(~vec3<u32>(u_input.a, u_input.b, u_input.a)), vec3<u32>(u_input.b, _wgslsmith_clamp_u32(22740u, 1u, 0u), u_input.a), select(select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 29u)], true, global3[_wgslsmith_index_u32(u_input.b, 29u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 29u)], false), vec3<bool>(true, global3[_wgslsmith_index_u32(22u, 29u)], false)), !vec3<bool>(false, true, global3[_wgslsmith_index_u32(u_input.b, 29u)]), false && global3[_wgslsmith_index_u32(u_input.b, 29u)])));
    let var_2 = 1u;
    var var_3 = Struct_4(Struct_1(var_1.a.b, vec3<bool>(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), var_1.c.yx), 29u)], var_1.a.b.x && any(vec3<bool>(var_1.a.a.x, var_1.a.a.x, true)), func_3()), (~vec2<u32>(0u, var_1.b) >> (vec2<u32>(var_2, 0u) % vec2<u32>(32u))) >> (var_1.a.c % vec2<u32>(32u)), select(vec4<i32>(firstTrailingBit(29109i), firstTrailingBit(-32978i), var_1.a.d.x, ~var_1.a.d.x), ~(-vec4<i32>(0i, var_1.a.d.x, var_1.a.d.x, -62636i)), true)), max(~0u, _wgslsmith_dot_vec3_u32(var_1.c, vec3<u32>(var_1.a.c.x, 104u, 1u))), (~abs(var_1.c) ^ min(max(vec3<u32>(u_input.a, var_2, 45662u), var_1.c), ~vec3<u32>(var_1.a.c.x, u_input.a, u_input.a))) | ~abs(~var_1.c));
    return _wgslsmith_f_op_f32(max(-1221f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1087f)) + _wgslsmith_f_op_f32(1337f + -1648f))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: Struct_3) -> i32 {
    let var_0 = (true || all(arg_2.c.b)) != (((u_input.b & _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), arg_1.c.zz)) >> (4294967295u % 32u)) >= 36712u);
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-283f, _wgslsmith_f_op_f32(min(1499f, -1804f)), _wgslsmith_f_op_f32(floor(arg_0.x)), arg_2.b.a.x)))));
    var var_2 = all(vec3<bool>(false, any(!vec2<bool>(global3[_wgslsmith_index_u32(arg_2.c.c.x, 29u)], false)), true));
    var var_3 = global1[_wgslsmith_index_u32(~(~(~(~4294967295u) | select(~4294967295u, abs(15795u), false))), 22u)];
    var var_4 = Struct_5(var_1.a);
    return arg_2.d.d.x;
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: Struct_4, arg_3: vec3<bool>) -> f32 {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1817f, 660f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(arg_0.a.a.x * arg_0.b.d))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_0.b.a))), vec3<f32>(-346f, _wgslsmith_f_op_f32(-arg_0.a.a.x), _wgslsmith_f_op_f32(142f - arg_0.b.a.x)))), Struct_4(arg_2.a, ~(~arg_2.a.c.x), vec3<u32>(0u, 0u, arg_2.b)), Struct_3(arg_0.a, Struct_2(vec3<f32>(_wgslsmith_f_op_f32(abs(-572f)), 1183f, _wgslsmith_f_op_f32(arg_0.b.a.x * arg_0.b.d)), arg_0.d, arg_2.a.d, 459f), Struct_1(!select(vec3<bool>(false, false, false), arg_3, true), vec3<bool>(any(arg_0.c.b), !arg_2.a.b.x, select(arg_1, arg_0.d.a.x, false)), ~arg_0.b.b.c, arg_2.a.d), Struct_1(arg_3, vec3<bool>(arg_2.a.b.x, true, false), ~(~vec2<u32>(1u, 1u)), vec4<i32>(76691i, arg_2.a.d.x, ~arg_2.a.d.x, 22561i))));
    let var_1 = firstLeadingBit(arg_0.c.c.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_0.a.a - _wgslsmith_f_op_vec3_f32(min(arg_0.a.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a.x, 699f, arg_0.a.d)))))))));
    let var_3 = arg_0.a.b;
    let var_4 = global2[_wgslsmith_index_u32(countOneBits((max(4294967295u >> (0u % 32u), select(var_3.c.x, 4294967295u, true)) | firstLeadingBit(0u << (u_input.b % 32u))) & _wgslsmith_clamp_u32(var_1, u_input.a, _wgslsmith_mult_u32(16999u, arg_2.a.c.x))), 7u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_2.x, arg_0.b.a.x)))) - var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 29>();
    var var_0 = ~abs(firstLeadingBit(u_input.a));
    global0 = array<vec4<bool>, 6>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1230f, 1508f, 1000f))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_3(global1[_wgslsmith_index_u32(u_input.b, 22u)], Struct_2(vec3<f32>(282f, var_1.x, var_1.x), Struct_1(vec3<bool>(global3[_wgslsmith_index_u32(34729u, 29u)], global3[_wgslsmith_index_u32(1u, 29u)], false), vec3<bool>(global3[_wgslsmith_index_u32(0u, 29u)], global3[_wgslsmith_index_u32(u_input.b, 29u)], global3[_wgslsmith_index_u32(u_input.b, 29u)]), vec2<u32>(4294967295u, 10375u), vec4<i32>(-54243i, -2147483647i, 24158i, 0i)), vec4<i32>(36041i, 2147483647i, -1i, 0i), -249f), Struct_1(vec3<bool>(global3[_wgslsmith_index_u32(0u, 29u)], global3[_wgslsmith_index_u32(u_input.b, 29u)], global3[_wgslsmith_index_u32(29918u, 29u)]), vec3<bool>(global3[_wgslsmith_index_u32(1u, 29u)], global3[_wgslsmith_index_u32(u_input.b, 29u)], global3[_wgslsmith_index_u32(12637u, 29u)]), vec2<u32>(u_input.a, 37707u), vec4<i32>(-22940i, 0i, -19611i, -11081i)), Struct_1(vec3<bool>(false, global3[_wgslsmith_index_u32(0u, 29u)], global3[_wgslsmith_index_u32(4294967295u, 29u)]), vec3<bool>(false, false, false), vec2<u32>(30265u, 63293u), vec4<i32>(2147483647i, -38800i, 3186i, 2147483647i))), global3[_wgslsmith_index_u32(0u, 29u)], Struct_4(Struct_1(vec3<bool>(false, true, global3[_wgslsmith_index_u32(96041u, 29u)]), vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 29u)], true, global3[_wgslsmith_index_u32(u_input.b, 29u)]), vec2<u32>(19260u, 84964u), vec4<i32>(7907i, -41667i, 1i, -20294i)), u_input.a, vec3<u32>(11691u, u_input.b, 0u)), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 29u)], true, false))), _wgslsmith_f_op_f32(-1528f + var_1.x))))));
    global1 = array<Struct_2, 22>();
    let var_3 = select(vec3<bool>(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.b, 1u), 29u)], select(select(!global3[_wgslsmith_index_u32(1u, 29u)], 38792u == u_input.a, global3[_wgslsmith_index_u32(~1u, 29u)]), true, func_3()), true), select(!(!(!vec3<bool>(global3[_wgslsmith_index_u32(24179u, 29u)], true, global3[_wgslsmith_index_u32(60714u, 29u)]))), vec3<bool>(true, !(false != global3[_wgslsmith_index_u32(48015u, 29u)]), false | any(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 29u)], true, false))), true), !vec3<bool>(global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.a, 36681u), 29u)], true, any(select(vec3<bool>(true, false, false), vec3<bool>(false, global3[_wgslsmith_index_u32(101737u, 29u)], true), vec3<bool>(true, true, false)))));
    var var_4 = 130f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-var_1.x)), -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(_wgslsmith_add_i32(1i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(23368i, -2147483647i, 15913i, -1i), vec4<i32>(-25919i, 16499i, -670i, 26605i))))), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x * var_1.x))) - _wgslsmith_f_op_f32(sign(-249f))) + var_1.x), firstLeadingBit(_wgslsmith_sub_u32(u_input.a, firstTrailingBit(~u_input.a))));
}

