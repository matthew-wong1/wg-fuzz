struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: f32, arg_3: vec3<bool>) -> vec3<f32> {
    var var_0 = Struct_3(Struct_2(arg_0 | !arg_0, _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(0i, arg_1), -arg_1, firstLeadingBit(u_input.d), arg_1), firstTrailingBit(vec4<i32>(arg_1, 13287i, 2147483647i, 18871i))), Struct_1(u_input.c, false && any(vec4<bool>(arg_0, arg_0, false, false)), select(select(arg_3.xz, vec2<bool>(arg_0, arg_0), arg_3.x), select(arg_3.zx, vec2<bool>(arg_3.x, false), false), !arg_3.yx), _wgslsmith_add_vec2_i32(u_input.e.xz, vec2<i32>(u_input.d, -1i)), select(vec2<u32>(u_input.b, 0u), vec2<u32>(37306u, 4294967295u), arg_0) << ((vec2<u32>(u_input.b, u_input.c) >> (vec2<u32>(3261u, u_input.c) % vec2<u32>(32u))) % vec2<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -209f), 1040f)), _wgslsmith_f_op_f32(-arg_2))), Struct_2(any(select(select(global0[_wgslsmith_index_u32(116082u, 10u)], vec3<bool>(arg_3.x, true, arg_0), true), vec3<bool>(arg_3.x, true, arg_0), arg_3.x)), vec4<i32>(min(5997i << (u_input.c % 32u), arg_1 & arg_1), -1i, 0i, -1i), Struct_1(4294967295u, false, arg_3.yy, ~u_input.e.xx, ~vec2<u32>(u_input.c, 0u) >> (vec2<u32>(82969u, u_input.c) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-880f, arg_2))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2, arg_2), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1531f, 809f)))), arg_3.zx))));
    global0 = array<vec3<bool>, 10>();
    let var_1 = ~_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 22215u, var_0.a.c.e.x, 5514u), vec4<u32>(var_0.a.c.e.x, 18572u, 1u, 1u)), ~var_0.b.c.e.x), vec4<u32>(max(u_input.c, var_0.a.c.a), _wgslsmith_dot_vec3_u32(select(vec3<u32>(var_0.a.c.e.x, 0u, u_input.c), vec3<u32>(28693u, u_input.b, u_input.c), vec3<bool>(arg_3.x, false, var_0.b.c.c.x)), vec3<u32>(u_input.b, 21526u, 4294967295u)), ~4294967295u >> (~u_input.b % 32u), reverseBits(1u)));
    var var_2 = select(~(vec2<i32>(2147483647i, -1i) & _wgslsmith_div_vec2_i32(var_0.a.b.zx, u_input.e.xy)) ^ ~_wgslsmith_clamp_vec2_i32(-u_input.e.yy, max(var_0.a.b.wx, u_input.e.zx), vec2<i32>(69076i, -36119i) | vec2<i32>(var_0.b.b.x, -1i)), var_0.b.c.d, select(vec2<bool>(var_0.b.a, arg_3.x), var_0.b.c.c, false));
    var_0 = Struct_3(var_0.a, var_0.a);
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.d.x, arg_2, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_0.b.d.x)), _wgslsmith_f_op_f32(-arg_2), !arg_3.x)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1312f, arg_2, 1535f), vec3<f32>(var_0.a.d.x, arg_2, var_0.b.d.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.d.x, var_0.b.d.x, -548f))))))));
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> Struct_4 {
    global0 = array<vec3<bool>, 10>();
    var var_0 = Struct_2(true || (min(firstLeadingBit(11295u), u_input.b) < _wgslsmith_mod_u32(~u_input.c, arg_1.a.c.a)), vec4<i32>(i32(-1i) * -1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(select(arg_1.b.b.zyx, u_input.e, false), countOneBits(vec3<i32>(u_input.d, -1i, -25810i))), -2147483647i), 9766i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, u_input.d, arg_1.a.b.x, u_input.d), arg_1.b.b), _wgslsmith_mult_vec4_i32(arg_1.a.b, arg_1.b.b)), u_input.a)), arg_1.b.c, _wgslsmith_f_op_vec2_f32(-arg_1.a.d));
    global0 = array<vec3<bool>, 10>();
    let var_1 = select(!select(vec4<bool>(!var_0.c.c.x, all(vec4<bool>(arg_1.a.a, true, true, var_0.a)), any(var_0.c.c), var_0.c.b), select(vec4<bool>(arg_1.b.c.b, true, false, arg_0), vec4<bool>(var_0.a, arg_0, false, true), select(vec4<bool>(arg_0, true, true, false), vec4<bool>(arg_1.b.a, true, arg_1.a.a, arg_1.a.a), true)), vec4<bool>(any(arg_1.a.c.c), !var_0.c.b, any(global0[_wgslsmith_index_u32(1316u, 10u)]), arg_0)), !select(vec4<bool>(true, select(false, true, true), any(vec4<bool>(var_0.c.b, true, false, arg_1.b.a)), !arg_1.a.a), !(!vec4<bool>(var_0.a, true, arg_0, true)), vec4<bool>(var_0.d.x >= 769f, var_0.c.b, false, false && arg_0)), false);
    var_0 = arg_1.a;
    return Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(var_1.x, -_wgslsmith_mod_i32(-1i, -52400i), -124f, !var_1.xww))), (var_0.b.yxz ^ reverseBits(u_input.e << (vec3<u32>(arg_1.b.c.e.x, 4294967295u, u_input.b) % vec3<u32>(32u)))) >> (vec3<u32>(~(u_input.c ^ u_input.b), _wgslsmith_clamp_u32(~1u, abs(arg_1.b.c.e.x), arg_1.a.c.e.x), 0u) % vec3<u32>(32u)), true);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>) -> f32 {
    var var_0 = func_2(false, Struct_3(Struct_2(any(!vec4<bool>(true, false, arg_1.a, false)), _wgslsmith_div_vec4_i32(arg_1.b, -arg_1.b), arg_1.c, arg_1.d), arg_1));
    let var_1 = 0i;
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_f_op_vec3_f32(round(func_2(true, Struct_3(Struct_2(var_0.c, vec4<i32>(0i, 45233i, 27648i, -10945i), Struct_1(56266u, arg_1.c.c.x, arg_0.c, var_0.b.zx, vec2<u32>(1047u, arg_2.x)), vec2<f32>(var_0.a.x, arg_1.d.x)), Struct_2(false, vec4<i32>(u_input.d, 1i, -7184i, -38697i), arg_0, vec2<f32>(-202f, 859f)))).a))), var_0.a), var_0.a));
    var var_3 = arg_1.a;
    global0 = array<vec3<bool>, 10>();
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(all(vec3<bool>(true, false, all(vec2<bool>(false, false)) & false)), (min(vec4<i32>(u_input.e.x, u_input.d, u_input.a, 23895i) >> (vec4<u32>(u_input.c, 4294967295u, 61523u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e.x, 1i, u_input.a, 0i), vec4<i32>(-60048i, -2147483647i, -79506i, 41392i))) ^ _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.e.x, u_input.e.x, -47955i, u_input.a), ~vec4<i32>(u_input.e.x, u_input.a, -2147483647i, -6086i))) << (select(countOneBits(~vec4<u32>(9308u, u_input.c, u_input.b, u_input.c)), vec4<u32>(_wgslsmith_mod_u32(u_input.b, 0u), u_input.c, 1u, 1u), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))) % vec4<u32>(32u)), Struct_1(~_wgslsmith_add_u32(u_input.c, u_input.c) >> (4300u % 32u), true, vec2<bool>(true, true), select(u_input.e.yx, u_input.e.yx, true || all(vec4<bool>(true, false, false, false))), max(countOneBits(vec2<u32>(u_input.b, 0u)), abs(vec2<u32>(u_input.b, 0u))) & ~abs(vec2<u32>(u_input.b, u_input.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(Struct_1(u_input.c, true, vec2<bool>(false, true), u_input.e.xz, vec2<u32>(0u, u_input.b)), Struct_2(false, vec4<i32>(u_input.d, u_input.a, u_input.d, -1i), Struct_1(1u, true, vec2<bool>(true, true), vec2<i32>(u_input.d, u_input.a), vec2<u32>(107767u, u_input.b)), vec2<f32>(1000f, -174f)), vec3<u32>(u_input.b, 4294967295u, 1u)))))) + vec2<f32>(1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-499f - -1474f), -178f)))));
    var var_1 = 873f;
    let var_2 = func_2(var_0.a || (~_wgslsmith_dot_vec2_u32(var_0.c.e, var_0.c.e) <= countOneBits(min(0u, 1u))), Struct_3(Struct_2(var_0.c.c.x, vec4<i32>(-40678i ^ var_0.b.x, -1i, _wgslsmith_div_i32(u_input.d, u_input.a), 1i), var_0.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, var_0.d.x) - var_0.d)), Struct_2(true, var_0.b, Struct_1(~1u, var_0.d.x <= var_0.d.x, var_0.c.c, vec2<i32>(-28912i, u_input.d), vec2<u32>(var_0.c.e.x, 17749u)), _wgslsmith_f_op_vec2_f32(abs(var_0.d)))));
    let var_3 = Struct_1(select(0u, ~4294967295u, false), !((-491f == var_2.a.x) || true) & var_0.a, vec2<bool>(true, true), -var_0.b.wz, vec2<u32>(var_0.c.e.x, _wgslsmith_dot_vec2_u32(~var_0.c.e | ~var_0.c.e, min(vec2<u32>(21406u, var_0.c.a), var_0.c.e) & var_0.c.e)));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(478f * 296f))), var_2.a.x, -536f, _wgslsmith_f_op_f32(exp2(var_0.d.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.a.x, -1695f, 255f, var_0.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(var_0.c.e.x, (4294967295u & firstTrailingBit(var_3.a)) | var_0.c.e.x, false || func_2(true, Struct_3(Struct_2(true, vec4<i32>(5032i, -89501i, u_input.d, u_input.e.x), var_0.c, vec2<f32>(410f, 981f)), Struct_2(true, var_0.b, Struct_1(4294967295u, var_3.b, vec2<bool>(var_3.c.x, true), vec2<i32>(u_input.e.x, 51148i), var_0.c.e), var_2.a.xx))).c), reverseBits(vec4<u32>(~92505u, 11825u, abs(u_input.b), 77875u)));
}

