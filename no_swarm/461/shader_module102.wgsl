struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: bool,
    d: i32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3> = array<f32, 3>(-298f, 544f, 366f);

var<private> global1: array<vec3<bool>, 31>;

var<private> global2: array<Struct_1, 3>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    let var_0 = Struct_2(arg_0, 96886u, any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false)), true)), u_input.e, abs(_wgslsmith_mult_vec4_u32(firstTrailingBit(~vec4<u32>(94173u, u_input.d, u_input.c, u_input.d)), select(~vec4<u32>(u_input.b, u_input.d, u_input.c, 58878u), vec4<u32>(0u, u_input.d, u_input.c, 4294967295u), true))));
    global2 = array<Struct_1, 3>();
    global2 = array<Struct_1, 3>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(max(~(~12323u), ~var_0.e.x << (select(4294967295u, 1u, true) % 32u)) >> (select(var_0.e.x, ~u_input.b, var_0.c) % 32u), firstTrailingBit(5473u), u_input.b), 3u)];
    var var_2 = ~(~((4294967295u & var_0.e.x) >> (~u_input.b % 32u))) != firstTrailingBit(u_input.d);
    return 32252u;
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    global2 = array<Struct_1, 3>();
    global0 = array<f32, 3>();
    var var_0 = Struct_2(-vec2<i32>(_wgslsmith_div_i32(max(2147483647i, u_input.e), 1i), _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.e, -71620i), ~(-84525i))), 0u, false, u_input.e ^ -u_input.a.x, vec4<u32>(arg_0.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(1u, u_input.d, u_input.d, 15539u)), ~vec4<u32>(u_input.d, arg_0.x, u_input.d, 22543u)), select(vec4<u32>(u_input.b, u_input.c, 1u, u_input.c) << (vec4<u32>(1u, 1u, 4294967295u, u_input.b) % vec4<u32>(32u)), vec4<u32>(arg_0.x, 0u, 6861u, 21091u), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)))), (~u_input.b << (u_input.d % 32u)) & countOneBits(18434u), ~select(arg_0.x, _wgslsmith_clamp_u32(u_input.d, arg_0.x, u_input.d), true)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(min(6153u, 58146u), 3u)])))) * global0[_wgslsmith_index_u32(arg_0.x, 3u)]);
    var_0 = Struct_2(_wgslsmith_sub_vec2_i32(var_0.a, u_input.a.yz), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(51805u, var_0.e.x, 16682u, 14963u), ~select(vec4<u32>(56001u, 6445u, arg_0.x, var_0.e.x), var_0.e, vec4<bool>(false, true, var_0.c, false))), var_0.c, 45474i, _wgslsmith_add_vec4_u32(~(~firstLeadingBit(vec4<u32>(var_0.b, 0u, arg_0.x, 4294967295u))), var_0.e));
    return Struct_2(-vec2<i32>(-3094i, u_input.a.x), _wgslsmith_clamp_u32(~(~countOneBits(var_0.e.x)), ~arg_0.x, ~4294967295u), true, -abs(var_0.a.x) ^ u_input.e, firstLeadingBit(reverseBits(vec4<u32>(var_0.b, u_input.d, func_3(vec2<i32>(var_0.d, -2147483647i)), abs(var_0.b)))));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-392f)), global0[_wgslsmith_index_u32(abs(~1u), 3u)]));
    let var_1 = func_2(vec2<u32>(u_input.d, ~0u));
    let var_2 = Struct_1(arg_2.e.yy, select(firstTrailingBit(vec3<u32>(var_1.b, arg_2.e.x, u_input.c)), _wgslsmith_add_vec3_u32(vec3<u32>(func_3(var_1.a), abs(arg_2.e.x), _wgslsmith_mult_u32(63094u, u_input.c)), vec3<u32>(u_input.d, 0u, ~1u)), select(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~68922u, arg_2.e.x), 31u)], select(vec3<bool>(arg_2.c, var_1.c, false), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_1.e.xzz, vec3<u32>(u_input.c, u_input.d, 66918u)), 31u)], true), global1[_wgslsmith_index_u32(~(~1u), 31u)])));
    global1 = array<vec3<bool>, 31>();
    global0 = array<f32, 3>();
    return func_2(_wgslsmith_mult_vec2_u32(arg_2.e.yx, ~(~vec2<u32>(14258u, var_1.b))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_sub_u32(arg_0.b, arg_0.e.x);
    var var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(~(u_input.a | vec4<i32>(2147483647i, arg_0.d, arg_0.d, 2147483647i)), u_input.a) ^ arg_0.a.x, arg_0.d, 9749i, ~6509i);
    var var_2 = arg_0.e.xw;
    var var_3 = func_4(1i, 0i, func_4(func_4(arg_0.d, arg_0.d, func_2(arg_0.e.wx)).d ^ u_input.a.x, abs(~_wgslsmith_add_i32(2147483647i, u_input.a.x)), arg_0));
    let var_4 = func_4(u_input.e, -1i, func_4(reverseBits(select(arg_0.d, var_3.a.x, false) ^ min(-1i, -2147483647i)), ~(-2147483647i | arg_0.d), func_4(u_input.a.x, 0i, arg_0))).a;
    return global2[_wgslsmith_index_u32(4294967295u, 3u)];
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_sub_vec2_i32(~u_input.a.zz, ~u_input.a.wz >> (_wgslsmith_mod_vec2_u32(arg_0.a, _wgslsmith_mod_vec2_u32(arg_0.b.zx, vec2<u32>(0u, 70723u))) % vec2<u32>(32u))), countOneBits(~_wgslsmith_mod_u32(18410u, 10411u)), true, _wgslsmith_dot_vec2_i32(u_input.a.wz, u_input.a.zw), vec4<u32>(func_2(vec2<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.b.x), vec2<u32>(79890u, u_input.b)))).b, ~0u, 0u, arg_0.a.x));
    global0 = array<f32, 3>();
    let var_1 = func_5(func_4(44087i, 0i, Struct_2(vec2<i32>(countOneBits(u_input.a.x), var_0.d | arg_1), _wgslsmith_sub_u32(func_3(var_0.a), var_0.e.x), func_2(vec2<u32>(u_input.d, 1u)).c, _wgslsmith_div_i32(13049i, _wgslsmith_div_i32(u_input.e, var_0.d)), ~(var_0.e ^ var_0.e))), vec4<f32>(_wgslsmith_div_f32(-310f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(13272u, 3u)]))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1870f - -296f), 1694f)), 676f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x * 354f), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(62366u, 3u)], arg_2.x))))));
    let var_2 = var_0;
    global2 = array<Struct_1, 3>();
    return var_2;
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> i32 {
    global1 = array<vec3<bool>, 31>();
    let var_0 = func_6(func_5(func_4(-25689i, _wgslsmith_mult_i32(-12519i, 16046i), func_2(vec2<u32>(u_input.d, u_input.c))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 3u)] * global0[_wgslsmith_index_u32(arg_0.a.x, 3u)]))), global0[_wgslsmith_index_u32(func_2(arg_0.b.yx).b, 3u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~arg_0.a.x, 3u)] - _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(1u, 3u)]))), -1357f)), 64517i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(430f, -1000f, 634f), vec3<f32>(768f, -698f, global0[_wgslsmith_index_u32(arg_0.b.x, 3u)]))))), _wgslsmith_div_vec3_f32(vec3<f32>(807f, global0[_wgslsmith_index_u32(arg_1, 3u)], global0[_wgslsmith_index_u32(arg_0.b.x, 3u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(-997f, 1000f, -1504f) + vec3<f32>(global0[_wgslsmith_index_u32(arg_0.b.x, 3u)], 302f, global0[_wgslsmith_index_u32(0u, 3u)]))), select(global1[_wgslsmith_index_u32(~4294967295u, 31u)], vec3<bool>(true, true, true), vec3<bool>(true, true, true))))));
    var var_1 = arg_0;
    var var_2 = -2147483647i;
    var var_3 = _wgslsmith_mod_i32(0i, u_input.a.x);
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~firstTrailingBit(44378u), ~55190u, min(_wgslsmith_div_u32(1u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.b, u_input.d)) % 32u), (u_input.b & 93434u) >> (1355u % 32u)), 0u));
    global2 = array<Struct_1, 3>();
    var var_1 = -41783i;
    var_1 = func_1(Struct_1(vec2<u32>(firstTrailingBit(abs(var_0.x)), var_0.x), vec3<u32>(var_0.x, _wgslsmith_mult_u32(4294967295u, 0u), ~4294967295u) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_0.x, u_input.b), ~vec3<u32>(u_input.d, 4294967295u, var_0.x)) % vec3<u32>(32u))), ~u_input.b);
    let var_2 = func_6(Struct_1(reverseBits(vec2<u32>(firstLeadingBit(u_input.c), _wgslsmith_clamp_u32(8878u, 0u, u_input.b))), ~(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.c, u_input.d), vec3<u32>(53666u, 0u, 11295u)) | _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, u_input.c, u_input.d), vec3<u32>(u_input.b, 0u, u_input.b)))), 1i, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b, 3u)], 1657f) + 1159f), global0[_wgslsmith_index_u32(var_0.x, 3u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -938f)), global0[_wgslsmith_index_u32(select(0u, 1u, false), 3u)]));
    global1 = array<vec3<bool>, 31>();
    let var_3 = _wgslsmith_dot_vec4_u32(var_2.e, vec4<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b, 32803u, var_0.x, 0u), vec4<u32>(60692u, 0u, var_0.x, 0u))), 58710u, ~_wgslsmith_dot_vec2_u32(~var_0.zz, var_0.xy), _wgslsmith_add_u32(var_2.b, 23390u)));
    var_1 = i32(-1i) * -1i;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_mult_i32(~var_2.d, i32(-1i) * -36834i), firstLeadingBit(42547i >> (u_input.d % 32u)))), ~var_0.xx, var_3, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(30363u, 3u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(-360f, 1527f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(692f + global0[_wgslsmith_index_u32(u_input.c, 3u)])))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(63754u, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)], 253f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(var_2.e.x, 3u)], global0[_wgslsmith_index_u32(var_2.b, 3u)], global0[_wgslsmith_index_u32(u_input.d, 3u)])) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0[_wgslsmith_index_u32(var_2.e.x, 3u)], -300f, 1889f)))), select(select(global1[_wgslsmith_index_u32(0u, 31u)], vec3<bool>(var_2.c, var_2.c, false), var_2.c), select(vec3<bool>(true, var_2.c, var_2.c), vec3<bool>(false, var_2.c, false), vec3<bool>(var_2.c, var_2.c, var_2.c)), func_6(Struct_1(var_2.e.yz, var_2.e.zwy), u_input.a.x, vec3<f32>(-393f, 445f, global0[_wgslsmith_index_u32(u_input.d, 3u)])).c)))));
}

