struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec3<f32>(-106f, -1000f, -1261f), 4294967295u, vec4<bool>(false, true, false, true), vec3<bool>(false, false, true)), Struct_1(vec3<f32>(136f, -110f, 1000f), 11192u, vec4<bool>(false, false, false, true), vec3<bool>(true, false, true)), Struct_1(vec3<f32>(241f, 137f, -1108f), 0u, vec4<bool>(true, true, true, false), vec3<bool>(true, false, true)), Struct_1(vec3<f32>(-632f, -1261f, 237f), 4880u, vec4<bool>(false, true, false, false), vec3<bool>(false, true, true)), Struct_1(vec3<f32>(-243f, 1506f, -1154f), 60842u, vec4<bool>(true, true, true, false), vec3<bool>(false, true, false)), Struct_1(vec3<f32>(-547f, 1662f, -209f), 101887u, vec4<bool>(false, true, true, true), vec3<bool>(true, true, true)), Struct_1(vec3<f32>(945f, -1799f, 482f), 1u, vec4<bool>(false, false, true, true), vec3<bool>(true, false, false)));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    var var_0 = (vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.c.x), vec2<i32>(u_input.c.x, u_input.c.x)), abs(u_input.c.x)), (u_input.c.x ^ -1i) & countOneBits(0i), i32(-1i) * -37513i) | vec3<i32>(u_input.c.x, -1i ^ u_input.c.x, _wgslsmith_sub_i32(0i, ~u_input.c.x))) & vec3<i32>(2147483647i, 1i >> (abs(u_input.b) % 32u), ~9591i);
    var_0 = select(select(vec3<i32>(~u_input.c.x, i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, u_input.c.x), vec2<i32>(-1i, 59827i))), -vec3<i32>(u_input.c.x, var_0.x, 16233i) | select(vec3<i32>(-2147483647i, u_input.c.x, -13161i), vec3<i32>(-2147483647i, 38696i, var_0.x), true), true) << (firstTrailingBit(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, u_input.d, 1u), vec3<u32>(u_input.d, u_input.b, u_input.d))) % vec3<u32>(32u)), firstLeadingBit(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(u_input.c.x, 7472i, var_0.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(3605i, u_input.c.x, -45703i), ~vec3<i32>(u_input.c.x, var_0.x, 1i)))), false);
    var var_1 = 19453u;
    var var_2 = select(vec2<bool>(true, true), select(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), vec2<bool>(!(u_input.b >= 1u), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false))), select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), false))), select(select(vec2<bool>(true, all(vec3<bool>(true, false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), !all(vec2<bool>(false, true))), select(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true)), vec2<bool>(all(vec2<bool>(false, false)), any(vec3<bool>(true, false, true))), true), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), false), all(vec3<bool>(false, false, false))))));
    var_2 = vec2<bool>(true, any(vec2<bool>(var_2.x, false)));
    return _wgslsmith_dot_vec4_u32(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a, 8497u, u_input.d), vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.d))), ~vec4<u32>(9878u, ~u_input.d, _wgslsmith_mod_u32(u_input.b, u_input.d), 1u)) | ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(~104557u, countOneBits(u_input.b)), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.a), vec2<u32>(u_input.d, 6473u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec2<bool> {
    var var_0 = countOneBits(-(~vec3<i32>(-59032i, u_input.c.x, 0i | u_input.c.x)));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-101f, _wgslsmith_f_op_f32(select(-751f, _wgslsmith_f_op_f32(-arg_1.a.x), true))))), -1377f, select(arg_0.d.x, arg_1.c.x, arg_0.d.x)));
    var var_2 = abs(abs(select(0i, 1i, all(!arg_1.c.wz))));
    var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(~(-1i), firstLeadingBit(u_input.c.x), var_0.x), reverseBits(~vec3<i32>(1i, -var_0.x, var_0.x)));
    return vec2<bool>(false, !(!(!(!arg_0.d.x))));
}

fn func_2() -> f32 {
    let var_0 = select(select(vec2<bool>(u_input.a != (0u << (u_input.b % 32u)), any(vec4<bool>(false, true, true, true))), vec2<bool>(true, all(vec2<bool>(true, true))), !func_4(global0[_wgslsmith_index_u32(func_3(), 7u)], global0[_wgslsmith_index_u32(45953u, 7u)], 1u)), select(vec2<bool>(true, true), !func_4(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.b), vec2<u32>(u_input.d, u_input.b)), 7u)], reverseBits(1u)), func_4(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(788f, 1024f, -245f) + vec3<f32>(-617f, -933f, -866f)), abs(u_input.b), vec4<bool>(true, true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true)), global0[_wgslsmith_index_u32(u_input.d, 7u)], 4294967295u >> (0u % 32u)).x), true);
    var var_1 = !select(!select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x | false), select(!vec4<bool>(var_0.x, true, var_0.x, var_0.x), select(!vec4<bool>(true, false, var_0.x, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x), !var_0.x), var_0.x), !(!select(vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(false, true, true, var_0.x), vec4<bool>(true, false, false, var_0.x))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1809f, 1546f, 390f) * vec3<f32>(-961f, 605f, -522f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-923f, 1174f, 994f) - vec3<f32>(816f, -1000f, 976f)))))), _wgslsmith_dot_vec2_u32(vec2<u32>(~(~4294967295u), u_input.d), reverseBits(firstTrailingBit(vec2<u32>(u_input.d, u_input.d)))), !(!vec4<bool>(select(var_1.x, true, var_0.x), var_1.x, var_0.x, any(vec2<bool>(false, var_0.x)))), var_1.yyw);
    let var_3 = ~_wgslsmith_clamp_vec3_i32(-(vec3<i32>(u_input.c.x, 0i, 14242i) ^ vec3<i32>(u_input.c.x, 1i, 2817i)), select(reverseBits(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), abs(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), select(vec3<bool>(true, var_1.x, var_2.d.x), var_1.yzw, true)), vec3<i32>(-1i, -1i, u_input.c.x)) | abs(-vec3<i32>(-2147483647i, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, u_input.c.x), vec4<i32>(-26201i, 55422i, 6478i, 6357i))));
    global0 = array<Struct_1, 7>();
    return _wgslsmith_f_op_f32(min(-260f, -102f));
}

fn func_5(arg_0: vec3<f32>, arg_1: bool, arg_2: i32, arg_3: vec2<i32>) -> vec3<u32> {
    global0 = array<Struct_1, 7>();
    let var_0 = !vec2<bool>(arg_1, true);
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(0u, ~u_input.d), 7u)];
    let var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.d), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.b, u_input.b), vec2<u32>(var_1.b, 1u)), select(vec2<u32>(var_1.b, var_1.b), vec2<u32>(var_1.b, u_input.d) & vec2<u32>(0u, 13898u), !var_0)) ^ ~vec2<u32>(4294967295u, var_1.b | var_1.b));
    var var_3 = !(1i >= (0i << ((var_1.b & _wgslsmith_div_u32(0u, 2042u)) % 32u)));
    return vec3<u32>(~var_2, _wgslsmith_mult_u32(96176u, _wgslsmith_div_u32(u_input.a, 0u)), 4294967295u & ~(~(~u_input.b)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    global0 = array<Struct_1, 7>();
    let var_0 = arg_0.c.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(473f)), _wgslsmith_div_f32(-310f, -1278f)), 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-743f, -1295f))))));
    var var_2 = 1u;
    var var_3 = _wgslsmith_clamp_vec3_u32(func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1489f, _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(func_2())) + arg_0.a), true, -(~_wgslsmith_dot_vec2_i32(vec2<i32>(29290i, -11353i), arg_1)), _wgslsmith_add_vec2_i32(u_input.c, firstLeadingBit(vec2<i32>(u_input.c.x, u_input.c.x)))), vec3<u32>(56113u, 1u, 4294967295u), countOneBits(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_0.a)) + _wgslsmith_f_op_vec3_f32(arg_0.a * vec3<f32>(1489f, -246f, -815f))), !all(arg_0.c.xwx), -1i, arg_1)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_0.a)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 1198f, -115f) * _wgslsmith_f_op_vec3_f32(-arg_0.a)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, arg_0.a.x, 698f) - arg_0.a)))), ~((abs(u_input.d) | arg_0.b) | (func_3() & ~var_3.x)), !(!(!(!arg_0.c))), select(vec3<bool>(true, all(!arg_0.c.zzw), arg_0.c.x | arg_0.d.x), vec3<bool>(arg_0.d.x, true, var_0 || !var_0), arg_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(268f + -469f)))))), 316f);
    let var_1 = func_1(global0[_wgslsmith_index_u32(1u, 7u)], -abs(u_input.c << (vec2<u32>(1u, 1u) % vec2<u32>(32u))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_1.a))), _wgslsmith_div_u32(47589u, _wgslsmith_sub_u32(var_1.b, u_input.b)), select(!var_1.c, var_1.c, var_1.c), var_1.c.zzz);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(var_2.a + vec3<f32>(147f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2()))), var_2.a.x)), ~(~(~var_1.b)), func_1(Struct_1(var_2.a, ~func_5(vec3<f32>(var_1.a.x, -1724f, var_0), false, 25133i, u_input.c).x, vec4<bool>(var_1.c.x | false, true, true, var_2.d.x), func_1(Struct_1(var_1.a, var_2.b, vec4<bool>(true, var_1.d.x, false, false), vec3<bool>(var_1.c.x, true, var_2.c.x)), reverseBits(u_input.c)).c.zwz), vec2<i32>(min(-u_input.c.x, -u_input.c.x), -4930i)).c, var_2.d);
    var_2 = var_1;
    let var_4 = select(u_input.c, vec2<i32>(u_input.c.x, ~1i), !(!vec2<bool>(false, select(var_1.d.x, false, var_1.c.x))));
    var var_5 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b);
}

