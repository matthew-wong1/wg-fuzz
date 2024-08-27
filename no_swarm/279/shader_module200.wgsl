struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: u32,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(151f);

var<private> global1: vec3<f32> = vec3<f32>(1000f, 342f, 233f);

var<private> global2: array<f32, 4> = array<f32, 4>(1220f, -919f, -1388f, -264f);

var<private> global3: bool = false;

var<private> global4: array<vec3<f32>, 32>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<i32>) -> vec4<bool> {
    let var_0 = u_input.d;
    global4 = array<vec3<f32>, 32>();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d, 0u), 1u)];
    let var_2 = Struct_3(abs(_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(u_input.d, u_input.d)), vec2<u32>(1u, 1u)) | _wgslsmith_add_vec2_u32(vec2<u32>(var_0, 0u) ^ vec2<u32>(var_0, u_input.d), vec2<u32>(6555u, u_input.d))), Struct_2(874f, _wgslsmith_f_op_f32(exp2(global1.x)), Struct_1(vec4<bool>(true, arg_0.x, all(vec4<bool>(arg_0.x, arg_0.x, false, true)), arg_0.x))), vec2<i32>(arg_1.x, -_wgslsmith_mult_i32(arg_1.x & -1i, _wgslsmith_mod_i32(u_input.e.x, -2147483647i))), Struct_1(!select(!vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), select(vec4<bool>(arg_0.x, true, true, arg_0.x), vec4<bool>(arg_0.x, true, true, arg_0.x), arg_0.x), select(vec4<bool>(arg_0.x, false, false, true), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), false))));
    let var_3 = Struct_1(!(!vec4<bool>(!var_2.d.a.x, false, var_2.d.a.x | var_2.d.a.x, arg_0.x)));
    return !select(vec4<bool>(any(vec3<bool>(false, true, false)), arg_0.x, var_2.d.a.x, var_3.a.x), select(select(vec4<bool>(false, true, arg_0.x, var_3.a.x), vec4<bool>(true, arg_0.x, arg_0.x, false), !arg_0.x), var_2.b.c.a, false), select(!var_2.b.c.a.x, 364f == _wgslsmith_f_op_f32(-global1.x), any(arg_0)));
}

fn func_2() -> vec4<u32> {
    let var_0 = all(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false)), func_3(vec2<bool>(true, false), u_input.a.yzy), select(false, true, false)), vec4<bool>(-2147483647i == u_input.b.x, true, false, select(false, true, false)), vec4<bool>(all(vec2<bool>(true, false)), true, func_3(vec2<bool>(true, false), u_input.b).x, true))) && false;
    global4 = array<vec3<f32>, 32>();
    global1 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2543f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(975f, 448f, true)), _wgslsmith_f_op_f32(global1.x - 487f), true))), _wgslsmith_f_op_f32(-1000f - 1807f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.x * global2[_wgslsmith_index_u32(u_input.d ^ ~u_input.d, 4u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~4294967295u, 1u)])))));
    let var_1 = Struct_4(vec2<bool>(var_0, func_3(!vec2<bool>(var_0, false), vec3<i32>(firstLeadingBit(-3060i), -u_input.b.x, u_input.e.x)).x), Struct_3(countOneBits(vec2<u32>(u_input.d, countOneBits(127531u))), Struct_2(_wgslsmith_f_op_f32(round(-164f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(u_input.d, 4u)], global2[_wgslsmith_index_u32(u_input.d, 4u)]))), Struct_1(vec4<bool>(true, true, true, true))), select(u_input.e.xy, _wgslsmith_mult_vec2_i32(vec2<i32>(-49263i, u_input.c), ~u_input.e.zx), !(!vec2<bool>(true, var_0))), Struct_1(vec4<bool>(u_input.c > 1i, !var_0, !var_0, true))), u_input.d, Struct_1(vec4<bool>(any(!vec2<bool>(var_0, var_0)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 1u)] - 2073f) == _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(1u, 1u)])), true, all(vec4<bool>(true, var_0, false, var_0)))), u_input.b.xy);
    global0 = array<f32, 1>();
    return ~vec4<u32>(_wgslsmith_mod_u32(u_input.d, ~(0u & u_input.d)), var_1.c, u_input.d, _wgslsmith_add_u32(_wgslsmith_sub_u32(~26426u, max(1u, u_input.d)), 4294967295u));
}

fn func_4(arg_0: vec4<u32>) -> Struct_1 {
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 1u)] - global0[_wgslsmith_index_u32(arg_0.x, 1u)]), _wgslsmith_f_op_f32(select(-307f, -1486f, true)), -342f))), global4[_wgslsmith_index_u32(firstLeadingBit(u_input.d), 32u)]);
    let var_0 = u_input.e.x & ~_wgslsmith_mod_i32(_wgslsmith_clamp_i32(reverseBits(u_input.c), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.c, u_input.e.x, u_input.e.x), u_input.a)), ~_wgslsmith_div_i32(u_input.b.x, u_input.e.x));
    let var_1 = Struct_3(~(vec2<u32>(arg_0.x, 1u) << (vec2<u32>(u_input.d, arg_0.x) % vec2<u32>(32u))) >> ((vec2<u32>(arg_0.x, firstTrailingBit(arg_0.x)) ^ firstTrailingBit(vec2<u32>(u_input.d, 1u))) % vec2<u32>(32u)), Struct_2(global2[_wgslsmith_index_u32(u_input.d, 4u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global2[_wgslsmith_index_u32(u_input.d, 4u)])) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-991f * global2[_wgslsmith_index_u32(60824u, 4u)]), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(arg_0.x, 1u)], 1051f)))), Struct_1(vec4<bool>(func_3(vec2<bool>(true, true), vec3<i32>(var_0, -2147483647i, -65097i)).x, any(vec2<bool>(false, false)), true, true))), u_input.a.yy | (firstTrailingBit(firstLeadingBit(u_input.b.xx)) & ~vec2<i32>(-1i, var_0)), Struct_1(vec4<bool>(true, true, true, true)));
    global2 = array<f32, 4>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d, 1u)] + global2[_wgslsmith_index_u32(78714u, 4u)]))), global1.x));
    return var_1.b.c;
}

fn func_1() -> Struct_1 {
    global2 = array<f32, 4>();
    var var_0 = 844f;
    let var_1 = func_4(max(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.d), ~vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.d)), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, u_input.d, 16355u, u_input.d), vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d)))) >> (~func_2() % vec4<u32>(32u)));
    let var_2 = !var_1.a;
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(global4[_wgslsmith_index_u32(0u, 32u)], _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, 2232f, 1937f), _wgslsmith_f_op_vec3_f32(floor(global4[_wgslsmith_index_u32(64524u, 32u)]))))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(u_input.d, 32u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(174f, global0[_wgslsmith_index_u32(4294967295u, 1u)], global1.x) - vec3<f32>(global1.x, 161f, global2[_wgslsmith_index_u32(u_input.d, 4u)])))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.d, 1u)], 214f, -2056f)))) - vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(7871u, 1u)]), global2[_wgslsmith_index_u32(u_input.d, 4u)], _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(8328u, 4u)]))))));
    return func_4(vec4<u32>(_wgslsmith_div_u32(u_input.d, u_input.d), ~(~(~5452u)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.d), vec2<u32>(8405u, _wgslsmith_mult_u32(0u, 4294967295u))), u_input.d));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_1) -> u32 {
    global0 = array<f32, 1>();
    global4 = array<vec3<f32>, 32>();
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~(arg_2.xz ^ arg_2.xz), arg_2.yy << ((arg_2.zx & vec2<u32>(1u, 29215u)) % vec2<u32>(32u))), ~arg_2.yy), 4u)], -1366f, arg_3);
    let var_1 = select(vec4<u32>(arg_1, ~17258u, 16283u, func_2().x), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, 0u, 6180u, arg_2.x) | reverseBits(vec4<u32>(arg_2.x, arg_1, arg_2.x, 0u)), min(vec4<u32>(u_input.d, arg_1, u_input.d, 13641u), ~vec4<u32>(arg_1, arg_2.x, arg_2.x, arg_2.x))), vec4<u32>(_wgslsmith_div_u32(~u_input.d, u_input.d), arg_2.x, _wgslsmith_mod_u32(arg_2.x, 836u) & func_2().x, _wgslsmith_mod_u32(~arg_2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.d, 1u), arg_2)))), select(func_1().a, arg_0.c.a, !var_0.c.a));
    global1 = _wgslsmith_f_op_vec3_f32(trunc(global4[_wgslsmith_index_u32(var_1.x, 32u)]));
    return ~(abs(_wgslsmith_mod_u32(func_2().x, 46134u)) << (11268u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(vec2<bool>(all(!select(vec2<bool>(false, false), vec2<bool>(true, false), false)), true), Struct_3(vec2<u32>(func_5(Struct_2(-1000f, -1000f, Struct_1(vec4<bool>(true, false, true, false))), ~u_input.d, vec3<u32>(u_input.d, 16681u, 51802u) ^ vec3<u32>(u_input.d, 60874u, 0u), func_1()), func_5(Struct_2(-318f, global1.x, Struct_1(vec4<bool>(true, false, true, false))), u_input.d, vec3<u32>(0u, u_input.d, u_input.d), func_1())), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -148f) - global1.x), Struct_1(vec4<bool>(true, true, true, true))), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(11617i, 2147483647i), vec2<i32>(7635i, -14427i), true), _wgslsmith_mult_vec2_i32(u_input.e.zz, u_input.b.yx), ~u_input.e.xx) ^ _wgslsmith_add_vec2_i32(u_input.b.yx, vec2<i32>(u_input.c, u_input.b.x)), Struct_1(vec4<bool>(any(vec4<bool>(false, true, true, true)), false, func_4(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d)).a.x, true))), _wgslsmith_add_u32(17614u, _wgslsmith_clamp_u32(u_input.d, _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.d, u_input.d), u_input.d), _wgslsmith_sub_u32(41381u, firstTrailingBit(1u)))), Struct_1(vec4<bool>(true, _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(92904u, 4u)])) >= _wgslsmith_f_op_f32(-global1.x), true, true)), ~abs(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), u_input.a.wz), -u_input.e.yz, u_input.b.yx)));
    global0 = array<f32, 1>();
    var var_1 = !(func_4(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b.a.x, 0u, var_0.c, 0u), vec4<u32>(u_input.d, 7150u, 57738u, var_0.c)), ~vec4<u32>(u_input.d, var_0.b.a.x, 4452u, u_input.d))).a.x & var_0.d.a.x);
    var_1 = !(!(!any(var_0.b.b.c.a.xyy)));
    var_1 = all(vec4<bool>(true, !var_0.b.b.c.a.x, true, true));
    let var_2 = var_0.b.a;
    var var_3 = var_0.b.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(-max(u_input.c, 2147483647i), var_0.b.c.x, abs(var_0.e.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0.b.c.x, var_0.e.x), vec3<i32>(-2147483647i, -41579i, -284i)))), var_0.c);
}

