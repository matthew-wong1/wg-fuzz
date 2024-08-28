struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: Struct_3 = Struct_3(vec2<u32>(1u, 0u), vec3<u32>(0u, 1u, 80091u), vec4<bool>(true, false, false, true), 1000f, 418f);

var<private> global2: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(70410u, 0u, 4294967295u), vec3<u32>(8974u, 20394u, 4294967295u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(84294u, 28021u, 0u), vec3<u32>(39413u, 14316u, 12531u), vec3<u32>(59554u, 1u, 47941u), vec3<u32>(18310u, 35157u, 7916u), vec3<u32>(1u, 0u, 1u), vec3<u32>(46537u, 15468u, 59645u), vec3<u32>(1u, 70766u, 4294967295u), vec3<u32>(10597u, 0u, 4294967295u), vec3<u32>(1u, 4294967295u, 27826u), vec3<u32>(4294967295u, 45488u, 1u), vec3<u32>(0u, 73235u, 1u), vec3<u32>(10307u, 0u, 1u), vec3<u32>(1u, 22511u, 43115u));

var<private> global3: array<bool, 32> = array<bool, 32>(true, false, false, false, true, true, false, true, false, false, false, false, true, false, true, true, true, true, false, false, true, false, true, true, false, false, true, true, true, true, false, true);

var<private> global4: Struct_4 = Struct_4(1578f, Struct_3(vec2<u32>(1u, 6319u), vec3<u32>(11090u, 1401u, 60069u), vec4<bool>(false, true, true, true), -1000f, 720f), Struct_2(Struct_1(-109f), 19431u, Struct_1(-698f)), Struct_2(Struct_1(283f), 1u, Struct_1(245f)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a.x, 2147483647i), firstTrailingBit(-54835i));
    var var_1 = vec3<bool>(false, global0.x != !global4.b.c.x, global3[_wgslsmith_index_u32(1u, 32u)] | all(select(vec3<bool>(global1.c.x, global1.c.x, true), select(global1.c.zyw, vec3<bool>(global3[_wgslsmith_index_u32(1u, 32u)], global3[_wgslsmith_index_u32(global4.c.b, 32u)], global1.c.x), global0.x), global4.b.c.x)));
    let var_2 = 32966u;
    var var_3 = Struct_4(-332f, global4.b, global4.c, global4.d);
    var var_4 = Struct_4(global4.a, global4.b, Struct_2(Struct_1(_wgslsmith_f_op_f32(1692f + var_3.d.c.a)), _wgslsmith_div_u32(8513u, 874u), var_3.c.a), global4.c);
    return !(!select(!global1.c, vec4<bool>(true, global4.b.c.x & true, !global4.b.c.x, var_1.x), vec4<bool>(!global1.c.x, true, var_0 >= var_0, any(var_4.b.c.yww))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<f32>) -> bool {
    let var_0 = u_input.c.x;
    let var_1 = Struct_3(global1.b.zx, global2[_wgslsmith_index_u32(10955u, 16u)], func_3(), _wgslsmith_f_op_f32(-177f * arg_0.a), -1227f);
    global2 = array<vec3<u32>, 16>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-547f, var_1.e, global4.a) * vec3<f32>(var_1.e, global4.b.e, var_1.e)) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, arg_1.x), vec3<f32>(-451f, arg_2.x, 1000f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(arg_2.wwz))));
    global4 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.d))), Struct_3(~_wgslsmith_sub_vec2_u32(select(vec2<u32>(4294967295u, u_input.b), vec2<u32>(var_1.b.x, 1u), false), global1.a), global1.b, vec4<bool>(all(func_3().xz), !(global4.b.c.x | global0.x), all(global0.zx), global4.b.c.x), arg_1.x, var_1.d), global4.d, Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_1.d)), u_input.b, Struct_1(global1.d)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.x + -811f))) - arg_0.a) <= 497f;
}

fn func_1() -> Struct_3 {
    var var_0 = true;
    var var_1 = global4.b;
    let var_2 = !func_2(Struct_1(-1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-583f, global1.e)), _wgslsmith_f_op_f32(max(global1.d, global4.c.a.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d, global4.a, global4.a, 989f))))));
    let var_3 = vec3<i32>(u_input.c.x, _wgslsmith_mod_i32(u_input.c.x, u_input.c.x), ~0i);
    var var_4 = global4.d.c;
    return Struct_3(vec2<u32>(global1.b.x, ~(1u & global4.b.a.x)), ~(~vec3<u32>(countOneBits(global1.b.x), ~6107u, countOneBits(0u))), global4.b.c, _wgslsmith_f_op_f32(-2028f + _wgslsmith_div_f32(global4.d.a.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_4.a))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-178f * 1209f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(170f * global1.d) * _wgslsmith_f_op_f32(global1.e * var_1.e))) + -280f));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = ~(~(~(~(~vec4<u32>(22348u, 11222u, u_input.b, global4.b.b.x)))));
    global4 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c.c.a))), arg_1.b, Struct_2(Struct_1(650f), global4.c.b, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -978f))), arg_1.c);
    global0 = global1.c.xwy;
    var var_2 = !arg_1.b.c;
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -772f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global4.d.a.a);
    var var_1 = ~(_wgslsmith_sub_vec3_u32(vec3<u32>(global4.b.a.x, global1.a.x, 0u) >> ((global4.b.b ^ vec3<u32>(11184u, 0u, 66736u)) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(0u, 13996u, global4.c.b))) | _wgslsmith_mult_vec3_u32(min(vec3<u32>(global1.b.x, global4.c.b, 4294967295u), vec3<u32>(global4.d.b, u_input.b, 9157u)), ~global4.b.b));
    var_0 = func_4(min(vec4<i32>(select(u_input.a.x, ~2147483647i, global4.b.c.x), u_input.c.x, _wgslsmith_dot_vec2_i32(u_input.a.xy, vec2<i32>(1i, u_input.c.x)), min(u_input.c.x, _wgslsmith_div_i32(u_input.c.x, u_input.a.x))), ~(-vec4<i32>(u_input.c.x, 0i, u_input.c.x, 2916i) | ~vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x))), Struct_4(var_0.a, func_1(), global4.d, Struct_2(global4.d.a, _wgslsmith_add_u32(abs(9701u), _wgslsmith_dot_vec2_u32(vec2<u32>(62346u, 12809u), vec2<u32>(var_1.x, global4.b.a.x))), global4.d.c)));
    var var_2 = _wgslsmith_sub_vec3_u32(global1.b, ~global2[_wgslsmith_index_u32(firstLeadingBit(~u_input.b), 16u)]);
    let var_3 = func_1();
    let var_4 = Struct_1(global4.c.c.a);
    let x = u_input.a;
    s_output = StorageBuffer(~min(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, u_input.a.x, u_input.c.x, u_input.a.x), vec4<i32>(u_input.c.x, u_input.c.x, 25234i, u_input.c.x)), _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, -15322i, -1i, 0i)), -vec4<i32>(32173i, u_input.c.x, 1i, u_input.a.x), max(vec4<i32>(u_input.a.x, u_input.c.x, 1i, -82334i), vec4<i32>(u_input.c.x, -1i, u_input.a.x, -28578i)))), var_1.x, vec4<i32>(~0i, _wgslsmith_dot_vec3_i32(abs(u_input.a), ~u_input.a), 0i, firstTrailingBit(u_input.c.x) << (select(u_input.b, 4294967295u, var_3.c.x) % 32u)) >> (min(~reverseBits(vec4<u32>(var_3.b.x, 4294967295u, var_2.x, 0u)), vec4<u32>(~38957u, 4294967295u, global1.b.x, 110771u)) % vec4<u32>(32u)), var_2.x, vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.a, var_4.a) + 628f))), 1788f));
}

