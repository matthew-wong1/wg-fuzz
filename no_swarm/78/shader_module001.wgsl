struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
}

struct Struct_5 {
    a: vec3<u32>,
    b: bool,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1;

var<private> global2: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global3: array<Struct_5, 30> = array<Struct_5, 30>(Struct_5(vec3<u32>(1u, 4294967295u, 19315u), false, vec3<i32>(2147483647i, 2147483647i, 0i), true), Struct_5(vec3<u32>(18342u, 0u, 4294967295u), false, vec3<i32>(1i, 2147483647i, 43834i), false), Struct_5(vec3<u32>(49903u, 0u, 1u), true, vec3<i32>(39354i, -58608i, -20982i), true), Struct_5(vec3<u32>(4294967295u, 23939u, 4294967295u), false, vec3<i32>(1i, -25816i, 4675i), false), Struct_5(vec3<u32>(44957u, 55536u, 15158u), false, vec3<i32>(9260i, -45837i, 7889i), true), Struct_5(vec3<u32>(4294967295u, 17593u, 11673u), false, vec3<i32>(-1i, 51580i, -1i), true), Struct_5(vec3<u32>(53564u, 0u, 58267u), false, vec3<i32>(-21410i, 39141i, 2147483647i), false), Struct_5(vec3<u32>(1u, 3204u, 1u), true, vec3<i32>(-28558i, 2147483647i, 2147483647i), false), Struct_5(vec3<u32>(46317u, 18115u, 0u), false, vec3<i32>(-33445i, 2147483647i, i32(-2147483648)), true), Struct_5(vec3<u32>(1u, 44464u, 24624u), false, vec3<i32>(-24589i, 0i, 21659i), false), Struct_5(vec3<u32>(16490u, 1u, 1u), true, vec3<i32>(244i, 2147483647i, 5466i), false), Struct_5(vec3<u32>(1u, 0u, 7679u), false, vec3<i32>(-1i, 9556i, 1i), true), Struct_5(vec3<u32>(0u, 7945u, 1u), true, vec3<i32>(4521i, 57795i, -7874i), true), Struct_5(vec3<u32>(1u, 38057u, 33521u), true, vec3<i32>(2147483647i, 41226i, -15557i), true), Struct_5(vec3<u32>(44422u, 28957u, 1u), true, vec3<i32>(12386i, -1i, i32(-2147483648)), true), Struct_5(vec3<u32>(4294967295u, 16909u, 1u), true, vec3<i32>(i32(-2147483648), -27063i, 2147483647i), true), Struct_5(vec3<u32>(1u, 56106u, 28469u), true, vec3<i32>(1i, 37932i, 53306i), true), Struct_5(vec3<u32>(34275u, 15398u, 1u), true, vec3<i32>(i32(-2147483648), -1i, 0i), true), Struct_5(vec3<u32>(0u, 24478u, 1u), true, vec3<i32>(2147483647i, 1i, i32(-2147483648)), true), Struct_5(vec3<u32>(1u, 0u, 12851u), true, vec3<i32>(81081i, -3164i, -1i), false), Struct_5(vec3<u32>(0u, 0u, 0u), false, vec3<i32>(i32(-2147483648), 59534i, 0i), true), Struct_5(vec3<u32>(8617u, 1u, 1u), true, vec3<i32>(-7098i, i32(-2147483648), 1i), false), Struct_5(vec3<u32>(26871u, 8681u, 1u), true, vec3<i32>(i32(-2147483648), 2147483647i, 0i), true), Struct_5(vec3<u32>(19864u, 6862u, 4294967295u), true, vec3<i32>(387i, -25486i, 13624i), false), Struct_5(vec3<u32>(1u, 0u, 74273u), false, vec3<i32>(62602i, i32(-2147483648), 5094i), true), Struct_5(vec3<u32>(4294967295u, 0u, 52497u), false, vec3<i32>(14124i, 19957i, -21825i), false), Struct_5(vec3<u32>(0u, 51484u, 9035u), false, vec3<i32>(i32(-2147483648), 0i, 0i), true), Struct_5(vec3<u32>(4294967295u, 34156u, 4294967295u), true, vec3<i32>(-1i, 6663i, 16075i), false), Struct_5(vec3<u32>(0u, 24464u, 40810u), true, vec3<i32>(-54630i, -34206i, -1i), false), Struct_5(vec3<u32>(38869u, 10600u, 0u), true, vec3<i32>(2500i, -42745i, 22279i), false));

var<private> global4: vec4<u32> = vec4<u32>(35467u, 1u, 112183u, 0u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    let var_0 = Struct_4(Struct_2(u_input.d, Struct_1(select(select(vec3<bool>(global1.a.x, true, global1.a.x), global1.a, global1.a.x), global1.a, global2.yyw)), Struct_1(vec3<bool>(all(global2.yz), global2.x, any(global2.xwy))), u_input.d.x), Struct_2(vec3<i32>(abs(u_input.d.x), _wgslsmith_div_i32(u_input.d.x, u_input.d.x), _wgslsmith_mod_i32(u_input.d.x, -14360i)) & u_input.d, Struct_1(select(vec3<bool>(global1.a.x, true, global1.a.x), !global1.a, select(vec3<bool>(false, false, global1.a.x), vec3<bool>(false, global1.a.x, true), global1.a))), Struct_1(global2.zww), countOneBits(~u_input.a.x)), !(true != (global4.x < u_input.b)) != false);
    var var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d.x, _wgslsmith_clamp_i32(u_input.d.x, firstLeadingBit(var_0.a.a.x), abs(u_input.a.x))), abs(vec2<i32>(1i, 2147483647i >> (0u % 32u)))), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(select(u_input.d.yy, var_0.a.a.yy, true), u_input.a), abs(vec2<i32>(u_input.a.x, u_input.d.x))) ^ vec2<i32>(_wgslsmith_dot_vec3_i32(var_0.b.a, u_input.d) | 1i, u_input.d.x));
    var var_2 = Struct_4(Struct_2(vec3<i32>(u_input.d.x, ~1i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(3575i, var_0.a.a.x, var_0.b.a.x, 1004i), vec4<i32>(var_0.b.d, u_input.d.x, 965i, -1i)))), Struct_1(global1.a), Struct_1(select(select(vec3<bool>(global1.a.x, false, false), var_0.a.c.a, vec3<bool>(true, global1.a.x, var_0.b.b.a.x)), select(var_0.b.b.a, global1.a, global1.a), !vec3<bool>(var_0.b.c.a.x, var_0.b.c.a.x, var_0.a.c.a.x))), ~u_input.d.x), Struct_2(var_0.b.a ^ u_input.d, var_0.a.b, Struct_1(vec3<bool>(true, true, true)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d.x, -29930i, 48626i), vec3<i32>(u_input.d.x, -29527i, var_0.a.a.x)), vec3<i32>(var_0.b.d, 9946i, -10233i)) ^ (_wgslsmith_mod_i32(25216i, var_0.a.d) | 23591i)), ~1i >= firstLeadingBit(min(-1i, u_input.a.x)));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -482f);
    let var_4 = select(vec4<bool>(global2.x, any(select(global2.xzw, global2.zwx, select(vec3<bool>(true, true, global1.a.x), global1.a, vec3<bool>(global1.a.x, var_2.c, true)))), all(select(!vec3<bool>(true, var_0.a.b.a.x, false), global2.yxx, !var_0.b.b.a)), true), vec4<bool>(true, false, select(true, true, !var_2.b.c.a.x), !(_wgslsmith_add_u32(global4.x, 4294967295u) <= ~4294967295u)), all(select(select(select(vec4<bool>(global1.a.x, false, false, var_2.b.b.a.x), vec4<bool>(global2.x, false, global2.x, false), vec4<bool>(var_2.a.c.a.x, false, false, var_2.c)), vec4<bool>(false, true, true, true), select(vec4<bool>(var_0.a.c.a.x, false, var_0.b.b.a.x, true), vec4<bool>(false, true, false, global1.a.x), false)), !(!vec4<bool>(true, true, false, var_2.a.c.a.x)), !global1.a.x)));
    return 1i;
}

fn func_2(arg_0: bool) -> bool {
    let var_0 = func_3();
    return 34573u < ~u_input.b;
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = any(vec4<bool>(any(!select(vec4<bool>(false, global2.x, true, global1.a.x), vec4<bool>(false, global1.a.x, true, global2.x), vec4<bool>(true, global2.x, true, global1.a.x))), any(vec4<bool>(!global2.x, true, global4.x < 4294967295u, true)), func_2(false), any(select(vec3<bool>(true, true, global2.x), vec3<bool>(true, true, global1.a.x), global1.a.x)) && any(global1.a)));
    var var_1 = global2.yww;
    let var_2 = vec3<bool>(true, var_1.x, var_1.x);
    let var_3 = true;
    var var_4 = Struct_1(global1.a);
    return Struct_1(!select(select(global1.a, select(var_4.a, vec3<bool>(false, true, false), vec3<bool>(var_3, var_1.x, var_1.x)), all(vec3<bool>(var_1.x, false, true))), select(var_4.a, vec3<bool>(var_2.x, var_2.x, false), true), var_3));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_mult_vec4_u32(vec4<u32>(4566u, u_input.b >> (u_input.e.x % 32u), countOneBits(7653u), 1u) & min(max(vec4<u32>(37773u, 768u, 60182u, u_input.e.x), vec4<u32>(0u, 4294967295u, u_input.e.x, global4.x)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.e.x, 47256u, global4.x, global4.x), vec4<u32>(41296u, 28885u, global4.x, u_input.e.x))), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c, 2802u, 14622u, 12566u) & (vec4<u32>(115147u, global4.x, 53380u, 0u) | vec4<u32>(0u, global4.x, 1u, 16232u)), abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, global4.x, u_input.e.x, 0u), vec4<u32>(global4.x, 1u, 45489u, global4.x))))));
    global4 = _wgslsmith_mult_vec4_u32(~firstTrailingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, 0u, global4.x), vec4<u32>(48188u, u_input.b, global4.x, global4.x))), ~(~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(70191u, u_input.e.x, global4.x, 41967u), vec4<u32>(76638u, 1u, global4.x, global4.x)))));
    var var_1 = 44041u;
    let var_2 = vec3<f32>(1565f, 1211f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(891f)), -1000f, select(true, var_0.a.x, true))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-328f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -440f)))));
    var var_3 = var_0;
    global4 = vec4<u32>(4294967295u, 0u, global4.x, 35689u) >> (~(~vec4<u32>(global4.x >> (u_input.e.x % 32u), ~u_input.b, _wgslsmith_mod_u32(global4.x, global4.x), u_input.e.x)) % vec4<u32>(32u));
    let var_4 = Struct_4(Struct_2(vec3<i32>(20500i, i32(-1i) * -35191i, _wgslsmith_add_i32(1i, _wgslsmith_mult_i32(u_input.d.x, u_input.d.x))), func_1(reverseBits(~vec4<u32>(1u, u_input.e.x, 0u, global4.x))), func_1(min(vec4<u32>(global4.x, 3798u, global4.x, 28117u), countOneBits(vec4<u32>(0u, 1u, global4.x, 4294967295u)))), -_wgslsmith_mod_i32(firstTrailingBit(-1i), u_input.d.x)), Struct_2(select(u_input.d, vec3<i32>(_wgslsmith_div_i32(-15722i, -6395i), -u_input.a.x, 78372i), !select(vec3<bool>(global2.x, false, var_0.a.x), vec3<bool>(var_0.a.x, global1.a.x, true), global2.x)), func_1(vec4<u32>(global4.x, 5011u, u_input.c, ~u_input.b)), Struct_1(vec3<bool>(true, false, true)), ~(-1i)), global2.x);
    let var_5 = var_4.a.a.x;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(318f)))) - _wgslsmith_f_op_f32(-var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, abs(_wgslsmith_add_u32(1u, global4.x)), -firstLeadingBit(select(-vec4<i32>(var_5, -2147483647i, -2147483647i, -1i), vec4<i32>(u_input.d.x, var_5, -1i, u_input.a.x), !vec4<bool>(global1.a.x, global1.a.x, true, var_4.c))), ~global4.wzx, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_2.x * var_2.x), _wgslsmith_f_op_f32(min(var_2.x, 486f)), var_2.x, 602f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x)))))));
}

