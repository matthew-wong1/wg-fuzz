struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12> = array<i32, 12>(1i, 2147483647i, -1i, -9465i, i32(-2147483648), -3693i, 35685i, i32(-2147483648), -1i, -39664i, -1i, -40388i);

var<private> global1: Struct_1 = Struct_1(133f, false, vec2<bool>(true, false));

var<private> global2: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(vec2<u32>(1u, 14977u), 1396f), Struct_3(vec2<u32>(1u, 4294967295u), 462f), Struct_3(vec2<u32>(4294967295u, 4294967295u), 256f), Struct_3(vec2<u32>(38687u, 10645u), -427f), Struct_3(vec2<u32>(33794u, 0u), -456f), Struct_3(vec2<u32>(1u, 4294967295u), 655f), Struct_3(vec2<u32>(0u, 1u), 914f), Struct_3(vec2<u32>(4294967295u, 4294967295u), -804f), Struct_3(vec2<u32>(41061u, 37257u), 114f), Struct_3(vec2<u32>(1u, 2262u), -443f), Struct_3(vec2<u32>(1u, 35671u), -378f), Struct_3(vec2<u32>(23851u, 40064u), -155f));

var<private> global3: vec3<i32> = vec3<i32>(i32(-2147483648), -782i, 0i);

var<private> global4: vec3<u32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> Struct_1 {
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(345f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.a - -696f), -537f, global1.b)), true))), false, global1.c);
    var var_0 = global2[_wgslsmith_index_u32(138536u, 12u)];
    var var_1 = select(select(select(!select(vec3<bool>(global1.b, false, global1.b), vec3<bool>(false, false, false), vec3<bool>(global1.b, false, true)), select(!vec3<bool>(false, false, global1.c.x), select(vec3<bool>(global1.c.x, false, false), vec3<bool>(global1.c.x, global1.b, global1.c.x), true), global1.c.x), vec3<bool>(global1.b, true, all(vec4<bool>(true, global1.b, true, global1.c.x)))), vec3<bool>(any(select(vec2<bool>(false, global1.c.x), vec2<bool>(global1.c.x, false), false)), true, global1.c.x), vec3<bool>(global1.b, global1.c.x, !(global1.c.x | false))), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b)) - _wgslsmith_f_op_f32(select(533f, var_0.b, false))) > 309f, true, false), var_0.b < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(671f)))));
    let var_2 = ~(~max(min(firstLeadingBit(u_input.e.x), _wgslsmith_mod_u32(global4.x, global4.x)), ~4294967295u));
    var_0 = global2[_wgslsmith_index_u32(~u_input.e.x >> (~(47886u ^ var_2) % 32u), 12u)];
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a), -1671f, global1.c.x))), -1675f), !(!var_1.x), vec2<bool>(2430f > var_0.b, !var_1.x));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: bool, arg_3: vec3<bool>) -> Struct_1 {
    global2 = array<Struct_3, 12>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.b.a))), 1000f);
    var var_1 = global4.zx;
    let var_2 = Struct_3(vec2<u32>(_wgslsmith_add_u32(~u_input.a.x, firstTrailingBit(_wgslsmith_clamp_u32(u_input.a.x, arg_1.e, 0u))), _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(global4.x, 0u, var_1.x), var_1.x >> (firstLeadingBit(1u) % 32u))), _wgslsmith_f_op_f32(ceil(162f)));
    global1 = Struct_1(global1.a, false, !func_2().c);
    return func_2();
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, global1.a)))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1341f, global1.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(216f, global1.a) + vec2<f32>(global1.a, global1.a)))))), vec2<f32>(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-635f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - global1.a))));
    return Struct_2(func_3(-_wgslsmith_mod_vec4_i32(vec4<i32>(37294i, arg_0, u_input.b, u_input.c), _wgslsmith_sub_vec4_i32(vec4<i32>(global3.x, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], arg_0, 1i), vec4<i32>(2147483647i, 1861i, u_input.b, arg_0))), Struct_2(func_2(), func_2(), 4294967295u, (vec4<i32>(0i, global3.x, 1i, global3.x) & vec4<i32>(global0[_wgslsmith_index_u32(20286u, 12u)], arg_0, arg_0, 2147483647i)) & (vec4<i32>(arg_0, 2147483647i, 2147483647i, -11329i) ^ vec4<i32>(0i, 4721i, 15692i, global0[_wgslsmith_index_u32(1u, 12u)])), 19633u), true, !vec3<bool>(global1.c.x, false, true)), func_3(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -40177i, arg_0, arg_0), _wgslsmith_div_vec4_i32(vec4<i32>(52728i, -2147483647i, 18188i, global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec4<i32>(-1i, arg_0, 28955i, arg_0))) ^ vec4<i32>(global3.x >> (global4.x % 32u), -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, arg_0, u_input.c, arg_0), vec4<i32>(global0[_wgslsmith_index_u32(1u, 12u)], global3.x, arg_0, -21000i)), -1i), Struct_2(func_2(), Struct_1(func_3(vec4<i32>(-2147483647i, u_input.d, 1i, global3.x), Struct_2(Struct_1(369f, true, global1.c), Struct_1(-507f, true, global1.c), u_input.e.x, vec4<i32>(-1i, -25845i, arg_0, global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), 11641u), false, vec3<bool>(false, false, true)).a, global1.b, select(global1.c, global1.c, true)), ~0u, -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, arg_0, global0[_wgslsmith_index_u32(global4.x, 12u)], arg_0), vec4<i32>(-2147483647i, -2147483647i, u_input.c, global3.x), vec4<i32>(12457i, global3.x, global3.x, 0i)), _wgslsmith_clamp_u32(~4294967295u, _wgslsmith_div_u32(23391u, global4.x), _wgslsmith_sub_u32(global4.x, 4294967295u))), !global1.c.x, !select(select(vec3<bool>(global1.b, global1.b, true), vec3<bool>(global1.c.x, false, global1.b), vec3<bool>(global1.b, false, false)), select(vec3<bool>(true, global1.c.x, global1.c.x), vec3<bool>(global1.c.x, false, false), false), select(vec3<bool>(true, global1.b, false), vec3<bool>(global1.b, true, global1.b), global1.c.x))), global4.x, vec4<i32>(abs(_wgslsmith_mod_i32(-1232i, u_input.d)), global0[_wgslsmith_index_u32(~u_input.e.x, 12u)], 8086i, min(global3.x, abs(19258i))) >> (abs(~select(u_input.a, u_input.a, global1.c.x)) % vec4<u32>(32u)), firstLeadingBit(_wgslsmith_clamp_u32(min(_wgslsmith_sub_u32(u_input.e.x, global4.x), ~19139u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 8160u, global4.x), _wgslsmith_div_vec3_u32(vec3<u32>(global4.x, 4294967295u, 4294967295u), vec3<u32>(1u, 73499u, u_input.a.x))), select(u_input.e.x, global4.x, global1.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-2147483647i);
    let var_1 = -174f;
    var var_2 = Struct_3(~(u_input.a.zy >> ((_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e.x, 1u), u_input.e) ^ vec2<u32>(40617u, global4.x)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(1219f * 1478f)))))));
    global1 = Struct_1(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(trunc(1979f))), any(vec2<bool>(!(!global1.c.x), true)), var_0.a.c);
    let var_3 = func_2();
    var_2 = Struct_3(max(~(~var_2.a << (firstTrailingBit(vec2<u32>(u_input.a.x, 6054u)) % vec2<u32>(32u))), ~vec2<u32>(~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.e.x, global4.x), u_input.a.zzz))), -911f);
    let var_4 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1261f, 1055f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a * var_0.b.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-996f, _wgslsmith_f_op_f32(-var_1))), !select(true, !(!global1.b), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-991f, _wgslsmith_f_op_f32(-func_1(-2147483647i).a.a), func_2().a)), vec3<i32>(abs(-43605i), -1i, global0[_wgslsmith_index_u32(var_0.c, 12u)]), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(304f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + _wgslsmith_f_op_f32(trunc(var_1)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, var_4.x))));
}

