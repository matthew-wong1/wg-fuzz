struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec2<bool>, 1>;

var<private> global2: array<f32, 16> = array<f32, 16>(1826f, -817f, -873f, -1518f, 735f, -520f, -1448f, -663f, 1285f, -934f, -2103f, -1351f, -126f, 1089f, 489f, 478f);

var<private> global3: Struct_2 = Struct_2(Struct_1(26910i, vec2<i32>(-1i, -1i), 1137f), vec4<f32>(558f, -572f, -869f, -945f), 101f, vec2<u32>(10591u, 37167u), Struct_1(2147483647i, vec2<i32>(0i, -6496i), -160f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<i32>) -> vec4<f32> {
    let var_0 = -363f;
    let var_1 = all(global1[_wgslsmith_index_u32(4294967295u, 1u)]);
    global0 = Struct_3(var_1);
    global0 = Struct_3(all(select(select(!vec4<bool>(global0.a, false, global0.a, true), !vec4<bool>(global0.a, global0.a, global0.a, var_1), any(global1[_wgslsmith_index_u32(63430u, 1u)])), vec4<bool>(true, any(vec2<bool>(var_1, false)), false, !var_1), select(!vec4<bool>(true, global0.a, true, false), vec4<bool>(var_1, true, true, global0.a), !vec4<bool>(false, false, true, global0.a)))));
    global3 = Struct_2(Struct_1(select(reverseBits(~(-33198i)), max(54477i, -1i), true), max(firstTrailingBit(global3.e.b), ~arg_0.yx), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1052f, 269f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1000f, -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(4294967295u, 16u)])), _wgslsmith_f_op_f32(global3.e.c + 1799f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_0, global3.e.c)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(15562u, 16u)] + global3.c), var_0)))), -1665f, abs(global3.d), global3.a);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-182f, global2[_wgslsmith_index_u32(4294967295u, 16u)], 248f, -284f) * global3.b), _wgslsmith_f_op_vec4_f32(-global3.b)), global3.b)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: vec4<f32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x))));
    let var_1 = abs(global3.a.b) >> (vec2<u32>(global3.d.x << (1u % 32u), ~u_input.d.x) % vec2<u32>(32u));
    var var_2 = Struct_4(Struct_2(global3.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -606f, arg_1.x, -844f) * global3.b))), _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, global3.d.x) & ~global3.d.x, 16u)], _wgslsmith_f_op_f32(1921f + arg_2.x), true)), vec2<u32>(5688u, _wgslsmith_sub_u32(0u, u_input.b)), global3.a), Struct_2(global3.a, _wgslsmith_f_op_vec4_f32(func_3(firstTrailingBit(vec4<i32>(-9309i, global3.e.a, u_input.a, var_1.x)) ^ (vec4<i32>(2147483647i, 0i, 23868i, global3.a.a) ^ vec4<i32>(u_input.c, var_1.x, 0i, 11304i)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(403f + -559f), _wgslsmith_f_op_f32(-2099f - global3.c)))), global3.d, Struct_1(global3.a.a, ~vec2<i32>(global3.a.b.x, u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.e.c) - global3.a.c))));
    var var_3 = Struct_2(global3.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(56275u, 16u)], _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_3(vec4<i32>(-13287i, global3.e.a, 0i, -68669i))).x, _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(global3.d.x, 16u)], arg_2.x))), 1341f, var_2.b.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(0u, 16u)])), global3.a.c), vec2<u32>(~global3.d.x, _wgslsmith_sub_u32(80443u, 24124u) | ~var_2.b.d.x) << (_wgslsmith_sub_vec2_u32(var_2.a.d, _wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(global3.d.x, 43472u)), vec2<u32>(u_input.b, 0u) ^ global3.d)) % vec2<u32>(32u)), Struct_1(global3.e.a, vec2<i32>(~(-1i), 1i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.a.c)) - _wgslsmith_f_op_f32(1954f * arg_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(464f)), -658f)))));
    var_3 = Struct_2(var_3.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 16u)]), _wgslsmith_div_f32(-1213f, var_2.b.c), var_2.a.a.c, _wgslsmith_f_op_f32(1001f - 1723f))))), _wgslsmith_f_op_f32(-arg_1.x), ~_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(var_2.b.d.x, var_3.d.x, 1u), 40064u), _wgslsmith_add_vec2_u32(~vec2<u32>(var_3.d.x, global3.d.x), global3.d)), Struct_1(global3.e.b.x, vec2<i32>(abs(1i), u_input.c), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.a.a, -36287i, global3.a.a, var_2.b.e.b.x), firstTrailingBit(vec4<i32>(21037i, u_input.e, var_2.b.a.a, var_3.a.a)), ~vec4<i32>(2147483647i, u_input.c, var_2.b.e.a, -2147483647i)))).x));
    return Struct_4(var_2.b, Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(var_1, var_3.e.b), ~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, 0i), global3.e.b), _wgslsmith_f_op_vec4_f32(func_3(select(vec4<i32>(var_3.e.a, 1i, var_1.x, -1i), vec4<i32>(u_input.a, var_3.e.a, global3.e.a, var_1.x), vec4<bool>(global0.a, false, arg_0.x, arg_0.x)))).x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_3.b + var_2.a.b), _wgslsmith_f_op_vec4_f32(-arg_2), global0.a)), _wgslsmith_f_op_f32(sign(arg_1.x)), countOneBits(vec2<u32>(_wgslsmith_mult_u32(4294967295u, global3.d.x), _wgslsmith_dot_vec3_u32(u_input.d, u_input.d))), Struct_1(var_3.e.b.x, global3.e.b, global3.e.c)));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>) -> u32 {
    let var_0 = select(!(!(!select(vec3<bool>(global0.a, false, global0.a), vec3<bool>(global0.a, global0.a, true), vec3<bool>(true, false, true)))), select(select(!vec3<bool>(true, global0.a, false), select(select(vec3<bool>(global0.a, true, global0.a), vec3<bool>(global0.a, true, true), vec3<bool>(false, global0.a, global0.a)), select(vec3<bool>(global0.a, global0.a, global0.a), vec3<bool>(true, false, true), vec3<bool>(global0.a, true, false)), true), false), !select(select(vec3<bool>(global0.a, false, global0.a), vec3<bool>(global0.a, global0.a, global0.a), true), !vec3<bool>(global0.a, true, false), select(global0.a, false, false)), !select(select(vec3<bool>(true, true, false), vec3<bool>(global0.a, true, global0.a), global0.a), vec3<bool>(false, true, global0.a), vec3<bool>(true, global0.a, global0.a))), select(vec3<bool>(global0.a, any(!vec3<bool>(false, global0.a, false)), global3.d.x > 17663u), select(vec3<bool>(global3.a.b.x >= -213i, any(vec4<bool>(false, global0.a, global0.a, true)), true), vec3<bool>(global0.a, any(vec2<bool>(global0.a, global0.a)), any(vec4<bool>(true, false, global0.a, true))), vec3<bool>(!global0.a, true, global0.a)), select(select(!vec3<bool>(false, global0.a, global0.a), select(vec3<bool>(global0.a, false, global0.a), vec3<bool>(global0.a, true, false), global0.a), global0.a), select(!vec3<bool>(global0.a, global0.a, false), vec3<bool>(false, global0.a, global0.a), vec3<bool>(global0.a, global0.a, true)), !select(vec3<bool>(true, global0.a, true), vec3<bool>(true, true, true), global0.a))));
    let var_1 = select(vec3<bool>(all(vec4<bool>(false, true, global0.a, var_0.x)) & global0.a, any(var_0), -1442f < _wgslsmith_f_op_f32(-global3.b.x)), vec3<bool>(false, true, all(vec2<bool>(true, arg_1.x > arg_1.x))), all(vec4<bool>(true, false, (global3.d.x >> (19056u % 32u)) < (arg_0.b.d.x | 75832u), any(var_0))));
    global0 = Struct_3(!global0.a || true);
    let var_2 = ~(~46778u);
    var var_3 = ~(~(~vec2<i32>(_wgslsmith_mod_i32(4160i, 28137i), _wgslsmith_add_i32(global3.a.b.x, arg_0.b.a.a))));
    return min(global3.d.x >> (global3.d.x % 32u), abs(~4294967295u));
}

fn func_1() -> Struct_2 {
    var var_0 = true;
    let var_1 = Struct_1(global3.e.b.x, countOneBits(global3.a.b), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1047f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 16u)]))), global2[_wgslsmith_index_u32(~1u, 16u)]), global3.b.x));
    global1 = array<vec2<bool>, 1>();
    let var_2 = var_1;
    var var_3 = -vec4<i32>(global3.a.b.x, var_1.a, 0i << (func_4(func_2(vec3<bool>(false, global0.a, global0.a), global3.b.zw, vec4<f32>(1427f, -301f, 314f, global2[_wgslsmith_index_u32(u_input.b, 16u)])), _wgslsmith_div_vec2_f32(global3.b.wz, global3.b.zw)) % 32u), 0i);
    return func_2(vec3<bool>(true, true | (countOneBits(13652u) == u_input.b), false), vec2<f32>(var_2.c, _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(u_input.d.x, 16u)]))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.b * vec4<f32>(1285f, global3.b.x, var_2.c, -219f)), global3.b)))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(abs(_wgslsmith_add_i32(_wgslsmith_add_i32(global3.e.a, select(-2147483647i, global3.e.a, true)), _wgslsmith_sub_i32(17647i, -28301i))), -min(1i, _wgslsmith_add_i32(u_input.e, 10048i)), _wgslsmith_sub_i32(~(~global3.a.b.x), ~(1i ^ select(17691i, u_input.c, global0.a))));
    let var_1 = func_1();
    let var_2 = var_1.b;
    var var_3 = Struct_5(Struct_3(any(vec3<bool>(u_input.d.x > var_1.d.x, all(vec4<bool>(global0.a, global0.a, global0.a, global0.a)), any(vec4<bool>(global0.a, global0.a, false, global0.a))))), func_1(), func_1().a, max(46305u, firstLeadingBit(abs(32000u))));
    var_0 = max(-vec3<i32>(-var_3.b.a.a, 16166i, var_3.b.a.b.x), vec3<i32>(i32(-1i) * -abs(0i), _wgslsmith_mod_i32(var_1.e.b.x, max(var_3.c.b.x, -9964i) | -u_input.e), var_3.c.a));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 16u)], -1000f, var_1.a.c))))), var_3.b.b.wyy)) * var_2.wzw);
    var var_5 = Struct_1(var_1.e.a, -(vec2<i32>(~2147483647i, _wgslsmith_sub_i32(u_input.a, var_1.a.b.x)) << (vec2<u32>(~36685u, var_1.d.x) % vec2<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.b.e.c * var_4.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(827f))))));
    var var_6 = _wgslsmith_sub_u32(~countOneBits(26089u), _wgslsmith_div_u32(abs(37987u), global3.d.x));
    let var_7 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, vec2<u32>(~4294967295u, 4294967295u), ~(~(~(-15594i))), 1456f);
}

