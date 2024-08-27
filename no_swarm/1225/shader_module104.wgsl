struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(1u, 35560u, 1u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(0u, 24598u, 9641u), vec3<u32>(0u, 10421u, 20699u), vec3<u32>(80399u, 67086u, 0u), vec3<u32>(2529u, 134427u, 1u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(4294967295u, 1u, 22824u), vec3<u32>(8968u, 14561u, 54028u), vec3<u32>(24141u, 33610u, 52302u), vec3<u32>(0u, 50396u, 12085u), vec3<u32>(36050u, 40358u, 2814u), vec3<u32>(64209u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 1u, 333u), vec3<u32>(1821u, 0u, 4294967295u), vec3<u32>(7712u, 0u, 23668u), vec3<u32>(40535u, 7256u, 4294967295u), vec3<u32>(1u, 28921u, 9929u), vec3<u32>(4294967295u, 4294967295u, 8942u), vec3<u32>(1u, 33705u, 17558u), vec3<u32>(24358u, 10275u, 15683u), vec3<u32>(39271u, 0u, 12019u), vec3<u32>(11491u, 89339u, 4294967295u), vec3<u32>(1738u, 60980u, 66122u), vec3<u32>(22745u, 1u, 4294967295u), vec3<u32>(11441u, 0u, 0u), vec3<u32>(42913u, 4294967295u, 5804u), vec3<u32>(4294967295u, 58587u, 73441u), vec3<u32>(47916u, 44053u, 1u), vec3<u32>(32264u, 4294967295u, 1u), vec3<u32>(4294967295u, 95866u, 4294967295u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<bool> {
    var var_0 = u_input.a.x;
    global0 = abs(vec4<i32>(global0.x, 18415i, global0.x >> (countOneBits(1u) % 32u), -433i)) << ((~abs(vec4<u32>(1u, 80571u, u_input.b, u_input.b)) << (~vec4<u32>(~0u, u_input.a.x, 65285u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u));
    return vec4<bool>(!(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(988f)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1402f) - -1003f)), false, (1u << (((u_input.a.x >> (u_input.a.x % 32u)) | 1u) % 32u)) > u_input.a.x, true);
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_4) -> vec4<bool> {
    global0 = max(reverseBits(~vec4<i32>(global0.x, global0.x, -2147483647i, -2147483647i)), ~((vec4<i32>(global0.x, -2147483647i, arg_0, 0i) >> (vec4<u32>(61005u, 25626u, 33898u, 1u) % vec4<u32>(32u))) >> ((vec4<u32>(1u, u_input.a.x, 4294967295u, 1u) | vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 20228u)) % vec4<u32>(32u)))) << ((vec4<u32>(reverseBits(1u), ~(~68026u), u_input.a.x, min(u_input.a.x, 1u)) << (vec4<u32>(1u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a.xx), u_input.a.x), u_input.a.x, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u));
    global1 = array<vec3<u32>, 31>();
    return select(func_3(), select(select(!vec4<bool>(arg_1.x, false, false, arg_1.x), select(vec4<bool>(false, true, false, true), vec4<bool>(false, arg_2.a.x, true, false), !arg_2.c.x), all(arg_1)), select(select(arg_2.a, select(vec4<bool>(true, arg_1.x, arg_2.a.x, true), vec4<bool>(false, false, true, arg_2.b), vec4<bool>(false, false, arg_1.x, true)), select(arg_2.a, arg_2.a, false)), vec4<bool>(true, true, false, 4294967295u != u_input.a.x), true), arg_2.a.x), select(arg_1.x, arg_1.x, all(arg_1)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec3<f32>) -> Struct_4 {
    var var_0 = ~(~(~u_input.a) & reverseBits(u_input.a));
    let var_1 = vec2<u32>(~u_input.a.x, 4294967295u);
    var var_2 = -115f;
    let var_3 = _wgslsmith_mod_vec2_u32(reverseBits(countOneBits(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(var_1.x, u_input.b)), _wgslsmith_mult_vec2_u32(var_1, vec2<u32>(1u, u_input.b)), var_1))), var_0.yx);
    let var_4 = Struct_2(var_1.x);
    return Struct_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(ceil(1390f))))));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_4) -> vec4<i32> {
    global1 = array<vec3<u32>, 31>();
    var var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -479f), 1823f), _wgslsmith_div_f32(138f, _wgslsmith_f_op_f32(arg_2.a + _wgslsmith_f_op_f32(-arg_1.x))), vec3<u32>(4294967295u, ~2514u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.b, 15186u, 4294967295u, u_input.a.x)) | vec4<u32>(u_input.b, u_input.b, 0u, 1u), (vec4<u32>(u_input.a.x, u_input.b, u_input.b, u_input.b) << (vec4<u32>(u_input.a.x, 7424u, u_input.a.x, u_input.b) % vec4<u32>(32u))) << (~vec4<u32>(u_input.b, 1u, 43932u, 27528u) % vec4<u32>(32u)))));
    var var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(320f * -948f)), 742f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1435f + _wgslsmith_f_op_f32(-var_0.a.x)) - _wgslsmith_f_op_f32(select(-650f, arg_2.a, all(vec2<bool>(false, false)))))), countOneBits(var_0.c));
    let var_2 = arg_0;
    let var_3 = ~var_1.c.x;
    return vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(-vec4<i32>(~(-2147483647i), firstTrailingBit(global0.x), min(global0.x, -4344i), -2147483647i), vec4<i32>(select(global0.x, reverseBits(8248i), -22953i != global0.x), countOneBits(global0.x << (var_3 % 32u)), 0i, ~_wgslsmith_mult_i32(global0.x, -36574i))), -13337i, min(~global0.x, _wgslsmith_div_i32(1i, -436i)));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec3<u32>) -> Struct_1 {
    global0 = abs(func_5(func_4(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), func_2(global0.x, vec4<bool>(false, false, false, true), Struct_1(vec4<bool>(true, false, true, false), false, vec3<bool>(false, false, true)), Struct_4(298f))), Struct_2(u_input.a.x), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, false)), vec3<f32>(1926f, _wgslsmith_div_f32(-1199f, -2134f), _wgslsmith_f_op_f32(f32(-1f) * -548f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -1314f, -614f, -411f), vec4<f32>(1030f, 176f, -242f, 1010f), false)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(512f, -1005f, -690f, -994f) * vec4<f32>(-1000f, -742f, -1021f, -571f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1080f, -145f, -591f, 831f) + vec4<f32>(149f, -1000f, -1582f, -320f)))), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-897f)) + _wgslsmith_f_op_f32(step(1466f, 337f))))));
    let var_0 = vec4<bool>(4294967295u > (4294967295u << (_wgslsmith_mod_u32(~u_input.b, arg_2.x) % 32u)), false, true, false);
    var var_1 = func_4(vec4<bool>(any(vec2<bool>(var_0.x, var_0.x)) & !(!var_0.x), any(!(!vec3<bool>(false, var_0.x, var_0.x))), false, true), Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, _wgslsmith_mult_u32(0u, 1u), ~2498u, max(40353u, 1u)), vec4<u32>(u_input.a.x, 1u, reverseBits(arg_2.x), 1u << (0u % 32u)))), func_3().wxx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(702f, -226f, 1182f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(468f, 706f, 1045f))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-295f, -437f, -164f), vec3<f32>(118f, -1664f, 376f)))))));
    var var_2 = firstTrailingBit(~(~(~59448u))) << (u_input.a.x % 32u);
    let var_3 = (_wgslsmith_add_i32(arg_0, _wgslsmith_sub_i32(arg_0, global0.x)) & func_5(Struct_4(_wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1556f, 597f, 467f, var_1.a), vec4<f32>(var_1.a, var_1.a, var_1.a, 919f), true)), func_4(func_3(), Struct_2(20102u), !vec3<bool>(true, true, var_0.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.a, -1091f, -1413f), vec3<f32>(var_1.a, 397f, 1019f))))).x) < -33982i;
    return Struct_1(!vec4<bool>(true, var_3, true, true), ~1u == ~(u_input.b ^ u_input.b), vec3<bool>(var_0.x | (var_0.x | func_3().x), false, var_0.x || func_2(2147483647i, !var_0, Struct_1(vec4<bool>(var_3, true, false, var_0.x), var_0.x, var_0.yxy), func_4(var_0, Struct_2(0u), vec3<bool>(var_3, false, var_0.x), vec3<f32>(-1762f, 1435f, var_1.a))).x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.yx;
    global1 = array<vec3<u32>, 31>();
    var var_1 = true;
    var var_2 = func_1(-1i, abs(2147483647i), ~u_input.a);
    var_2 = Struct_1(vec4<bool>((true | func_1(28118i, global0.x, global1[_wgslsmith_index_u32(1u, 31u)]).c.x) != func_3().x, true, true, false), _wgslsmith_f_op_f32(round(-180f)) == _wgslsmith_f_op_f32(step(1000f, 1f)), func_2(2147483647i, select(func_1(abs(-2147483647i), func_5(Struct_4(-1629f), vec4<f32>(620f, 327f, -836f, -379f), Struct_4(1009f)).x, ~u_input.a).a, vec4<bool>(all(vec3<bool>(false, var_2.a.x, true)), !var_2.c.x, true, true), (global0.x > 0i) || false), func_1(2147483647i, 31909i, firstTrailingBit(_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(43554u, var_0.x, u_input.b)))), Struct_4(-100f)).zzy);
    let var_3 = _wgslsmith_dot_vec4_u32(abs(vec4<u32>(_wgslsmith_clamp_u32(1u, 7174u, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(36764u, 0u), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, var_0.x), u_input.a.yx)), _wgslsmith_clamp_u32(97768u, var_0.x, abs(29449u)), firstLeadingBit(4294967295u & u_input.a.x))), ~_wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.b, 81778u, u_input.b, 0u), vec4<u32>(var_0.x, var_0.x, u_input.b, 3279u) & vec4<u32>(38339u, var_0.x, var_0.x, u_input.b), var_2.a.x), vec4<u32>(61289u, firstTrailingBit(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 29116u, 0u), vec4<u32>(u_input.b, 44390u, u_input.a.x, var_0.x)), 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(806f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -755f), -1264f)))), var_0.x, 220f, _wgslsmith_mod_vec2_u32(abs(select(u_input.a.zx, var_0 >> (vec2<u32>(15503u, 4294967295u) % vec2<u32>(32u)), select(var_2.c.zz, vec2<bool>(var_2.b, var_2.a.x), vec2<bool>(true, var_2.b)))), var_0));
}

