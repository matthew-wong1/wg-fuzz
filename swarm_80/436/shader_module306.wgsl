struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<bool>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(89069u, 44213u, 36080u, 4294967295u), vec4<u32>(0u, 16881u, 1u, 7925u), vec4<u32>(4294967295u, 4855u, 40669u, 0u), vec4<u32>(1u, 0u, 4294967295u, 4294967295u), vec4<u32>(1u, 39166u, 1u, 9155u), vec4<u32>(1u, 16835u, 0u, 40594u), vec4<u32>(13175u, 4294967295u, 0u, 104995u), vec4<u32>(47853u, 0u, 1u, 54881u));

var<private> global1: array<vec3<u32>, 6>;

var<private> global2: bool;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    global1 = array<vec3<u32>, 6>();
    global1 = array<vec3<u32>, 6>();
    global2 = any(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), true), false)) || all(!select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    let var_0 = Struct_2(Struct_1(max(~1u, u_input.a), _wgslsmith_mult_i32(abs(u_input.b.x), -u_input.b.x) > -1i), Struct_1(select(reverseBits(~1u), min(1u, countOneBits(7574u)), false), true));
    global0 = array<vec4<u32>, 8>();
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1233f)) * _wgslsmith_div_f32(1429f, 716f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1466f + -580f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1257f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1520f)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-401f, 1195f, 154f, 698f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(895f, -254f, 615f, -1645f)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(3482f, 1261f, -1177f, -909f) + vec4<f32>(-1578f, 385f, -1501f, 1981f)))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(-861f - -693f), 465f, _wgslsmith_f_op_f32(-179f * var_0.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, var_0.x, var_0.x, 860f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1000f, -480f, -1205f) - vec4<f32>(var_0.x, var_0.x, -495f, -1867f)), vec4<f32>(-331f, -816f, var_0.x, var_0.x)))));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(250f * -202f), var_0.x));
    global2 = all(vec2<bool>(false, all(vec2<bool>(true, true))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-2686f + -270f), _wgslsmith_f_op_f32(-191f - var_0.x), _wgslsmith_f_op_f32(sign(-689f)), _wgslsmith_div_f32(389f, var_0.x)))));
    return Struct_1(_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(44992u, 0u, 5967u, 4294967295u) | vec4<u32>(arg_0, 50742u, 82170u, u_input.a), select(global0[_wgslsmith_index_u32(u_input.a, 8u)], vec4<u32>(arg_1, arg_0, u_input.a, arg_2.x), false)), _wgslsmith_mod_u32(select(~arg_1, 4294967295u, u_input.b.x != 2876i), ~_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(1u, 6u)], arg_2))), all(vec3<bool>(any(vec3<bool>(true, true, true)), true, all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global2 = any(vec2<bool>(false, arg_0.b));
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -571f)));
    var var_1 = _wgslsmith_div_i32(-7937i, -22803i);
    let var_2 = _wgslsmith_f_op_f32(-var_0);
    global1 = array<vec3<u32>, 6>();
    return arg_0;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_4) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_sub_u32(1u, 0u), !func_4(func_4(Struct_1(arg_0.e.x, arg_0.c.x))).b), func_4(func_2(arg_2.a.a.a, ~(~1973u), ~(~global1[_wgslsmith_index_u32(arg_0.d.a, 6u)]))));
    let var_1 = firstTrailingBit(u_input.a);
    var var_2 = false;
    var var_3 = arg_0.d.a;
    let var_4 = arg_1.c.zw;
    return arg_0.d;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: u32) -> bool {
    let var_0 = vec4<bool>(false, arg_0, true, any(select(vec3<bool>(!arg_0, arg_0 && arg_0, true), !vec3<bool>(true, arg_0, arg_0), select(vec3<bool>(true, true, true), vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, arg_0, true)))));
    let var_1 = 1i;
    global1 = array<vec3<u32>, 6>();
    var var_2 = func_5(Struct_3(vec3<i32>(var_1 ^ u_input.b.x, -arg_2 ^ arg_2, u_input.b.x), u_input.b.xxy, !vec4<bool>(var_0.x, true, true, true), func_4(func_2(~arg_3, 4294967295u, global1[_wgslsmith_index_u32(arg_3, 6u)])), select(vec4<u32>(_wgslsmith_mod_u32(arg_3, u_input.a), ~0u, arg_1 | 0u, u_input.a), vec4<u32>(u_input.a, ~arg_1, _wgslsmith_div_u32(30345u, arg_1), u_input.a), !func_4(Struct_1(19497u, arg_0)).b)), Struct_3(u_input.b.wwz, firstLeadingBit(u_input.b.zzz), select(select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, arg_0), vec4<bool>(var_0.x, arg_0, arg_0, arg_0), arg_0), vec4<bool>(var_0.x, var_0.x, var_0.x, false), true), select(var_0, vec4<bool>(arg_0, true, arg_0, var_0.x), true), var_0), func_4(Struct_1(0u, !arg_0)), ~_wgslsmith_div_vec4_u32(global0[_wgslsmith_index_u32(39172u, 8u)], vec4<u32>(arg_1, arg_1, u_input.a, 4294967295u)) ^ global0[_wgslsmith_index_u32(1370u, 8u)]), Struct_4(Struct_2(func_2(_wgslsmith_add_u32(arg_3, arg_1), arg_1, abs(global1[_wgslsmith_index_u32(5030u, 6u)])), func_4(Struct_1(u_input.a, true)))));
    return -min(arg_2, -1i) != ~min(0i, select(u_input.b.x, i32(-1i) * -2147483647i, any(var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 8>();
    global0 = array<vec4<u32>, 8>();
    global2 = select(u_input.a == ~1u, func_1(!(!any(vec2<bool>(true, false))), 1u, _wgslsmith_sub_i32(-(~(-15714i)), _wgslsmith_add_i32(0i >> (u_input.a % 32u), -17166i)), 4294967295u), true);
    global0 = array<vec4<u32>, 8>();
    let var_0 = _wgslsmith_f_op_f32(-1335f - 486f);
    var var_1 = func_4(func_5(Struct_3(~vec3<i32>(2147483647i, u_input.b.x, 2147483647i) << (vec3<u32>(53443u, u_input.a, u_input.a) % vec3<u32>(32u)), u_input.b.wyw, select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), false), true), func_5(Struct_3(vec3<i32>(-2147483647i, -58348i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i), vec4<bool>(false, true, true, true), Struct_1(0u, false), global0[_wgslsmith_index_u32(u_input.a, 8u)]), Struct_3(u_input.b.yyw, vec3<i32>(10562i, u_input.b.x, -1i), vec4<bool>(false, false, true, false), Struct_1(u_input.a, true), vec4<u32>(u_input.a, 1u, 9119u, u_input.a)), Struct_4(Struct_2(Struct_1(u_input.a, true), Struct_1(1u, true)))), vec4<u32>(4294967295u >> (u_input.a % 32u), ~4294967295u, abs(u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(59120u, u_input.a), vec2<u32>(u_input.a, u_input.a)))), Struct_3(select(~vec3<i32>(u_input.b.x, 10796i, u_input.b.x), _wgslsmith_mult_vec3_i32(u_input.b.yxw, u_input.b.xzw), true), -_wgslsmith_add_vec3_i32(u_input.b.zyw, vec3<i32>(-620i, u_input.b.x, -1i)), vec4<bool>(true, true, true, true), func_4(func_4(Struct_1(0u, true))), abs(global0[_wgslsmith_index_u32(u_input.a & u_input.a, 8u)])), Struct_4(Struct_2(Struct_1(u_input.a, false), func_4(Struct_1(u_input.a, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-954f, -2107f), vec4<u32>(_wgslsmith_mult_u32(firstLeadingBit(u_input.a), var_1.a << (_wgslsmith_add_u32(19947u, 68853u) % 32u)), _wgslsmith_add_u32(func_4(func_5(Struct_3(vec3<i32>(32302i, u_input.b.x, u_input.b.x), u_input.b.www, vec4<bool>(var_1.b, var_1.b, false, true), Struct_1(u_input.a, true), vec4<u32>(u_input.a, 15802u, 14490u, 0u)), Struct_3(u_input.b.zzw, vec3<i32>(0i, u_input.b.x, 2147483647i), vec4<bool>(true, var_1.b, false, true), Struct_1(u_input.a, false), vec4<u32>(1u, 3587u, var_1.a, u_input.a)), Struct_4(Struct_2(Struct_1(4294967295u, false), Struct_1(u_input.a, false))))).a, firstLeadingBit(u_input.a) << (~u_input.a % 32u)), select(_wgslsmith_sub_u32(~var_1.a, ~37942u), max(u_input.a, var_1.a) & _wgslsmith_mult_u32(var_1.a, var_1.a), true), u_input.a), -1769f);
}

