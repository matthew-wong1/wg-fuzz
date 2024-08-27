struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
    d: bool,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: i32;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<bool>, arg_3: vec4<i32>) -> u32 {
    let var_0 = vec2<i32>(_wgslsmith_mod_i32(select(_wgslsmith_dot_vec4_i32(arg_3, vec4<i32>(0i, -41538i, arg_3.x, 2147483647i)), 0i, arg_1.x), abs(~(-2147483647i))), _wgslsmith_div_i32(firstLeadingBit(-2147483647i), _wgslsmith_div_i32(-arg_3.x, ~19539i))) ^ arg_3.zz;
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    let var_1 = u_input.b.x;
    let var_2 = !(!vec3<bool>(true, arg_1.x, all(vec2<bool>(false, arg_1.x))));
    return u_input.b.x;
}

fn func_3(arg_0: vec2<f32>) -> vec3<i32> {
    var var_0 = min(vec3<u32>(u_input.c.x, min(~4294967295u, u_input.a), u_input.a) ^ vec3<u32>(min(reverseBits(5390u), 52232u), min(_wgslsmith_div_u32(u_input.b.x, 59046u), 48980u), _wgslsmith_add_u32(1u >> (u_input.d % 32u), ~u_input.a)), ~u_input.c | vec3<u32>(max(_wgslsmith_mod_u32(u_input.c.x, 4294967295u), u_input.d), 0u, ~10370u));
    let var_1 = Struct_1(arg_0.x, !(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))));
    var var_2 = abs(1i);
    var var_3 = Struct_3(Struct_2(~28372i & select(_wgslsmith_sub_i32(u_input.e, u_input.e), u_input.e, true), var_0.xz, Struct_1(arg_0.x, !vec3<bool>(var_1.b.x, false, var_1.b.x)), _wgslsmith_f_op_f32(min(-487f, var_1.a)) <= arg_0.x, -(countOneBits(vec3<i32>(u_input.e, u_input.e, 0i)) & _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e, 0i, -21236i), vec3<i32>(u_input.e, u_input.e, u_input.e)))), Struct_2(~2147483647i >> (_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a, var_0.x), u_input.b.x >> (var_0.x % 32u)) % 32u), vec2<u32>(~var_0.x & 1u, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(4294967295u, 50882u, var_0.x) >> (vec3<u32>(var_0.x, 0u, 1u) % vec3<u32>(32u)))), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.a - var_1.a), _wgslsmith_f_op_f32(min(-229f, var_1.a)), -1516f > var_1.a)), var_1.b), _wgslsmith_f_op_f32(step(var_1.a, arg_0.x)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-540f))), ~(-abs(vec3<i32>(-2147483647i, -2147483647i, u_input.e)))), var_1.b.x, u_input.e);
    var var_4 = var_3.a.a;
    return -var_3.b.e;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32) -> vec3<i32> {
    var var_0 = u_input.d;
    var_0 = ~func_2(_wgslsmith_sub_u32(~arg_0.x, arg_0.x), select(!vec3<bool>(arg_1.b.x, true, arg_1.b.x), vec3<bool>(any(vec2<bool>(false, true)), arg_1.b.x, true), arg_1.b.x & true), vec3<bool>(false, true, !any(vec2<bool>(true, arg_1.b.x))), ~(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e, arg_2, u_input.e, 16278i), vec4<i32>(-6034i, arg_2, 1i, -67835i))));
    let var_1 = Struct_3(Struct_2(-40324i, _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4294967295u) >> ((vec2<u32>(u_input.d, 1u) >> (arg_0.zy % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(arg_0.x ^ 0u, 25333u), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.x, 4294967295u) << (arg_0.wz % vec2<u32>(32u)), arg_0.yw >> (vec2<u32>(u_input.d, arg_0.x) % vec2<u32>(32u)))), global0[_wgslsmith_index_u32(max(1u, 36165u), 26u)], false, firstLeadingBit(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(314f, arg_1.a))))), Struct_2(_wgslsmith_div_i32(u_input.e & u_input.e, _wgslsmith_div_i32(-52906i & u_input.e, -1i)), u_input.b.xy, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(32453u, 4294967295u) | vec2<u32>(18555u, arg_0.x), u_input.b.xz), reverseBits(~arg_0.xy)), 26u)], false, _wgslsmith_mod_vec3_i32(select(-vec3<i32>(u_input.e, 27292i, u_input.e), vec3<i32>(u_input.e, -2147483647i, -2147483647i), arg_1.b.x), firstLeadingBit(-vec3<i32>(-1i, arg_2, u_input.e)))), any(select(vec4<bool>(!arg_1.b.x, arg_1.b.x, arg_1.b.x, all(vec2<bool>(arg_1.b.x, true))), select(select(vec4<bool>(arg_1.b.x, arg_1.b.x, false, arg_1.b.x), vec4<bool>(arg_1.b.x, false, false, arg_1.b.x), vec4<bool>(false, arg_1.b.x, false, arg_1.b.x)), vec4<bool>(arg_1.b.x, arg_1.b.x, false, true), select(arg_1.b.x, true, arg_1.b.x)), select(select(vec4<bool>(arg_1.b.x, true, arg_1.b.x, true), vec4<bool>(true, arg_1.b.x, arg_1.b.x, arg_1.b.x), vec4<bool>(arg_1.b.x, true, false, arg_1.b.x)), vec4<bool>(false, arg_1.b.x, arg_1.b.x, arg_1.b.x), !arg_1.b.x))), reverseBits(22782i));
    let var_2 = var_1;
    let var_3 = Struct_2(~_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-33875i, 5204i, 61649i, var_2.d) & vec4<i32>(var_2.a.a, var_1.b.e.x, u_input.e, var_1.d), vec4<i32>(2147483647i, u_input.e, 2038i, 0i)), min(_wgslsmith_div_i32(-39059i, 27698i), -u_input.e)), var_2.a.b, Struct_1(1000f, select(!select(var_1.b.c.b, var_2.a.c.b, true), !select(arg_1.b, vec3<bool>(true, var_2.b.d, arg_1.b.x), arg_1.b.x), vec3<bool>(all(var_1.b.c.b.xx), var_2.b.d, true))), arg_1.b.x, max(~vec3<i32>(_wgslsmith_mult_i32(-1i, var_2.a.a), 0i, -u_input.e), vec3<i32>(_wgslsmith_add_i32(arg_2, 57247i << (0u % 32u)), _wgslsmith_clamp_i32(27051i, 1i, 1i) & -arg_2, countOneBits(40746i))));
    return _wgslsmith_mult_vec3_i32(vec3<i32>(-var_3.a, -4458i, -(var_2.d | 36680i)) | (vec3<i32>(var_2.a.a ^ u_input.e, u_input.e | -41870i, -21693i) | var_1.a.e), func_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(433f, var_3.c.a))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2094f, -682f))), vec2<f32>(-807f, var_3.c.a)), !var_1.a.c.b.zx))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~reverseBits(u_input.e ^ 38515i) ^ ~u_input.e);
    var var_1 = _wgslsmith_div_vec3_i32(func_1(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.d, u_input.a, 4294967295u, u_input.b.x), vec4<u32>(u_input.a, 107211u, 50297u, u_input.c.x) >> (vec4<u32>(78524u, u_input.a, 0u, u_input.d) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, u_input.c.x, 116436u, 1u), vec4<u32>(u_input.a, 1u, 0u, u_input.d))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -629f), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true)), ~_wgslsmith_mod_i32(u_input.e, -42223i)), _wgslsmith_mod_vec3_i32(~vec3<i32>(1i, u_input.e, 0i), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 1i, u_input.e), vec3<i32>(u_input.e, 0i, u_input.e))) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 1u, u_input.b.x), _wgslsmith_add_vec3_u32(u_input.c, vec3<u32>(0u, 1u, u_input.b.x)), u_input.c & u_input.c) % vec3<u32>(32u))) ^ ~(-_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.e, 1i, 37322i), ~vec3<i32>(u_input.e, -2147483647i, -44105i)));
    var var_2 = Struct_2(-1080i, vec2<u32>(u_input.a, ~countOneBits(select(37202u, 0u, true))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -223f) - _wgslsmith_f_op_f32(-495f - -1103f))), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))), !(!any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))), vec3<i32>(46931i, 2147483647i, func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2135f, 1515f) + vec2<f32>(1017f, -1601f))).x << (_wgslsmith_mod_u32(u_input.d, ~u_input.b.x) % 32u)));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_div_f32(var_2.c.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.c.a + _wgslsmith_f_op_f32(ceil(var_2.c.a)))))), _wgslsmith_div_f32(var_2.c.a, var_2.c.a));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(4294967295u, ~(~u_input.d), max(select(u_input.d, 4294967295u, var_2.d), abs(1u))), ~select(select(var_2.b, vec2<u32>(u_input.c.x, var_2.b.x) & vec2<u32>(u_input.c.x, u_input.a), select(vec2<bool>(false, var_2.c.b.x), var_2.c.b.zx, var_2.c.b.yx)), select(vec2<u32>(var_2.b.x, 21304u), ~vec2<u32>(0u, u_input.c.x), true), select(vec2<bool>(true, var_2.c.b.x), !var_2.c.b.zz, true)), var_2.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1423u, 63030u, 44973u), vec4<u32>(37548u, var_2.b.x, 0u, u_input.a))), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c.x, u_input.a), u_input.b.yy), ~(var_2.b.x >> (u_input.a % 32u)), min(4294967295u, ~var_2.b.x)), abs(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.b.x, 56157u, 15185u, 4294967295u), vec4<u32>(var_2.b.x, 101061u, var_2.b.x, var_2.b.x))))));
}

