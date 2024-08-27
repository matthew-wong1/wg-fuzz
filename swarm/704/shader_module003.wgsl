struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(0i, i32(-2147483648), -26946i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -41330i, 52646i, i32(-2147483648)));

var<private> global1: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_3) -> u32 {
    var var_0 = arg_0.b.c.x;
    var var_1 = abs(reverseBits(arg_1.zy));
    let var_2 = -2397f;
    var var_3 = arg_2.a.b.c.zw;
    var_1 = vec2<u32>(min(arg_2.a.b.b, _wgslsmith_sub_u32(~1u, ~select(var_1.x, 1u, true))), _wgslsmith_mod_u32(arg_2.a.b.a.x, 7677u));
    return 24022u;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_4) -> vec4<f32> {
    let var_0 = min(arg_3.b.a.b.b, func_3(Struct_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.a.a.x, arg_3.b.a.a.x, 467f, arg_0.a.a.x))), arg_1, select(!arg_0.a.d, select(vec4<bool>(true, arg_3.b.a.c.x, arg_0.a.c.x, true), vec4<bool>(false, true, false, arg_0.a.d.x), vec4<bool>(arg_0.a.c.x, false, arg_0.a.d.x, false)), true), !arg_3.b.a.c), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.a.b.a.x ^ u_input.a, 61516u | u_input.a, 24376u), vec3<u32>(1u, max(0u, 10751u), ~arg_2.a.x), ~(~arg_1.a.yyy)), Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-297f, arg_3.c.x, arg_3.c.x, 952f) * vec4<f32>(1000f, 1000f, arg_0.a.a.x, arg_3.c.x)), Struct_1(vec4<u32>(4294967295u, 16915u, 28635u, 106272u), u_input.a, vec4<i32>(51273i, arg_0.b, -15225i, arg_1.c.x)), select(arg_0.a.c, vec4<bool>(arg_3.a.x, true, arg_3.a.x, arg_3.a.x), vec4<bool>(arg_0.a.c.x, arg_3.a.x, arg_3.b.a.d.x, arg_0.a.c.x)), arg_3.a), arg_2.c.x)));
    let var_1 = Struct_1(~vec4<u32>(~29989u, 0u, var_0, _wgslsmith_dot_vec2_u32(arg_3.b.a.b.a.zy, firstTrailingBit(vec2<u32>(23716u, var_0)))), 28857u, ~((firstLeadingBit(arg_2.c) ^ reverseBits(global0[_wgslsmith_index_u32(22002u, 2u)])) >> ((arg_3.b.a.b.a | arg_0.a.b.a) % vec4<u32>(32u))));
    let var_2 = Struct_4(vec4<bool>(select(all(vec2<bool>(false, false)), arg_2.b <= 1u, any(arg_3.b.a.c.wwz)) & all(select(arg_0.a.d.yy, arg_3.b.a.c.ww, arg_0.a.d.x)), true, all(arg_0.a.d), (_wgslsmith_mult_u32(arg_2.b, 1u) == countOneBits(1u)) & false), arg_3.b, arg_0.a.a.xx);
    let var_3 = ~vec4<i32>(~var_1.c.x, 1i, _wgslsmith_mod_i32(select(var_2.b.a.b.c.x, _wgslsmith_sub_i32(arg_3.b.a.b.c.x, 22686i), arg_0.a.d.x || false), arg_2.c.x), 1i);
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_3.b.a.a, arg_0.a.a)));
    return arg_3.b.a.a;
}

fn func_2() -> Struct_3 {
    global0 = array<vec4<i32>, 2>();
    let var_0 = !(!vec4<bool>(select(true, any(vec3<bool>(false, true, false)), true), true, any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)))));
    var var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(~(-reverseBits(-21681i)), -49200i), _wgslsmith_mod_vec2_i32(-vec2<i32>(-49586i, -2147483647i), vec2<i32>(i32(-1i) * -1i, abs(-23469i)) ^ (vec2<i32>(-16523i, 11441i) >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)))));
    var var_2 = countOneBits(~_wgslsmith_mod_vec2_u32(~(~vec2<u32>(u_input.a, 47785u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(1u, 14646u), vec2<u32>(0u, 4294967295u))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(Struct_2(vec4<f32>(-812f, -646f, 1189f, 631f), Struct_1(vec4<u32>(u_input.a, 4294967295u, var_2.x, u_input.a), 42940u, vec4<i32>(-34567i, var_1.x, -2147483647i, 3864i)), var_0, var_0), ~2147483647i), Struct_1(firstLeadingBit(vec4<u32>(57941u, 70554u, 3117u, var_2.x)), func_3(Struct_2(vec4<f32>(1980f, 553f, -2565f, -940f), Struct_1(vec4<u32>(1u, 25979u, var_2.x, u_input.a), 4294967295u, global0[_wgslsmith_index_u32(1u, 2u)]), var_0, vec4<bool>(true, false, true, var_0.x)), vec3<u32>(48418u, u_input.a, 9943u), Struct_3(Struct_2(vec4<f32>(179f, 912f, -620f, 313f), Struct_1(vec4<u32>(8947u, var_2.x, 0u, u_input.a), u_input.a, vec4<i32>(var_1.x, var_1.x, var_1.x, 0i)), var_0, var_0), var_1.x)), vec4<i32>(-51113i, var_1.x, -1i, 17656i)), Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 34774u, 4294967295u, var_2.x), vec4<u32>(var_2.x, 10184u, 60177u, 0u)), select(var_2.x, 1u, true), -vec4<i32>(-2147483647i, var_1.x, -194i, 0i)), Struct_4(var_0, Struct_3(Struct_2(vec4<f32>(447f, -239f, -1000f, -1392f), Struct_1(vec4<u32>(u_input.a, var_2.x, var_2.x, var_2.x), 20692u, global0[_wgslsmith_index_u32(4294967295u, 2u)]), var_0, vec4<bool>(var_0.x, var_0.x, var_0.x, false)), 0i), vec2<f32>(1009f, -1175f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1310f, 1204f, 779f, 1203f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-283f, -653f, -142f, -1342f) + vec4<f32>(-343f, -100f, -199f, -1002f))))), Struct_1(firstLeadingBit(~vec4<u32>(1u, 6441u, 52053u, 0u)), ~var_2.x, select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(71015u, 9595u, 16920u, var_2.x)), 2u)] | (global0[_wgslsmith_index_u32(23591u, 2u)] ^ vec4<i32>(2147483647i, var_1.x, 52829i, var_1.x)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, var_2.x & 26364u), 2u)], vec4<bool>(any(var_0), var_0.x | var_0.x, true, false))), var_0, var_0);
    return Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(143f, var_3.a.x, 1784f, var_3.a.x)) * var_3.a))), Struct_1(var_3.b.a, ~var_3.b.a.x, vec4<i32>(var_1.x, reverseBits(-2147483647i), _wgslsmith_mod_i32(var_3.b.c.x, var_1.x), _wgslsmith_sub_i32(var_3.b.c.x, 26050i))), !var_0, vec4<bool>(select(var_0.x, var_0.x && true, true), true, any(vec3<bool>(var_3.d.x, var_3.d.x, var_3.d.x)), var_3.c.x && !var_3.c.x)), var_3.b.c.x);
}

fn func_5(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_3, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(arg_2.a.a.yzw, arg_3.a.zxy)));
    return func_2().a.b;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32) -> f32 {
    global1 = 34161i;
    let var_0 = (select(-3496i, _wgslsmith_dot_vec2_i32(arg_1.yx, select(vec2<i32>(37252i, arg_0.c.x), vec2<i32>(26950i, arg_2), vec2<bool>(false, true))), !any(vec2<bool>(true, false))) <= arg_0.c.x) != false;
    var var_1 = u_input.a;
    let var_2 = abs(~(select(arg_0.c.yzy, vec3<i32>(arg_2, 1i, -30212i), !vec3<bool>(var_0, var_0, true)) << (countOneBits(_wgslsmith_mult_vec3_u32(arg_0.a.yyx, vec3<u32>(18597u, arg_0.a.x, arg_0.a.x))) % vec3<u32>(32u))));
    let var_3 = func_2();
    return var_3.a.a.x;
}

fn func_1() -> u32 {
    global0 = array<vec4<i32>, 2>();
    var var_0 = 360f;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_6(func_5(~vec2<i32>(-11250i, 11563i), 485f, func_2(), Struct_2(vec4<f32>(-995f, 506f, 848f, -926f), Struct_1(vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u), 0u, vec4<i32>(-19598i, 0i, 1i, 2147483647i)), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true))), global0[_wgslsmith_index_u32(59124u, 2u)], 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-143f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(func_5(vec2<i32>(1i, 1i), _wgslsmith_f_op_f32(select(267f, 1088f, true)), func_2(), Struct_2(vec4<f32>(-794f, 1000f, 431f, -878f), Struct_1(vec4<u32>(42149u, u_input.a, u_input.a, 1u), 4294967295u, vec4<i32>(-35888i, 34427i, 62311i, 1i)), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false))), -abs(global0[_wgslsmith_index_u32(u_input.a, 2u)]), 45327i))), _wgslsmith_f_op_f32(f32(-1f) * -336f));
    var_0 = 1f;
    let var_2 = -8362i;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a >> (_wgslsmith_mod_u32(0u, u_input.a) % 32u), u_input.a), ~(vec2<u32>(64163u, ~u_input.a) << (vec2<u32>(~u_input.a, ~28380u) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1105f)) * -990f)));
    let var_1 = ~(countOneBits(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 62i, -18703i), vec3<i32>(-16023i, 2147483647i, 69753i)), vec3<i32>(-1i, -28975i, -1i), vec3<i32>(25010i, -2147483647i, -2147483647i))) << (vec3<u32>(37128u ^ ~u_input.a, ~(~u_input.a), func_1()) % vec3<u32>(32u)));
    let var_2 = Struct_1(_wgslsmith_sub_vec4_u32(func_2().a.b.a | ~_wgslsmith_mult_vec4_u32(vec4<u32>(24045u, 4294967295u, u_input.a, 0u), vec4<u32>(0u, 4294967295u, u_input.a, u_input.a)), firstTrailingBit(vec4<u32>(func_2().a.b.b, ~1u, func_1(), countOneBits(0u)))), ~(~10601u), global0[_wgslsmith_index_u32(abs(u_input.a), 2u)]);
    let var_3 = Struct_4(select(select(func_2().a.c, vec4<bool>(true, any(vec4<bool>(true, true, false, false)), true, true), var_2.c.x < ~var_1.x), vec4<bool>(all(vec3<bool>(true, true, true)), any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)), false, false), vec4<bool>(true, any(vec4<bool>(false, true, false, false)) | true, (var_2.c.x < 1i) | true, true)), func_2(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-437f, -836f))))))));
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, abs(23232u), ~vec4<u32>(~(37514u | u_input.a), u_input.a, ~24983u, u_input.a), var_3.b.a.b.b);
}

