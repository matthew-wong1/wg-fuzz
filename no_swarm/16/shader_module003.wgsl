struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<i32>,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_3,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global1: array<vec3<bool>, 2>;

var<private> global2: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(Struct_1(-35177i, vec3<bool>(false, true, false), vec3<i32>(-1i, -36968i, -4801i), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec2<i32>(5257i, 2147483647i), Struct_1(0i, vec3<bool>(true, false, true), vec3<i32>(16757i, 1i, -58440i), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), false, 0i), Struct_3(Struct_1(33974i, vec3<bool>(false, false, true), vec3<i32>(9321i, -35060i, 2147483647i), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec2<i32>(1i, 2147483647i), Struct_1(2147483647i, vec3<bool>(false, false, false), vec3<i32>(-32901i, 25969i, 2147483647i), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), true, 2147483647i), Struct_3(Struct_1(-6046i, vec3<bool>(false, true, false), vec3<i32>(12471i, 2147483647i, -52304i), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec2<i32>(5519i, 0i), Struct_1(2147483647i, vec3<bool>(false, true, true), vec3<i32>(2147483647i, -27190i, -51004i), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), false, 19341i), Struct_3(Struct_1(14578i, vec3<bool>(false, false, false), vec3<i32>(16972i, -22921i, 5855i), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec2<i32>(-18817i, 17956i), Struct_1(i32(-2147483648), vec3<bool>(true, true, false), vec3<i32>(-27940i, 1i, -1i), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), true, 1i), Struct_3(Struct_1(i32(-2147483648), vec3<bool>(false, false, false), vec3<i32>(-13831i, 24172i, 24507i), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec2<i32>(-1i, 0i), Struct_1(1i, vec3<bool>(true, true, false), vec3<i32>(-46723i, 37868i, 2147483647i), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), true, 0i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: i32) -> vec3<bool> {
    global1 = array<vec3<bool>, 2>();
    global0 = select(!vec4<bool>(all(select(vec4<bool>(false, arg_0, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, global0.x, true, true))), select(true, true, arg_0), any(select(vec4<bool>(true, true, arg_0, global0.x), vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(global0.x, true, arg_0, true))), true), vec4<bool>(any(select(!global1[_wgslsmith_index_u32(u_input.a.x, 2u)], global0.zwz, !vec3<bool>(arg_0, arg_0, arg_0))), select(false, true, arg_0), all(!select(vec4<bool>(true, arg_0, global0.x, global0.x), vec4<bool>(false, false, arg_0, global0.x), arg_0)), !(arg_0 || any(vec3<bool>(false, true, true)))), true);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-544f)));
    var var_1 = !(!(false && arg_0));
    var var_2 = ~abs(~arg_1);
    return global1[_wgslsmith_index_u32(countOneBits(3424u), 2u)];
}

fn func_2() -> Struct_1 {
    global1 = array<vec3<bool>, 2>();
    let var_0 = u_input.a.x;
    var var_1 = ~var_0;
    let var_2 = _wgslsmith_add_u32(var_0, 1u);
    var var_3 = 59351u;
    return Struct_1(u_input.b, vec3<bool>(var_2 > var_2, u_input.b <= u_input.b, !(max(1292u, var_0) > (u_input.a.x | var_0))), -(vec3<i32>(u_input.b, u_input.b, 1i | u_input.b) << (vec3<u32>(0u, ~1u, ~u_input.a.x) % vec3<u32>(32u))), select(vec3<bool>(true, global0.x, false), vec3<bool>(select(false || global0.x, true, true), global0.x, !(!global0.x)), !func_3(true, 59187i)), global0.yzz);
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: Struct_2, arg_3: Struct_4) -> Struct_1 {
    var var_0 = arg_1.d;
    var var_1 = vec3<i32>(reverseBits(arg_2.a.a >> (4294967295u % 32u)), firstTrailingBit(~(-(arg_1.d.a.a | arg_1.d.a.c.x))), ~arg_0);
    let var_2 = abs(var_0.b);
    global2 = array<Struct_3, 5>();
    let var_3 = vec2<bool>(all(!arg_1.d.c.e.yx), !all(vec3<bool>(true, true, func_3(var_0.c.b.x, 53216i).x)));
    return Struct_1(-arg_1.c.a, !vec3<bool>(var_0.d, true, any(global0.xy)), _wgslsmith_mult_vec3_i32(arg_1.a.c, vec3<i32>(_wgslsmith_dot_vec4_i32(arg_2.c, vec4<i32>(arg_3.c.a, 1i, arg_3.c.a, var_1.x)) & _wgslsmith_clamp_i32(arg_0, 2147483647i, u_input.b), ~5042i, -3194i)), func_3(func_2().d.x, ~(-(~(-46054i)))), select(arg_3.e.yyz, !(!arg_3.e.xyy), arg_2.b));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = !vec3<bool>(any(!global0.xzy), global0.x, !global0.x);
    global1 = array<vec3<bool>, 2>();
    var var_1 = vec3<i32>(abs(-u_input.b), -arg_0.x >> (u_input.a.x % 32u), arg_0.x) | ~(~(-vec3<i32>(arg_0.x, 15858i, u_input.b)));
    let var_2 = true == var_0.x;
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-614f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + 535f)))))))));
    return func_4(~_wgslsmith_dot_vec4_i32(abs(-vec4<i32>(-2147483647i, arg_0.x, 5818i, 0i)), _wgslsmith_div_vec4_i32(-vec4<i32>(-2147483647i, arg_0.x, u_input.b, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, 12544i, u_input.b))), Struct_4(func_2(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1817f, -1052f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_3, var_3), vec2<f32>(-913f, var_3)))))), func_2(), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~u_input.a, ~firstLeadingBit(vec4<u32>(1u, 0u, 0u, 22991u))), 5u)], !vec4<bool>(true, any(vec4<bool>(false, false, false, global0.x)), var_0.x, false)), Struct_2(func_2(), !var_0.x, vec4<i32>(func_2().c.x, reverseBits(firstLeadingBit(var_1.x)), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-21445i, -11088i)), arg_0), -arg_0.x), var_3, -reverseBits(-21502i >> (u_input.a.x % 32u))), Struct_4(func_2(), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_3 - var_3), _wgslsmith_f_op_f32(-var_3)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1063f, var_3) - vec2<f32>(114f, var_3)), vec2<f32>(349f, 689f), func_3(global0.x, 11177i).xy))), func_2(), Struct_3(Struct_1(u_input.b, vec3<bool>(global0.x, var_0.x, true), -vec3<i32>(6854i, 35440i, 10185i), func_2().b, global1[_wgslsmith_index_u32(20560u, 2u)]), vec2<i32>(abs(-2802i), ~4101i), Struct_1(40669i, vec3<bool>(var_2, global0.x, var_2), vec3<i32>(var_1.x, -13842i, -1i), select(vec3<bool>(true, true, global0.x), global1[_wgslsmith_index_u32(u_input.a.x, 2u)], global0.x), select(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], vec3<bool>(true, true, var_2), true)), func_3(true, ~arg_0.x).x, firstLeadingBit(u_input.b)), vec4<bool>(func_2().b.x, !var_2, !global0.x, true)));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    global0 = vec4<bool>(func_3(true, -arg_0.e).x, func_1(arg_0.a.c.yy).b.x, true, true);
    global2 = array<Struct_3, 5>();
    global0 = !(!(!vec4<bool>(arg_0.b, any(vec2<bool>(arg_0.a.b.x, false)), true, !global0.x)));
    global1 = array<vec3<bool>, 2>();
    global0 = vec4<bool>(func_3(arg_0.b, -2147483647i).x, !global0.x, firstTrailingBit((0u & u_input.a.x) & _wgslsmith_dot_vec3_u32(u_input.a.wxx, u_input.a.xwx)) <= max(min(89989u, 1u), ~_wgslsmith_div_u32(u_input.a.x, 1u)), any(func_4((u_input.b & u_input.b) | 1i, Struct_4(func_2(), vec2<f32>(arg_0.d, -2470f), arg_0.a, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 5u)], select(vec4<bool>(arg_0.a.b.x, arg_0.a.e.x, arg_0.a.e.x, false), vec4<bool>(global0.x, false, false, arg_0.b), true)), arg_0, Struct_4(func_1(vec2<i32>(arg_0.e, -2147483647i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d, arg_0.d)), func_4(arg_0.a.c.x, Struct_4(Struct_1(u_input.b, vec3<bool>(arg_0.b, false, global0.x), vec3<i32>(0i, 2147483647i, 20122i), arg_0.a.e, vec3<bool>(false, arg_0.b, global0.x)), vec2<f32>(731f, -223f), arg_0.a, Struct_3(Struct_1(-2147483647i, global0.wzz, vec3<i32>(33714i, u_input.b, arg_0.e), vec3<bool>(global0.x, arg_0.b, true), vec3<bool>(arg_0.a.e.x, arg_0.a.e.x, global0.x)), arg_0.c.yy, arg_0.a, global0.x, arg_0.c.x), vec4<bool>(arg_0.b, false, true, arg_0.b)), arg_0, Struct_4(arg_0.a, vec2<f32>(arg_0.d, arg_0.d), arg_0.a, global2[_wgslsmith_index_u32(u_input.a.x, 5u)], vec4<bool>(arg_0.a.b.x, arg_0.a.d.x, false, global0.x))), Struct_3(Struct_1(2147483647i, arg_0.a.d, arg_0.c.wwy, vec3<bool>(true, global0.x, false), global1[_wgslsmith_index_u32(u_input.a.x, 2u)]), vec2<i32>(73474i, -1i), arg_0.a, global0.x, -2147483647i), select(vec4<bool>(false, arg_0.a.d.x, global0.x, true), vec4<bool>(false, global0.x, false, true), arg_0.a.d.x))).d));
    return Struct_1(-arg_0.c.x, !vec3<bool>(_wgslsmith_mod_u32(25031u, 4175u) <= _wgslsmith_clamp_u32(u_input.a.x, 1u, u_input.a.x), arg_0.b, func_3(arg_0.a.d.x || true, arg_0.e).x), arg_0.a.c, !arg_0.a.d, func_2().b);
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: Struct_4, arg_3: u32) -> i32 {
    global1 = array<vec3<bool>, 2>();
    var var_0 = arg_2.d;
    var_0 = arg_2.d;
    global0 = vec4<bool>(true, func_4(-var_0.c.c.x, arg_2, Struct_2(Struct_1(-28347i, !arg_1.b, abs(vec3<i32>(0i, 46216i, arg_2.c.a)), !vec3<bool>(var_0.a.b.x, false, global0.x), !arg_2.e.zyz), !arg_1.b.x & select(false, false, false), ~vec4<i32>(-17328i, -2147483647i, 12272i, -10415i), _wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(-arg_2.b.x)), -max(1i, -2147483647i)), Struct_4(Struct_1(_wgslsmith_div_i32(18472i, 12713i), global1[_wgslsmith_index_u32(u_input.a.x, 2u)], abs(var_0.a.c), vec3<bool>(arg_1.b.x, false, var_0.c.d.x), vec3<bool>(true, arg_1.e.x, global0.x)), vec2<f32>(arg_2.b.x, -638f), Struct_1(~2179i, vec3<bool>(false, arg_2.c.d.x, false), _wgslsmith_sub_vec3_i32(arg_1.c, vec3<i32>(arg_1.a, -2147483647i, 29692i)), select(vec3<bool>(true, arg_2.d.a.b.x, false), global1[_wgslsmith_index_u32(0u, 2u)], global0.zyy), !arg_2.e.yzx), Struct_3(func_2(), vec2<i32>(arg_1.a, -33352i), Struct_1(arg_2.c.a, vec3<bool>(true, false, false), arg_2.c.c, vec3<bool>(false, arg_2.d.a.b.x, false), vec3<bool>(false, arg_2.c.b.x, global0.x)), func_4(0i, arg_2, Struct_2(arg_2.c, false, vec4<i32>(-1i, var_0.e, 70903i, 2147483647i), arg_2.b.x, 1i), Struct_4(var_0.c, arg_2.b, Struct_1(1i, global1[_wgslsmith_index_u32(u_input.a.x, 2u)], vec3<i32>(-1i, arg_2.c.a, u_input.b), vec3<bool>(true, arg_2.c.b.x, global0.x), vec3<bool>(true, arg_1.d.x, var_0.c.d.x)), Struct_3(arg_2.a, vec2<i32>(2147483647i, 0i), var_0.c, false, 2147483647i), arg_2.e)).e.x, max(-60723i, arg_1.a)), vec4<bool>(false, true & global0.x, true, true))).e.x, true, true);
    let var_1 = global0.xw;
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, 0u), _wgslsmith_sub_u32(~(~u_input.a.x), u_input.a.x)), Struct_1(u_input.b, global0.ywz, _wgslsmith_div_vec3_i32(vec3<i32>(i32(-1i) * -1i, abs(2147483647i), ~u_input.b), vec3<i32>(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -2147483647i, u_input.b), vec3<i32>(u_input.b, -918i, u_input.b)), abs(-57469i))), vec3<bool>(global0.x, true, !global0.x), !global1[_wgslsmith_index_u32(0u, 2u)]), Struct_4(func_5(Struct_2(func_1(vec2<i32>(-1i, -30230i)), global0.x, vec4<i32>(1i, 2147483647i, -33015i, u_input.b), _wgslsmith_div_f32(-1019f, 166f), 10442i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-629f, -663f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(794f, -2005f)))), func_5(Struct_2(Struct_1(u_input.b, global1[_wgslsmith_index_u32(54066u, 2u)], vec3<i32>(u_input.b, -2439i, 0i), global1[_wgslsmith_index_u32(u_input.a.x, 2u)], vec3<bool>(true, global0.x, false)), global0.x, vec4<i32>(53834i, 2147483647i, 0i, 13876i), 459f, func_5(Struct_2(Struct_1(u_input.b, global1[_wgslsmith_index_u32(u_input.a.x, 2u)], vec3<i32>(u_input.b, u_input.b, u_input.b), global1[_wgslsmith_index_u32(u_input.a.x, 2u)], global1[_wgslsmith_index_u32(17021u, 2u)]), false, vec4<i32>(1i, u_input.b, -17367i, -1i), -895f, 15116i)).c.x)), Struct_3(func_4(u_input.b, Struct_4(Struct_1(2147483647i, vec3<bool>(false, true, true), vec3<i32>(u_input.b, -16074i, u_input.b), global0.xxz, global1[_wgslsmith_index_u32(u_input.a.x, 2u)]), vec2<f32>(1226f, 368f), Struct_1(-1i, vec3<bool>(true, global0.x, global0.x), vec3<i32>(1i, -2147483647i, 2147483647i), global0.wyx, global0.yyw), Struct_3(Struct_1(u_input.b, global1[_wgslsmith_index_u32(u_input.a.x, 2u)], vec3<i32>(-1i, 1i, u_input.b), vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, global0.x)), vec2<i32>(u_input.b, u_input.b), Struct_1(u_input.b, vec3<bool>(true, true, global0.x), vec3<i32>(u_input.b, -22189i, u_input.b), global1[_wgslsmith_index_u32(13586u, 2u)], global0.xxy), global0.x, u_input.b), vec4<bool>(true, global0.x, global0.x, false)), Struct_2(Struct_1(1i, vec3<bool>(global0.x, global0.x, global0.x), vec3<i32>(52925i, 47970i, u_input.b), vec3<bool>(global0.x, global0.x, false), global0.wwy), global0.x, vec4<i32>(u_input.b, -24013i, -2147483647i, 1i), 1318f, u_input.b), Struct_4(Struct_1(u_input.b, vec3<bool>(false, false, true), vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<bool>(true, global0.x, global0.x), global1[_wgslsmith_index_u32(u_input.a.x, 2u)]), vec2<f32>(1000f, 969f), Struct_1(794i, global1[_wgslsmith_index_u32(37815u, 2u)], vec3<i32>(-1i, 67592i, u_input.b), vec3<bool>(global0.x, false, false), global0.wxx), Struct_3(Struct_1(-3422i, vec3<bool>(global0.x, global0.x, global0.x), vec3<i32>(2147483647i, u_input.b, u_input.b), vec3<bool>(false, global0.x, false), global0.ywy), vec2<i32>(8906i, u_input.b), Struct_1(u_input.b, global1[_wgslsmith_index_u32(u_input.a.x, 2u)], vec3<i32>(u_input.b, 2147483647i, u_input.b), global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(0u, 2u)]), global0.x, -15644i), vec4<bool>(global0.x, false, true, false))), -func_4(-40325i, Struct_4(Struct_1(u_input.b, global0.wyz, vec3<i32>(-11266i, 31356i, 12945i), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, true, true)), vec2<f32>(142f, -478f), Struct_1(u_input.b, vec3<bool>(global0.x, global0.x, global0.x), vec3<i32>(u_input.b, u_input.b, -1i), vec3<bool>(true, true, global0.x), vec3<bool>(global0.x, true, global0.x)), Struct_3(Struct_1(29167i, vec3<bool>(true, global0.x, global0.x), vec3<i32>(u_input.b, -39281i, -20443i), global1[_wgslsmith_index_u32(u_input.a.x, 2u)], global1[_wgslsmith_index_u32(u_input.a.x, 2u)]), vec2<i32>(29900i, 28857i), Struct_1(u_input.b, vec3<bool>(true, true, false), vec3<i32>(u_input.b, -2147483647i, -12821i), global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(u_input.a.x, 2u)]), global0.x, 32251i), vec4<bool>(global0.x, false, true, true)), Struct_2(Struct_1(-1i, global1[_wgslsmith_index_u32(u_input.a.x, 2u)], vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false)), global0.x, vec4<i32>(u_input.b, u_input.b, -1i, u_input.b), -1349f, 2147483647i), Struct_4(Struct_1(u_input.b, global0.wxz, vec3<i32>(-95870i, -39516i, u_input.b), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, true)), vec2<f32>(-1887f, -1000f), Struct_1(2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 2u)], vec3<i32>(u_input.b, u_input.b, 0i), global0.zzx, vec3<bool>(false, true, global0.x)), global2[_wgslsmith_index_u32(4294967295u, 5u)], vec4<bool>(global0.x, global0.x, true, true))).c.xz, func_1(_wgslsmith_add_vec2_i32(vec2<i32>(-14670i, 0i), vec2<i32>(2147483647i, u_input.b))), 25837i >= ~u_input.b, firstLeadingBit(1i)), vec4<bool>(true || func_3(false, 53952i).x, global0.x, all(!vec3<bool>(false, global0.x, global0.x)), (global0.x || global0.x) || any(vec4<bool>(false, global0.x, true, global0.x)))), u_input.a.x);
    let var_1 = Struct_4(Struct_1(u_input.b, func_3(true, -1750i), vec3<i32>(-287i, func_6(1u, func_4(u_input.b, Struct_4(Struct_1(u_input.b, vec3<bool>(global0.x, global0.x, global0.x), vec3<i32>(u_input.b, -15597i, -2147483647i), vec3<bool>(true, false, global0.x), vec3<bool>(false, false, global0.x)), vec2<f32>(-1489f, -511f), Struct_1(u_input.b, global0.xwz, vec3<i32>(2147483647i, 2147483647i, -43872i), global1[_wgslsmith_index_u32(65855u, 2u)], global0.xxy), Struct_3(Struct_1(u_input.b, global1[_wgslsmith_index_u32(u_input.a.x, 2u)], vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<bool>(true, global0.x, true), vec3<bool>(global0.x, true, false)), vec2<i32>(u_input.b, u_input.b), Struct_1(0i, global0.zyx, vec3<i32>(1i, 1i, u_input.b), vec3<bool>(global0.x, true, false), global1[_wgslsmith_index_u32(u_input.a.x, 2u)]), true, -37758i), vec4<bool>(global0.x, false, global0.x, global0.x)), Struct_2(Struct_1(u_input.b, global0.zzy, vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<bool>(global0.x, false, global0.x), global1[_wgslsmith_index_u32(u_input.a.x, 2u)]), false, vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), -326f, u_input.b), Struct_4(Struct_1(2147483647i, global0.zxx, vec3<i32>(0i, -2147483647i, u_input.b), global0.zxy, global0.xzz), vec2<f32>(537f, -252f), Struct_1(u_input.b, global1[_wgslsmith_index_u32(4294967295u, 2u)], vec3<i32>(u_input.b, 8136i, 23657i), vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, global0.x, global0.x)), global2[_wgslsmith_index_u32(u_input.a.x, 5u)], vec4<bool>(global0.x, global0.x, false, false))), Struct_4(Struct_1(-1i, global1[_wgslsmith_index_u32(4294967295u, 2u)], vec3<i32>(797i, -6471i, 17961i), global0.yzz, vec3<bool>(false, true, true)), vec2<f32>(-399f, -130f), Struct_1(4005i, vec3<bool>(global0.x, global0.x, global0.x), vec3<i32>(u_input.b, 0i, -23794i), global1[_wgslsmith_index_u32(u_input.a.x, 2u)], vec3<bool>(global0.x, true, global0.x)), global2[_wgslsmith_index_u32(44031u, 5u)], vec4<bool>(global0.x, true, global0.x, true)), ~u_input.a.x), _wgslsmith_mult_i32(u_input.b, u_input.b)), !global0.wyx, global0.ywy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(800f, -587f)))))), func_5(Struct_2(func_1(vec2<i32>(u_input.b, -2147483647i) ^ vec2<i32>(u_input.b, u_input.b)), true, reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-19662i, u_input.b, u_input.b, -1i), vec4<i32>(u_input.b, 16106i, 57638i, -43967i))), _wgslsmith_f_op_f32(-211f * 172f), reverseBits(firstTrailingBit(18374i)))), global2[_wgslsmith_index_u32((~u_input.a.x ^ countOneBits(68084u)) ^ ~_wgslsmith_clamp_u32(~9493u, ~4294967295u, ~u_input.a.x), 5u)], select(!(!(!vec4<bool>(global0.x, global0.x, false, global0.x))), vec4<bool>(!(!global0.x), true, true, true), global0.x));
    let var_2 = true & !any(func_4(-5855i, Struct_4(Struct_1(var_1.d.c.c.x, vec3<bool>(true, global0.x, global0.x), vec3<i32>(-39728i, -2147483647i, 0i), vec3<bool>(false, true, false), vec3<bool>(false, var_1.c.b.x, global0.x)), var_1.b, var_1.d.c, Struct_3(var_1.c, vec2<i32>(var_1.d.e, 1i), Struct_1(71739i, global1[_wgslsmith_index_u32(u_input.a.x, 2u)], vec3<i32>(var_1.c.a, var_1.a.c.x, -1i), global1[_wgslsmith_index_u32(u_input.a.x, 2u)], global1[_wgslsmith_index_u32(u_input.a.x, 2u)]), global0.x, 33827i), vec4<bool>(false, false, var_1.a.e.x, var_1.e.x)), Struct_2(var_1.c, var_1.c.d.x, vec4<i32>(var_1.c.a, u_input.b, -1i, u_input.b), var_1.b.x, 30098i), var_1).e);
    let var_3 = u_input.a;
    global2 = array<Struct_3, 5>();
    var_0 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(1u, -2147483647i, _wgslsmith_clamp_i32(func_6(5584u, var_1.d.a, Struct_4(func_1(var_1.d.a.c.zy), _wgslsmith_f_op_vec2_f32(vec2<f32>(2067f, 426f) * vec2<f32>(-1382f, var_1.b.x)), func_2(), Struct_3(Struct_1(u_input.b, vec3<bool>(var_1.c.d.x, var_2, false), vec3<i32>(-9388i, 69268i, -2147483647i), var_1.a.e, vec3<bool>(true, false, false)), vec2<i32>(-2147483647i, var_1.c.c.x), var_1.c, var_1.e.x, var_1.c.c.x), vec4<bool>(false, global0.x, false, var_2)), var_3.x), _wgslsmith_add_i32(-(~var_1.c.c.x), var_1.d.a.a), u_input.b));
}

