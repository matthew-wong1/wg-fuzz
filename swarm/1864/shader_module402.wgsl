struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: i32,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<bool>;

var<private> global2: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(true, Struct_1(40122u, vec4<bool>(true, true, false, false), vec2<bool>(false, true))), Struct_2(true, Struct_1(0u, vec4<bool>(false, false, false, false), vec2<bool>(true, false))), Struct_2(false, Struct_1(56576u, vec4<bool>(false, true, true, true), vec2<bool>(true, false))), Struct_2(false, Struct_1(78917u, vec4<bool>(false, false, true, true), vec2<bool>(true, false))), Struct_2(false, Struct_1(34040u, vec4<bool>(true, false, true, true), vec2<bool>(false, true))), Struct_2(true, Struct_1(0u, vec4<bool>(true, false, false, true), vec2<bool>(false, true))), Struct_2(true, Struct_1(1u, vec4<bool>(false, true, true, true), vec2<bool>(false, true))), Struct_2(true, Struct_1(1u, vec4<bool>(false, false, false, false), vec2<bool>(true, true))), Struct_2(true, Struct_1(1u, vec4<bool>(false, true, false, true), vec2<bool>(false, false))), Struct_2(false, Struct_1(0u, vec4<bool>(true, false, false, true), vec2<bool>(true, true))), Struct_2(true, Struct_1(25392u, vec4<bool>(false, true, true, false), vec2<bool>(false, false))), Struct_2(false, Struct_1(4438u, vec4<bool>(true, true, true, false), vec2<bool>(false, true))), Struct_2(false, Struct_1(0u, vec4<bool>(true, false, true, true), vec2<bool>(false, true))), Struct_2(false, Struct_1(1u, vec4<bool>(true, false, true, false), vec2<bool>(true, false))), Struct_2(true, Struct_1(48827u, vec4<bool>(true, true, true, true), vec2<bool>(true, false))), Struct_2(true, Struct_1(1u, vec4<bool>(true, true, true, true), vec2<bool>(true, true))), Struct_2(false, Struct_1(1u, vec4<bool>(false, false, true, true), vec2<bool>(true, false))), Struct_2(true, Struct_1(10137u, vec4<bool>(true, true, true, false), vec2<bool>(true, true))), Struct_2(false, Struct_1(0u, vec4<bool>(true, true, true, false), vec2<bool>(false, true))), Struct_2(true, Struct_1(1u, vec4<bool>(true, false, false, false), vec2<bool>(true, true))), Struct_2(false, Struct_1(52323u, vec4<bool>(false, true, false, true), vec2<bool>(false, true))), Struct_2(false, Struct_1(21329u, vec4<bool>(false, true, false, false), vec2<bool>(false, false))), Struct_2(false, Struct_1(20566u, vec4<bool>(true, true, false, false), vec2<bool>(true, true))), Struct_2(false, Struct_1(14850u, vec4<bool>(false, true, false, false), vec2<bool>(false, false))), Struct_2(false, Struct_1(0u, vec4<bool>(false, true, false, false), vec2<bool>(true, true))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: vec2<i32>) -> vec2<bool> {
    var var_0 = Struct_5(global2[_wgslsmith_index_u32(4294967295u, 25u)], Struct_1(~(~arg_0), !select(!vec4<bool>(true, false, global1.x, global1.x), select(vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(false, true, global1.x, global1.x), vec4<bool>(false, global1.x, true, false)), global1.x), !select(vec2<bool>(global1.x, true), vec2<bool>(global1.x, false), global1.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-521f))), -371f) + _wgslsmith_f_op_f32(-123f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-288f - -267f)))), -1710f);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, var_0.d, var_0.c) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(581f, var_0.d, 1349f)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, -1000f, 1145f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(var_0.d, var_0.d)), var_0.d, var_0.c)))));
    let var_2 = Struct_5(var_0.a, var_0.a.b, 1000f, 346f);
    return select(vec2<bool>(-841f <= _wgslsmith_f_op_f32(-var_2.c), var_0.a.b.b.x), !var_2.a.b.b.ww, select(vec2<bool>(!(arg_2.x >= -25213i), all(vec2<bool>(false, var_0.b.c.x))), vec2<bool>(true, true), var_0.b.b.ww));
}

fn func_2() -> vec4<i32> {
    global1 = select(select(!func_3(1u, ~vec4<u32>(17844u, u_input.a, u_input.a, u_input.b), ~vec2<i32>(1i, 0i)), vec2<bool>(true, global1.x), vec2<bool>(all(vec2<bool>(true, false)), !(true | global1.x))), !(!(!vec2<bool>(global1.x, false))), vec2<bool>(any(vec2<bool>(true, true)), global1.x));
    let var_0 = !all(!select(vec3<bool>(true, true, true), select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, true, global1.x), vec3<bool>(false, global1.x, true)), select(vec3<bool>(global1.x, true, true), vec3<bool>(false, global1.x, true), vec3<bool>(global1.x, false, true))));
    global1 = func_3(87158u, _wgslsmith_mod_vec4_u32(select(vec4<u32>(firstLeadingBit(0u), _wgslsmith_mod_u32(u_input.a, 51001u), u_input.a, reverseBits(u_input.a)), ~(~vec4<u32>(4294967295u, u_input.b, 0u, 70514u)), var_0), vec4<u32>(~(~4294967295u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), _wgslsmith_add_u32(u_input.b, u_input.a)), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.a, u_input.b)), _wgslsmith_mod_vec2_u32(vec2<u32>(115810u, u_input.b), vec2<u32>(56474u, u_input.b))), select(_wgslsmith_mod_u32(4294967295u, u_input.b), ~27143u, var_0))), vec2<i32>(-2147483647i, 2147483647i));
    global1 = vec2<bool>(!global1.x || any(select(select(vec4<bool>(var_0, global1.x, global1.x, global1.x), vec4<bool>(false, false, global1.x, var_0), vec4<bool>(true, global1.x, false, true)), vec4<bool>(false, true, true, var_0), select(vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(false, true, var_0, true), true))), func_3(10866u, min(~vec4<u32>(u_input.b, u_input.b, 1u, u_input.a), select(~vec4<u32>(4294967295u, 0u, u_input.b, u_input.a), vec4<u32>(u_input.b, u_input.b, u_input.a, 1u) << (vec4<u32>(u_input.b, u_input.b, 40326u, u_input.a) % vec4<u32>(32u)), global1.x)), -vec2<i32>(1i, i32(-1i) * -1i)).x);
    var var_1 = Struct_1(u_input.a, select(vec4<bool>(true, true && any(vec3<bool>(false, global1.x, false)), false, var_0), !vec4<bool>(true | global1.x, true, global1.x, any(vec3<bool>(var_0, var_0, true))), vec4<bool>(func_3(4294967295u, select(vec4<u32>(u_input.b, u_input.b, 0u, 1u), vec4<u32>(u_input.a, u_input.b, u_input.a, 0u), vec4<bool>(var_0, global1.x, var_0, false)), -vec2<i32>(8707i, -13721i)).x, var_0, true, !var_0)), vec2<bool>(false, func_3((1u ^ u_input.b) >> (u_input.b % 32u), (vec4<u32>(1u, 0u, u_input.a, 4294967295u) >> (vec4<u32>(1u, 4294967295u, u_input.a, 11727u) % vec4<u32>(32u))) >> (vec4<u32>(27226u, 511u, 2382u, 83393u) % vec4<u32>(32u)), -abs(vec2<i32>(-1i, -1i))).x));
    return vec4<i32>((10609i >> (u_input.a % 32u)) & 0i, 24354i, 1i | ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(0i, 48880i))), -(~(~firstLeadingBit(-2147483647i))));
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = u_input.b;
    let var_1 = min(vec4<i32>(-1i) * -func_2(), -vec4<i32>(1i, ~(-2790i), i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 61753i, 36090i, -7510i), vec4<i32>(1i, 21693i, -1i, -2147483647i))) >> (vec4<u32>(u_input.b, ~abs(3514u), firstLeadingBit(u_input.b) | _wgslsmith_dot_vec4_u32(vec4<u32>(14933u, 10836u, 4294967295u, u_input.b), vec4<u32>(65852u, 4294967295u, 37368u, 49530u)), ~19471u) % vec4<u32>(32u)));
    global2 = array<Struct_2, 25>();
    let var_2 = vec4<bool>((-(var_1.x >> (arg_0 % 32u)) <= (var_1.x & var_1.x)) & !global1.x, global1.x, !any(select(vec3<bool>(false, true, true), !vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, true, global1.x))), var_1.x != var_1.x);
    let var_3 = reverseBits(~(_wgslsmith_sub_vec2_u32(vec2<u32>(70352u, 1u), vec2<u32>(arg_0, arg_0)) | vec2<u32>(~u_input.a, 53492u)));
    return global2[_wgslsmith_index_u32(arg_0, 25u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 63232u;
    let var_0 = Struct_5(func_1(_wgslsmith_mult_u32(~(~77370u), u_input.b)), func_1(~u_input.a).b, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-156f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(121f + -325f) - _wgslsmith_f_op_f32(f32(-1f) * -290f)) * _wgslsmith_f_op_f32(step(1000f, _wgslsmith_div_f32(-263f, -746f)))) - -833f));
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1312f, -1601f), vec2<f32>(var_0.d, -148f), global1.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(361f, -969f))))))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1156f + _wgslsmith_f_op_f32(666f * -409f)), var_0.d, var_0.a.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(753f + var_0.c), var_0.c)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_0.c, -963f))))));
    var var_3 = Struct_2(func_1(4294967295u).b.b.x, var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_1, firstTrailingBit(func_2().wwz | _wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), max(vec3<i32>(-27789i, -58683i, -15432i), vec3<i32>(4129i, 1i, -1i)))), (vec2<i32>(abs(-41802i), ~9137i) << (~(~vec2<u32>(var_3.b.a, 4294967295u)) % vec2<u32>(32u))) & -(~vec2<i32>(1i, 1i)), 1u);
}

