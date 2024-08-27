struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5>;

var<private> global1: vec3<i32> = vec3<i32>(-6921i, -24521i, i32(-2147483648));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global0 = array<f32, 5>();
    var var_0 = arg_0;
    let var_1 = u_input.a | select(26859u, ~var_0.b.x, !(!var_0.c));
    var var_2 = firstLeadingBit(vec4<u32>(~(~0u), ~6503u, firstTrailingBit(~(var_0.b.x & u_input.a)), u_input.a));
    let var_3 = _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(arg_0.b.zz, vec2<u32>(~35975u, _wgslsmith_div_u32(8671u, 1u))), vec2<u32>(_wgslsmith_clamp_u32(6097u, u_input.a, var_0.b.x) >> (u_input.a % 32u), 1u)) >> (~(~var_2.zx) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(529f, 1578f))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    global1 = arg_2.d.a | ((vec3<i32>(~u_input.c.x, global1.x >> (0u % 32u), i32(-1i) * -1i) << (vec3<u32>(arg_2.c, arg_1.b.x | 4294967295u, _wgslsmith_div_u32(u_input.a, arg_0.x)) % vec3<u32>(32u))) ^ u_input.b.zxw);
    global1 = ~max(firstTrailingBit(firstLeadingBit(vec3<i32>(1i, -1i, global1.x))), vec3<i32>(~_wgslsmith_mult_i32(-10646i, u_input.c.x), -2147483647i, u_input.b.x));
    var var_0 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(~(-global1.x), u_input.b.x, -411i, firstTrailingBit(arg_1.a.x) & -6093i), -vec4<i32>(-u_input.c.x, _wgslsmith_sub_i32(arg_2.d.a.x, arg_1.a.x), _wgslsmith_clamp_i32(1i, -26387i, -2147483647i), arg_1.a.x & -2147483647i));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a.x, -33071i, 2147483647i), vec3<i32>(1269i, u_input.b.x, 18559i)) | 1i), max(1u, 4294967295u), Struct_1(_wgslsmith_mod_vec3_i32(min(arg_2.e.a | vec3<i32>(0i, arg_1.a.x, 2147483647i), vec3<i32>(2147483647i, var_0.x, -6554i)), min(firstLeadingBit(vec3<i32>(var_0.x, arg_2.b, 2147483647i)), arg_1.a)), _wgslsmith_sub_vec3_u32(arg_2.d.b, ~_wgslsmith_mod_vec3_u32(arg_1.b, vec3<u32>(arg_2.c, arg_2.c, 1u))), false, global0[_wgslsmith_index_u32(arg_0.x, 5u)]), arg_1);
    var var_2 = arg_1.c & true;
    return (u_input.b.x & abs(~(~arg_1.a.x))) ^ -26298i;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    var var_0 = vec4<i32>(func_4(arg_1.b.xx, arg_1, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(109f + 156f) * 1121f), ~(~(-1i)), ~(u_input.a ^ arg_1.b.x), Struct_1(u_input.b.xzx, ~vec3<u32>(1u, 0u, 94263u), arg_1.c, 1f), Struct_1(vec3<i32>(20897i, 21071i, arg_0.x), ~arg_1.b, true, _wgslsmith_f_op_f32(func_3(Struct_1(vec3<i32>(-24089i, 1i, u_input.c.x), arg_1.b, false, 1486f)))))), ~_wgslsmith_clamp_i32(-arg_0.x << ((40721u ^ arg_1.b.x) % 32u), -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, 1i), vec3<i32>(0i, 2634i, arg_0.x)), _wgslsmith_mod_i32(abs(global1.x), global1.x)), -43322i, 1i);
    global0 = array<f32, 5>();
    let var_1 = _wgslsmith_mod_u32(~(arg_1.b.x & ~(u_input.a << (1u % 32u))), abs(4294967295u));
    global1 = select(_wgslsmith_add_vec3_i32(var_0.xxy, vec3<i32>(~(-30055i), min(16168i, u_input.c.x) & (i32(-1i) * -15577i), countOneBits(var_0.x))), select(arg_0.zyw, vec3<i32>(0i ^ arg_1.a.x, _wgslsmith_sub_i32(u_input.b.x, -21671i), u_input.b.x) | firstTrailingBit(select(vec3<i32>(-60960i, 0i, global1.x), u_input.b.xyz, arg_1.c)), true), vec3<bool>(true, arg_1.c && !arg_1.c, arg_1.c));
    let var_2 = ~arg_0;
    return ~87478u;
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> i32 {
    global0 = array<f32, 5>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a | ~u_input.a, reverseBits(u_input.a) ^ func_2(u_input.b, Struct_1(vec3<i32>(1i, u_input.c.x, 0i), vec3<u32>(1799u, 4739u, u_input.a), true, global0[_wgslsmith_index_u32(4149u, 5u)]))), 5u)]), ~abs(~1879i), ~(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, 0u, u_input.a, 16632u)), select(vec4<u32>(u_input.a, u_input.a, 0u, 1u), vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a), false)) | _wgslsmith_mult_u32(96076u, ~u_input.a)), Struct_1(u_input.b.yyz, ~(~reverseBits(vec3<u32>(63672u, u_input.a, u_input.a))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(0u, 5u)])), _wgslsmith_div_f32(1674f, arg_0.x))) * global0[_wgslsmith_index_u32(1u, 5u)])), Struct_1(-vec3<i32>(-1i, u_input.c.x, global1.x), ~min(vec3<u32>(1u, u_input.a, 2185u), ~vec3<u32>(u_input.a, u_input.a, 23202u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -832f)) == _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-911f, global0[_wgslsmith_index_u32(4294967295u, 5u)]))), _wgslsmith_f_op_f32(round(-294f))));
    global1 = ((u_input.b.wzw ^ _wgslsmith_mult_vec3_i32(vec3<i32>(0i, 0i, 0i), vec3<i32>(-2147483647i, 1i, u_input.b.x))) | u_input.b.zwx) ^ var_0.d.a;
    let var_1 = _wgslsmith_f_op_f32(func_3(Struct_1(firstLeadingBit(u_input.b.ywx), var_0.d.b, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-751f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.e.d)))))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(func_3(var_0.d)), select(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(-global1.xy, _wgslsmith_sub_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, 23364i))), true) | -arg_1, firstTrailingBit(~1u), var_0.e, Struct_1(vec3<i32>(global1.x, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(global1.x, -2147483647i, u_input.c.x), 0i), u_input.b.x), var_0.e.b, !(global1.x == u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -572f))));
    return -_wgslsmith_dot_vec4_i32((u_input.b >> (max(vec4<u32>(31106u, u_input.a, 23731u, 4294967295u), vec4<u32>(65319u, 1u, 0u, 1u)) % vec4<u32>(32u))) << ((~vec4<u32>(4294967295u, 1u, u_input.a, u_input.a) >> (~vec4<u32>(u_input.a, u_input.a, var_0.c, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<i32>(_wgslsmith_mult_i32(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(10904u, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)], -1000f, -365f))), u_input.b.x), -u_input.b.x), global1.x, 35111i);
    global0 = array<f32, 5>();
    global0 = array<f32, 5>();
    var var_0 = 1000f;
    global1 = u_input.b.zyx | (countOneBits(_wgslsmith_mod_vec3_i32(u_input.b.zyz, u_input.b.wyw) >> (vec3<u32>(u_input.a, 10232u, u_input.a) % vec3<u32>(32u))) << (~vec3<u32>(select(32997u, u_input.a, false), 0u, func_2(u_input.b, Struct_1(vec3<i32>(-55621i, global1.x, 0i), vec3<u32>(u_input.a, u_input.a, u_input.a), true, global0[_wgslsmith_index_u32(u_input.a, 5u)]))) % vec3<u32>(32u)));
    var_0 = global0[_wgslsmith_index_u32(u_input.a, 5u)];
    var_0 = -431f;
    let x = u_input.a;
    s_output = StorageBuffer(142238u, vec3<u32>(~6649u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), firstLeadingBit(vec4<u32>(54399u, 51987u, 0u, 4294967295u))), _wgslsmith_mod_u32(42084u, _wgslsmith_div_u32(u_input.a, 4294967295u))), abs(u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(600f * -481f)) * _wgslsmith_div_f32(global0[_wgslsmith_index_u32(29097u, 5u)], _wgslsmith_div_f32(595f, _wgslsmith_f_op_f32(598f + global0[_wgslsmith_index_u32(1u, 5u)])))));
}

