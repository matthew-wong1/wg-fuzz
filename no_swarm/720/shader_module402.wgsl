struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(0u, 93812u, 4294967295u), vec3<u32>(0u, 1u, 0u), vec3<u32>(1u, 1u, 114317u), vec3<u32>(4294967295u, 47856u, 40096u), vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 1u, 58429u), vec3<u32>(29052u, 4294967295u, 4294967295u), vec3<u32>(27884u, 81332u, 1u), vec3<u32>(66523u, 1u, 1u), vec3<u32>(0u, 1u, 0u), vec3<u32>(55952u, 0u, 13281u), vec3<u32>(0u, 27069u, 0u), vec3<u32>(15172u, 1u, 56730u), vec3<u32>(4294967295u, 1u, 3221u), vec3<u32>(1u, 1u, 0u), vec3<u32>(1u, 49505u, 0u), vec3<u32>(70871u, 30009u, 0u), vec3<u32>(4294967295u, 74646u, 110605u), vec3<u32>(25237u, 4294967295u, 30356u), vec3<u32>(127703u, 1u, 4294967295u), vec3<u32>(0u, 17853u, 0u), vec3<u32>(194u, 71041u, 17175u), vec3<u32>(28700u, 9791u, 0u), vec3<u32>(1u, 4294967295u, 30212u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(0u, 4466u, 44743u), vec3<u32>(4294967295u, 30577u, 21009u), vec3<u32>(6483u, 4294967295u, 35018u), vec3<u32>(0u, 3177u, 46672u));

var<private> global1: i32;

var<private> global2: array<Struct_1, 28>;

var<private> global3: array<i32, 6>;

var<private> global4: array<i32, 3>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> vec3<f32> {
    global1 = abs(~select(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, 22356i), vec3<i32>(global4[_wgslsmith_index_u32(arg_0.c, 3u)], global3[_wgslsmith_index_u32(arg_0.c, 6u)], u_input.c)), ~global3[_wgslsmith_index_u32(arg_0.c, 6u)], !arg_0.a.a.x) | countOneBits(u_input.a.x | _wgslsmith_dot_vec3_i32(vec3<i32>(global4[_wgslsmith_index_u32(arg_0.c, 3u)], -44038i, -1i), vec3<i32>(18303i, -10535i, u_input.c))));
    global0 = array<vec3<u32>, 29>();
    let var_0 = arg_0.a.a.x & arg_1.d.a.a.x;
    var var_1 = global2[_wgslsmith_index_u32(u_input.d.x, 28u)];
    var var_2 = abs(select(_wgslsmith_mult_vec3_i32(vec3<i32>(global4[_wgslsmith_index_u32(71959u, 3u)], 0i, global4[_wgslsmith_index_u32(1u, 3u)]), _wgslsmith_sub_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(arg_1.c.c, 6u)], global3[_wgslsmith_index_u32(arg_0.c, 6u)], -19066i), vec3<i32>(-30308i, -51393i, -22836i))), ~(~vec3<i32>(u_input.b, u_input.a.x, 37254i)), ~global4[_wgslsmith_index_u32(4294967295u, 3u)] <= global3[_wgslsmith_index_u32(arg_0.c | arg_0.c, 6u)]) ^ min(vec3<i32>(u_input.c, -10635i, reverseBits(-2147483647i)), -select(vec3<i32>(62612i, 21283i, global3[_wgslsmith_index_u32(arg_1.d.c, 6u)]), vec3<i32>(global3[_wgslsmith_index_u32(906u, 6u)], global3[_wgslsmith_index_u32(u_input.d.x, 6u)], global4[_wgslsmith_index_u32(arg_0.c, 3u)]), false)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-482f, 689f, arg_1.b))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1424f, arg_1.b, 542f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-arg_1.b), 678f) - vec3<f32>(_wgslsmith_f_op_f32(-271f * arg_1.b), _wgslsmith_f_op_f32(-arg_1.b), -335f)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, arg_1.b, 209f)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-292f, 660f, arg_1.b), vec3<f32>(arg_1.b, -704f, arg_1.a)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, arg_1.a, arg_1.a) + _wgslsmith_f_op_vec3_f32(vec3<f32>(824f, arg_1.b, arg_1.a) - vec3<f32>(arg_1.a, -612f, arg_1.a)))))));
}

fn func_2() -> f32 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1184f, -680f), _wgslsmith_f_op_f32(ceil(164f)), -262f)), vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -408f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-527f, -2245f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(global2[_wgslsmith_index_u32(32407u, 28u)], Struct_1(vec3<bool>(false, false, true)), 61677u), Struct_3(1071f, -1328f, Struct_2(Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, false)), 45363u), Struct_2(global2[_wgslsmith_index_u32(u_input.d.x, 28u)], global2[_wgslsmith_index_u32(u_input.d.x, 28u)], u_input.d.x), Struct_1(vec3<bool>(true, true, true))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(127f, -342f, -598f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1829f, 3253f, 1003f), vec3<f32>(1128f, 202f, -185f), vec3<bool>(false, false, true)))), select(any(vec3<bool>(true, false, true)), any(vec2<bool>(false, true)), true))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-896f, 374f, 498f), vec3<f32>(-391f, 1091f, 965f)))))));
    var var_2 = select(true, !(_wgslsmith_dot_vec4_u32(~vec4<u32>(23367u, u_input.d.x, u_input.d.x, 6249u), countOneBits(vec4<u32>(u_input.d.x, 137836u, 1u, u_input.d.x))) == ~_wgslsmith_dot_vec2_u32(u_input.d, u_input.d)), all(select(vec2<bool>(true, true), vec2<bool>(true, var_1.x == var_1.x), select(true, true, true))));
    let var_3 = _wgslsmith_mod_vec2_i32(u_input.a, min(u_input.a, select(firstTrailingBit(~vec2<i32>(u_input.b, 0i)), _wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(2963i, global3[_wgslsmith_index_u32(1u, 6u)])), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), -1095f != var_1.x))));
    return 2438f;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> vec3<f32> {
    let var_0 = 45126i;
    var var_1 = ~u_input.d & (_wgslsmith_mult_vec2_u32(firstLeadingBit(u_input.d), u_input.d) << (u_input.d % vec2<u32>(32u)));
    global0 = array<vec3<u32>, 29>();
    var_1 = abs(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(36809u, u_input.d.x), vec2<u32>(114094u, 32516u)), vec2<u32>(arg_1.c, u_input.d.x) | select(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 32845u), arg_2.a.zy), ~u_input.d), u_input.d));
    global2 = array<Struct_1, 28>();
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, -299f, 213f))))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> bool {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -445f), 803f), vec2<f32>(-1042f, _wgslsmith_f_op_f32(floor(1085f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2()), 702f))), Struct_2(Struct_1(!vec3<bool>(arg_1, true, false)), Struct_1(!(!vec3<bool>(arg_1, arg_1, arg_1))), ~_wgslsmith_div_u32(~3771u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.d.x), u_input.d))), global2[_wgslsmith_index_u32(u_input.d.x, 28u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(357f * -1541f)))))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(sign(var_1.x)), Struct_2(Struct_1(select(select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_1, true, arg_1), arg_1), select(vec3<bool>(false, false, arg_1), vec3<bool>(arg_1, true, arg_1), vec3<bool>(true, false, arg_1)), vec3<bool>(arg_1, false, arg_1))), Struct_1(!vec3<bool>(arg_1, arg_1, false)), u_input.d.x), Struct_2(global2[_wgslsmith_index_u32(u_input.d.x, 28u)], global2[_wgslsmith_index_u32((_wgslsmith_mod_u32(0u, u_input.d.x) | u_input.d.x) & 1u, 28u)], u_input.d.x), Struct_1(!(!select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, arg_1, arg_1)))));
    var var_3 = vec3<u32>(119878u, max(u_input.d.x, _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(u_input.d.x ^ var_2.d.c, 29u)] << (global0[_wgslsmith_index_u32(firstLeadingBit(u_input.d.x), 29u)] % vec3<u32>(32u)), vec3<u32>(u_input.d.x, 4294967295u, 2841u))), reverseBits(u_input.d.x));
    var var_4 = _wgslsmith_clamp_i32(0i, firstTrailingBit(_wgslsmith_sub_i32(firstLeadingBit(abs(6996i)), global3[_wgslsmith_index_u32(1u, 6u)])), 1i);
    return !(!(!any(vec2<bool>(true, true))));
}

fn func_5(arg_0: bool, arg_1: vec4<u32>) -> Struct_2 {
    global1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(firstTrailingBit(global3[_wgslsmith_index_u32(0u, 6u)]), global3[_wgslsmith_index_u32(min(arg_1.x, u_input.d.x), 6u)], -2147483647i), ~firstTrailingBit(vec3<i32>(global4[_wgslsmith_index_u32(1u, 3u)], global3[_wgslsmith_index_u32(0u, 6u)], global3[_wgslsmith_index_u32(u_input.d.x, 6u)]) | vec3<i32>(2147483647i, -3054i, -2147483647i))), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(68962u ^ u_input.d.x, arg_1.x), 3u)]);
    global4 = array<i32, 3>();
    let var_0 = vec3<i32>(global4[_wgslsmith_index_u32(u_input.d.x & firstLeadingBit(arg_1.x), 3u)], -(~2147483647i), ~(global4[_wgslsmith_index_u32(~1u, 3u)] << (4294967295u % 32u)));
    let var_1 = select(!vec2<bool>(true, arg_0 && !arg_0), !vec2<bool>(arg_0 & false, true), !select(!select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, true), arg_0), !select(vec2<bool>(false, true), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true)), global4[_wgslsmith_index_u32(arg_1.x << (u_input.d.x % 32u), 3u)] == -44175i));
    let var_2 = ~abs(4294967295u);
    return Struct_2(Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(select(var_1.x, var_1.x, false) | true, false, true)), 26325u);
}

fn func_6(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: vec2<bool>) -> StorageBuffer {
    var var_0 = func_5(func_5(all(vec4<bool>(arg_2.e.a.x, arg_0.a.a.x || true, arg_3.x, all(vec4<bool>(arg_2.e.a.x, true, false, arg_2.c.b.a.x)))), (~vec4<u32>(u_input.d.x, arg_2.d.c, arg_0.c, u_input.d.x) & ~vec4<u32>(u_input.d.x, 1252u, arg_0.c, arg_0.c)) | abs(~vec4<u32>(4294967295u, arg_0.c, arg_0.c, arg_0.c))).b.a.x, vec4<u32>(~19529u, ~arg_2.c.c & _wgslsmith_sub_u32(reverseBits(0u), 4294967295u >> (u_input.d.x % 32u)), 1u, 41134u)).a;
    global3 = array<i32, 6>();
    var var_1 = Struct_3(arg_1.x, arg_1.x, arg_2.c, func_5(arg_2.d.b.a.x, ~((vec4<u32>(u_input.d.x, arg_0.c, 86024u, arg_0.c) >> (vec4<u32>(u_input.d.x, 81421u, arg_0.c, 1u) % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.c, 29461u, 42230u, 1u), vec4<u32>(arg_0.c, arg_0.c, 96389u, arg_0.c)) % vec4<u32>(32u)))), Struct_1(func_5(all(vec4<bool>(arg_2.e.a.x, true, false, arg_2.e.a.x)), vec4<u32>(arg_0.c, 4294967295u, 59972u, 1u) ^ ~vec4<u32>(0u, 35897u, u_input.d.x, u_input.d.x)).b.a));
    var var_2 = true;
    var_0 = Struct_1(func_5(true, firstTrailingBit(min(_wgslsmith_div_vec4_u32(vec4<u32>(26966u, 1u, 0u, 0u), vec4<u32>(55103u, 3263u, 1u, 7106u)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.c.c, var_1.d.c, var_1.c.c, 1u), vec4<u32>(arg_0.c, 0u, arg_2.d.c, 4294967295u))))).b.a);
    return StorageBuffer(u_input.c << (((_wgslsmith_add_u32(13293u, 12757u) << (arg_0.c % 32u)) ^ u_input.d.x) % 32u), reverseBits(vec4<i32>(_wgslsmith_mult_i32(global4[_wgslsmith_index_u32(arg_0.c, 3u)], 7243i) ^ 16617i, abs(global4[_wgslsmith_index_u32(~4294967295u, 3u)]), ~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 15126u), u_input.d), 6u)], global3[_wgslsmith_index_u32(arg_2.c.c, 6u)])), vec3<u32>(~u_input.d.x, abs(abs(1u)), _wgslsmith_add_u32(var_1.d.c, ~countOneBits(14784u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_5(false | func_1(vec2<i32>(global4[_wgslsmith_index_u32(26877u, 3u)], 75058i), all(vec2<bool>(false, false))), ~vec4<u32>(u_input.d.x, firstTrailingBit(8742u), select(1u, 8639u, true), firstTrailingBit(u_input.d.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(776f, -777f)), Struct_2(global2[_wgslsmith_index_u32(0u, 28u)], Struct_1(vec3<bool>(false, true, true)), 1u), func_5(true, vec4<u32>(48496u, u_input.d.x, u_input.d.x, u_input.d.x)).a, _wgslsmith_f_op_f32(floor(-593f)))).x, _wgslsmith_f_op_f32(-1308f * _wgslsmith_f_op_f32(step(1272f, -980f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-728f, -295f))), -863f)), Struct_3(1442f, 354f, func_5(true && any(vec4<bool>(false, false, true, false)), ~vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, u_input.d.x)), Struct_2(func_5(true, _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, 10026u, 1u), vec4<u32>(39314u, u_input.d.x, 0u, u_input.d.x))).b, func_5(true, ~vec4<u32>(u_input.d.x, u_input.d.x, 0u, u_input.d.x)).a, reverseBits(max(u_input.d.x, u_input.d.x))), global2[_wgslsmith_index_u32(u_input.d.x, 28u)]), vec2<bool>(func_5(func_5(true, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 46290u, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 29275u))).a.a.x, reverseBits(vec4<u32>(u_input.d.x, 62867u, u_input.d.x, 0u) & vec4<u32>(8200u, u_input.d.x, u_input.d.x, 57792u))).a.a.x, true));
}

