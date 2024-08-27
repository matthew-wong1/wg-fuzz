struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(1366f, 98704u, -1074f, vec4<bool>(false, false, false, false)));

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(655f, 4294967295u, 738f, vec4<bool>(false, false, false, true)), Struct_1(-896f, 5424u, -162f, vec4<bool>(false, true, true, true)), Struct_1(-375f, 17894u, 986f, vec4<bool>(true, false, false, true)), Struct_1(264f, 0u, -480f, vec4<bool>(false, false, true, true)), Struct_1(432f, 1u, 2746f, vec4<bool>(true, false, true, true)), Struct_1(-425f, 4294967295u, -664f, vec4<bool>(false, true, false, false)), Struct_1(399f, 23773u, -1000f, vec4<bool>(true, true, true, false)), Struct_1(-366f, 0u, -1622f, vec4<bool>(true, true, false, false)), Struct_1(618f, 34759u, -150f, vec4<bool>(true, false, false, true)), Struct_1(-382f, 1u, 781f, vec4<bool>(false, false, true, false)), Struct_1(-1449f, 6890u, -472f, vec4<bool>(false, false, false, true)));

var<private> global3: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1545f, arg_1.c, arg_1.a, arg_1.a), vec4<f32>(arg_1.c, arg_1.a, arg_1.a, -255f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-377f, 785f, _wgslsmith_div_f32(arg_1.a, -939f), -1007f)))));
    global2 = array<Struct_1, 11>();
    global0 = array<Struct_1, 1>();
    let var_1 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-919f + _wgslsmith_f_op_f32(1f * -1977f))));
    global1 = arg_1.d.yxy;
    return vec2<u32>(arg_1.b, ~0u);
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(1178f - -1012f), _wgslsmith_dot_vec2_u32(firstTrailingBit(~(~vec2<u32>(arg_1.x, arg_1.x))), _wgslsmith_mult_vec2_u32(vec2<u32>(~4294967295u, u_input.c.x), _wgslsmith_sub_vec2_u32(max(u_input.a, arg_1.zy), vec2<u32>(arg_1.x, 0u)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-535f)), -1180f)))))), !select(select(vec4<bool>(arg_0, global1.x, arg_0, arg_0), !vec4<bool>(global1.x, false, true, true), !arg_0), !select(vec4<bool>(arg_0, false, false, false), vec4<bool>(arg_0, false, false, global1.x), vec4<bool>(true, global1.x, true, false)), !select(vec4<bool>(arg_0, false, true, true), vec4<bool>(true, global1.x, false, true), vec4<bool>(global1.x, true, global1.x, true))));
    let var_1 = -(1i >> (_wgslsmith_mult_u32(var_0.b & func_1(u_input.a, var_0, 12103u).x, _wgslsmith_mult_u32(~1u, u_input.c.x)) % 32u));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), ~(~arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(var_0.c + _wgslsmith_div_f32(543f, var_0.a)))), !select(var_0.d, vec4<bool>(true, !arg_0, !global1.x, !var_0.d.x), var_0.d));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(min(-2202f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a * -175f) - _wgslsmith_f_op_f32(-var_0.c)) - _wgslsmith_f_op_f32(1000f * -533f)))), _wgslsmith_f_op_f32(var_2.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-235f))))));
    var var_4 = arg_1;
    return vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.c)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_2.a, -983f)))), -1799f, _wgslsmith_f_op_f32(var_2.c - 946f));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = u_input.c;
    let var_1 = 1102f;
    global3 = -1203f;
    let var_2 = vec2<bool>(global1.x, !(!select(arg_0.d.x, true, global1.x == false)));
    var var_3 = global2[_wgslsmith_index_u32(~u_input.a.x, 11u)];
    return _wgslsmith_f_op_f32(-var_1);
}

fn func_4(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x) + _wgslsmith_f_op_f32(ceil(1f))) + arg_0.x));
    return Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1221f - -248f))))), ~_wgslsmith_dot_vec3_u32(~select(vec3<u32>(u_input.c.x, u_input.c.x, 19030u), u_input.c, false), _wgslsmith_mod_vec3_u32(u_input.c >> (vec3<u32>(4294967295u, u_input.a.x, 0u) % vec3<u32>(32u)), vec3<u32>(4294967295u, 0u, u_input.a.x))), -458f, !vec4<bool>(true | all(vec4<bool>(global1.x, global1.x, global1.x, true)), false, false, global1.x));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a, 307f, _wgslsmith_div_f32(arg_3.a, arg_3.c), -1000f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(637f * arg_3.c)), func_4(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 1456f, -223f, -832f)))).c), !global1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(926f, -1000f, -1000f, arg_3.a) * vec4<f32>(arg_3.c, 726f, -266f, -145f)))))));
    global2 = array<Struct_1, 11>();
    global3 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(293f - -809f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-344f - -944f)))), var_0.x));
    global3 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_vec4_f32(func_2(false, vec3<u32>(arg_3.b | ~1u, 0u, 4294967295u))).x);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-1f), reverseBits(_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(arg_3.b, 3707u), _wgslsmith_sub_u32(arg_3.b, arg_3.b)), ~(~1u))), _wgslsmith_f_op_f32(f32(-1f) * -1294f), !select(arg_3.d, vec4<bool>(!arg_3.d.x, all(arg_3.d.zzx), true, false), arg_3.d));
    return func_4(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(round(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-464f, var_0.x, arg_3.a, 1163f))).a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-468f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3.c + -1202f), _wgslsmith_f_op_f32(-var_1.c))))), _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(func_2(global1.x, vec3<u32>(43094u, 1u, u_input.c.x))).x, ~1u, 102f, !vec4<bool>(true, true, arg_3.d.x, global1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_add_vec2_i32(max(u_input.b, _wgslsmith_mod_vec2_i32(-u_input.b, -u_input.b)), u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(~0i, u_input.b.x, u_input.b.x, 0i) & vec4<i32>(19665i, ~43079i, firstLeadingBit(u_input.b.x), u_input.b.x), -(~(-vec4<i32>(-12783i, 13408i, -2147483647i, -2147483647i)))), ~(~func_1(u_input.a, Struct_1(1000f, 21232u, 1608f, vec4<bool>(true, global1.x, global1.x, false)), u_input.c.x)), func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(any(vec2<bool>(global1.x, true)), vec3<u32>(29457u, u_input.c.x, 1u))), vec4<f32>(_wgslsmith_f_op_f32(sign(-1843f)), 1881f, _wgslsmith_f_op_f32(f32(-1f) * -493f), _wgslsmith_f_op_f32(func_3(Struct_1(-633f, 1u, 671f, vec4<bool>(global1.x, global1.x, global1.x, global1.x))))))));
    let var_1 = reverseBits(i32(-1i) * -((u_input.b.x ^ -26987i) | u_input.b.x));
    var_0 = global0[_wgslsmith_index_u32(var_0.b, 1u)];
    global1 = vec3<bool>(all(!vec3<bool>(global1.x, var_0.a < 621f, !global1.x)), true | all(var_0.d), global1.x);
    var var_2 = select(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, -221f, -1128f, var_0.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2153f, 912f, var_0.c, var_0.c))))).d.xyw, func_5(select(max(u_input.b, u_input.b), _wgslsmith_div_vec2_i32(u_input.b, select(u_input.b, u_input.b, false)), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(273f, -1364f, 1039f, var_0.a))).d.zy), -(vec4<i32>(var_1, u_input.b.x, 1i, var_1) & vec4<i32>(var_1, 0i, var_1, 1623i)) >> (vec4<u32>(var_0.b ^ u_input.a.x, 38312u, max(u_input.c.x, 0u), reverseBits(var_0.b)) % vec4<u32>(32u)), u_input.c.xx, func_4(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(651f - var_0.c), var_0.c, 1446f))).d.wxx, select(vec3<bool>(false, true, global1.x), var_0.d.zzy, vec3<bool>(false, firstLeadingBit(1u) == ~u_input.c.x, global1.x | func_5(u_input.b, vec4<i32>(-23250i, 38237i, var_1, u_input.b.x), vec2<u32>(57252u, var_0.b), global0[_wgslsmith_index_u32(4294967295u, 1u)]).d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(countOneBits(vec4<u32>(~1u, 1u, u_input.c.x | var_0.b, countOneBits(var_0.b)))), countOneBits(reverseBits(vec4<u32>(u_input.a.x & 1u, func_1(u_input.c.zx, Struct_1(var_0.c, 34485u, var_0.c, vec4<bool>(var_2.x, global1.x, false, true)), u_input.a.x).x, func_4(vec4<f32>(var_0.c, var_0.a, var_0.a, var_0.a)).b, _wgslsmith_mod_u32(u_input.c.x, var_0.b)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + var_0.a)), _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-246f * var_0.a)), true)))), var_1);
}

