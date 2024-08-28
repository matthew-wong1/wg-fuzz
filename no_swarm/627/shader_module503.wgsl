struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(-269f, 1103f), vec2<f32>(-117f, 585f), vec2<f32>(-214f, 853f));

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(69040u, vec2<bool>(false, true), 363f), Struct_1(0u, vec2<bool>(false, false), 1440f), Struct_1(37910u, vec2<bool>(true, false), -1478f), Struct_1(0u, vec2<bool>(true, true), -2392f), Struct_1(66704u, vec2<bool>(false, false), 2365f), Struct_1(4294967295u, vec2<bool>(true, true), 1000f), Struct_1(4294967295u, vec2<bool>(false, false), 1000f), Struct_1(0u, vec2<bool>(true, true), 1103f), Struct_1(4294967295u, vec2<bool>(true, false), -2014f), Struct_1(5408u, vec2<bool>(false, false), -165f), Struct_1(50261u, vec2<bool>(true, true), -731f), Struct_1(1u, vec2<bool>(true, false), 716f), Struct_1(4294967295u, vec2<bool>(false, false), 171f), Struct_1(16647u, vec2<bool>(true, false), -1955f), Struct_1(0u, vec2<bool>(false, false), -526f), Struct_1(1782u, vec2<bool>(true, false), -1000f), Struct_1(47557u, vec2<bool>(true, true), -229f), Struct_1(4294967295u, vec2<bool>(false, true), 669f), Struct_1(4294967295u, vec2<bool>(false, false), -182f), Struct_1(50213u, vec2<bool>(false, true), -1334f), Struct_1(1u, vec2<bool>(true, true), -708f), Struct_1(1u, vec2<bool>(true, false), 570f), Struct_1(4294967295u, vec2<bool>(false, true), 1000f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> vec2<u32> {
    let var_0 = select(!select(select(vec4<bool>(global1.b.x, false, true, true), !vec4<bool>(true, global1.b.x, global1.b.x, global1.b.x), vec4<bool>(global1.b.x, global1.b.x, false, global1.b.x)), !vec4<bool>(false, true, global1.b.x, global1.b.x), vec4<bool>(!global1.b.x, any(vec3<bool>(global1.b.x, global1.b.x, true)), true, true)), vec4<bool>(true, global1.b.x, global1.b.x, true), false);
    global2 = array<Struct_1, 23>();
    let var_1 = reverseBits(arg_0.xz);
    global0 = array<vec2<f32>, 3>();
    let var_2 = global2[_wgslsmith_index_u32(firstTrailingBit(~countOneBits(firstTrailingBit(1u))), 23u)];
    return vec2<u32>(global1.a, ~reverseBits(~(~0u)));
}

fn func_2() -> f32 {
    var var_0 = -abs(~(~(-vec4<i32>(-48346i, u_input.e, 0i, u_input.a))));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(min(func_3(vec3<u32>(27560u, u_input.c, global1.a) | vec3<u32>(global1.a, 146449u, 23001u)), vec2<u32>(_wgslsmith_div_u32(4294967295u, 50238u), 53096u)), vec2<u32>(u_input.b, global1.a) | vec2<u32>(~u_input.c, ~global1.a)), _wgslsmith_sub_u32(4294967295u, 1u ^ abs(u_input.c))), 23u)];
    var var_2 = var_0.yzw;
    var var_3 = func_3(~_wgslsmith_sub_vec3_u32(~vec3<u32>(var_1.a, var_1.a, u_input.b), vec3<u32>(func_3(vec3<u32>(5201u, global1.a, 41593u)).x, 1u, ~4294967295u)));
    let var_4 = vec4<bool>(all(vec4<bool>(false, any(vec3<bool>(var_1.b.x, var_1.b.x, global1.b.x)), true, _wgslsmith_f_op_f32(round(global1.c)) == -1005f)), any(select(global1.b, select(select(vec2<bool>(true, global1.b.x), vec2<bool>(var_1.b.x, true), var_1.b.x), var_1.b, var_1.b.x & true), !(false & var_1.b.x))), !(!(!(u_input.e <= -14976i))), false);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-786f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1223f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1089f)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(519f - global1.c) + -469f) * var_1.c) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-819f, global1.c, false))) * -785f)));
}

fn func_1() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(global1.c - -1856f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(890f, global1.c, 1802f) * vec3<f32>(global1.c, -663f, 730f)))))));
    let var_1 = global2[_wgslsmith_index_u32(global1.a, 23u)];
    var var_2 = ~reverseBits(_wgslsmith_add_i32(-(i32(-1i) * -1i), ~u_input.d));
    global0 = array<vec2<f32>, 3>();
    let var_3 = Struct_1(_wgslsmith_mod_u32(0u, min(3515u ^ ~var_1.a, u_input.b)), !select(global1.b, !select(vec2<bool>(global1.b.x, true), vec2<bool>(false, false), global1.b), all(vec2<bool>(global1.b.x, global1.b.x))), -709f);
    return select(!(!select(select(vec4<bool>(true, var_3.b.x, var_3.b.x, var_1.b.x), vec4<bool>(true, false, var_1.b.x, global1.b.x), vec4<bool>(true, var_1.b.x, var_1.b.x, true)), select(vec4<bool>(true, var_3.b.x, global1.b.x, false), vec4<bool>(true, true, false, true), true), var_1.b.x)), select(select(select(vec4<bool>(var_3.b.x, false, true, false), vec4<bool>(var_3.b.x, var_3.b.x, false, var_3.b.x), false), select(vec4<bool>(var_3.b.x, false, var_3.b.x, true), !vec4<bool>(false, global1.b.x, true, var_1.b.x), !var_1.b.x), any(!var_3.b)), vec4<bool>(!(!var_3.b.x), all(vec3<bool>(true, true, true)), any(vec2<bool>(var_3.b.x, var_3.b.x)), var_3.b.x), vec4<bool>(true, var_3.b.x & (865f <= var_0.x), false || !var_1.b.x, any(select(vec3<bool>(var_3.b.x, var_1.b.x, false), vec3<bool>(global1.b.x, true, global1.b.x), global1.b.x)))), !all(!(!vec3<bool>(false, false, var_1.b.x))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = global1.b.x;
    var var_1 = arg_1;
    var var_2 = global2[_wgslsmith_index_u32(u_input.b, 23u)];
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global1.c, var_2.c, _wgslsmith_div_f32(-465f, -785f))))));
    global2 = array<Struct_1, 23>();
    return Struct_1(27105u, vec2<bool>(false, 40108i == u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_2.c)), -867f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(429f - -580f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global1 = global2[_wgslsmith_index_u32(88942u, 23u)];
    global1 = func_4(15892u, global2[_wgslsmith_index_u32(~(~4294967295u), 23u)], func_1());
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-880f, global1.c)) + _wgslsmith_f_op_f32(-global1.c)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(236f, global1.c)), -890f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(trunc(global1.c)), true)))) - 121f);
    var var_2 = _wgslsmith_add_u32(func_4(func_3(firstTrailingBit(firstTrailingBit(vec3<u32>(global1.a, 1u, u_input.c)))).x, global2[_wgslsmith_index_u32(38624u, 23u)], !select(!vec4<bool>(var_0, false, false, global1.b.x), !vec4<bool>(var_0, var_0, var_0, true), true)).a, ~(u_input.b << (u_input.c % 32u)));
    var var_3 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.a, u_input.e, 11349i), u_input.e);
    global0 = array<vec2<f32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(27123u, 3u)]), select(select(select(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e, 0i), vec2<i32>(u_input.d, u_input.d)), -vec2<i32>(-2147483647i, u_input.e), any(vec3<bool>(var_0, true, var_0))), ~vec2<i32>(u_input.d, 1i), !select(global1.b, global1.b, true)), vec2<i32>(-1i) * -abs(vec2<i32>(u_input.e, 2147483647i)), select(vec2<bool>(true, var_0 && false), global1.b, global1.b.x)));
}

