struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
    c: bool,
    d: i32,
}

struct Struct_5 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

var<private> global1: array<bool, 18> = array<bool, 18>(false, false, true, false, false, false, true, false, true, false, true, true, false, false, false, true, false, true);

var<private> global2: Struct_5;

var<private> global3: Struct_4 = Struct_4(i32(-2147483648), vec4<i32>(20650i, 18504i, 2147483647i, 175i), false, 2147483647i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    global3 = Struct_4(arg_0.x, vec4<i32>(~abs(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, u_input.b.x), 24u)]), _wgslsmith_sub_i32(-_wgslsmith_dot_vec3_i32(arg_0, global3.b.ywy), _wgslsmith_clamp_i32(-47378i, arg_0.x, arg_0.x) | 34523i), _wgslsmith_add_i32(reverseBits(-68879i << (u_input.b.x % 32u)), -_wgslsmith_div_i32(global3.b.x, 10705i)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(abs(global3.b), global3.b), _wgslsmith_dot_vec4_i32(global3.b, vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], 5482i, -2096i, -43396i) ^ vec4<i32>(-2147483647i, -78849i, -52918i, global0[_wgslsmith_index_u32(u_input.b.x, 24u)])))), all(vec2<bool>(true, global3.c)), -abs(24321i));
    global2 = Struct_5(_wgslsmith_f_op_f32(step(global2.a, _wgslsmith_f_op_f32(-global2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b + global2.a)))) + 1048f));
    var var_0 = u_input.b.x;
    global1 = array<bool, 18>();
    let var_1 = Struct_5(_wgslsmith_f_op_f32(-789f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b + global2.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.b)))));
    return ~_wgslsmith_clamp_i32(-_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(arg_0.zx, vec2<i32>(global3.d, 16958i)), ~arg_0.zy), _wgslsmith_mult_i32(~_wgslsmith_mult_i32(arg_0.x, global0[_wgslsmith_index_u32(5409u, 24u)]), _wgslsmith_mult_i32(global3.d, u_input.a)), abs(-7378i));
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_4(_wgslsmith_sub_i32(18325i, global0[_wgslsmith_index_u32(1u, 24u)]), global3.b >> (abs(abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x), vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x)))) % vec4<u32>(32u)), global3.c, -global0[_wgslsmith_index_u32(~(~select(u_input.b.x, 6748u, false)), 24u)]);
    global1 = array<bool, 18>();
    let var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(1u, 24u)], u_input.a, abs(var_0.b.x), var_0.d), reverseBits(vec4<i32>(i32(-1i) * -2147483647i, global3.a, func_3(~vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], 18566i, global0[_wgslsmith_index_u32(37217u, 24u)])), _wgslsmith_sub_i32(~global3.d, firstTrailingBit(var_0.b.x)))));
    var var_2 = _wgslsmith_add_vec3_u32(~vec3<u32>(firstTrailingBit(abs(4294967295u)), 95050u, _wgslsmith_dot_vec4_u32(max(vec4<u32>(22753u, u_input.b.x, 4294967295u, 6081u), vec4<u32>(36083u, 18638u, 10054u, 1u)), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) & vec4<u32>(12093u, 0u, u_input.b.x, u_input.b.x))), _wgslsmith_sub_vec3_u32((vec3<u32>(u_input.b.x, 81812u, u_input.b.x) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.b.x, 0u), vec3<u32>(u_input.b.x, 0u, 1u), vec3<u32>(73820u, 40693u, u_input.b.x)) % vec3<u32>(32u))) & countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, 0u), vec3<u32>(u_input.b.x, u_input.b.x, 5194u))), ~firstLeadingBit(vec3<u32>(3287u, u_input.b.x, u_input.b.x))));
    global0 = array<i32, 24>();
    return Struct_5(_wgslsmith_f_op_f32(996f * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a), 2366f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(260f, global2.a)) - -1000f))) * 1739f));
}

fn func_1() -> Struct_1 {
    global2 = func_2();
    let var_0 = 2147483647i;
    var var_1 = global0[_wgslsmith_index_u32(u_input.b.x, 24u)];
    let var_2 = (~min(firstLeadingBit(31114i), global0[_wgslsmith_index_u32(u_input.b.x, 24u)] & u_input.a) >= -1i) & true;
    var var_3 = global2.b;
    return Struct_1(vec4<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(21196u, u_input.b.x, u_input.b.x, 61626u), vec4<u32>(1u, 71236u, 0u, u_input.b.x), vec4<u32>(0u, 4294967295u, u_input.b.x, u_input.b.x)), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(10799u, u_input.b.x, u_input.b.x, 0u), vec4<u32>(u_input.b.x, 1u, u_input.b.x, 30841u)))), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x) ^ vec4<u32>(u_input.b.x, 4294967295u, 1u, 8673u)), 1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, u_input.b.x), _wgslsmith_mod_vec2_u32(u_input.b, ~u_input.b))), _wgslsmith_f_op_f32(trunc(global2.a)), vec2<i32>(-71922i, 2147483647i), ~vec3<u32>((u_input.b.x >> (20487u % 32u)) | (u_input.b.x << (u_input.b.x % 32u)), _wgslsmith_add_u32(1u, 1u), ~(~0u)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_2) -> vec3<f32> {
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(arg_3.a.b * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(arg_1.x)), -979f))) != _wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global2.a)))))), !any(select(vec2<bool>(true, global1[_wgslsmith_index_u32(arg_2, 18u)]), vec2<bool>(false, true), true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_1 + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1738f), _wgslsmith_f_op_f32(f32(-1f) * -1103f)) * arg_0))));
    var var_2 = firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(~arg_3.d.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 8019u, u_input.b.x, arg_2), vec4<u32>(11285u, 36860u, arg_2, arg_3.b.d.x)), max(0u, 0u)) & arg_3.d.a.zzz, min(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2, arg_2, u_input.b.x), ~arg_3.a.a.xwz, arg_3.d.d), vec3<u32>(arg_3.a.d.x, max(u_input.b.x, arg_2), ~arg_3.d.a.x)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(786u, 38152u, u_input.b.x), vec3<u32>(1u, arg_3.b.a.x, u_input.b.x)), vec3<u32>(arg_2 | 4294967295u, firstTrailingBit(50536u), 1u), ~vec3<u32>(41924u, 42502u, 0u) & select(vec3<u32>(12253u, 9505u, arg_2), arg_3.a.a.ywz, vec3<bool>(false, true, true)))));
    var var_3 = Struct_3(vec3<bool>(true, all(select(vec2<bool>(global1[_wgslsmith_index_u32(76744u, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)]), vec2<bool>(true, var_0.x), vec2<bool>(true, false))), (~global3.b.x != abs(u_input.a)) | all(vec3<bool>(true, true, global3.c))), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(global3.b.zy, vec2<i32>(~(-9537i), global0[_wgslsmith_index_u32(0u, 24u)])), arg_3.d.c), Struct_2(arg_3.d, Struct_1(vec4<u32>(~var_2.x, 1u, 4294967295u, ~u_input.b.x), arg_1.x, vec2<i32>(min(global3.d, global3.a), 1i), reverseBits(arg_3.b.a.zxw)), firstTrailingBit(abs(vec4<i32>(global3.a, 38680i, arg_3.c.x, 47718i))) | _wgslsmith_div_vec4_i32(global3.b, _wgslsmith_mult_vec4_i32(vec4<i32>(-32398i, -36906i, global0[_wgslsmith_index_u32(56878u, 24u)], arg_3.d.c.x), vec4<i32>(1i, 0i, -1i, -3016i))), arg_3.b), global1[_wgslsmith_index_u32(77229u, 18u)]);
    var var_4 = Struct_4(29869i, vec4<i32>(global0[_wgslsmith_index_u32(arg_2, 24u)], 1i, global0[_wgslsmith_index_u32(arg_2, 24u)], global0[_wgslsmith_index_u32(1u, 24u)]), true, -(~arg_3.a.c.x) & (-12168i | -arg_3.d.c.x));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0, vec3<f32>(arg_0.x, arg_0.x, var_3.c.d.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, global2.a, global2.b)))), _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, global2.b, global2.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, global2.b, -1519f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(447f, global2.b, global2.b), vec3<f32>(global2.b, global2.a, global2.b), false)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, 337f, global2.b) - vec3<f32>(1349f, 521f, global2.a))), reverseBits(u_input.b.x), Struct_2(func_1(), Struct_1(vec4<u32>(27610u, u_input.b.x, 20192u, u_input.b.x), -364f, vec2<i32>(global0[_wgslsmith_index_u32(0u, 24u)], u_input.a), vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)), ~vec4<i32>(global0[_wgslsmith_index_u32(2372u, 24u)], 0i, global3.d, global0[_wgslsmith_index_u32(23490u, 24u)]), Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 27090u), -654f, global3.b.yy, vec3<u32>(36802u, 24877u, u_input.b.x)))))) - vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global2.a, 161f), _wgslsmith_f_op_f32(-global2.b))), _wgslsmith_f_op_f32(f32(-1f) * -309f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-345f * _wgslsmith_f_op_f32(global2.a - 1156f)))));
    var var_1 = ~vec3<i32>(select(-1520i, _wgslsmith_sub_i32(25147i, 6786i), global1[_wgslsmith_index_u32(u_input.b.x & 36659u, 18u)]) >> ((_wgslsmith_dot_vec3_u32(vec3<u32>(15305u, u_input.b.x, u_input.b.x), vec3<u32>(104706u, 75045u, 57213u)) & 1u) % 32u), min(firstTrailingBit(reverseBits(22839i)), abs(global0[_wgslsmith_index_u32(u_input.b.x, 24u)])), select(-2147483647i, _wgslsmith_add_i32(global3.b.x, u_input.a & global0[_wgslsmith_index_u32(u_input.b.x, 24u)]), false));
    let var_2 = ~(~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.b.x, u_input.b.x, 44195u, u_input.b.x)), ~(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 0u) >> (vec4<u32>(u_input.b.x, u_input.b.x, 85307u, 1u) % vec4<u32>(32u)))));
    var var_3 = Struct_1(~vec4<u32>(_wgslsmith_clamp_u32(var_2.x, 4294967295u, var_2.x), var_2.x, 67u, _wgslsmith_mult_u32(0u, var_2.x)), _wgslsmith_f_op_f32(1380f + 1f), vec2<i32>(u_input.a, -(~global0[_wgslsmith_index_u32(2967u, 24u)] | -global0[_wgslsmith_index_u32(var_2.x, 24u)])), ~vec3<u32>(min(_wgslsmith_sub_u32(65926u, 36872u), ~31515u), ~_wgslsmith_div_u32(55190u, var_2.x), ~var_2.x));
    global3 = Struct_4(u_input.a, vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(global3.b, vec4<i32>(-2147483647i, var_3.c.x, -1201i, 16336i) ^ vec4<i32>(global0[_wgslsmith_index_u32(var_2.x, 24u)], global3.a, -1i, var_1.x)), global3.b), u_input.a, _wgslsmith_dot_vec4_i32(-vec4<i32>(-37696i, -2147483647i, -2147483647i, var_3.c.x), -max(vec4<i32>(global3.b.x, 15594i, 0i, 45070i), vec4<i32>(var_1.x, 33231i, -8427i, u_input.a))), var_1.x), !all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(global1[_wgslsmith_index_u32(var_2.x, 18u)], true, global3.c, false), vec4<bool>(false, global3.c, false, global1[_wgslsmith_index_u32(var_2.x, 18u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 18u)], global3.c, global1[_wgslsmith_index_u32(var_2.x, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)])), select(vec4<bool>(true, global3.c, global3.c, global1[_wgslsmith_index_u32(var_2.x, 18u)]), vec4<bool>(false, global3.c, true, global1[_wgslsmith_index_u32(u_input.b.x, 18u)]), false))), abs(func_1().c.x));
    let x = u_input.a;
    s_output = StorageBuffer(-2398f, vec2<f32>(-352f, var_3.b), reverseBits(_wgslsmith_dot_vec2_u32(select(vec2<u32>(var_2.x, var_3.a.x), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, var_3.d.x), u_input.b), !vec2<bool>(global3.c, true)), ~(~var_2.yy))), -1048f);
}

