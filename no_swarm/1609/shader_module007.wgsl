struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: bool,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, 8393i);

var<private> global1: bool = false;

var<private> global2: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(-3460i, -1i, 1i, 1986i), vec4<i32>(73170i, 0i, -1i, -1i), vec4<i32>(1i, -9942i, 27105i, 2147483647i), vec4<i32>(38908i, 2147483647i, 30863i, -85i), vec4<i32>(0i, -1i, -1i, i32(-2147483648)), vec4<i32>(-23732i, -22686i, 0i, -56164i));

var<private> global3: vec3<f32>;

var<private> global4: vec2<bool>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> f32 {
    var var_0 = true;
    let var_1 = vec4<u32>(_wgslsmith_mult_u32(~max(4294967295u, 25640u), 1u) & _wgslsmith_clamp_u32(52218u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 15185u), vec2<u32>(0u, 52277u)), vec2<u32>(1u, 1u)), _wgslsmith_add_u32(25172u, _wgslsmith_sub_u32(1u, 0u))), 1u, 1u, ~(~45642u));
    global3 = vec3<f32>(global3.x, global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.x)) * _wgslsmith_div_f32(global3.x, global3.x)));
    global4 = !select(!select(vec2<bool>(true, true), vec2<bool>(false, false), !global4.x), vec2<bool>(global4.x, all(vec3<bool>(false, true, global4.x))), !vec2<bool>(all(vec3<bool>(global4.x, false, false)), true));
    let var_2 = Struct_2(1i, u_input.a.yz, !global4.x, !vec2<bool>(true, all(vec3<bool>(global4.x, global4.x, global4.x))), Struct_1(~abs(abs(var_1.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(2268f, 1362f)))), global3.x));
    return global3.x;
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = global4.x;
    let var_1 = Struct_1(countOneBits(~(~firstTrailingBit(0u))), _wgslsmith_f_op_f32(func_3()), -1643f);
    var var_2 = select(!select(!vec2<bool>(global4.x, true), vec2<bool>(all(vec2<bool>(false, global4.x)), global4.x & true), global4.x), select(vec2<bool>(false, true), !(!(!vec2<bool>(global4.x, global4.x))), !(!select(vec2<bool>(global4.x, global4.x), vec2<bool>(false, global4.x), global4.x))), vec2<bool>(all(!vec3<bool>(global4.x, true, global4.x)) != all(select(vec2<bool>(true, global4.x), vec2<bool>(true, false), vec2<bool>(global4.x, global4.x))), 1u <= var_1.a));
    global4 = !vec2<bool>(!global4.x, false);
    var var_3 = abs(~vec3<u32>(var_1.a, ~firstLeadingBit(4294967295u), _wgslsmith_div_u32(var_1.a, 4294967295u << (var_1.a % 32u))));
    return Struct_1(4294967295u, -189f, var_1.c);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3) -> i32 {
    var var_0 = !vec3<bool>(arg_2.b.x, false, arg_1.c);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x - -814f), arg_1.e.c);
    var var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~_wgslsmith_add_vec2_i32(countOneBits(arg_1.b), vec2<i32>(arg_2.d.x, 44063i)), vec2<i32>(min(global0.x, arg_2.d.x ^ arg_0.a), (2147483647i | arg_1.a) | ~arg_1.b.x)), ~_wgslsmith_mod_vec2_i32(arg_2.d.xz, firstLeadingBit(vec2<i32>(global0.x, -1i))));
    let var_3 = arg_1.d;
    let var_4 = 11657u;
    return _wgslsmith_sub_i32(arg_0.a, arg_1.b.x);
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = abs(_wgslsmith_mod_i32(1i, func_4(Struct_2(~(-39680i), -vec2<i32>(0i, 36749i), false, !vec2<bool>(global4.x, global4.x), Struct_1(arg_1.a, global3.x, global3.x)), Struct_2(24093i, u_input.a.wy, global4.x, vec2<bool>(global4.x, true), func_2(vec4<i32>(global0.x, 97645i, -20733i, arg_0))), Struct_3(vec4<u32>(39715u, 5650u, arg_1.a, 4294967295u), select(vec4<bool>(global4.x, true, false, global4.x), vec4<bool>(true, global4.x, false, false), vec4<bool>(global4.x, false, true, global4.x)), firstLeadingBit(arg_1.a), max(u_input.a, global2[_wgslsmith_index_u32(arg_1.a, 6u)])))));
    var var_1 = func_2(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, 3239i, 16171i), vec4<i32>(abs(global0.x), -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, global0.x), u_input.a.wz), func_4(Struct_2(-2147483647i, vec2<i32>(u_input.a.x, arg_0), global4.x, vec2<bool>(false, global4.x), Struct_1(arg_1.a, 1153f, global3.x)), Struct_2(u_input.a.x, vec2<i32>(-1244i, 0i), false, vec2<bool>(global4.x, false), Struct_1(arg_1.a, 501f, global3.x)), Struct_3(vec4<u32>(arg_1.a, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(global4.x, false, global4.x, false), 1u, vec4<i32>(global0.x, arg_0, 10037i, arg_0))))));
    var var_2 = Struct_2(-(-select(-10914i, 1i, true) << (((var_1.a & var_1.a) >> (~arg_1.a % 32u)) % 32u)), vec2<i32>(~abs(u_input.a.x << (80152u % 32u)), arg_0), true, !vec2<bool>(true, global4.x || global4.x), func_2(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, -129618i, arg_0, arg_0), vec4<i32>(u_input.a.x, 0i, -2147483647i, global0.x)), _wgslsmith_mod_vec4_i32(u_input.a, u_input.a)) | abs(vec4<i32>(0i, 0i, -2147483647i, u_input.a.x))));
    var var_3 = arg_1.a;
    let var_4 = -var_2.b | vec2<i32>(-global0.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(max(vec2<i32>(global0.x, arg_0), vec2<i32>(2147483647i, u_input.a.x)), abs(u_input.a.wy)), _wgslsmith_mult_vec2_i32(select(var_2.b, vec2<i32>(var_2.b.x, var_2.b.x), vec2<bool>(var_2.c, false)), var_2.b)));
    return countOneBits(~abs(_wgslsmith_mod_u32(arg_1.a, var_2.e.a))) << ((~abs(firstLeadingBit(16908u)) & _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(var_1.a, 0u), _wgslsmith_add_u32(arg_1.a, 1u)), _wgslsmith_sub_u32(~58307u, 14724u))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(global0.x, 28872i | u_input.a.x, ~reverseBits(u_input.a.x));
    var var_1 = Struct_3(vec4<u32>(~(~4294967295u), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 35872u), vec2<u32>(4294967295u, 0u))), max(1u ^ func_1(u_input.a.x, Struct_1(1u, 249f, global3.x)), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 37481u, 0u, 0u), select(vec4<u32>(1u, 4294967295u, 34912u, 4294967295u), vec4<u32>(73739u, 1u, 1u, 55085u), global4.x))), ~(~1u)), vec4<bool>(true, false, false && any(vec2<bool>(global4.x, false)), global4.x), 11895u, vec4<i32>(-_wgslsmith_div_i32(firstLeadingBit(global0.x), -54438i), -(~global0.x), -2147483647i, global0.x));
    var var_2 = var_1.b.x;
    var_1 = Struct_3(min(select(_wgslsmith_div_vec4_u32(~var_1.a, var_1.a), vec4<u32>(reverseBits(0u), 0u, 51580u << (0u % 32u), var_1.a.x), select(var_1.b, select(vec4<bool>(global4.x, global4.x, true, true), var_1.b, false), false)), vec4<u32>(var_1.c, 15788u, var_1.c, ~1u)), select(var_1.b, !var_1.b, select(true, true, var_1.b.x | all(var_1.b.wyw))), _wgslsmith_mod_u32(~5765u, var_1.c), firstTrailingBit(vec4<i32>(func_4(Struct_2(var_0.x, vec2<i32>(2147483647i, var_1.d.x), var_1.b.x, vec2<bool>(var_1.b.x, true), Struct_1(1u, 229f, global3.x)), Struct_2(2147483647i, u_input.a.ww, false, vec2<bool>(false, true), Struct_1(89051u, global3.x, 2002f)), Struct_3(vec4<u32>(var_1.c, var_1.a.x, 4294967295u, var_1.c), vec4<bool>(var_1.b.x, false, global4.x, true), var_1.a.x, global2[_wgslsmith_index_u32(0u, 6u)])), _wgslsmith_add_i32(-2147483647i, 481i), -var_0.x, -1i)));
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2947f, -294f, _wgslsmith_f_op_f32(389f * global3.x))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, -427f))) - vec3<f32>(global3.x, _wgslsmith_f_op_f32(196f - global3.x), _wgslsmith_f_op_f32(trunc(global3.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, -703f)) * vec3<f32>(global3.x, _wgslsmith_f_op_f32(-global3.x), -191f))));
    var_2 = !var_1.b.x;
    var var_3 = Struct_3(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(61685u, 24784u, 1u), var_1.a.xww), abs(vec3<u32>(17430u, 4294967295u, 15119u)) << (~var_1.a.wyy % vec3<u32>(32u))), 0u, reverseBits(~var_1.c & max(var_1.c, 4294967295u)), var_1.c), var_1.b, func_2(_wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, 20454i, var_0.x, var_1.d.x), -vec4<i32>(u_input.a.x, 1i, var_0.x, -2147483647i))).a, vec4<i32>(_wgslsmith_mult_i32(5272i, _wgslsmith_mult_i32(select(21971i, var_1.d.x, var_1.b.x), _wgslsmith_mult_i32(u_input.a.x, var_1.d.x))), ~_wgslsmith_dot_vec3_i32(u_input.a.wzw, u_input.a.xzz), _wgslsmith_add_i32(var_1.d.x, global0.x >> ((var_1.a.x >> (34644u % 32u)) % 32u)), abs(~(-1i))));
    var var_4 = Struct_2(func_4(Struct_2(_wgslsmith_mult_i32(~(-1i), 1i), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(12193i, -38236i), var_1.d.wz), u_input.a.xx & vec2<i32>(var_0.x, u_input.a.x)), true, select(select(var_1.b.zz, var_1.b.xy, var_1.b.x), !var_3.b.xz, !var_3.b.wz), Struct_1(abs(var_3.c), 899f, _wgslsmith_f_op_f32(-global3.x))), Struct_2(-1i, var_3.d.yy, var_1.b.x, select(select(var_1.b.wx, vec2<bool>(global4.x, global4.x), true), select(var_1.b.xw, var_3.b.zw, false), any(var_1.b.yxx)), func_2(max(vec4<i32>(0i, var_1.d.x, var_0.x, 22346i), vec4<i32>(0i, var_0.x, var_1.d.x, 2147483647i)))), Struct_3(var_3.a, vec4<bool>(global4.x, any(var_3.b.yww), !var_1.b.x, true), var_3.c, countOneBits(vec4<i32>(1i, 1i, 0i, 39892i)))), u_input.a.wx >> (_wgslsmith_add_vec2_u32(~var_1.a.xw >> ((vec2<u32>(4294967295u, 4294967295u) | var_3.a.zw) % vec2<u32>(32u)), select(~var_3.a.yz, ~vec2<u32>(var_3.c, var_3.a.x), var_1.b.x)) % vec2<u32>(32u)), !var_3.b.x, var_1.b.yx, Struct_1(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, var_3.c), var_1.a), max(1u, var_3.a.x)), -349f, -926f));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_3.c), _wgslsmith_f_op_f32(-var_4.e.c));
}

