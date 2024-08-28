struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec2<bool>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: vec4<f32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true);

var<private> global1: vec2<u32> = vec2<u32>(1u, 2719u);

var<private> global2: array<u32, 5> = array<u32, 5>(2838u, 4294967295u, 0u, 0u, 6390u);

var<private> global3: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false));

var<private> global4: array<vec2<f32>, 17> = array<vec2<f32>, 17>(vec2<f32>(242f, 109f), vec2<f32>(1000f, 485f), vec2<f32>(838f, 1231f), vec2<f32>(-127f, -892f), vec2<f32>(1839f, -895f), vec2<f32>(723f, -1650f), vec2<f32>(-1049f, 1000f), vec2<f32>(-178f, -1771f), vec2<f32>(1000f, 728f), vec2<f32>(696f, 220f), vec2<f32>(373f, -373f), vec2<f32>(-2867f, -1048f), vec2<f32>(-356f, -755f), vec2<f32>(1101f, 600f), vec2<f32>(825f, 398f), vec2<f32>(121f, -150f), vec2<f32>(742f, 1523f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: Struct_5, arg_1: f32, arg_2: vec3<bool>) -> Struct_1 {
    global3 = array<vec3<bool>, 8>();
    global1 = arg_0.a;
    var var_0 = -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, -max(2147483647i, u_input.b), ~u_input.b, u_input.b), ~(vec4<i32>(-1i) * -vec4<i32>(u_input.a, -22434i, 1i, 37128i)), ~(~(~vec4<i32>(-22516i, 45177i, u_input.a, 1i))));
    var var_1 = Struct_4(Struct_1(arg_0.b.x), _wgslsmith_mod_u32(arg_0.a.x, arg_0.a.x), global2[_wgslsmith_index_u32(select(1u, ~(global1.x | 29132u), any(vec2<bool>(arg_2.x, false)) && (false && global0.a)), 5u)] ^ ~_wgslsmith_sub_u32(global1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global2[_wgslsmith_index_u32(20552u, 5u)]), arg_0.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, -513f, arg_1, 754f))))) + vec4<f32>(_wgslsmith_f_op_f32(303f * -1272f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * arg_1) - -1964f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2289f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1))))));
    var var_2 = true;
    return Struct_1(all(!(!(!arg_0.b))));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_2) -> f32 {
    var var_0 = reverseBits(~(~vec3<u32>(arg_3.d, global1.x, global1.x) ^ ~_wgslsmith_clamp_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0, 5u)], 5u)], 19388u, 0u), vec3<u32>(arg_0, 62313u, 45911u), vec3<u32>(arg_1.d, 4294967295u, arg_0))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-944f, _wgslsmith_div_f32(-2014f, -584f))) - _wgslsmith_f_op_f32(select(141f, _wgslsmith_f_op_f32(abs(1193f)), true)))));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: f32, arg_3: Struct_2) -> u32 {
    global2 = array<u32, 5>();
    let var_0 = -2043f;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-326f * -268f) - -1630f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-230f)))))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -973f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-880f, arg_0)), arg_0)))));
    let var_3 = Struct_4(arg_3.b, 1u, ~(~47889u), vec4<f32>(arg_0, arg_2, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-546f)), 186f)), arg_2));
    return ~_wgslsmith_mod_u32(var_3.b, ~(arg_1.b >> (~arg_3.d % 32u)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: vec3<bool>) -> bool {
    global4 = array<vec2<f32>, 17>();
    var var_0 = func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(arg_1.x, Struct_2(func_2(Struct_5(arg_1.xz, arg_3.xx), 1000f, arg_3), Struct_1(global0.a), func_2(Struct_5(arg_1.xz, vec2<bool>(arg_3.x, arg_3.x)), -1278f, vec3<bool>(false, arg_3.x, global0.a)), _wgslsmith_add_u32(arg_1.x, arg_1.x)), !arg_3.xx, Struct_2(Struct_1(global0.a), Struct_1(arg_3.x), Struct_1(false), global2[_wgslsmith_index_u32(reverseBits(arg_1.x), 5u)]))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) - -563f))))), Struct_3(true, ~(~global1.x), arg_3.zz, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-5487i, u_input.a, 0i, u_input.a), vec4<i32>(1i, ~(-1i), abs(u_input.a), u_input.b))), -586f, Struct_2(func_2(Struct_5(arg_2.wy, select(vec2<bool>(global0.a, global0.a), arg_3.yx, vec2<bool>(global0.a, false))), arg_0.x, !(!global3[_wgslsmith_index_u32(37193u, 8u)])), func_2(Struct_5(vec2<u32>(global1.x, global2[_wgslsmith_index_u32(arg_2.x, 5u)]) >> (vec2<u32>(1u, 28961u) % vec2<u32>(32u)), arg_3.yz), 951f, arg_3), func_2(Struct_5(abs(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(185u, 5u)], 5u)], global1.x)), select(arg_3.xx, arg_3.xz, false)), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(func_3(arg_1.x, Struct_2(Struct_1(false), Struct_1(true), Struct_1(true), global1.x), arg_3.yy, Struct_2(Struct_1(false), Struct_1(true), Struct_1(true), 4294967295u)))), !select(global3[_wgslsmith_index_u32(4294967295u, 8u)], global3[_wgslsmith_index_u32(global1.x, 8u)], false)), arg_2.x));
    let var_1 = Struct_2(func_2(Struct_5(max(vec2<u32>(arg_2.x, arg_2.x), vec2<u32>(25384u, 80430u)) ^ ~vec2<u32>(36982u, arg_2.x), !(!vec2<bool>(arg_3.x, false))), -181f, select(select(!arg_3, select(global3[_wgslsmith_index_u32(4294967295u, 8u)], vec3<bool>(true, true, false), vec3<bool>(false, true, global0.a)), select(vec3<bool>(true, global0.a, false), vec3<bool>(true, false, false), vec3<bool>(false, arg_3.x, global0.a))), !arg_3, any(arg_3.zz))), Struct_1(global0.a), func_2(Struct_5(~arg_2.ww, arg_3.zx), -973f, vec3<bool>(true, arg_3.x, arg_3.x)), ~arg_1.x);
    global1 = arg_2.zx;
    var var_2 = any(vec2<bool>(false, global2[_wgslsmith_index_u32(countOneBits(~12733u), 5u)] <= (arg_2.x << (~51384u % 32u))));
    return all(!select(select(vec2<bool>(var_1.a.a, false), select(vec2<bool>(arg_3.x, arg_3.x), arg_3.zz, vec2<bool>(arg_3.x, global0.a)), arg_3.yy), select(vec2<bool>(true, arg_3.x), !arg_3.yz, all(vec4<bool>(true, true, false, var_1.c.a))), global0.a));
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: vec4<u32>, arg_3: i32) -> Struct_3 {
    global0 = Struct_1(true);
    var var_0 = select(~reverseBits(vec3<u32>(_wgslsmith_mult_u32(19906u, 1u), _wgslsmith_add_u32(62901u, arg_0.b), ~global2[_wgslsmith_index_u32(40870u, 5u)])), vec3<u32>(0u, global2[_wgslsmith_index_u32(~(global1.x << (33173u % 32u)), 5u)] >> (select(select(arg_2.x, global2[_wgslsmith_index_u32(arg_2.x, 5u)], arg_0.a), ~59927u, true) % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(arg_2, vec4<u32>(1u, global1.x, 110971u, 1u)), arg_2), vec4<u32>(~arg_0.b, 1u, 4294967295u << (arg_0.b % 32u), arg_0.b))), select(select(select(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17515u, 5u)] ^ arg_2.x, 8u)], !vec3<bool>(arg_0.a, false, global0.a), global3[_wgslsmith_index_u32(func_4(arg_0.d, Struct_3(global0.a, arg_2.x, arg_0.c, arg_0.d, vec4<i32>(u_input.b, arg_3, -21902i, arg_0.e.x)), arg_0.d, Struct_2(Struct_1(global0.a), Struct_1(global0.a), Struct_1(global0.a), global1.x)), 8u)]), !(!global3[_wgslsmith_index_u32(0u, 8u)]), arg_0.c.x), select(!(!vec3<bool>(false, true, arg_0.a)), global3[_wgslsmith_index_u32(1u, 8u)], any(!vec4<bool>(global0.a, true, false, arg_0.a))), true));
    let var_1 = 2147483647i;
    var var_2 = false;
    let var_3 = Struct_1(true);
    return Struct_3(countOneBits(90796u) < ~arg_0.b, ~1u, select(arg_0.c, arg_0.c, vec2<bool>(true, true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + arg_0.d) + _wgslsmith_f_op_f32(f32(-1f) * -485f)))))), vec4<i32>(min(firstLeadingBit(-60334i), ~abs(arg_3)), -1i, _wgslsmith_mod_i32(-7745i, _wgslsmith_mult_i32(select(1i, arg_3, false), 1i)), 27999i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(~vec2<u32>(max(0u, 79115u), 0u >> (~global1.x % 32u)));
    let var_0 = func_5(Struct_3(!global0.a, global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, 24041u, 34436u), vec3<u32>(0u, 19623u, 18238u)), vec3<u32>(1u, 4294967295u, global1.x) >> (vec3<u32>(31768u, global2[_wgslsmith_index_u32(6205u, 5u)], global1.x) % vec3<u32>(32u))), 5u)], select(vec2<bool>(func_1(vec2<f32>(1209f, 1056f), vec3<u32>(56765u, global1.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 5u)], 5u)]), vec4<u32>(0u, global1.x, 6151u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.x, 5u)], 5u)], 5u)]), global3[_wgslsmith_index_u32(1u, 8u)]), true), !vec2<bool>(global0.a, true), vec2<bool>(global0.a, !global0.a)), 809f, select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b), -vec4<i32>(u_input.b, -48693i, u_input.a, -2147483647i), vec4<i32>(-1i, u_input.a, 2147483647i, 45104i)), max(max(vec4<i32>(-2147483647i, u_input.a, -21213i, u_input.a), vec4<i32>(2147483647i, -23997i, u_input.a, 1i)), vec4<i32>(-11162i, u_input.a, -2338i, u_input.a)), true)), u_input.b, vec4<u32>(1u, global2[_wgslsmith_index_u32(global1.x, 5u)], _wgslsmith_mult_u32(global1.x & global1.x, _wgslsmith_div_u32(global2[_wgslsmith_index_u32(34252u, 5u)], 0u)), abs(_wgslsmith_sub_u32(4294967295u, 27177u))) & abs(vec4<u32>(0u, global2[_wgslsmith_index_u32(4188u, 5u)] >> (global1.x % 32u), _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(42557u, 5u)], 2647u), _wgslsmith_div_u32(0u, global1.x))), -7452i);
    global0 = Struct_1(func_1(global4[_wgslsmith_index_u32(~_wgslsmith_div_u32(max(33942u, var_0.b), ~1u), 17u)], vec3<u32>(_wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(4294967295u, 5u)], 0u), _wgslsmith_add_u32(reverseBits(26635u), global2[_wgslsmith_index_u32(~1u, 5u)]), global1.x), ~vec4<u32>(global1.x, 2790u, 98681u, var_0.b) << (vec4<u32>(~var_0.b, _wgslsmith_div_u32(4012u, var_0.b), 4294967295u, 4294967295u) % vec4<u32>(32u)), global3[_wgslsmith_index_u32(41094u, 8u)]));
    var var_1 = func_2(Struct_5(max(~vec2<u32>(global1.x, 8231u), select(vec2<u32>(43766u, global2[_wgslsmith_index_u32(1u, 5u)]), min(vec2<u32>(1u, global1.x), vec2<u32>(4294967295u, 0u)), !var_0.c)), func_5(Struct_3(all(global3[_wgslsmith_index_u32(1u, 8u)]), global2[_wgslsmith_index_u32(global1.x, 5u)], select(vec2<bool>(var_0.a, global0.a), var_0.c, global0.a), 1000f, -var_0.e), max(-37807i, 5734i), ~vec4<u32>(var_0.b, global2[_wgslsmith_index_u32(11715u, 5u)], var_0.b, global2[_wgslsmith_index_u32(86130u, 5u)]) ^ _wgslsmith_add_vec4_u32(vec4<u32>(54246u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14191u, 5u)], 5u)], 5u)], 44449u, 37564u), vec4<u32>(104237u, 90389u, 4294967295u, 1u)), 1i).c), _wgslsmith_f_op_f32(floor(var_0.d)), select(global3[_wgslsmith_index_u32(firstLeadingBit(min(0u, var_0.b)), 8u)], select(!(!global3[_wgslsmith_index_u32(var_0.b, 8u)]), global3[_wgslsmith_index_u32(countOneBits(~7194u), 8u)], func_1(vec2<f32>(var_0.d, var_0.d), ~vec3<u32>(var_0.b, var_0.b, var_0.b), ~vec4<u32>(var_0.b, global1.x, 37547u, 31590u), global3[_wgslsmith_index_u32(45621u & global1.x, 8u)])), !select(!global3[_wgslsmith_index_u32(global1.x, 8u)], !vec3<bool>(global0.a, var_0.c.x, global0.a), global3[_wgslsmith_index_u32(0u << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 5u)], 5u)] % 32u), 8u)])));
    let var_2 = var_0.e.xyx | vec3<i32>(~var_0.e.x ^ 0i, ~abs(min(31491i, u_input.a)), -abs(-16390i ^ var_0.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~(~_wgslsmith_add_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(10434u, 5u)], 11626u, 0u), vec3<u32>(var_0.b, global1.x, var_0.b))), _wgslsmith_f_op_f32(-var_0.d), var_0.b, _wgslsmith_mult_vec2_i32(-vec2<i32>(reverseBits(2147483647i), -1i ^ u_input.b), vec2<i32>(select(u_input.a, var_2.x, false), _wgslsmith_sub_i32(var_0.e.x, 1i)) << (vec2<u32>(~var_0.b, 4294967295u & var_0.b) % vec2<u32>(32u))));
}

