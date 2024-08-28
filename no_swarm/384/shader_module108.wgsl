struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<bool, 19> = array<bool, 19>(true, false, false, false, false, false, false, true, false, false, true, false, false, true, false, true, false, true, true);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: vec4<bool>) -> vec3<u32> {
    var var_0 = !(all(!vec4<bool>(arg_2.x, arg_2.x, false, false)) | (4294967295u > u_input.d.x));
    global0 = abs(vec4<i32>(10347i, global0.x, ~arg_1, ~_wgslsmith_add_i32(_wgslsmith_clamp_i32(10853i, -2147483647i, 18158i), arg_1 | arg_1)));
    let var_1 = ~_wgslsmith_mult_i32(select(~(-u_input.c.x), _wgslsmith_mult_i32(~u_input.c.x, select(u_input.c.x, -1i, true)), true), -global0.x);
    global0 = -(~((vec4<i32>(-38532i, 2147483647i, u_input.c.x, 23871i) & u_input.c) ^ ~u_input.c));
    let var_2 = _wgslsmith_dot_vec2_u32(~(~min(select(u_input.b, u_input.b, vec2<bool>(arg_2.x, global1[_wgslsmith_index_u32(u_input.b.x, 19u)])), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), vec2<u32>(0u, 65559u)))), u_input.d.xw);
    return _wgslsmith_clamp_vec3_u32(u_input.d.yzx, ~u_input.d.xwz, ~(~abs(vec3<u32>(4294967295u, 0u, u_input.a))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: bool) -> vec3<u32> {
    let var_0 = Struct_2(u_input.a, Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -281f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-699f - 1041f) + 537f))), u_input.a >> (u_input.a % 32u), ~(~27025u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(588f))) + -2726f), select(select(vec4<bool>(arg_2, false, arg_1.x, false), vec4<bool>(false, true, true, arg_2), select(vec4<bool>(arg_1.x, true, arg_1.x, false), vec4<bool>(arg_1.x, arg_2, true, arg_2), arg_2)), !(!vec4<bool>(false, arg_1.x, true, false)), true)));
    global1 = array<bool, 19>();
    let var_1 = 1i;
    var var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a, _wgslsmith_div_u32(var_0.b.b >> (u_input.b.x % 32u), 1u)), u_input.d.zw);
    return _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(~countOneBits(vec3<u32>(u_input.d.x, 36944u, var_0.b.c)), _wgslsmith_mult_vec3_u32(min(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 15466u, u_input.b.x), u_input.d.zzw), func_3(vec3<f32>(1239f, var_0.b.d, -1000f), 52784i, vec4<bool>(false, false, false, arg_2))), ~(~u_input.d.yzy))), ~(u_input.d.zzz << (abs(~u_input.d.xxy) % vec3<u32>(32u))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> u32 {
    global0 = vec4<i32>((u_input.c.x ^ ~(-global0.x)) ^ 0i, _wgslsmith_dot_vec2_i32(select(_wgslsmith_sub_vec2_i32(global0.yw | u_input.c.xw, u_input.c.zw), u_input.c.zy, any(!vec2<bool>(arg_2.b.e.x, true))), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-4502i, 20244i), -vec2<i32>(u_input.c.x, global0.x)), abs(-vec2<i32>(global0.x, -36419i)))), -_wgslsmith_add_i32(countOneBits(min(u_input.c.x, 9970i)), -2852i), abs(-2147483647i));
    global1 = array<bool, 19>();
    var var_0 = arg_1;
    let var_1 = Struct_1(-849f, 11233u, 0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.b.a, -1456f)) + -2062f), !arg_1.e);
    global1 = array<bool, 19>();
    return ~arg_2.a;
}

fn func_5(arg_0: Struct_2) -> vec2<bool> {
    global1 = array<bool, 19>();
    global1 = array<bool, 19>();
    let var_0 = _wgslsmith_add_vec4_u32(firstLeadingBit(u_input.d), ~select(u_input.d, u_input.d, arg_0.b.e.x) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 36051u, 1u, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, 1u), vec4<u32>(7215u, 114u, arg_0.b.c, arg_0.b.b))) % vec4<u32>(32u))) & ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a << (11285u % 32u), _wgslsmith_add_u32(54162u, 0u), u_input.a, u_input.d.x), u_input.d, u_input.d);
    let var_1 = Struct_2(~abs(1u), arg_0.b);
    global0 = vec4<i32>(_wgslsmith_dot_vec2_i32(-global0.yy >> (vec2<u32>(arg_0.b.c, 4294967295u) % vec2<u32>(32u)), ~vec2<i32>(global0.x, u_input.c.x) ^ firstLeadingBit(vec2<i32>(u_input.c.x, u_input.c.x))), i32(-1i) * -_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(0i, 46252i, 37050i, -1i)), u_input.c.x, _wgslsmith_dot_vec2_i32(min(vec2<i32>(2147483647i, u_input.c.x), vec2<i32>(-2147483647i, -12134i)), global0.ww)) & ~_wgslsmith_mult_vec4_i32(-vec4<i32>(1i, -48262i, -7957i, 2147483647i), vec4<i32>(~(-2821i), 10981i, u_input.c.x, -1i));
    return vec2<bool>(var_1.b.e.x, true);
}

fn func_1() -> Struct_2 {
    let var_0 = 4294967295u;
    global0 = u_input.c;
    global1 = array<bool, 19>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -709f);
    var var_2 = !func_5(Struct_2(func_4(func_2(vec2<i32>(u_input.c.x, 17815i), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 19u)], true), global1[_wgslsmith_index_u32(4294967295u, 19u)]), Struct_1(477f, var_0, var_0, var_1, vec4<bool>(true, global1[_wgslsmith_index_u32(var_0, 19u)], true, global1[_wgslsmith_index_u32(33095u, 19u)])), Struct_2(var_0, Struct_1(var_1, 4294967295u, var_0, var_1, vec4<bool>(global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(88481u, 19u)], true))), _wgslsmith_f_op_f32(var_1 - var_1)), Struct_1(_wgslsmith_f_op_f32(step(514f, -1000f)), 1u, _wgslsmith_add_u32(64513u, 91351u), _wgslsmith_f_op_f32(ceil(var_1)), select(vec4<bool>(global1[_wgslsmith_index_u32(var_0, 19u)], false, false, global1[_wgslsmith_index_u32(1u, 19u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(var_0, 19u)], false), vec4<bool>(true, true, global1[_wgslsmith_index_u32(10051u, 19u)], false)))));
    return Struct_2(_wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, _wgslsmith_add_u32(0u, var_0)), ~reverseBits(26025u), ~15254u), ~func_3(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1244f, var_1, 1886f), vec3<f32>(-1386f, var_1, var_1))), -1i, !vec4<bool>(true, var_2.x, global1[_wgslsmith_index_u32(u_input.b.x, 19u)], global1[_wgslsmith_index_u32(var_0, 19u)])).x), Struct_1(_wgslsmith_f_op_f32(round(var_1)), ~firstTrailingBit(28747u) ^ var_0, max(~u_input.d.x, 1u) ^ var_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-531f))), _wgslsmith_f_op_f32(f32(-1f) * -2305f))), vec4<bool>(all(select(vec3<bool>(global1[_wgslsmith_index_u32(51012u, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], false), vec3<bool>(global1[_wgslsmith_index_u32(var_0, 19u)], true, false), vec3<bool>(global1[_wgslsmith_index_u32(var_0, 19u)], false, var_2.x))), any(vec4<bool>(true, var_2.x, global1[_wgslsmith_index_u32(1845u, 19u)], true)), false, true)));
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_2(arg_0.a, func_1().b);
    global1 = array<bool, 19>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(282f)))))))), firstTrailingBit(~(var_0.a ^ arg_1)) & (~(~0u) & arg_1), 1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.d) * -1333f)), 1317f), !select(arg_0.b.e, arg_0.b.e, arg_0.b.e));
    global1 = array<bool, 19>();
    global1 = array<bool, 19>();
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = max(abs(countOneBits(vec4<i32>(global0.x, global0.x, firstTrailingBit(2147483647i), abs(23552i)))), vec4<i32>(-4784i, global0.x, 13731i, ~u_input.c.x));
    let var_0 = !vec4<bool>(global1[_wgslsmith_index_u32(~u_input.d.x, 19u)], true, true, global1[_wgslsmith_index_u32(u_input.d.x, 19u)]);
    global0 = u_input.c;
    let var_1 = func_6(func_1(), countOneBits(u_input.d.x), 614f);
    var var_2 = vec2<bool>(false, true);
    let var_3 = var_0.x;
    var_2 = !(!var_1.e.xz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, var_1.d, 1744f, var_1.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(925f, var_1.d, -443f, var_1.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, var_1.d, var_1.a, var_1.d) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.a, var_1.a, -2509f, var_1.a), vec4<f32>(var_1.d, -635f, var_1.a, -674f)))))), reverseBits(~(~(~vec4<u32>(0u, u_input.d.x, u_input.d.x, 37924u)))), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(abs(u_input.c.xyz), global0.zwz), abs(u_input.c.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(abs(var_1.d)), var_1.d, var_1.a, _wgslsmith_f_op_f32(var_1.a - var_1.d)))))));
}

