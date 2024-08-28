struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global1: i32 = 58664i;

var<private> global2: array<Struct_1, 8>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: bool) -> vec4<f32> {
    global2 = array<Struct_1, 8>();
    global2 = array<Struct_1, 8>();
    global0 = vec4<bool>(u_input.b != ~(~(u_input.d.x >> (14287u % 32u))), true, all(!global0.wy), !(true | (global0.x || !arg_2)));
    let var_0 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.d.ywx >> (vec3<u32>(u_input.a, 4891u, u_input.b) % vec3<u32>(32u)), vec3<u32>(u_input.d.x, u_input.d.x, u_input.a) << (vec3<u32>(u_input.a, u_input.d.x, 37485u) % vec3<u32>(32u))), vec3<u32>(~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1346u), vec2<u32>(u_input.a, 7014u)), 4294967295u)) >= 29777u;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 898f))), -1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1142f), 430f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(478f))))) - -486f));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-523f, var_1.x, -203f, var_1.x) + vec4<f32>(var_1.x, -2362f, var_1.x, var_1.x))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, 1050f, 425f, var_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1077f, var_1.x, -992f) - vec4<f32>(var_1.x, var_1.x, var_1.x, 571f))))) * vec4<f32>(var_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x - var_1.x), var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-1f))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: vec4<f32>) -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-654f)), _wgslsmith_f_op_f32(f32(-1f) * -1511f)), 1507f);
    global0 = !vec4<bool>(global0.x, arg_3.x < arg_3.x, !(global0.x & all(global0.zyw)), true);
    var var_1 = vec3<i32>(-abs(u_input.c), ~(-50122i), -2147483647i);
    let var_2 = ~select(vec2<u32>(arg_0.a, ~(arg_2 ^ arg_2)), vec2<u32>(~(~0u), ~(u_input.b & arg_1.a)), global0.zz);
    var_0 = _wgslsmith_f_op_vec2_f32(arg_3.xx * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_3.ww, vec2<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(-arg_3.x))))));
    return ~0i;
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = global0.xyw;
    global1 = min(-u_input.c >> (u_input.d.x % 32u), firstTrailingBit(func_4(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0, u_input.d.x), 8u)], Struct_1(u_input.a), countOneBits(arg_0), _wgslsmith_f_op_vec4_f32(func_3(arg_2.yz, u_input.e.yz, var_0.x)))) << (~_wgslsmith_div_u32(arg_0, abs(arg_0)) % 32u));
    let var_1 = vec4<f32>(682f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(305f, 377f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1256f)))), -936f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))));
    global2 = array<Struct_1, 8>();
    global0 = vec4<bool>(!(!(u_input.b >= 36576u)), false, true, var_1.x == _wgslsmith_f_op_f32(floor(-1000f)));
    return Struct_1(max(u_input.a, _wgslsmith_dot_vec4_u32(u_input.d, select(u_input.d, u_input.d, false))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: f32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_3 * arg_3), 667f, 1236f, arg_3) + vec4<f32>(_wgslsmith_f_op_f32(max(-369f, -726f)), -176f, _wgslsmith_f_op_f32(f32(-1f) * -1914f), _wgslsmith_div_f32(-174f, arg_3))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(881f, -982f, arg_3, arg_3) + vec4<f32>(-1861f, arg_3, arg_3, 1037f)) * vec4<f32>(925f, arg_3, 1033f, -247f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, 594f, arg_3)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, 444f, -225f, -1014f) * vec4<f32>(1969f, arg_3, 245f, -203f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, arg_3, -1432f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, 445f, 977f, arg_3) - vec4<f32>(arg_3, arg_3, -561f, arg_3)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, -259f, 550f, arg_3))))))));
    global1 = 20832i;
    let var_1 = func_2(u_input.d.x & ~reverseBits(80123u), vec2<i32>(0i, u_input.e.x), ~(vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.e, arg_1), countOneBits(8251i), u_input.e.x & arg_1.x, u_input.e.x) & ((u_input.e ^ arg_1) ^ -vec4<i32>(arg_1.x, 2544i, u_input.c, -40429i))));
    global1 = -2147483647i;
    global0 = select(vec4<bool>(any(!select(vec4<bool>(false, global0.x, false, false), vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(global0.x, global0.x, false, true))), any(!select(vec4<bool>(global0.x, true, false, true), vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(global0.x, false, false, false))), global0.x, false), select(vec4<bool>(!any(global0.wy), global0.x, global0.x != all(global0.xw), true), !select(select(vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, true, global0.x)), !vec4<bool>(global0.x, true, global0.x, true), select(vec4<bool>(true, true, false, global0.x), vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(true, false, global0.x, false))), !any(!vec4<bool>(global0.x, global0.x, false, false))), select(!(!vec4<bool>(global0.x, global0.x, false, true)), select(vec4<bool>(global0.x | true, true, !global0.x, global0.x), !vec4<bool>(global0.x, false, false, true), vec4<bool>(!global0.x, !global0.x, true & global0.x, false)), true));
    return select(!(!select(global0.zy, !vec2<bool>(global0.x, false), true)), global0.wy, false & global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 57221i ^ u_input.c;
    var var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(select(u_input.c, ~u_input.c, global0.x), u_input.c), u_input.e.x), _wgslsmith_add_vec2_i32(select(u_input.e.wz, u_input.e.yw, func_1(global2[_wgslsmith_index_u32(~35727u, 8u)], _wgslsmith_mod_vec4_i32(u_input.e, u_input.e), Struct_1(u_input.b), -1000f)), -_wgslsmith_mult_vec2_i32(u_input.e.yw, _wgslsmith_mult_vec2_i32(u_input.e.xx, u_input.e.yy))));
    global2 = array<Struct_1, 8>();
    global2 = array<Struct_1, 8>();
    let var_2 = select(vec4<bool>(true, true, true & (_wgslsmith_f_op_vec4_f32(func_3(u_input.e.wz, vec2<i32>(var_1.x, 11465i), global0.x)).x > _wgslsmith_f_op_f32(round(624f))), !(!global0.x == true)), !(!vec4<bool>(func_1(Struct_1(0u), vec4<i32>(var_1.x, var_1.x, u_input.c, -1i), global2[_wgslsmith_index_u32(1u, 8u)], -264f).x, func_1(global2[_wgslsmith_index_u32(u_input.a, 8u)], u_input.e, global2[_wgslsmith_index_u32(1u, 8u)], 1565f).x, func_1(Struct_1(1u), vec4<i32>(var_0, 4973i, 0i, 1i), Struct_1(u_input.d.x), 848f).x, global0.x)), true);
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1503f)) - 440f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -953f), -211f)))));
    let var_4 = global2[_wgslsmith_index_u32(41892u, 8u)];
    global2 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(50417u, u_input.b, ~(~var_4.a), 1u), u_input.d, u_input.d.yzz);
}

