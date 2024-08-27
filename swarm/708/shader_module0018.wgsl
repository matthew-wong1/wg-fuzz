struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: bool,
    d: vec3<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(-279f, vec2<u32>(1u, 76014u)), Struct_1(-568f, vec2<u32>(0u, 4294967295u)), 14540i, vec4<u32>(77149u, 16058u, 56747u, 4294967295u), vec3<u32>(5352u, 41490u, 53627u)), Struct_2(Struct_1(1436f, vec2<u32>(83111u, 30342u)), Struct_1(-1588f, vec2<u32>(20632u, 1u)), 36482i, vec4<u32>(1u, 4294967295u, 0u, 0u), vec3<u32>(0u, 23302u, 0u)), Struct_2(Struct_1(-851f, vec2<u32>(40477u, 0u)), Struct_1(471f, vec2<u32>(0u, 4294967295u)), 19447i, vec4<u32>(1u, 1u, 1u, 56124u), vec3<u32>(15383u, 17953u, 1365u)), Struct_2(Struct_1(-414f, vec2<u32>(1u, 8709u)), Struct_1(-220f, vec2<u32>(1u, 15102u)), -31002i, vec4<u32>(75841u, 71294u, 1u, 17524u), vec3<u32>(1u, 73388u, 16817u)), Struct_2(Struct_1(-834f, vec2<u32>(72639u, 25490u)), Struct_1(1311f, vec2<u32>(23016u, 1u)), -10103i, vec4<u32>(0u, 4294967295u, 1u, 28760u), vec3<u32>(1u, 31335u, 4294967295u)), Struct_2(Struct_1(2569f, vec2<u32>(1u, 33245u)), Struct_1(-364f, vec2<u32>(2555u, 4294967295u)), -1i, vec4<u32>(10348u, 0u, 1u, 4294967295u), vec3<u32>(76247u, 95790u, 4294967295u)), Struct_2(Struct_1(-1086f, vec2<u32>(44175u, 0u)), Struct_1(-2355f, vec2<u32>(0u, 1u)), -35867i, vec4<u32>(0u, 13475u, 0u, 19127u), vec3<u32>(38564u, 35090u, 1u)), Struct_2(Struct_1(-971f, vec2<u32>(0u, 0u)), Struct_1(-707f, vec2<u32>(163560u, 0u)), 1i, vec4<u32>(0u, 4294967295u, 4294967295u, 21800u), vec3<u32>(85567u, 38133u, 39971u)), Struct_2(Struct_1(1000f, vec2<u32>(0u, 5394u)), Struct_1(-2389f, vec2<u32>(11906u, 0u)), 2147483647i, vec4<u32>(4294967295u, 4294967295u, 1u, 1u), vec3<u32>(18089u, 65080u, 1u)), Struct_2(Struct_1(503f, vec2<u32>(0u, 1u)), Struct_1(1086f, vec2<u32>(49501u, 1u)), -1i, vec4<u32>(0u, 14158u, 47589u, 1u), vec3<u32>(0u, 4294967295u, 42026u)), Struct_2(Struct_1(458f, vec2<u32>(45745u, 4294967295u)), Struct_1(1066f, vec2<u32>(5707u, 0u)), -39547i, vec4<u32>(1u, 75766u, 71113u, 4294967295u), vec3<u32>(4294967295u, 31918u, 0u)), Struct_2(Struct_1(-123f, vec2<u32>(0u, 53894u)), Struct_1(1407f, vec2<u32>(20771u, 1u)), -1i, vec4<u32>(4294967295u, 29324u, 1428u, 3479u), vec3<u32>(2938u, 127627u, 4294967295u)), Struct_2(Struct_1(-1039f, vec2<u32>(4294967295u, 17556u)), Struct_1(-3159f, vec2<u32>(1u, 0u)), 29797i, vec4<u32>(4294967295u, 0u, 110472u, 1u), vec3<u32>(7560u, 54073u, 4294967295u)));

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global2: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.b, -2147483647i, u_input.b), vec3<i32>(-1i, 2147483647i, 0i)), vec3<i32>(~(-24982i), u_input.a, abs(u_input.b)), _wgslsmith_mod_vec3_i32(min(vec3<i32>(0i, -2147483647i, u_input.b), vec3<i32>(2147483647i, 66392i, u_input.a)), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, -33559i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.b)))), -select(vec3<i32>(u_input.a, u_input.b, -30551i), vec3<i32>(-1i, -1i, -1i), vec3<bool>(global1.x, global1.x, true))), ~u_input.a, global1.x, vec3<u32>(_wgslsmith_add_u32(~u_input.d, 0u), ~u_input.d, 18624u) << (~(~vec3<u32>(u_input.c.x, u_input.d, 0u) << (~u_input.c % vec3<u32>(32u))) % vec3<u32>(32u)), Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -105f))), u_input.c.zy), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1575f * -361f)), _wgslsmith_mod_vec2_u32(u_input.c.xz, vec2<u32>(25147u, 4294967295u)) << (u_input.c.yy % vec2<u32>(32u))), ~2147483647i, abs(vec4<u32>(~1u, 4294967295u, 4294967295u, abs(15854u))), min(~(~vec3<u32>(u_input.d, u_input.c.x, u_input.d)), vec3<u32>(~u_input.c.x, _wgslsmith_mult_u32(u_input.d, u_input.c.x), max(23474u, u_input.c.x)))));
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    let var_1 = var_0.e.b.a;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.e.b.a, var_0.e.b.a)), var_0.e.b.a);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2) -> bool {
    var var_0 = !(!global1.x);
    var var_1 = arg_1.a;
    global1 = select(vec4<bool>(~(-arg_0.x) >= 2147483647i, var_1.a == _wgslsmith_f_op_f32(-346f - _wgslsmith_f_op_f32(func_3())), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(true, false, global1.x, global1.x), global1.x), select(vec4<bool>(false, false, global1.x, global1.x), vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(false, true, true, global1.x)))), true), vec4<bool>(global1.x, global1.x, global1.x, any(vec4<bool>(global1.x, true, true, any(vec3<bool>(true, false, global1.x))))), true == any(select(select(vec4<bool>(false, false, false, false), vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(global1.x, global1.x, true, global1.x)), !vec4<bool>(global1.x, false, true, true), all(vec2<bool>(global1.x, global1.x)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.a.a)) * arg_1.b.a)))), firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 73820u), vec2<u32>(arg_1.b.b.x, 30769u) >> (vec2<u32>(u_input.d, 1u) % vec2<u32>(32u)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.a, var_1.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1838f - var_1.a)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_1.b.a)), _wgslsmith_f_op_f32(var_2.a + var_1.a), _wgslsmith_f_op_f32(-arg_1.a.a)))))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(trunc(var_1.a)), _wgslsmith_f_op_f32(f32(-1f) * -474f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, arg_1.a.a, arg_1.a.a)))))));
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> vec2<bool> {
    global1 = arg_0;
    let var_0 = Struct_3(-1i, 2147483647i | countOneBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c, -1i, -2147483647i, arg_1.c), vec4<i32>(arg_1.c, u_input.a, -4703i, u_input.a))), select(global1.x, any(vec3<bool>(all(arg_0.xzw), true, u_input.c.x < 115558u)), true), ~vec3<u32>(~firstLeadingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, arg_1.a.b.x), max(vec2<u32>(119972u, 79829u), u_input.c.zx)), ~4294967295u), arg_1);
    global0 = array<Struct_2, 13>();
    var var_1 = ~vec3<i32>(-(~2147483647i), reverseBits(u_input.b), min(~(-22675i), -49642i));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(2025f, _wgslsmith_f_op_f32(var_0.e.b.a - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.e.a.a - 1000f))))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(1025f)), 123f) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.e.b.a, 956f))), vec2<f32>(-705f, -1185f), arg_0.wy))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-439f, _wgslsmith_f_op_f32(-1295f * -743f))))));
    return select(vec2<bool>(true == arg_0.x, any(global1.xwz)), !select(select(global1.yy, !arg_0.zz, !var_0.c), arg_0.zw, true), arg_0.zz);
}

fn func_1() -> i32 {
    let var_0 = select(vec2<bool>(global1.x, global1.x | all(select(vec4<bool>(global1.x, true, false, true), vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(global1.x, true, global1.x, false)))), global1.xx, func_4(vec4<bool>(any(!vec4<bool>(global1.x, true, true, false)), _wgslsmith_add_u32(0u, u_input.d) <= ~u_input.d, all(!vec3<bool>(true, global1.x, global1.x)), func_2(vec2<i32>(u_input.a, -1i), Struct_2(Struct_1(-615f, vec2<u32>(u_input.c.x, u_input.c.x)), Struct_1(189f, vec2<u32>(u_input.c.x, u_input.d)), u_input.a, vec4<u32>(19365u, 0u, 4294967295u, u_input.c.x), vec3<u32>(4294967295u, u_input.d, 0u))) | !global1.x), global0[_wgslsmith_index_u32(~(~u_input.c.x), 13u)]));
    let var_1 = vec3<i32>(874i, -(~(-firstTrailingBit(11067i))), select(~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(u_input.b, u_input.a)), firstTrailingBit(vec2<i32>(u_input.b, u_input.b))), u_input.b, var_0.x));
    global2 = abs(_wgslsmith_dot_vec4_i32(~(-select(vec4<i32>(u_input.a, var_1.x, -32078i, var_1.x), vec4<i32>(-8634i, 5482i, u_input.b, u_input.a), global1.x)), firstTrailingBit(firstLeadingBit(vec4<i32>(u_input.a, -50393i, 14836i, u_input.a)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-998f, _wgslsmith_f_op_f32(min(-579f, -1031f)), _wgslsmith_f_op_f32(select(-940f, 246f, global1.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 511f, -2422f) + vec3<f32>(-2141f, 620f, 288f)) * vec3<f32>(-545f, 447f, -172f)) - vec3<f32>(_wgslsmith_f_op_f32(trunc(-1105f)), _wgslsmith_f_op_f32(f32(-1f) * -993f), -139f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(779f, 1222f), -555f, _wgslsmith_f_op_f32(2176f * -236f)) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(536f, 470f, -1196f), vec3<f32>(1028f, 1066f, 998f), global1.yyy))))))));
    let var_3 = Struct_1(var_2.x, ~abs(u_input.c.xz));
    return -var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.a, -23447i, func_1(), (u_input.a ^ u_input.b) ^ abs(1i)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -32412i, u_input.b, u_input.a) >> (vec4<u32>(u_input.c.x, 1u, 0u, 39992u) % vec4<u32>(32u)), countOneBits(vec4<i32>(-1i, u_input.b, -22381i, u_input.b)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-19708i, u_input.b, u_input.a, -52718i), vec4<i32>(0i, -28379i, -2147483647i, u_input.b), vec4<i32>(-9854i, u_input.b, 54706i, 0i)))), 2147483647i);
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) + 239f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3()))))), global1.x));
    global2 = -1i >> (_wgslsmith_mult_u32(u_input.d, u_input.c.x) % 32u);
    let var_1 = !(!(!select(select(vec4<bool>(false, global1.x, true, global1.x), vec4<bool>(global1.x, true, false, false), vec4<bool>(true, true, global1.x, global1.x)), vec4<bool>(true, false, false, false), !vec4<bool>(global1.x, false, false, global1.x))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -448f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-712f * _wgslsmith_f_op_f32(max(532f, -710f))), _wgslsmith_f_op_f32(-1015f + _wgslsmith_div_f32(369f, 140f)))));
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(136f - var_2) + -670f))), reverseBits(vec3<u32>(62011u, 36646u, abs(41072u))));
}

