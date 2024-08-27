struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: bool,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(true, true, false, true, true, true, false, true, false, true, true, false, false, true, false);

var<private> global1: i32 = 5813i;

var<private> global2: array<bool, 28>;

var<private> global3: bool;

var<private> global4: array<vec3<i32>, 10> = array<vec3<i32>, 10>(vec3<i32>(2919i, 1i, -1i), vec3<i32>(-26926i, i32(-2147483648), 0i), vec3<i32>(-8607i, 5184i, 0i), vec3<i32>(0i, -48666i, -1i), vec3<i32>(2147483647i, 2147483647i, 8274i), vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec3<i32>(1i, 1i, 47993i), vec3<i32>(i32(-2147483648), i32(-2147483648), 78246i), vec3<i32>(i32(-2147483648), i32(-2147483648), 1645i), vec3<i32>(2147483647i, 0i, 0i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: Struct_1) -> u32 {
    var var_0 = arg_2;
    let var_1 = false;
    let var_2 = arg_2.c;
    global1 = -16451i;
    global2 = array<bool, 28>();
    return firstLeadingBit(countOneBits(~arg_2.a.x));
}

fn func_2() -> u32 {
    global2 = array<bool, 28>();
    let var_0 = Struct_1(vec3<u32>(u_input.a, func_3(~global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(30022u, 0u, u_input.a), 10u)], -(vec2<i32>(u_input.b, -52609i) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), Struct_1(~vec3<u32>(u_input.a, u_input.a, 1u), global2[_wgslsmith_index_u32(u_input.a, 28u)] & global2[_wgslsmith_index_u32(u_input.a, 28u)], _wgslsmith_f_op_f32(f32(-1f) * -2381f), any(vec2<bool>(false, global2[_wgslsmith_index_u32(82886u, 28u)])), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 15u)]))), ~u_input.a), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + -1168f)) * -1219f), all(!(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 15u)], false))) && global2[_wgslsmith_index_u32(~(~(~0u)), 28u)], vec2<bool>(true, true));
    let var_1 = (~(~var_0.a.x) & firstTrailingBit(var_0.a.x)) << (var_0.a.x % 32u);
    global1 = u_input.b;
    var var_2 = !(!vec3<bool>(true | global0[_wgslsmith_index_u32(countOneBits(u_input.a), 15u)], global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(u_input.a), 11588u), 28u)], var_0.d));
    return _wgslsmith_sub_u32(max(4294967295u, u_input.a), ~(~var_1));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<f32>) -> Struct_1 {
    global3 = false;
    global2 = array<bool, 28>();
    let var_0 = select(!vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), 15u)], true), vec2<bool>(true, true), vec2<bool>(false && any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 15u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(210f * arg_1.x) - _wgslsmith_f_op_f32(-arg_1.x)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * 945f))));
    global0 = array<bool, 15>();
    global2 = array<bool, 28>();
    return Struct_1(vec3<u32>(u_input.a, u_input.a, ~_wgslsmith_clamp_u32(~u_input.a, 47235u, u_input.a)), any(!vec4<bool>(var_0.x, !global2[_wgslsmith_index_u32(u_input.a, 28u)], !global0[_wgslsmith_index_u32(u_input.a, 15u)], all(vec2<bool>(false, var_0.x)))), 1568f, true, !(!select(var_0, select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(u_input.a, 15u)]), var_0, false), !var_0)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<u32>) -> vec2<i32> {
    var var_0 = func_4(min(global4[_wgslsmith_index_u32(func_2(), 10u)], reverseBits(global4[_wgslsmith_index_u32(1u, 10u)] << (~vec3<u32>(u_input.a, u_input.a, 28338u) % vec3<u32>(32u)))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(528f))))), _wgslsmith_f_op_f32(-arg_1.c)));
    var var_1 = func_4(select(vec3<i32>(u_input.b, select(u_input.b & u_input.b, u_input.b >> (arg_2.x % 32u), func_4(global4[_wgslsmith_index_u32(arg_0.x, 10u)], vec2<f32>(-496f, arg_1.c)).e.x), ~firstLeadingBit(u_input.b)), -min(vec3<i32>(u_input.b, -1i, u_input.b), countOneBits(vec3<i32>(u_input.b, u_input.b, u_input.b))), vec3<bool>(true, any(vec3<bool>(true, true, true)), all(var_0.e))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(arg_1.c, _wgslsmith_f_op_f32(f32(-1f) * -241f), any(vec3<bool>(true, arg_1.d, arg_1.b)))), _wgslsmith_f_op_f32(-505f * arg_1.c))));
    var var_2 = arg_1;
    let var_3 = func_4(vec3<i32>(_wgslsmith_add_i32(-abs(u_input.b), abs(~41736i)), max(_wgslsmith_mod_i32(u_input.b, u_input.b) << (4294967295u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-15021i, u_input.b), ~vec2<i32>(-22364i, u_input.b))), u_input.b), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1369f))), vec2<f32>(var_1.c, _wgslsmith_f_op_f32(f32(-1f) * -146f)))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c, var_3.c, var_2.c) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.c, var_0.c, 1117f))))))));
    return countOneBits((~_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -59394i), vec2<i32>(u_input.b, 11949i)) >> (_wgslsmith_mult_vec2_u32(func_4(global4[_wgslsmith_index_u32(17929u, 10u)], var_4.xy).a.zx, abs(var_0.a.yz)) % vec2<u32>(32u))) & select(firstTrailingBit(abs(vec2<i32>(u_input.b, u_input.b))), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, 1i) >> (vec2<u32>(arg_0.x, 0u) % vec2<u32>(32u)), reverseBits(vec2<i32>(u_input.b, u_input.b)), select(vec2<i32>(-40186i, 34641i), vec2<i32>(1i, u_input.b), vec2<bool>(false, true))), true && (u_input.a > arg_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(~(~(vec3<u32>(11613u, u_input.a, 37399u) << (vec3<u32>(u_input.a, 11939u, u_input.a) % vec3<u32>(32u)))), vec3<u32>(select(u_input.a, 4294967295u, global2[_wgslsmith_index_u32(u_input.a, 28u)]), 59391u, reverseBits(94536u)) | ~vec3<u32>(20131u, 1u, u_input.a), !(!(!vec3<bool>(global2[_wgslsmith_index_u32(8652u, 28u)], false, global2[_wgslsmith_index_u32(u_input.a, 28u)])))), vec3<u32>(~0u, 73982u, u_input.a), 22520i >= _wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, -24442i) ^ ~vec2<i32>(0i, u_input.b), func_1(firstTrailingBit(vec2<u32>(u_input.a, 11025u)), Struct_1(vec3<u32>(u_input.a, 30305u, u_input.a), global0[_wgslsmith_index_u32(4294967295u, 15u)], 841f, true, vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 28u)], global2[_wgslsmith_index_u32(7246u, 28u)])), abs(vec2<u32>(17782u, 57475u)))));
    var var_1 = Struct_1(func_4(vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(global4[_wgslsmith_index_u32(u_input.a, 10u)], global4[_wgslsmith_index_u32(var_0.x, 10u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(212f, -1479f) + vec2<f32>(-1096f, -1354f)) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-381f, -1026f)))))).a, global2[_wgslsmith_index_u32(0u, 28u)], _wgslsmith_f_op_f32(-353f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(576f)) + _wgslsmith_f_op_f32(max(683f, 1321f))) - _wgslsmith_f_op_f32(floor(1304f)))), u_input.b >= ~_wgslsmith_sub_i32(u_input.b, _wgslsmith_div_i32(u_input.b, -12374i)), select(select(vec2<bool>(!global2[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(var_0.x, 15u)] & false), !select(vec2<bool>(global0[_wgslsmith_index_u32(2580u, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(4294967295u, 15u)]), true), !any(vec2<bool>(true, true))), vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a & u_input.a, u_input.a >> (u_input.a % 32u)), 15u)], min(-1i, u_input.b) == 35681i), vec2<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 15u)], global0[_wgslsmith_index_u32(var_0.x, 15u)], false)), func_4(global4[_wgslsmith_index_u32(u_input.a, 10u)], vec2<f32>(-611f, -725f)).b || !global0[_wgslsmith_index_u32(5278u, 15u)])));
    let var_2 = Struct_1(select(~(vec3<u32>(u_input.a, 4294967295u, 1u) << (min(vec3<u32>(51251u, var_0.x, 4294967295u), var_1.a) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, 0u, 4294967295u, var_0.x) << (vec4<u32>(0u, 6729u, 1u, u_input.a) % vec4<u32>(32u)), countOneBits(vec4<u32>(1u, 5603u, 17846u, u_input.a))), min(_wgslsmith_mod_u32(var_0.x, 0u), ~11948u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 10484u, var_0.x, var_1.a.x) >> (vec4<u32>(20761u, 1u, 1u, 15912u) % vec4<u32>(32u)), ~vec4<u32>(19742u, 1u, var_0.x, 58709u))), vec3<bool>(global2[_wgslsmith_index_u32(~abs(10924u), 28u)], global2[_wgslsmith_index_u32(u_input.a << (47953u % 32u), 28u)] || !global0[_wgslsmith_index_u32(u_input.a, 15u)], true || func_4(vec3<i32>(u_input.b, u_input.b, -1i), vec2<f32>(var_1.c, -1000f)).b)), (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c * -1398f) - _wgslsmith_f_op_f32(1644f - -701f)) == 672f) || !func_4(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.x, var_0.x), 10u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(-475f, -1000f) + vec2<f32>(-135f, var_1.c))).e.x, _wgslsmith_f_op_f32(exp2(var_1.c)), global0[_wgslsmith_index_u32(abs(var_0.x), 15u)], select(select(!(!var_1.e), !select(var_1.e, var_1.e, var_1.e), true), vec2<bool>(any(!var_1.e), all(vec3<bool>(var_1.d, global0[_wgslsmith_index_u32(u_input.a, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)]))), select(select(var_1.e, !var_1.e, any(var_1.e)), var_1.e, !global2[_wgslsmith_index_u32(abs(68267u), 28u)])));
    global4 = array<vec3<i32>, 10>();
    let var_3 = func_4(vec3<i32>(_wgslsmith_add_i32(-2147483647i, _wgslsmith_sub_i32(0i, _wgslsmith_dot_vec3_i32(global4[_wgslsmith_index_u32(4818u, 10u)], vec3<i32>(82451i, u_input.b, -5262i)))), min(6859i, u_input.b), u_input.b ^ -39788i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(664f + var_2.c), _wgslsmith_f_op_f32(-1403f - 1616f)) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1178f, var_2.c))))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(var_1.c * var_1.c), var_2.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1081f, 2540f))))));
    let var_4 = abs(~func_4(vec3<i32>(-u_input.b, u_input.b, u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -1511f), vec2<f32>(-990f, 1000f)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.c, var_3.c), vec2<f32>(var_3.c, var_3.c))))).a.x);
    var var_5 = -(~global4[_wgslsmith_index_u32(5372u, 10u)]);
    let x = u_input.a;
    s_output = StorageBuffer(max(var_1.a, ~vec3<u32>(_wgslsmith_mult_u32(var_1.a.x, 0u), min(var_2.a.x, 8016u), 37220u)));
}

