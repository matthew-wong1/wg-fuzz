struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22> = array<u32, 22>(0u, 72145u, 0u, 4294967295u, 1u, 1u, 0u, 1u, 4294967295u, 13389u, 0u, 4294967295u, 28443u, 4294967295u, 0u, 35951u, 2726u, 73676u, 0u, 4294967295u, 4294967295u, 1u);

var<private> global1: vec3<f32> = vec3<f32>(254f, -2770f, 1000f);

var<private> global2: array<bool, 2>;

var<private> global3: array<vec2<u32>, 11>;

var<private> global4: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(arg_0.x + 122f), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1473f));
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0 - vec2<f32>(global1.x, -248f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 * vec2<f32>(arg_0.x, 700f)), vec2<f32>(global1.x, global1.x)))), arg_0));
    global1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-189f)) + _wgslsmith_f_op_f32(f32(-1f) * -1741f)), var_0.x)))));
    global0 = array<u32, 22>();
    let var_1 = Struct_1(vec4<bool>(any(!select(vec2<bool>(true, false), vec2<bool>(true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8723u, 22u)], 22u)], 22u)], 2u)]), vec2<bool>(false, true))), global2[_wgslsmith_index_u32(select(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(49994u, 11u)], global3[_wgslsmith_index_u32(8406u, 11u)]), 22u)]), global0[_wgslsmith_index_u32(4294967295u, 22u)] & global0[_wgslsmith_index_u32(firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18125u, 22u)], 22u)]), 22u)], _wgslsmith_f_op_f32(arg_0.x * 920f) > var_0.x), 2u)], false, all(!global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(71278u, 22u)], 30118u, global0[_wgslsmith_index_u32(75439u, 22u)], global0[_wgslsmith_index_u32(22515u, 22u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(0u, 22u)], 0u)), 22u)], 22u)])), !(all(!vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34778u, 22u)], 22u)], 2u)], true, false, false)) && global2[_wgslsmith_index_u32(1u, 2u)]), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(29633u, global0[_wgslsmith_index_u32(~4294967295u, 22u)]), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(64727u, 22u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 22u)], 22u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3364u, 22u)], 22u)], 22u)], 22u)], 1u, global0[_wgslsmith_index_u32(724u, 22u)], 4294967295u) | vec4<u32>(4950u, global0[_wgslsmith_index_u32(2814u, 22u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(58951u, 22u)], 22u)], 22u)], 87756u)), 22u)], _wgslsmith_dot_vec3_u32(~vec3<u32>(2082u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 22u)], 22u)]), ~vec3<u32>(global0[_wgslsmith_index_u32(0u, 22u)], 1u, 26183u))), 22u)], 22u)]), 22u)], global2[_wgslsmith_index_u32(56420u, 2u)], 1321f);
    return countOneBits(~(~(reverseBits(var_1.c) << ((var_1.c << (var_1.c % 32u)) % 32u))));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_4, arg_3: vec2<u32>) -> bool {
    let var_0 = max(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, i32(-1i) * -2147483647i), vec2<i32>(-1i, u_input.d.x)), ~arg_0.x ^ arg_2.c.x), arg_2.c.x);
    var var_1 = countOneBits(~(~abs(vec4<u32>(0u, 0u, 0u, 4294967295u))));
    global3 = array<vec2<u32>, 11>();
    let var_2 = ~vec4<u32>(52012u, 1u & arg_2.d.x, global0[_wgslsmith_index_u32(arg_3.x, 22u)], arg_2.b.b.c);
    global1 = _wgslsmith_f_op_vec3_f32(-arg_2.b.a);
    return false;
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: f32) -> Struct_2 {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_2)), global1.x, arg_2);
    let var_0 = global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(arg_1.x ^ 4294967295u, 22u)], 2u)] && (!global2[_wgslsmith_index_u32(select(func_2(global1.zz), firstTrailingBit(arg_0), select(global2[_wgslsmith_index_u32(1u, 2u)], true, global2[_wgslsmith_index_u32(arg_0, 2u)])), 2u)] || func_3(~vec4<i32>(-7652i, 2147483647i, 1i, -2147483647i), _wgslsmith_f_op_f32(-arg_2), Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 473f, arg_2, -281f) * vec4<f32>(arg_2, 1173f, global1.x, arg_2)), Struct_2(vec3<f32>(global1.x, arg_2, arg_2), Struct_1(vec4<bool>(false, false, global2[_wgslsmith_index_u32(13544u, 2u)], global2[_wgslsmith_index_u32(arg_0, 2u)]), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 22u)], 2u)], arg_1.x, global2[_wgslsmith_index_u32(arg_0, 2u)], arg_2)), -vec3<i32>(u_input.e, u_input.e, u_input.e), ~arg_1.ww), ~vec2<u32>(16384u, 1u)));
    var var_1 = select(select(vec2<bool>(1u > _wgslsmith_clamp_u32(124706u, global0[_wgslsmith_index_u32(4294967295u, 22u)], arg_0), true), vec2<bool>(any(global4[_wgslsmith_index_u32(firstTrailingBit(0u), 22u)]), global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(~arg_0, 22u)], 2u)]), func_3(firstTrailingBit(vec4<i32>(-2147483647i, 31055i, -2147483647i, u_input.c)) >> (arg_1 % vec4<u32>(32u)), _wgslsmith_f_op_f32(floor(464f)), Struct_4(vec4<f32>(-2845f, 1745f, arg_2, global1.x), Struct_2(vec3<f32>(global1.x, arg_2, arg_2), Struct_1(vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 22u)], 2u)], false, var_0, var_0), global2[_wgslsmith_index_u32(6042u, 2u)], 0u, false, 828f)), vec3<i32>(1i, u_input.e, -12481i) >> (vec3<u32>(global0[_wgslsmith_index_u32(arg_0, 22u)], 20531u, arg_1.x) % vec3<u32>(32u)), global3[_wgslsmith_index_u32(~arg_0, 11u)]), ~(arg_1.zy & vec2<u32>(arg_0, arg_1.x)))), vec2<bool>(false, global2[_wgslsmith_index_u32(8565u, 2u)]), var_0);
    global4 = array<vec3<bool>, 22>();
    global2 = array<bool, 2>();
    return Struct_2(vec3<f32>(arg_2, global1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1506f * global1.x)), -2262f))), Struct_1(vec4<bool>(false, _wgslsmith_f_op_f32(trunc(-178f)) > _wgslsmith_f_op_f32(f32(-1f) * -180f), true, var_1.x), all(vec4<bool>(var_1.x || var_1.x, true, var_1.x, var_0 & false)), 35426u, func_3(firstLeadingBit(vec4<i32>(u_input.a, 0i, 1860i, u_input.c)), arg_2, Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1.x, global1.x, -1589f)), Struct_2(vec3<f32>(1332f, global1.x, arg_2), Struct_1(vec4<bool>(true, true, global2[_wgslsmith_index_u32(914u, 2u)], global2[_wgslsmith_index_u32(arg_1.x, 2u)]), global2[_wgslsmith_index_u32(23047u, 2u)], 4294967295u, false, 442f)), vec3<i32>(u_input.b, u_input.d.x, u_input.c), global3[_wgslsmith_index_u32(firstTrailingBit(arg_0), 11u)]), ~global3[_wgslsmith_index_u32(arg_0, 11u)] << (_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 22u)]), vec2<u32>(arg_0, 16605u), vec2<u32>(arg_1.x, 75240u)) % vec2<u32>(32u))), arg_2));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_3) -> Struct_2 {
    global1 = arg_0.a.xyz;
    global3 = array<vec2<u32>, 11>();
    var var_0 = select(func_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(arg_0.d.x, 22u)]), vec2<u32>(0u, global0[_wgslsmith_index_u32(0u, 22u)])), vec2<u32>(1u, _wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(arg_0.d.x, 22u)]))), vec4<u32>(~arg_0.b.b.c, global0[_wgslsmith_index_u32(arg_0.d.x, 22u)], 54012u, 1u) >> (_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.d.x, 22u)], 22u)], 15823u, 4294967295u, 1u), vec4<u32>(5353u, global0[_wgslsmith_index_u32(arg_0.b.b.c, 22u)], 0u, 50702u)), ~vec4<u32>(arg_0.b.b.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.d.x, 22u)], 22u)], global0[_wgslsmith_index_u32(30352u, 22u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.b.b.c, 22u)], 22u)], 22u)])) % vec4<u32>(32u)), 1212f).b.a.zxy, vec3<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_0.a.x, global1.x)))) == -260f, false, !global2[_wgslsmith_index_u32(arg_0.d.x, 2u)]), !(!(func_1(global0[_wgslsmith_index_u32(0u, 22u)], vec4<u32>(25884u, 0u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34778u, 22u)], 22u)]), -1175f).b.b | global2[_wgslsmith_index_u32(max(0u, arg_0.d.x), 2u)])));
    let var_1 = Struct_1(vec4<bool>(true, arg_0.b.b.b, any(!vec3<bool>(true, arg_0.b.b.b, false)), !((1u >> (arg_0.d.x % 32u)) == ~1u)), true, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(37337u, 22u)], 26839u), global0[_wgslsmith_index_u32(~(~arg_0.b.b.c), 22u)] < ~7832u, arg_1.x);
    var var_2 = var_1;
    return Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.e) - -1504f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x))), var_1.e)), Struct_1(vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(var_2.c, 22u)], 4294967295u), 2u)], func_3(vec4<i32>(47887i, arg_3.a, u_input.c, 39757i) & vec4<i32>(arg_3.a, -19398i, -2147483647i, 28761i), _wgslsmith_f_op_f32(arg_2 + -1135f), arg_0, ~global3[_wgslsmith_index_u32(51572u, 11u)]), (-1497i == arg_3.a) == var_1.b, _wgslsmith_div_i32(u_input.a, -1i) != _wgslsmith_sub_i32(1i, -28396i)), !var_1.b, var_2.c, 456f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(f32(-1f) * -137f)), global1.x));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_4, arg_3: bool) -> Struct_2 {
    global3 = array<vec2<u32>, 11>();
    let var_0 = select(!vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, true, ((1741i < u_input.a) & !arg_1.b.a.x) & !any(arg_1.b.a.xyx)), select(select(arg_2.b.b.a.xzw, !arg_2.b.b.a.xwx, vec3<bool>(all(arg_1.b.a), arg_1.b.b, !arg_2.b.b.d)), func_4(Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-247f, 358f, arg_1.a.x, -1000f)), Struct_2(vec3<f32>(arg_1.b.e, 1000f, global1.x), arg_1.b), vec3<i32>(arg_2.c.x, arg_2.c.x, u_input.e) & vec3<i32>(19430i, 17596i, -2147483647i), ~vec2<u32>(arg_2.b.b.c, 1u)), vec3<f32>(arg_1.b.e, _wgslsmith_f_op_f32(-global1.x), 1000f), _wgslsmith_f_op_f32(global1.x + -845f), Struct_3(0i ^ u_input.a, _wgslsmith_div_f32(-141f, -1036f))).b.a.yzx, !(true & global2[_wgslsmith_index_u32(14956u, 2u)])));
    var var_1 = !(!(u_input.e > 2650i));
    global2 = array<bool, 2>();
    global4 = array<vec3<bool>, 22>();
    return arg_1;
}

fn func_6(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    global0 = array<u32, 22>();
    global4 = array<vec3<bool>, 22>();
    global0 = array<u32, 22>();
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, arg_1.b.e, 649f, 654f)) + vec4<f32>(-1728f, global1.x, -1556f, global1.x))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b.e), _wgslsmith_f_op_f32(max(arg_1.a.x, 2480f)), arg_1.b.e, _wgslsmith_f_op_f32(570f + -1472f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 116f, 1059f, global1.x)))))), func_5(func_3(countOneBits(countOneBits(vec4<i32>(-4789i, u_input.b, arg_0, arg_0))), 123f, Struct_4(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-309f, global1.x, arg_1.b.e, global1.x))), func_5(true, arg_1, Struct_4(vec4<f32>(741f, -434f, arg_1.a.x, 1304f), Struct_2(arg_1.a, arg_1.b), vec3<i32>(arg_0, 43749i, u_input.a), global3[_wgslsmith_index_u32(arg_1.b.c, 11u)]), arg_1.b.b), vec3<i32>(2147483647i, 0i, arg_0), ~global3[_wgslsmith_index_u32(1u, 11u)]), select(_wgslsmith_sub_vec2_u32(global3[_wgslsmith_index_u32(57366u, 11u)], global3[_wgslsmith_index_u32(9899u, 11u)]), _wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(61961u, 22u)], global0[_wgslsmith_index_u32(47620u, 22u)]), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45110u, 22u)], 22u)])), false == global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 22u)], 2u)])), arg_1, Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, global1.x, global1.x, 731f)))), arg_1, select(u_input.d, vec3<i32>(u_input.a, arg_0, arg_0), !global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.b.c, 22u)], 22u)]), global3[_wgslsmith_index_u32(~(~0u), 11u)]), global2[_wgslsmith_index_u32(1u & (arg_1.b.c ^ 0u), 2u)]), reverseBits(max(max(~vec3<i32>(arg_0, arg_0, arg_0), u_input.d), abs(u_input.d))), vec2<u32>(51894u, abs(1u)));
    var var_1 = -firstLeadingBit(~vec2<i32>(arg_0, 0i));
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, func_4(Struct_4(vec4<f32>(-794f, arg_1.b.e, arg_1.b.e, -2432f), var_0.b, u_input.d, vec2<u32>(arg_1.b.c, 10333u)), vec3<f32>(global1.x, 1725f, -1425f), arg_1.a.x, Struct_3(1i, -456f)).b.e, func_5(false, Struct_2(var_0.b.a, var_0.b.b), Struct_4(vec4<f32>(500f, var_0.b.b.e, 1000f, var_0.b.b.e), var_0.b, u_input.d, var_0.d), arg_1.b.d).b.e))) - _wgslsmith_div_vec3_f32(arg_1.a, arg_1.a)), var_0.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6((_wgslsmith_mult_i32(u_input.c, 0i) ^ ~u_input.e) >> (abs(~(~58426u)) % 32u), func_5(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33350u, 22u)], 2u)], func_4(Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 1385f, global1.x)), func_1(global0[_wgslsmith_index_u32(32220u, 22u)], vec4<u32>(4294967295u, 1u, global0[_wgslsmith_index_u32(68919u, 22u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19362u, 22u)], 22u)], 22u)], 22u)], 22u)]), global1.x), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -1i, u_input.b), u_input.d), global3[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(0u, 22u)], 11u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(435f, global1.x, 837f) - _wgslsmith_div_vec3_f32(vec3<f32>(1183f, 2192f, -1000f), vec3<f32>(1166f, global1.x, global1.x))), 1242f, Struct_3(u_input.b, _wgslsmith_f_op_f32(global1.x * global1.x))), Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x, _wgslsmith_f_op_f32(trunc(global1.x)), -1322f), Struct_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-758f, global1.x, global1.x))), Struct_1(vec4<bool>(true, true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 22u)], 22u)], 22u)], 22u)], 22u)], 2u)], global2[_wgslsmith_index_u32(68998u, 2u)]), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(92990u, 22u)], 22u)], 2u)], 22222u, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 22u)], 2u)], global1.x)), u_input.d, vec2<u32>(~4294967295u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 22u)], 22u)])), global2[_wgslsmith_index_u32(59912u, 2u)] | global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(61892u, 22u)], 2u)]));
    let var_1 = reverseBits(-vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.e, u_input.e), ~14937i, 1i), _wgslsmith_dot_vec2_i32(abs(u_input.d.xx), reverseBits(vec2<i32>(20813i, -26399i))), u_input.e, firstLeadingBit(~u_input.d.x)));
    let var_2 = var_0.b;
    global0 = array<u32, 22>();
    global4 = array<vec3<bool>, 22>();
    global0 = array<u32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.yzw, var_1.x);
}

