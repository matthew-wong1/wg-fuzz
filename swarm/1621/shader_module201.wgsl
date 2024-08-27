struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: u32 = 0u;

var<private> global2: Struct_2;

var<private> global3: array<f32, 13> = array<f32, 13>(341f, -173f, -1000f, -1017f, 460f, 1055f, 1347f, -634f, -1246f, -438f, 572f, 1805f, -1104f);

var<private> global4: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 74361u), vec4<u32>(60044u, 1u, 22439u, 1u), vec4<u32>(42545u, 4294967295u, 0u, 15290u), vec4<u32>(35446u, 4294967295u, 4294967295u, 0u), vec4<u32>(0u, 57061u, 28103u, 20545u), vec4<u32>(42008u, 38927u, 0u, 1u), vec4<u32>(4294967295u, 1u, 0u, 1u), vec4<u32>(1u, 4294967295u, 15457u, 36607u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), vec4<u32>(0u, 0u, 27232u, 94746u), vec4<u32>(4294967295u, 1u, 47507u, 57696u), vec4<u32>(14572u, 23935u, 0u, 1u), vec4<u32>(4294967295u, 54337u, 1u, 0u), vec4<u32>(19242u, 4294967295u, 4294967295u, 96916u), vec4<u32>(35104u, 78073u, 1911u, 0u), vec4<u32>(4294967295u, 1u, 0u, 7775u), vec4<u32>(0u, 46932u, 0u, 16041u), vec4<u32>(63995u, 1u, 4294967295u, 0u), vec4<u32>(4294967295u, 0u, 65u, 1u), vec4<u32>(1u, 0u, 42322u, 0u), vec4<u32>(91u, 68227u, 76915u, 0u), vec4<u32>(0u, 45243u, 0u, 1u), vec4<u32>(0u, 28721u, 4294967295u, 11286u), vec4<u32>(28427u, 1u, 1u, 4294967295u), vec4<u32>(131999u, 79013u, 0u, 0u), vec4<u32>(49227u, 0u, 4294967295u, 0u));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<u32>) -> vec2<i32> {
    var var_0 = global2.c;
    var_0 = Struct_1(var_0.a, -arg_0 ^ ~(-(~vec4<i32>(u_input.b, global2.c.c, global2.b.x, 2147483647i))), ~arg_0.x, any(vec2<bool>(all(vec2<bool>(global2.c.d, global0.x)), true)));
    global2 = Struct_2(Struct_1(vec2<i32>(u_input.b, 0i), arg_0, _wgslsmith_div_i32(var_0.b.x, -(i32(-1i) * -52195i)), (~4469i & abs(global2.c.a.x)) == 1i), -(_wgslsmith_mult_vec2_i32(global2.b, var_0.a) >> (~arg_1 % vec2<u32>(32u))) >> (vec2<u32>(97307u, u_input.a.x) % vec2<u32>(32u)), global2.c);
    let var_1 = Struct_2(Struct_1(countOneBits(abs(_wgslsmith_mod_vec2_i32(var_0.a, var_0.a))), arg_0, 44976i, !all(select(vec3<bool>(global2.c.d, true, var_0.d), vec3<bool>(global2.a.d, global2.c.d, true), vec3<bool>(global0.x, var_0.d, global0.x)))), vec2<i32>(-arg_0.x, 0i), global2.c);
    global3 = array<f32, 13>();
    return firstLeadingBit(~var_0.b.wy | ~(-global2.b)) >> (vec2<u32>(select(firstTrailingBit(u_input.a.x), ~select(4294967295u, u_input.a.x, false), all(!vec3<bool>(global0.x, var_0.d, var_0.d))), _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a.wz), reverseBits(u_input.a.wx ^ u_input.a.zz))) % vec2<u32>(32u));
}

fn func_2() -> vec2<i32> {
    var var_0 = Struct_2(Struct_1(~(global2.b >> (_wgslsmith_mod_vec2_u32(u_input.a.xw, vec2<u32>(0u, u_input.a.x)) % vec2<u32>(32u))), ~(~firstLeadingBit(global2.c.b)), global2.b.x, global0.x), -func_3(global2.a.b, _wgslsmith_sub_vec2_u32(u_input.a.zw ^ vec2<u32>(4294967295u, 4294967295u), u_input.a.xx)), global2.c);
    let var_1 = 0u;
    global2 = Struct_2(var_0.a, var_0.b, Struct_1(vec2<i32>(~(-var_0.a.c), var_0.c.a.x), global2.c.b, _wgslsmith_sub_i32(_wgslsmith_sub_i32(-1i, 1i), ~0i << ((u_input.a.x >> (1u % 32u)) % 32u)), !global0.x));
    global1 = reverseBits(var_1);
    let var_2 = -907f;
    return _wgslsmith_mod_vec2_i32(max(-vec2<i32>(u_input.b, -46143i) | (var_0.a.b.xy >> (vec2<u32>(var_1, var_1) % vec2<u32>(32u))), var_0.c.b.zw) << (firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(39416u, u_input.a.x), u_input.a.xy)) % vec2<u32>(32u)), vec2<i32>(u_input.b, 37515i));
}

fn func_1(arg_0: vec4<f32>) -> vec2<i32> {
    let var_0 = u_input.a.zz;
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(global2.b, _wgslsmith_clamp_vec2_i32(global2.c.b.wz, func_2(), -_wgslsmith_mult_vec2_i32(global2.a.b.yy, global2.b))), min(max(global2.c.b.x, -6244i), -_wgslsmith_dot_vec2_i32(global2.a.b.xx, vec2<i32>(-1i, u_input.b)) ^ _wgslsmith_mod_i32(1i, u_input.b)));
    let var_2 = Struct_1(min(select(_wgslsmith_mult_vec2_i32(global2.b, vec2<i32>(u_input.b, 0i)), abs(global2.c.a), var_1 != -2147483647i) ^ global2.a.a, -global2.a.a), vec4<i32>(_wgslsmith_clamp_i32(u_input.b, _wgslsmith_clamp_i32(-global2.b.x, -21986i, var_1), -(global2.a.c & var_1)), -74347i, 1i, 15221i), -2147483647i, global0.x);
    global0 = !vec3<bool>(!(!var_2.d) && true, _wgslsmith_div_f32(-1320f, _wgslsmith_f_op_f32(select(948f, arg_0.x, true))) > _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(max(0u, 0u), 13u)])), all(vec3<bool>(false, select(global2.c.d, true, global0.x), true)));
    global2 = Struct_2(var_2, global2.c.a, Struct_1(countOneBits(vec2<i32>(2147483647i, global2.b.x)) << (u_input.a.xx % vec2<u32>(32u)), ~vec4<i32>(-2147483647i << (var_0.x % 32u), var_1, _wgslsmith_add_i32(-1i, global2.b.x), _wgslsmith_dot_vec4_i32(var_2.b, global2.c.b)), global2.c.c, true));
    return vec2<i32>(_wgslsmith_add_i32(27676i | var_2.a.x, reverseBits(func_2().x)), min(global2.b.x, ~((var_2.a.x & var_1) << (var_0.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(all(select(vec4<bool>(global2.a.d, global2.a.d | global2.a.d, !global0.x, global0.x), vec4<bool>(global2.c.d, u_input.a.x <= 1u, global0.x, global0.x), select(!vec4<bool>(global0.x, global0.x, global0.x, global0.x), select(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(global0.x, false, true, global2.c.d), false), select(vec4<bool>(true, global2.a.d, global2.a.d, true), vec4<bool>(true, true, true, global0.x), global2.a.d)))), false, !global0.x);
    global2 = Struct_2(global2.c, -_wgslsmith_mod_vec2_i32(func_1(vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 13u)], global3[_wgslsmith_index_u32(u_input.a.x, 13u)], -591f, global3[_wgslsmith_index_u32(u_input.a.x, 13u)])), vec2<i32>(func_2().x, _wgslsmith_add_i32(-3602i, u_input.b))), global2.c);
    var var_0 = Struct_2(Struct_1(global2.c.a, firstTrailingBit(min(vec4<i32>(0i, u_input.b, -6019i, global2.c.b.x), global2.c.b)) | -global2.c.b, _wgslsmith_dot_vec2_i32((global2.b | vec2<i32>(global2.b.x, u_input.b)) << (u_input.a.ww % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec3_i32(global2.a.b.wzx, vec3<i32>(u_input.b, global2.a.b.x, global2.c.c)), 31002i)), global2.c.d), global2.c.a, Struct_1(min(~global2.c.b.yy, -(~vec2<i32>(47167i, global2.c.c))), global2.c.b, ~u_input.b, all(vec4<bool>(global2.a.d, true, false | global2.a.d, all(vec3<bool>(false, global2.c.d, global2.c.d))))));
    global3 = array<f32, 13>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a.x, 13u)] + -299f), _wgslsmith_f_op_f32(103f + global3[_wgslsmith_index_u32(47446u, 13u)]), _wgslsmith_f_op_f32(max(1315f, 1134f))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(155f, -1810f, global3[_wgslsmith_index_u32(19063u, 13u)], global3[_wgslsmith_index_u32(12883u, 13u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2512f, -2080f, 1000f, 749f) + vec4<f32>(-1000f, 1811f, -336f, -1253f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1410f, 329f, global3[_wgslsmith_index_u32(u_input.a.x, 13u)], global3[_wgslsmith_index_u32(u_input.a.x, 13u)]), vec4<f32>(global3[_wgslsmith_index_u32(25261u, 13u)], global3[_wgslsmith_index_u32(52374u, 13u)], -151f, 1084f), false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-444f, -511f, global3[_wgslsmith_index_u32(u_input.a.x, 13u)], -1000f) - vec4<f32>(808f, -1159f, global3[_wgslsmith_index_u32(u_input.a.x, 13u)], 506f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3[_wgslsmith_index_u32(2778u, 13u)], -1446f, 800f, global3[_wgslsmith_index_u32(u_input.a.x, 13u)])))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(25335u, 13u)])), _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(4294967295u, 13u)], global3[_wgslsmith_index_u32(u_input.a.x, 13u)])), -491f, 493f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 13u)], global3[_wgslsmith_index_u32(u_input.a.x, 13u)], -316f, global3[_wgslsmith_index_u32(u_input.a.x, 13u)]) + vec4<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 13u)], 463f, 417f, -1005f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(-696f)), ~var_0.a.b & _wgslsmith_mult_vec4_i32(global2.a.b, ~(-vec4<i32>(-57035i, 2971i, 25549i, u_input.b))), var_1.x, u_input.a.x | _wgslsmith_div_u32(firstLeadingBit(4294967295u | u_input.a.x), abs(0u)), countOneBits(min(var_0.c.b, firstLeadingBit(var_0.c.b))));
}

