struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3>;

var<private> global1: vec2<bool>;

var<private> global2: bool = false;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec3<bool> {
    var var_0 = -(~min(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), countOneBits(vec3<i32>(1i, 2147483647i, 54865i)), ~vec3<i32>(28405i, -2147483647i, 0i)), vec3<i32>(0i, -20065i, -2147483647i)));
    let var_1 = select(vec3<i32>(_wgslsmith_clamp_i32(var_0.x, 2147483647i, var_0.x >> (~u_input.a % 32u)), 2147483647i, reverseBits(max(0i, firstTrailingBit(var_0.x)))), vec3<i32>(min(_wgslsmith_clamp_i32(var_0.x, var_0.x, 2147483647i), -1i), var_0.x, var_0.x) ^ vec3<i32>(-1i, _wgslsmith_sub_i32(2147483647i, countOneBits(var_0.x)), _wgslsmith_clamp_i32(max(var_0.x, var_0.x), ~0i, -33968i)), select(!vec3<bool>(all(vec2<bool>(true, global1.x)), all(vec4<bool>(true, true, false, false)), !global1.x), !select(select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, true, true)), vec3<bool>(global1.x, true, false), vec3<bool>(true, global1.x, false)), vec3<bool>(!any(vec3<bool>(global1.x, global1.x, true)), any(vec3<bool>(true, true, true)), true)));
    global0 = array<u32, 3>();
    var var_2 = -2147483647i;
    var var_3 = reverseBits(firstTrailingBit(vec3<u32>(0u, u_input.a, _wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 3u)], 3u)], 3u)], _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.a, 3u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 3u)])))));
    return !vec3<bool>(select(!global1.x, true, global1.x), all(select(vec4<bool>(false, global1.x, false, true), select(vec4<bool>(global1.x, true, true, global1.x), vec4<bool>(false, global1.x, global1.x, global1.x), false), !global1.x)), all(vec4<bool>(true, true, true, true)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = !(!(!any(vec4<bool>(global1.x, false, arg_0.b, true)))) | true;
    var_0 = Struct_1(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 4294967295u, 30236u), ~vec3<u32>(1u, arg_1.x, global0[_wgslsmith_index_u32(arg_2.c, 3u)]))), ~8667u), !var_0.b, arg_2.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d.x, var_0.d.x, arg_2.d.x, arg_0.d.x)), _wgslsmith_div_vec4_f32(vec4<f32>(863f, -883f, var_0.d.x, arg_2.d.x), vec4<f32>(-459f, arg_2.d.x, 693f, arg_0.d.x)), arg_2.b))) + _wgslsmith_f_op_vec4_f32(arg_0.d + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.d - vec4<f32>(arg_2.d.x, var_0.d.x, 792f, arg_2.d.x))))));
    global1 = vec2<bool>(true, global1.x);
    var var_2 = arg_0;
    return Struct_1(13985u, all(select(vec3<bool>(global1.x, true, false), func_3(), !func_3())), _wgslsmith_sub_u32(arg_0.a, global0[_wgslsmith_index_u32(var_0.a, 3u)]) & _wgslsmith_dot_vec4_u32(~(vec4<u32>(global0[_wgslsmith_index_u32(arg_1.x, 3u)], 1u, 8108u, 4294967295u) ^ vec4<u32>(global0[_wgslsmith_index_u32(var_2.a, 3u)], var_2.a, 1u, var_0.a)), ~vec4<u32>(global0[_wgslsmith_index_u32(var_0.c, 3u)], 0u, u_input.a, arg_0.a) >> (vec4<u32>(var_2.c, global0[_wgslsmith_index_u32(21727u, 3u)], var_2.c, 0u) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(arg_2.d * _wgslsmith_div_vec4_f32(vec4<f32>(-601f, _wgslsmith_f_op_f32(arg_0.d.x - 338f), _wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(-var_2.d.x)), var_0.d)));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> bool {
    global0 = array<u32, 3>();
    let var_0 = ~(-(~arg_2));
    let var_1 = arg_1;
    let var_2 = Struct_1(~37043u, all(func_3().yy) && true, ~(_wgslsmith_sub_u32(64767u, var_1.c) & _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(1u, 3u)], 0u), vec2<u32>(arg_1.a, 6518u)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c, arg_1.c), vec2<u32>(0u, 0u)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-122f, _wgslsmith_f_op_f32(abs(var_1.d.x)), var_1.d.x, 493f)));
    let var_3 = var_1.d.x;
    return !any(!vec2<bool>(!global1.x, var_1.b));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(710f - arg_1.d.x), _wgslsmith_f_op_f32(1f + -443f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-394f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -477f)))), arg_1.d.x);
    global1 = vec2<bool>(!global1.x, all(vec3<bool>(any(select(vec3<bool>(arg_0.b, false, arg_2.b), vec3<bool>(false, arg_0.b, false), vec3<bool>(false, true, false))), 2359u != _wgslsmith_clamp_u32(arg_2.c, 0u, arg_0.c), true && arg_0.b)));
    global1 = !select(select(!select(vec2<bool>(arg_1.b, arg_0.b), vec2<bool>(global1.x, false), vec2<bool>(false, arg_2.b)), !select(vec2<bool>(global1.x, true), vec2<bool>(true, true), vec2<bool>(arg_0.b, arg_2.b)), arg_2.b), vec2<bool>(true, arg_1.b), func_4(arg_0.b, func_2(arg_2, vec2<u32>(4914u, global0[_wgslsmith_index_u32(25457u, 3u)]), arg_2), -4892i) == true);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.yy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d.x, -240f)))) + arg_2.d.yz));
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_2.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, var_0.x, var_1.x, arg_1.d.x))))))));
    return Struct_1(1u, func_3().x, _wgslsmith_add_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_2.c), vec2<u32>(arg_2.a, 0u))), arg_0.a) << (1u % 32u), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.d.x, -593f, arg_2.d.x, 800f), vec4<f32>(arg_0.d.x, 674f, 1000f, 447f)))) * _wgslsmith_f_op_vec4_f32(var_0 + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2301f, 904f, -150f, arg_1.d.x))))))));
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> vec2<u32> {
    let var_0 = vec4<i32>(-(~abs(-18871i)), max(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -9834i), vec2<i32>(-2147483647i, -1i)) & ~_wgslsmith_dot_vec3_i32(vec3<i32>(-28422i, 49870i, 0i), vec3<i32>(-2147483647i, 1i, -59867i)), 1i), ~(~(-2147483647i >> (func_1(Struct_1(27802u, true, u_input.a, arg_0.d), arg_0, Struct_1(4294967295u, true, u_input.a, arg_0.d)).a % 32u))), 1i);
    global1 = vec2<bool>(!select(true, arg_1 && true, true), false);
    let var_1 = ~_wgslsmith_div_vec3_i32(var_0.ywx, ~vec3<i32>(var_0.x, var_0.x, 1i)) >> (max(_wgslsmith_mod_vec3_u32(select(vec3<u32>(4294967295u, 59414u, arg_0.c), vec3<u32>(u_input.a, 1u, 1u), arg_0.b) ^ vec3<u32>(1u, u_input.a, 43293u), (vec3<u32>(global0[_wgslsmith_index_u32(36808u, 3u)], 22386u, u_input.a) >> (vec3<u32>(u_input.a, arg_0.c, global0[_wgslsmith_index_u32(21079u, 3u)]) % vec3<u32>(32u))) | vec3<u32>(49312u, 57942u, u_input.a)), countOneBits(vec3<u32>(37081u, ~arg_0.c, u_input.a))) % vec3<u32>(32u));
    var var_2 = Struct_1(abs(u_input.a), arg_0.b, ~(u_input.a & 70387u), arg_0.d);
    return ~(~(~vec2<u32>(var_2.a, 1u)));
}

fn func_6(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = min(arg_0, arg_0 << (~(~reverseBits(arg_0)) % vec2<u32>(32u)));
    var var_1 = Struct_1(var_0.x, true, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(1u, 3u)], 4294967295u), arg_0), ~max(vec2<u32>(1u, arg_0.x), vec2<u32>(0u, 1u))), ~4294967295u, 13986u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-316f, 172f, -1320f, -714f) + vec4<f32>(919f, 279f, 513f, 1030f)) * vec4<f32>(1201f, -1308f, 1000f, 266f)))));
    return Struct_1(arg_0.x, !any(select(!vec3<bool>(global1.x, false, true), vec3<bool>(false, global1.x, var_1.b), var_1.b)), min(~_wgslsmith_div_u32(75366u, 64607u), _wgslsmith_clamp_u32(15261u, 0u, ~154077u)) >> (var_1.a % 32u), var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(43000u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 3u)]), ~vec2<u32>(40903u, u_input.a)), 3u)], ~(~global0[_wgslsmith_index_u32(19150u, 3u)] ^ (global0[_wgslsmith_index_u32(0u, 3u)] << (u_input.a % 32u))), any(select(vec2<bool>(true, global1.x), vec2<bool>(true, global1.x), !global1.x))), global1.x, u_input.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -901f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1169f, -1000f)), _wgslsmith_f_op_f32(select(-1000f, -1796f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-101f, 533f)) - 1000f), -2145f) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1839f, 914f, 388f, -860f))) - vec4<f32>(1460f, -208f, -491f, 243f))))));
    let var_1 = !vec3<bool>(false, false, !(!all(vec3<bool>(false, global1.x, var_0.b))));
    var var_2 = func_6(select(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(u_input.a, 0u)), func_5(func_1(Struct_1(var_0.a, var_0.b, u_input.a, vec4<f32>(-828f, var_0.d.x, 1170f, 846f)), Struct_1(1u, global1.x, global0[_wgslsmith_index_u32(1u, 3u)], vec4<f32>(var_0.d.x, 902f, -416f, var_0.d.x)), Struct_1(1u, var_0.b, 1051u, var_0.d)), true)), ~_wgslsmith_add_vec2_u32(vec2<u32>(22457u, var_0.a), vec2<u32>(global0[_wgslsmith_index_u32(19422u, 3u)], 16813u)) & vec2<u32>(var_0.c << (7871u % 32u), 1u), max(~u_input.a, global0[_wgslsmith_index_u32(0u, 3u)]) < (~40647u << (global0[_wgslsmith_index_u32(u_input.a, 3u)] % 32u))));
    var var_3 = _wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(abs(var_2.c), _wgslsmith_div_u32(var_2.a, var_2.a)), vec2<u32>(var_2.a, var_0.a) | ~vec2<u32>(0u, 0u)), _wgslsmith_div_vec2_u32(~((vec2<u32>(var_2.c, 4294967295u) << (vec2<u32>(0u, var_2.a) % vec2<u32>(32u))) | min(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.a, 4294967295u))), min(vec2<u32>(select(u_input.a, 0u, false), select(var_0.c, var_0.c, global1.x)), ~max(vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 3u)], var_0.c), vec2<u32>(global0[_wgslsmith_index_u32(var_0.c, 3u)], var_2.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, func_6(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u) | vec2<u32>(u_input.a, 1u), max(vec2<u32>(4294967295u, 61262u), vec2<u32>(u_input.a, 46239u))) << (countOneBits(vec2<u32>(var_3.x, 4294967295u) << (vec2<u32>(4294967295u, var_3.x) % vec2<u32>(32u))) % vec2<u32>(32u))).d.x, ~(-(~_wgslsmith_clamp_i32(-33468i, -20515i, 1i))), vec2<f32>(-152f, _wgslsmith_f_op_f32(step(var_0.d.x, 826f))));
}

