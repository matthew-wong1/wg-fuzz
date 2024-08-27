struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<i32> = vec2<i32>(-47897i, -55460i);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> Struct_4 {
    global0 = Struct_1(true, 27670u, u_input.d, !(!global0.e.yyz), !global0.e);
    var var_0 = ~firstTrailingBit(abs(u_input.b));
    global0 = Struct_1(arg_0, var_0.x, global0.c, global0.d, !global0.e);
    var var_1 = vec2<i32>(4583i, firstLeadingBit(-2147483647i));
    var_1 = vec2<i32>(1i, min(reverseBits(abs(u_input.a.x)) << (1u % 32u), -_wgslsmith_clamp_i32(firstTrailingBit(36007i), 1i, ~82040i)));
    return Struct_4(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(362f))), 1000f, _wgslsmith_f_op_f32(-1651f * _wgslsmith_f_op_f32(step(1562f, 2604f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(524f, -2434f)) * _wgslsmith_f_op_f32(step(2569f, -1080f))), _wgslsmith_div_f32(1187f, _wgslsmith_f_op_f32(-1528f + -615f)), _wgslsmith_f_op_f32(floor(493f))))));
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> u32 {
    let var_0 = arg_0;
    var var_1 = var_0.a.x;
    var var_2 = _wgslsmith_div_u32(81504u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(_wgslsmith_sub_u32(arg_1, 22471u), 30081u)), u_input.b.yx));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a.x, 1582f))))));
    let var_3 = global0.c;
    return ~reverseBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.b.xz & u_input.c.zy, select(u_input.c.zx, vec2<u32>(4294967295u, 49773u), global0.d.zy)), ~arg_1));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: vec4<f32>) -> vec2<bool> {
    global1 = min(u_input.a.zy, _wgslsmith_mod_vec2_i32(max(u_input.a.wy, u_input.a.yz), -vec2<i32>(u_input.a.x, u_input.a.x) << (u_input.b.xy % vec2<u32>(32u))));
    var var_0 = Struct_1(true, u_input.b.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(4294967295u, 55708u), 17381u, min(u_input.b.x, 37299u)), select(u_input.b, _wgslsmith_add_vec3_u32(vec3<u32>(global0.b, 59930u, 23394u), u_input.c.zyw), vec3<bool>(global0.d.x, true, arg_0.x))) % 32u), func_3(func_2(arg_0.x || !arg_1, min(u_input.a.xwz, u_input.a.zyw) >> (vec3<u32>(global0.c, 39513u, u_input.d) % vec3<u32>(32u))), select(_wgslsmith_mult_u32(89865u, 43023u), countOneBits(4294967295u), !global0.a) | _wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), !arg_0.wyx, arg_0);
    var_0 = Struct_1(all(vec4<bool>(true, select(any(global0.e.zw), true, !global0.a), any(select(vec4<bool>(false, false, false, true), vec4<bool>(arg_1, true, var_0.a, arg_1), var_0.e)), !(!var_0.e.x))), min(u_input.c.x, func_3(Struct_4(vec3<f32>(arg_2.x, -2363f, arg_2.x)), select(global0.b, ~4294967295u, global0.e.x))), global0.b, vec3<bool>(false && !(arg_2.x > arg_2.x), any(!vec4<bool>(true, arg_1, arg_0.x, false)), global0.e.x), select(vec4<bool>(var_0.d.x, !all(vec2<bool>(false, global0.d.x)), var_0.e.x, var_0.d.x), global0.e, _wgslsmith_f_op_f32(-arg_2.x) >= _wgslsmith_f_op_f32(ceil(-1299f))));
    let var_1 = Struct_3(true, Struct_1(true, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 6537u, 9461u), u_input.b), u_input.c.zxy) >> (var_0.c % 32u), _wgslsmith_add_u32(~(~u_input.b.x), u_input.d), vec3<bool>(any(select(arg_0.wxw, vec3<bool>(false, global0.d.x, false), vec3<bool>(false, arg_0.x, global0.d.x))), true, false), vec4<bool>(false, all(global0.e), global0.d.x, any(select(var_0.e, vec4<bool>(true, var_0.d.x, arg_1, false), arg_0)))), Struct_1(!(1i < (2147483647i & global1.x)), ~global0.c >> (global0.b % 32u), 55680u, var_0.d, select(arg_0, select(vec4<bool>(true, arg_1, arg_0.x, global0.d.x), !vec4<bool>(true, true, global0.d.x, false), arg_0), !arg_0)), Struct_2(-620f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(635f, arg_2.x) + vec2<f32>(-2213f, _wgslsmith_f_op_f32(arg_2.x - -490f))), _wgslsmith_f_op_vec2_f32(arg_2.yy * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, arg_2.x) + arg_2.xy))), var_0.d.zz)));
    var_0 = Struct_1(any(select(select(!var_1.c.e.xzy, select(arg_0.www, vec3<bool>(global0.d.x, global0.a, var_1.a), global0.d), false), var_1.c.e.zwz, select(vec3<bool>(false, var_0.e.x, false), select(vec3<bool>(true, arg_0.x, var_0.a), vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(true, var_0.e.x, global0.e.x)), !vec3<bool>(var_1.b.d.x, arg_0.x, false)))), ~_wgslsmith_add_u32(~(u_input.c.x & 20900u), 62359u), 0u, var_1.b.d, arg_0);
    return var_0.d.yx;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.e.x, ~_wgslsmith_clamp_u32(firstTrailingBit(~u_input.b.x), u_input.c.x >> (firstTrailingBit(43898u) % 32u), u_input.d), ~(abs(u_input.d) ^ ~global0.b) << (39001u % 32u), select(select(global0.e.zzz, global0.d, global0.a), vec3<bool>(false, global0.d.x, all(func_1(global0.e, global0.e.x, vec4<f32>(1871f, 1236f, -1000f, -179f)))), (global0.c << (min(52000u, u_input.d) % 32u)) < 4294967295u), select(select(select(vec4<bool>(global0.e.x, true, global0.d.x, false), !vec4<bool>(false, global0.e.x, true, true), !vec4<bool>(true, true, global0.d.x, true)), vec4<bool>(any(vec3<bool>(global0.d.x, global0.e.x, true)), global0.e.x, any(global0.e.xyy), global0.d.x), select(vec4<bool>(false, global0.d.x, global0.e.x, true), vec4<bool>(true, global0.e.x, global0.e.x, true), u_input.c.x > 1u)), vec4<bool>(all(vec4<bool>(global0.e.x, false, true, global0.e.x)), !global0.d.x, all(select(vec2<bool>(true, global0.a), global0.e.yx, global0.d.x)), global0.a), global0.d.x));
    global0 = Struct_1(all(global0.e) | any(global0.d), global0.b << (~func_3(func_2(false, vec3<i32>(-1i, u_input.a.x, global1.x)), global0.c) % 32u), u_input.b.x, vec3<bool>(global0.e.x, !(!all(global0.e.xzz)), (abs(global1.x) & max(0i, global1.x)) == _wgslsmith_mult_i32(countOneBits(1i), _wgslsmith_div_i32(global1.x, -1i))), global0.e);
    let var_0 = true;
    var var_1 = func_2(global0.e.x, max(max(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a.wzx, vec3<i32>(-1i, global1.x, global1.x)), min(vec3<i32>(47203i, global1.x, global1.x), vec3<i32>(global1.x, global1.x, global1.x))), min(_wgslsmith_clamp_vec3_i32(u_input.a.wwy, vec3<i32>(u_input.a.x, 36202i, 1624i), vec3<i32>(u_input.a.x, 0i, u_input.a.x)), ~vec3<i32>(-21265i, u_input.a.x, -1i))), select(-vec3<i32>(1i, -8490i, global1.x), vec3<i32>(-u_input.a.x, ~global1.x, -5029i), true || all(vec2<bool>(global0.d.x, global0.a)))));
    let var_2 = !select(!select(select(global0.e.zwx, vec3<bool>(var_0, false, global0.a), vec3<bool>(var_0, true, var_0)), vec3<bool>(global0.e.x, var_0, false), u_input.a.x < -2147483647i), vec3<bool>(global0.a, var_0, false & global0.d.x), !(!global0.d));
    let var_3 = Struct_4(func_2(func_1(select(vec4<bool>(true, true, var_2.x, true), !global0.e, !vec4<bool>(global0.a, false, true, var_2.x)), !var_2.x & global0.e.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, -874f, -715f, -1577f) * vec4<f32>(618f, -2267f, 989f, -1995f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, 616f)))).x, min(~u_input.a.xzx, u_input.a.yzy)).a);
    let var_4 = select(vec3<bool>(false, global0.a, any(vec3<bool>(false, true, true)) & (_wgslsmith_f_op_f32(-var_3.a.x) <= var_1.a.x)), vec3<bool>(var_3.a.x <= func_2(true, vec3<i32>(global1.x, 2147483647i, -20313i)).a.x, global0.c != ~4294967295u, var_2.x), !(!var_2));
    var_1 = Struct_4(func_2(false, firstTrailingBit(vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, -1i), 5148i, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)))).a);
    var var_5 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(~u_input.c, select(~(vec4<u32>(global0.c, 44498u, 24414u, 1u) & u_input.c), _wgslsmith_sub_vec4_u32(u_input.c & u_input.c, ~u_input.c), var_2.x)));
}

