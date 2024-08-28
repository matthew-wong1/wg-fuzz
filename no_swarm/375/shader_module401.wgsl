struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17> = array<f32, 17>(686f, 1356f, 451f, 2226f, -585f, 1339f, 439f, 1798f, 174f, 1062f, -1161f, 455f, -792f, -1701f, -234f, -687f, -466f);

var<private> global1: i32;

var<private> global2: u32 = 12686u;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> Struct_1 {
    global2 = 1u;
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(432f, global0[_wgslsmith_index_u32(1u, 17u)]) - vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)])) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1344f, -536f) * vec2<f32>(951f, 1153f))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -159f), global0[_wgslsmith_index_u32(26070u, 17u)]))), Struct_1(vec2<i32>(-1i) * -(~vec2<i32>(-20439i, 0i)), 35176u));
    global0 = array<f32, 17>();
    let var_1 = true;
    let var_2 = _wgslsmith_clamp_vec4_u32(abs(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 26515u, var_0.b.b, var_0.b.b), vec4<u32>(9955u, 0u, var_0.b.b, var_0.b.b)), u_input.a & vec4<u32>(u_input.a.x, 4294967295u, 0u, u_input.a.x))), ~_wgslsmith_div_vec4_u32(u_input.a, u_input.a) ^ ~(~vec4<u32>(u_input.a.x, 1u, 28689u, var_0.b.b)), ~(~vec4<u32>(0u, 28576u, u_input.a.x, 37992u))) | ~_wgslsmith_mult_vec4_u32(countOneBits(u_input.a), _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(var_0.b.b, 4294967295u, u_input.a.x, 34376u)), vec4<u32>(var_0.b.b, u_input.a.x, u_input.a.x, 21796u)));
    return var_0.b;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_4) -> i32 {
    global1 = 38773i ^ ~(firstLeadingBit(reverseBits(4556i)) >> (~min(arg_1.b.x, 5772u) % 32u));
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(19656u ^ arg_2.c.b, 17u)]), -403f), -899f, -959f, arg_2.a.x));
    var var_1 = arg_2.e.yw;
    let var_2 = arg_2;
    let var_3 = ~vec3<i32>(firstLeadingBit(1i) & ((var_2.c.a.x & 26346i) << (~arg_1.b.x % 32u)), ~_wgslsmith_mult_i32(i32(-1i) * -3138i, min(1i, arg_2.c.a.x)), -(~arg_2.c.a.x));
    return -countOneBits(var_2.c.a.x);
}

fn func_1() -> Struct_3 {
    let var_0 = abs(vec2<i32>(~1i >> (~_wgslsmith_add_u32(u_input.a.x, u_input.a.x) % 32u), _wgslsmith_clamp_i32(-47332i << (u_input.a.x % 32u), max(1i, -1i), 10187i) ^ (i32(-1i) * -1i)));
    global0 = array<f32, 17>();
    var var_1 = all(vec3<bool>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 4294967295u), 17u)] + _wgslsmith_f_op_f32(-772f - -684f)) != -1214f, !all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true)), false));
    global1 = 2147483647i;
    global1 = func_3(vec4<bool>(true, true, true, true), Struct_2(func_2(), ((u_input.a.xww | u_input.a.zwz) >> (u_input.a.wwz % vec3<u32>(32u))) | countOneBits(u_input.a.xww), -(~vec4<i32>(-2147483647i, 1i, var_0.x, var_0.x)), var_0.x, ~(~(i32(-1i) * -17684i))), Struct_4(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, u_input.a.x), 17u)], 1816f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(5817u, 17u)], -1000f), 1f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(844f, -1283f, -600f, -528f), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(0u, 17u)], -1000f, global0[_wgslsmith_index_u32(1u, 17u)])))))), max(~(~vec3<u32>(u_input.a.x, 57933u, u_input.a.x)), vec3<u32>(u_input.a.x, 3699u, _wgslsmith_clamp_u32(u_input.a.x, 7144u, u_input.a.x))), func_2(), u_input.a, !(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), false))));
    return Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(37857u), ~u_input.a.x), 17u)]), global0[_wgslsmith_index_u32(~(~27635u), 17u)]), Struct_1(~_wgslsmith_mult_vec2_i32(var_0, _wgslsmith_div_vec2_i32(var_0, var_0)), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~countOneBits(countOneBits(~(vec2<u32>(19944u, u_input.a.x) | vec2<u32>(76192u, u_input.a.x))));
    global1 = -_wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(-27633i, -1i), ~1i), _wgslsmith_sub_i32(1i, 30365i >> (var_0.x % 32u)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 15793i, -1i), vec3<i32>(1i, -86974i, 14312i)), vec3<i32>(1i, 1i, 1i))) >> (reverseBits(4294967295u) % 32u);
    let var_1 = false;
    let var_2 = func_1();
    global1 = func_3(select(!vec4<bool>(var_1, var_1, false, true), vec4<bool>(true, true, var_1, all(vec4<bool>(var_1, var_1, var_1, false))), var_1), Struct_2(var_2.b, vec3<u32>(u_input.a.x, _wgslsmith_sub_u32(88058u, var_2.b.b), ~87036u), _wgslsmith_sub_vec4_i32(vec4<i32>(-27269i, 20187i, var_2.b.a.x, var_2.b.a.x) ^ vec4<i32>(var_2.b.a.x, var_2.b.a.x, 32518i, var_2.b.a.x), vec4<i32>(2147483647i, -20363i, var_2.b.a.x, var_2.b.a.x) ^ vec4<i32>(-61256i, var_2.b.a.x, var_2.b.a.x, var_2.b.a.x)), var_2.b.a.x, -firstLeadingBit(var_2.b.a.x)), Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], -324f, 362f, 258f) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.a.x, -495f, 1073f, -512f), vec4<f32>(-1444f, 963f, 137f, global0[_wgslsmith_index_u32(1u, 17u)])))), vec3<u32>(~4294967295u, _wgslsmith_add_u32(var_2.b.b, 35212u), max(u_input.a.x, var_2.b.b)), var_2.b, _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(var_2.b.b, 0u, u_input.a.x, 22478u)), select(!vec4<bool>(false, false, var_1, true), select(vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(var_1, false, false, true), var_1), !vec4<bool>(true, true, var_1, var_1)))) >> (0u % 32u);
    var var_3 = Struct_2(func_2(), max(firstLeadingBit(countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, 1u), u_input.a.ywy))), vec3<u32>(~77643u, 62700u, _wgslsmith_dot_vec2_u32(var_0, u_input.a.zx)) ^ vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(u_input.a.yw, vec2<u32>(var_0.x, u_input.a.x)), _wgslsmith_add_u32(4294967295u, u_input.a.x))), ~(-(-vec4<i32>(var_2.b.a.x, 5279i, 1i, -2147483647i) & -vec4<i32>(var_2.b.a.x, var_2.b.a.x, -2147483647i, 2147483647i))), _wgslsmith_add_i32(~17802i, -((var_2.b.a.x & var_2.b.a.x) | -var_2.b.a.x)), 90439i);
    var var_4 = _wgslsmith_div_vec2_i32(vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(41469i, var_2.b.a.x, 2147483647i, var_2.b.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 1i, 10933i, 0i), var_3.c)) ^ _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_2.b.a.x, 39801i, var_2.b.a.x), vec3<i32>(var_2.b.a.x, var_3.d, 2147483647i)), var_3.c.xwx)), var_2.b.a);
    global1 = func_1().b.a.x;
    let var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

