struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: i32,
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

var<private> global0: Struct_2;

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

var<private> global2: vec2<i32> = vec2<i32>(-44038i, -75138i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_1) -> i32 {
    global2 = -vec2<i32>(_wgslsmith_add_i32(-arg_0.c.c.x, arg_2.c.x), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(countOneBits(u_input.c.xy), vec2<i32>(arg_2.c.x, arg_2.c.x)), arg_2.a.xx));
    let var_0 = !select(vec3<bool>(global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.e.e, 4294967295u, 1u, 1u), vec4<u32>(29322u, global0.c.e, arg_2.d, arg_0.c.e)) < ~arg_0.e.e, global0.e.c.x <= (-17724i ^ global0.c.c.x)), vec3<bool>(!(u_input.d.x <= 0u), true, !global1.x), vec3<bool>(all(select(vec2<bool>(false, global1.x), vec2<bool>(false, false), global1.x)), all(vec2<bool>(false, global1.x)), global1.x));
    var var_1 = arg_2.a.x;
    global0 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.c.b.x, _wgslsmith_f_op_f32(select(-323f, _wgslsmith_f_op_f32(select(arg_0.c.b.x, arg_1.x, global1.x)), var_0.x))))));
    return -1i;
}

fn func_2(arg_0: i32, arg_1: f32) -> vec4<i32> {
    var var_0 = u_input.d.x;
    var_0 = abs(7615u);
    var var_1 = 25070i;
    let var_2 = firstLeadingBit(firstLeadingBit(u_input.c.zz));
    global2 = vec2<i32>(~_wgslsmith_clamp_i32(-global0.c.c.x | (i32(-1i) * -1i), -33672i, var_2.x | var_2.x), -arg_0);
    return vec4<i32>(1i, _wgslsmith_clamp_i32(global0.e.a.x, ~var_2.x ^ -_wgslsmith_dot_vec2_i32(global0.c.c.zy, u_input.c.zy), -_wgslsmith_mod_i32(51078i, -global0.c.c.x)), func_3(Struct_2(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-global0.e.b.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, -1281f, -875f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, global0.e.b.x, global0.c.b.x) - global0.b), vec3<bool>(global1.x, global1.x, global1.x))), Struct_1(global0.e.a, global0.e.b, countOneBits(vec3<i32>(arg_0, -2147483647i, -1716i)), global0.c.d >> (u_input.d.x % 32u), 2489u), ~(~u_input.d), Struct_1(select(vec4<i32>(var_2.x, u_input.c.x, u_input.b, var_2.x), vec4<i32>(77301i, -25131i, -54162i, 16548i), vec4<bool>(true, global1.x, global1.x, false)), _wgslsmith_div_vec4_f32(global0.e.b, vec4<f32>(-2156f, 703f, arg_1, 545f)), vec3<i32>(var_2.x, -1i, 46476i), _wgslsmith_mult_u32(15566u, 0u), u_input.d.x)), _wgslsmith_f_op_vec4_f32(max(global0.e.b, _wgslsmith_f_op_vec4_f32(min(global0.c.b, vec4<f32>(global0.c.b.x, -964f, -288f, 1000f))))), global0.e), _wgslsmith_mult_i32(global0.e.a.x, -9272i));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = global1.x;
    global1 = !vec3<bool>(any(vec2<bool>(true, global1.x)), true, true);
    let var_1 = _wgslsmith_mult_vec4_i32(-select(select(~vec4<i32>(global0.e.a.x, -18093i, 4662i, 2147483647i), func_2(u_input.b, 249f), vec4<bool>(true, global1.x, global1.x, global1.x)), ~vec4<i32>(20814i, arg_1.c.x, 37680i, global0.e.a.x), global1.x), firstLeadingBit(abs(arg_1.a << ((vec4<u32>(arg_1.e, arg_0, arg_0, u_input.d.x) & vec4<u32>(24426u, 4294967295u, 0u, 26759u)) % vec4<u32>(32u)))));
    global2 = _wgslsmith_div_vec2_i32(vec2<i32>(9806i, -877i), ~u_input.c.xz & -max(var_1.zz, arg_1.a.xx)) << (u_input.d.xy % vec2<u32>(32u));
    global2 = vec2<i32>(~global2.x, -1i);
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) - -1000f), arg_1.b.yyx, arg_1, global0.d, Struct_1(global0.e.a, global0.c.b, -(~min(arg_1.a.xzx, arg_1.c)), 1u, ~(~_wgslsmith_mult_u32(4294967295u, arg_1.e))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> i32 {
    var var_0 = func_1(4294967295u, func_1(arg_2.c.d, Struct_1(vec4<i32>(global2.x, 2147483647i, global0.e.c.x, -2147483647i), vec4<f32>(arg_1.c.b.x, arg_0, arg_2.e.b.x, global0.c.b.x), vec3<i32>(arg_2.c.a.x, 1i, 2147483647i), 1u, u_input.d.x)).c).d.yy & arg_2.d.xz;
    var var_1 = func_1(4294967295u, Struct_1(~vec4<i32>(-2147483647i >> (1u % 32u), countOneBits(global2.x), -45247i, global2.x & 2147483647i), vec4<f32>(_wgslsmith_div_f32(576f, arg_1.a), arg_2.c.b.x, _wgslsmith_f_op_f32(-404f + arg_0), _wgslsmith_f_op_f32(-global0.b.x)), -_wgslsmith_clamp_vec3_i32(arg_1.e.a.xxx, arg_2.c.c, arg_1.e.a.wxw) | vec3<i32>(global0.c.c.x << (var_0.x % 32u), u_input.a << (arg_2.e.e % 32u), 9764i), 1u, min(82430u, 1u)));
    var var_2 = var_1.e;
    var var_3 = -firstLeadingBit(var_1.c.a);
    let var_4 = Struct_2(var_1.c.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1578f, global0.a, arg_0)))), var_1.c, _wgslsmith_mod_vec3_u32(u_input.d, global0.d >> (reverseBits(~u_input.d) % vec3<u32>(32u))), func_1(_wgslsmith_mult_u32(global0.c.e, ~reverseBits(arg_1.e.e)), func_1(4294967295u, var_1.e).c).e);
    return ~(var_1.c.a.x | _wgslsmith_mult_i32(func_3(var_4, global0.e.b, Struct_1(var_1.e.a, var_4.e.b, vec3<i32>(-20935i, 28348i, 0i), arg_2.d.x, arg_1.e.d)), -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!(!select(vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(false, global1.x, false, false), true))), vec4<bool>((abs(-1i) >> (~4294967295u % 32u)) <= _wgslsmith_add_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, global0.e.c.x, -27021i, u_input.e), global0.c.a)), false, (global1.x | any(vec4<bool>(false, false, true, global1.x))) | global1.x, global0.d.x < (global0.c.e & select(47986u, global0.e.d, true))), vec4<bool>(any(!vec3<bool>(true, global1.x, false)), false, !all(vec4<bool>(global1.x, true, global1.x, global1.x)), false));
    let var_1 = firstTrailingBit(~(~select(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 52270u, 4294967295u, u_input.d.x), vec4<u32>(36692u, 4294967295u, u_input.d.x, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, global0.d.x, global0.e.e, 72047u), vec4<u32>(u_input.d.x, global0.c.e, 1u, u_input.d.x)), select(var_0, var_0, var_0))));
    global2 = ~global0.e.a.xw;
    var var_2 = ~func_4(-544f, func_1(114484u, Struct_1(vec4<i32>(-16602i, u_input.c.x, global2.x, global0.c.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.b.x, global0.c.b.x, -149f, global0.b.x)), global0.c.a.zyz, _wgslsmith_add_u32(u_input.d.x, 500u), _wgslsmith_add_u32(39077u, 33117u))), Struct_2(func_1(~4294967295u, Struct_1(vec4<i32>(u_input.c.x, global0.e.c.x, 2147483647i, global0.e.c.x), vec4<f32>(global0.e.b.x, global0.b.x, global0.c.b.x, -299f), u_input.c, 4294967295u, global0.e.e)).b.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(global0.e.b.wxx - global0.e.b.zxz))), func_1(reverseBits(8027u), Struct_1(global0.c.a, global0.e.b, u_input.c, var_1.x, u_input.d.x)).e, ~_wgslsmith_add_vec3_u32(global0.d, global0.d), Struct_1(global0.e.a, vec4<f32>(global0.a, global0.e.b.x, global0.a, global0.b.x), func_1(u_input.d.x, global0.e).c.a.zww, min(u_input.d.x, var_1.x), _wgslsmith_div_u32(42657u, var_1.x))), max(~(u_input.d.x >> (u_input.d.x % 32u)), var_1.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global0.e.b.wy, global0.e.b.wz), global0.e.b.xx)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, global0.e.b.x);
}

