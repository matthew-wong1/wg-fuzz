struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_3 = Struct_3(Struct_1(325f, -437f, vec3<i32>(16824i, 0i, i32(-2147483648))), Struct_1(-1271f, 306f, vec3<i32>(-3190i, 1i, 30957i)), vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(-804f, -292f, vec3<i32>(1i, 2147483647i, -26961i)));

var<private> global2: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(2147483647i, 5974i, 266i, 2147483647i), vec4<i32>(-21779i, 1i, 1i, 1i), vec4<i32>(51360i, -71576i, -1i, i32(-2147483648)), vec4<i32>(-1i, -43994i, 44222i, -8685i), vec4<i32>(-7786i, 12512i, -17970i, -31151i), vec4<i32>(2147483647i, 14256i, -8743i, -1i), vec4<i32>(34894i, -13311i, 2147483647i, 2147483647i), vec4<i32>(-48995i, 0i, -39312i, 1i), vec4<i32>(-1i, 2147483647i, -28489i, i32(-2147483648)), vec4<i32>(16734i, 9615i, 0i, 1i), vec4<i32>(-35333i, -41175i, -31567i, 2147483647i), vec4<i32>(-1i, 1i, i32(-2147483648), 6457i), vec4<i32>(18355i, 75514i, -1i, 1i), vec4<i32>(2147483647i, 0i, i32(-2147483648), 1i), vec4<i32>(0i, i32(-2147483648), -1i, 67538i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: f32) -> u32 {
    var var_0 = u_input.d;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.yz, arg_0.yz, vec2<bool>(true, false))) * _wgslsmith_f_op_vec2_f32(arg_0.yx + arg_0.xz)), arg_0.xy, false)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.yw + vec2<f32>(-681f, -154f)), _wgslsmith_f_op_vec2_f32(sign(arg_0.yz)))))));
    var var_2 = global2[_wgslsmith_index_u32(~u_input.c.x, 15u)] >> (select(vec4<u32>(14580u, u_input.c.x, u_input.c.x, ~u_input.c.x), firstLeadingBit(vec4<u32>(u_input.c.x, u_input.c.x, 31091u, 1u << (u_input.c.x % 32u))), vec4<bool>(all(vec3<bool>(true, true, true)), (4294967295u == u_input.c.x) && true, true, any(vec3<bool>(true, true, true)))) % vec4<u32>(32u));
    let var_3 = -6650i;
    var var_4 = _wgslsmith_dot_vec2_u32(u_input.c << (u_input.c % vec2<u32>(32u)), reverseBits(vec2<u32>(u_input.c.x, u_input.c.x)));
    return select(4294967295u, _wgslsmith_dot_vec2_u32(u_input.c, u_input.c), any(vec3<bool>(true, -38945i <= arg_1.x, true)) | false);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> Struct_3 {
    let var_0 = ~vec4<u32>(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(875f, global0.x, arg_3.a, arg_3.a), vec4<f32>(1736f, global1.d.b, -1104f, -1393f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-365f, global0.x, global1.b.a, 706f), vec4<f32>(global0.x, -1123f, global1.a.b, global0.x), true))), global2[_wgslsmith_index_u32(u_input.c.x << (15978u % 32u), 15u)] & global2[_wgslsmith_index_u32(~1u, 15u)], -2029f), ~(~firstLeadingBit(4294967295u)), u_input.c.x, abs(arg_2));
    let var_1 = !arg_0;
    let var_2 = 1u & _wgslsmith_add_u32(1u, _wgslsmith_div_u32(arg_2, ~(~arg_2)));
    global1 = Struct_3(global1.d, global1.b, -(firstTrailingBit(arg_3.c.yy) & vec2<i32>(~(-39684i), select(-58380i, global1.a.c.x, true))), global1.a);
    var var_3 = Struct_3(arg_3, global1.d, vec2<i32>(~min(-14682i, _wgslsmith_mod_i32(u_input.b, 2147483647i)), -10984i), arg_3);
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.d.a * _wgslsmith_f_op_f32(-479f + -542f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1302f, 489f)), _wgslsmith_f_op_f32(183f + arg_3.b)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global1.b.b, 964f)))), vec3<i32>(_wgslsmith_sub_i32(0i, max(var_3.a.c.x, 34996i)), arg_3.c.x, ~countOneBits(-13632i))), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_3.b)))))), _wgslsmith_f_op_f32(455f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -311f))), arg_3.c), _wgslsmith_mult_vec2_i32(firstTrailingBit(arg_3.c.xz), ~(arg_3.c.zx << (~var_0.xx % vec2<u32>(32u)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.b + global1.b.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.a + arg_3.b))), 969f, ~var_3.a.c));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> vec2<u32> {
    let var_0 = func_2(!((abs(23973u) > u_input.c.x) == (true || arg_1.x)), !(false && arg_1.x), ~u_input.c.x, Struct_1(global1.d.a, _wgslsmith_f_op_f32(-arg_0), global1.d.c));
    let var_1 = ~_wgslsmith_mod_i32(~_wgslsmith_mod_i32(_wgslsmith_clamp_i32(2147483647i, -2147483647i, -1i), 0i & var_0.a.c.x), firstLeadingBit(_wgslsmith_div_i32(-80510i, i32(-1i) * -2147483647i)));
    let var_2 = ~vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1265u, 4294967295u, u_input.c.x), vec3<u32>(u_input.c.x, 1u, u_input.c.x)), min(~4294967295u, ~u_input.c.x)) ^ (u_input.c ^ u_input.c);
    global1 = Struct_3(global1.a, Struct_1(_wgslsmith_f_op_f32(var_0.b.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1437f)) + _wgslsmith_f_op_f32(step(-772f, -658f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(f32(-1f) * -1625f)), 649f), ~vec3<i32>(global1.c.x | 2147483647i, _wgslsmith_div_i32(-16486i, -6512i), firstTrailingBit(u_input.b))), global1.b.c.yx, func_2(arg_1.x == arg_1.x, any(arg_1.wxx), max(u_input.c.x, _wgslsmith_mult_u32(0u, ~1u)), func_2(15548i >= ~var_1, ~u_input.a > func_2(arg_1.x, arg_1.x, 27937u, var_0.a).d.c.x, firstTrailingBit(67069u << (u_input.c.x % 32u)), Struct_1(_wgslsmith_f_op_f32(global1.b.a + -1000f), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1, var_1, global1.b.c.x), vec3<i32>(var_1, -8721i, -2147483647i)))).b).d);
    let var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, global0.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-453f, -1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a, arg_0)), arg_1.zw)), !any(vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-336f, global1.a.a))) + vec2<f32>(var_0.b.b, _wgslsmith_f_op_f32(trunc(803f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.a, -1000f) - vec2<f32>(global0.x, global1.d.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.a.b, -280f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - vec2<f32>(var_0.b.a, var_0.d.b)))))));
    return _wgslsmith_clamp_vec2_u32(u_input.c, _wgslsmith_mod_vec2_u32(~(~abs(var_2)), ~(~u_input.c) << ((vec2<u32>(39740u, u_input.c.x) ^ select(var_2, vec2<u32>(47778u, u_input.c.x), arg_1.x)) % vec2<u32>(32u))), u_input.c);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<i32>) -> vec4<u32> {
    let var_0 = true;
    var var_1 = func_2(var_0, var_0, ~_wgslsmith_div_u32(~u_input.c.x, firstLeadingBit(arg_0.b.x)), func_2(true & (arg_0.b.x > ~4294967295u), false, 1u, func_2(false, any(vec4<bool>(true, true, var_0, var_0)) && var_0, ~_wgslsmith_mult_u32(4294967295u, arg_0.b.x), func_2(false, any(vec2<bool>(var_0, true)), ~arg_0.b.x, global1.d).a).b).d).a;
    var var_2 = _wgslsmith_clamp_i32(-_wgslsmith_add_i32(~(-4595i), ~(-46659i ^ var_1.c.x)), ~((arg_2.x >> (_wgslsmith_sub_u32(u_input.c.x, 1u) % 32u)) ^ _wgslsmith_dot_vec4_i32(abs(global2[_wgslsmith_index_u32(arg_1.b.x, 15u)]), global2[_wgslsmith_index_u32(arg_1.b.x, 15u)])), arg_1.a);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_1.c)) * _wgslsmith_f_op_vec2_f32(round(arg_0.c)));
    var_2 = ~(~(-1i));
    return firstLeadingBit(firstTrailingBit(vec4<u32>(~117464u, 61850u, ~_wgslsmith_add_u32(arg_0.b.x, u_input.c.x), 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(1u, ~33524u, min(4294967295u, u_input.c.x), ~(u_input.c.x << (59596u % 32u))) >> (func_4(Struct_2(global1.c.x, func_1(-1056f, vec4<bool>(false, true, false, true)) | (vec2<u32>(u_input.c.x, 4294967295u) & u_input.c), vec2<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), 965f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_2(abs(-1205i), countOneBits(u_input.c) | (vec2<u32>(4294967295u, 0u) << (u_input.c % vec2<u32>(32u))), vec2<f32>(func_2(false, false, u_input.c.x, Struct_1(global1.d.a, global1.a.b, vec3<i32>(0i, 1i, -1i))).d.b, _wgslsmith_f_op_f32(select(425f, global0.x, false))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.a.b), -434f))), ~vec3<i32>(u_input.d, -16553i, global1.b.c.x) >> (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.c.x), vec3<u32>(u_input.c.x, 3732u, u_input.c.x)), 1u, u_input.c.x) % vec3<u32>(32u))) % vec4<u32>(32u));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(353f, global0.x, all(vec2<bool>(true, false)))) - _wgslsmith_f_op_f32(global1.d.a * _wgslsmith_div_f32(global0.x, global1.b.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -180f) - -1568f), func_2(true, true || select(false, true, 2388f > global0.x), ~_wgslsmith_sub_u32(var_0.x, ~var_0.x), func_2(false, all(vec3<bool>(true, true, true)), abs(~4294967295u), func_2(any(vec2<bool>(false, true)), false, firstTrailingBit(u_input.c.x), Struct_1(global1.b.a, 732f, vec3<i32>(u_input.b, u_input.d, 21643i))).a).b).a.c);
    global1 = Struct_3(func_2(select(any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), true, !(global0.x > var_1.a)), all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, false), false)), 4294967295u, Struct_1(_wgslsmith_f_op_f32(ceil(383f)), 555f, max(global1.d.c, -var_1.c))).b, func_2(!any(vec2<bool>(false, true)), true, _wgslsmith_mult_u32(_wgslsmith_add_u32(var_0.x, func_4(Struct_2(-37265i, vec2<u32>(4294967295u, var_0.x), vec2<f32>(1847f, var_1.b), -1629f), Struct_2(var_1.c.x, var_0.yy, vec2<f32>(1256f, -938f), var_1.a), var_1.c).x), ~(~var_0.x)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(344f, 384f)) - _wgslsmith_f_op_f32(sign(global1.b.a))), -624f, _wgslsmith_mod_vec3_i32(global1.b.c, vec3<i32>(var_1.c.x, u_input.b, var_1.c.x)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, var_0.x, 0u), vec3<u32>(81031u, 1u, 1u)) % vec3<u32>(32u)))).d, (_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.a, u_input.b), max(var_1.c.zz, var_1.c.xy)) << (func_1(254f, vec4<bool>(true, false, true, false)) % vec2<u32>(32u))) & vec2<i32>(select(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.d.c.x, u_input.d), vec2<i32>(global1.b.c.x, 1i)), u_input.b | -26229i, all(vec3<bool>(true, true, false))), _wgslsmith_add_i32(-23642i, max(var_1.c.x, var_1.c.x))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_1.a))))), _wgslsmith_f_op_f32(floor(global1.d.a)), -countOneBits(vec3<i32>(-25849i, u_input.b, var_1.c.x))));
    var var_2 = Struct_2(-1i, select(u_input.c, vec2<u32>(select(func_4(Struct_2(global1.b.c.x, var_0.xy, vec2<f32>(global1.d.b, 1000f), -322f), Struct_2(u_input.d, u_input.c, vec2<f32>(global1.a.b, -658f), global0.x), global1.b.c).x, ~1u, true), _wgslsmith_clamp_u32(u_input.c.x, countOneBits(1u), var_0.x)), any(vec3<bool>(true, true, true))), vec2<f32>(-2072f, -491f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global1.b.b)), _wgslsmith_f_op_f32(-var_1.b)) * _wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.a.a * 2076f), -1000f, true)))));
    let var_3 = var_2.a;
    let var_4 = u_input.d;
    var_1 = Struct_1(var_2.c.x, global1.d.b, _wgslsmith_add_vec3_i32(global1.a.c, _wgslsmith_div_vec3_i32(~var_1.c ^ (var_1.c >> (var_0.xzz % vec3<u32>(32u))), global1.a.c << ((var_0.zzx << (var_0.xwz % vec3<u32>(32u))) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, global1.d.c.zz, max(~(~select(var_0.zyz, vec3<u32>(1u, var_0.x, u_input.c.x), vec3<bool>(false, true, true))), ~vec3<u32>(~5863u, _wgslsmith_mod_u32(0u, u_input.c.x), ~var_0.x)), var_2.c);
}

