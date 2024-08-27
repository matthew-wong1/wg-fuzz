struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: f32,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(true, vec4<bool>(false, true, true, true), -1433f, vec4<i32>(-24876i, 26098i, 0i, 35464i), 1996f), Struct_1(true, vec4<bool>(true, false, false, false), 1917f, vec4<i32>(1i, -1i, i32(-2147483648), i32(-2147483648)), -907f), Struct_1(false, vec4<bool>(false, true, true, true), 337f, vec4<i32>(-1i, 60528i, 0i, 10289i), -658f), Struct_1(false, vec4<bool>(false, true, false, false), 642f, vec4<i32>(0i, 24788i, i32(-2147483648), 1i), 652f));

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

var<private> global2: vec4<f32> = vec4<f32>(368f, -1452f, -130f, 2143f);

var<private> global3: array<u32, 5> = array<u32, 5>(3564u, 4294967295u, 87740u, 2226u, 0u);

var<private> global4: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(true, vec4<bool>(false, false, true, true), -1000f, vec4<i32>(268i, 0i, 12420i, i32(-2147483648)), -264f), Struct_1(true, vec4<bool>(true, false, false, true), -1019f, vec4<i32>(19860i, -1i, -12580i, -48962i), -1420f), Struct_1(true, vec4<bool>(true, true, true, true), -424f, vec4<i32>(-8138i, i32(-2147483648), 1i, -43417i), -501f), Struct_1(true, vec4<bool>(true, true, true, false), -1032f, vec4<i32>(-4532i, 2147483647i, i32(-2147483648), -1i), -271f), Struct_1(false, vec4<bool>(true, false, false, false), -1482f, vec4<i32>(0i, 0i, -1i, -6058i), -102f), Struct_1(false, vec4<bool>(false, true, false, true), -727f, vec4<i32>(2147483647i, -24903i, -37799i, 72389i), -140f), Struct_1(false, vec4<bool>(true, true, true, false), 1020f, vec4<i32>(0i, 4672i, -26875i, -22348i), 555f), Struct_1(false, vec4<bool>(false, false, true, true), 1000f, vec4<i32>(1i, 0i, -13491i, i32(-2147483648)), 1000f), Struct_1(false, vec4<bool>(true, true, true, false), -612f, vec4<i32>(27007i, i32(-2147483648), 0i, 0i), 840f), Struct_1(true, vec4<bool>(true, true, true, true), 651f, vec4<i32>(-1i, 0i, -1969i, -1i), 334f), Struct_1(false, vec4<bool>(false, true, false, true), 1510f, vec4<i32>(-56070i, 33658i, 0i, 0i), 1177f), Struct_1(true, vec4<bool>(false, true, true, true), 681f, vec4<i32>(0i, -44356i, -41858i, -10399i), 2090f), Struct_1(false, vec4<bool>(false, false, true, true), -381f, vec4<i32>(0i, 21763i, i32(-2147483648), -24981i), 154f), Struct_1(true, vec4<bool>(true, true, false, true), -330f, vec4<i32>(-26675i, 45605i, -40370i, 24171i), -718f), Struct_1(true, vec4<bool>(true, false, true, false), 110f, vec4<i32>(i32(-2147483648), -34736i, i32(-2147483648), 288i), -2532f), Struct_1(true, vec4<bool>(true, false, true, false), 614f, vec4<i32>(0i, 18175i, 21945i, -1i), 667f), Struct_1(true, vec4<bool>(false, false, true, false), 426f, vec4<i32>(0i, 2147483647i, -41784i, 2147483647i), -1056f), Struct_1(true, vec4<bool>(true, true, false, true), 470f, vec4<i32>(-97400i, -27406i, 1i, 0i), 101f), Struct_1(false, vec4<bool>(true, false, true, false), -1049f, vec4<i32>(-26775i, 23893i, -1i, -50816i), 3139f), Struct_1(true, vec4<bool>(true, true, true, true), -995f, vec4<i32>(i32(-2147483648), 1i, -6388i, i32(-2147483648)), 173f), Struct_1(false, vec4<bool>(true, false, false, false), -1223f, vec4<i32>(-10642i, -1i, 2147483647i, 42461i), -812f), Struct_1(false, vec4<bool>(true, false, true, true), -755f, vec4<i32>(-1i, 1073i, i32(-2147483648), 41547i), 1398f), Struct_1(true, vec4<bool>(false, false, true, true), 2393f, vec4<i32>(-1i, -49382i, -9202i, -1i), 664f), Struct_1(false, vec4<bool>(false, false, false, true), 102f, vec4<i32>(0i, 80692i, 0i, 0i), -127f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec2<bool>) -> vec4<bool> {
    let var_0 = Struct_1(!(arg_0 <= firstLeadingBit(2306i)), select(vec4<bool>(all(arg_1.b), !(false | arg_2.x), arg_1.b.x, !global1.x), select(vec4<bool>(all(arg_1.b.yxz), u_input.a > u_input.b.x, true, any(arg_1.b.xwz)), arg_1.b, !(!arg_1.b)), global1.x), _wgslsmith_f_op_f32(f32(-1f) * -139f), arg_1.d, -165f);
    var var_1 = _wgslsmith_mod_i32(min(i32(-1i) * -16101i, 0i), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_1.d, vec4<i32>(-25911i, 7824i, 1961i, -1i), abs(arg_1.d)) >> (~max(vec4<u32>(u_input.a, u_input.a, 1u, u_input.b.x), vec4<u32>(u_input.c.x, u_input.c.x, 65686u, 1u)) % vec4<u32>(32u)), arg_1.d));
    global0 = array<Struct_1, 4>();
    var var_2 = 0i | arg_1.d.x;
    global1 = select(select(select(select(select(var_0.b.zyx, vec3<bool>(true, arg_2.x, false), arg_1.a), var_0.b.xzx, true), vec3<bool>(!arg_2.x, arg_1.b.x, all(vec2<bool>(global1.x, true))), _wgslsmith_add_u32(global3[_wgslsmith_index_u32(4294967295u, 5u)], u_input.b.x) > select(u_input.c.x, 1u, arg_2.x)), arg_1.b.yyx, arg_1.e == _wgslsmith_f_op_f32(min(783f, _wgslsmith_f_op_f32(sign(-614f))))), select(!var_0.b.wzw, !vec3<bool>(!arg_2.x, !arg_2.x, arg_2.x & arg_1.b.x), all(select(var_0.b.wzy, var_0.b.xxz, u_input.a > u_input.a))), select(!(!select(arg_1.b.zxy, arg_1.b.xzw, arg_1.a)), arg_1.b.zzz, !(!var_0.b.xwy)));
    return select(var_0.b, arg_1.b, select(vec4<bool>(0i < var_0.d.x, !(!arg_1.a), any(!vec4<bool>(false, arg_2.x, true, true)), !(false & arg_2.x)), vec4<bool>(true, true, true, true), false));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: u32, arg_3: f32) -> Struct_1 {
    global4 = array<Struct_1, 24>();
    global1 = !(!select(vec3<bool>(true, global1.x, false || global1.x), vec3<bool>(true, true, true), all(vec2<bool>(true, false))));
    var var_0 = Struct_1(any(select(select(select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(false, global1.x, global1.x), global1.x), select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x), global1.x), true), select(vec3<bool>(global1.x, false, true), vec3<bool>(true, true, true), true), !(-35500i >= arg_1.x))), !vec4<bool>(global1.x, any(func_3(34914i, global4[_wgslsmith_index_u32(arg_2, 24u)], global1.zy)), global1.x, true), _wgslsmith_div_f32(-1000f, -699f), _wgslsmith_add_vec4_i32(min(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 2147483647i, 0i, 21591i), vec4<i32>(-1i, arg_1.x, 3256i, 0i)), ~vec4<i32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1893i, 2147483647i, -2147483647i, arg_1.x), vec4<i32>(-17878i, 9379i, 0i, 2147483647i)), abs(vec4<i32>(9627i, 2147483647i, -2147483647i, arg_1.x)))), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, arg_1.x, 0i) >> (vec4<u32>(arg_2, 138612u, u_input.a, 4294967295u) % vec4<u32>(32u)), vec4<i32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), abs(vec4<i32>(-2147483647i, 5619i, arg_1.x, arg_1.x)) ^ max(vec4<i32>(1i, -1i, arg_1.x, arg_1.x), vec4<i32>(arg_1.x, arg_1.x, -64632i, arg_1.x)))), -1000f);
    return Struct_1(var_0.b.x, select(!select(select(vec4<bool>(false, global1.x, true, global1.x), vec4<bool>(true, false, false, true), global1.x), var_0.b, func_3(var_0.d.x, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(16409u, 5u)], 4u)], global1.yz)), func_3(var_0.d.x, Struct_1(var_0.b.x & false, !var_0.b, _wgslsmith_f_op_f32(round(var_0.e)), vec4<i32>(1i, arg_1.x, arg_1.x, 2147483647i), var_0.c), vec2<bool>(true, true)), global1.x), _wgslsmith_f_op_f32(trunc(global2.x)), var_0.d, -1000f);
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: bool, arg_3: i32) -> bool {
    global4 = array<Struct_1, 24>();
    var var_0 = Struct_1(all(select(vec4<bool>(true, global1.x, arg_1.x || global1.x, true), vec4<bool>(false, all(vec2<bool>(global1.x, false)), true, true), vec4<bool>(!arg_2, global1.x, false || global1.x, 0u > u_input.b.x))), vec4<bool>(false, true || any(vec2<bool>(global1.x, true)), any(arg_1), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-490f + global2.x) - 711f)), reverseBits(vec4<i32>(1i, -1i, _wgslsmith_sub_i32(i32(-1i) * -1i, arg_3), arg_3)), -520f);
    var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_div_f32(var_0.c, global2.x)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(-81899i, 2147483647i, -37180i), var_0.d.zxw, ~(-(var_0.d.www & var_0.d.zxx))), 0u, _wgslsmith_f_op_f32(f32(-1f) * -122f));
    var var_1 = func_3(-2147483647i << (u_input.b.x % 32u), Struct_1(!func_2(258f, vec3<i32>(0i, var_0.d.x, arg_3) >> (vec3<u32>(u_input.b.x, u_input.a, 0u) % vec3<u32>(32u)), 31958u, _wgslsmith_div_f32(var_0.c, -446f)).b.x, var_0.b, -171f, var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-820f)))), func_2(_wgslsmith_div_f32(global2.x, 267f), -var_0.d.www, _wgslsmith_div_u32(0u, min(u_input.c.x, u_input.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(719f, 1572f, select(false, var_0.b.x, true))), var_0.e)).b.yy);
    let var_2 = Struct_1(false, !func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), var_0.d.yxz, 0u, _wgslsmith_f_op_f32(f32(-1f) * -788f)).b, _wgslsmith_f_op_f32(min(global2.x, arg_0)), vec4<i32>(-(arg_3 << (66382u % 32u)) << (~116716u % 32u), arg_3, ~(arg_3 << (0u % 32u)) ^ (_wgslsmith_clamp_i32(arg_3, arg_3, var_0.d.x) << (u_input.b.x % 32u)), _wgslsmith_sub_i32(arg_3, ~_wgslsmith_mult_i32(arg_3, 33089i))), 719f);
    return func_3(~_wgslsmith_div_i32(reverseBits(arg_3), 42694i), func_2(299f, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-103f * 492f)), reverseBits(vec3<i32>(arg_3, 53939i, var_0.d.x)), 37757u, func_2(global2.x, ~vec3<i32>(-2147483647i, 1i, var_0.d.x), _wgslsmith_div_u32(u_input.c.x, 40462u), _wgslsmith_f_op_f32(var_0.c - arg_0)).e).d.yyx, global3[_wgslsmith_index_u32(~1u, 5u)], _wgslsmith_f_op_f32(1174f - _wgslsmith_f_op_f32(step(-704f, 392f)))), select(select(select(var_1.zz, vec2<bool>(global1.x, arg_1.x), !var_2.b.yw), select(vec2<bool>(var_0.b.x, global1.x), select(global1.xy, arg_1, vec2<bool>(true, true)), select(arg_1, vec2<bool>(false, false), vec2<bool>(true, var_0.a))), !func_2(-301f, var_0.d.yxy, global3[_wgslsmith_index_u32(4294967295u, 5u)], global2.x).b.yx), !var_0.b.xx, var_1.wx)).x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 5>();
    global2 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.x, _wgslsmith_f_op_f32(global2.x - -2322f), global2.x, _wgslsmith_f_op_f32(935f - global2.x))));
    var var_0 = Struct_1(all(select(vec4<bool>(true, global1.x, true, true), !vec4<bool>(global1.x, global1.x, false, global1.x), global1.x)) | (global1.x & all(select(vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(true, true, global1.x, false), true))), vec4<bool>(any(global1.zy), !global1.x, all(vec3<bool>(true && global1.x, func_1(global2.x, vec2<bool>(global1.x, false), true, 2147483647i), global2.x > global2.x)), false & (_wgslsmith_f_op_f32(200f * global2.x) <= _wgslsmith_f_op_f32(global2.x + 1215f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-272f)) - -319f)), _wgslsmith_mult_vec4_i32(vec4<i32>(select(1i, ~17345i, true), firstLeadingBit(_wgslsmith_add_i32(8590i, 24890i)), 1i, -(i32(-1i) * -1i)), ~reverseBits(~vec4<i32>(35493i, 27682i, 1i, 1i))), _wgslsmith_f_op_f32(global2.x - global2.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.c * 1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-117f)))), 1407f, -104f) + vec4<f32>(var_0.e, 127f, global2.x, var_0.c)));
    var var_2 = global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(79452u ^ u_input.b.x, 5u)] | global3[_wgslsmith_index_u32(firstLeadingBit(global3[_wgslsmith_index_u32(firstLeadingBit(global3[_wgslsmith_index_u32(u_input.c.x, 5u)]), 5u)]), 5u)], _wgslsmith_mod_u32(~13232u, ~abs(18320u))), global3[_wgslsmith_index_u32(max(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, 4294967295u), u_input.b.x), global3[_wgslsmith_index_u32(~50582u, 5u)]), 5u)]), 5u)], 24u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x | u_input.a);
}

