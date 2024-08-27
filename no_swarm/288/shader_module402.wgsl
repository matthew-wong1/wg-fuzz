struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<f32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 17> = array<vec4<bool>, 17>(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false));

var<private> global1: vec2<i32>;

var<private> global2: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(-126f, vec4<bool>(true, false, false, true), -2891i, true, 33736u), Struct_1(-320f, vec4<bool>(true, false, false, false), -34037i, true, 4294967295u), Struct_1(2069f, vec4<bool>(true, false, true, true), 2147483647i, true, 4294967295u), Struct_1(210f, vec4<bool>(true, false, true, false), 26623i, false, 21832u), Struct_1(-760f, vec4<bool>(false, true, true, true), 0i, true, 0u), Struct_1(340f, vec4<bool>(true, true, false, true), -61390i, false, 22217u), Struct_1(-1099f, vec4<bool>(true, true, false, true), -42442i, false, 1u), Struct_1(309f, vec4<bool>(false, false, true, true), -3941i, true, 4294967295u), Struct_1(-694f, vec4<bool>(false, true, true, true), 70857i, true, 4294967295u), Struct_1(446f, vec4<bool>(false, false, true, false), 23497i, true, 8681u), Struct_1(-943f, vec4<bool>(false, false, false, false), 7758i, false, 4294967295u), Struct_1(-238f, vec4<bool>(true, false, false, true), 31872i, false, 0u), Struct_1(1000f, vec4<bool>(true, true, false, true), 0i, false, 98332u), Struct_1(-1411f, vec4<bool>(false, false, true, true), 18249i, true, 1u), Struct_1(-105f, vec4<bool>(true, true, true, false), -27276i, true, 1u), Struct_1(478f, vec4<bool>(false, true, true, true), 12897i, false, 0u), Struct_1(393f, vec4<bool>(false, true, false, false), 7619i, true, 1u), Struct_1(-1860f, vec4<bool>(true, true, false, false), 2147483647i, true, 2902u));

var<private> global3: Struct_1 = Struct_1(-384f, vec4<bool>(true, false, true, true), i32(-2147483648), true, 4294967295u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2() -> vec2<i32> {
    var var_0 = global3.d;
    var var_1 = global2[_wgslsmith_index_u32(global3.e, 18u)];
    global1 = abs(vec2<i32>(-2147483647i, (19846i | (var_1.c ^ 2147483647i)) & global3.c));
    let var_2 = global2[_wgslsmith_index_u32(var_1.e, 18u)];
    let var_3 = 4294967295u;
    return ~(vec2<i32>(_wgslsmith_sub_i32(max(u_input.a.x, -19958i), select(var_1.c, global3.c, var_2.b.x)), 38333i) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(abs(var_2.e), 42829u), vec2<u32>(global3.e, ~var_1.e), firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(var_2.e, var_1.e), vec2<u32>(1u, 77815u)))) % vec2<u32>(32u)));
}

fn func_3(arg_0: u32, arg_1: i32) -> Struct_3 {
    let var_0 = Struct_2(_wgslsmith_mult_u32(reverseBits(~global3.e), max(0u, 4294967295u)), vec2<bool>(true, any(!vec2<bool>(global3.d, global3.d))), global2[_wgslsmith_index_u32(abs(global3.e), 18u)], Struct_1(_wgslsmith_f_op_f32(step(global3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a) + _wgslsmith_f_op_f32(floor(global3.a))))), global3.b, ~func_2().x | abs(-27669i), true, max(~global3.e, 0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-2191f, 1018f))))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global3.a, 1402f), _wgslsmith_div_f32(global3.a, 1022f)))));
    global3 = global2[_wgslsmith_index_u32(1u, 18u)];
    let var_1 = ~vec4<i32>(-arg_1, ~1i, ~_wgslsmith_div_i32(arg_1, _wgslsmith_div_i32(global1.x, arg_1)), ~countOneBits(_wgslsmith_sub_i32(-1i, global1.x)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.a)));
    let var_3 = _wgslsmith_div_vec3_i32(vec3<i32>(i32(-1i) * -526i, ~arg_1 ^ (12595i & var_0.d.c), countOneBits(0i) << (_wgslsmith_mod_u32(_wgslsmith_sub_u32(global3.e, arg_0), select(var_0.a, var_0.c.e, global3.b.x)) % 32u)), vec3<i32>(u_input.a.x, _wgslsmith_div_i32(-arg_1, reverseBits(global3.c)) & -1i, firstTrailingBit(-global1.x)));
    return Struct_3(_wgslsmith_f_op_f32(-global3.a), Struct_2(1u, var_0.d.b.zx, global2[_wgslsmith_index_u32(reverseBits(global3.e), 18u)], Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(201f))), vec4<bool>(var_0.b.x, true, true, true), -1i, false, ~(~7201u)), 716f));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> Struct_1 {
    var var_0 = arg_0.b.c.e;
    var var_1 = _wgslsmith_dot_vec3_u32(~(~vec3<u32>(reverseBits(0u), arg_0.b.d.e, global3.e << (arg_0.b.a % 32u))), max(select(vec3<u32>(arg_1.b.a, 22582u, arg_0.b.a), ~vec3<u32>(global3.e, 4294967295u, global3.e), func_3(arg_1.b.c.e, u_input.a.x).b.c.b.yzy), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 20316u, arg_0.b.c.e), vec3<u32>(0u, arg_1.b.d.e, arg_1.b.a)) >> (~vec3<u32>(global3.e, 1u, 4294967295u) % vec3<u32>(32u))) | ~abs(vec3<u32>(22918u, arg_0.b.c.e, 72922u)));
    var var_2 = func_3(~(~(~global3.e)), -2147483647i).b.d.b.yzx;
    global2 = array<Struct_1, 18>();
    var_0 = 71795u;
    return global2[_wgslsmith_index_u32(arg_0.b.c.e, 18u)];
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.a, 1557f, -155f, global3.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.a, global3.a, global3.a, 903f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.a, arg_0.a, -828f, 193f)))))), vec4<bool>(global3.b.x, all(vec3<bool>(true, global3.d, arg_0.d)), !(!arg_0.d), all(!vec2<bool>(global3.d, global3.d))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(2089f, arg_0.a, arg_0.a, -614f)))))));
    global3 = func_4(func_3(arg_0.e, countOneBits(_wgslsmith_dot_vec2_i32(func_2(), reverseBits(u_input.a.yw)))), func_3(abs(abs(arg_0.e)), _wgslsmith_div_i32(-2147483647i, -32035i)));
    global2 = array<Struct_1, 18>();
    let var_1 = _wgslsmith_f_op_vec3_f32(min(var_0.wwz, _wgslsmith_f_op_vec3_f32(vec3<f32>(765f, _wgslsmith_f_op_f32(f32(-1f) * -1908f), 1567f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -593f, _wgslsmith_f_op_f32(-1000f * arg_0.a)), var_0.zxw, vec3<bool>(all(global3.b.xy), arg_0.d, all(vec4<bool>(true, arg_0.d, arg_0.b.x, arg_0.d))))))));
    let var_2 = ~1i;
    return func_3(arg_0.e, func_4(func_3(~1u, u_input.a.x), func_3(~max(arg_0.e, global3.e), _wgslsmith_add_i32(-12994i, 1i))).c).b;
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = _wgslsmith_clamp_vec4_u32((vec4<u32>(arg_1.d.e, global3.e, 119059u, 37779u) | _wgslsmith_div_vec4_u32(vec4<u32>(24794u, 12338u, 108858u, global3.e), vec4<u32>(arg_1.d.e, global3.e, global3.e, 20547u))) & (vec4<u32>(45602u, global3.e, global3.e, 0u) << ((vec4<u32>(arg_1.d.e, 17578u, 4294967295u, global3.e) | vec4<u32>(arg_1.a, 1u, arg_1.c.e, 59154u)) % vec4<u32>(32u))), vec4<u32>(4294967295u & _wgslsmith_add_u32(1u, arg_1.a), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1u, arg_1.c.e))), global3.e, ~(~global3.e)), max(_wgslsmith_sub_vec4_u32(vec4<u32>(79284u, global3.e, 75589u, arg_1.c.e), vec4<u32>(global3.e, 0u, global3.e, arg_1.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.d.e, arg_1.d.e, arg_1.c.e, 7380u), vec4<u32>(arg_1.a, arg_1.c.e, arg_1.a, 1u))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(global3.e, 14530u, arg_1.c.e, global3.e), vec4<u32>(78938u, arg_1.a, 25800u, global3.e)) % vec4<u32>(32u))) ^ abs(vec4<u32>(~_wgslsmith_mult_u32(0u, 0u), 32989u | (arg_1.a << (102846u % 32u)), global3.e, 13487u));
    return firstLeadingBit(var_0.xyz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.e;
    var var_1 = _wgslsmith_add_vec3_u32(abs(_wgslsmith_mod_vec3_u32(~vec3<u32>(global3.e, 56076u, 13881u), _wgslsmith_mult_vec3_u32(vec3<u32>(62767u, 28336u, 38453u), vec3<u32>(1u, 1u, 1u))) << (vec3<u32>(19455u, global3.e, 1u) % vec3<u32>(32u))), vec3<u32>(~_wgslsmith_mod_u32(~global3.e, global3.e), global3.e, _wgslsmith_clamp_u32(global3.e, ~(~4294967295u), 4294967295u)));
    let var_2 = select(vec4<u32>(var_1.x, 53977u, var_1.x, _wgslsmith_dot_vec3_u32(func_5(_wgslsmith_f_op_f32(f32(-1f) * -1111f), func_1(global2[_wgslsmith_index_u32(24676u, 18u)])), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.e, var_1.x), var_1.yz), func_5(-142f, Struct_2(55350u, global3.b.wx, Struct_1(global3.a, vec4<bool>(false, false, true, global3.d), -17363i, true, 4294967295u), Struct_1(global3.a, global3.b, -1i, global3.d, var_1.x), global3.a)).x, 11513u))), ~firstTrailingBit(~(~vec4<u32>(global3.e, var_1.x, var_1.x, 4294967295u))), func_4(func_3(71525u, min(global1.x, global3.c)), func_3(74721u, 22817i)).b);
    global3 = Struct_1(1004f, func_3(9474u, max(_wgslsmith_mod_i32(global3.c, global3.c) | (-67203i | u_input.a.x), _wgslsmith_mult_i32(firstTrailingBit(-1i), func_1(global2[_wgslsmith_index_u32(60745u, 18u)]).d.c))).b.c.b, max(global3.c, abs(-func_2().x)), any(global3.b.xz), global3.e);
    var var_3 = global2[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(~(global3.e >> (39918u % 32u)), _wgslsmith_mod_u32(var_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_1.x, var_1.x), var_2.wxx)))), 18u)];
    global2 = array<Struct_1, 18>();
    let var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -198f) * _wgslsmith_f_op_f32(-var_3.a)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a * _wgslsmith_f_op_f32(-var_3.a)) + -789f)), !global0[_wgslsmith_index_u32(abs(47859u), 17u)], ~var_3.c & func_1(Struct_1(995f, global3.b, _wgslsmith_mult_i32(-1i, var_3.c), true, func_3(1u, -38349i).b.a)).d.c, var_3.d, _wgslsmith_sub_u32(var_2.x, firstTrailingBit(~func_1(Struct_1(-556f, global3.b, -2147483647i, var_3.d, var_3.e)).d.e)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.zy << (~vec2<u32>(~47063u, ~global3.e) % vec2<u32>(32u)), 1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2338f, 402f))))) * vec2<f32>(1337f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-138f)), _wgslsmith_f_op_f32(2570f * var_4.a)))), 4294967295u, _wgslsmith_sub_vec2_u32(vec2<u32>(var_3.e, func_4(Struct_3(global3.a, Struct_2(0u, vec2<bool>(var_4.d, true), Struct_1(var_3.a, var_4.b, global3.c, false, var_2.x), global2[_wgslsmith_index_u32(0u, 18u)], 1748f)), Struct_3(-1126f, Struct_2(1u, var_3.b.wy, global2[_wgslsmith_index_u32(var_4.e, 18u)], global2[_wgslsmith_index_u32(1u, 18u)], var_4.a))).e & 0u), var_2.xy));
}

