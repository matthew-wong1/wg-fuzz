struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 18>;

var<private> global1: Struct_4 = Struct_4(vec4<i32>(i32(-2147483648), 20166i, 15456i, -24683i), Struct_3(vec2<f32>(1089f, 233f), vec3<bool>(true, false, true), Struct_2(671f), false));

var<private> global2: vec4<f32> = vec4<f32>(-818f, 1255f, 1000f, -221f);

var<private> global3: vec4<bool>;

var<private> global4: array<f32, 6>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = global1.b.c;
    var var_1 = Struct_2(global2.x);
    var var_2 = true;
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(355f, -1000f, -1428f, global4[_wgslsmith_index_u32(0u, 6u)]) - vec4<f32>(-433f, 921f, var_1.a, 1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1751f, -1406f, global2.x, global4[_wgslsmith_index_u32(4294967295u, 6u)]), vec4<f32>(-332f, var_0.a, 513f, 774f))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.b.a.x, global2.x, 861f, global2.x), vec4<f32>(-1625f, global4[_wgslsmith_index_u32(u_input.b, 6u)], global1.b.c.a, 532f))))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -816f), -1011f, _wgslsmith_f_op_f32(-global1.b.a.x), _wgslsmith_f_op_f32(max(-239f, -365f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1378f, global4[_wgslsmith_index_u32(u_input.d, 6u)], global4[_wgslsmith_index_u32(52730u, 6u)], -1496f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, global1.b.c.a, var_0.a, global4[_wgslsmith_index_u32(u_input.d, 6u)]) + vec4<f32>(global1.b.a.x, var_0.a, global1.b.c.a, -100f)))))));
    var var_3 = Struct_1(18743i & ~(-global1.a.x));
    return var_3.a;
}

fn func_2() -> vec4<bool> {
    let var_0 = _wgslsmith_div_vec4_u32(reverseBits(~(~(~vec4<u32>(u_input.b, 4294967295u, u_input.d, 44130u)))), ~(~reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 4294967295u, 17995u, 34108u), vec4<u32>(u_input.d, u_input.a, u_input.b, 0u)))));
    let var_1 = select(vec4<bool>(all(select(select(vec4<bool>(global1.b.b.x, global1.b.d, global3.x, true), vec4<bool>(false, true, global3.x, false), global3.x), !vec4<bool>(false, global3.x, global1.b.d, false), global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.a, 6u)] - global4[_wgslsmith_index_u32(u_input.d, 6u)]) + _wgslsmith_f_op_f32(982f + 1347f)) <= -914f, !(!global3.x), global1.b.b.x), select(!vec4<bool>(any(global3.yxx), !global3.x, all(global3.yzw), global3.x), !vec4<bool>(global1.b.d, global3.x | false, true, global1.b.b.x && true), vec4<bool>(global3.x, firstTrailingBit(-565i) > global1.a.x, false, _wgslsmith_clamp_i32(u_input.c, u_input.c, u_input.c) == u_input.c)), !(!global3.x));
    var var_2 = Struct_1(_wgslsmith_mult_i32((u_input.c << (u_input.d % 32u)) >> (u_input.b % 32u), global1.a.x) ^ -12664i);
    let var_3 = u_input.b;
    global1 = Struct_4(vec4<i32>(func_3(), 1i, func_3() & global1.a.x, global1.a.x | _wgslsmith_mod_i32(1i, var_2.a)), Struct_3(_wgslsmith_f_op_vec2_f32(-global1.b.a), vec3<bool>(any(select(var_1, vec4<bool>(var_1.x, false, true, true), vec4<bool>(var_1.x, true, var_1.x, var_1.x))), var_1.x, any(var_1.yz)), Struct_2(_wgslsmith_f_op_f32(-1301f + _wgslsmith_f_op_f32(f32(-1f) * -1492f))), global3.x));
    return var_1;
}

fn func_4(arg_0: vec4<bool>) -> i32 {
    var var_0 = _wgslsmith_dot_vec4_i32(~global1.a << (~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(40597u, 4294967295u, 0u, u_input.d), vec4<u32>(u_input.a, u_input.a, 1u, u_input.d)), abs(vec4<u32>(55713u, u_input.d, 1u, 0u))) % vec4<u32>(32u)), abs(vec4<i32>(-1i) * -(~global1.a)));
    let var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global2.yzz), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(58598u, 6u)]) - _wgslsmith_f_op_f32(-global1.b.c.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1423f, global1.b.c.a) + _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 6u)])), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.b.c.a), _wgslsmith_f_op_f32(-648f + 1504f), true))))), -global1.a.yx);
    var var_2 = global1.a.zwz >> (global0[_wgslsmith_index_u32(u_input.d, 18u)] % vec3<u32>(32u));
    let var_3 = abs(_wgslsmith_add_vec2_u32(min(vec2<u32>(u_input.d, 16513u), vec2<u32>(49973u, ~1u)), firstTrailingBit(~vec2<u32>(1u, 56697u) | firstLeadingBit(vec2<u32>(u_input.d, u_input.d)))));
    let var_4 = var_1;
    return abs(-2147483647i);
}

fn func_1(arg_0: Struct_5) -> vec4<i32> {
    var var_0 = select(~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), -vec2<i32>(-1i, -1i)), _wgslsmith_mod_i32(func_4(func_2()), (arg_0.b.x >> (~1u % 32u)) << (min(u_input.d, 1u) % 32u)), global1.b.d || global1.b.d);
    let var_1 = Struct_1(i32(-1i) * -2147483647i);
    var var_2 = vec4<i32>(var_1.a ^ arg_0.b.x, -(arg_0.b.x << (~1u % 32u)), max(1i, ~0i) & arg_0.b.x, var_1.a);
    global2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.x, global2.x))))), 882f), global1.b.a.x, 759f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-713f * global1.b.c.a) + _wgslsmith_f_op_f32(596f + global4[_wgslsmith_index_u32(u_input.b, 6u)])) + -195f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, arg_0.a.x) * -176f)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global4[_wgslsmith_index_u32(firstTrailingBit(~firstLeadingBit(1u)), 6u)], _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global2.x, -550f), 336f)), global1.b.c.a, 1696f)));
    return -vec4<i32>(i32(-1i) * -firstTrailingBit(arg_0.b.x), -_wgslsmith_mod_i32(-21757i, -24815i), var_2.x, reverseBits(~firstLeadingBit(3941i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a.wzz;
    let var_1 = countOneBits(_wgslsmith_sub_vec3_i32(min(_wgslsmith_mult_vec3_i32(~global1.a.yyz, global1.a.wwz), _wgslsmith_sub_vec3_i32(global1.a.wzy >> (vec3<u32>(0u, u_input.b, u_input.d) % vec3<u32>(32u)), global1.a.yyz << (global0[_wgslsmith_index_u32(0u, 18u)] % vec3<u32>(32u)))), vec3<i32>(select(global1.a.x, var_0.x | -1i, select(false, global3.x, global1.b.b.x)), abs(select(u_input.c, var_0.x, true)), -u_input.c)));
    var var_2 = u_input.c;
    global1 = Struct_4(_wgslsmith_div_vec4_i32(func_1(Struct_5(_wgslsmith_f_op_vec3_f32(select(global2.xzx, vec3<f32>(-115f, global4[_wgslsmith_index_u32(u_input.a, 6u)], global4[_wgslsmith_index_u32(0u, 6u)]), global3.x)), var_1.yz & global1.a.yy)), func_1(Struct_5(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-497f, 380f, global4[_wgslsmith_index_u32(u_input.b, 6u)]), vec3<f32>(global2.x, global2.x, global2.x))), vec2<i32>(global1.a.x, -1i)))), Struct_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global4[_wgslsmith_index_u32(u_input.d, 6u)]) - vec2<f32>(global4[_wgslsmith_index_u32(u_input.b, 6u)], -3012f))), vec2<f32>(global1.b.a.x, _wgslsmith_f_op_f32(-1200f * global4[_wgslsmith_index_u32(1u, 6u)])))), global1.b.b, global1.b.c, !global3.x));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.xw - global2.wy));
    var var_4 = u_input.a;
    var var_5 = Struct_1(~countOneBits(~1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1079f, global4[_wgslsmith_index_u32(13162u, 6u)], -1245f, global4[_wgslsmith_index_u32(u_input.d, 6u)]), vec4<f32>(1000f, global1.b.c.a, var_3.x, 360f))) - vec4<f32>(-184f, global1.b.a.x, 324f, 970f))))), u_input.d, -(~(-var_1.yy << (reverseBits(vec2<u32>(u_input.b, u_input.a)) % vec2<u32>(32u)))), vec3<f32>(_wgslsmith_f_op_f32(-global2.x), -1334f, _wgslsmith_f_op_f32(max(1000f, var_3.x))));
}

