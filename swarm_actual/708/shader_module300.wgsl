struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 19>;

var<private> global1: i32;

var<private> global2: Struct_1;

var<private> global3: array<vec3<u32>, 15>;

var<private> global4: array<bool, 8> = array<bool, 8>(false, true, true, true, false, false, true, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> u32 {
    var var_0 = !(!vec4<bool>(!(global2.a.x < arg_2.b), false, false, true));
    let var_1 = all(select(select(vec2<bool>(all(vec4<bool>(global4[_wgslsmith_index_u32(1u, 8u)], global4[_wgslsmith_index_u32(u_input.b, 8u)], var_0.x, var_0.x)), false), select(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, global2.c.x), 19u)], select(vec2<bool>(true, var_0.x), var_0.xx, var_0.wx), true), !vec2<bool>(false, global4[_wgslsmith_index_u32(4294967295u, 8u)])), select(var_0.xz, var_0.zx, var_0.zw), any(select(vec4<bool>(false, var_0.x, true, false), select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, true, true), vec4<bool>(var_0.x, var_0.x, true, global4[_wgslsmith_index_u32(1u, 8u)])), all(global0[_wgslsmith_index_u32(global2.c.x, 19u)])))));
    global1 = countOneBits(-5171i);
    var var_2 = true;
    global1 = 37505i;
    return _wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(max(_wgslsmith_add_u32(_wgslsmith_mod_u32(0u >> (1u % 32u), 30056u), 2949u), ~abs(~global2.c.x)), 15u)], firstTrailingBit(~arg_2.c));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = -1i;
    let var_1 = ~16280u;
    var var_2 = global2.c.zx;
    let var_3 = arg_3;
    let var_4 = Struct_1(_wgslsmith_mult_vec4_i32(global2.a, -global2.a), _wgslsmith_mult_i32(firstTrailingBit(arg_3.b), arg_3.b), min(~_wgslsmith_clamp_vec3_u32(vec3<u32>(112002u, u_input.b, u_input.b) << (global2.c % vec3<u32>(32u)), vec3<u32>(var_1, 26951u, u_input.b), _wgslsmith_mult_vec3_u32(vec3<u32>(21166u, global2.c.x, 43921u), global2.c)), vec3<u32>(4294967295u | func_3(-32033i, -410f, Struct_1(vec4<i32>(-1i, u_input.a, -51868i, 1i), 59304i, global3[_wgslsmith_index_u32(u_input.b, 15u)]), var_3.b), ~reverseBits(global2.c.x), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u), vec4<u32>(global2.c.x, global2.c.x, var_1, 1u))))));
    return _wgslsmith_clamp_vec4_u32(~(~select(vec4<u32>(0u, 52068u, var_4.c.x, u_input.b), vec4<u32>(86071u, var_1, var_2.x, 4054u), vec4<bool>(true, false, true, false))) ^ ~_wgslsmith_mod_vec4_u32(select(vec4<u32>(44696u, global2.c.x, 37723u, var_2.x), vec4<u32>(0u, 1u, 41792u, u_input.b), global4[_wgslsmith_index_u32(var_1, 8u)]), vec4<u32>(var_2.x, var_4.c.x, 38145u, var_1) >> (vec4<u32>(var_4.c.x, 1u, var_2.x, 34504u) % vec4<u32>(32u))), vec4<u32>(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(var_4.c, global2.c), 1u), 44443u, ~global2.c.x, 0u), vec4<u32>(_wgslsmith_div_u32(~global2.c.x, u_input.b) >> (u_input.b % 32u), 0u, countOneBits(global2.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(23012u), ~1488u, func_3(-10334i, arg_3.d, var_4, global2.b), global2.c.x | 806u), vec4<u32>(var_1, 65250u, 60334u, var_2.x) << (vec4<u32>(4294967295u, var_4.c.x, 1u, 28597u) % vec4<u32>(32u)))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -700f), -528f, -1136f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(165f)) - -108f))));
    let var_1 = Struct_2(true, -abs(-(~(-17368i))), !vec2<bool>(true, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~4294967295u, ~global2.c.x), 8u)]), var_0.x);
    global1 = abs(u_input.a);
    let var_2 = _wgslsmith_mult_vec4_u32(func_2(global4[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 8u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))) + var_0.x), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(max(1000f, -1146f))))), var_1), select(vec4<u32>(~(~global2.c.x), ~u_input.b, _wgslsmith_mult_u32(1u, ~6525u), abs(u_input.b)), select(~vec4<u32>(global2.c.x, global2.c.x, 4294967295u, global2.c.x) | abs(vec4<u32>(1u, global2.c.x, 44544u, 0u)), vec4<u32>(abs(0u), global2.c.x, 4294967295u, 1u), vec4<bool>(var_0.x == -136f, global4[_wgslsmith_index_u32(~global2.c.x, 8u)], all(vec2<bool>(false, global4[_wgslsmith_index_u32(48781u, 8u)])), true)), true));
    let var_3 = _wgslsmith_clamp_i32(var_1.b & min(-(u_input.a & 9098i), -1i), -firstTrailingBit(~(global2.b ^ -1i)), max(_wgslsmith_clamp_i32(var_1.b, abs(1i), u_input.a), ~min(global2.a.x, 1i)));
    return Struct_1(reverseBits(abs(firstTrailingBit(vec4<i32>(var_3, var_1.b, var_1.b, 25459i)))) << (var_2 % vec4<u32>(32u)), _wgslsmith_dot_vec3_i32(global2.a.zwz, reverseBits(-reverseBits(vec3<i32>(-2147483647i, 2147483647i, -1653i)))), vec3<u32>(var_2.x, var_2.x, _wgslsmith_dot_vec2_u32(var_2.yy, reverseBits(var_2.ww))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<u32>, 15>();
    let var_0 = global4[_wgslsmith_index_u32(1u, 8u)] && !(!global4[_wgslsmith_index_u32(1u, 8u)]);
    var var_1 = func_1();
    var var_2 = _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a, global2.b)) & abs(var_1.a.zy), select(-vec2<i32>(2147483647i, global2.a.x), var_1.a.xy, true))), 15935i);
    var_2 = u_input.a;
    var var_3 = Struct_2(!any(!vec3<bool>(false, var_0, false)), 44287i, global0[_wgslsmith_index_u32(reverseBits(4294967295u), 19u)], -935f);
    var var_4 = true;
    let var_5 = _wgslsmith_clamp_u32(global2.c.x, _wgslsmith_div_u32(1u, 1u), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_3.d, _wgslsmith_f_op_f32(min(var_3.d, _wgslsmith_f_op_f32(f32(-1f) * -1998f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-820f - 1000f))), var_3.d, ~1i, ~vec3<u32>(min(var_1.c.x, _wgslsmith_div_u32(u_input.b, var_5)), ~var_5 >> (var_5 % 32u), 65922u), -abs(var_3.b));
}

