struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(30570i, 28074i, -49570i, 3449i));

var<private> global1: Struct_2;

var<private> global2: Struct_2 = Struct_2(vec3<bool>(false, true, true), 45505i, Struct_1(vec4<i32>(-1947i, 1i, 1i, 1i)), Struct_1(vec4<i32>(-18i, 0i, -33877i, -22712i)), Struct_1(vec4<i32>(-1i, -44204i, 0i, i32(-2147483648))));

var<private> global3: vec3<i32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: bool) -> vec3<bool> {
    return !global1.a;
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_1(abs(_wgslsmith_mod_vec4_i32(global2.e.a, countOneBits(~vec4<i32>(1i, -28792i, global0.a.x, 0i)))));
    return Struct_2(select(global2.a, !func_3(-683f, !global1.a.x), vec3<bool>(_wgslsmith_f_op_f32(381f - 106f) == _wgslsmith_f_op_f32(floor(-431f)), true, any(vec2<bool>(true, false)))), _wgslsmith_clamp_i32(~var_0.a.x, -45673i, u_input.c.x), Struct_1(var_0.a), Struct_1(vec4<i32>(15073i, _wgslsmith_add_i32(1i, 0i), ~(-11392i), global1.b)), Struct_1(vec4<i32>(global3.x, min(32304i, _wgslsmith_dot_vec4_i32(global2.d.a, global0.a)), 1i, global1.d.a.x)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2) -> i32 {
    let var_0 = select(-_wgslsmith_div_vec4_i32(vec4<i32>(global1.d.a.x, 0i, reverseBits(22000i), _wgslsmith_add_i32(global1.b, -58473i)), vec4<i32>(~8303i, _wgslsmith_mod_i32(-7502i, -6406i), firstTrailingBit(global0.a.x), u_input.a.x)), vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, global0.a.x, -10734i, global3.x), vec4<i32>(global1.e.a.x | 52517i, ~1i, global2.c.a.x, -15778i)), (_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -33468i, 2147483647i, arg_1.d.a.x), global0.a) >> (firstLeadingBit(u_input.b) % 32u)) | (-2147483647i >> (0u % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.d.a.x >> (u_input.d.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-10801i, -1i, -16190i), global1.d.a.yxx), _wgslsmith_dot_vec3_i32(global2.c.a.zzz, vec3<i32>(52869i, 15238i, global1.d.a.x)), select(-2147483647i, global3.x, arg_0.x)), vec4<i32>(global1.b, 2147483647i, global2.d.a.x, 19761i) ^ firstTrailingBit(arg_1.c.a)), -44384i), true);
    global0 = func_2(vec2<bool>(true, false)).d;
    global3 = _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.e.a.x, _wgslsmith_sub_i32(global1.c.a.x, func_2(vec2<bool>(false, false)).b) | ((u_input.e >> (u_input.d.x % 32u)) << (select(u_input.b, u_input.d.x, false) % 32u)), i32(-1i) * -max(u_input.e, -1i)), vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_clamp_i32(global0.a.x, 2147483647i, 2147483647i), -14751i, -26304i), min(vec3<i32>(min(-1i, global0.a.x), ~_wgslsmith_mult_i32(2147483647i, var_0.x), _wgslsmith_add_i32(global3.x, 13833i)), -firstLeadingBit(vec3<i32>(2147483647i, global0.a.x, global2.c.a.x)) ^ -(u_input.c.ywx ^ vec3<i32>(u_input.e, -50258i, -30058i))));
    let var_1 = 0u;
    let var_2 = arg_0.xx;
    return 0i;
}

fn func_1() -> Struct_2 {
    let var_0 = ~vec4<i32>(global3.x, global2.b | -global1.b, global1.e.a.x, ~func_4(vec3<bool>(global2.a.x, global2.a.x, false), func_2(vec2<bool>(true, false))));
    var var_1 = global1.c;
    var var_2 = u_input.a.x;
    let var_3 = -689f;
    global1 = Struct_2(select(func_3(var_3, true), vec3<bool>(!(1198f <= var_3), global1.a.x, func_2(global2.a.xx).a.x), select(func_2(global2.a.zy).a, vec3<bool>(global2.a.x, any(vec4<bool>(global1.a.x, global2.a.x, global1.a.x, true)), true), !global2.a.x)), reverseBits(_wgslsmith_sub_i32(-2268i, var_1.a.x)), global1.c, global1.e, global1.d);
    return func_2(global1.a.zx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1229f), 726f, -711f, 1f);
    var var_1 = func_1();
    var_1 = func_1();
    let var_2 = min(max(vec3<i32>(~var_1.e.a.x, global3.x, 1i << (u_input.d.x % 32u)) | (vec3<i32>(-1i) * -vec3<i32>(24212i, -2147483647i, 1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(global0.a.x, global0.a.x, -2147483647i), u_input.e, var_1.e.a.x), global2.c.a.xzx)), firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(0i, var_1.c.a.x), 2464i, -global1.d.a.x), vec3<i32>(-global0.a.x, ~global0.a.x, global1.d.a.x))));
    var_1 = Struct_2(vec3<bool>(false, all(select(vec4<bool>(true, true, global2.a.x, true), vec4<bool>(false, true, global1.a.x, global2.a.x), select(vec4<bool>(true, global2.a.x, var_1.a.x, true), vec4<bool>(false, false, global2.a.x, var_1.a.x), vec4<bool>(true, true, global2.a.x, var_1.a.x)))), !global1.a.x), func_4(func_1().a, Struct_2(func_3(var_0.x, false), global0.a.x, func_1().c, Struct_1(vec4<i32>(u_input.c.x, 0i, var_2.x, 1i)), Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.c.x, 0i, 16958i), vec4<i32>(global0.a.x, 2147483647i, 1754i, 0i))))), var_1.e, var_1.d, global2.c);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-444f, 145f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(min(var_0.x, var_0.x))), -1058f)) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-273f - var_0.x), 1566f, -606f, _wgslsmith_f_op_f32(exp2(var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(-1668f * 1000f), _wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_div_f32(var_0.x, -1131f)))))));
    var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(161f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x - -1700f))), -758f, !global2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1064f, var_0.x)) * 1454f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-171f, var_0.x, var_0.x, -1576f), vec4<f32>(var_0.x, 603f, var_0.x, var_0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(45346u, _wgslsmith_clamp_u32(~u_input.d.x, countOneBits(1u), _wgslsmith_dot_vec2_u32(u_input.d.wy, u_input.d.wx | u_input.d.xx)), _wgslsmith_dot_vec4_u32(u_input.d, abs(vec4<u32>(u_input.d.x, 1u, 1823u, 4294967295u))), ~u_input.b), _wgslsmith_add_vec3_u32(~(~(vec3<u32>(u_input.b, u_input.b, 80034u) << (u_input.d.xwz % vec3<u32>(32u)))), countOneBits(vec3<u32>(firstLeadingBit(18288u), select(u_input.d.x, 32362u, true), u_input.d.x))), u_input.a.zx, ~(~(~(~vec3<u32>(u_input.b, u_input.b, u_input.b)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -1125f, 838f, -1071f), vec4<f32>(774f, 528f, var_0.x, var_0.x), var_1.a.x)), vec4<f32>(var_0.x, var_0.x, 1865f, var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(var_0.x - 456f), 1f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, var_0.x, -818f, var_0.x))))));
}

