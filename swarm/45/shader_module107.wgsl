struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_5, 7> = array<Struct_5, 7>(Struct_5(Struct_2(true, 271f, 3809i, 1i)), Struct_5(Struct_2(true, -465f, 1i, -17838i)), Struct_5(Struct_2(true, 1295f, 1i, -26142i)), Struct_5(Struct_2(true, -282f, 15444i, i32(-2147483648))), Struct_5(Struct_2(true, -165f, 2147483647i, 0i)), Struct_5(Struct_2(false, -755f, -27132i, -1i)), Struct_5(Struct_2(true, -1000f, -1i, -31455i)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<u32>) -> vec4<f32> {
    var var_0 = arg_0.ww;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-463f, 526f), _wgslsmith_div_f32(1774f, -1662f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(960f, _wgslsmith_f_op_f32(-1141f - -1343f), true))), -1599f, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(global0.x, u_input.b), min(u_input.b, max(-34558i, u_input.b)), ~(-u_input.b)), global0.wzz), -1i);
    var var_2 = var_1.b >= _wgslsmith_f_op_f32(270f + _wgslsmith_f_op_f32(-120f + _wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(var_1.b * var_1.b))));
    let var_3 = vec2<u32>(var_0.x, ~(u_input.e ^ ~u_input.c) | 1u);
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -909f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1022f)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-699f + var_4.x)), _wgslsmith_f_op_f32(-var_4.x), -137f, _wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(var_1.b, -499f), !var_1.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1264f, 587f, 119f, var_1.b), vec4<f32>(1000f, var_4.x, 349f, 1257f)))))));
}

fn func_2() -> bool {
    var var_0 = vec2<bool>(true, !(!(abs(global1.x) < 15149u)));
    let var_1 = min(0i, 66168i);
    let var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-984f, 1044f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(138f * _wgslsmith_f_op_f32(sign(195f))) + _wgslsmith_f_op_f32(max(-2248f, _wgslsmith_f_op_f32(-1630f - 830f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-2989f)), _wgslsmith_f_op_f32(select(422f, 188f, var_0.x))))), _wgslsmith_f_op_vec4_f32(func_3(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(14001u, 25164u, global1.x, 4294967295u), vec4<u32>(global1.x, 35054u, global1.x, u_input.d)))))));
    global1 = abs(select(vec2<u32>(global1.x ^ 5087u, u_input.c) ^ _wgslsmith_sub_vec2_u32(abs(vec2<u32>(0u, u_input.c)), _wgslsmith_mod_vec2_u32(vec2<u32>(3395u, global1.x), vec2<u32>(1u, global1.x))), reverseBits(vec2<u32>(1u, global1.x)), false));
    let var_3 = Struct_1(1376f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(463f * var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(415f)))), -25563i, -u_input.b == ~u_input.b);
    return var_3.d;
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = (func_2() & (~_wgslsmith_dot_vec4_u32(vec4<u32>(36999u, u_input.a, arg_0, arg_0), vec4<u32>(u_input.e, u_input.d, 4294967295u, 12087u)) <= ~59458u)) | !(true | !func_2());
    global1 = max(min(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(18032u, u_input.a), vec2<u32>(arg_0, 1866u))), select(reverseBits(vec2<u32>(44064u, 17127u)), ~vec2<u32>(global1.x, u_input.d), all(vec4<bool>(false, false, false, var_0)))) | vec2<u32>(global1.x, 0u), vec2<u32>(global1.x, max(4294967295u, u_input.a)));
    let var_1 = Struct_1(950f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1381f)))) - -711f), 1i, select(func_2(), false, all(vec4<bool>(true, func_2(), 4294967295u <= u_input.d, false))));
    global2 = array<Struct_5, 7>();
    let var_2 = global2[_wgslsmith_index_u32(1u, 7u)];
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_2.a.b)))), Struct_1(-673f, var_1.a, 9116i, var_2.a.a), var_2.a, ~_wgslsmith_add_i32(var_1.c, -40443i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~global1.x, u_input.c), 60056u, ~(~global1.x), ~reverseBits(4294967295u)), select(_wgslsmith_mult_vec4_u32(vec4<u32>(6496u, 33709u, 1561u, 0u), ~vec4<u32>(u_input.c, global1.x, 0u, 35611u)), firstLeadingBit(vec4<u32>(global1.x, global1.x, 27129u, global1.x)) << (~vec4<u32>(4294967295u, global1.x, 11512u, 0u) % vec4<u32>(32u)), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), true)));
    var var_1 = vec4<u32>(global1.x, u_input.e, u_input.c, 45435u);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(415f - -717f), _wgslsmith_div_f32(-1000f, -641f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1441f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), max(-11747i, -12989i), true);
    global0 = ~vec4<i32>(-2147483647i, _wgslsmith_add_i32(-(-7725i ^ var_2.c), 2147483647i), (u_input.b >> ((global1.x << (1u % 32u)) % 32u)) >> (var_0.x % 32u), -5346i);
    let var_3 = vec4<bool>(select(true, var_2.d, select(any(select(vec3<bool>(var_2.d, true, var_2.d), vec3<bool>(var_2.d, var_2.d, var_2.d), vec3<bool>(var_2.d, var_2.d, false))), !var_2.d, true)), false, _wgslsmith_f_op_f32(-var_2.b) < _wgslsmith_f_op_f32(min(var_2.a, _wgslsmith_f_op_f32(f32(-1f) * -1154f))), true);
    global2 = array<Struct_5, 7>();
    var var_4 = func_1(0u);
    var var_5 = ~u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, var_4.b.b, 1f, _wgslsmith_f_op_f32(836f + _wgslsmith_f_op_f32(max(435f, 334f))))), var_0, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -148f), -903f, func_1(u_input.d).b.d)) * var_4.c.b), _wgslsmith_f_op_f32(-var_4.b.a), var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a.x * _wgslsmith_div_f32(var_2.a, var_2.a)))));
}

