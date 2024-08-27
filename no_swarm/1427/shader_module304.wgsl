struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: i32,
    d: Struct_2,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_1, 4>;

var<private> global2: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(-516f, 1179f, -3427f, 1000f), vec4<f32>(1509f, 1202f, -1211f, 817f), vec4<f32>(444f, -662f, -172f, -997f), vec4<f32>(-1414f, -2166f, -438f, -775f), vec4<f32>(888f, -1014f, -360f, 1357f), vec4<f32>(1000f, 1000f, 857f, -387f), vec4<f32>(233f, 1445f, -1067f, 156f), vec4<f32>(356f, -478f, 2330f, 519f), vec4<f32>(1000f, 220f, -364f, 1398f), vec4<f32>(-1470f, -703f, 469f, 632f), vec4<f32>(-1000f, 274f, -339f, -240f), vec4<f32>(124f, -501f, -2345f, 803f), vec4<f32>(-427f, -1187f, 387f, 184f), vec4<f32>(312f, -846f, 1360f, 1042f), vec4<f32>(2237f, 950f, 1956f, -821f), vec4<f32>(-1243f, -1000f, 986f, -1111f));

var<private> global3: Struct_2 = Struct_2(Struct_1(-15267i));

var<private> global4: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: bool) -> i32 {
    global2 = array<vec4<f32>, 16>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1028f);
    global4 = arg_1.x;
    var var_1 = min(countOneBits(abs(vec4<i32>(27178i, 1465i, 0i, global3.a.a))) >> ((vec4<u32>(u_input.a, 4950u, 35694u, 21833u) >> (vec4<u32>(u_input.a, 10915u, u_input.a, 39083u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_div_i32(abs(1i), global3.a.a), -arg_0.x | ~global3.a.a, global3.a.a, 37518i)) << (vec4<u32>(~u_input.a, 4294967295u, ~((u_input.a << (u_input.a % 32u)) & u_input.a), 43812u) % vec4<u32>(32u));
    var_0 = global0.b;
    return 4350i;
}

fn func_1() -> bool {
    var var_0 = Struct_3(select(select(global0.a, select(select(global0.a, vec2<bool>(false, global0.a.x), vec2<bool>(global0.a.x, false)), global0.a, true), global0.a.x), global0.a, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1107f))))));
    global2 = array<vec4<f32>, 16>();
    let var_1 = (func_2(vec2<i32>(_wgslsmith_add_i32(9837i, global3.a.a), _wgslsmith_sub_i32(2147483647i, global3.a.a)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-337f, var_0.b, global0.b))))), true) == max(-14196i, 0i)) & global0.a.x;
    let var_2 = 4294967295u;
    var var_3 = Struct_2(Struct_1(~(_wgslsmith_mult_i32(global3.a.a, 10626i) ^ global3.a.a)));
    return true;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2) -> f32 {
    let var_0 = vec3<i32>(20755i >> (_wgslsmith_mod_u32(arg_0.x | (arg_0.x << (4294967295u % 32u)), arg_0.x) % 32u), -1i, 2147483647i);
    let var_1 = Struct_3(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1457f, global0.b)) - _wgslsmith_div_f32(global0.b, 370f))) - -362f));
    global3 = Struct_2(Struct_1(~_wgslsmith_sub_i32(global3.a.a, 0i)));
    global3 = Struct_2(global1[_wgslsmith_index_u32(u_input.a, 4u)]);
    var var_2 = (reverseBits(~reverseBits(vec3<u32>(1u, 22478u, arg_0.x))) ^ vec3<u32>(1u, ~max(arg_0.x, 0u), 54331u)) >> (select(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_0.x, 41379u, u_input.a), vec3<u32>(u_input.a, 54025u, 45229u), ~vec3<u32>(0u, arg_0.x, arg_0.x)), _wgslsmith_sub_vec3_u32(~countOneBits(vec3<u32>(4294967295u, arg_0.x, 1139u)), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x, 133327u, 50928u) >> (vec3<u32>(u_input.a, arg_0.x, 0u) % vec3<u32>(32u)), vec3<u32>(arg_0.x, 101872u, arg_0.x))), var_1.a.x) % vec3<u32>(32u));
    return 170f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec2<bool>(true, func_1() || !(15081u > u_input.a)), global0.b);
    let var_1 = func_1();
    let var_2 = Struct_4(vec2<f32>(global0.b, _wgslsmith_f_op_f32(func_3(abs(vec2<u32>(1u, u_input.a)) >> (~vec2<u32>(48805u, u_input.a) % vec2<u32>(32u)), Struct_2(Struct_1(global3.a.a))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, _wgslsmith_div_f32(-1017f, -505f), _wgslsmith_f_op_f32(var_0.b + var_0.b), global0.b) * global2[_wgslsmith_index_u32(6594u, 16u)]), 0i, Struct_2(Struct_1(global3.a.a)), vec2<i32>(min(~8409i ^ global3.a.a, global3.a.a), global3.a.a));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-892f, 610f, var_2.b.x, var_2.a.x), vec4<f32>(var_2.a.x, 1470f, 443f, 133f), vec4<bool>(true, false, var_0.a.x, global0.a.x)))))))));
    var var_4 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -232f), _wgslsmith_f_op_f32(step(var_0.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.b), var_3.x)))), var_3.x)));
    var var_5 = !(!select(vec3<bool>(false, true, true), select(!vec3<bool>(global0.a.x, var_0.a.x, var_1), !vec3<bool>(true, false, var_1), !vec3<bool>(var_1, false, true)), !vec3<bool>(true, true, var_1)));
    var var_6 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(380f, global0.b)), _wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(floor(-1000f)))), true));
    var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - var_0.b) * _wgslsmith_f_op_f32(min(var_2.a.x, 1000f)))), 1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.b.x))))), var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(21925u, 14853u, 4294967295u, 0u), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a) & vec4<u32>(u_input.a, 1770u, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, 24437u, 4294967295u, u_input.a)) | firstTrailingBit(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.a, u_input.a, u_input.a, 15353u)), vec4<u32>(u_input.a, u_input.a, 4294967295u, 1u) << (vec4<u32>(270u, 0u, u_input.a, 1u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.b.x, var_2.a.x), vec2<f32>(-675f, var_0.b), global0.a.x)) * vec2<f32>(var_2.a.x, 2201f)) + _wgslsmith_f_op_vec2_f32(var_4.zz + _wgslsmith_f_op_vec2_f32(var_3.wz - var_4.yw)))), 34916u);
}

