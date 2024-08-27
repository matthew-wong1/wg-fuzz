struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

var<private> global2: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(4294967295u, 43258u, 36220u, 17668u), vec4<u32>(4294967295u, 1u, 4294967295u, 20849u), vec4<u32>(4294967295u, 1u, 4294967295u, 1u), vec4<u32>(85766u, 4405u, 22843u, 16391u), vec4<u32>(0u, 9912u, 1u, 6148u), vec4<u32>(33129u, 4294967295u, 68408u, 1u), vec4<u32>(48134u, 1u, 16996u, 1223u), vec4<u32>(0u, 1u, 19479u, 16569u), vec4<u32>(1u, 1u, 63054u, 0u), vec4<u32>(0u, 39220u, 34006u, 1u), vec4<u32>(18485u, 4294967295u, 5845u, 1287u), vec4<u32>(0u, 35479u, 1u, 4294967295u), vec4<u32>(0u, 23666u, 4294967295u, 1u), vec4<u32>(47388u, 10384u, 4294967295u, 0u), vec4<u32>(62609u, 1u, 17653u, 1u), vec4<u32>(4294967295u, 0u, 4294967295u, 19186u), vec4<u32>(68759u, 36045u, 1u, 1u), vec4<u32>(17830u, 1u, 61178u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 30589u, 0u), vec4<u32>(4294967295u, 4294967295u, 8731u, 0u), vec4<u32>(33781u, 1u, 4294967295u, 1u), vec4<u32>(10947u, 90533u, 1u, 59732u), vec4<u32>(79338u, 0u, 0u, 4294967295u), vec4<u32>(0u, 14720u, 47772u, 10839u));

var<private> global3: i32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec4<i32> {
    let var_0 = global1.x;
    global1 = vec3<bool>(false, true, !(_wgslsmith_dot_vec4_i32(-vec4<i32>(-11442i, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(-2147483647i, 2147483647i, 0i, 3621i)) == 1i));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(min(1350f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-439f - -1000f)))), global1.xz, ~(~32082u), 190f, ~u_input.e), u_input.c, Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-495f + 1f), -1145f, true)), vec2<bool>(true, any(vec2<bool>(false, false))), 52931u, -282f, 28307u));
    var var_2 = u_input.a > max(~firstLeadingBit(~1u), reverseBits(~(~var_1.a.e)));
    var var_3 = _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_add_u32(countOneBits(u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 13128u, 4294967295u), vec3<u32>(28131u, 19881u, u_input.e))) >> (abs(var_1.c.c & var_1.b) % 32u), abs(min(u_input.a, var_1.b) << (34707u % 32u))), vec2<u32>(_wgslsmith_div_u32(u_input.a, u_input.c), 7974u));
    return vec4<i32>(40358i, u_input.b.x, u_input.d.x, min(~(-u_input.b.x), _wgslsmith_dot_vec3_i32(~u_input.d, firstTrailingBit(vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x))) << (var_1.a.e % 32u)));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> Struct_3 {
    global3 = _wgslsmith_dot_vec4_i32(func_3(), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, ~u_input.b.x, reverseBits(74876i), -1i), ~(~select(vec4<i32>(u_input.b.x, u_input.d.x, u_input.b.x, -19991i), vec4<i32>(18468i, -14108i, u_input.d.x, u_input.d.x), global1.x))));
    let var_0 = Struct_2(arg_1.c, countOneBits(arg_1.a.e), arg_1.c);
    var var_1 = vec3<i32>(u_input.b.x, 0i, _wgslsmith_div_i32(u_input.d.x, -1i));
    let var_2 = Struct_2(Struct_1(var_0.c.d, arg_1.c.b, arg_1.b, _wgslsmith_f_op_f32(select(1079f, var_0.c.d, true)), var_0.a.e >> ((_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 4294967295u, 4294967295u), vec3<u32>(arg_1.a.e, 17325u, arg_1.b)) >> (4294967295u % 32u)) % 32u)), arg_1.c.e, arg_1.c);
    var var_3 = true;
    return Struct_3(Struct_2(var_0.c, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.e, 1u), vec2<u32>(0u, 0u)) | ~_wgslsmith_mult_u32(4294967295u, arg_1.a.c), Struct_1(var_0.c.a, vec2<bool>(false, true), firstTrailingBit(22787u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.a) - -2116f), var_2.b)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1432f))), !var_2.a.b, ~u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-998f * -385f), -509f))), ~1u), vec2<u32>(arg_1.a.e, 4294967295u), Struct_1(var_2.a.a, var_2.c.b, _wgslsmith_clamp_u32(41099u, reverseBits(countOneBits(4294967295u)), ~(~0u)), var_2.c.a, max(~var_0.a.c, 1u)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>) -> u32 {
    let var_0 = ~arg_1.x;
    var var_1 = vec2<u32>(max(arg_0.d.e, arg_0.c.x >> (arg_1.x % 32u)), ~(~(~(u_input.a >> (0u % 32u)))));
    var var_2 = vec4<u32>(74209u, 7628u, 37012u, firstLeadingBit(~firstTrailingBit(13401u))) << (vec4<u32>(48494u, arg_1.x, 4294967295u, ~var_1.x) % vec4<u32>(32u));
    var var_3 = func_2(select(~1i == _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 31723i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.d.x, 0i, 0i, 26283i)), !(!global1.x), true) && (any(select(vec3<bool>(arg_0.b.b.x, false, true), vec3<bool>(false, arg_0.d.b.x, true), vec3<bool>(arg_0.d.b.x, global1.x, arg_0.b.b.x))) == (global1.x | any(vec4<bool>(global1.x, false, global1.x, true)))), arg_0.a, false | select(true, true, !(!arg_0.d.b.x))).d;
    global0 = _wgslsmith_f_op_f32(var_3.d * arg_0.a.a.d);
    return _wgslsmith_mod_u32(4294967295u, ~_wgslsmith_mod_u32(firstTrailingBit(0u), _wgslsmith_add_u32(1u, ~var_3.e)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_2) -> vec3<bool> {
    global2 = array<vec4<u32>, 24>();
    var var_0 = _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(countOneBits(u_input.b.x), arg_2 >> (1607u % 32u)), abs(-2147483647i) >> (_wgslsmith_div_u32(u_input.e, 29135u) % 32u)), -_wgslsmith_mod_i32(-42207i, u_input.b.x) | firstTrailingBit(_wgslsmith_sub_i32(45485i, arg_2))) | 1713i;
    var var_1 = all(!func_2(arg_0.b.x, Struct_2(func_2(global1.x, Struct_2(arg_0, 21444u, arg_0), false).a.a, _wgslsmith_dot_vec4_u32(vec4<u32>(10290u, arg_3.c.c, 61192u, 1u), vec4<u32>(4294967295u, 0u, arg_3.a.c, u_input.e)), arg_0), true).d.b);
    var_1 = arg_0.b.x;
    var_1 = true;
    return select(vec3<bool>(true, !global1.x, !(!all(vec2<bool>(false, true)))), vec3<bool>(all(arg_0.b), _wgslsmith_div_i32(1i, u_input.b.x) < -2147483647i, arg_3.a.a > _wgslsmith_f_op_f32(f32(-1f) * -469f)), select(select(select(select(vec3<bool>(false, true, true), vec3<bool>(arg_0.b.x, true, global1.x), vec3<bool>(arg_3.c.b.x, true, arg_3.c.b.x)), select(vec3<bool>(arg_0.b.x, true, global1.x), vec3<bool>(true, true, arg_3.a.b.x), vec3<bool>(global1.x, arg_3.c.b.x, arg_3.c.b.x)), global1.x), vec3<bool>(arg_2 >= arg_2, any(vec4<bool>(arg_0.b.x, true, true, true)), !global1.x), arg_3.c.b.x || any(vec3<bool>(false, arg_0.b.x, arg_0.b.x))), select(!select(vec3<bool>(true, false, global1.x), vec3<bool>(global1.x, false, arg_3.c.b.x), vec3<bool>(global1.x, arg_3.a.b.x, true)), select(vec3<bool>(arg_0.b.x, true, false), select(vec3<bool>(arg_0.b.x, true, true), vec3<bool>(arg_3.c.b.x, true, arg_3.c.b.x), global1.x), vec3<bool>(false, true, true)), vec3<bool>(false, all(vec3<bool>(arg_3.c.b.x, arg_0.b.x, arg_3.c.b.x)), global1.x & global1.x)), (-1i ^ u_input.b.x) >= ((-1i >> (arg_0.c % 32u)) >> (arg_0.c % 32u))));
}

fn func_1() -> vec2<bool> {
    global1 = func_5(Struct_1(1093f, vec2<bool>(false, true), _wgslsmith_div_u32(u_input.e, func_4(func_2(global1.x, Struct_2(Struct_1(-980f, vec2<bool>(global1.x, false), 1u, 492f, u_input.c), u_input.e, Struct_1(-1000f, global1.xx, u_input.e, 329f, u_input.c)), global1.x), ~vec4<u32>(u_input.a, 3697u, 33881u, u_input.e))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-260f, 285f)), ~(~_wgslsmith_mult_u32(23191u, 20592u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1172f, 617f, -1060f), vec3<f32>(-2694f, 499f, -1305f))))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(454f, -136f, -210f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-560f, -158f, 1000f) * vec3<f32>(-2344f, 1236f, -1262f))))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1205f, -660f, 340f))))))), u_input.b.x, func_2(true, func_2(global1.x, Struct_2(Struct_1(-844f, vec2<bool>(true, global1.x), u_input.c, -1058f, 9614u), 44571u, Struct_1(754f, global1.yz, 29376u, -1143f, 0u)), select(false, global1.x, global1.x)).a, all(vec3<bool>(true, true, global1.x))).a);
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-642f, 2243f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f)))));
    let var_1 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(~vec4<i32>(1i, u_input.d.x, 42074i, 1i)), vec4<i32>(u_input.d.x, 1i, u_input.d.x, -1i)), _wgslsmith_clamp_i32(-2147483647i, -u_input.d.x, _wgslsmith_mult_i32(-29182i, ~u_input.d.x))), u_input.b.x | 2772i, ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(1i, u_input.b.x), u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.d.xx, u_input.d.yx)), _wgslsmith_dot_vec2_i32(u_input.d.zz, u_input.b)));
    var var_2 = func_2(global1.x & !global1.x, Struct_2(func_2(!global1.x, func_2(true, Struct_2(Struct_1(201f, global1.yx, u_input.a, -1000f, 1u), 4053u, Struct_1(934f, global1.xx, 135007u, -471f, 4294967295u)), true).a, global1.x).a.c, ~(~4294967295u) & (u_input.c | firstTrailingBit(u_input.a)), func_2(all(func_5(Struct_1(148f, vec2<bool>(global1.x, global1.x), 4294967295u, 599f, u_input.a), vec3<f32>(-1000f, 1720f, 255f), -37940i, Struct_2(Struct_1(-1000f, global1.zz, u_input.a, -1000f, 10554u), u_input.a, Struct_1(652f, global1.zz, 20314u, 331f, u_input.c)))), Struct_2(func_2(global1.x, Struct_2(Struct_1(-2175f, vec2<bool>(global1.x, false), 4294967295u, -407f, u_input.e), 3000u, Struct_1(-1552f, vec2<bool>(false, global1.x), 4294967295u, 933f, u_input.a)), true).b, 1u, func_2(true, Struct_2(Struct_1(647f, vec2<bool>(true, true), 1u, 1432f, 3910u), 11150u, Struct_1(-1000f, vec2<bool>(global1.x, global1.x), u_input.e, -1916f, u_input.e)), true).a.a), true).b), all(!vec3<bool>(false, all(vec2<bool>(global1.x, global1.x)), !global1.x))).b;
    var_0 = -370f;
    return select(select(vec2<bool>(true | var_2.b.x, all(!vec3<bool>(false, global1.x, global1.x))), !(!var_2.b), !select(vec2<bool>(false, false), !global1.yz, true & global1.x)), vec2<bool>(false, global1.x), global1.yz);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~_wgslsmith_mod_i32(abs(_wgslsmith_mod_i32(u_input.d.x, 1i)), -22703i);
    global2 = array<vec4<u32>, 24>();
    global1 = select(vec3<bool>(true, global1.x, any(!select(vec4<bool>(true, false, global1.x, true), vec4<bool>(global1.x, false, false, false), true))), !vec3<bool>(true, abs(105970u) > _wgslsmith_mod_u32(u_input.a, 40851u), _wgslsmith_f_op_f32(select(222f, -539f, global1.x)) < -271f), all(vec2<bool>(true && any(vec4<bool>(false, global1.x, true, true)), global1.x)));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -415f) + 1112f), !func_1(), _wgslsmith_dot_vec3_u32((~vec3<u32>(0u, 17772u, 22322u) << (~vec3<u32>(u_input.e, u_input.c, u_input.e) % vec3<u32>(32u))) ^ vec3<u32>(firstLeadingBit(u_input.e), ~u_input.e, 2249u), vec3<u32>(~4294967295u, ~u_input.e, u_input.a) ^ vec3<u32>(func_4(Struct_3(Struct_2(Struct_1(2914f, global1.yx, u_input.e, -775f, u_input.c), 11995u, Struct_1(-311f, vec2<bool>(true, global1.x), 12763u, 877f, 1862u)), Struct_1(-1000f, vec2<bool>(global1.x, false), 33057u, 708f, u_input.c), vec2<u32>(31706u, 0u), Struct_1(1002f, vec2<bool>(global1.x, true), 45769u, -1403f, u_input.c)), global2[_wgslsmith_index_u32(0u, 24u)]), 4294967295u, u_input.a)), -2201f, 58516u);
    global3 = reverseBits(0i);
    var var_1 = select(vec3<bool>(~u_input.b.x == ~2147483647i, false && all(var_0.b), false), select(vec3<bool>(func_5(var_0, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1579f, 751f, -908f), vec3<f32>(var_0.d, var_0.a, -1574f), vec3<bool>(false, true, false))), ~(-2071i), func_2(global1.x, Struct_2(var_0, u_input.e, Struct_1(var_0.a, vec2<bool>(true, true), 306u, -282f, 22781u)), false).a).x, !select(true, var_0.b.x, false), all(func_1())), !select(vec3<bool>(global1.x, false, false), func_5(var_0, vec3<f32>(var_0.d, -1010f, -226f), u_input.b.x, Struct_2(Struct_1(-677f, vec2<bool>(global1.x, var_0.b.x), u_input.e, var_0.d, var_0.c), u_input.e, Struct_1(var_0.d, vec2<bool>(var_0.b.x, var_0.b.x), u_input.a, var_0.a, 58688u))), select(vec3<bool>(false, global1.x, false), vec3<bool>(var_0.b.x, true, false), vec3<bool>(false, true, var_0.b.x))), var_0.b.x || any(vec4<bool>(global1.x, true, false, global1.x))), all(select(!select(vec3<bool>(var_0.b.x, false, false), vec3<bool>(global1.x, false, var_0.b.x), false), select(vec3<bool>(true, true, true), vec3<bool>(global1.x, true, global1.x), vec3<bool>(false, true, var_0.b.x)), select(vec3<bool>(var_0.b.x, var_0.b.x, true), select(vec3<bool>(global1.x, false, var_0.b.x), vec3<bool>(var_0.b.x, false, global1.x), var_0.b.x), select(vec3<bool>(var_0.b.x, true, false), vec3<bool>(global1.x, false, true), var_0.b.x)))));
    let var_2 = Struct_1(var_0.a, vec2<bool>(true == !(!var_1.x), false), ~(~0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(true, func_2(var_0.b.x, Struct_2(Struct_1(var_0.a, var_0.b, 0u, var_0.a, var_0.e), u_input.a, var_0), var_0.b.x).a, var_1.x).b.a)), ~4294967295u);
    var var_3 = _wgslsmith_add_vec4_i32(~(~vec4<i32>(u_input.b.x, abs(46583i), ~0i, u_input.d.x)), -min(vec4<i32>(u_input.b.x, u_input.d.x, -48190i, u_input.d.x) | -vec4<i32>(60824i, -1387i, 1i, u_input.b.x), (vec4<i32>(-9884i, u_input.b.x, u_input.b.x, -2147483647i) | vec4<i32>(u_input.d.x, u_input.b.x, 2147483647i, u_input.b.x)) | min(vec4<i32>(u_input.d.x, 22989i, -29806i, u_input.d.x), vec4<i32>(-9i, -9414i, u_input.b.x, u_input.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, -1098f, 1916f, var_0.d) + vec4<f32>(819f, -215f, -384f, var_0.d)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, var_2.a, var_0.d, var_2.a))))), vec2<i32>(-8960i, min(var_3.x, 46966i)), var_3.x, ~(~(-(u_input.d.x & -2147483647i))), var_0.e);
}

