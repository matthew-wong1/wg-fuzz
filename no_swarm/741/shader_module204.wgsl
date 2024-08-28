struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_3, 4>;

var<private> global2: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(vec3<f32>(772f, -983f, -605f), false, vec3<bool>(false, true, true), Struct_1(true, vec2<bool>(false, true), false, vec4<u32>(1u, 1u, 4294967295u, 9873u)), true), Struct_3(vec3<f32>(-1536f, -160f, 1000f), false, vec3<bool>(false, true, false), Struct_1(true, vec2<bool>(false, true), true, vec4<u32>(1u, 4294967295u, 4294967295u, 0u)), false), Struct_3(vec3<f32>(1234f, -3475f, 1087f), false, vec3<bool>(false, false, true), Struct_1(false, vec2<bool>(true, false), true, vec4<u32>(7886u, 4294967295u, 18128u, 0u)), true), Struct_3(vec3<f32>(-127f, 435f, -521f), false, vec3<bool>(true, false, true), Struct_1(true, vec2<bool>(false, false), true, vec4<u32>(1u, 1u, 2047u, 53999u)), false), Struct_3(vec3<f32>(972f, -393f, 1026f), false, vec3<bool>(false, true, false), Struct_1(true, vec2<bool>(false, false), false, vec4<u32>(1u, 4294967295u, 42690u, 4294967295u)), false), Struct_3(vec3<f32>(-541f, -416f, 166f), false, vec3<bool>(false, false, true), Struct_1(false, vec2<bool>(false, false), false, vec4<u32>(102163u, 25079u, 64910u, 0u)), false), Struct_3(vec3<f32>(-702f, -947f, -286f), true, vec3<bool>(true, true, false), Struct_1(false, vec2<bool>(true, false), true, vec4<u32>(1u, 4294967295u, 61899u, 4294967295u)), false), Struct_3(vec3<f32>(339f, -1000f, 1000f), true, vec3<bool>(true, false, true), Struct_1(true, vec2<bool>(true, false), true, vec4<u32>(66583u, 22954u, 27484u, 34303u)), false), Struct_3(vec3<f32>(-184f, 1546f, 210f), false, vec3<bool>(false, false, false), Struct_1(false, vec2<bool>(true, false), true, vec4<u32>(18402u, 18673u, 4294967295u, 4294967295u)), false), Struct_3(vec3<f32>(-119f, -823f, 1000f), true, vec3<bool>(false, true, false), Struct_1(true, vec2<bool>(false, true), true, vec4<u32>(4294967295u, 1u, 74044u, 39391u)), false));

var<private> global3: vec4<f32>;

var<private> global4: vec2<f32> = vec2<f32>(1685f, -766f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    global2 = array<Struct_3, 10>();
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1128f, -1402f, global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -129f)))));
    global1 = array<Struct_3, 4>();
    global0 = min(arg_1.a, ~u_input.d.x);
    global3 = var_0;
    return -261f;
}

fn func_2() -> Struct_3 {
    global4 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(231f, 918f)), _wgslsmith_f_op_f32(-global4.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.xy))), vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(u_input.d.x, u_input.a, Struct_1(false, vec2<bool>(true, true), false, vec4<u32>(1u, 0u, u_input.a.x, 1u)), Struct_1(true, vec2<bool>(false, true), true, vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.a.x)), Struct_1(true, vec2<bool>(false, true), true, vec4<u32>(0u, 31865u, u_input.a.x, u_input.a.x))), Struct_2(u_input.d.x, _wgslsmith_mult_vec3_u32(vec3<u32>(5667u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 24964u, 122328u)), Struct_1(true, vec2<bool>(true, true), true, vec4<u32>(7023u, 12668u, 2012u, u_input.a.x)), Struct_1(true, vec2<bool>(true, true), true, vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)), Struct_1(false, vec2<bool>(true, true), false, vec4<u32>(6912u, u_input.a.x, u_input.a.x, u_input.a.x))), Struct_1(any(vec4<bool>(true, false, false, true)), vec2<bool>(true, true), true, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u))))), _wgslsmith_f_op_f32(247f - _wgslsmith_f_op_f32(-global3.x)))));
    var var_0 = !select(select(vec3<bool>(false, all(vec2<bool>(false, true)), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false)), vec3<bool>(select(true, false, false), true, true)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), vec3<bool>(false, false, true)), all(vec3<bool>(true, true, true)));
    var_0 = vec3<bool>(all(select(select(!vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(true, true, var_0.x)), select(vec3<bool>(false, true, false), vec3<bool>(var_0.x, true, var_0.x), var_0.x), vec3<bool>(true, true, true))), true, var_0.x);
    let var_1 = ~(-u_input.b.zx);
    global1 = array<Struct_3, 4>();
    return Struct_3(global3.ywx, (u_input.a.x < (_wgslsmith_div_u32(u_input.a.x, u_input.a.x) << (abs(38961u) % 32u))) & any(vec4<bool>(u_input.a.x != u_input.a.x, true, any(vec4<bool>(true, var_0.x, var_0.x, true)), var_0.x)), vec3<bool>(all(vec3<bool>(true && var_0.x, false, var_0.x)), var_0.x, false), Struct_1(!(any(vec3<bool>(var_0.x, var_0.x, var_0.x)) | true), var_0.xx, all(!vec3<bool>(var_0.x, var_0.x, false)), abs(~(~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 1u)))), var_0.x);
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    var var_1 = global2[_wgslsmith_index_u32(~(~reverseBits(min(u_input.a.x, u_input.a.x)) & 23980u), 10u)];
    var var_2 = u_input.b.wyy;
    var_2 = vec3<i32>(_wgslsmith_add_i32(-9131i, u_input.d.x), firstLeadingBit(-2147483647i), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 3203i, u_input.b.x), countOneBits(vec3<i32>(2216i, 2147483647i, 2147483647i))))) & reverseBits(vec3<i32>(0i, ~_wgslsmith_mult_i32(var_2.x, var_2.x), (u_input.d.x << (u_input.a.x % 32u)) << ((var_1.d.d.x & 28442u) % 32u)));
    global4 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global4.x)) + -2152f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(Struct_2(2147483647i, var_0.d.d.ywz, var_0.d, var_1.d, var_1.d), Struct_2(0i, vec3<u32>(0u, var_0.d.d.x, var_1.d.d.x), var_0.d, Struct_1(var_1.d.c, vec2<bool>(var_0.b, false), var_0.d.c, var_0.d.d), Struct_1(var_0.b, vec2<bool>(var_1.b, var_0.e), false, var_0.d.d)), func_2().d)), var_1.a.x)))));
    return Struct_2(-8505i, ~u_input.a, func_2().d, var_1.d, var_0.d);
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    global1 = array<Struct_3, 4>();
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, global4.x) + _wgslsmith_f_op_f32(568f * -1030f)), _wgslsmith_f_op_f32(func_3(Struct_2(arg_1.a, u_input.a, arg_1.d, Struct_1(arg_1.e.b.x, arg_1.c.b, arg_1.d.a, arg_1.d.d), arg_1.d), arg_1, func_1().c)))), arg_1.c, _wgslsmith_add_vec4_u32(arg_1.e.d, arg_1.e.d));
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(320f, 1000f) - _wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global3.yx))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1415f, global3.x) * global3.zw), global3.zx)))), Struct_1(true, arg_1.d.b, var_0.b.c | !any(vec3<bool>(var_0.b.a, arg_1.c.b.x, var_0.b.a)), var_0.c), var_0.b.d);
    let var_2 = func_2().d;
    var var_3 = !var_1.b.a;
    return func_1().e;
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> Struct_4 {
    var var_0 = -18003i;
    var var_1 = !select(vec4<bool>(arg_0.e.c, all(vec4<bool>(true, arg_0.e.a, arg_0.d.a, false)) && true, arg_0.d.a && (u_input.a.x != 74804u), true), vec4<bool>(any(arg_0.e.b), arg_0.c.b.x, all(select(vec3<bool>(arg_0.e.c, true, arg_0.c.c), vec3<bool>(arg_0.e.b.x, arg_0.c.a, true), vec3<bool>(arg_0.e.b.x, false, arg_0.e.a))), arg_0.e.b.x), (!arg_0.e.a || all(arg_0.e.b)) && func_1().c.c);
    let var_2 = Struct_1(!any(vec4<bool>(select(arg_0.c.c, arg_0.d.c, arg_0.d.b.x), !arg_0.d.c, !arg_0.e.c, any(vec2<bool>(var_1.x, var_1.x)))), arg_0.c.b, func_1().b.x >= (u_input.a.x >> ((countOneBits(arg_0.b.x) >> (~0u % 32u)) % 32u)), countOneBits(arg_0.e.d));
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.zyx * global3.zzz)), _wgslsmith_f_op_vec3_f32(sign(global3.wwy)), select(arg_0.c.a, false, func_1().d.c))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(global4.x, global3.x)), -1299f, _wgslsmith_f_op_f32(-2183f + 806f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1182f, arg_1, -126f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-196f, -1000f, 752f) + vec3<f32>(-846f, 779f, -153f))))), true, var_1.xzw, Struct_1(arg_0.d.c || false, var_1.xw, !var_1.x, abs(reverseBits(_wgslsmith_mult_vec4_u32(var_2.d, arg_0.d.d)))), false);
    let var_4 = Struct_2(u_input.b.x, _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.b.x, _wgslsmith_mod_u32(21260u, u_input.a.x), ~u_input.a.x), _wgslsmith_clamp_vec3_u32(arg_0.d.d.yxw, func_4(1343f, arg_0).d.xxx, var_3.d.d.zxy)), firstLeadingBit(vec3<u32>(~var_2.d.x, ~4294967295u, var_3.d.d.x)), ~var_3.d.d.zzx), func_2().d, arg_0.e, Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -535f), _wgslsmith_f_op_f32(max(global4.x, arg_1)))) == _wgslsmith_f_op_f32(floor(global4.x)), func_4(global4.x, func_1()).b, true, func_2().d.d << (func_2().d.d % vec4<u32>(32u))));
    return Struct_4(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global3.zx))), var_3.a.zx))), var_4.d, ~(~vec4<u32>(var_3.d.d.x, 28797u, 0u, u_input.a.x) & arg_0.d.d));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 10>();
    let var_0 = func_5(Struct_2(2147483647i, u_input.a, Struct_1(any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), true)), vec2<bool>(true, true), all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true))), (vec4<u32>(u_input.a.x, 4294967295u, 53365u, 7798u) >> (vec4<u32>(1u, u_input.a.x, u_input.a.x, 4294967295u) % vec4<u32>(32u))) & vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 11160u)), func_4(-1225f, func_1()), func_2().d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x - global4.x), -112f))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-309f, -842f, global4.x))))), firstTrailingBit(countOneBits(func_5(Struct_2(u_input.b.x, vec3<u32>(u_input.a.x, 17383u, 0u), Struct_1(var_0.b.b.x, var_0.b.b, false, vec4<u32>(var_0.b.d.x, u_input.a.x, 3786u, var_0.b.d.x)), Struct_1(false, vec2<bool>(var_0.b.b.x, false), var_0.b.b.x, vec4<u32>(u_input.a.x, 4294967295u, 29427u, 4294967295u)), var_0.b), global3.x).c.x)) < reverseBits(u_input.a.x), !func_2().c, var_0.b, !(var_0.b.b.x && var_0.b.c));
    var var_2 = Struct_1(var_0.b.b.x, vec2<bool>(!any(!vec4<bool>(var_1.b, var_0.b.b.x, true, false)), true), !select(var_0.b.c, var_0.b.a, any(vec4<bool>(var_0.b.a, var_1.b, var_1.c.x, var_1.e))) != !func_4(_wgslsmith_f_op_f32(f32(-1f) * -1307f), func_1()).c, ~var_1.d.d);
    global1 = array<Struct_3, 4>();
    let var_3 = var_1.a.x;
    var var_4 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) + var_1.a.x))), var_0.b.d.x, 834f, (vec2<i32>(_wgslsmith_mod_i32(-68245i, -2147483647i), reverseBits(u_input.b.x)) << (firstTrailingBit(reverseBits(vec2<u32>(0u, u_input.a.x))) % vec2<u32>(32u))) >> (~var_1.d.d.zx % vec2<u32>(32u)));
}

