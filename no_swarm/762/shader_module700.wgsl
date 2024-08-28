struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(1i), Struct_1(43317i), Struct_1(0i), Struct_1(-72869i), Struct_1(2147483647i), Struct_1(2147483647i), Struct_1(-1i), Struct_1(1i), Struct_1(46096i), Struct_1(i32(-2147483648)));

var<private> global2: vec3<i32> = vec3<i32>(14861i, 2147483647i, 2147483647i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    var var_0 = false;
    let var_1 = Struct_2(min(global2.yz, vec2<i32>(-1i) * -global2.xy), global1[_wgslsmith_index_u32(min(u_input.a, 1u), 10u)], Struct_1(1i), !(all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))) | true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-377f - 483f), _wgslsmith_f_op_f32(f32(-1f) * -106f)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-699f, -827f)))))));
    global0 = 592f > _wgslsmith_f_op_f32(floor(-889f));
    var var_2 = vec4<bool>(!var_1.d, false, true, !((939u >> (0u % 32u)) > firstLeadingBit(u_input.a)) & !(!(var_1.a.x > u_input.b)));
    var var_3 = countOneBits(-abs(-1i));
    return u_input.a;
}

fn func_2(arg_0: vec2<u32>) -> Struct_3 {
    global1 = array<Struct_1, 10>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u | u_input.a, ~(0u & (_wgslsmith_clamp_u32(4294967295u, 0u, 112114u) ^ arg_0.x))), 10u)];
    let var_1 = 25956u;
    global0 = true;
    var var_2 = -894f;
    return Struct_3(vec2<i32>(global2.x ^ u_input.b, 2147483647i), vec3<u32>(func_3(), _wgslsmith_div_u32(4294967295u, 1u) >> (var_1 % 32u), 0u << (~min(var_1, 1u) % 32u)));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_2(~_wgslsmith_add_vec2_i32(arg_2.a, select(vec2<i32>(u_input.b, u_input.b), abs(global2.yz), vec2<bool>(arg_0, arg_0))), Struct_1(~firstTrailingBit(arg_1.a)), Struct_1(_wgslsmith_mod_i32(-70342i, _wgslsmith_dot_vec2_i32(arg_2.a, global2.zz))), all(select(select(!vec2<bool>(arg_0, true), !vec2<bool>(arg_0, arg_0), true), select(select(vec2<bool>(arg_0, false), vec2<bool>(false, true), false), !vec2<bool>(arg_0, arg_0), true), select(vec2<bool>(true, true), vec2<bool>(true, true), !vec2<bool>(arg_0, arg_0)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -938f)) * vec2<f32>(-783f, -359f)))));
    global0 = _wgslsmith_div_u32((46921u >> (arg_3 % 32u)) & 1u, arg_2.b.x) == 1u;
    let var_1 = var_0.d | (u_input.b != 2147483647i);
    let var_2 = 1u;
    let var_3 = Struct_1(0i);
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_2.b, vec3<u32>(_wgslsmith_sub_u32(arg_3 & 38122u, arg_3), u_input.a, arg_3)), 10u)];
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    return func_4(abs(global2.x) == arg_0.c.a, Struct_1(max(arg_0.c.a, u_input.b)), func_2(vec2<u32>(~u_input.a, u_input.a)), firstTrailingBit(_wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), ~firstTrailingBit(vec4<u32>(70520u, u_input.a, u_input.a, u_input.a)))));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec3<i32>) -> vec3<f32> {
    global2 = select(vec3<i32>(global2.x, func_4(true, Struct_1(~u_input.b), func_2(~vec2<u32>(u_input.a, 1u)), ~(~u_input.a)).a, _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b, global2.x), arg_2.x), arg_0.a)), _wgslsmith_mod_vec3_i32(arg_2 ^ vec3<i32>(arg_0.a, 2147483647i, arg_0.a), select(vec3<i32>(2147483647i, arg_2.x, arg_2.x) | vec3<i32>(global2.x, arg_0.a, global2.x), arg_2, all(vec3<bool>(true, true, true)))) ^ arg_2, true);
    global0 = !(!any(vec3<bool>(false, true, true)));
    let var_0 = Struct_2(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global2.x, u_input.b) & ~global2.zx, firstTrailingBit(~global2.xx)), vec2<i32>(_wgslsmith_sub_i32(1i, _wgslsmith_sub_i32(2147483647i, 856i)), min(abs(-11568i), u_input.b << (113440u % 32u)))), Struct_1(arg_2.x ^ 36847i), arg_0, select(true, any(vec2<bool>(true, 1u == u_input.a)), any(vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-1000f * -327f), 1106f))));
    global2 = abs(abs(-firstTrailingBit(~arg_2)));
    var var_1 = vec4<i32>(_wgslsmith_dot_vec3_i32(select(arg_2, ~arg_2, !var_0.d), arg_2), var_0.a.x, _wgslsmith_dot_vec4_i32(select(~(vec4<i32>(arg_2.x, -2147483647i, global2.x, -1i) ^ vec4<i32>(-2147483647i, arg_0.a, 0i, var_0.a.x)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_2.x, 76043i, 0i, global2.x), vec4<i32>(2147483647i, arg_2.x, arg_2.x, arg_2.x)) << ((vec4<u32>(u_input.a, 98250u, 4294967295u, arg_1) << (vec4<u32>(arg_1, u_input.a, arg_1, arg_1) % vec4<u32>(32u))) % vec4<u32>(32u)), all(vec2<bool>(false, true))), select(-firstLeadingBit(vec4<i32>(global2.x, 1i, arg_2.x, -1i)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_2.x, var_0.a.x, u_input.b, global2.x), -vec4<i32>(-6863i, -2147483647i, 40213i, global2.x)), var_0.d)), abs(abs(var_0.b.a)));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1241f, 2337f, -329f), vec3<f32>(168f, var_0.e.x, -189f))))))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1265f, -170f, var_0.e.x) + vec3<f32>(var_0.e.x, var_0.e.x, -1000f)))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1423f, -166f, -612f) + vec3<f32>(var_0.e.x, 778f, -1274f)))))))));
}

fn func_6(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = ~abs(_wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.b.x, arg_2.b.x, 1u, 0u), vec4<u32>(70285u, 1u, u_input.a, 4294967295u)), ~vec4<u32>(arg_2.b.x, 1u, 4294967295u, 6479u)));
    var var_1 = Struct_3(global2.xz, select(~(~arg_2.b | abs(var_0.xzw)), vec3<u32>(func_3(), ~_wgslsmith_mult_u32(47858u, 13668u), max(3536u, u_input.a)), true));
    var var_2 = firstLeadingBit(1u);
    var var_3 = func_2(_wgslsmith_div_vec2_u32(firstLeadingBit(~vec2<u32>(1u, 1u)), var_1.b.yy));
    let var_4 = arg_2;
    return Struct_1(i32(-1i) * -u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = func_6(any(vec2<bool>(false, any(vec3<bool>(false, false, true)))) | all(vec3<bool>(true, true, true)), !vec4<bool>(true, true, true || (u_input.b > 32663i), any(vec2<bool>(true, true))), Struct_3(global2.yz, ~abs(~vec3<u32>(54386u, 3593u, u_input.a))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(func_1(Struct_2(vec2<i32>(-2147483647i, u_input.b), global1[_wgslsmith_index_u32(u_input.a, 10u)], global1[_wgslsmith_index_u32(u_input.a, 10u)], false, vec2<f32>(-518f, -706f))), ~30971u, vec3<i32>(u_input.b, 6412i, u_input.b)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1288f, 863f, -777f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(997f, -116f, 152f))))))));
    let var_2 = ~vec4<i32>(select(-global2.x, i32(-1i) * -10585i, true), -1i, var_1.a, ~u_input.b) ^ vec4<i32>(_wgslsmith_mod_i32(~0i, var_1.a), func_4(true, global1[_wgslsmith_index_u32(~u_input.a, 10u)], func_2(~vec2<u32>(11550u, u_input.a)), abs(0u << (0u % 32u))).a, reverseBits(u_input.b), -72769i);
    global0 = true;
    let var_3 = !vec2<bool>(all(vec4<bool>(true, true, true, true)), !any(vec2<bool>(true, true)));
    var var_4 = ~(~select(~_wgslsmith_add_vec4_u32(vec4<u32>(54172u, u_input.a, 57617u, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u)), ~(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a) & vec4<u32>(u_input.a, 1u, 4294967295u, u_input.a)), var_3.x));
    global2 = vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(_wgslsmith_clamp_i32(35775i, -84732i, u_input.b)), _wgslsmith_mult_i32(45894i, -25679i), u_input.b, var_2.x), var_2), _wgslsmith_clamp_i32(~1i, -u_input.b, var_2.x), _wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(var_2.x), i32(-1i) * -1i), _wgslsmith_clamp_vec2_i32(-vec2<i32>(1i, var_2.x), vec2<i32>(0i, global2.x), var_2.xw)));
    let var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(229f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(258f * -280f) * _wgslsmith_div_f32(269f, -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1050f))), 1f)) - -150f));
    var var_6 = -35363i;
    let x = u_input.a;
    s_output = StorageBuffer(23770u);
}

