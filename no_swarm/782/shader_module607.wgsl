struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(26029u, 25021u, 11835u, 1073u, 0u, 65081u, 43120u, 34078u, 0u, 1u, 4294967295u, 90448u, 0u, 4294967295u, 1u, 15178u, 50991u, 0u, 1u, 1u, 36075u);

var<private> global1: array<vec2<bool>, 7>;

var<private> global2: Struct_2 = Struct_2(1u, Struct_1(0u, true, 1i, vec4<i32>(i32(-2147483648), 15784i, 43240i, -42683i)), Struct_1(1u, false, -12642i, vec4<i32>(-1i, 1i, 2147483647i, 7991i)), vec4<u32>(0u, 4294967295u, 4294967295u, 13207u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: Struct_5) -> vec2<i32> {
    var var_0 = arg_3;
    var var_1 = global1[_wgslsmith_index_u32(~1u, 7u)];
    global0 = array<u32, 21>();
    let var_2 = _wgslsmith_clamp_vec2_i32(u_input.a.zx, var_0.a.b.c.d.zz, min(vec2<i32>(~u_input.a.x, arg_2 ^ ~var_0.c.c.c), arg_3.b.c.d.yw));
    var var_3 = select(vec3<u32>(~select(2579u, var_0.b.c.a, false) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global2.b.a), min(var_0.b.d.yz, arg_3.b.d.ww)) % 32u), 4294967295u, 1u), arg_3.a.b.d.wzx & vec3<u32>(var_0.c.a, _wgslsmith_add_u32(~u_input.b, 4294967295u & arg_1), ~u_input.d.x & ~u_input.c.x), !(!(!vec3<bool>(var_1.x, true, global2.c.b))));
    return _wgslsmith_clamp_vec2_i32(~_wgslsmith_mult_vec2_i32(arg_3.b.c.d.wz, u_input.a.xw), ~vec2<i32>(abs(~arg_3.a.b.b.c), -1477i), vec2<i32>(arg_2, var_0.b.b.c));
}

fn func_2(arg_0: vec2<f32>) -> Struct_4 {
    let var_0 = Struct_2(3210u, global2.c, global2.c, vec4<u32>(firstLeadingBit(45376u), countOneBits(4294967295u), ~58739u, 16916u));
    return Struct_4(global2.c.d.zxy, vec4<u32>(~(~(11809u >> (global2.c.a % 32u))), _wgslsmith_mod_u32(global2.c.a, 1u), abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_0.d.yxz, vec3<u32>(u_input.c.x, u_input.d.x, 2750u)), 23227u)), global2.b.a), countOneBits(-26553i) | _wgslsmith_dot_vec2_i32(u_input.a.xz, func_3(-1000f != arg_0.x, ~global0[_wgslsmith_index_u32(var_0.c.a, 21u)], -2147483647i, Struct_5(Struct_3(20810i, var_0), var_0, Struct_2(u_input.b, Struct_1(428u, var_0.b.b, 2147483647i, vec4<i32>(global2.c.c, 0i, -2147483647i, -9486i)), Struct_1(1u, var_0.c.b, u_input.a.x, vec4<i32>(1i, global2.b.d.x, global2.b.c, var_0.b.c)), global2.d)))));
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_4(arg_1.a, vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global2.d.x, ~u_input.c.x >> (min(14961u, 90214u) % 32u)), 21u)], 71661u, 13724u, u_input.c.x), -2410i);
    let var_1 = Struct_1(var_0.b.x, true, countOneBits(_wgslsmith_mod_i32(477i, abs(_wgslsmith_sub_i32(var_0.c, -55800i)))), ~_wgslsmith_mult_vec4_i32(-vec4<i32>(19813i, arg_3.x, var_0.a.x, var_0.c) & vec4<i32>(9549i, -44142i, u_input.a.x, -2490i), firstLeadingBit(_wgslsmith_sub_vec4_i32(u_input.a, u_input.a))));
    let var_2 = var_0.b.yx;
    global0 = array<u32, 21>();
    let var_3 = 2147483647i;
    return Struct_2(0u | (_wgslsmith_sub_u32(~52607u, 0u >> (var_1.a % 32u)) >> (~var_0.b.x % 32u)), Struct_1(~_wgslsmith_clamp_u32(1u, var_2.x, ~arg_1.b.x), true, 1i, u_input.a), var_1, func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(arg_0, arg_0)), _wgslsmith_f_op_f32(sign(arg_0))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, arg_0))), false))).b);
}

fn func_1() -> Struct_2 {
    global0 = array<u32, 21>();
    var var_0 = vec2<f32>(-529f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-178f + _wgslsmith_f_op_f32(379f * 1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-680f, 245f))))));
    return func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1184f * 142f) + 839f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1260f * _wgslsmith_f_op_f32(var_0.x - var_0.x)) * var_0.x)), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-947f, var_0.x)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - vec2<f32>(349f, 638f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, 1000f)))))), -u_input.a.wwz, u_input.a.zx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec4<u32>(~0u, ~4294967295u, ~global2.b.a, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 39677u, 4294967295u), u_input.d), 21u)] >> (u_input.b % 32u)));
    global2 = func_1();
    var var_1 = countOneBits(0u);
    var_1 = func_2(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-296f)))), -1717f)).b.x;
    global2 = func_1();
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(1801f, 106f, global2.c.b)), -112f, _wgslsmith_f_op_f32(f32(-1f) * -1151f)))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-326f, 1000f, 958f) + vec3<f32>(2529f, 609f, 373f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(258f, -2075f, -870f))))));
    var var_3 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.xz) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.x, var_2.x))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(var_2.xy)))))));
    global0 = array<u32, 21>();
    let var_4 = Struct_1(27936u, var_2.x > 282f, var_3.c, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(0i << ((global0[_wgslsmith_index_u32(var_0.x, 21u)] >> (4294967295u % 32u)) % 32u)));
}

