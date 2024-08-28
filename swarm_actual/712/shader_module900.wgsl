struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, 4294967295u, vec2<f32>(-1946f, 174f), vec2<bool>(true, false), 1u);

var<private> global1: Struct_2 = Struct_2(vec3<f32>(-205f, -850f, -956f), Struct_1(0u, 4294967295u, vec2<f32>(-1654f, -265f), vec2<bool>(false, true), 1u), 1831f, Struct_1(4294967295u, 23186u, vec2<f32>(1388f, -1235f), vec2<bool>(true, false), 26912u), false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3) -> vec3<f32> {
    let var_0 = arg_2.a;
    let var_1 = !vec3<bool>(any(select(!vec4<bool>(false, false, var_0.d.x, var_0.d.x), vec4<bool>(false, var_0.d.x, global1.d.d.x, global0.d.x), select(vec4<bool>(false, false, arg_0.d.x, false), vec4<bool>(true, false, true, arg_2.a.d.x), vec4<bool>(global1.e, true, arg_0.d.x, false)))), true && global1.e, !(!any(vec3<bool>(true, false, true))));
    var var_2 = i32(-1i) * -1i;
    let var_3 = _wgslsmith_clamp_i32(~(i32(-1i) * -33859i), -2147483647i | ~(select(-7147i, 0i, false) | ~1i), 1i);
    global0 = Struct_1(~4294967295u, ~countOneBits(~_wgslsmith_div_u32(1u, 1u)), vec2<f32>(arg_2.b.x, 1663f), arg_0.d, ~(~min(select(arg_2.c, var_0.a, false), arg_2.a.e)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-global0.c.x), arg_1, global1.d.c.x))));
}

fn func_2() -> Struct_2 {
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(global1.a + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(global1.d, _wgslsmith_div_f32(global0.c.x, 113f), Struct_3(Struct_1(4294967295u, global1.d.b, global1.a.xx, vec2<bool>(global0.d.x, false), u_input.a.x), global1.a, 26924u))))), global1.b, -417f, Struct_1(_wgslsmith_add_u32(~global1.d.a, ~u_input.a.x | 1u), 79174u, global0.c, select(global0.d, global0.d, global1.b.d), _wgslsmith_mult_u32(global0.b, u_input.a.x)), global0.d.x);
    global0 = Struct_1(~(~(~10969u)) << (((global0.a << (~4633u % 32u)) | global1.d.e) % 32u), u_input.a.x, global0.c, !vec2<bool>(any(select(vec4<bool>(true, true, true, global0.d.x), vec4<bool>(true, global1.e, global1.b.d.x, global0.d.x), global1.d.d.x)), false), ~u_input.a.x);
    var var_0 = vec3<i32>(~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, 0i), vec2<i32>(0i, 41452i)), 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(max(2147483647i, 29484i), -(2147483647i >> (u_input.a.x % 32u))), ~vec2<i32>(-29293i, _wgslsmith_sub_i32(-21559i, -1i))), select(-5298i, 25236i, false));
    global1 = Struct_2(global1.a, Struct_1(~global1.d.b, _wgslsmith_div_u32(global0.e, ~1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, global1.d.c.x))), select(vec2<bool>(all(vec4<bool>(true, global1.d.d.x, global0.d.x, false)), all(vec2<bool>(true, global0.d.x))), global1.b.d, global0.d.x), u_input.a.x), global0.c.x, Struct_1(global1.d.e, 1u, _wgslsmith_f_op_vec2_f32(vec2<f32>(1644f, global1.c) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.a.x, global1.d.c.x), global0.c))), !global1.d.d, u_input.a.x), all(!(!(!vec3<bool>(true, global0.d.x, global1.d.d.x)))));
    global0 = global1.b;
    return Struct_2(_wgslsmith_f_op_vec3_f32(-global1.a), global1.b, _wgslsmith_f_op_f32(floor(235f)), Struct_1(~countOneBits(0u | global1.b.e), 5764u, vec2<f32>(100f, _wgslsmith_f_op_f32(trunc(-744f))), vec2<bool>(!any(vec4<bool>(global1.e, global0.d.x, true, global1.e)), global1.e), 1u), global0.d.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec2<u32>) -> u32 {
    global0 = func_2().d;
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global1.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1239f)) + -1246f)), 1542f, -155f) + func_2().a);
    let var_1 = u_input.a.x & _wgslsmith_div_u32(~arg_3.x ^ global1.b.e, global0.b);
    global1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -430f), -357f, global0.c.x), Struct_1(~654u, arg_3.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) * var_0.x), _wgslsmith_f_op_f32(round(var_0.x))), select(vec2<bool>(true, all(vec3<bool>(global1.e, true, false))), func_2().b.d, global0.d), ~(~(~41532u))), 334f, arg_0.b, global0.d.x);
    return ~_wgslsmith_clamp_u32(~(~1u), _wgslsmith_sub_u32(arg_0.d.a, _wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, 17083u), u_input.a.x)), ~56466u);
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = false;
    global0 = Struct_1(arg_0.e, func_4(func_2(), func_2().d, (vec4<i32>(-1i) * -vec4<i32>(-1i, 27033i, 58110i, 42661i)) << ((~vec4<u32>(4294967295u, 33720u, 1u, 4294967295u) << ((vec4<u32>(u_input.a.x, u_input.a.x, global0.e, global1.d.a) << (vec4<u32>(u_input.a.x, 16211u, 4294967295u, 2910u) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)), u_input.a.zz), global0.c, vec2<bool>(true, global1.b.d.x), 1u);
    let var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(~_wgslsmith_sub_i32(1i, 2147483647i), ~(-20283i), min(-6959i, -19112i)), firstLeadingBit(-vec3<i32>(1i, 1i, 1i))) & _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(11876i, -10993i, -1i), ~reverseBits(vec3<i32>(0i, 18284i, 21979i))), abs(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-45802i, 2147483647i, 52468i), vec3<i32>(0i, 11123i, -1i)), countOneBits(-3323i), -26365i)));
    var var_2 = Struct_3(func_2().d, global1.a, arg_0.a);
    global0 = var_2.a;
    return ~global0.b;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = 156f;
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(sign(var_0))), -2279f, arg_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-444f, _wgslsmith_f_op_f32(arg_3.x + 471f), _wgslsmith_f_op_f32(arg_0.x - global1.c)) - vec3<f32>(arg_2.a.x, 282f, arg_3.x)))), Struct_1(min(0u, 1u), ~_wgslsmith_add_u32(~global0.e, ~55583u), func_2().a.yy, !arg_2.b.d, func_2().d.b << (global1.d.a % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -347f), global1.d, true);
    var var_1 = Struct_3(arg_1.b, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(arg_3, global1.a))), ~(~global1.b.a));
    var var_2 = arg_2;
    global0 = var_1.a;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = !global1.d.d.x;
    global1 = func_5(global1.a.xx, Struct_2(vec3<f32>(1842f, -1674f, -225f), global1.b, -854f, global1.d, !all(vec4<bool>(global0.d.x, global0.d.x, global0.d.x, true))), Struct_2(_wgslsmith_f_op_vec3_f32(exp2(global1.a)), Struct_1(_wgslsmith_mult_u32(func_1(Struct_1(0u, global0.e, vec2<f32>(global0.c.x, global1.a.x), vec2<bool>(true, global1.e), u_input.a.x)), global1.d.a), 0u, vec2<f32>(271f, 293f), global0.d, _wgslsmith_mod_u32(func_2().b.b, ~0u)), global1.c, Struct_1(~abs(global0.b), ~(~global0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0.c.x)), !(!vec2<bool>(true, global0.d.x)), var_0.x), any(select(!vec4<bool>(false, global0.d.x, global0.d.x, true), !vec4<bool>(false, false, true, global1.b.d.x), false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-838f, _wgslsmith_div_f32(_wgslsmith_div_f32(564f, global1.c), _wgslsmith_f_op_f32(f32(-1f) * -362f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.c.x)) * _wgslsmith_f_op_f32(sign(global0.c.x))))));
    var_0 = reverseBits(vec3<u32>(35865u, 1u, 0u));
    var var_2 = -1200f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(-global1.d.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1076f)) + _wgslsmith_f_op_f32(global1.c - 946f))), _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, global0.c.x)), func_2(), Struct_2(global1.a, global1.b, -598f, global1.b, global0.d.x), vec3<f32>(-1601f, global1.b.c.x, -249f)).d.c.x - _wgslsmith_f_op_f32(-global1.d.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-669f + _wgslsmith_f_op_f32(global0.c.x + global0.c.x)))), abs(_wgslsmith_add_vec3_u32(vec3<u32>(func_5(vec2<f32>(-1063f, -198f), Struct_2(vec3<f32>(global1.c, 462f, 1580f), global1.d, global1.d.c.x, Struct_1(18496u, u_input.a.x, global1.d.c, global0.d, 33738u), false), Struct_2(vec3<f32>(1216f, global1.d.c.x, -754f), Struct_1(8620u, global1.b.b, global1.a.zy, vec2<bool>(false, global1.b.d.x), global0.a), 1000f, global1.b, false), vec3<f32>(global0.c.x, -235f, global0.c.x)).d.a, u_input.a.x >> (u_input.a.x % 32u), _wgslsmith_mult_u32(0u, 58802u)), ~(~vec3<u32>(global1.b.b, u_input.a.x, u_input.a.x)))), max(1u, 4294967295u), (firstTrailingBit(30672u) ^ ~global1.d.e) ^ select(~_wgslsmith_dot_vec2_u32(u_input.a.zx, u_input.a.zy), _wgslsmith_mod_u32(func_5(global1.a.zx, Struct_2(global1.a, global1.b, global1.c, global1.d, true), Struct_2(vec3<f32>(global0.c.x, global1.c, global1.d.c.x), Struct_1(u_input.a.x, u_input.a.x, global1.d.c, vec2<bool>(false, true), 27748u), 474f, Struct_1(30313u, 0u, global0.c, global1.d.d, global0.e), global1.b.d.x), global1.a).b.e, 81828u), true));
}

