struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<bool>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec2<f32>(1326f, 841f), Struct_1(658f), 49507u, -542f), Struct_2(vec2<f32>(-1000f, 208f), Struct_1(-107f), 68670u, 1000f), Struct_2(vec2<f32>(-480f, -139f), Struct_1(798f), 1u, -583f), Struct_2(vec2<f32>(-337f, -584f), Struct_1(1924f), 75709u, 416f), Struct_2(vec2<f32>(-667f, 678f), Struct_1(1514f), 86683u, 1582f), Struct_2(vec2<f32>(889f, 415f), Struct_1(684f), 82274u, -1000f));

var<private> global1: array<Struct_3, 20>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    global0 = array<Struct_2, 6>();
    var var_0 = select(vec3<i32>(~u_input.c.x, u_input.c.x >> ((_wgslsmith_add_u32(1u, 32391u) & ~u_input.b.x) % 32u), -2147483647i), u_input.c, true);
    global1 = array<Struct_3, 20>();
    var var_1 = countOneBits(vec4<i32>(_wgslsmith_mult_i32(~(u_input.c.x | var_0.x), -(~u_input.c.x)), -abs(_wgslsmith_div_i32(2147483647i, -35i)), _wgslsmith_mult_i32(abs(u_input.c.x), 1i) ^ 1i, u_input.c.x));
    var var_2 = -123f;
    return _wgslsmith_f_op_f32(1303f + _wgslsmith_f_op_f32(-1343f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(459f * 423f), _wgslsmith_f_op_f32(f32(-1f) * -1119f))), 906f)));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.x & _wgslsmith_add_u32(36982u, 0u), ~(~u_input.a)), 20u)];
    global1 = array<Struct_3, 20>();
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(vec3<bool>(var_0.c.x, true, true))), var_0.a.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-362f, var_0.d.a), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.a.a, var_0.a.a)))))))));
    let var_2 = !(!select(vec4<bool>(!var_0.c.x, all(vec3<bool>(true, true, false)), all(var_0.c), var_0.c.x), select(select(vec4<bool>(var_0.c.x, var_0.c.x, false, var_0.c.x), vec4<bool>(true, var_0.c.x, true, false), var_0.c.x), !vec4<bool>(var_0.c.x, false, var_0.c.x, true), var_0.c.x), vec4<bool>(var_0.c.x & var_0.c.x, true, all(vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x)), u_input.c.x < 6131i)));
    global0 = array<Struct_2, 6>();
    return var_0.b.x;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_3, arg_3: Struct_2) -> vec4<i32> {
    let var_0 = firstLeadingBit(vec2<u32>(arg_0, _wgslsmith_dot_vec3_u32(min(_wgslsmith_mod_vec3_u32(u_input.b, u_input.b), u_input.b), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.e, arg_3.c, u_input.b.x), u_input.b, u_input.b))));
    let var_1 = !(!vec2<bool>(!any(vec3<bool>(false, false, true)), select(arg_2.c.x & false, true, false)));
    let var_2 = -2147483647i;
    let var_3 = arg_2.a.a;
    let var_4 = _wgslsmith_mod_i32(var_2, -2147483647i);
    return _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(-firstLeadingBit(vec4<i32>(arg_2.b.x, var_2, -16481i, u_input.c.x)) & ~abs(vec4<i32>(-7442i, arg_2.b.x, var_2, 93134i)), ~vec4<i32>(countOneBits(arg_2.b.x), -34213i, _wgslsmith_sub_i32(arg_2.b.x, 38154i), i32(-1i) * -1i), -(vec4<i32>(1i, u_input.c.x, -2686i, u_input.c.x) << (~vec4<u32>(arg_3.c, arg_0, arg_3.c, arg_3.c) % vec4<u32>(32u)))), vec4<i32>(~_wgslsmith_dot_vec4_i32(-vec4<i32>(var_2, 2147483647i, arg_2.b.x, var_2), ~vec4<i32>(var_2, u_input.c.x, u_input.c.x, 62878i)), ~select(var_4, -2147483647i, true), 2147483647i, _wgslsmith_mult_i32(firstLeadingBit(i32(-1i) * -9382i), var_2)));
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    var var_0 = func_4(~4294967295u, false, Struct_3(Struct_1(_wgslsmith_div_f32(-179f, _wgslsmith_f_op_f32(f32(-1f) * -1380f))), vec2<i32>(-abs(u_input.c.x), select(func_2(u_input.b, u_input.a), u_input.c.x, any(arg_0.yyw))), arg_0.zx, Struct_1(1f), ~_wgslsmith_dot_vec2_u32(vec2<u32>(117145u, 17473u), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a), u_input.b.xy))), global0[_wgslsmith_index_u32(~u_input.a, 6u)]);
    let var_1 = abs(u_input.a);
    var_0 = vec4<i32>(abs(var_0.x << (var_1 % 32u)), u_input.c.x, var_0.x, _wgslsmith_add_i32(4131i, 0i));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(419f * -345f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-476f + -1079f) * _wgslsmith_f_op_f32(f32(-1f) * -2141f)))), var_0.xz, vec2<bool>(any(!(!arg_0)), any(arg_0.yw)), Struct_1(-615f), ~(~0u));
    var var_3 = select(var_2.c.x, true, !var_2.c.x);
    return _wgslsmith_f_op_f32(-779f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.d.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~(~u_input.b.x), 6u)];
    var var_1 = u_input.b;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, true, true)))), -1359f, _wgslsmith_div_f32(var_0.b.a, var_0.b.a)));
    let var_3 = Struct_3(var_0.b, u_input.c.xy, vec2<bool>(true, any(vec2<bool>(true, all(vec4<bool>(true, true, true, false))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_2.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, true, false))) - var_2.x))), 1845u);
    let var_4 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.c.x >> (var_0.c % 32u)), _wgslsmith_f_op_f32(step(-1531f, var_3.d.a)));
}

