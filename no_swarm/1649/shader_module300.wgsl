struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<u32> = vec4<u32>(4886u, 18136u, 0u, 89152u);

var<private> global2: array<f32, 10> = array<f32, 10>(-315f, -1000f, -1796f, -648f, 635f, 1722f, -453f, -307f, -142f, -328f);

var<private> global3: Struct_1 = Struct_1(vec4<f32>(257f, 140f, 998f, 560f), vec4<f32>(1196f, -1126f, 1801f, 1017f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: f32, arg_3: vec4<u32>) -> vec2<bool> {
    let var_0 = abs(abs(-vec4<i32>(0i, -2147483647i, 1i, 24281i))) ^ _wgslsmith_div_vec4_i32(~(-(vec4<i32>(-3290i, 1i, -3837i, 27813i) >> (vec4<u32>(104612u, 1u, global1.x, global1.x) % vec4<u32>(32u)))), vec4<i32>(703i, 13309i, -24228i, -select(0i, 16825i, arg_1.x)));
    var var_1 = reverseBits(var_0.x);
    let var_2 = Struct_3(true, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.x, global2[_wgslsmith_index_u32(arg_3.x, 10u)], arg_0.x, -1078f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(74162u, 10u)], 757f, 248f, -1098f) + vec4<f32>(-114f, -319f, global3.b.x, global3.a.x)))), arg_0), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_2, _wgslsmith_f_op_f32(step(-1000f, global3.b.x))));
    return !(!arg_1);
}

fn func_3() -> bool {
    let var_0 = Struct_4(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(global3.b)))) - _wgslsmith_div_vec4_f32(global3.a, _wgslsmith_f_op_vec4_f32(global3.b * global3.a))), vec2<bool>(true, true), global3.a.x, min(_wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, 18227u, 36228u, global1.x), vec4<u32>(138747u, 88097u, 2337u, global1.x)), ~vec4<u32>(global1.x, 1u, 57947u, 4294967295u)) << (vec4<u32>(firstTrailingBit(1u), _wgslsmith_add_u32(u_input.a.x, 0u), abs(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(u_input.a.x, 55564u))) % vec4<u32>(32u))), min(_wgslsmith_mult_vec2_i32(vec2<i32>(-41408i, -1i) >> (global1.xy % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(-31992i, 0i), vec2<i32>(2147483647i, -13760i))) & -vec2<i32>(28100i, -2147483647i), vec2<i32>(1i, 1i)), Struct_2(vec2<bool>(false, true), _wgslsmith_f_op_vec4_f32(-global3.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.a.yz), vec2<f32>(global2[_wgslsmith_index_u32(1u, 10u)], -333f)))));
    var var_1 = !func_1(_wgslsmith_f_op_vec4_f32(-var_0.c.b), func_1(var_0.c.b, func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(673f, -659f, global2[_wgslsmith_index_u32(global1.x, 10u)], -1000f)), select(var_0.c.a, vec2<bool>(false, var_0.a.x), var_0.a.x), _wgslsmith_f_op_f32(-2491f + global2[_wgslsmith_index_u32(global1.x, 10u)]), _wgslsmith_div_vec4_u32(vec4<u32>(global1.x, u_input.a.x, global1.x, 1u), vec4<u32>(global1.x, 1u, global1.x, u_input.a.x))), _wgslsmith_f_op_f32(-1104f * -447f), ~(~vec4<u32>(4294967295u, u_input.a.x, 0u, u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, 41505u, global1.x, global1.x), vec4<u32>(global1.x, u_input.a.x, u_input.a.x, 16996u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u))));
    global1 = _wgslsmith_mod_vec4_u32(max(~vec4<u32>(4294967295u, u_input.a.x, 1u, u_input.a.x), ~vec4<u32>(u_input.a.x, 0u, 32966u, u_input.a.x)) ^ vec4<u32>(u_input.a.x, ~global1.x, 0u, u_input.a.x), ~(~(vec4<u32>(global1.x, global1.x, global1.x, u_input.a.x) >> (vec4<u32>(global1.x, 63015u, 6378u, u_input.a.x) % vec4<u32>(32u))))) & ~(~(vec4<u32>(7491u, global1.x, 4294967295u, u_input.a.x) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, global1.x, 4294967295u, global1.x), vec4<u32>(u_input.a.x, 1u, global1.x, 7441u)) % vec4<u32>(32u))));
    let var_2 = ~countOneBits(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(-3210i, -2147483647i), var_0.b), ~vec2<i32>(-2147483647i, 28642i), vec2<i32>(1i, -16890i)));
    let var_3 = Struct_3(select(!any(var_0.c.a), all(!select(vec4<bool>(var_1.x, true, false, true), vec4<bool>(var_1.x, false, false, true), var_1.x)), var_0.a.x), Struct_1(global3.b, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global3.b - vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], 1901f, global3.b.x, -2056f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global3.b.wyx, vec3<f32>(1995f, -1171f, _wgslsmith_f_op_f32(-1000f + global3.b.x)))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global3.b.zzz)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3.a.x, global2[_wgslsmith_index_u32(global1.x, 10u)], 1000f))))))));
    return var_3.a;
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: bool, arg_3: i32) -> bool {
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global3.a.x), -890f, _wgslsmith_f_op_f32(f32(-1f) * -333f), global3.b.x))), select(select(vec2<bool>(true, false), func_1(_wgslsmith_div_vec4_f32(vec4<f32>(global3.b.x, global2[_wgslsmith_index_u32(31493u, 10u)], 1623f, global3.b.x), vec4<f32>(-665f, global3.a.x, global3.a.x, 775f)), vec2<bool>(arg_2, arg_2), _wgslsmith_f_op_f32(883f * 293f), vec4<u32>(1u, 43964u, u_input.a.x, arg_1) ^ vec4<u32>(arg_1, 0u, 1u, arg_1)), any(vec2<bool>(arg_2, true)) & func_3()), vec2<bool>(true, true), vec2<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(11899u, global1.x, global1.x), global1.xyy) < u_input.a.x, any(vec3<bool>(true, arg_2, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(216f + -1000f), 1197f))) * 1572f), vec4<u32>(global1.x, min(u_input.a.x, u_input.a.x) | _wgslsmith_mult_u32(global1.x, 1u), 0u, 4294967295u) << (vec4<u32>(0u, 0u, global1.x, global1.x) % vec4<u32>(32u)));
    let var_1 = Struct_4(!vec2<bool>(false, var_0.x), ~vec2<i32>(arg_0.x, arg_0.x), Struct_2(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, 1886f, -123f, -1066f)) + vec4<f32>(-215f, 1465f, -154f, global2[_wgslsmith_index_u32(56261u, 10u)])), func_1(_wgslsmith_f_op_vec4_f32(-global3.a), !var_0, _wgslsmith_f_op_f32(max(global3.a.x, global2[_wgslsmith_index_u32(1u, 10u)])), vec4<u32>(1u, arg_1, arg_1, 0u)), global2[_wgslsmith_index_u32(~global1.x, 10u)], select(vec4<u32>(4294967295u, 0u, 0u, global1.x), vec4<u32>(13527u, arg_1, 26295u, 45726u), var_0.x) | ~vec4<u32>(39332u, 0u, 1u, u_input.a.x)), global3.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global3.a.x), global3.b.xx, vec2<bool>(arg_2, true))), _wgslsmith_f_op_vec2_f32(global3.a.xz + vec2<f32>(264f, global2[_wgslsmith_index_u32(1u, 10u)])), var_0.x))))));
    let var_2 = Struct_2(var_0, var_1.c.b, _wgslsmith_f_op_vec2_f32(-global3.a.zw));
    var var_3 = var_1;
    let var_4 = true;
    return false;
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    global2 = array<f32, 10>();
    global2 = array<f32, 10>();
    let var_0 = !select(vec4<bool>(true, false, arg_0.x, all(func_1(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], -1179f, 343f, -540f), vec2<bool>(arg_0.x, true), arg_2.c.x, vec4<u32>(u_input.a.x, 4294967295u, global1.x, 22593u)))), select(!arg_0, vec4<bool>(!arg_2.a.x, arg_2.a.x, 453f != global3.b.x, true), global2[_wgslsmith_index_u32(u_input.a.x, 10u)] > -1131f), !select(arg_0, arg_0, arg_2.a.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2[_wgslsmith_index_u32(1u, 10u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 10u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_2.c.x)), arg_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.b.x))))));
    var var_2 = vec3<i32>((min(-arg_1, arg_1) | _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(arg_1, 1i))) & _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_1, -8243i), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(-41230i, arg_1), reverseBits(vec2<i32>(-36456i, 1i)))), 38721i << (countOneBits(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global1.x, global1.x), u_input.a), 55669u | global1.x)) % 32u), 2147483647i >> (~(~(~global1.x)) % 32u));
    return arg_2;
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> StorageBuffer {
    global2 = array<f32, 10>();
    var var_0 = func_4(vec4<bool>((!arg_2.a.x & arg_1.a.x) || true, arg_2.a.x, u_input.a.x >= 1u, !arg_1.a.x), 0i, arg_1);
    var var_1 = !(!select(select(!vec3<bool>(arg_2.a.x, arg_2.a.x, false), !vec3<bool>(arg_1.a.x, arg_2.a.x, arg_2.a.x), arg_1.a.x && false), !vec3<bool>(arg_2.a.x, true, arg_1.a.x), !select(vec3<bool>(arg_2.a.x, arg_1.a.x, var_0.a.x), vec3<bool>(false, true, false), vec3<bool>(true, true, false))));
    var_0 = Struct_2(arg_1.a, _wgslsmith_f_op_vec4_f32(min(var_0.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.b)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(arg_2.b)))), !(!vec4<bool>(false, arg_1.a.x, true, false)))))), func_4(!(!select(vec4<bool>(false, var_0.a.x, true, arg_1.a.x), vec4<bool>(arg_1.a.x, true, arg_1.a.x, var_1.x), true)), 0i, arg_1).c);
    global1 = ~abs(~abs(select(vec4<u32>(global1.x, global1.x, u_input.a.x, u_input.a.x), vec4<u32>(global1.x, u_input.a.x, global1.x, u_input.a.x), vec4<bool>(false, arg_2.a.x, false, true))));
    return StorageBuffer(_wgslsmith_clamp_u32(global1.x, abs(u_input.a.x), 1u >> (firstTrailingBit(1u) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.x, -558f, 644f, arg_0) - vec4<f32>(257f, arg_0, arg_1.b.x, -626f)))))), u_input.a.x, _wgslsmith_f_op_vec2_f32(-arg_1.b.wy));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 10>();
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(-1434f + global3.b.x), Struct_2(!select(vec2<bool>(true, true), func_1(global3.b, vec2<bool>(true, false), -815f, vec4<u32>(global1.x, global1.x, global1.x, u_input.a.x)), vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(global1.x, 10u)], global3.a.x, 754f, -1107f) + vec4<f32>(-810f, global2[_wgslsmith_index_u32(43745u, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global3.a.x)), global3.b, all(vec3<bool>(true, true, false))))), _wgslsmith_f_op_vec2_f32(-global3.b.ww)), func_4(vec4<bool>(all(vec3<bool>(true, false, true)), !(global2[_wgslsmith_index_u32(13979u, 10u)] > global2[_wgslsmith_index_u32(u_input.a.x, 10u)]), true, !func_2(vec2<i32>(0i, -1i), global1.x, false, -72728i)), countOneBits(341i >> (_wgslsmith_mod_u32(20708u, u_input.a.x) % 32u)), Struct_2(!func_1(vec4<f32>(-1082f, -1896f, 327f, global2[_wgslsmith_index_u32(global1.x, 10u)]), vec2<bool>(true, true), global2[_wgslsmith_index_u32(0u, 10u)], vec4<u32>(global1.x, 79734u, u_input.a.x, global1.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -532f), global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(global1.x & 38671u, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec2<f32>(_wgslsmith_f_op_f32(-935f + 1073f), -506f))));
}

