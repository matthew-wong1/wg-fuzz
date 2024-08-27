struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(0i, 0i);

var<private> global1: array<f32, 5> = array<f32, 5>(-203f, -308f, -337f, 150f, -471f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(~abs(1u), 5u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(399f, 1f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-1699f, 1001f)), _wgslsmith_div_f32(-113f, global1[_wgslsmith_index_u32(50887u, 5u)]))))));
    let var_1 = Struct_1(322i, vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~u_input.b.x, 5430u), ~0u), u_input.e, 57372u, reverseBits(firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(2140u, u_input.e))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x * var_0.x))), ~vec2<u32>(select(1u, 5945u, true), ~_wgslsmith_div_u32(u_input.b.x, u_input.b.x)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(40119u, 5u)], -1683f)), _wgslsmith_f_op_f32(1376f - var_0.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 1759f), vec2<f32>(133f, var_1.c)))))));
    var var_3 = 5702i;
    var var_4 = -_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(_wgslsmith_clamp_i32(global0.x, -4593i, global0.x), ~global0.x, abs(2147483647i), countOneBits(27956i))), vec4<i32>(_wgslsmith_mult_i32(u_input.d.x | var_1.a, u_input.d.x | 1i), -29030i, i32(-1i) * -19349i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 1i, u_input.d.x), vec3<i32>(global0.x, 1i, 0i)) | -2147483647i));
    return max(abs(_wgslsmith_add_i32(~u_input.a.x, -23491i)), -2147483647i);
}

fn func_2(arg_0: f32) -> Struct_1 {
    global1 = array<f32, 5>();
    let var_0 = vec3<i32>(global0.x, global0.x, ~_wgslsmith_sub_i32(i32(-1i) * -global0.x, -func_3()));
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~u_input.e, 5u)], 1f)), -104f), global1[_wgslsmith_index_u32(~abs(21984u), 5u)], arg_0);
    var var_2 = Struct_1(0i, ~select(vec4<u32>(max(4294967295u, 1u), ~49964u, u_input.b.x, u_input.b.x), firstTrailingBit(vec4<u32>(1u, 42498u, 4294967295u, 64800u)), vec4<bool>(all(vec3<bool>(false, false, true)), true, true, false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1491f + var_1.x) - -1305f))), min(firstLeadingBit(vec2<u32>(firstLeadingBit(u_input.b.x), 21199u)), u_input.b.yx));
    global0 = u_input.c.xz;
    return Struct_1((global0.x >> (0u % 32u)) ^ 0i, var_2.b, global1[_wgslsmith_index_u32(u_input.e, 5u)], vec2<u32>(var_2.b.x, ~(_wgslsmith_sub_u32(u_input.e, 5462u) ^ 0u)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(firstTrailingBit(-48889i), ~arg_1.b << (vec4<u32>(u_input.b.x, _wgslsmith_add_u32(5681u, 1u), max(4294967295u, arg_0.b.x), arg_0.b.x) % vec4<u32>(32u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c * 601f)), arg_0.c, true)), -353f)), reverseBits(vec2<u32>(0u, u_input.b.x)));
    var var_1 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(true, true, true)), true, all(vec2<bool>(true, true)), true & any(vec2<bool>(false, true))), !all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)))), vec4<bool>(true, true, true, true), any(vec4<bool>(true, false, !any(vec4<bool>(false, true, true, true)), false)));
    var_0 = Struct_1(arg_1.a, vec4<u32>(abs(_wgslsmith_mod_u32(arg_0.d.x, 4294967295u)), _wgslsmith_clamp_u32(arg_0.b.x, var_0.b.x, u_input.b.x), var_0.d.x, var_0.b.x), var_0.c, vec2<u32>(var_0.b.x, 0u));
    global1 = array<f32, 5>();
    global0 = vec2<i32>(arg_0.a >> (0u % 32u), -(~(~max(-2147483647i, -2147483647i))));
    return func_2(-534f);
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(step(func_1(func_1(arg_2, Struct_1(-2147483647i, vec4<u32>(u_input.e, 1u, 1u, arg_2.b.x), global1[_wgslsmith_index_u32(1u, 5u)], arg_0)), Struct_1(arg_2.a, vec4<u32>(u_input.e, arg_1, 43253u, 4294967295u), -366f, vec2<u32>(arg_1, arg_1))).c, 396f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 5u)])))), all(vec4<bool>(arg_3, arg_3, arg_3, true)), !(!arg_3));
    let var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x << (~17428u % 32u), 5u)]))).b.xyx;
    var var_2 = 73511u | ~firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(arg_2.b.wwx, arg_2.b.xzx), vec3<u32>(18332u, arg_2.d.x, var_1.x)));
    var_2 = 4294967295u;
    var var_3 = arg_2;
    return Struct_1(func_2(-489f).a >> ((102156u ^ select(arg_0.x, 0u, !arg_3)) % 32u), ~vec4<u32>(var_1.x, 33258u, _wgslsmith_dot_vec4_u32(~arg_2.b, arg_2.b), ~_wgslsmith_div_u32(4294967295u, arg_2.d.x)), global1[_wgslsmith_index_u32(33031u, 5u)], vec2<u32>(func_1(arg_2, arg_2).d.x, abs(arg_2.d.x)));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global1 = array<f32, 5>();
    var var_0 = reverseBits(~(~_wgslsmith_div_u32(u_input.b.x, 28009u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1[_wgslsmith_index_u32(arg_0.d.x, 5u)], 1663f)))))))));
    let var_2 = Struct_1(~func_1(arg_0, arg_0).a, arg_0.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.c))), ~select(~_wgslsmith_sub_vec2_u32(u_input.b.yy, vec2<u32>(3180u, arg_0.d.x)), vec2<u32>(_wgslsmith_mod_u32(0u, 97302u), abs(4294967295u)), select(vec2<bool>(false, false), vec2<bool>(true, true), true)));
    return func_4(arg_0.d, 1u, func_1(func_4(countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(60721u, 2601u), arg_0.d)), func_1(func_4(vec2<u32>(u_input.e, arg_0.d.x), var_2.d.x, Struct_1(global0.x, var_2.b, -175f, var_2.b.yz), false), func_4(arg_0.d, u_input.e, Struct_1(41838i, var_2.b, -1021f, vec2<u32>(arg_0.d.x, var_2.b.x)), false)).b.x, func_2(arg_0.c), true), arg_0), var_2.a == arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(vec2<u32>(~67127u << (u_input.b.x % 32u), ~u_input.e), 1u, func_1(Struct_1(2147483647i, ~vec4<u32>(u_input.e, u_input.e, 84968u, 4294967295u), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 4294967295u), 5u)], ~vec2<u32>(0u, u_input.e)), Struct_1(u_input.a.x << (u_input.b.x % 32u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 19606u), vec4<u32>(u_input.b.x, u_input.e, 18444u, u_input.b.x)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 5u)] - -355f), _wgslsmith_mult_vec2_u32(u_input.b.xz, u_input.b.yx))), false));
    global0 = max(u_input.a, abs(u_input.d.yx));
    let var_1 = vec4<bool>(all(vec4<bool>(any(vec4<bool>(true, true, true, true)), select(false, true, true), any(vec4<bool>(true, true, true, true)), 0u > (u_input.e << (u_input.e % 32u)))), true, all(vec2<bool>(select(true, var_0.c != var_0.c, true), any(vec2<bool>(false, false)))), true);
    var var_2 = -1000f;
    var_0 = Struct_1(0i, ~var_0.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - global1[_wgslsmith_index_u32(var_0.d.x, 5u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))) - -1329f), min(abs(vec2<u32>(478u, u_input.e) | reverseBits(vec2<u32>(38312u, var_0.d.x))), select(func_2(_wgslsmith_f_op_f32(abs(-265f))).d, min(u_input.b.xz, _wgslsmith_mult_vec2_u32(u_input.b.xx, vec2<u32>(13219u, 1u))), var_1.xw)));
    let x = u_input.a;
    s_output = StorageBuffer(-(-_wgslsmith_sub_vec4_i32(vec4<i32>(49574i, 1i, u_input.c.x, global0.x), vec4<i32>(global0.x, u_input.d.x, -42111i, u_input.d.x)) << ((countOneBits(vec4<u32>(var_0.d.x, var_0.b.x, u_input.e, var_0.d.x)) | (vec4<u32>(13251u, 86457u, 0u, 42909u) & var_0.b)) % vec4<u32>(32u))), -2147483647i, _wgslsmith_dot_vec4_u32(max(vec4<u32>(2403u, u_input.e, 59195u, u_input.b.x) << (vec4<u32>(u_input.b.x, 0u, var_0.d.x, 1u) % vec4<u32>(32u)), vec4<u32>(u_input.b.x, var_0.b.x, var_0.b.x, 43290u)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(77410u, u_input.e, var_0.d.x, 0u), vec4<u32>(u_input.b.x, var_0.d.x, 6613u, var_0.b.x)), vec4<u32>(var_0.d.x, var_0.b.x, ~var_0.b.x, max(u_input.e, 4294967295u) >> ((var_0.d.x | 1u) % 32u))), ~_wgslsmith_sub_vec2_i32(vec2<i32>(1i ^ global0.x, u_input.a.x), vec2<i32>(1i, global0.x)), ~_wgslsmith_add_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, global0.x, global0.x, global0.x), vec4<i32>(-2147483647i, -36810i, 1i, u_input.d.x)), ~(var_0.a << (u_input.b.x % 32u))));
}

