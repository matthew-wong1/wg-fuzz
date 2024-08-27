struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(0u, 33476u, 1u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(64419u, 25112u, 4294967295u), vec3<u32>(70602u, 25191u, 7332u), vec3<u32>(23739u, 15277u, 54082u), vec3<u32>(4294967295u, 16769u, 1u), vec3<u32>(4294967295u, 4294967295u, 48027u), vec3<u32>(1u, 45269u, 0u));

var<private> global1: i32;

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<bool>(true, true, true), 0u, 75811u, vec4<bool>(false, false, false, false)), Struct_1(vec3<bool>(false, false, true), 4651u, 1u, vec4<bool>(true, true, true, false)), Struct_1(vec3<bool>(true, true, true), 1u, 61760u, vec4<bool>(true, false, true, false)), Struct_1(vec3<bool>(false, false, false), 4294967295u, 4040u, vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(false, false, false), 1u, 1u, vec4<bool>(false, true, false, true)), Struct_1(vec3<bool>(false, false, true), 0u, 4294967295u, vec4<bool>(true, true, false, false)), Struct_1(vec3<bool>(true, true, true), 1u, 1u, vec4<bool>(true, true, false, false)), Struct_1(vec3<bool>(false, false, false), 47446u, 4294967295u, vec4<bool>(false, false, false, false)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec2<bool> {
    global2 = array<Struct_1, 8>();
    global0 = array<vec3<u32>, 8>();
    let var_0 = vec4<u32>(arg_1.c, ~abs(_wgslsmith_add_u32(arg_1.c, arg_1.c)), _wgslsmith_dot_vec2_u32(abs(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.c, u_input.a.x), vec2<u32>(0u, arg_1.c)), ~vec2<u32>(49754u, 38259u))), _wgslsmith_add_vec2_u32(~vec2<u32>(26725u, arg_1.b) ^ vec2<u32>(arg_1.c, 24779u), ~(~u_input.a))), firstTrailingBit(firstTrailingBit(abs(arg_1.c))));
    global2 = array<Struct_1, 8>();
    return !select(arg_1.a.xz, vec2<bool>(true, arg_1.d.x), select(vec2<bool>(arg_1.a.x, false), select(select(arg_1.d.xw, vec2<bool>(arg_1.a.x, false), arg_1.d.x), vec2<bool>(arg_1.d.x, true), vec2<bool>(true, false)), !(arg_1.b < 1u)));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = !any(arg_2.d.yz);
    let var_1 = arg_2.c;
    let var_2 = Struct_1(!vec3<bool>(false, arg_2.a.x, all(!vec2<bool>(arg_2.d.x, false))), ~(~max(0u, _wgslsmith_dot_vec2_u32(arg_0, u_input.a))), ~4294967295u, vec4<bool>(true, true, true, true));
    global2 = array<Struct_1, 8>();
    global0 = array<vec3<u32>, 8>();
    return Struct_1(vec3<bool>(!(arg_0.x < (31055u << (var_1 % 32u))), arg_2.a.x, true), arg_2.c, ~(~firstTrailingBit(_wgslsmith_mod_u32(var_1, var_1))), !vec4<bool>(arg_2.d.x, any(func_3(arg_3.x, Struct_1(vec3<bool>(arg_2.d.x, arg_2.a.x, arg_2.a.x), 57991u, 0u, vec4<bool>(true, true, true, arg_2.d.x)))), any(var_2.d.xyx), all(var_2.d.yy)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> vec4<f32> {
    let var_0 = !(!select(vec2<bool>(true, arg_0.d.x), !arg_0.d.yw, any(vec3<bool>(arg_0.a.x, arg_0.a.x, false))));
    global2 = array<Struct_1, 8>();
    global2 = array<Struct_1, 8>();
    global1 = -_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-38285i, -14467i), -53756i >> (1u % 32u), 1i, abs(2147483647i)), -vec4<i32>(0i, 50517i, 0i, 15208i)), firstLeadingBit(select(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -1i, -12267i, 1470i), vec4<i32>(-2147483647i, 0i, -589i, 0i)), vec4<i32>(1i, 1i, 1i, 1i), func_2(u_input.a, -731f, Struct_1(vec3<bool>(arg_0.d.x, false, var_0.x), arg_0.c, u_input.a.x, arg_0.d), vec2<i32>(-12534i, 2147483647i)).d)));
    global1 = min(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-7681i, -1i, -796i), vec3<i32>(-22877i, -12873i, 0i), arg_0.d.zzx), vec3<i32>(-2147483647i, -18111i, -9828i)), _wgslsmith_clamp_i32(0i, _wgslsmith_sub_i32(-2147483647i, -2223i), -2147483647i)), vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, 24493i, 17651i), vec4<i32>(2147483647i, -2147483647i, 65125i, 0i)), 9376i | (-1i << (arg_0.b % 32u)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 31637i, -2536i, 2147483647i), vec4<i32>(10142i, -1i, 1i, 1i)), max(vec4<i32>(-7031i, 2147483647i, -7968i, 46419i), vec4<i32>(-2147483647i, 33487i, -10687i, 2147483647i))), -9239i)), -_wgslsmith_clamp_i32(countOneBits(~11328i), _wgslsmith_mult_i32(firstTrailingBit(38072i), -1i), _wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, -24073i, -2147483647i), vec3<i32>(7752i, -833i, 36097i) >> (vec3<u32>(1u, 1u, 0u) % vec3<u32>(32u)))));
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1031f)), arg_1.x, arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-122f - arg_1.x), _wgslsmith_f_op_f32(328f * arg_1.x))) * _wgslsmith_f_op_f32(1226f - _wgslsmith_f_op_f32(-1035f + 114f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(987f, arg_1.x, arg_1.x, arg_1.x) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(660f, -686f, 724f, 1141f), vec4<f32>(798f, 193f, arg_1.x, -372f), var_0.x))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -312f) * 1000f), 246f, 636f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(579f * arg_1.x), -800f, true)))), select(arg_0.d, !vec4<bool>(true, var_0.x, false, all(vec4<bool>(arg_0.d.x, true, false, var_0.x))), vec4<bool>(_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)) > _wgslsmith_f_op_f32(arg_1.x * arg_1.x), var_0.x, !any(arg_0.d.wz), arg_0.a.x))));
}

fn func_5(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -(~_wgslsmith_div_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(6826i, -7730i))), _wgslsmith_sub_vec2_i32(min(vec2<i32>(23964i, 0i), vec2<i32>(-21465i, -11601i)), vec2<i32>(1i, 1i)) << (select(select(arg_1, abs(vec2<u32>(84735u, arg_1.x)), arg_3.a.xz), min(vec2<u32>(u_input.a.x, 1u), min(vec2<u32>(u_input.a.x, arg_1.x), u_input.a)), arg_0) % vec2<u32>(32u)));
    var_0 = ~select(~abs(vec2<i32>(21212i, var_0.x)) & vec2<i32>(_wgslsmith_mult_i32(var_0.x, var_0.x), -var_0.x), abs(vec2<i32>(_wgslsmith_div_i32(var_0.x, var_0.x), 2147483647i)), select(func_2(arg_1, _wgslsmith_f_op_f32(1062f * arg_2.x), global2[_wgslsmith_index_u32(~arg_1.x, 8u)], countOneBits(vec2<i32>(var_0.x, 2147483647i))).a.xx, func_3(var_0.x << (42084u % 32u), Struct_1(vec3<bool>(arg_0, arg_3.a.x, false), arg_1.x, u_input.a.x, vec4<bool>(arg_3.a.x, arg_3.d.x, false, false))), arg_3.a.x));
    var var_1 = Struct_1(func_2(arg_1, _wgslsmith_f_op_f32(arg_2.x - -761f), Struct_1(!arg_3.d.xyz, u_input.a.x, ~arg_3.c, select(select(vec4<bool>(arg_3.d.x, arg_0, true, true), vec4<bool>(arg_3.d.x, false, true, false), arg_3.d), arg_3.d, arg_2.x > arg_2.x)), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(2147483647i, -6120i), select(vec2<i32>(-1i, -2147483647i), vec2<i32>(-61441i, var_0.x), arg_3.d.ww), vec2<i32>(var_0.x, 0i)), -_wgslsmith_div_vec2_i32(vec2<i32>(-36332i, var_0.x), vec2<i32>(var_0.x, var_0.x)))).a, _wgslsmith_div_u32(arg_3.b, _wgslsmith_div_u32(arg_3.b, _wgslsmith_mod_u32(arg_1.x, 13274u)) >> (_wgslsmith_clamp_u32(76482u, arg_3.c, ~arg_1.x) % 32u)), ~u_input.a.x >> (firstTrailingBit(~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)) % 32u), vec4<bool>(false, _wgslsmith_mult_u32(countOneBits(arg_3.b), 4294967295u) <= 1u, !(!(arg_2.x >= 1495f)), select(!(!arg_0), -1665f >= _wgslsmith_f_op_f32(arg_2.x - 571f), true)));
    let var_2 = ~arg_1.x;
    global2 = array<Struct_1, 8>();
    return reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(0i), var_0.x), min(abs(vec2<i32>(var_0.x, -32508i)), vec2<i32>(1i, 1i))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<u32>) -> f32 {
    global1 = -(i32(-1i) * -select(arg_0.x >> (u_input.a.x % 32u), _wgslsmith_dot_vec2_i32(arg_0.xx, arg_0.yx), false));
    let var_0 = global2[_wgslsmith_index_u32(arg_1.x, 8u)];
    var var_1 = min(~firstTrailingBit(arg_1), _wgslsmith_add_vec4_u32(arg_1, ~vec4<u32>(u_input.a.x, var_0.b, u_input.a.x, 19152u) ^ _wgslsmith_div_vec4_u32(abs(arg_1), arg_1)));
    global1 = _wgslsmith_clamp_i32(arg_0.x, 1i << (u_input.a.x % 32u), arg_0.x);
    global1 = func_5(all(!select(vec2<bool>(false, true), vec2<bool>(false, false), !vec2<bool>(var_0.d.x, var_0.d.x))), _wgslsmith_div_vec2_u32(~firstLeadingBit(u_input.a >> (arg_1.ww % vec2<u32>(32u))), u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_2(var_1.yy, 269f, global2[_wgslsmith_index_u32(0u, 8u)], arg_0.zz), vec3<f32>(-1000f, -282f, -724f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-392f, 611f, -1067f, -105f)))), Struct_1(var_0.a, 1u, 74421u, !vec4<bool>(any(vec3<bool>(false, true, var_0.d.x)), var_0.d.x, true, true)));
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(vec2<i32>(-12707i, _wgslsmith_mult_i32(firstTrailingBit(6219i >> (u_input.a.x % 32u)), -_wgslsmith_mult_i32(17216i, -13609i))));
    global0 = array<vec3<u32>, 8>();
    global0 = array<vec3<u32>, 8>();
    var var_1 = global2[_wgslsmith_index_u32(1u & ~u_input.a.x, 8u)];
    global0 = array<vec3<u32>, 8>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<i32>(58794i, var_0.x, var_0.x), ~vec4<u32>(u_input.a.x, 4294967295u, 1u, var_1.b))) * _wgslsmith_f_op_f32(sign(152f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2207f, 1319f) + _wgslsmith_f_op_f32(-1000f * -398f))))) != 1000f;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<i32>(1940i, var_0.x, _wgslsmith_div_i32(var_0.x, var_0.x)), _wgslsmith_div_vec4_u32(select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 40624u, 54580u, 18353u), vec4<u32>(u_input.a.x, var_1.b, var_1.b, 24062u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 28357u, 19946u, u_input.a.x), vec4<u32>(var_1.c, 75649u, 80601u, 0u)), !var_1.d.x), ~(~vec4<u32>(u_input.a.x, 0u, 4294967295u, u_input.a.x))))));
    var var_4 = firstTrailingBit(u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(firstTrailingBit(~4294967295u), u_input.a.x, var_1.c), 1u);
}

