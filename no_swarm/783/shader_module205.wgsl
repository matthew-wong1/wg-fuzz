struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<i32>,
    c: vec4<i32>,
    d: Struct_4,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

var<private> global1: array<i32, 20> = array<i32, 20>(3175i, 19306i, 0i, 1i, 1i, i32(-2147483648), -39692i, -42308i, -7332i, 12990i, -1i, -26385i, 12275i, -5119i, 2147483647i, 2147483647i, 21259i, 9951i, 49438i, -33350i);

var<private> global2: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(vec2<u32>(36715u, 17382u)), Struct_2(vec2<u32>(10085u, 16707u)), Struct_2(vec2<u32>(72318u, 13250u)), Struct_2(vec2<u32>(0u, 22738u)), Struct_2(vec2<u32>(1u, 0u)), Struct_2(vec2<u32>(4294967295u, 706u)), Struct_2(vec2<u32>(0u, 1u)), Struct_2(vec2<u32>(1u, 43937u)), Struct_2(vec2<u32>(7297u, 4294967295u)), Struct_2(vec2<u32>(4294967295u, 0u)), Struct_2(vec2<u32>(39796u, 0u)), Struct_2(vec2<u32>(31013u, 81837u)), Struct_2(vec2<u32>(0u, 19544u)), Struct_2(vec2<u32>(0u, 4294967295u)), Struct_2(vec2<u32>(44012u, 2725u)), Struct_2(vec2<u32>(45017u, 1u)), Struct_2(vec2<u32>(1u, 1u)), Struct_2(vec2<u32>(0u, 4294967295u)), Struct_2(vec2<u32>(51626u, 1u)), Struct_2(vec2<u32>(44193u, 4294967295u)), Struct_2(vec2<u32>(0u, 18087u)), Struct_2(vec2<u32>(54203u, 4294967295u)), Struct_2(vec2<u32>(4294967295u, 10217u)));

var<private> global3: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(1i, -5327i, -2862i, 1i), vec4<i32>(2147483647i, -28383i, -2487i, 1i), vec4<i32>(-1i, -8936i, -18720i, 2147483647i), vec4<i32>(29077i, -31738i, 1i, 17704i), vec4<i32>(1016i, -53413i, 2147483647i, 0i), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), -7629i), vec4<i32>(14753i, i32(-2147483648), 1i, -3915i), vec4<i32>(1i, i32(-2147483648), 39239i, 2304i), vec4<i32>(-1i, -38485i, -1i, -35634i), vec4<i32>(i32(-2147483648), 0i, -1i, 0i), vec4<i32>(2147483647i, 0i, 1i, 8039i), vec4<i32>(i32(-2147483648), 12977i, i32(-2147483648), 1i), vec4<i32>(0i, -5985i, 0i, 10085i), vec4<i32>(3183i, -49374i, -5056i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 1i, 39946i, 2147483647i), vec4<i32>(-1i, 2147483647i, 0i, 0i), vec4<i32>(2147483647i, i32(-2147483648), -14141i, 1i), vec4<i32>(0i, 1i, -8561i, 17556i), vec4<i32>(1i, -11904i, 44915i, 15591i), vec4<i32>(24528i, -1i, 2147483647i, -1i), vec4<i32>(52194i, 29024i, -1i, 6204i), vec4<i32>(45880i, -1i, 0i, -4225i), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec4<i32>(-1i, -1i, -9796i, 36328i), vec4<i32>(i32(-2147483648), 0i, 2147483647i, -20547i), vec4<i32>(2147483647i, -14493i, 1i, 47153i), vec4<i32>(-1i, -9726i, 2147483647i, -1i), vec4<i32>(-10932i, -1i, i32(-2147483648), 2147483647i), vec4<i32>(-36020i, -1i, -1i, -45038i), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 2147483647i));

var<private> global4: vec4<f32> = vec4<f32>(-285f, -1134f, -957f, -1072f);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<f32>) -> vec2<u32> {
    let var_0 = ~vec2<i32>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(u_input.b ^ 61439u), 4294967295u), 20u)], 591i);
    global0 = array<f32, 22>();
    global2 = array<Struct_2, 23>();
    global3 = array<vec4<i32>, 30>();
    var var_1 = -_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, ~reverseBits(-20937i), countOneBits(16861i)), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(min(vec3<i32>(2147483647i, var_0.x, global1[_wgslsmith_index_u32(1u, 20u)]), vec3<i32>(0i, -14107i, -14063i)), reverseBits(vec3<i32>(1i, arg_0, arg_0))), firstTrailingBit(vec3<i32>(var_0.x, 13814i, -13619i)) ^ _wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, global1[_wgslsmith_index_u32(66214u, 20u)], 0i), vec3<i32>(2147483647i, arg_0, 925i))));
    return arg_2.b.a;
}

fn func_2(arg_0: Struct_3) -> Struct_4 {
    let var_0 = vec4<bool>(792f == global0[_wgslsmith_index_u32(0u, 22u)], true, true, arg_0.a.x);
    let var_1 = !(!(!var_0));
    var var_2 = Struct_2(~(~(func_3(2147483647i, arg_0, arg_0, vec4<f32>(global4.x, global0[_wgslsmith_index_u32(arg_0.b.a.x, 22u)], -957f, global4.x)) >> (_wgslsmith_clamp_vec2_u32(arg_0.b.a, vec2<u32>(arg_0.b.a.x, arg_0.b.a.x), arg_0.b.a) % vec2<u32>(32u)))));
    global3 = array<vec4<i32>, 30>();
    global3 = array<vec4<i32>, 30>();
    return Struct_4(!all(var_1), Struct_3(vec3<bool>(true, any(vec3<bool>(var_0.x, false, var_0.x)), all(vec2<bool>(true, true))), Struct_2(vec2<u32>(~23167u, arg_0.b.a.x)), select(vec3<bool>(var_1.x, any(var_0.wy), true), select(arg_0.c, select(var_1.zxx, vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_0.x, var_1.x, true)), select(var_1.wxy, vec3<bool>(var_0.x, var_1.x, var_0.x), false)), true)));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_4) -> Struct_3 {
    var var_0 = global2[_wgslsmith_index_u32(4294967295u, 23u)];
    var var_1 = min(4294967295u, ~(_wgslsmith_dot_vec3_u32(vec3<u32>(65870u, u_input.a, 1u), ~vec3<u32>(arg_2.b.b.a.x, 0u, 57681u)) >> (16228u % 32u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-119f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x + global4.x))), 955f, global4.x, global4.x));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-329f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-243f)))))));
    var var_4 = firstTrailingBit(countOneBits(select(~(~vec3<u32>(arg_2.b.b.a.x, 12171u, 0u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.b.b.a.x, 0u, arg_2.b.b.a.x), vec3<u32>(1u, arg_2.b.b.a.x, var_0.a.x), vec3<u32>(arg_2.b.b.a.x, var_0.a.x, 14348u)), vec3<bool>(!arg_2.b.a.x, all(arg_0.wz), all(vec4<bool>(arg_0.x, true, true, true))))));
    return arg_2.b;
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: Struct_4) -> f32 {
    return global0[_wgslsmith_index_u32(arg_0.b.a.x, 22u)];
}

fn func_1() -> Struct_1 {
    global3 = array<vec4<i32>, 30>();
    global4 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstTrailingBit(~u_input.b), 22u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-289f * 1039f), 124f)) * global4.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_4(vec4<bool>(false, false, true, true), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.b, 22u)], -566f, true)), func_2(Struct_3(vec3<bool>(false, true, true), Struct_2(vec2<u32>(u_input.a, u_input.a)), vec3<bool>(false, true, false)))), global0[_wgslsmith_index_u32(~abs(1u), 22u)], func_2(func_4(vec4<bool>(true, true, true, true), -236f, Struct_4(false, Struct_3(vec3<bool>(false, true, true), Struct_2(vec2<u32>(4294967295u, u_input.a)), vec3<bool>(false, true, false))))))) * global0[_wgslsmith_index_u32(u_input.b, 22u)]), _wgslsmith_f_op_f32(ceil(-863f)), _wgslsmith_f_op_f32(f32(-1f) * -150f));
    global2 = array<Struct_2, 23>();
    var var_0 = global4.wzx;
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global0[_wgslsmith_index_u32(u_input.b, 22u)], -1000f, 321f)), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 22u)]), _wgslsmith_f_op_f32(-var_0.x), var_0.x), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 22u)] + -1000f) <= _wgslsmith_f_op_f32(492f - 865f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global4.x, var_0.x, 1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1097f, global0[_wgslsmith_index_u32(u_input.b, 22u)], global0[_wgslsmith_index_u32(23121u, 22u)], -525f))))));
    return Struct_1(select(false, _wgslsmith_f_op_f32(-309f * 1464f) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * global4.x), _wgslsmith_f_op_f32(ceil(global4.x)))), false), vec4<f32>(global4.x, var_0.x, _wgslsmith_f_op_f32(select(global4.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 22u)] * -1841f))), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(193f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-681f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 22u)] - 1128f) + _wgslsmith_f_op_f32(-1602f - var_0.x)), -430f)), reverseBits(~vec3<u32>(1u, _wgslsmith_mult_u32(u_input.a, u_input.b), _wgslsmith_sub_u32(u_input.a, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_3(vec3<bool>(true, false, true), Struct_2(var_0.d.yx), !select(vec3<bool>(true, 307f == global4.x, all(vec2<bool>(false, true))), vec3<bool>(true, true, true), abs(u_input.a) >= firstLeadingBit(var_0.d.x)));
    let var_2 = ~(~(~var_0.d.x));
    let var_3 = vec2<i32>(-11280i >> (_wgslsmith_div_u32(_wgslsmith_mod_u32(var_1.b.a.x, var_0.d.x), ~var_2) % 32u), reverseBits(-global1[_wgslsmith_index_u32(var_0.d.x, 20u)])) << (~vec2<u32>(_wgslsmith_mult_u32(var_2 ^ 18240u, u_input.a), func_4(!vec4<bool>(var_0.a, true, true, false), -1533f, func_2(Struct_3(var_1.c, Struct_2(var_0.d.xy), var_1.c))).b.a.x) % vec2<u32>(32u));
    var var_4 = Struct_4(false, func_4(vec4<bool>(var_0.a, select(true, func_1().a, all(vec4<bool>(false, var_0.a, var_0.a, var_0.a))), _wgslsmith_f_op_f32(-1000f - global4.x) >= _wgslsmith_f_op_f32(f32(-1f) * -1224f), var_1.a.x), _wgslsmith_f_op_f32(1438f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global4.x)) + -564f)), Struct_4(var_0.a, func_4(vec4<bool>(false, var_0.a, true, var_0.a), 614f, func_2(Struct_3(var_1.a, Struct_2(var_1.b.a), vec3<bool>(var_1.c.x, true, true)))))));
    var var_5 = Struct_3(!vec3<bool>(true, any(vec3<bool>(var_0.a, var_4.a, var_1.c.x)), any(vec3<bool>(var_4.b.a.x, var_0.a, false))), func_2(var_4.b).b.b, var_1.a);
    let var_6 = global0[_wgslsmith_index_u32(~(~(1u >> (u_input.a % 32u))), 22u)] < _wgslsmith_f_op_f32(-1000f + global0[_wgslsmith_index_u32(func_3(-global1[_wgslsmith_index_u32(var_2, 20u)] << (~68165u % 32u), var_4.b, Struct_3(vec3<bool>(true, var_5.a.x, var_5.a.x), func_4(vec4<bool>(true, true, false, var_4.b.a.x), global0[_wgslsmith_index_u32(52116u, 22u)], Struct_4(var_5.a.x, var_1)).b, vec3<bool>(var_4.b.a.x, true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, var_0.c.x, global0[_wgslsmith_index_u32(var_1.b.a.x, 22u)], global0[_wgslsmith_index_u32(1u, 22u)])) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-938f, global0[_wgslsmith_index_u32(var_2, 22u)], global4.x, -905f)))).x, 22u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-global4.xy), -abs(~(-global1[_wgslsmith_index_u32(u_input.a, 20u)])), vec4<u32>(func_1().d.x, 1u, 45484u, _wgslsmith_mult_u32(1u, firstTrailingBit(var_0.d.x)) >> (func_3(-1i, func_4(vec4<bool>(false, true, var_1.a.x, var_5.a.x), global4.x, Struct_4(false, var_1)), Struct_3(vec3<bool>(var_1.c.x, true, false), var_5.b, vec3<bool>(var_6, var_0.a, true)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-723f, global4.x, global4.x, 712f)))).x % 32u)), _wgslsmith_div_vec2_f32(vec2<f32>(-701f, -925f), func_1().c.zx), vec4<i32>(var_3.x, global1[_wgslsmith_index_u32(firstTrailingBit(~firstLeadingBit(1u)), 20u)], 2147483647i, -var_3.x));
}

