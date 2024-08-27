struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6> = array<bool, 6>(true, false, false, false, false, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_3, arg_3: u32) -> u32 {
    var var_0 = Struct_2(arg_2.a);
    let var_1 = Struct_3(var_0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_2.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1 - arg_1), _wgslsmith_f_op_f32(arg_2.b * 1387f))), global0[_wgslsmith_index_u32(1u, 6u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)))));
    var var_2 = Struct_2(var_0.a);
    var var_3 = _wgslsmith_sub_i32(-38065i, var_2.a.c.x);
    var var_4 = _wgslsmith_f_op_f32(sign(arg_0));
    return u_input.d.x;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_5, arg_2: Struct_3) -> u32 {
    var var_0 = arg_0;
    var var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(arg_2.a.b.yx, arg_0.a.b.yz), ~_wgslsmith_clamp_u32(func_3(arg_0.b, -1000f, Struct_3(arg_1.a.a, -406f), ~var_0.a.b.x), ~abs(21449u), ~28932u), arg_2.a.b.x, ~_wgslsmith_mult_u32(~33380u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.a.b.wx, vec2<u32>(u_input.d.x, 4294967295u)), vec2<u32>(4294967295u, u_input.d.x))));
    var var_2 = -vec4<i32>(arg_1.a.a.c.x ^ ~var_0.a.c.x, select(countOneBits(_wgslsmith_clamp_i32(var_0.a.c.x, var_0.a.c.x, arg_2.a.c.x)), 6661i, true || all(vec3<bool>(global0[_wgslsmith_index_u32(37311u, 6u)], global0[_wgslsmith_index_u32(u_input.d.x, 6u)], global0[_wgslsmith_index_u32(1u, 6u)]))), var_0.a.c.x, -(arg_0.a.c.x ^ arg_2.a.c.x));
    let var_3 = -arg_2.a.c.x;
    var var_4 = Struct_1(firstTrailingBit(firstTrailingBit(var_0.a.b.x)), vec4<u32>(~_wgslsmith_clamp_u32(reverseBits(4294967295u), 0u, var_1.x), var_0.a.b.x, abs(arg_1.a.a.a & max(4294967295u, 25146u)), ~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(arg_0.a.a, 1u)), ~vec2<u32>(var_0.a.a, var_0.a.a))), vec4<i32>(min(-2147483647i, 1i), 1i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-2147483647i ^ arg_0.a.c.x, 2147483647i), min(2147483647i | arg_2.a.c.x, 0i)), arg_1.c.x));
    return firstTrailingBit(reverseBits(4979u));
}

fn func_1() -> vec4<u32> {
    return vec4<u32>(_wgslsmith_mult_u32(~(~func_2(Struct_3(Struct_1(4294967295u, vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(2147483647i, -1i, 2147483647i, -40642i)), 142f), Struct_5(Struct_2(Struct_1(u_input.d.x, vec4<u32>(78063u, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(-1i, u_input.a.x, -3423i, u_input.b))), Struct_3(Struct_1(u_input.d.x, vec4<u32>(u_input.d.x, 1u, 1u, u_input.d.x), vec4<i32>(-18029i, -2147483647i, 67324i, 1i)), -173f), vec2<i32>(u_input.c, 11535i), 1268f), Struct_3(Struct_1(1u, vec4<u32>(u_input.d.x, 1u, u_input.d.x, 0u), vec4<i32>(-1i, u_input.e, u_input.e, 0i)), 1623f))), ~4294967295u), _wgslsmith_clamp_u32(16419u, ~(~_wgslsmith_add_u32(u_input.d.x, 4294967295u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), select(vec2<u32>(14422u, u_input.d.x), ~vec2<u32>(u_input.d.x, 4294967295u), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 6u)])))), reverseBits(u_input.d.x), u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = array<bool, 6>();
    let var_1 = u_input.b;
    global0 = array<bool, 6>();
    var var_2 = Struct_5(Struct_2(Struct_1(var_0.x, ~firstTrailingBit(vec4<u32>(u_input.d.x, var_0.x, u_input.d.x, 1u)), vec4<i32>(reverseBits(71017i), var_1, _wgslsmith_dot_vec4_i32(vec4<i32>(24952i, 1854i, u_input.b, 1i), vec4<i32>(u_input.a.x, u_input.b, -1i, -2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1, var_1, -44846i), vec3<i32>(2147483647i, 32667i, var_1))))), Struct_3(Struct_1(60824u << (_wgslsmith_mult_u32(var_0.x, 4294967295u) % 32u), vec4<u32>(_wgslsmith_mult_u32(var_0.x, u_input.d.x), var_0.x, 7116u, 11151u), select(min(vec4<i32>(-22345i, -16654i, u_input.a.x, u_input.e), vec4<i32>(1i, -27886i, u_input.c, u_input.a.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.a.x, var_1, 2147483647i), vec4<i32>(var_1, var_1, 0i, var_1)), select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(var_0.x, 6u)], global0[_wgslsmith_index_u32(u_input.d.x, 6u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 6u)], global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(23463u, 6u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 6u)], global0[_wgslsmith_index_u32(var_0.x, 6u)], false, false)))), _wgslsmith_f_op_f32(111f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(275f)), -1049f))), countOneBits(vec2<i32>(-var_1, abs(u_input.c)) ^ (vec2<i32>(var_1, -20090i) << (firstLeadingBit(vec2<u32>(var_0.x, var_0.x)) % vec2<u32>(32u)))), 837f);
    let var_3 = true;
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    let var_4 = Struct_5(var_2.a, Struct_3(var_2.a.a, -2028f), u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -368f));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.a.b, vec3<i32>(-1i) * -(~select(vec3<i32>(-61388i, -19614i, 38677i), var_2.a.a.c.xyx, vec3<bool>(var_3, false, true))), var_2.b.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(122f * 1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-940f + var_4.d) - var_2.d) * -241f)), var_0.x);
}

