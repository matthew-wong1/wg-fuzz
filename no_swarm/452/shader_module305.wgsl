struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<bool>,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(0u, 1u, 4294967295u, 46760u), vec4<u32>(36521u, 52503u, 4294967295u, 9214u), vec4<u32>(18816u, 21684u, 57752u, 0u), vec4<u32>(1124u, 36391u, 57088u, 14325u), vec4<u32>(1u, 44841u, 4294967295u, 4294967295u), vec4<u32>(0u, 4526u, 4294967295u, 49342u), vec4<u32>(1u, 71096u, 37378u, 4294967295u), vec4<u32>(12710u, 4294967295u, 62231u, 20736u), vec4<u32>(41508u, 4294967295u, 13621u, 1u), vec4<u32>(63619u, 29009u, 40745u, 106158u), vec4<u32>(70304u, 105936u, 0u, 635u), vec4<u32>(1u, 1u, 8061u, 4294967295u), vec4<u32>(4294967295u, 1u, 1u, 1u), vec4<u32>(27242u, 1u, 1u, 42802u), vec4<u32>(1u, 0u, 0u, 4294967295u), vec4<u32>(1u, 1u, 4294967295u, 1u), vec4<u32>(1u, 75437u, 8042u, 0u), vec4<u32>(3344u, 5800u, 19604u, 16974u), vec4<u32>(4294967295u, 73221u, 4294967295u, 1u), vec4<u32>(1u, 92804u, 0u, 60237u), vec4<u32>(17174u, 37258u, 0u, 63079u), vec4<u32>(60864u, 0u, 1u, 1u), vec4<u32>(3869u, 0u, 31424u, 32152u), vec4<u32>(1u, 0u, 52569u, 0u), vec4<u32>(0u, 0u, 18689u, 0u), vec4<u32>(0u, 42397u, 17804u, 56253u), vec4<u32>(4294967295u, 0u, 37552u, 4294967295u), vec4<u32>(4294967295u, 1u, 0u, 51637u), vec4<u32>(0u, 65473u, 1u, 43245u));

var<private> global1: Struct_3 = Struct_3(35045u, 0u, -38780i, false);

var<private> global2: array<vec2<bool>, 6>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: bool, arg_3: vec4<u32>) -> u32 {
    var var_0 = select(select(select(!vec3<bool>(arg_2, false, global1.d), vec3<bool>(global1.d, all(vec4<bool>(false, global1.d, true, true)), arg_2), arg_3.x != _wgslsmith_mult_u32(78217u, 0u)), vec3<bool>(select(false, arg_2 & global1.d, true), (global1.c <= 12518i) & any(vec2<bool>(false, global1.d)), true), vec3<bool>(!global1.d, false, !(arg_1.x > u_input.b))), select(select(vec3<bool>(global1.d, arg_2, all(vec4<bool>(true, global1.d, true, arg_2))), vec3<bool>(!global1.d, false, any(vec3<bool>(true, true, true))), select(select(vec3<bool>(true, true, global1.d), vec3<bool>(arg_2, false, true), true), select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_2, false, true), arg_2), vec3<bool>(arg_2, true, false))), !vec3<bool>(true, true, u_input.a.x <= 4294967295u), vec3<bool>(global1.d, true & !global1.d, any(!vec3<bool>(global1.d, true, arg_2)))), !select(!vec3<bool>(arg_2, arg_2, true), select(!vec3<bool>(arg_2, true, false), vec3<bool>(global1.d, global1.d, true), vec3<bool>(arg_2, false, true)), arg_2));
    var var_1 = Struct_4(u_input.a, Struct_2(select(arg_1.yy, _wgslsmith_mult_vec2_i32(abs(arg_1.xy), arg_1.zy), true & (arg_2 || true)), vec4<f32>(_wgslsmith_f_op_f32(-607f * -1795f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-757f, 118f) - _wgslsmith_f_op_f32(step(1630f, 1664f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1032f - -872f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1689f + 117f) + 864f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -898f)) * -1497f), -((vec3<i32>(5993i, -2147483647i, -21047i) | vec3<i32>(arg_1.x, arg_1.x, 25597i)) ^ abs(arg_1))));
    var_1 = Struct_4(var_1.a, Struct_2(-(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, -1i), arg_1.xz, vec2<i32>(arg_1.x, u_input.b))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_1.b.b + var_1.b.b))))), _wgslsmith_f_op_f32(f32(-1f) * -2010f), vec3<i32>(-26905i, abs(arg_1.x), -2147483647i)));
    global0 = array<vec4<u32>, 29>();
    let var_2 = var_1.b.b;
    return select(_wgslsmith_mult_u32(~global1.b, _wgslsmith_add_u32(29449u, var_1.a.x)), firstLeadingBit(arg_0), false && (1u != ~arg_0));
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_4(vec3<u32>(u_input.d.x, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b, 0u, 1u, 64585u), vec4<u32>(global1.b, global1.a, 1u, global1.a) << (global0[_wgslsmith_index_u32(1u, 29u)] % vec4<u32>(32u)))), ~51385u), Struct_2(~(vec2<i32>(-1i, -30152i) << (~u_input.a.yz % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1586f, -1090f, -1517f, -417f) * vec4<f32>(-1070f, 1889f, 249f, -558f))))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -204f)), -vec3<i32>(-global1.c, -11073i, firstLeadingBit(-2147483647i))));
    var var_1 = ~(~(~min(~global1.b, var_0.a.x)));
    var var_2 = ~(~4294967295u ^ _wgslsmith_add_u32(var_0.a.x << (11777u % 32u), global1.b));
    var var_3 = ~func_3(var_0.a.x, select(var_0.b.d, var_0.b.d ^ var_0.b.d, -434f < _wgslsmith_f_op_f32(-702f * var_0.b.b.x)), global1.d, global0[_wgslsmith_index_u32(1u, 29u)]);
    var var_4 = any(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, max(global1.b, var_0.a.x)), 6u)]);
    return vec4<f32>(-148f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-108f * _wgslsmith_f_op_f32(ceil(var_0.b.b.x))), -957f)), _wgslsmith_f_op_f32(sign(-639f)), _wgslsmith_f_op_f32(-var_0.b.c));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> Struct_3 {
    let var_0 = !(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, global1.d, global1.d), vec3<bool>(global1.d, global1.d, false), vec3<bool>(true, global1.d, false)), vec3<bool>(global1.d, false, false))));
    global1 = Struct_3(u_input.d.x, global1.b, max(2147483647i, _wgslsmith_dot_vec2_i32((arg_0.b.a & arg_1.d.yy) | _wgslsmith_clamp_vec2_i32(arg_0.b.a, vec2<i32>(19441i, arg_0.b.d.x), vec2<i32>(2147483647i, arg_0.b.a.x)), vec2<i32>(u_input.b | 2877i, -12513i))), !(!(!all(vec4<bool>(false, true, false, true)))));
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(982f * _wgslsmith_f_op_f32(-arg_1.b.x)), -1530f) + arg_0.b.b.zw));
    let var_3 = countOneBits(~(~1674u));
    return Struct_3(var_3, (abs(~var_3) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, global1.a, var_3), ~vec3<u32>(4294967295u, u_input.a.x, 54783u)) % 32u)) << (~_wgslsmith_div_u32(~100502u, var_3) % 32u), -(i32(-1i) * -global1.c), all(!select(vec4<bool>(false, var_0.x, global1.d, true), vec4<bool>(true, var_0.x, true, false), true || global1.d)));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> i32 {
    global0 = array<vec4<u32>, 29>();
    global0 = array<vec4<u32>, 29>();
    global1 = Struct_3(~6640u, arg_2.b, _wgslsmith_dot_vec4_i32(min(select(vec4<i32>(6114i, arg_2.e.x, 1i, arg_2.e.x), vec4<i32>(3826i, u_input.b, u_input.c, -3280i), arg_0), min(arg_2.e, arg_2.e)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(global1.a, u_input.a.x, 4074u, 42887u), ~vec4<u32>(global1.b, global1.b, u_input.d.x, 23986u)) % vec4<u32>(32u)), ~vec4<i32>(_wgslsmith_mod_i32(-2147483647i, -29473i), u_input.b, 1i | u_input.b, abs(353i))), !any(select(select(vec3<bool>(arg_2.a.x, global1.d, false), vec3<bool>(arg_2.a.x, arg_2.a.x, true), global1.d), vec3<bool>(true, false, true), global1.d)));
    var var_0 = func_4(Struct_4(countOneBits(u_input.a >> (u_input.a % vec3<u32>(32u))) << (firstLeadingBit(vec3<u32>(63903u, 4294967295u, global1.a)) % vec3<u32>(32u)), Struct_2(_wgslsmith_mult_vec2_i32(max(arg_2.e.wx, arg_2.e.yw), vec2<i32>(13719i, 26104i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) + arg_2.d), _wgslsmith_f_op_f32(max(arg_2.c.x, _wgslsmith_f_op_f32(arg_2.c.x - -2152f))), arg_2.e.wxw)), Struct_2(arg_2.e.xw, arg_2.d, 1014f, vec3<i32>(global1.c, firstTrailingBit(-2147483647i), u_input.b)));
    let var_1 = Struct_5(Struct_4(u_input.d, Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(15203i, 1i) >> (u_input.a.xy % vec2<u32>(32u)), countOneBits(arg_2.e.zx)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.x, 2304f, arg_2.d.x, arg_2.c.x) * arg_2.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.d.x)) * _wgslsmith_f_op_f32(select(arg_2.d.x, -521f, arg_2.a.x))), vec3<i32>(firstTrailingBit(0i), i32(-1i) * -1i, abs(-1i)))), !(!arg_2.a), func_4(Struct_4(u_input.a, Struct_2(firstTrailingBit(vec2<i32>(12606i, arg_1)), _wgslsmith_f_op_vec4_f32(ceil(arg_2.d)), 1000f, firstTrailingBit(vec3<i32>(u_input.b, arg_2.e.x, var_0.c)))), Struct_2(vec2<i32>(_wgslsmith_mod_i32(arg_1, 30682i), -2147483647i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d.x, arg_2.d.x, 1493f, 306f)), arg_2.c, vec4<bool>(true, arg_0, arg_2.a.x, true))), _wgslsmith_f_op_f32(f32(-1f) * -461f), vec3<i32>(_wgslsmith_div_i32(-9343i, arg_1), -1i, _wgslsmith_sub_i32(var_0.c, -93075i)))), arg_2.a.x);
    return 37581i;
}

fn func_5(arg_0: vec2<f32>, arg_1: bool, arg_2: f32, arg_3: Struct_3) -> Struct_5 {
    var var_0 = Struct_1(global2[_wgslsmith_index_u32(firstLeadingBit(1u), 6u)], ~1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(trunc(-1000f))), 416f, _wgslsmith_f_op_f32(1164f - -1000f), -516f)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2()).x), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.x, -567f), arg_0.x, true)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2, arg_2, 444f, arg_2)))))), vec4<i32>(arg_3.c, ~(-min(2147483647i, 0i)), -(~21972i), -7025i));
    let var_1 = ~vec4<u32>(var_0.b, _wgslsmith_mod_u32(_wgslsmith_mod_u32(~40005u, ~57476u), global1.a), _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(44080u, 52363u, 0u, 30386u), vec4<u32>(1u, u_input.a.x, u_input.d.x, 8038u)), ~countOneBits(19236u)), 5529u);
    global0 = array<vec4<u32>, 29>();
    var var_2 = arg_0.x;
    var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x)))));
    return Struct_5(Struct_4(vec3<u32>(0u, 0u, 26136u), Struct_2(var_0.e.xx, vec4<f32>(_wgslsmith_f_op_f32(arg_2 - -420f), _wgslsmith_f_op_f32(f32(-1f) * -526f), var_0.c.x, _wgslsmith_f_op_f32(arg_0.x - arg_0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2), -1383f)), firstLeadingBit(var_0.e.yzx))), vec2<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(arg_1, true), var_0.a))), func_4(Struct_4(_wgslsmith_sub_vec3_u32(u_input.d, vec3<u32>(var_1.x, arg_3.a, 16922u)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(0u, arg_3.b, arg_3.a), var_1.xxz) % vec3<u32>(32u)), Struct_2(~vec2<i32>(-1i, 5811i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-889f, var_0.c.x, arg_0.x, arg_2)), _wgslsmith_f_op_f32(min(arg_0.x, -637f)), vec3<i32>(42853i, -50542i, global1.c))), Struct_2(var_0.e.xw, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-278f, 1250f, arg_2, arg_0.x))), _wgslsmith_f_op_f32(-arg_2), ~(-vec3<i32>(1i, u_input.b, u_input.b)))), var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    var_0 = vec2<bool>(false, var_0.x);
    let var_1 = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1147f, -584f))))), global1.d || (19254i <= func_1(true, ~u_input.c, Struct_1(global2[_wgslsmith_index_u32(u_input.d.x, 6u)], global1.b, vec4<f32>(1098f, -387f, 578f, 2257f), vec4<f32>(-154f, 882f, -564f, -386f), vec4<i32>(13774i, global1.c, u_input.c, global1.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1287f))), func_4(Struct_4(abs(u_input.a) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, global1.b), u_input.a) % vec3<u32>(32u)), Struct_2(vec2<i32>(u_input.c, global1.c), vec4<f32>(-158f, 1254f, -587f, 331f), _wgslsmith_f_op_f32(abs(-574f)), -vec3<i32>(-2147483647i, global1.c, global1.c))), Struct_2(vec2<i32>(global1.c, u_input.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-866f, -873f, true)) - _wgslsmith_f_op_f32(746f - 1247f)), ~vec3<i32>(u_input.b, 39445i, -1i))));
    let var_2 = false;
    let var_3 = Struct_3(func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.b.b.xy)) - var_1.a.b.b.zy), _wgslsmith_f_op_f32(round(func_5(vec2<f32>(var_1.a.b.c, var_1.a.b.b.x), false, 548f, Struct_3(1u, 1u, var_1.a.b.a.x, global1.d)).a.b.c)) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(822f)), _wgslsmith_f_op_f32(step(313f, 536f)))), _wgslsmith_f_op_f32(abs(-720f)), Struct_3(0u, abs(59334u) | (u_input.a.x | u_input.a.x), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.c, var_1.a.b.a.x, 1i), var_1.a.b.d)), any(vec4<bool>(var_2, var_1.d, true, global1.d)))).c.b, var_1.a.a.x, -1i ^ func_5(_wgslsmith_f_op_vec2_f32(-var_1.a.b.b.yw), global1.d & all(global2[_wgslsmith_index_u32(var_1.c.a, 6u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.b.x)), Struct_3(64394u << (var_1.a.a.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(13021u, 17635u), var_1.a.a.xy), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 1i, -1i), var_1.a.b.d), all(vec2<bool>(var_1.b.x, false)))).a.b.a.x, true);
    var var_4 = var_1.a;
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -490f))));
    let var_6 = !select(select(select(select(vec3<bool>(global1.d, var_1.b.x, true), vec3<bool>(false, true, true), var_3.d), select(vec3<bool>(true, var_2, true), vec3<bool>(true, var_3.d, false), vec3<bool>(global1.d, false, false)), vec3<bool>(true, true, true)), vec3<bool>(func_4(Struct_4(vec3<u32>(u_input.a.x, 1u, u_input.a.x), var_1.a.b), Struct_2(var_1.a.b.a, vec4<f32>(1000f, -1309f, var_1.a.b.b.x, 1000f), var_1.a.b.c, vec3<i32>(32184i, u_input.b, 0i))).d, any(vec2<bool>(var_2, global1.d)), false), all(!vec3<bool>(false, true, global1.d))), select(vec3<bool>(false, 40571i > var_1.c.c, 53541i <= u_input.c), !(!vec3<bool>(true, var_0.x, var_2)), any(vec3<bool>(false, var_1.b.x, false))), select(false, select(0u, 1u, true) > global1.a, any(select(vec3<bool>(true, true, true), vec3<bool>(var_1.d, var_1.c.d, false), false))));
    var_0 = select(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(var_3.b, var_1.c.a), vec2<u32>(0u, global1.b)))), vec2<u32>(~(global1.b << (u_input.d.x % 32u)), min(_wgslsmith_mod_u32(var_4.a.x, global1.b), _wgslsmith_div_u32(0u, var_1.c.b)))), 6u)], select(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(var_4.a.x, global1.b), 1u, ~var_3.a), 6u)], select(global2[_wgslsmith_index_u32(~4896u | var_1.c.a, 6u)], !(!var_6.xz), vec2<bool>(any(vec4<bool>(global1.d, false, true, var_6.x)), true)), !(25387u == var_1.a.a.x)), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(~(vec4<i32>(var_3.c, global1.c, var_4.b.d.x, var_4.b.d.x) >> (vec4<u32>(global1.a, 23363u, 30440u, u_input.d.x) % vec4<u32>(32u))), reverseBits(~(vec4<i32>(var_3.c, -19962i, -23929i, u_input.c) << (vec4<u32>(113334u, 9296u, 0u, 60362u) % vec4<u32>(32u))))), select(_wgslsmith_mult_vec3_i32(var_1.a.b.d, select(vec3<i32>(var_3.c, var_4.b.d.x, var_4.b.a.x), min(var_4.b.d, var_1.a.b.d), var_6)), vec3<i32>(abs(0i), global1.c, -20623i & var_3.c) << (~(~u_input.d) % vec3<u32>(32u)), !var_6), vec2<u32>(((u_input.a.x << (1u % 32u)) << (var_1.c.a % 32u)) & 1u, var_1.c.b), var_4.a.x, _wgslsmith_mod_u32(u_input.d.x, _wgslsmith_add_u32(4294967295u, ~(~var_3.b))));
}

