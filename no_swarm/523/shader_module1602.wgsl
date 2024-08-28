struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(1i, vec3<f32>(1000f, -230f, 1319f)), Struct_1(0i, vec3<f32>(-151f, -451f, -126f)), Struct_1(1i, vec3<f32>(-214f, -2213f, -809f)), Struct_1(2147483647i, vec3<f32>(869f, -321f, -429f)), Struct_1(-1i, vec3<f32>(1630f, -425f, 1000f)), Struct_1(18896i, vec3<f32>(-1012f, 1000f, -2782f)), Struct_1(2147483647i, vec3<f32>(1352f, 510f, 1006f)), Struct_1(16825i, vec3<f32>(1171f, 1166f, 1000f)));

var<private> global3: vec2<u32> = vec2<u32>(43352u, 39931u);

var<private> global4: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(2147483647i, vec3<f32>(-1014f, -1652f, 1000f)), Struct_1(i32(-2147483648), vec3<f32>(-1246f, 1646f, -1333f)), Struct_1(27814i, vec3<f32>(1588f, 604f, 1000f)), Struct_1(i32(-2147483648), vec3<f32>(-1194f, 313f, -2024f)), Struct_1(-8490i, vec3<f32>(-2503f, 2070f, 249f)), Struct_1(22128i, vec3<f32>(-2152f, -1878f, -647f)), Struct_1(-36468i, vec3<f32>(721f, 142f, 1407f)), Struct_1(0i, vec3<f32>(1156f, -1718f, 498f)), Struct_1(31341i, vec3<f32>(127f, -848f, 353f)), Struct_1(i32(-2147483648), vec3<f32>(882f, 1000f, 177f)), Struct_1(-23648i, vec3<f32>(-1096f, -666f, -416f)), Struct_1(-5788i, vec3<f32>(420f, -272f, 1013f)), Struct_1(0i, vec3<f32>(1531f, 345f, -1000f)), Struct_1(8077i, vec3<f32>(1381f, 493f, 1000f)), Struct_1(2147483647i, vec3<f32>(-481f, 144f, 440f)), Struct_1(i32(-2147483648), vec3<f32>(-679f, -1000f, -881f)), Struct_1(31492i, vec3<f32>(1000f, -1855f, 190f)), Struct_1(19252i, vec3<f32>(-850f, 708f, -483f)), Struct_1(0i, vec3<f32>(1044f, -414f, 1488f)), Struct_1(-62323i, vec3<f32>(-841f, 1292f, 332f)), Struct_1(i32(-2147483648), vec3<f32>(-1914f, 1132f, -1420f)), Struct_1(41419i, vec3<f32>(1334f, 856f, -185f)), Struct_1(-17050i, vec3<f32>(115f, -470f, 1348f)), Struct_1(2907i, vec3<f32>(-611f, 223f, -697f)), Struct_1(0i, vec3<f32>(-940f, -597f, -1355f)), Struct_1(0i, vec3<f32>(137f, -1222f, 710f)), Struct_1(i32(-2147483648), vec3<f32>(-437f, -169f, 2406f)), Struct_1(-1i, vec3<f32>(-820f, 1000f, 131f)), Struct_1(8769i, vec3<f32>(-460f, -275f, -462f)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_mod_vec2_u32(firstTrailingBit(_wgslsmith_sub_vec2_u32(max(vec2<u32>(1u, 0u), vec2<u32>(global3.x, 44056u)), vec2<u32>(0u, arg_1))), vec2<u32>(~arg_1, global3.x) << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))) ^ select(~_wgslsmith_mod_vec2_u32(vec2<u32>(global3.x, 48415u), vec2<u32>(39218u, arg_1)) | abs(vec2<u32>(global3.x, 4294967295u)), _wgslsmith_sub_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(global3.x, 0u), vec2<u32>(arg_1, arg_1)), _wgslsmith_add_vec2_u32(abs(vec2<u32>(arg_1, arg_1)), max(vec2<u32>(arg_1, 4294967295u), vec2<u32>(global3.x, global3.x)))), select(!(!vec2<bool>(global0[_wgslsmith_index_u32(26831u, 4u)], global0[_wgslsmith_index_u32(21792u, 4u)])), select(vec2<bool>(global0[_wgslsmith_index_u32(86998u, 4u)], global0[_wgslsmith_index_u32(global3.x, 4u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(global3.x, 4u)], true), vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(arg_1, 4u)], true)), global0[_wgslsmith_index_u32(~global3.x, 4u)]), select(select(vec2<bool>(global0[_wgslsmith_index_u32(global3.x, 4u)], global0[_wgslsmith_index_u32(2716u, 4u)]), vec2<bool>(global0[_wgslsmith_index_u32(arg_1, 4u)], global0[_wgslsmith_index_u32(arg_1, 4u)]), false), select(vec2<bool>(false, false), vec2<bool>(false, global0[_wgslsmith_index_u32(arg_1, 4u)]), true), !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], false))));
    var var_1 = arg_2;
    let var_2 = Struct_1(-7841i, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(step(arg_2.b.x, var_1.b.x)))), 184f));
    global3 = abs(firstLeadingBit(firstTrailingBit(abs(vec2<u32>(global3.x, 4294967295u)))));
    global0 = array<bool, 4>();
    return 30033u;
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: u32) -> vec4<i32> {
    global4 = array<Struct_1, 29>();
    global1 = u_input.a;
    global3 = max(vec2<u32>(~_wgslsmith_add_u32(func_3(-660f, arg_1.x, Struct_1(global1.x, vec3<f32>(878f, -733f, 873f))), global3.x), arg_1.x), reverseBits(arg_1.xy));
    let var_0 = arg_1.x | firstTrailingBit(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, arg_1.x), vec3<u32>(0u, global3.x, 8650u)), vec3<u32>(min(4294967295u, 4294967295u), _wgslsmith_sub_u32(global3.x, global3.x), _wgslsmith_mult_u32(27976u, 36822u))));
    let var_1 = vec2<u32>(33402u, var_0) >> (arg_1.wz % vec2<u32>(32u));
    return max(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, 3799i) ^ vec4<i32>(-1i, u_input.a.x, global1.x, u_input.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 1i, global1.x, 18135i), vec4<i32>(global1.x, -2147483647i, 21764i, u_input.a.x), vec4<i32>(15645i, u_input.a.x, -15172i, u_input.a.x))), -vec4<i32>(0i, u_input.a.x, 2147483647i, global1.x) << (_wgslsmith_mod_vec4_u32(arg_1, arg_1) % vec4<u32>(32u))) | vec4<i32>(1i, global1.x, -1i, -1i), _wgslsmith_add_vec4_i32(vec4<i32>(global1.x, abs(u_input.a.x), -(~u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 88611i), u_input.a.zy) >> (arg_2 % 32u)), vec4<i32>(_wgslsmith_add_i32(u_input.a.x, -26474i), u_input.a.x, global1.x, 1i) << (min(vec4<u32>(global3.x, global3.x, 60039u, 1u) ^ arg_1, ~arg_1) % vec4<u32>(32u))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_div_u32(38561u, global3.x), firstLeadingBit(global3.x), _wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, countOneBits(4294967295u)), ~(~1u))));
    var var_1 = ~(_wgslsmith_sub_u32(~(~53185u), ~(36505u >> (global3.x % 32u))) << (global3.x % 32u));
    let var_2 = ~(func_2(!(!global0[_wgslsmith_index_u32(global3.x, 4u)]), _wgslsmith_div_vec4_u32(~vec4<u32>(global3.x, global3.x, global3.x, global3.x), vec4<u32>(4294967295u, global3.x, 45241u, global3.x) | vec4<u32>(global3.x, global3.x, global3.x, 4294967295u)), abs(firstTrailingBit(4294967295u))) >> ((~vec4<u32>(25227u, 33386u, 11185u, 1u) << (vec4<u32>(countOneBits(4294967295u), abs(10358u), global3.x, _wgslsmith_div_u32(global3.x, global3.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_3 = ~(~select(~(~vec4<u32>(global3.x, 4294967295u, global3.x, global3.x)), _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(global3.x, global3.x, 4294967295u, global3.x)), select(vec4<u32>(15781u, 1u, global3.x, global3.x), vec4<u32>(0u, 79784u, global3.x, 26423u), true), vec4<u32>(420u, global3.x, global3.x, global3.x)), global0[_wgslsmith_index_u32(firstLeadingBit(79096u), 4u)]));
    let var_4 = _wgslsmith_mult_vec2_i32(-(countOneBits(vec2<i32>(-12778i, u_input.a.x)) >> (vec2<u32>(var_3.x, 72702u) % vec2<u32>(32u))), select(vec2<i32>(-(~1i), 0i), u_input.a.xy, (func_3(arg_2, var_3.x, Struct_1(2147483647i, vec3<f32>(-737f, arg_1.b.x, arg_0.b.x))) & _wgslsmith_add_u32(var_3.x, global3.x)) == _wgslsmith_add_u32(_wgslsmith_div_u32(20729u, 2706u), min(1u, 4294967295u))));
    return global3.x;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> Struct_1 {
    global0 = array<bool, 4>();
    let var_0 = Struct_1(-u_input.a.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_0.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0.b, arg_0.b, vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], true, true))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2082f, arg_0.b.x, 1725f)))) * arg_0.b)));
    global0 = array<bool, 4>();
    var var_1 = -u_input.a;
    let var_2 = Struct_1(_wgslsmith_add_i32(select(arg_0.a, -1i, select(false, all(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 4u)], false, true)), false != arg_2)), ~(func_2(false, vec4<u32>(global3.x, arg_1, 4294967295u, global3.x), 37068u).x ^ var_1.x)), arg_0.b);
    return var_0;
}

fn func_5(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.b.x)) + _wgslsmith_f_op_f32(arg_0.b.x * arg_0.b.x)), 1305f));
    let var_1 = vec4<i32>(13818i, abs(37866i), reverseBits(countOneBits(2147483647i)), global1.x);
    var var_2 = arg_0.b.x;
    var var_3 = min(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(~(~vec3<u32>(global3.x, global3.x, global3.x)), ~select(vec3<u32>(global3.x, global3.x, global3.x), vec3<u32>(global3.x, 71401u, 1u), global0[_wgslsmith_index_u32(0u, 4u)])), firstLeadingBit(min(vec3<u32>(global3.x, global3.x, 1u), vec3<u32>(0u, 49941u, 1u))) >> (_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, global3.x, global3.x), vec3<u32>(4294967295u, global3.x, 4294967295u) | vec3<u32>(18115u, 1u, 51072u), ~vec3<u32>(21921u, global3.x, global3.x)) % vec3<u32>(32u))), ~max(vec3<u32>(~79763u, select(55786u, global3.x, global0[_wgslsmith_index_u32(global3.x, 4u)]), ~0u), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 89456u), vec2<u32>(0u, 27683u)), 0u ^ global3.x, 33374u)));
    let var_4 = global1.x;
    return _wgslsmith_mult_u32(abs(select(~var_3.x, var_3.x, true)), 45929u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 4>();
    global0 = array<bool, 4>();
    global2 = array<Struct_1, 8>();
    global4 = array<Struct_1, 29>();
    global3 = ~_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 25320u) << (select(~vec2<u32>(global3.x, global3.x), max(vec2<u32>(global3.x, 37365u), vec2<u32>(0u, global3.x)), true) % vec2<u32>(32u)), ~vec2<u32>(global3.x, _wgslsmith_mult_u32(global3.x, global3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f)))), func_5(func_4(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(~32456u, func_1(Struct_1(27808i, vec3<f32>(711f, -766f, 880f)), Struct_1(8646i, vec3<f32>(-761f, -2021f, 452f)), 863f)), 29u)], 111676u, any(vec2<bool>(global0[_wgslsmith_index_u32(57568u, 4u)], global0[_wgslsmith_index_u32(29796u, 4u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-937f)), 1000f, _wgslsmith_f_op_f32(round(1369f)), 1864f)) + vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-229f + 590f), _wgslsmith_f_op_f32(258f * -554f), global0[_wgslsmith_index_u32(global3.x, 4u)])), _wgslsmith_f_op_f32(f32(-1f) * -337f), 1651f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-750f * 1125f), _wgslsmith_f_op_f32(ceil(753f))))), _wgslsmith_mult_i32(-1i, -_wgslsmith_div_i32(0i, -6441i)), abs(~u_input.a));
}

