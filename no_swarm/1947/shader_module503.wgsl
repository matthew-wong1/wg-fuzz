struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(21708i, 14686i, -7508i, 1i);

var<private> global1: Struct_2 = Struct_2(Struct_1(-2437f, 672f, 7482u, -508i, vec4<f32>(-2321f, -1129f, -839f, -1132f)), false, vec2<f32>(-604f, -1337f), Struct_1(-592f, -860f, 4936u, 638i, vec4<f32>(-2283f, -600f, -829f, 381f)), 17497i);

var<private> global2: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(-692f, -272f, 37938u, 1068i, vec4<f32>(1733f, 606f, -598f, -625f)), true, vec2<f32>(608f, 156f), Struct_1(-880f, 153f, 78046u, 1i, vec4<f32>(2306f, 377f, 924f, 877f)), 0i), Struct_2(Struct_1(1485f, 1808f, 4294967295u, 16821i, vec4<f32>(1713f, 333f, 980f, 396f)), false, vec2<f32>(-1739f, 1000f), Struct_1(741f, 335f, 0u, -13673i, vec4<f32>(1560f, -201f, -624f, 215f)), 38008i), Struct_2(Struct_1(-820f, -888f, 4294967295u, 2147483647i, vec4<f32>(286f, 1844f, 798f, -1085f)), true, vec2<f32>(-1046f, -803f), Struct_1(184f, -218f, 12587u, -1i, vec4<f32>(805f, -288f, 354f, 378f)), 18513i));

var<private> global3: i32;

var<private> global4: Struct_3;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-264f - global1.d.e.x);
    var var_1 = select(!arg_1.a.yzy, !vec3<bool>(true, false, !global1.b), arg_1.a.wzw);
    var var_2 = u_input.b.x;
    return u_input.b.xy;
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: bool) -> vec4<i32> {
    global1 = Struct_2(global1.d, any(global4.a), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, arg_1), vec2<f32>(1059f, _wgslsmith_f_op_f32(-arg_1)), !global4.a.yw)), Struct_1(global1.a.b, _wgslsmith_f_op_f32(-global1.d.a), 1u, func_3(firstTrailingBit(_wgslsmith_sub_u32(u_input.a, u_input.a)), Struct_3(global4.a)).x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(288f, global1.c.x), 1000f, 1405f) + vec4<f32>(global1.a.b, _wgslsmith_f_op_f32(select(global1.d.b, arg_1, true)), _wgslsmith_f_op_f32(select(global1.c.x, 842f, false)), -1573f))), ~reverseBits(2147483647i));
    global4 = Struct_3(select(select(vec4<bool>(global1.b, arg_2 || arg_2, global4.a.x, global1.b), !select(vec4<bool>(true, false, global1.b, global1.b), global4.a, global4.a), !(!global4.a)), vec4<bool>(global4.a.x, !all(vec3<bool>(arg_2, true, true)), true, global4.a.x), vec4<bool>((global1.a.c <= u_input.a) | false, true, true, all(!vec2<bool>(false, global1.b)))));
    let var_0 = Struct_1(517f, -1813f, 37308u, global1.d.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global1.a.e))));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~var_0.c, _wgslsmith_add_u32(_wgslsmith_div_u32(0u, _wgslsmith_div_u32(~1u, ~var_0.c)), 4294967295u)), 3u)];
    var var_2 = Struct_3(vec4<bool>(false, any(vec3<bool>(false, true, arg_2 || global4.a.x)), !(all(global4.a) || arg_2), reverseBits(2147483647i) <= (_wgslsmith_sub_i32(u_input.d.x, 0i) << (countOneBits(4294967295u) % 32u))));
    return vec4<i32>(_wgslsmith_mod_i32(30789i, 9067i), u_input.b.x, var_1.a.d, global1.a.d);
}

fn func_2() -> i32 {
    global0 = max(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.a.d, 2147483647i, -2147483647i, 2147483647i) | vec4<i32>(-20570i, global1.e, 7841i, 1i), -reverseBits(u_input.b)), func_4(select(func_3(18318u, Struct_3(vec4<bool>(false, global4.a.x, global1.b, global1.b))), _wgslsmith_mod_vec2_i32(global0.zy, vec2<i32>(0i, -2147483647i)), vec2<bool>(false, global4.a.x)), -1084f, global4.a.x)), u_input.b);
    global1 = global2[_wgslsmith_index_u32(4294967295u, 3u)];
    let var_0 = abs(~(~vec3<u32>(global1.d.c, 1u, 0u)) >> (_wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.a, global1.d.c, 1u), vec3<u32>(global1.a.c, global1.d.c, 0u), true), ~vec3<u32>(0u, 4294967295u, 4294967295u)) % vec3<u32>(32u))) >> (vec3<u32>(~(~(~global1.a.c)), ~10695u, global1.d.c) % vec3<u32>(32u));
    var var_1 = !select(vec3<bool>(any(!global4.a.xz), false, false | select(global1.b, global1.b, global4.a.x)), select(global4.a.wxy, vec3<bool>(global1.c.x == global1.c.x, global4.a.x, global1.b && true), global4.a.zwy), !(-37976i < abs(global0.x)));
    return -global0.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global2 = array<Struct_2, 3>();
    global1 = global2[_wgslsmith_index_u32(27198u, 3u)];
    let var_0 = _wgslsmith_mod_vec3_u32(arg_1, arg_1);
    global0 = vec4<i32>(0i, min(func_2() & u_input.c, -2147483647i), u_input.d.x, 2147483647i) ^ u_input.b;
    var var_1 = _wgslsmith_sub_i32(-max(~(-20234i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -39737i), global0.ww), _wgslsmith_dot_vec2_i32(countOneBits(u_input.b.xy), select(vec2<i32>(arg_3.d, arg_2.d), vec2<i32>(arg_3.d, 34778i), vec2<bool>(true, false)))), 1621i);
    return Struct_1(arg_3.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(127f - arg_0.a) + _wgslsmith_f_op_f32(exp2(arg_2.a)))))), var_0.x, global0.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-332f, _wgslsmith_f_op_f32(exp2(arg_0.a)), arg_0.e.x, _wgslsmith_f_op_f32(select(220f, global1.c.x, global4.a.x)))))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1664f * arg_2.a), _wgslsmith_f_op_f32(-105f - _wgslsmith_div_f32(-542f, 2306f)))), _wgslsmith_f_op_f32(-arg_0.e.x), u_input.a << (u_input.a % 32u), ~(-35566i), arg_2.e);
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.e.zyw * vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_2.b, 1000f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.b))), _wgslsmith_f_op_f32(-var_0.b))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(Struct_1(global1.a.b, arg_2.b, 2724u, -1i, arg_2.e), vec3<u32>(1u, u_input.a, 124575u), Struct_1(var_0.e.x, global1.a.e.x, var_0.c, arg_1, vec4<f32>(var_0.b, var_0.b, global1.d.e.x, arg_0.e.x)), Struct_1(1045f, 276f, 1u, 13304i, vec4<f32>(var_0.b, arg_2.e.x, var_0.a, 536f))).b - arg_2.a))), _wgslsmith_f_op_f32(abs(-852f)), _wgslsmith_f_op_f32(-240f - _wgslsmith_f_op_f32(select(295f, _wgslsmith_f_op_f32(var_0.b + -986f), global1.b)))), global4.a.zzz));
    var var_2 = ~_wgslsmith_add_i32(_wgslsmith_add_i32(-14934i, func_4(-vec2<i32>(36686i, 2147483647i), func_1(arg_2, vec3<u32>(var_0.c, arg_2.c, 69898u), arg_0, arg_0).b, any(global4.a.wxy)).x), reverseBits(global0.x));
    global1 = Struct_2(func_1(func_1(func_1(var_0, vec3<u32>(0u, 4294967295u, 78894u), func_1(Struct_1(1000f, -234f, global1.a.c, u_input.c, vec4<f32>(444f, global1.a.e.x, global1.a.e.x, var_0.e.x)), vec3<u32>(18410u, 8708u, 1u), Struct_1(-226f, arg_2.e.x, 1u, var_0.d, vec4<f32>(-321f, var_0.e.x, global1.c.x, -1873f)), Struct_1(var_1.x, 583f, 36518u, arg_0.d, vec4<f32>(-645f, 919f, arg_0.a, arg_0.a))), Struct_1(-736f, -465f, arg_0.c, 10003i, vec4<f32>(737f, arg_2.b, global1.a.e.x, 305f))), vec3<u32>(30907u, u_input.a, firstLeadingBit(u_input.a)), arg_0, Struct_1(_wgslsmith_div_f32(arg_2.a, 1330f), var_0.a, ~3594u, i32(-1i) * -14216i, var_0.e)), _wgslsmith_mult_vec3_u32(vec3<u32>(30264u, 41721u, arg_2.c) & vec3<u32>(var_0.c, 1u, 36199u), ~abs(vec3<u32>(4294967295u, 14061u, 4294967295u))), func_1(Struct_1(func_1(arg_0, vec3<u32>(61648u, 0u, global1.a.c), global1.a, Struct_1(var_1.x, var_0.b, global1.a.c, var_0.d, vec4<f32>(arg_0.a, 785f, -1144f, 1050f))).e.x, _wgslsmith_f_op_f32(ceil(-429f)), u_input.a, abs(u_input.d.x), vec4<f32>(var_0.b, -513f, var_0.a, 934f)), firstTrailingBit(vec3<u32>(4294967295u, 1u, global1.d.c)) << (vec3<u32>(33363u, 54131u, global1.d.c) % vec3<u32>(32u)), func_1(func_1(global1.d, vec3<u32>(1u, arg_2.c, 4294967295u), global1.d, arg_2), abs(vec3<u32>(global1.a.c, global1.d.c, 26586u)), Struct_1(-497f, var_1.x, 88556u, global1.e, vec4<f32>(arg_0.e.x, arg_0.b, arg_0.e.x, arg_2.b)), Struct_1(arg_0.b, 727f, global1.a.c, arg_2.d, vec4<f32>(-393f, -1938f, 1246f, var_1.x))), arg_0), Struct_1(global1.a.a, _wgslsmith_f_op_f32(select(func_1(arg_0, vec3<u32>(1298u, 0u, global1.a.c), arg_2, Struct_1(2271f, global1.c.x, 41782u, 1i, vec4<f32>(var_1.x, 1000f, 1492f, var_1.x))).b, _wgslsmith_f_op_f32(max(global1.d.e.x, -475f)), global1.b)), ~(~0u), -1i, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global1.a.e))))), ~4294967295u < arg_0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1444f, _wgslsmith_f_op_f32(f32(-1f) * -1424f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(225f, -1034f) - vec2<f32>(-2890f, 142f)))), Struct_1(282f, arg_0.e.x, ~global1.d.c, 2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.d.e)))), ~func_2());
    var_2 = countOneBits(func_4(~vec2<i32>(_wgslsmith_div_i32(u_input.c, var_0.d), 42375i & arg_1), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global4.a.x).x);
    return Struct_1(-875f, -2051f, _wgslsmith_clamp_u32(70433u, ~1u, ~_wgslsmith_mult_u32(arg_0.c, arg_0.c & 32498u)), -(global0.x ^ -(~10954i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(343f, arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - 1342f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-544f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_2.e)) * arg_0.e)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(func_5(global1.d, u_input.b.x, func_1(global1.d, firstLeadingBit(vec3<u32>(global1.a.c, 24757u, 76542u)) & vec3<u32>(52376u, 4294967295u, 1u), global1.a, global1.d)), true, global1.a.e.wz, func_1(Struct_1(global1.c.x, global1.c.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_add_vec2_u32(vec2<u32>(global1.d.c, global1.a.c), vec2<u32>(global1.d.c, u_input.a))), 1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(2028f, -486f, -360f, 431f))), ~select(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.d.c, 45324u, 36871u), vec3<u32>(global1.a.c, u_input.a, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(57575u, 0u, global1.a.c), vec3<u32>(global1.a.c, u_input.a, global1.d.c), vec3<u32>(1u, 110508u, u_input.a)), vec3<bool>(true, true, false)), global1.d, global1.a), global0.x);
    global1 = Struct_2(func_1(func_5(global1.d, _wgslsmith_div_i32(2147483647i, abs(global0.x)), func_1(Struct_1(global1.a.e.x, 2355f, 14544u, u_input.b.x, vec4<f32>(global1.c.x, global1.d.b, -308f, global1.d.b)), abs(vec3<u32>(34523u, global1.d.c, 27321u)), func_5(global1.a, 0i, Struct_1(global1.c.x, global1.c.x, 10929u, global0.x, global1.d.e)), func_5(global1.d, u_input.c, Struct_1(-545f, -1106f, 45596u, u_input.b.x, vec4<f32>(global1.a.e.x, global1.d.e.x, 1287f, global1.d.a))))), vec3<u32>(0u, 77070u, _wgslsmith_sub_u32(u_input.a, countOneBits(3915u))), func_1(Struct_1(605f, _wgslsmith_div_f32(1000f, global1.a.e.x), ~global1.d.c, global0.x | 453i, _wgslsmith_f_op_vec4_f32(-global1.d.e)), vec3<u32>(15622u ^ u_input.a, ~1u, 1u), global1.a, Struct_1(-1341f, global1.d.b, 1u, 0i, global1.a.e)), func_5(global1.d, func_3(14154u, Struct_3(vec4<bool>(true, true, global1.b, global1.b))).x, Struct_1(global1.c.x, 1058f, func_5(Struct_1(global1.d.a, global1.c.x, 36291u, 1i, global1.d.e), -1i, global1.d).c, u_input.c, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.a.b, -1010f, -417f, 682f), vec4<f32>(618f, 1339f, global1.d.e.x, global1.d.e.x), global4.a))))), true, vec2<f32>(-1228f, 297f), func_5(func_1(Struct_1(-844f, global1.c.x, ~1u, -global1.e, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-191f, 619f, global1.c.x, 185f))), ~vec3<u32>(0u, 1u, global1.a.c), global1.a, func_1(Struct_1(global1.c.x, global1.c.x, u_input.a, u_input.b.x, vec4<f32>(270f, global1.c.x, global1.d.b, 226f)), vec3<u32>(4294967295u, 122580u, 7369u) ^ vec3<u32>(1u, 4294967295u, u_input.a), global1.a, func_1(Struct_1(-1890f, -714f, 24424u, 6104i, vec4<f32>(global1.a.a, global1.d.e.x, global1.a.a, global1.d.a)), vec3<u32>(1u, global1.a.c, 90755u), global1.d, global1.d))), global1.d.d | (func_4(u_input.b.xx, -959f, global4.a.x).x ^ u_input.b.x), func_5(global1.a, global0.x, func_5(Struct_1(global1.c.x, global1.d.a, global1.a.c, global0.x, global1.a.e), ~global1.e, func_1(global1.d, vec3<u32>(u_input.a, global1.d.c, u_input.a), Struct_1(-1325f, 474f, global1.a.c, global1.e, vec4<f32>(-289f, global1.d.b, global1.c.x, -758f)), Struct_1(594f, -652f, 4294967295u, global0.x, vec4<f32>(global1.c.x, global1.d.e.x, global1.c.x, global1.d.a)))))), global0.x);
    var var_0 = Struct_3(global4.a);
    var var_1 = false;
    var var_2 = func_5(Struct_1(global1.c.x, -884f, ~(~abs(u_input.a)), ~(-2147483647i << (global1.d.c % 32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global1.c.x, global1.a.a), 671f, _wgslsmith_f_op_f32(max(-832f, global1.d.e.x)), -825f))), func_1(global1.a, vec3<u32>(firstTrailingBit(global1.a.c), 1u, _wgslsmith_div_u32(u_input.a, u_input.a)) << (_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 55318u, 57966u), vec3<u32>(1u, global1.d.c, 51239u)) % vec3<u32>(32u)), Struct_1(-578f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.b + global1.a.e.x), -317f), ~(1u ^ u_input.a), 1i, _wgslsmith_f_op_vec4_f32(-global1.a.e)), global1.a).d, func_1(Struct_1(func_1(global1.d, vec3<u32>(u_input.a, 8361u, global1.d.c), func_1(global1.a, vec3<u32>(1u, global1.a.c, global1.a.c), global1.a, global1.d), func_1(Struct_1(global1.a.a, global1.d.e.x, 28845u, -47206i, vec4<f32>(810f, -125f, 813f, global1.c.x)), vec3<u32>(1u, u_input.a, 8726u), Struct_1(global1.c.x, global1.a.a, 15293u, global0.x, global1.d.e), global1.d)).e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -549f) - -120f), _wgslsmith_sub_u32(~u_input.a, _wgslsmith_mod_u32(u_input.a, 230u)), i32(-1i) * -1i, func_1(global1.d, vec3<u32>(global1.d.c, global1.d.c, global1.a.c) >> (vec3<u32>(10148u, 22997u, 26831u) % vec3<u32>(32u)), Struct_1(global1.d.a, global1.d.e.x, global1.d.c, global1.d.d, vec4<f32>(global1.c.x, -1535f, global1.a.a, global1.c.x)), func_5(Struct_1(global1.c.x, 2042f, u_input.a, -42769i, vec4<f32>(global1.c.x, global1.a.b, global1.d.b, global1.d.e.x)), global1.a.d, Struct_1(-337f, -1332f, 34257u, global1.d.d, vec4<f32>(global1.a.b, global1.a.a, global1.d.a, global1.a.e.x)))).e), vec3<u32>(u_input.a, u_input.a, 19619u), global1.d, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1375f)), -1709f, 4294967295u, _wgslsmith_add_i32(global1.e, func_5(Struct_1(global1.a.b, -1000f, 50406u, global0.x, vec4<f32>(global1.d.e.x, global1.d.a, global1.a.a, -149f)), -2147483647i, Struct_1(2555f, -2140f, global1.d.c, u_input.d.x, global1.a.e)).d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a.e)))));
    global2 = array<Struct_2, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(19690i, _wgslsmith_f_op_f32(f32(-1f) * -877f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a, 530f) + global1.a.a) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)))));
}

