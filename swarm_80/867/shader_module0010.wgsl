struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(384f, 21031i, 35587u, 733f, Struct_1(false)), Struct_2(149f, -1i, 4776u, 480f, Struct_1(true)), Struct_2(-1765f, -12669i, 15442u, -391f, Struct_1(false)), Struct_2(-1646f, -6103i, 4294967295u, -1000f, Struct_1(true)), Struct_2(-1368f, i32(-2147483648), 31104u, 827f, Struct_1(false)), Struct_2(497f, 1i, 1u, -604f, Struct_1(false)), Struct_2(1019f, i32(-2147483648), 36395u, 890f, Struct_1(true)), Struct_2(-667f, -18340i, 25248u, 143f, Struct_1(false)), Struct_2(-405f, -1i, 1u, -304f, Struct_1(true)), Struct_2(-1016f, 6949i, 14809u, -484f, Struct_1(false)), Struct_2(-519f, 0i, 4294967295u, -1116f, Struct_1(true)), Struct_2(857f, -1i, 1u, 740f, Struct_1(true)), Struct_2(-1000f, 1i, 33769u, -2395f, Struct_1(true)), Struct_2(1183f, 6955i, 34317u, -794f, Struct_1(false)), Struct_2(-974f, -40190i, 25741u, 721f, Struct_1(true)), Struct_2(1693f, 6139i, 0u, -336f, Struct_1(false)), Struct_2(319f, 15374i, 34002u, -1000f, Struct_1(false)), Struct_2(2839f, 19043i, 29959u, 1000f, Struct_1(false)), Struct_2(1000f, -46310i, 55081u, -1286f, Struct_1(true)), Struct_2(-1849f, -1i, 0u, 1401f, Struct_1(true)), Struct_2(-216f, 0i, 0u, 846f, Struct_1(false)), Struct_2(133f, i32(-2147483648), 31821u, -215f, Struct_1(true)), Struct_2(288f, 5073i, 1u, 445f, Struct_1(true)), Struct_2(-703f, 24592i, 4294967295u, 1153f, Struct_1(false)), Struct_2(1551f, -25618i, 18887u, -1402f, Struct_1(false)), Struct_2(-438f, 2147483647i, 32751u, -1740f, Struct_1(true)), Struct_2(1383f, 17394i, 4294967295u, 478f, Struct_1(true)), Struct_2(-1190f, -1i, 0u, -372f, Struct_1(false)));

var<private> global1: f32;

var<private> global2: array<Struct_1, 8>;

var<private> global3: f32;

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> vec4<f32> {
    let var_0 = Struct_1(!all(select(vec3<bool>(true, global4.e.a, global4.e.a), vec3<bool>(false, false, global4.e.a), global4.e.a)));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(638f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-753f, 196f)) - _wgslsmith_f_op_f32(global4.d + 997f))))));
    let var_1 = global4.b;
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(global4.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global4.d, -379f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.d)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-319f, -620f, _wgslsmith_f_op_f32(-1678f * 1000f)) * vec3<f32>(global4.a, global4.d, 528f)) - vec3<f32>(global4.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -907f), _wgslsmith_div_f32(1905f, -664f)), -592f)));
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(-359f)), -984f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1210f)) - _wgslsmith_f_op_f32(1000f - var_3.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-448f, -158f) * _wgslsmith_f_op_f32(ceil(-1388f))), -647f));
}

fn func_2(arg_0: i32) -> i32 {
    global0 = array<Struct_2, 28>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(~(vec3<i32>(0i, -1i, 112487i) << (vec3<u32>(58782u, 4294967295u, global4.c) % vec3<u32>(32u))) >> (max(vec3<u32>(global4.c, 37467u, u_input.a.x), vec3<u32>(global4.c, global4.c, u_input.a.x)) % vec3<u32>(32u)))));
    return -(~arg_0);
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: u32, arg_3: u32) -> vec4<bool> {
    let var_0 = global4.e;
    var var_1 = select(~vec3<i32>(abs(0i), -2147483647i, -41586i), countOneBits(~vec3<i32>(func_2(-1i), u_input.c, _wgslsmith_sub_i32(arg_1.x, arg_1.x))), !(!(!select(vec3<bool>(global4.e.a, true, global4.e.a), vec3<bool>(arg_0.e.a, var_0.a, arg_0.e.a), vec3<bool>(arg_0.a.a, var_0.a, arg_0.e.a)))));
    return !select(select(!select(vec4<bool>(global4.e.a, true, true, false), vec4<bool>(global4.e.a, global4.e.a, global4.e.a, false), vec4<bool>(var_0.a, var_0.a, global4.e.a, false)), select(select(vec4<bool>(global4.e.a, false, true, global4.e.a), vec4<bool>(false, global4.e.a, global4.e.a, false), vec4<bool>(true, false, false, false)), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)), !all(vec4<bool>(true, true, arg_0.b.a, global4.e.a))), !(!select(vec4<bool>(true, global4.e.a, var_0.a, global4.e.a), vec4<bool>(false, var_0.a, var_0.a, false), var_0.a)), select(!vec4<bool>(true, true, global4.e.a, false), !vec4<bool>(var_0.a, false, true, true), !all(vec2<bool>(arg_0.e.a, arg_0.b.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec4<bool>(global4.e.a, true, global4.e.a, (global4.e.a || false) | !global4.e.a), !vec4<bool>(true, false, global4.e.a, true), vec4<bool>(global4.b <= _wgslsmith_clamp_i32(2147483647i, u_input.c, -17537i), any(func_1(Struct_3(Struct_1(false), global4.e, u_input.a.x, 0u, Struct_1(global4.e.a)), vec3<i32>(-1i, -1i, global4.b), global4.c, 55623u)), true, true)), !select(vec4<bool>(!global4.e.a, all(vec4<bool>(true, global4.e.a, true, true)), false, select(false, false, global4.e.a)), vec4<bool>(any(vec4<bool>(global4.e.a, true, global4.e.a, global4.e.a)), select(global4.e.a, global4.e.a, true), select(true, global4.e.a, true), true), !(!vec4<bool>(global4.e.a, false, global4.e.a, true))), func_1(Struct_3(Struct_1(global4.e.a), Struct_1(all(vec4<bool>(global4.e.a, global4.e.a, true, global4.e.a))), reverseBits(17819u), _wgslsmith_mod_u32(1u, 0u & u_input.a.x), global2[_wgslsmith_index_u32(1u, 8u)]), _wgslsmith_clamp_vec3_i32(~vec3<i32>(2147483647i, u_input.c, global4.b), abs(vec3<i32>(1i, 2147483647i, global4.b)), vec3<i32>(0i, 38717i, 13851i)) ^ ~(vec3<i32>(29125i, global4.b, u_input.d) ^ vec3<i32>(0i, global4.b, u_input.b.x)), abs(~global4.c), 4294967295u | global4.c));
    var var_1 = global4.e;
    global2 = array<Struct_1, 8>();
    global2 = array<Struct_1, 8>();
    global4 = global0[_wgslsmith_index_u32(global4.c, 28u)];
    var var_2 = vec4<u32>(reverseBits(67928u), ~(~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(1u, 30325u)) & _wgslsmith_mult_u32(abs(u_input.a.x), 113489u)), ~reverseBits(u_input.a.x), ~(global4.c & max(u_input.a.x, max(32328u, u_input.a.x))));
    let var_3 = vec2<bool>(!select(!(!global4.e.a), 1i < u_input.c, all(vec2<bool>(global4.e.a, false)) & func_1(Struct_3(global4.e, Struct_1(false), 16429u, u_input.a.x, Struct_1(false)), vec3<i32>(u_input.b.x, u_input.d, global4.b), 1u, u_input.a.x).x), var_1.a && func_1(Struct_3(global4.e, Struct_1(true), global4.c, _wgslsmith_mod_u32(u_input.a.x, 104707u), Struct_1(true)), -(~vec3<i32>(-2147483647i, u_input.c, 1i)), var_2.x, abs(~62380u)).x);
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1398f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global4.d * global4.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(358f + 1775f) + _wgslsmith_f_op_f32(global4.d * global4.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.a), _wgslsmith_f_op_f32(abs(global4.a))), 253f)), _wgslsmith_mult_u32(~23795u, 1u) & u_input.a.x);
}

