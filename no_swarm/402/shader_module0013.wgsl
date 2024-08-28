struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_3,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(15710i, 21407i, 2147483647i, 1202i);

var<private> global1: Struct_1;

var<private> global2: Struct_3 = Struct_3(747f, Struct_2(false, vec4<i32>(2147483647i, -1i, 8624i, -35111i), vec2<bool>(false, true)), vec2<f32>(595f, 1314f), Struct_2(true, vec4<i32>(-204i, -15734i, 0i, 411i), vec2<bool>(true, false)), Struct_1(vec4<f32>(354f, -1496f, 1417f, 629f), vec2<i32>(0i, 2147483647i), vec3<bool>(false, true, false)));

var<private> global3: bool;

var<private> global4: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: u32) -> u32 {
    return ~u_input.c.x ^ 1u;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4) -> vec4<i32> {
    let var_0 = global2.b;
    global3 = global1.c.x;
    let var_1 = select(select(select(select(vec3<bool>(true, arg_0.d.c.x, true), !global1.c, !vec3<bool>(arg_1.a.c.x, false, false)), global4[_wgslsmith_index_u32(4294967295u, 17u)], global1.c.x), vec3<bool>(global1.c.x, true, any(!global1.c)), false), global2.e.c, global2.e.c);
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.a.x, 1768f, global2.c.x, arg_0.a))), _wgslsmith_f_op_vec4_f32(max(global2.e.a, vec4<f32>(global1.a.x, arg_0.c.x, global1.a.x, -452f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(global2.e.a)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global1.a))))), vec2<i32>(_wgslsmith_mod_i32(-max(var_0.b.x, global2.e.b.x), ~firstTrailingBit(26946i)), -_wgslsmith_add_i32(global1.b.x, 1i)), !vec3<bool>(!(!arg_1.a.c.x), global2.e.c.x, !(u_input.c.x >= 0u)));
    let var_2 = arg_0;
    return vec4<i32>(-_wgslsmith_div_i32(~1i, _wgslsmith_mult_i32(8744i, _wgslsmith_mod_i32(global2.e.b.x, 1i))), ~(min(~2147483647i, u_input.b) ^ var_2.b.b.x), reverseBits(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.b.x, var_0.b.x, var_2.d.b.x), ~min(vec3<i32>(-1i, var_2.b.b.x, global2.d.b.x), var_0.b.xxy))), ~select(arg_1.a.b.x << (reverseBits(u_input.c.x) % 32u), abs(var_2.d.b.x), all(select(vec4<bool>(false, global1.c.x, true, false), vec4<bool>(true, false, true, true), vec4<bool>(arg_1.a.c.x, var_1.x, arg_0.b.a, global2.b.a)))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(-global1.a.xwx), Struct_3(_wgslsmith_f_op_f32(global2.c.x - _wgslsmith_f_op_f32(f32(-1f) * -888f)), Struct_2(global2.b.a, func_3(Struct_3(global2.a, Struct_2(false, global2.d.b, global2.b.c), global2.e.a.zw, global2.d, Struct_1(global1.a, global1.b, vec3<bool>(false, global2.d.a, false))), Struct_4(global2.b)), select(vec2<bool>(global1.c.x, true), !global1.c.zz, true)), global1.a.xz, global2.d, Struct_1(vec4<f32>(939f, _wgslsmith_f_op_f32(global2.c.x + -382f), _wgslsmith_f_op_f32(exp2(global1.a.x)), _wgslsmith_f_op_f32(-global1.a.x)), global0.zw, vec3<bool>(all(global2.e.c), true, all(vec3<bool>(true, true, global2.e.c.x))))), firstTrailingBit(firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 19826u), arg_0.xy, vec2<u32>(44458u, arg_0.x)) >> ((vec2<u32>(42296u, arg_0.x) | vec2<u32>(arg_0.x, arg_0.x)) % vec2<u32>(32u)))));
    let var_1 = _wgslsmith_div_vec3_f32(global1.a.wzw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -670f), _wgslsmith_f_op_f32(-var_0.b.a), 925f)))));
    var var_2 = -364f;
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -322f);
    var var_3 = var_0.b.b.b.ww;
    return Struct_2(true, min(vec4<i32>(1i, 2147483647i, abs(-2147483647i), ~_wgslsmith_add_i32(u_input.b, global0.x)), -firstTrailingBit(~global2.b.b)), select(global1.c.yy, var_0.b.e.c.zz, select(vec2<bool>(true == global1.c.x, all(vec3<bool>(true, false, var_0.b.e.c.x))), vec2<bool>(false, global2.e.c.x), false)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1484f * 1362f) * global2.e.a.x))), func_2(((vec4<u32>(4294967295u, 4294967295u, u_input.c.x, u_input.a) & vec4<u32>(u_input.c.x, 4585u, u_input.a, 9330u)) << (firstTrailingBit(vec4<u32>(4294967295u, 51019u, u_input.c.x, 990u)) % vec4<u32>(32u))) ^ vec4<u32>(func_1(u_input.a), _wgslsmith_div_u32(13115u, u_input.a), countOneBits(u_input.a), ~u_input.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1113f, 186f)))))), func_2(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(0u, u_input.c.x, 92221u, u_input.a), vec4<u32>(107638u, u_input.a, 63207u, u_input.a), true), ~vec4<u32>(0u, u_input.a, 0u, u_input.a)), ~(~vec4<u32>(33038u, 117159u, u_input.c.x, 31002u)), max(firstTrailingBit(vec4<u32>(4294967295u, 41314u, u_input.a, u_input.a)), vec4<u32>(u_input.a, 62026u, 0u, 43256u)))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global1.a))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(global2.e.a)), vec4<f32>(global1.a.x, -1555f, global2.a, -678f)))), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(global0.x, u_input.b), -1i >> (u_input.a % 32u)), vec2<i32>(global1.b.x >> (u_input.a % 32u), -15465i)), global1.c));
    var var_0 = Struct_5(global2.e.a.yxz, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1778f) * global2.e.a.x), Struct_2(!(41839i > global2.e.b.x), global2.b.b, !global2.b.c), vec2<f32>(1533f, 1146f), Struct_2(true, global2.d.b, vec2<bool>(!global2.d.c.x, all(vec2<bool>(false, global2.e.c.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1.a, global2.e.a)), global0.xx, select(!vec3<bool>(global2.d.c.x, false, global1.c.x), vec3<bool>(global1.c.x, true, false), global1.c.x))), u_input.c);
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global1.a))), vec2<i32>(var_0.b.d.b.x, -2147483647i), !(!select(select(vec3<bool>(global2.e.c.x, false, global1.c.x), vec3<bool>(global2.d.c.x, false, false), vec3<bool>(global1.c.x, false, var_0.b.b.a)), select(vec3<bool>(true, true, false), global2.e.c, var_0.b.e.c), true)));
    var var_1 = vec3<bool>(!(!all(vec4<bool>(var_0.b.e.c.x, false, global2.e.c.x, true))), !(!(var_0.b.e.a.x > _wgslsmith_f_op_f32(408f * global2.c.x))), _wgslsmith_clamp_i32(~firstTrailingBit(u_input.b), _wgslsmith_sub_i32(1i, ~10389i), -43001i) < -7673i);
    global1 = global2.e;
    let x = u_input.a;
    s_output = StorageBuffer(-(~var_0.b.d.b.x), ~u_input.c.x, global1.b.x, ~(~_wgslsmith_add_u32(46562u, 71274u)));
}

