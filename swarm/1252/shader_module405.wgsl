struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 12>;

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(0i, vec2<bool>(false, true)), vec4<bool>(true, false, false, false), vec3<u32>(4294967295u, 0u, 1u), vec2<i32>(42375i, i32(-2147483648))), Struct_2(Struct_1(1i, vec2<bool>(false, true)), vec4<bool>(false, true, false, false), vec3<u32>(7372u, 1u, 33021u), vec2<i32>(-9346i, 1i)), Struct_2(Struct_1(-11850i, vec2<bool>(true, true)), vec4<bool>(false, false, false, true), vec3<u32>(502u, 0u, 36234u), vec2<i32>(16161i, -18029i)), Struct_2(Struct_1(-10927i, vec2<bool>(false, false)), vec4<bool>(true, true, false, false), vec3<u32>(44961u, 1u, 21920u), vec2<i32>(0i, 1i)), Struct_2(Struct_1(64460i, vec2<bool>(true, true)), vec4<bool>(false, true, true, false), vec3<u32>(35125u, 37937u, 4294967295u), vec2<i32>(2147483647i, i32(-2147483648))), Struct_2(Struct_1(1i, vec2<bool>(false, true)), vec4<bool>(true, true, false, true), vec3<u32>(65768u, 48555u, 1u), vec2<i32>(0i, -21890i)), Struct_2(Struct_1(-1i, vec2<bool>(false, false)), vec4<bool>(false, true, true, false), vec3<u32>(1475u, 3013u, 1u), vec2<i32>(1i, 15331i)), Struct_2(Struct_1(-33433i, vec2<bool>(true, true)), vec4<bool>(false, true, true, true), vec3<u32>(4294967295u, 0u, 21264u), vec2<i32>(i32(-2147483648), 0i)), Struct_2(Struct_1(5326i, vec2<bool>(true, true)), vec4<bool>(false, true, false, false), vec3<u32>(1u, 0u, 1u), vec2<i32>(-40329i, 26296i)), Struct_2(Struct_1(0i, vec2<bool>(true, true)), vec4<bool>(true, false, true, false), vec3<u32>(78627u, 20206u, 4294967295u), vec2<i32>(-34688i, 53851i)), Struct_2(Struct_1(0i, vec2<bool>(true, true)), vec4<bool>(false, true, true, true), vec3<u32>(4294967295u, 4294967295u, 10093u), vec2<i32>(64564i, 15371i)), Struct_2(Struct_1(-32015i, vec2<bool>(true, true)), vec4<bool>(true, false, false, true), vec3<u32>(4294967295u, 0u, 46076u), vec2<i32>(0i, 11537i)), Struct_2(Struct_1(-24293i, vec2<bool>(true, false)), vec4<bool>(true, false, true, true), vec3<u32>(4294967295u, 1u, 0u), vec2<i32>(-59399i, 2147483647i)), Struct_2(Struct_1(2147483647i, vec2<bool>(true, false)), vec4<bool>(true, true, true, false), vec3<u32>(1u, 1u, 22508u), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_2(Struct_1(30270i, vec2<bool>(true, true)), vec4<bool>(false, false, false, false), vec3<u32>(890u, 4294967295u, 9071u), vec2<i32>(-1i, 5608i)), Struct_2(Struct_1(0i, vec2<bool>(false, false)), vec4<bool>(false, true, false, true), vec3<u32>(2532u, 28904u, 1u), vec2<i32>(1i, -1i)), Struct_2(Struct_1(-56592i, vec2<bool>(true, true)), vec4<bool>(true, false, false, false), vec3<u32>(1u, 14202u, 1u), vec2<i32>(i32(-2147483648), -79492i)), Struct_2(Struct_1(22360i, vec2<bool>(false, true)), vec4<bool>(false, true, true, true), vec3<u32>(0u, 81785u, 0u), vec2<i32>(i32(-2147483648), -10802i)), Struct_2(Struct_1(37664i, vec2<bool>(false, false)), vec4<bool>(false, false, true, false), vec3<u32>(0u, 0u, 10836u), vec2<i32>(1i, 1i)), Struct_2(Struct_1(0i, vec2<bool>(false, true)), vec4<bool>(false, true, true, true), vec3<u32>(1u, 0u, 93242u), vec2<i32>(i32(-2147483648), 5855i)), Struct_2(Struct_1(-2808i, vec2<bool>(true, true)), vec4<bool>(false, false, true, true), vec3<u32>(1u, 8714u, 1u), vec2<i32>(i32(-2147483648), 4043i)), Struct_2(Struct_1(-55563i, vec2<bool>(true, false)), vec4<bool>(false, false, false, false), vec3<u32>(39416u, 0u, 58714u), vec2<i32>(-35768i, 1i)), Struct_2(Struct_1(-11072i, vec2<bool>(false, false)), vec4<bool>(true, true, false, false), vec3<u32>(101973u, 17133u, 43842u), vec2<i32>(-21553i, 1i)));

var<private> global2: Struct_4 = Struct_4(true, Struct_1(-36392i, vec2<bool>(false, false)), true, Struct_2(Struct_1(12645i, vec2<bool>(true, false)), vec4<bool>(false, true, false, true), vec3<u32>(4149u, 32463u, 0u), vec2<i32>(-1132i, -15659i)), -16118i);

var<private> global3: vec4<bool>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> bool {
    var var_0 = global2.d.b.x;
    return true && all(select(select(select(global2.d.b, vec4<bool>(true, true, global3.x, global3.x), global2.d.b), vec4<bool>(false, global2.a, false, true), all(vec2<bool>(global3.x, global3.x))), global2.d.b, vec4<bool>(true, global3.x, !global2.d.a.b.x, true)));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: vec4<f32>, arg_3: i32) -> vec2<bool> {
    global1 = array<Struct_2, 23>();
    return select(select(global0[_wgslsmith_index_u32(global2.d.c.x ^ ~(~4294967295u), 12u)], global2.d.b.wz, any(!(!vec4<bool>(arg_1, false, arg_1, global3.x)))), vec2<bool>(all(select(global3.wxy, select(global2.d.b.xzw, vec3<bool>(false, global2.d.b.x, false), arg_0.x), all(global3.xyw))), global2.a), all(arg_0.yxx));
}

fn func_2() -> bool {
    global2 = Struct_4(true, Struct_1(1i, !func_3(vec4<bool>(false, global3.x, false, global3.x), !global2.c, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-254f, -261f, 911f, 791f))), global2.e)), false & !(1u != ~global2.d.c.x), global1[_wgslsmith_index_u32(0u, 23u)], 0i);
    global0 = array<vec2<bool>, 12>();
    var var_0 = global3.x;
    global2 = Struct_4(true, global2.d.a, true, global2.d, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(-select(vec3<i32>(u_input.c.x, global2.d.a.a, global2.b.a), vec3<i32>(0i, global2.d.a.a, 36907i), global2.d.a.b.x), firstTrailingBit(vec3<i32>(2147483647i, -2147483647i, global2.e))), u_input.e.x));
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(-(~(u_input.c.x << (65441u % 32u))), _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_add_i32(-1673i, global2.e)), u_input.d), 91135i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(global2.b.a, 36173i, u_input.a), firstLeadingBit(vec3<i32>(global2.e, global2.e, u_input.d) ^ vec3<i32>(global2.e, u_input.a, u_input.e.x)))), vec4<i32>(_wgslsmith_clamp_i32(-_wgslsmith_sub_i32(u_input.c.x, -2147483647i), (u_input.a ^ 36394i) | _wgslsmith_sub_i32(u_input.d, u_input.c.x), select(global2.d.d.x ^ -30045i, 0i, true)), _wgslsmith_dot_vec4_i32(firstLeadingBit(min(vec4<i32>(-9728i, 32571i, global2.d.a.a, u_input.e.x), vec4<i32>(-1i, global2.d.a.a, -2147483647i, u_input.a))), abs(vec4<i32>(-1i, u_input.c.x, -2147483647i, 1i) >> (vec4<u32>(global2.d.c.x, global2.d.c.x, 4294967295u, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_mod_i32(-2147483647i, global2.d.a.a) & -u_input.a, global2.d.a.a));
    return false;
}

fn func_4(arg_0: bool, arg_1: i32) -> Struct_3 {
    var var_0 = Struct_4(any(!global2.d.b.xxx), global2.d.a, global2.d.c.x < ~(0u << ((global2.d.c.x << (global2.d.c.x % 32u)) % 32u)), Struct_2(Struct_1(-arg_1 | 1i, global3.xy), !select(select(vec4<bool>(arg_0, true, true, true), global2.d.b, vec4<bool>(false, false, arg_0, arg_0)), !vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(global3.x, global2.b.b.x, global3.x, false)), _wgslsmith_mod_vec3_u32(vec3<u32>(29793u ^ global2.d.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.d.c.x, 0u, 79627u), global2.d.c), 29470u), select(vec3<u32>(global2.d.c.x, 105537u, global2.d.c.x) & vec3<u32>(0u, global2.d.c.x, global2.d.c.x), firstLeadingBit(vec3<u32>(0u, 65452u, 1u)), all(vec2<bool>(true, true)))), -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 1i), global2.d.d) >> (~_wgslsmith_clamp_vec2_u32(vec2<u32>(62031u, global2.d.c.x), vec2<u32>(1u, global2.d.c.x), vec2<u32>(1u, global2.d.c.x)) % vec2<u32>(32u))), -260i);
    var var_1 = countOneBits(vec3<i32>(-1i) * -abs(vec3<i32>(arg_1, arg_1, global2.e)));
    var var_2 = Struct_3(var_0.d.c, var_0.b, ~(~(-2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(200f + _wgslsmith_f_op_f32(sign(-178f)))), Struct_2(Struct_1(~(u_input.a << (global2.d.c.x % 32u)), !global0[_wgslsmith_index_u32(0u, 12u)]), select(var_0.d.b, !var_0.d.b, any(vec3<bool>(true, true, true))), vec3<u32>(38244u, 1u, global2.d.c.x), abs(~var_1.yx)));
    var_2 = Struct_3(select(min(~(global2.d.c | var_2.a), ~(global2.d.c >> (var_2.a % vec3<u32>(32u)))), vec3<u32>(var_2.e.c.x, abs(4294967295u), 1u), false | select(true, false, var_1.x <= -28822i)), Struct_1(i32(-1i) * -global2.d.a.a, vec2<bool>(any(vec2<bool>(false, global2.b.b.x)), var_2.e.a.a <= u_input.e.x)), arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(887f * var_2.d)))) + _wgslsmith_f_op_f32(ceil(var_2.d))), Struct_2(Struct_1(_wgslsmith_add_i32(-1i, abs(2147483647i)), func_3(vec4<bool>(var_0.c, arg_0, global2.b.b.x, true), arg_1 >= 2147483647i, _wgslsmith_f_op_vec4_f32(vec4<f32>(124f, var_2.d, var_2.d, var_2.d) + vec4<f32>(var_2.d, var_2.d, -191f, 741f)), -48144i)), vec4<bool>(var_0.b.b.x | all(global2.d.b), all(!global3.zxy), any(var_0.b.b), !(var_2.d > 780f)), abs(var_2.e.c), select(~vec2<i32>(6710i, 45775i) | max(u_input.e, vec2<i32>(var_0.e, -4879i)), vec2<i32>(_wgslsmith_div_i32(-1i, -16004i), _wgslsmith_div_i32(global2.d.a.a, arg_1)), global0[_wgslsmith_index_u32(64531u, 12u)])));
    global2 = Struct_4(global3.x, Struct_1(global2.d.d.x, vec2<bool>(true, true)), true, Struct_2(var_2.e.a, select(var_0.d.b, !var_0.d.b, var_0.d.b), var_2.e.c, (var_1.yx << (global2.d.c.xx % vec2<u32>(32u))) >> (var_2.e.c.yz % vec2<u32>(32u))), arg_1);
    return Struct_3(firstLeadingBit(var_2.a), Struct_1(abs(_wgslsmith_mod_i32(_wgslsmith_mod_i32(global2.b.a, 28670i), _wgslsmith_mod_i32(global2.b.a, 738i))), global3.xw), max(-firstLeadingBit(_wgslsmith_clamp_i32(2147483647i, u_input.e.x, var_2.e.d.x)), u_input.e.x), var_2.d, var_2.e);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> Struct_1 {
    let var_0 = true;
    let var_1 = Struct_4(true, arg_0.a, true, arg_0, -_wgslsmith_dot_vec3_i32(~(-vec3<i32>(-1i, -38177i, arg_1.e.a.a)), _wgslsmith_mod_vec3_i32(select(vec3<i32>(-2147483647i, 0i, 0i), vec3<i32>(u_input.d, -14202i, 1i), vec3<bool>(false, false, true)), ~vec3<i32>(arg_1.e.a.a, global2.d.a.a, global2.d.d.x))));
    var var_2 = _wgslsmith_sub_i32(abs(arg_1.b.a), 47368i);
    var var_3 = select(select(select(vec2<bool>(global2.c, func_2()), select(!vec2<bool>(arg_1.e.a.b.x, var_0), !vec2<bool>(false, var_1.a), global2.b.b), vec2<bool>(global2.b.b.x, !var_1.c)), !vec2<bool>(all(vec3<bool>(var_0, global2.a, var_0)), false && var_0), select(vec2<bool>(global3.x, global2.b.b.x | false), vec2<bool>(false || global2.c, global3.x), !arg_0.b.x)), select(vec2<bool>(any(vec3<bool>(var_0, var_1.d.a.b.x, true)), arg_1.b.b.x), vec2<bool>(global3.x, arg_0.b.x), select(select(vec2<bool>(global2.a, true), func_4(var_1.c, -1i).b.b, vec2<bool>(false, var_1.b.b.x)), !global2.b.b, false)), var_1.c);
    let var_4 = Struct_2(func_4(!(_wgslsmith_mult_u32(var_1.d.c.x, 14295u) < (10474u ^ arg_0.c.x)), _wgslsmith_mod_i32(i32(-1i) * -1i, _wgslsmith_mult_i32(-1i, arg_0.a.a))).b, func_4(all(arg_0.a.b), var_1.b.a).e.b, global2.d.c | vec3<u32>(0u, _wgslsmith_mod_u32(arg_1.e.c.x, ~1u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_0.c.x, arg_0.c.x), var_1.d.c.x | 1u)), arg_1.e.d);
    return func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2294f * arg_1.d))))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1174f, arg_1.d) * arg_1.d)), -13808i).e.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = !vec4<bool>(global2.b.b.x, true, false, func_1());
    var var_0 = Struct_4(!(!any(vec3<bool>(global3.x, false, global2.d.a.b.x))), func_5(global2.d, func_4(false & func_2(), 2147483647i)), global2.a, func_4(func_2(), _wgslsmith_sub_i32(~1i, abs(24280i) | (global2.b.a | u_input.a))).e, -18064i);
    var var_1 = !func_4(all(select(!global3.xyz, vec3<bool>(true, global2.a, true), select(var_0.d.b.xwz, vec3<bool>(global2.d.b.x, false, true), global3.x))), abs(_wgslsmith_mod_i32(var_0.b.a, func_4(true, var_0.b.a).c))).e.a.b.x;
    let var_2 = Struct_3(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global2.d.c.yx, select(vec2<u32>(1u, global2.d.c.x), vec2<u32>(var_0.d.c.x, var_0.d.c.x), vec2<bool>(global3.x, true))), countOneBits(99317u)), global2.d.c.x, min(func_4(true, -24665i).a.x, ~global2.d.c.x)), func_4(all(vec4<bool>(any(global2.d.b.zwy), true, 73153u >= global2.d.c.x, true)), min(26768i, -_wgslsmith_div_i32(var_0.b.a, 7286i))).e.a, abs(i32(-1i) * -1i), -839f, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(57086u | select(var_0.d.c.x << (106773u % 32u), _wgslsmith_mult_u32(12131u, var_0.d.c.x), true), 64414u), 23u)]);
    var var_3 = var_2.a.x;
    var_0 = Struct_4(!(!global2.b.b.x & !(global2.b.b.x && var_0.c)), Struct_1(-11330i, vec2<bool>(true, global3.x)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(~(-8124i), ~54909i), min(global2.d.a.a & var_0.b.a, -2147483647i << (var_0.d.c.x % 32u)), -var_0.b.a) >= -u_input.c.x, var_2.e, 0i);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(_wgslsmith_mod_i32(-22325i, -14815i), countOneBits(u_input.e.x) & 1i, -23183i, i32(-1i) * -17680i), min(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(8962i, 25521i, var_0.d.a.a, var_2.c), vec4<i32>(-1i, var_0.d.d.x, var_2.e.d.x, var_2.b.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, var_0.d.a.a, var_2.e.d.x, -11790i), vec4<i32>(var_2.b.a, 0i, -2147483647i, u_input.d))), -vec4<i32>(15129i, -1i, -7742i, u_input.e.x)), !(!global2.d.b)));
}

