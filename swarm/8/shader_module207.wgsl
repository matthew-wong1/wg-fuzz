struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(0i, vec3<bool>(true, false, false), vec3<bool>(false, false, true)), Struct_4(29941i, vec3<bool>(true, true, true), vec3<bool>(false, true, false)), Struct_4(22873i, vec3<bool>(true, true, false), vec3<bool>(false, false, true)), Struct_4(-45373i, vec3<bool>(false, false, false), vec3<bool>(true, false, true)), Struct_4(-53954i, vec3<bool>(false, false, true), vec3<bool>(false, true, true)), Struct_4(13880i, vec3<bool>(false, true, false), vec3<bool>(true, true, false)), Struct_4(2147483647i, vec3<bool>(false, false, false), vec3<bool>(false, true, true)), Struct_4(-7624i, vec3<bool>(true, true, false), vec3<bool>(false, true, false)), Struct_4(0i, vec3<bool>(true, true, true), vec3<bool>(false, true, true)), Struct_4(-1676i, vec3<bool>(false, false, false), vec3<bool>(true, false, true)), Struct_4(i32(-2147483648), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), Struct_4(-22461i, vec3<bool>(true, false, true), vec3<bool>(true, true, true)), Struct_4(i32(-2147483648), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), Struct_4(1i, vec3<bool>(true, false, true), vec3<bool>(false, false, true)));

var<private> global1: array<vec2<i32>, 25>;

var<private> global2: array<Struct_3, 32>;

var<private> global3: array<bool, 5>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    global2 = array<Struct_3, 32>();
    global3 = array<bool, 5>();
    global0 = array<Struct_4, 14>();
    global2 = array<Struct_3, 32>();
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(190f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(2331f)), _wgslsmith_f_op_f32(1103f + 386f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1344f, 264f, any(vec4<bool>(true, global3[_wgslsmith_index_u32(33893u, 5u)], global3[_wgslsmith_index_u32(4294967295u, 5u)], arg_0.a))))))));
    return arg_0;
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec2<u32>) -> vec2<f32> {
    let var_0 = true;
    global0 = array<Struct_4, 14>();
    var var_1 = -6022i;
    global1 = array<vec2<i32>, 25>();
    var var_2 = !(any(select(vec4<bool>(true, arg_0, global3[_wgslsmith_index_u32(arg_2.x, 5u)], arg_1.a), !vec4<bool>(false, arg_1.a, false, true), all(vec4<bool>(global3[_wgslsmith_index_u32(arg_2.x, 5u)], false, arg_0, true)))) & true);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-1127f)), -2878f));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> f32 {
    let var_0 = -1232i;
    let var_1 = ~(~select(~(~arg_1.d), firstLeadingBit(arg_1.d), select(vec3<bool>(global3[_wgslsmith_index_u32(61719u, 5u)], global3[_wgslsmith_index_u32(u_input.a, 5u)], true), select(vec3<bool>(false, false, true), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 5u)], true, true), global3[_wgslsmith_index_u32(1u, 5u)]), !vec3<bool>(global3[_wgslsmith_index_u32(arg_0, 5u)], false, true))));
    let var_2 = (true & global3[_wgslsmith_index_u32(u_input.d, 5u)]) & all(vec4<bool>(global3[_wgslsmith_index_u32(~(var_1.x ^ 0u), 5u)], select(true, true, arg_2), select(arg_2, false, true) || (-1972f < arg_1.c.x), global3[_wgslsmith_index_u32(~(~arg_0), 5u)]));
    let var_3 = Struct_4(max(-38585i, var_0 ^ abs(arg_3)), select(vec3<bool>(true, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(arg_1.d.zy, var_1.yy), select(arg_1.d.zx, var_1.zx, vec2<bool>(arg_2, global3[_wgslsmith_index_u32(var_1.x, 5u)]))), 5u)], true), vec3<bool>(global3[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(u_input.a, 0u)), 5u)], true, global3[_wgslsmith_index_u32(arg_1.d.x, 5u)]), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 5u)], false), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 5u)], false, global3[_wgslsmith_index_u32(var_1.x, 5u)])), select(vec3<bool>(false, var_2, global3[_wgslsmith_index_u32(0u, 5u)]), vec3<bool>(var_2, true, var_2), vec3<bool>(true, global3[_wgslsmith_index_u32(1u, 5u)], false)), global3[_wgslsmith_index_u32(arg_1.d.x, 5u)])), vec3<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(769f - -106f) + _wgslsmith_f_op_f32(f32(-1f) * -506f)) >= arg_1.c.x, !(!(var_2 || global3[_wgslsmith_index_u32(1u, 5u)]))));
    global2 = array<Struct_3, 32>();
    return -1799f;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2492f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(416f)), -420f))))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(0u, Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(53656i, 2147483647i, u_input.b.x, 22931i), vec4<i32>(18983i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.e, 64113i, u_input.b.x, u_input.c)), -218f, _wgslsmith_f_op_vec2_f32(func_3(true, Struct_2(global3[_wgslsmith_index_u32(0u, 5u)]), vec2<u32>(49403u, arg_1.x))), vec3<u32>(arg_1.x, 1u, 112489u)), false, firstLeadingBit(u_input.e))));
    var var_1 = -vec3<i32>(i32(-1i) * -u_input.e, u_input.c, firstTrailingBit(firstTrailingBit(-41862i)));
    let var_2 = any(vec4<bool>(abs(_wgslsmith_mod_u32(arg_1.x, 1u)) < 67780u, true, arg_0.a, true));
    let var_3 = -903f;
    global0 = array<Struct_4, 14>();
    return Struct_2(false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(min(~max(vec4<i32>(u_input.e, -18620i, -1i, u_input.b.x), vec4<i32>(-9869i, u_input.e, -1i, u_input.c)) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 4294967295u, 0u, 0u), ~vec4<u32>(u_input.a, 4218u, 1u, u_input.a)) % vec4<u32>(32u)), ~(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 21203i, 2147483647i, 0i), vec4<i32>(u_input.b.x, u_input.b.x, -21059i, u_input.c)) >> ((vec4<u32>(u_input.a, u_input.a, u_input.d, 12136u) & vec4<u32>(0u, 4294967295u, u_input.a, 8021u)) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -840f)))) + _wgslsmith_f_op_f32(floor(136f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-854f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-531f + 653f)))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a << (64138u % 32u), u_input.d, u_input.a), vec3<u32>(~u_input.d, select(~73602u, u_input.a, true), u_input.a >> (1u % 32u))));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.b)) - -1108f), 762f, true));
    let var_2 = u_input.a & _wgslsmith_mult_u32(~(var_0.d.x >> (1u % 32u)) & ~36442u, var_0.d.x | 4482u);
    let var_3 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.c, _wgslsmith_mult_i32(var_0.a.x, -1i), 1i, ~u_input.b.x), -vec4<i32>(-1i, u_input.b.x, u_input.b.x, 0i) ^ ~var_0.a) & -_wgslsmith_mult_vec4_i32(~var_0.a, vec4<i32>(_wgslsmith_add_i32(u_input.e, 1i), -var_0.a.x, 2147483647i, 0i));
    let var_4 = func_2(func_1(Struct_2(select(any(vec3<bool>(false, true, false)), false, global3[_wgslsmith_index_u32(var_2, 5u)]))), select(var_0.d.yx, var_0.d.zx, vec2<bool>(true, true)) ^ max(firstLeadingBit(vec2<u32>(u_input.a, var_2)), vec2<u32>(var_0.d.x, _wgslsmith_add_u32(var_0.d.x, 65964u))));
    global0 = array<Struct_4, 14>();
    var var_5 = vec2<bool>(true, var_4.a);
    global2 = array<Struct_3, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.x, reverseBits(-countOneBits(59725i << (var_0.d.x % 32u))), reverseBits(~vec2<u32>(~38376u, var_0.d.x ^ 9072u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 - var_0.c.x), _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))), var_0.a.x);
}

