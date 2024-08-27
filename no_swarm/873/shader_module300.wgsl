struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 11>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(666f, 257f, 2104f)) + vec3<f32>(1888f, -202f, -358f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1609f, -541f, 290f), vec3<f32>(-974f, -154f, 497f))))) - vec3<f32>(_wgslsmith_f_op_f32(-1157f * 467f), _wgslsmith_f_op_f32(step(1103f, 1127f)), _wgslsmith_div_f32(1000f, -859f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, 643f, 278f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1288f), 1f, -867f)))), true));
    let var_1 = vec4<bool>((min(~3673i, 1i) >= u_input.a.x) && true, select(true, -230f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-827f)) * -364f), any(vec3<bool>(true, true, true))), any(global0[_wgslsmith_index_u32(countOneBits(select(~u_input.c.x, u_input.c.x, true)), 11u)]), any(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true))) && any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), true)));
    let var_2 = _wgslsmith_add_u32(u_input.c.x, ~((_wgslsmith_sub_u32(u_input.c.x, u_input.c.x) & 1u) | u_input.c.x));
    let var_3 = _wgslsmith_f_op_f32(step(189f, -1146f));
    var var_4 = var_1.xzz;
    return (!(1000f <= _wgslsmith_f_op_f32(var_0.x + 566f)) && all(var_1.wwx)) | var_4.x;
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = select(!vec3<bool>(~17811u <= (32935u & u_input.c.x), true, any(vec4<bool>(true, true, true, true))), !(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(false, false, false), true)), select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), vec3<bool>(true, func_3() | true, func_3())));
    var var_1 = 1i;
    let var_2 = ~_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(select(vec2<u32>(arg_3.c.x, 44695u), arg_3.c, vec2<bool>(true, false)) ^ ~arg_3.c, ~_wgslsmith_mod_vec2_u32(u_input.c, arg_3.c)), ~firstTrailingBit(max(u_input.c, vec2<u32>(0u, 1u))));
    var_1 = max(_wgslsmith_dot_vec3_i32(arg_3.b, _wgslsmith_clamp_vec3_i32(arg_3.d.ywy, vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -21686i, 31499i), vec3<i32>(arg_3.a, -2147483647i, 45366i)), arg_0, ~(-22600i)), select(-vec3<i32>(-1i, -1i, -27018i), -arg_3.e, all(global0[_wgslsmith_index_u32(46533u, 11u)])))), -368i);
    let var_3 = Struct_2(-_wgslsmith_clamp_i32(-8209i, _wgslsmith_dot_vec3_i32(vec3<i32>(-35316i, arg_1.b.x, arg_2), select(vec3<i32>(-6499i, 1i, 31280i), vec3<i32>(1i, u_input.a.x, -14373i), var_0)), ~(i32(-1i) * -2147483647i)), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(arg_3.e.zx, abs(vec2<i32>(arg_2, -19567i))), vec2<i32>(1129i, _wgslsmith_mult_i32(_wgslsmith_div_i32(arg_3.b.x, -9300i), _wgslsmith_mod_i32(arg_0, arg_2)))));
    return select(select(!vec3<bool>(func_3(), var_0.x, true), select(var_0, select(vec3<bool>(var_0.x, var_0.x, var_0.x), !var_0, true), var_0), var_0.x), var_0, var_0.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: u32) -> vec3<bool> {
    let var_0 = arg_0.zy;
    var var_1 = -99448i;
    var_1 = -23345i;
    global0 = array<vec4<bool>, 11>();
    var var_2 = Struct_2((-u_input.a.x & -21674i) ^ ~_wgslsmith_div_i32(1i, u_input.a.x), -_wgslsmith_mult_vec2_i32(-firstTrailingBit(u_input.a.ww), vec2<i32>(max(u_input.b, u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-36428i, -12719i, u_input.a.x, -5797i), vec4<i32>(u_input.b, -32185i, u_input.b, 0i)))));
    return arg_0;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: bool) -> vec3<bool> {
    return !select(func_4(select(func_2(47753i, Struct_2(-1i, vec2<i32>(u_input.b, u_input.b)), arg_1, Struct_1(arg_1, vec3<i32>(4981i, u_input.a.x, u_input.a.x), vec2<u32>(u_input.c.x, 1u), vec4<i32>(32246i, arg_1, u_input.b, u_input.b), u_input.a.wzz)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, arg_2), false), func_3()), u_input.c.x), vec3<bool>(true, true, true), arg_2);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    return Struct_2(0i, ~(~countOneBits(-arg_0.b.xy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    global0 = array<vec4<bool>, 11>();
    global0 = array<vec4<bool>, 11>();
    let var_1 = vec2<i32>(u_input.b, u_input.a.x);
    var var_2 = Struct_2(-2147483647i, u_input.a.zz);
    var var_3 = func_5(Struct_1(10005i, select(u_input.a.xwz, u_input.a.zxz, !func_1(-1297f, 0i, false)), vec2<u32>(~countOneBits(0u), ~(~u_input.c.x)), countOneBits(-u_input.a << (vec4<u32>(9703u, 4294967295u, 1u, var_0) % vec4<u32>(32u))), _wgslsmith_clamp_vec3_i32(reverseBits(-vec3<i32>(0i, var_1.x, -2147483647i)), vec3<i32>(-1i, -16241i, u_input.b >> (u_input.c.x % 32u)), u_input.a.xxy)), Struct_1(u_input.b, select(min(~u_input.a.zxy, _wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, var_2.a, u_input.b), vec3<i32>(-55094i, var_1.x, 27087i))), vec3<i32>(~u_input.a.x, 4660i, 19354i), func_1(_wgslsmith_f_op_f32(sign(429f)), u_input.b, true).x), u_input.c, _wgslsmith_mod_vec4_i32(~u_input.a & (u_input.a << (vec4<u32>(4294967295u, u_input.c.x, var_0, 13443u) % vec4<u32>(32u))), ~u_input.a), u_input.a.xyx));
    var_2 = Struct_2(select(_wgslsmith_div_i32(countOneBits(45229i), var_3.a) >> (13896u % 32u), 1i, all(select(select(global0[_wgslsmith_index_u32(4294967295u, 11u)], vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), !global0[_wgslsmith_index_u32(u_input.c.x, 11u)]))), var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(~1u, _wgslsmith_f_op_f32(-987f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-172f, -2433f))))));
}

