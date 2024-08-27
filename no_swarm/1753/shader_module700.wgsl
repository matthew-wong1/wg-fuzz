struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -240f;

var<private> global1: array<bool, 15> = array<bool, 15>(true, true, false, false, true, true, true, false, false, false, false, true, true, false, false);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2() -> f32 {
    let var_0 = -_wgslsmith_sub_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 1i, 2147483647i) << (vec4<u32>(u_input.a, 0u, u_input.c, u_input.b.x) % vec4<u32>(32u)), vec4<i32>(-11249i, -23510i, 1i, 2146i))) & ~vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-19217i, -6550i, 11757i), vec3<i32>(-54874i, -2147483647i, -21467i)), 1i), 1i, -(-2147483647i << (u_input.b.x % 32u)), 2147483647i << (u_input.c % 32u));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1619f, _wgslsmith_f_op_f32(-1000f + 201f))))), _wgslsmith_f_op_f32(f32(-1f) * -341f));
    var var_1 = -493f;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1061f, -1133f)))), 951f));
}

fn func_1() -> vec3<f32> {
    global1 = array<bool, 15>();
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2())));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1459f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2())))) - _wgslsmith_f_op_f32(trunc(688f))));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(934f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1402f - -959f) * _wgslsmith_div_f32(758f, -1616f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-381f + 486f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1033f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1196f, -336f) - 580f))), _wgslsmith_div_f32(1608f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -683f))))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: i32) -> u32 {
    let var_0 = !vec4<bool>(!global1[_wgslsmith_index_u32(43430u, 15u)], global1[_wgslsmith_index_u32(~(arg_1.x & (arg_1.x << (arg_2.e % 32u))), 15u)], true, !(-298f > _wgslsmith_f_op_f32(1354f + arg_2.c.b.x)));
    let var_1 = arg_2.a.c;
    global1 = array<bool, 15>();
    let var_2 = true;
    let var_3 = ~_wgslsmith_sub_vec3_i32(~(-(vec3<i32>(arg_2.b, 48761i, arg_3) ^ vec3<i32>(arg_2.b, arg_3, 79164i))), -(vec3<i32>(1i, 12653i, -1i) | arg_2.a.a));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!any(!vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(u_input.b.x, 15u)]))) & false;
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_1())));
    let var_2 = select(select(!select(!vec3<bool>(true, var_0, global1[_wgslsmith_index_u32(u_input.a, 15u)]), !vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 15u)], var_0), !vec3<bool>(var_0, global1[_wgslsmith_index_u32(u_input.a, 15u)], global1[_wgslsmith_index_u32(u_input.b.x, 15u)])), vec3<bool>(all(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 15u)], var_0, false)), any(select(vec4<bool>(false, false, true, var_0), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 15u)], global1[_wgslsmith_index_u32(13305u, 15u)], var_0, true), var_0)), _wgslsmith_f_op_f32(var_1.x - var_1.x) >= _wgslsmith_f_op_f32(2853f * var_1.x)), true), select(!select(vec3<bool>(var_0, true, var_0), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, true), vec3<bool>(global1[_wgslsmith_index_u32(87302u, 15u)], global1[_wgslsmith_index_u32(1u, 15u)], true)), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 15u)], false, true), vec3<bool>(var_0, true, false), true)), !(!vec3<bool>(true, global1[_wgslsmith_index_u32(20189u, 15u)], var_0)), var_0), true == any(!vec2<bool>(global1[_wgslsmith_index_u32(13932u, 15u)], var_0)));
    var var_3 = ~vec4<u32>(countOneBits(17956u), ~_wgslsmith_dot_vec2_u32(min(vec2<u32>(82873u, u_input.c), u_input.b), u_input.b), _wgslsmith_div_u32(func_3(select(var_2, var_2, global1[_wgslsmith_index_u32(4294967295u, 15u)]), ~vec4<u32>(u_input.b.x, 4294967295u, 26759u, 34312u), Struct_2(Struct_1(vec3<i32>(0i, -27000i, 1i), vec3<f32>(143f, var_1.x, -403f), vec2<u32>(u_input.b.x, u_input.a), 16657i), -4746i, Struct_1(vec3<i32>(-17218i, 63666i, 1i), vec3<f32>(var_1.x, -1292f, var_1.x), vec2<u32>(0u, 4294967295u), 1i), true, 34785u), 9638i >> (u_input.c % 32u)), _wgslsmith_sub_u32(1u, 1u)), abs(0u | u_input.c));
    let var_4 = ~(~(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(31257u, 1u, 4294967295u, var_3.x), vec4<u32>(0u, var_3.x, 29757u, var_3.x)), _wgslsmith_div_u32(var_3.x, u_input.b.x), 0u)));
    let var_5 = Struct_3(Struct_1(max(countOneBits(vec3<i32>(78889i, 2147483647i, -1i)), select(-vec3<i32>(-10105i, 0i, -30373i), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -37981i, -2147483647i), vec3<i32>(-33691i, 2147483647i, 45581i), vec3<i32>(46075i, -36544i, -20525i)), true)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, _wgslsmith_div_f32(1305f, 1000f), -1943f))), u_input.b, 1i), -26699i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-237f, _wgslsmith_f_op_vec3_f32(func_1()).x), _wgslsmith_f_op_vec2_f32(floor(var_1.yx))))));
    var var_6 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_5.c.x, var_1.x), _wgslsmith_div_f32(527f, _wgslsmith_f_op_f32(-var_1.x))));
    var var_7 = Struct_2(var_5.a, var_5.b, var_5.a, true, ~func_3(var_2, abs(vec4<u32>(63437u, u_input.a, var_4.x, var_4.x)) << (vec4<u32>(u_input.c, 39742u, 34855u, 10834u) % vec4<u32>(32u)), Struct_2(Struct_1(vec3<i32>(var_5.b, 2147483647i, -46593i), vec3<f32>(var_1.x, var_1.x, -816f), var_4.yz, 0i), var_5.a.a.x, Struct_1(var_5.a.a, vec3<f32>(-1000f, var_1.x, -711f), vec2<u32>(0u, 23962u), 2147483647i), false, ~60975u), ~(-1i >> (var_4.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.a, 4294967295u), max(vec3<u32>(var_5.a.c.x, u_input.c, var_5.a.c.x), var_3.xzy)) << (reverseBits(firstTrailingBit(vec3<u32>(1555u, 43213u, 5727u))) % vec3<u32>(32u)), vec3<u32>(reverseBits(abs(4294967295u)), reverseBits(1u), var_7.e)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-920f, -558f)), 1154f) * _wgslsmith_f_op_f32(f32(-1f) * -538f)))), var_5.a.d);
}

