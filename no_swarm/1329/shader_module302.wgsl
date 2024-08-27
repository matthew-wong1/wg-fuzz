struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16> = array<f32, 16>(1463f, 392f, -2259f, -434f, -621f, -1159f, -308f, -441f, -1000f, 902f, -528f, -370f, 892f, -935f, -675f, 877f);

var<private> global1: f32;

var<private> global2: array<Struct_2, 20>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: f32) -> f32 {
    global1 = _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(~arg_1.a.a.d.x), _wgslsmith_dot_vec2_u32(arg_1.a.a.d, vec2<u32>(arg_1.a.a.d.x, arg_1.a.a.d.x) >> ((arg_0.d ^ vec2<u32>(arg_1.a.a.d.x, arg_0.d.x)) % vec2<u32>(32u)))), 16u)]));
    var var_0 = _wgslsmith_dot_vec2_u32(~(~min(vec2<u32>(0u, 1u), arg_0.d) >> (arg_0.d % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(select(abs(~vec2<u32>(arg_0.d.x, arg_0.d.x)), abs(arg_1.a.a.d), false), arg_1.a.a.d & reverseBits(vec2<u32>(1u, 1u))));
    let var_1 = 125f;
    let var_2 = arg_1.a.a;
    let var_3 = var_1;
    return _wgslsmith_f_op_f32(var_2.c.x * _wgslsmith_f_op_f32(-415f * arg_1.a.a.c.x));
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_2, arg_3: i32) -> vec4<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1027f), arg_2.a.c.x);
    let var_1 = false;
    let var_2 = arg_2.a.c;
    let var_3 = _wgslsmith_mult_i32(51167i, arg_0.x);
    global1 = arg_1;
    return arg_2.a.b;
}

fn func_2() -> vec2<bool> {
    global0 = array<f32, 16>();
    global2 = array<Struct_2, 20>();
    global0 = array<f32, 16>();
    var var_0 = vec4<bool>(false, u_input.d < reverseBits(reverseBits(~u_input.c.x)), any(func_4(_wgslsmith_add_vec3_i32(-u_input.c, vec3<i32>(u_input.d, 2147483647i, u_input.d) | u_input.c), _wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(false, true, false), vec4<bool>(false, true, true, true), vec3<f32>(275f, 1000f, global0[_wgslsmith_index_u32(14419u, 16u)]), vec2<u32>(u_input.b, 1u)), Struct_4(Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<bool>(true, false, false, false), vec3<f32>(-640f, 1000f, global0[_wgslsmith_index_u32(1u, 16u)]), vec2<u32>(0u, 1u)), true), vec2<bool>(true, true)), 275f)), Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<bool>(true, false, false, false), vec3<f32>(417f, 233f, global0[_wgslsmith_index_u32(36038u, 16u)]), vec2<u32>(209u, 0u)), true), u_input.c.x)), all(select(vec3<bool>(u_input.c.x <= u_input.c.x, false, any(vec3<bool>(false, true, false))), select(vec3<bool>(true, true, true), func_4(vec3<i32>(u_input.d, u_input.d, u_input.c.x), 198f, Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<bool>(false, false, true, true), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(58621u, 16u)], -635f), vec2<u32>(0u, 4294967295u)), false), 22072i).wwy, select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), vec3<bool>(true, true, true))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -597f), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, 31584u), 16u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-877f - global0[_wgslsmith_index_u32(u_input.a, 16u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-201f - global0[_wgslsmith_index_u32(4294967295u, 16u)]))))), -571f, _wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(15745u, 16u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.a, 16u)], global0[_wgslsmith_index_u32(u_input.a, 16u)])))), global0[_wgslsmith_index_u32(u_input.b | (u_input.a << (4294967295u % 32u)), 16u)], _wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(true, true, true), vec4<bool>(var_0.x, true, var_0.x, false), vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 16u)], global0[_wgslsmith_index_u32(20203u, 16u)], global0[_wgslsmith_index_u32(u_input.a, 16u)]), vec2<u32>(u_input.a, u_input.a)), Struct_4(global2[_wgslsmith_index_u32(58798u, 20u)], var_0.zw), -1556f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(58501u, 16u)], -617f, global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(1291u, 16u)]))))))), Struct_1(select(!select(var_0.xyx, var_0.zzx, var_0.x), var_0.wwz, func_4(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, 47360i, u_input.d), u_input.c), _wgslsmith_f_op_f32(-543f + 552f), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, 404u, u_input.a), 20u)], firstLeadingBit(14622i)).wwy), !vec4<bool>(any(var_0.wyy), false, true, true), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1543f, 1035f, -130f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -738f), -317f, global0[_wgslsmith_index_u32(~12845u, 16u)]))), reverseBits(~(vec2<u32>(u_input.b, 1u) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))))));
    return vec2<bool>(var_1.d.a.x, var_1.d.c.x != _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(8925u, 16u)])));
}

fn func_5(arg_0: vec2<bool>) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(1047f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(12640u, 16u)])))));
    var var_0 = Struct_1(vec3<bool>(false, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 51161u, 55776u, u_input.a), vec4<u32>(u_input.a, 1u, 6593u, 18880u)) > (~u_input.b & u_input.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1000f)))) <= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 16u)])), func_4(vec3<i32>(1008i, countOneBits(u_input.d), _wgslsmith_mod_i32(u_input.c.x, 1i) ^ (0i ^ u_input.c.x)), 909f, Struct_2(Struct_1(select(vec3<bool>(true, arg_0.x, true), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), true), select(vec4<bool>(arg_0.x, arg_0.x, true, true), vec4<bool>(false, arg_0.x, arg_0.x, true), vec4<bool>(false, true, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-393f, global0[_wgslsmith_index_u32(u_input.b, 16u)], 533f) * vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 16u)], 1485f, 2767f)), vec2<u32>(u_input.a, 0u)), !(!arg_0.x)), ~u_input.c.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.b, 16u)], global0[_wgslsmith_index_u32(35557u, 16u)])))) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 16u)])), _wgslsmith_f_op_f32(f32(-1f) * -1563f), _wgslsmith_f_op_f32(exp2(1f))), abs(select(~(vec2<u32>(u_input.a, 28253u) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.b, 97550u), countOneBits(vec2<u32>(u_input.b, 4294967295u))), func_4(u_input.c & vec3<i32>(-26352i, -2147483647i, 50897i), -1000f, Struct_2(Struct_1(vec3<bool>(true, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], 489f), vec2<u32>(38593u, u_input.a)), true), ~2147483647i).x)));
    return Struct_1(func_4(select(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(u_input.d, 1i, 57778i)), firstLeadingBit(u_input.c)), ~vec3<i32>(17553i, -1i, 23111i), true), _wgslsmith_f_op_f32(f32(-1f) * -743f), Struct_2(Struct_1(select(vec3<bool>(true, arg_0.x, true), var_0.a, var_0.a), vec4<bool>(true, var_0.b.x, var_0.a.x, arg_0.x), var_0.c, _wgslsmith_add_vec2_u32(var_0.d, vec2<u32>(u_input.a, u_input.b))), true), 16071i).xyz, !func_4(vec3<i32>(u_input.c.x, -73995i, 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-225f))), global2[_wgslsmith_index_u32(1u, 20u)], i32(-1i) * -u_input.d), _wgslsmith_f_op_vec3_f32(var_0.c * var_0.c), var_0.d);
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_3(vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(arg_1, vec2<u32>(arg_1.x, arg_1.x)), arg_1) >> (0u % 32u), 16u)], -295f, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(arg_0) >> (~arg_0 % 32u), 1u), 16u)], -1709f), _wgslsmith_f_op_f32(ceil(-485f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -772f)) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.a, 16u)] + _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(0u, 16u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u | u_input.b, 16u)])), 187f, _wgslsmith_f_op_f32(f32(-1f) * -503f)), func_5(!(!func_2())));
    let var_1 = ~reverseBits(vec3<u32>(0u, arg_1.x, u_input.b));
    var var_2 = Struct_4(global2[_wgslsmith_index_u32(913u, 20u)], !var_0.d.b.xz);
    let var_3 = Struct_4(Struct_2(Struct_1(!func_4(vec3<i32>(u_input.d, -2147483647i, 57695i), global0[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(u_input.b, 20u)], 2147483647i).wxw, vec4<bool>(-880f != global0[_wgslsmith_index_u32(var_2.a.a.d.x, 16u)], false, all(vec3<bool>(var_0.d.b.x, true, var_0.d.a.x)), true), vec3<f32>(_wgslsmith_f_op_f32(1000f * 733f), _wgslsmith_div_f32(var_0.d.c.x, var_2.a.a.c.x), -1314f), ~(var_2.a.a.d << (arg_1 % vec2<u32>(32u)))), var_2.b.x), func_2());
    global1 = -320f;
    return Struct_2(func_5(func_5(!func_4(vec3<i32>(u_input.c.x, -937i, u_input.c.x), -956f, Struct_2(var_0.d, var_0.d.a.x), u_input.d).ww).b.yx), all(!(!var_3.a.a.a)));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: vec2<bool>) -> vec4<f32> {
    global1 = -2712f;
    global0 = array<f32, 16>();
    var var_0 = -abs(firstLeadingBit(u_input.c));
    global0 = array<f32, 16>();
    return _wgslsmith_f_op_vec4_f32(step(arg_1.a, _wgslsmith_f_op_vec4_f32(select(arg_2, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4698u, u_input.a), 16u)], _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(1u, 16u)])), arg_0.a.c.x, _wgslsmith_f_op_f32(sign(arg_2.x))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(40146u, 16u)], arg_2.x, -1737f, 1187f)), arg_2))), !arg_1.d.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 16>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(378f, -1510f)) - vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 16u)], global0[_wgslsmith_index_u32(u_input.a, 16u)]))))));
    global0 = array<f32, 16>();
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1060f)) + var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1169f - 307f))))), -780f);
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_6(func_1(u_input.a, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 431u), vec2<u32>(23420u, 40707u), vec2<u32>(74791u, 0u))), Struct_3(vec4<f32>(124f, -1512f, var_0.x, global0[_wgslsmith_index_u32(4294967295u, 16u)]), _wgslsmith_f_op_f32(1344f + -525f), vec4<f32>(var_0.x, var_0.x, var_0.x, global0[_wgslsmith_index_u32(u_input.a, 16u)]), func_1(87723u, vec2<u32>(48260u, u_input.b)).a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 16u)], var_0.x, global0[_wgslsmith_index_u32(u_input.b, 16u)], 244f)))), vec2<bool>(true, true)))), -1386f, _wgslsmith_div_vec4_f32(vec4<f32>(-333f, 187f, var_0.x, func_1(reverseBits(1u), vec2<u32>(u_input.a, u_input.a)).a.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-868f, var_0.x, -822f, global0[_wgslsmith_index_u32(10093u, 16u)])) - vec4<f32>(1035f, -715f, 464f, 712f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(403f, 173f, var_0.x, 109f), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 16u)], -502f, var_0.x, -317f))))), func_5(func_1(4294967295u, vec2<u32>(~u_input.a, u_input.a)).a.b.yw));
    global0 = array<f32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.c.zx), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.b, 386f), var_1.d.c.x), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), global0[_wgslsmith_index_u32(abs(u_input.a), 16u)]));
}

