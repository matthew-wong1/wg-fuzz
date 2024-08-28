struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec2<i32>(-54485i, -564i), vec3<bool>(false, false, false), vec4<i32>(3027i, 35778i, 1i, 2147483647i), vec3<i32>(i32(-2147483648), 2147483647i, 0i)), Struct_1(vec2<i32>(1i, -42474i), vec3<bool>(true, false, true), vec4<i32>(i32(-2147483648), -2775i, i32(-2147483648), -29937i), vec3<i32>(2147483647i, 1i, 1i)), Struct_1(vec2<i32>(12090i, -7541i), vec3<bool>(false, true, true), vec4<i32>(-15727i, -24054i, -28358i, 0i), vec3<i32>(-31936i, 1i, -3539i)), Struct_1(vec2<i32>(39516i, 25942i), vec3<bool>(true, false, false), vec4<i32>(-1i, 28312i, -22950i, i32(-2147483648)), vec3<i32>(2147483647i, -1i, 0i)));

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<i32>(13271i, 15079i), vec3<bool>(true, false, false), vec4<i32>(0i, 53499i, 4938i, 42669i), vec3<i32>(16536i, -1i, 14517i)), Struct_1(vec2<i32>(0i, -17454i), vec3<bool>(false, false, false), vec4<i32>(-1i, -7911i, 0i, -26869i), vec3<i32>(-71742i, -24697i, 20482i)), Struct_1(vec2<i32>(1i, -1i), vec3<bool>(false, true, false), vec4<i32>(0i, -14253i, -14230i, 26347i), vec3<i32>(-39178i, 27835i, i32(-2147483648))));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32) -> vec4<bool> {
    let var_0 = global1[_wgslsmith_index_u32(~u_input.b.x, 3u)];
    global0 = array<Struct_1, 4>();
    let var_1 = arg_0.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1168f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * 1131f))));
    return vec4<bool>(var_0.b.x, false, all(!var_0.b), var_0.b.x);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = !(!select(vec4<bool>(all(arg_0.b), !arg_0.b.x, true, u_input.a >= -2147483647i), func_3(select(vec2<bool>(arg_0.b.x, true), arg_0.b.yx, vec2<bool>(arg_0.b.x, arg_0.b.x)), _wgslsmith_clamp_i32(arg_0.c.x, arg_0.c.x, arg_0.a.x)), !vec4<bool>(arg_0.b.x, arg_0.b.x, false, arg_0.b.x)));
    let var_1 = vec4<i32>((_wgslsmith_dot_vec2_i32(~arg_0.c.yz, vec2<i32>(219i, 0i)) & u_input.a) ^ 27957i, select(-_wgslsmith_dot_vec4_i32(arg_0.c, arg_0.c), 39610i, false) << (_wgslsmith_mult_u32(~(~u_input.b.x), firstTrailingBit(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x))) % 32u), firstTrailingBit(_wgslsmith_dot_vec2_i32(-firstTrailingBit(vec2<i32>(arg_0.a.x, arg_0.a.x)), -countOneBits(vec2<i32>(14020i, -2147483647i)))), -10389i);
    var var_2 = Struct_1(abs(_wgslsmith_mod_vec2_i32(firstLeadingBit(countOneBits(vec2<i32>(arg_0.d.x, u_input.a))), ~vec2<i32>(2147483647i, 7475i))), !arg_0.b, arg_0.c, vec3<i32>(-1i, _wgslsmith_div_i32(-18082i, -15395i >> (1u % 32u)), -2147483647i));
    var var_3 = 1000f;
    var var_4 = abs(_wgslsmith_dot_vec2_u32(u_input.b, ~u_input.b));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    global1 = array<Struct_1, 3>();
    return func_2(Struct_1(select(arg_0.c.yw, _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(arg_0.d.xx, vec2<i32>(u_input.a, -14334i)), arg_0.a), any(select(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x), vec4<bool>(false, arg_0.b.x, arg_0.b.x, false), true))), func_2(Struct_1(arg_0.d.yz, vec3<bool>(true, false, arg_0.b.x), vec4<i32>(u_input.a, u_input.a, -1i, 2147483647i), -vec3<i32>(arg_0.a.x, u_input.a, 47290i))).b, arg_0.c << (~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 94021u, 1u, u_input.b.x), vec4<u32>(u_input.b.x, 71766u, 7959u, u_input.b.x)) % vec4<u32>(32u)), vec3<i32>(~u_input.a, _wgslsmith_mod_i32(~12861i, u_input.a), arg_0.a.x)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: f32) -> f32 {
    global1 = array<Struct_1, 3>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~13179u), ~1u, 4294967295u), 4u)];
    var var_1 = func_4(func_4(arg_0, select(u_input.a, _wgslsmith_mult_i32(var_0.a.x, arg_1.a.x), !(!arg_1.b.x))), 0i).b;
    return arg_3;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> StorageBuffer {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_5(func_4(func_2(global1[_wgslsmith_index_u32(u_input.b.x, 3u)]), -u_input.a), global0[_wgslsmith_index_u32(reverseBits(~u_input.b.x), 4u)], arg_1.b.yy, arg_3)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -366f), _wgslsmith_f_op_f32(arg_3 * 1442f))));
    var var_1 = global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(min(~_wgslsmith_mult_u32(arg_2, 233u), u_input.b.x), abs(4294967295u >> (arg_2 % 32u)) | ~u_input.b.x)), 3u)];
    var var_2 = ~(~(vec4<i32>(-1i, u_input.a, firstLeadingBit(2147483647i), -var_1.c.x) | -vec4<i32>(-2147483647i, u_input.a, var_1.c.x, var_1.c.x)));
    let var_3 = -804f;
    var_1 = Struct_1(-arg_1.a, vec3<bool>(false, func_4(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], ~u_input.a).b.x, -(2147483647i ^ arg_1.a.x) <= -54634i), vec4<i32>(_wgslsmith_add_i32(-(~arg_0.x), var_1.d.x), 17623i, arg_1.d.x & (u_input.a << (~33621u % 32u)), min(~1i, 0i)), vec3<i32>(func_2(arg_1).a.x, ~(-7774i), _wgslsmith_mult_i32(-39157i, ~(~(-1i)))));
    return StorageBuffer(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b.x, 0u, arg_2, 4294967295u)), reverseBits(vec4<u32>(arg_2, u_input.b.x, arg_2, 43433u))), max(vec4<u32>(4294967295u, 19817u, 0u, u_input.b.x), ~vec4<u32>(arg_2, arg_2, 39217u, 17906u))), abs(vec4<u32>(19970u, 22649u, 32989u, 0u) >> (~vec4<u32>(arg_2, 4294967295u, arg_2, 4294967295u) % vec4<u32>(32u)))), -vec4<i32>(1i, ~3429i, 0i, ~(~1i)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3 * 1131f), arg_3), -1079f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3 * var_0))), 540f, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1369f;
    global1 = array<Struct_1, 3>();
    let x = u_input.a;
    s_output = func_1(vec4<i32>(-2147483647i, ~18067i, 0i, firstTrailingBit(1i)) ^ (abs(vec4<i32>(27328i, 0i, u_input.a, 5626i)) >> (_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u), vec4<u32>(u_input.b.x, 0u, 1u, 13751u) | vec4<u32>(u_input.b.x, 1u, u_input.b.x, 11890u)) % vec4<u32>(32u))), global0[_wgslsmith_index_u32(max(select(_wgslsmith_sub_u32(u_input.b.x << (u_input.b.x % 32u), 61199u << (u_input.b.x % 32u)), 15321u, true), 3145u), 4u)], u_input.b.x, 1741f);
}

