struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec2<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21> = array<f32, 21>(-1304f, 784f, -576f, -723f, 343f, 547f, -1273f, -1332f, -1195f, 880f, 471f, -424f, 1766f, 1406f, 481f, 269f, 1000f, -602f, -400f, -1791f, 2358f);

var<private> global1: array<u32, 2> = array<u32, 2>(1u, 65324u);

var<private> global2: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(31506u, 4294967295u, 4294967295u, 9150u), vec4<u32>(0u, 36717u, 78601u, 18467u), vec4<u32>(24017u, 4294967295u, 60456u, 63856u), vec4<u32>(29359u, 12431u, 21550u, 1u), vec4<u32>(21552u, 22534u, 1u, 5921u), vec4<u32>(84641u, 27234u, 32752u, 4294967295u), vec4<u32>(0u, 4294967295u, 23608u, 86374u), vec4<u32>(4294967295u, 2797u, 4294967295u, 67576u), vec4<u32>(60468u, 0u, 4294967295u, 22901u), vec4<u32>(83754u, 40392u, 51096u, 4866u), vec4<u32>(24635u, 0u, 83115u, 4294967295u), vec4<u32>(4294967295u, 76429u, 0u, 0u), vec4<u32>(42391u, 0u, 15823u, 51943u), vec4<u32>(0u, 46712u, 41597u, 46782u), vec4<u32>(57015u, 68188u, 4294967295u, 25204u), vec4<u32>(11180u, 4920u, 1u, 4294967295u), vec4<u32>(0u, 1u, 1u, 0u), vec4<u32>(0u, 1u, 1u, 0u), vec4<u32>(47236u, 1u, 1u, 4294967295u), vec4<u32>(20532u, 1u, 70789u, 0u), vec4<u32>(7428u, 0u, 5829u, 0u), vec4<u32>(1u, 52636u, 15893u, 0u), vec4<u32>(0u, 3705u, 0u, 1u), vec4<u32>(6894u, 4294967295u, 1u, 30200u), vec4<u32>(1u, 27055u, 32861u, 31308u), vec4<u32>(10678u, 43261u, 39807u, 34063u), vec4<u32>(85136u, 50716u, 15342u, 49317u));

var<private> global3: array<u32, 29> = array<u32, 29>(0u, 63263u, 4294967295u, 24940u, 18431u, 9171u, 9143u, 11072u, 20410u, 0u, 1u, 35901u, 2280u, 1u, 35866u, 0u, 48140u, 64604u, 54557u, 1u, 0u, 42305u, 10668u, 26944u, 1u, 12973u, 51678u, 4294967295u, 0u);

var<private> global4: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(1026i, 1i, 0i), vec3<i32>(-20257i, -1i, i32(-2147483648)), vec3<i32>(-1i, 2147483647i, 11011i), vec3<i32>(50088i, -1i, -11740i), vec3<i32>(2147483647i, -24863i, 59519i), vec3<i32>(33356i, 25606i, 35247i), vec3<i32>(2147483647i, 1i, -18741i), vec3<i32>(0i, -1i, 75100i), vec3<i32>(0i, 1i, -8432i), vec3<i32>(1i, 0i, 16404i), vec3<i32>(2147483647i, 1i, 1i), vec3<i32>(-1i, 45725i, -53562i), vec3<i32>(-1i, 13286i, -1i), vec3<i32>(-1i, -20108i, 4322i), vec3<i32>(5604i, 14963i, -1i), vec3<i32>(2147483647i, -44984i, 2147483647i), vec3<i32>(0i, 25611i, 1i), vec3<i32>(-1i, i32(-2147483648), -1i), vec3<i32>(-1i, -48890i, -1i), vec3<i32>(2147483647i, 1404i, -66606i), vec3<i32>(-11262i, 1i, -1i), vec3<i32>(-17648i, -30861i, 1697i), vec3<i32>(i32(-2147483648), 69412i, -14039i), vec3<i32>(i32(-2147483648), 2147483647i, -1i), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec3<i32>(0i, 4868i, -52508i), vec3<i32>(1i, 63820i, -44744i), vec3<i32>(2147483647i, -37948i, 6818i), vec3<i32>(i32(-2147483648), 1i, 2191i), vec3<i32>(-43250i, -1i, i32(-2147483648)), vec3<i32>(0i, 1i, 2147483647i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>) -> vec4<i32> {
    let var_0 = Struct_1(select(!vec3<bool>(any(vec3<bool>(true, false, false)), true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), abs(u_input.b.x) == (global1[_wgslsmith_index_u32(1u, 2u)] ^ global1[_wgslsmith_index_u32(u_input.b.x, 2u)])), vec3<bool>(true, true, global3[_wgslsmith_index_u32(57759u, 29u)] < ~u_input.b.x)), vec3<i32>(-1i, -2147483647i, select(abs(2147483647i), ~12406i, select(false, true, true))) & max(countOneBits(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3894u, 2u)], 31u)]) | _wgslsmith_mult_vec3_i32(u_input.a, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 29u)], 31u)]), vec3<i32>(u_input.a.x, 21644i, -2207i) << (vec3<u32>(u_input.b.x, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 29u)], 2u)], 29u)], 0u) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_1.xzy, _wgslsmith_f_op_vec3_f32(sign(arg_1.zzz)))), _wgslsmith_f_op_vec3_f32(arg_1.xzz + vec3<f32>(262f, -864f, arg_0))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_1.xzz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1602f, -1476f, global0[_wgslsmith_index_u32(u_input.b.x, 21u)])))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 230f, global0[_wgslsmith_index_u32(53206u, 21u)]))))), select(select(vec2<bool>(true, arg_1.x < 1846f), select(vec2<bool>(false, true), vec2<bool>(true, true), all(vec2<bool>(false, false))), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !(!select(vec2<bool>(false, true), vec2<bool>(false, false), true))), false);
    global1 = array<u32, 2>();
    let var_1 = any(!(!select(var_0.a.xx, var_0.a.yy, true))) || false;
    return vec4<i32>(2147483647i, _wgslsmith_mod_i32(_wgslsmith_add_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, u_input.a.x, 2147483647i, var_0.b.x), vec4<i32>(2147483647i, var_0.b.x, 2147483647i, u_input.a.x)), _wgslsmith_sub_i32(var_0.b.x, -11771i) & (-19086i & var_0.b.x)), reverseBits(~max(-22790i, -1i))), u_input.a.x, var_0.b.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    let var_0 = -func_3(-1900f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-297f, -1256f, 327f, global0[_wgslsmith_index_u32(0u, 21u)])) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-509f, arg_1.c.x, 723f, arg_1.c.x) * vec4<f32>(global0[_wgslsmith_index_u32(0u, 21u)], -991f, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(81722u, 29u)], 29u)], 21u)], arg_1.c.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 21u)], 1655f, arg_1.c.x, global0[_wgslsmith_index_u32(21430u, 21u)]) * vec4<f32>(arg_1.c.x, 110f, 1264f, global0[_wgslsmith_index_u32(u_input.b.x, 21u)])) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(50383u, 21u)], arg_1.c.x, 848f, 1556f))))));
    global0 = array<f32, 21>();
    global2 = array<vec4<u32>, 27>();
    global1 = array<u32, 2>();
    var var_1 = -377f;
    return ~abs(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.zx, vec2<u32>(0u, 114147u)) | _wgslsmith_clamp_vec2_u32(u_input.b.zw, vec2<u32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 29u)], 2u)], 0u), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32926u, 2u)], 29u)], 29u)], 1u)), _wgslsmith_add_vec2_u32(u_input.b.xz, select(vec2<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 2u)], u_input.b.x), vec2<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 29u)], 4294967295u), vec2<bool>(true, arg_1.a.x)))));
}

fn func_1() -> u32 {
    let var_0 = vec2<i32>((-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), vec3<i32>(0i, u_input.a.x, -1i)) >> (global3[_wgslsmith_index_u32(~func_2(vec4<i32>(u_input.a.x, -1i, u_input.a.x, 26009i), Struct_1(vec3<bool>(true, false, false), vec3<i32>(-44631i, u_input.a.x, -2147483647i), vec3<f32>(101f, global0[_wgslsmith_index_u32(55152u, 21u)], -1048f), vec2<bool>(true, false), false)), 29u)] % 32u)) | (min(u_input.a.x, countOneBits(-1i)) | -38677i), abs(func_3(1095f, vec4<f32>(global0[_wgslsmith_index_u32(24420u, 21u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 2u)], 2u)], 2u)], 21u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 29u)], 2u)], 2u)], 21u)], -1209f)).x) | u_input.a.x);
    var var_1 = !(!any(vec2<bool>(true, true)));
    var var_2 = 1u;
    var_1 = !all(vec2<bool>(true, true));
    let var_3 = Struct_1(select(vec3<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), any(vec2<bool>(false, false)) | true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), true), select(any(vec2<bool>(false, false)), true, select(true, true, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)), vec3<bool>(all(vec4<bool>(true, true, false, true)), false, select(true, true, false)))), ~vec3<i32>(u_input.a.x, reverseBits(var_0.x), var_0.x), vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 21u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(88583u, 29u)], 29u)], 21u)], -1000f)), _wgslsmith_f_op_f32(-1249f - 374f)))), _wgslsmith_f_op_f32(f32(-1f) * -1013f)), vec2<bool>(false, false), true);
    return ~func_2(min(-vec4<i32>(u_input.a.x, -2147483647i, -2147483647i, u_input.a.x), select(vec4<i32>(var_3.b.x, -2147483647i, var_3.b.x, -58321i), vec4<i32>(0i, var_3.b.x, -59809i, -26059i), var_3.d.x) ^ countOneBits(vec4<i32>(-17712i, u_input.a.x, 1i, 0i))), Struct_1(!select(var_3.a, var_3.a, false), global4[_wgslsmith_index_u32(min(13795u, ~u_input.b.x), 31u)], var_3.c, vec2<bool>(var_0.x > -1i, true), !var_3.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(-16895i);
    var var_1 = Struct_1(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 21u)])) != global0[_wgslsmith_index_u32(u_input.b.x, 21u)], true, false | any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))), reverseBits(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0, -2147483647i, -89166i), vec3<i32>(-43823i, var_0, -25187i)), -global4[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(4294967295u, 29u)], 31u)])), vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(27272u, 21u)] * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(12958u, 9924u), 21u)])), global0[_wgslsmith_index_u32(u_input.b.x, 21u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~0u, 29u)], 29u)] << (global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(func_1(), 29u)], 2u)] % 32u), 21u)]), select(vec2<bool>(true, true), !select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false)), any(vec3<bool>(all(vec3<bool>(false, false, false)), true, global0[_wgslsmith_index_u32(u_input.b.x, 21u)] > global0[_wgslsmith_index_u32(4294967295u, 21u)]))), false);
    let var_2 = -u_input.a.x >> (u_input.b.x % 32u);
    let var_3 = !var_1.a.x && false;
    global1 = array<u32, 2>();
    let var_4 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(14567u, 29u)] | 40958u, abs(global1[_wgslsmith_index_u32(abs(3414u), 2u)]), firstLeadingBit(50619u), u_input.b.x >> ((45900u | ~u_input.b.x) % 32u)), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(global2[_wgslsmith_index_u32(firstLeadingBit(51628u), 27u)], ~(~u_input.b)), vec4<u32>(global1[_wgslsmith_index_u32(abs(~global3[_wgslsmith_index_u32(4294967295u, 29u)]), 2u)], min(global3[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(1018u, 2u)] | u_input.b.x), global1[_wgslsmith_index_u32(1u, 2u)], 6458u))), 2u)];
    var var_5 = vec4<u32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(33830u, u_input.b.x), firstTrailingBit(global1[_wgslsmith_index_u32(u_input.b.x, 2u)])), 29u)] ^ global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2308u, 2u)], 29u)]), u_input.b.wy), 2u)], 29u)], 2u)], 88345u, global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(28161u), 2u)], 2u)]) << (~(~u_input.b) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(4294967295u, 21u)], vec4<i32>(32151i, _wgslsmith_mult_i32(2147483647i, _wgslsmith_mod_i32(var_1.b.x, 1i)), firstTrailingBit(-2147483647i), -(~(-u_input.a.x))));
}

