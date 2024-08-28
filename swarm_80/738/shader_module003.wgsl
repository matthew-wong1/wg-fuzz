struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 1i, -29212i >> (1u % 32u)), min(max(vec3<i32>(-1064i, -20988i, -10507i), vec3<i32>(u_input.a.x, 34155i, 2147483647i)), vec3<i32>(-1i, u_input.a.x, 2147483647i))), vec2<bool>(false, !(!global0[_wgslsmith_index_u32(u_input.b, 25u)]))), select(true, global0[_wgslsmith_index_u32(~(~77818u), 25u)], any(!select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 25u)], false, global0[_wgslsmith_index_u32(u_input.b, 25u)], global0[_wgslsmith_index_u32(u_input.b, 25u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 25u)], false, global0[_wgslsmith_index_u32(u_input.b, 25u)]), true))));
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    var_0 = Struct_2(Struct_1(var_0.a.a, !var_0.a.b), !(!(var_0.b && true)));
    let var_1 = -vec2<i32>(firstTrailingBit(-(~u_input.a.x)), -1i);
    return select(~vec2<u32>(~0u, select(u_input.b, reverseBits(0u), true)), _wgslsmith_add_vec2_u32(~firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(25470u, u_input.b))), vec2<u32>(u_input.b, u_input.b) << (~firstTrailingBit(vec2<u32>(u_input.b, 34482u)) % vec2<u32>(32u))), false);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32) -> Struct_2 {
    global0 = array<bool, 25>();
    var var_0 = !arg_0.b;
    global0 = array<bool, 25>();
    let var_1 = Struct_1(arg_1.zww << (reverseBits(select(abs(vec3<u32>(u_input.b, u_input.b, u_input.b)), vec3<u32>(0u, 13828u, 44407u) << (vec3<u32>(u_input.b, 94276u, u_input.b) % vec3<u32>(32u)), true)) % vec3<u32>(32u)), vec2<bool>(true, true));
    var var_2 = _wgslsmith_mult_vec2_u32(func_3(), min(vec2<u32>(_wgslsmith_clamp_u32(1u, 32121u, u_input.b), _wgslsmith_mod_u32(u_input.b, 4294967295u)) | abs(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.b, u_input.b))), firstLeadingBit(firstLeadingBit(select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b), false)))));
    return Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(arg_1.wzw, vec3<i32>(26183i, u_input.a.x, 3402i) ^ vec3<i32>(-4173i, u_input.a.x, u_input.a.x)), select(select(arg_0.b, var_1.b, vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 25u)])), vec2<bool>(false, true), var_1.b.x)), var_0.x);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec2<u32>, arg_3: vec4<i32>) -> vec4<u32> {
    global0 = array<bool, 25>();
    var var_0 = arg_0.a;
    var var_1 = Struct_2(Struct_1(countOneBits(vec3<i32>(_wgslsmith_dot_vec3_i32(arg_0.a.a, var_0.a), ~32992i, arg_0.a.a.x)), arg_0.a.b), firstLeadingBit(_wgslsmith_mult_u32(func_3().x, u_input.b)) >= arg_2.x);
    let var_2 = func_2(func_2(Struct_1(_wgslsmith_add_vec3_i32(arg_0.a.a, _wgslsmith_add_vec3_i32(u_input.a.www, vec3<i32>(-1i, 10762i, -38991i))), arg_0.a.b), -arg_3, _wgslsmith_sub_i32(arg_0.a.a.x, _wgslsmith_mod_i32(-1635i, ~(-10654i)))).a, arg_3, arg_0.a.a.x & -var_0.a.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-487f, -639f, 1347f), vec3<f32>(138f, 875f, arg_1))))));
    return firstTrailingBit(vec4<u32>(~abs(0u), arg_2.x, ~(~(~64104u)), reverseBits(firstTrailingBit(u_input.b))));
}

fn func_5(arg_0: f32, arg_1: vec4<u32>, arg_2: vec4<u32>) -> vec3<bool> {
    global0 = array<bool, 25>();
    let var_0 = func_2(Struct_1(vec3<i32>(2147483647i, 1i, u_input.a.x), !vec2<bool>(func_2(Struct_1(vec3<i32>(1i, 31595i, 1i), vec2<bool>(true, global0[_wgslsmith_index_u32(arg_1.x, 25u)])), vec4<i32>(20372i, -35307i, u_input.a.x, -48407i), u_input.a.x).a.b.x, func_2(Struct_1(u_input.a.xxx, vec2<bool>(global0[_wgslsmith_index_u32(14221u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)])), u_input.a, -2147483647i).a.b.x)), u_input.a << (arg_1 % vec4<u32>(32u)), _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a.x, ~1i & func_2(Struct_1(vec3<i32>(-2147483647i, 1i, u_input.a.x), vec2<bool>(false, false)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x).a.a.x, max(countOneBits(u_input.a.x), -u_input.a.x)), 2147483647i));
    global0 = array<bool, 25>();
    var var_1 = ~(~_wgslsmith_mod_vec2_u32(max(arg_1.wx, arg_2.yx), vec2<u32>(firstLeadingBit(arg_2.x), arg_1.x)));
    var var_2 = arg_0;
    return !(!select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, global0[_wgslsmith_index_u32(var_1.x, 25u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 25u)], var_0.a.b.x, var_0.b)), select(vec3<bool>(var_0.a.b.x, global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(arg_2.x, 25u)]), vec3<bool>(var_0.b, global0[_wgslsmith_index_u32(32374u, 25u)], true), var_0.b), vec3<bool>(true, true, true)), !vec3<bool>(global0[_wgslsmith_index_u32(arg_2.x, 25u)], var_0.a.b.x, var_0.b), !vec3<bool>(true, global0[_wgslsmith_index_u32(var_1.x, 25u)], var_0.a.b.x)));
}

fn func_1() -> Struct_1 {
    var var_0 = select(vec3<bool>(!all(vec4<bool>(global0[_wgslsmith_index_u32(71422u, 25u)], false, true, false)) | true, global0[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(4294967295u, ~42486u)), 25u)], true), !vec3<bool>(!all(vec4<bool>(true, true, true, true)), _wgslsmith_div_i32(-1i, -1i) < u_input.a.x, select(select(global0[_wgslsmith_index_u32(u_input.b, 25u)], false, true), true, true)), func_5(655f, _wgslsmith_add_vec4_u32(~(~vec4<u32>(4294967295u, 0u, 2896u, u_input.b)), _wgslsmith_sub_vec4_u32(~vec4<u32>(120050u, u_input.b, u_input.b, 4294967295u), ~vec4<u32>(0u, 4294967295u, u_input.b, 1u))), select(select(vec4<u32>(36369u, u_input.b, 0u, u_input.b) >> (vec4<u32>(u_input.b, u_input.b, 99297u, u_input.b) % vec4<u32>(32u)), ~vec4<u32>(u_input.b, 21971u, 21319u, 37366u), select(vec4<bool>(global0[_wgslsmith_index_u32(10826u, 25u)], global0[_wgslsmith_index_u32(u_input.b, 25u)], false, global0[_wgslsmith_index_u32(u_input.b, 25u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(60915u, 25u)], false, global0[_wgslsmith_index_u32(0u, 25u)]), vec4<bool>(global0[_wgslsmith_index_u32(44145u, 25u)], global0[_wgslsmith_index_u32(u_input.b, 25u)], global0[_wgslsmith_index_u32(u_input.b, 25u)], global0[_wgslsmith_index_u32(u_input.b, 25u)]))), func_4(func_2(Struct_1(u_input.a.www, vec2<bool>(global0[_wgslsmith_index_u32(24117u, 25u)], global0[_wgslsmith_index_u32(u_input.b, 25u)])), vec4<i32>(u_input.a.x, -48542i, 0i, u_input.a.x), 2147483647i), _wgslsmith_f_op_f32(-284f * -467f), max(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 9590u)), ~vec4<i32>(u_input.a.x, -765i, u_input.a.x, -1i)), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 25u)], false, global0[_wgslsmith_index_u32(27177u, 25u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(39603u, 25u)], global0[_wgslsmith_index_u32(u_input.b, 25u)], global0[_wgslsmith_index_u32(u_input.b, 25u)], global0[_wgslsmith_index_u32(u_input.b, 25u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 25u)], global0[_wgslsmith_index_u32(22846u, 25u)], global0[_wgslsmith_index_u32(u_input.b, 25u)]), false), !vec4<bool>(false, global0[_wgslsmith_index_u32(31260u, 25u)], global0[_wgslsmith_index_u32(9232u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)])))));
    global0 = array<bool, 25>();
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -109f)))));
    var var_2 = func_2(Struct_1(_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.xzy), var_0.yy), u_input.a, u_input.a.x).a;
    var var_3 = Struct_2(Struct_1(firstTrailingBit(firstLeadingBit(-u_input.a.zxy)), func_2(Struct_1(~u_input.a.wwx, var_0.zx), reverseBits(select(u_input.a, u_input.a, true)), u_input.a.x).a.b), var_2.b.x);
    return func_2(var_3.a, u_input.a, ~(~(-u_input.a.x))).a;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: bool) -> Struct_1 {
    var var_0 = func_1();
    let var_1 = vec2<u32>(u_input.b, arg_2.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1005f, 493f, -1103f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-955f, 558f, -659f)))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(floor(649f)), _wgslsmith_f_op_f32(852f * -675f), -358f), vec3<f32>(_wgslsmith_f_op_f32(max(116f, 138f)), _wgslsmith_div_f32(389f, 843f), 1f)))));
    let var_3 = vec4<i32>(arg_0.a.a.x, -_wgslsmith_sub_i32(73631i << (arg_2.x % 32u), -1i) << (~firstTrailingBit(arg_2.x) % 32u), var_0.a.x, var_0.a.x);
    let var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(278f))))));
    return Struct_1(vec3<i32>(5003i, arg_1.a.x, _wgslsmith_mult_i32(var_0.a.x, 0i)), vec2<bool>(all(func_5(_wgslsmith_f_op_f32(floor(var_4)), vec4<u32>(u_input.b, 25362u, 55597u, 1000u), select(vec4<u32>(47189u, arg_2.x, 10584u, 1u), vec4<u32>(97509u, u_input.b, var_1.x, 838u), vec4<bool>(true, arg_0.a.b.x, arg_0.a.b.x, false))).yz), any(func_2(arg_0.a, vec4<i32>(arg_0.a.a.x, -9174i, arg_1.a.x, arg_1.a.x), -1i).a.b) && false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<i32>(26245i, -2147483647i, -1i), vec2<bool>(true == select(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), 25u)], false, global0[_wgslsmith_index_u32(u_input.b, 25u)] || global0[_wgslsmith_index_u32(71354u, 25u)]), true));
    var var_1 = func_6(Struct_2(Struct_1(vec3<i32>(u_input.a.x >> (1u % 32u), -10405i, _wgslsmith_dot_vec2_i32(var_0.a.yz, vec2<i32>(27830i, -1i))), !(!var_0.b)), true), func_1(), abs(_wgslsmith_add_vec2_u32(~min(vec2<u32>(25772u, 0u), vec2<u32>(u_input.b, 0u)), ~vec2<u32>(u_input.b, 1u) | vec2<u32>(2976u, 0u))), true);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1152f, -1000f, -1229f) + vec3<f32>(-566f, -1473f, 866f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -1167f, -1602f)))))));
    let var_3 = _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_sub_i32(-max(13330i, 2147483647i), _wgslsmith_dot_vec3_i32(var_1.a, vec3<i32>(2147483647i, 2147483647i, var_1.a.x) ^ u_input.a.wwz)), _wgslsmith_mult_i32(-41686i, u_input.a.x), func_1().a.x, _wgslsmith_mod_i32(7847i, 1i)));
    let var_4 = func_1();
    let var_5 = Struct_2(var_4, all(!vec3<bool>(false, var_4.b.x != true, func_1().b.x)));
    global0 = array<bool, 25>();
    let var_6 = _wgslsmith_dot_vec4_i32(reverseBits(firstTrailingBit(vec4<i32>(var_0.a.x, -1i, var_0.a.x, u_input.a.x) | firstLeadingBit(vec4<i32>(var_0.a.x, var_5.a.a.x, -7360i, 40445i)))), var_3);
    var var_7 = func_2(Struct_1(vec3<i32>(var_3.x >> (22220u % 32u), select(~u_input.a.x, var_3.x, var_2.x >= var_2.x), -50086i), vec2<bool>(true, true)), vec4<i32>(var_5.a.a.x, 0i, (~2444i << (u_input.b % 32u)) & 13461i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(~(-52190i), 40364i), _wgslsmith_div_i32(var_4.a.x << (60326u % 32u), var_4.a.x))), -5363i);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.b), vec3<u32>(u_input.b, 4294967295u, u_input.b)), ~u_input.b, ~29801u, 1u), 2147483647i);
}

