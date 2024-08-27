struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: vec2<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: Struct_1;

var<private> global2: vec2<f32> = vec2<f32>(1401f, 387f);

var<private> global3: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: u32, arg_3: Struct_3) -> vec2<f32> {
    let var_0 = true;
    let var_1 = 753f;
    let var_2 = select(global0.c, select(global0.c, vec2<bool>(true, arg_3.c), global0.b < _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(171f, 1048f), _wgslsmith_f_op_f32(min(var_1, global2.x))))), select(select(select(!vec2<bool>(arg_3.c, false), global0.c, false == arg_3.c), !select(global0.c, global0.c, false), ~arg_3.a.a.d.x <= arg_3.b.b.x), vec2<bool>(false, !arg_3.c || (global0.d.a.d.x == global3.d.x)), true));
    var var_3 = -25488i > arg_3.a.a.c;
    let var_4 = Struct_3(Struct_2(global0.a.a.a, _wgslsmith_clamp_vec2_u32(vec2<u32>(abs(39774u), firstTrailingBit(arg_2)), vec2<u32>(arg_3.b.c, max(arg_3.e.a.d.x, 4294967295u)), select(_wgslsmith_sub_vec2_u32(vec2<u32>(global3.d.x, 0u), global1.d.zx), countOneBits(vec2<u32>(u_input.a, arg_3.b.a.d.x)), global0.c.x && var_0)), _wgslsmith_add_u32(max(u_input.c, global3.d.x), 1u)), Struct_2(arg_3.a.a, arg_3.e.a.d.zz, ~1u), false, _wgslsmith_f_op_f32(-574f + var_1), arg_3.a);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-322f, global0.b), _wgslsmith_f_op_f32(global0.b - arg_3.d))))));
}

fn func_2(arg_0: vec2<i32>) -> vec2<i32> {
    let var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(38345i, -1i, _wgslsmith_add_i32(_wgslsmith_mult_i32(global0.d.a.b.x, 9532i), global0.a.e.a.a), -2147483647i), vec4<i32>(1i, 61197i, ~global3.b.x, ~(-1i) >> (global0.a.a.b.x % 32u))), (~(-vec4<i32>(-1i, 288i, arg_0.x, global1.a)) << (select(global1.d << (vec4<u32>(global1.d.x, u_input.c, u_input.c, 1u) % vec4<u32>(32u)), global1.d << (global0.d.a.d % vec4<u32>(32u)), global0.a.c) % vec4<u32>(32u))) & select(abs(-vec4<i32>(global0.a.e.a.c, 2147483647i, -2147483647i, arg_0.x)), ~vec4<i32>(u_input.d, 64290i, -2147483647i, -38916i), true));
    let var_1 = !global0.a.c;
    global2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1690f, global2.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(arg_0.x, global3.b.x, 0u, global0.a)) - vec2<f32>(-1751f, global0.b)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.d, _wgslsmith_div_f32(global2.x, 242f))))));
    global0 = Struct_5(global0.a, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global2.x, global0.a.d), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000f)), -155f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -178f)))))), vec2<bool>(true, true), Struct_2(global0.a.b.a, _wgslsmith_sub_vec2_u32(global3.d.yx, (vec2<u32>(0u, 4294967295u) | global3.d.zy) << (~vec2<u32>(61236u, global1.d.x) % vec2<u32>(32u))), ~(global0.a.e.a.d.x >> (76467u % 32u))));
    let var_2 = Struct_4(global0.d);
    return ~reverseBits(firstTrailingBit(~select(global1.b, vec2<i32>(var_0.x, 0i), false)));
}

fn func_4(arg_0: f32, arg_1: vec2<i32>, arg_2: bool, arg_3: u32) -> i32 {
    var var_0 = reverseBits(_wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(global3.d, vec4<u32>(global0.d.c, 4294967295u, 1u, global0.a.e.a.d.x))), (_wgslsmith_mult_u32(63540u, global3.d.x) << ((global0.d.c | 1u) % 32u)) & (~global3.d.x ^ 1u)));
    var var_1 = global0.d.a;
    global1 = global0.d.a;
    let var_2 = global0.a;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(365f, _wgslsmith_f_op_f32(step(-129f, arg_0))), vec2<f32>(_wgslsmith_f_op_f32(max(-1546f, global2.x)), global0.a.d)))));
    return global3.c;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4) -> i32 {
    var var_0 = Struct_5(global0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), global2.x))), global0.c, Struct_2(Struct_1(27146i >> (global0.d.c % 32u), global1.b, -1768i, ~(~arg_1.a.a.d)), vec2<u32>(~(global1.d.x | u_input.a), 4294967295u), ~62742u));
    let var_1 = vec3<bool>(any(!select(!vec4<bool>(var_0.c.x, var_0.c.x, true, false), select(vec4<bool>(true, false, var_0.c.x, global0.c.x), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(false, true, false, global0.a.c))), global0.c.x, global0.c.x);
    let var_2 = arg_0.x;
    return func_2(_wgslsmith_div_vec2_i32(arg_1.a.a.b, reverseBits(arg_0.zy))).x;
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_2 {
    let var_0 = func_5(abs(vec3<i32>(1i, func_4(_wgslsmith_f_op_f32(global2.x + arg_1), func_2(vec2<i32>(global0.a.b.a.a, -19196i)), true, 1u), _wgslsmith_mod_i32(global0.d.a.c, -global1.a))), Struct_4(global0.a.e));
    global2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1031f, global0.a.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1324f, global0.b)), _wgslsmith_div_vec2_f32(vec2<f32>(-1699f, 1714f), vec2<f32>(828f, -1553f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-853f, 279f) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1, arg_0)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-266f, 508f), vec2<f32>(2135f, -402f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global0.a.d)), false || global0.c.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, global2.x))))), false));
    let var_1 = arg_0;
    global2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(538f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1022f)) + -1556f));
    global3 = Struct_1(var_0 ^ _wgslsmith_mod_i32(global3.c, 1i), vec2<i32>(~(-2147483647i), global1.b.x) >> (firstTrailingBit(~_wgslsmith_sub_vec2_u32(vec2<u32>(76625u, 53094u), global3.d.xz)) % vec2<u32>(32u)), countOneBits(2147483647i), vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(global0.a.e.a.d.zw, global3.d.zw, global3.d.yy), vec2<u32>(~26791u, _wgslsmith_mult_u32(global0.a.b.c, 1405u))), 4442u, ~u_input.a, ~_wgslsmith_dot_vec3_u32(~global3.d.wyz, vec3<u32>(0u, u_input.c, global1.d.x))));
    return global0.a.e;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(global3.a, global1.b >> (vec2<u32>(~(0u | global1.d.x), 0u) % vec2<u32>(32u)), global3.a, global1.d);
    global0 = Struct_5(global0.a, global0.a.d, vec2<bool>(true, !(!(false && global0.c.x))), func_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), global2.x), -196f)), -639f));
    var var_0 = Struct_2(func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1572f * -157f), _wgslsmith_f_op_f32(select(-143f, 1041f, global0.c.x)))))), 697f).a, max(~_wgslsmith_sub_vec2_u32(vec2<u32>(global0.d.c, 4294967295u), global1.d.yy) >> (countOneBits(~vec2<u32>(0u, u_input.c)) % vec2<u32>(32u)), ~vec2<u32>(global1.d.x, u_input.a) ^ _wgslsmith_clamp_vec2_u32(firstTrailingBit(global1.d.wy), global1.d.yy, ~global1.d.yw)), firstTrailingBit(~1u << (max(u_input.c, 0u) % 32u)));
    global1 = func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.x), global0.b)), global2.x).a;
    var var_1 = abs(_wgslsmith_clamp_i32(~func_5(-vec3<i32>(2147483647i, u_input.b.x, -2819i), Struct_4(global0.a.b)), ~(~countOneBits(1i)), _wgslsmith_mod_i32(1i, reverseBits(global1.b.x))));
    let var_2 = vec2<i32>(15720i, 0i);
    let var_3 = 2147483647i;
    let var_4 = global1.d.wwy;
    var_0 = Struct_2(func_1(_wgslsmith_div_f32(global0.a.d, -590f), -601f).a, vec2<u32>(var_4.x, 15572u), reverseBits(52249u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, -1i, var_2.x), vec4<i32>(global3.c, global0.d.a.c, 2147483647i, global1.a)), global3.a), abs(global1.a), global1.c), global0.b, var_0.a.d.x, global1.c);
}

