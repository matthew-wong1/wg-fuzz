struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<f32>(376f, -900f)));

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec2<f32>(-264f, 524f)), Struct_1(vec2<f32>(748f, 526f)), Struct_1(vec2<f32>(-386f, -571f)), Struct_1(vec2<f32>(-1399f, 842f)), Struct_1(vec2<f32>(-107f, -905f)), Struct_1(vec2<f32>(-317f, -568f)), Struct_1(vec2<f32>(1000f, -922f)));

var<private> global2: vec4<u32>;

var<private> global3: f32 = 140f;

var<private> global4: array<f32, 9>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2) -> vec2<f32> {
    let var_0 = vec2<i32>(_wgslsmith_mod_i32(u_input.d, 69621i), -35132i);
    global0 = array<Struct_1, 1>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -644f) - _wgslsmith_f_op_f32(488f * arg_0.a.a.x)), _wgslsmith_f_op_f32(-1053f * 1f))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(~(~u_input.a), ~47373u), 1u, max(u_input.a & _wgslsmith_mult_u32(u_input.a, global2.x), abs(8186u))), 1u, ~countOneBits(1u)), 1u)];
    var var_3 = reverseBits(~countOneBits(min(-vec2<i32>(-90365i, -2147483647i), select(vec2<i32>(1i, u_input.b), var_0, arg_0.b.xy))));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(21342u, 9u)] - var_2.a.x)), _wgslsmith_f_op_f32(round(arg_0.a.a.x)))));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    global0 = array<Struct_1, 1>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(arg_1.a.a)));
    global1 = array<Struct_1, 7>();
    global2 = ~vec4<u32>(0u, u_input.a, 22442u, 58759u);
    var var_1 = _wgslsmith_f_op_f32(min(-1307f, -445f));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1.d.a, vec2<f32>(var_0.a.x, 664f), false)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(var_0.a), vec4<bool>(false, arg_1.b.x, arg_1.b.x, arg_1.b.x), arg_1.d.a.x, Struct_1(vec2<f32>(global4[_wgslsmith_index_u32(4294967295u, 9u)], arg_0))))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.d.a.x, -395f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.a.a + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1481f, -317f) - arg_1.a.a)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1408f);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-238f, global4[_wgslsmith_index_u32(u_input.a, 9u)]) + vec2<f32>(global4[_wgslsmith_index_u32(global2.x, 9u)], global4[_wgslsmith_index_u32(11327u, 9u)])) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1247f, global4[_wgslsmith_index_u32(global2.x, 9u)]) + vec2<f32>(697f, global4[_wgslsmith_index_u32(4294967295u, 9u)]))))), vec4<bool>(!(arg_1.x <= _wgslsmith_mod_i32(-2147483647i, -1i)), global4[_wgslsmith_index_u32(~global2.x, 9u)] >= 1006f, !((-2262i & u_input.c.x) <= -15277i), true), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 9u)]), Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(global2.x, 9u)], global4[_wgslsmith_index_u32(3071u, 9u)]))), vec2<f32>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(12993u, 9u)] - -1699f), 802f)))));
    let var_2 = func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.d.a.x - var_1.d.a.x))), Struct_2(Struct_1(var_1.a.a), !(!select(arg_0, vec4<bool>(true, arg_0.x, var_1.b.x, var_1.b.x), vec4<bool>(var_1.b.x, false, true, arg_0.x))), var_1.a.a.x, Struct_1(var_1.d.a)));
    let var_3 = _wgslsmith_f_op_f32(floor(var_2.a.x));
    var var_4 = var_1.c;
    return !select(vec4<bool>(true, var_1.b.x, arg_0.x, true), !var_1.b, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~0u;
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(~0u >> (~firstTrailingBit(countOneBits(var_0)) % 32u), 7u)], select(select(vec4<bool>(true, false, global4[_wgslsmith_index_u32(var_0, 9u)] < 145f, true), !func_1(vec4<bool>(false, false, false, false), vec3<i32>(u_input.c.x, u_input.b, 0i)), select(false, true, select(true, false, false))), !vec4<bool>(true, true, func_1(vec4<bool>(true, true, false, true), vec3<i32>(-17532i, u_input.d, -2147483647i)).x, true), !select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, true, true, true), func_1(vec4<bool>(false, true, false, false), vec3<i32>(-2147483647i, u_input.b, -1i)))), global4[_wgslsmith_index_u32(79974u, 9u)], Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(global2.x, 9u)], _wgslsmith_f_op_f32(max(923f, global4[_wgslsmith_index_u32(1u, 9u)])))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(var_0, 9u)] * 1447f))))));
    var var_2 = Struct_2(func_2(_wgslsmith_f_op_f32(select(func_2(1000f, Struct_2(Struct_1(vec2<f32>(global4[_wgslsmith_index_u32(var_0, 9u)], var_1.c)), vec4<bool>(var_1.b.x, false, var_1.b.x, var_1.b.x), var_1.d.a.x, global0[_wgslsmith_index_u32(13628u, 1u)])).a.x, -360f, !(false && var_1.b.x))), Struct_2(func_2(_wgslsmith_f_op_f32(max(var_1.c, global4[_wgslsmith_index_u32(1u, 9u)])), Struct_2(Struct_1(var_1.a.a), vec4<bool>(true, var_1.b.x, false, false), -1089f, Struct_1(vec2<f32>(988f, var_1.a.a.x)))), var_1.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1545f * global4[_wgslsmith_index_u32(1111u, 9u)]))), var_1.d)), !select(!vec4<bool>(false, var_1.b.x, false, true), var_1.b, all(func_1(vec4<bool>(var_1.b.x, false, var_1.b.x, var_1.b.x), vec3<i32>(u_input.b, 1i, u_input.c.x)).ww)), -362f, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(global0[_wgslsmith_index_u32(1u, 1u)], var_1.b, var_1.c, Struct_1(var_1.a.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.d.a.x, -117f))) + _wgslsmith_f_op_vec2_f32(-var_1.a.a)))));
    global2 = vec4<u32>(72773u, global2.x, 7506u, global2.x);
    global4 = array<f32, 9>();
    var var_3 = true;
    var var_4 = reverseBits(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.c.x, u_input.d, u_input.c.x, u_input.b), -vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b)) >> (abs(~vec4<u32>(28270u, 11598u, u_input.a, 36975u)) % vec4<u32>(32u)), min(select(vec4<i32>(u_input.c.x, u_input.b, -3551i, 0i) & vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.d), countOneBits(vec4<i32>(u_input.c.x, -48059i, 2147483647i, u_input.c.x)), var_1.b), select(abs(vec4<i32>(u_input.d, -2147483647i, u_input.d, 2147483647i)), vec4<i32>(u_input.b, -1i, u_input.c.x, u_input.b) ^ vec4<i32>(u_input.c.x, u_input.b, 60721i, u_input.d), var_1.b.x))));
    let var_5 = _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(var_0, 9u)]);
    var_1 = Struct_2(func_2(global4[_wgslsmith_index_u32(global2.x, 9u)], Struct_2(func_2(_wgslsmith_f_op_f32(min(1679f, var_1.d.a.x)), Struct_2(Struct_1(vec2<f32>(global4[_wgslsmith_index_u32(1980u, 9u)], 1946f)), var_1.b, 189f, Struct_1(vec2<f32>(var_1.d.a.x, var_2.d.a.x)))), select(var_2.b, !var_2.b, var_2.b), -1137f, global1[_wgslsmith_index_u32(94522u, 7u)])), vec4<bool>(any(func_1(!var_1.b, -var_4.zzz).zyx), true, true, select(all(vec4<bool>(var_2.b.x, var_1.b.x, var_2.b.x, var_1.b.x)), all(!vec2<bool>(var_2.b.x, false)), true)), -137f, var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(global2.xz), var_4.x & min(-2147483647i, u_input.c.x), -1i, _wgslsmith_mod_vec4_u32(max(~(~vec4<u32>(0u, var_0, 1u, u_input.a)), _wgslsmith_div_vec4_u32(~vec4<u32>(2293u, global2.x, u_input.a, 4294967295u), ~vec4<u32>(1u, 0u, 13271u, var_0))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(5465u, 4294967295u, global2.x, 0u), vec4<u32>(4294967295u, 0u, 1u, var_0))));
}

