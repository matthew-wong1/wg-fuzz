struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: u32,
}

struct Struct_5 {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11>;

var<private> global1: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(Struct_1(vec2<bool>(false, true)), vec2<bool>(true, true), 2147483647i, 24523u), Struct_4(Struct_1(vec2<bool>(true, true)), vec2<bool>(false, false), 2147483647i, 14531u), Struct_4(Struct_1(vec2<bool>(false, false)), vec2<bool>(false, false), 0i, 1u), Struct_4(Struct_1(vec2<bool>(false, false)), vec2<bool>(false, false), 1i, 28993u), Struct_4(Struct_1(vec2<bool>(true, true)), vec2<bool>(true, true), -16767i, 10623u), Struct_4(Struct_1(vec2<bool>(true, false)), vec2<bool>(true, true), i32(-2147483648), 1u), Struct_4(Struct_1(vec2<bool>(true, true)), vec2<bool>(false, true), i32(-2147483648), 1u), Struct_4(Struct_1(vec2<bool>(false, false)), vec2<bool>(true, false), 12125i, 14115u), Struct_4(Struct_1(vec2<bool>(true, true)), vec2<bool>(true, true), 0i, 1u), Struct_4(Struct_1(vec2<bool>(true, true)), vec2<bool>(true, false), -50460i, 0u), Struct_4(Struct_1(vec2<bool>(false, false)), vec2<bool>(true, true), -1i, 4294967295u), Struct_4(Struct_1(vec2<bool>(true, false)), vec2<bool>(false, true), 22975i, 20660u), Struct_4(Struct_1(vec2<bool>(false, false)), vec2<bool>(true, true), 1i, 0u), Struct_4(Struct_1(vec2<bool>(false, false)), vec2<bool>(true, true), 30434i, 3381u), Struct_4(Struct_1(vec2<bool>(true, true)), vec2<bool>(false, true), 1i, 1u), Struct_4(Struct_1(vec2<bool>(false, false)), vec2<bool>(true, false), 0i, 1u), Struct_4(Struct_1(vec2<bool>(false, false)), vec2<bool>(false, false), 0i, 0u), Struct_4(Struct_1(vec2<bool>(true, false)), vec2<bool>(false, true), 26108i, 0u), Struct_4(Struct_1(vec2<bool>(true, false)), vec2<bool>(true, true), -56060i, 0u), Struct_4(Struct_1(vec2<bool>(false, false)), vec2<bool>(true, false), 1i, 27441u));

var<private> global2: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(vec2<u32>(3723u, 0u), vec4<i32>(13925i, -1i, 31955i, 0i)), Struct_3(vec2<u32>(4294967295u, 13350u), vec4<i32>(-38188i, 16207i, -1i, 0i)), Struct_3(vec2<u32>(1u, 24364u), vec4<i32>(-1i, 1i, 774i, -1i)), Struct_3(vec2<u32>(64345u, 9322u), vec4<i32>(-33895i, -17776i, 47851i, 32971i)), Struct_3(vec2<u32>(4294967295u, 0u), vec4<i32>(52144i, 1i, -17702i, -23082i)), Struct_3(vec2<u32>(0u, 24961u), vec4<i32>(i32(-2147483648), -1i, 11363i, 40302i)), Struct_3(vec2<u32>(78235u, 35493u), vec4<i32>(48689i, 1i, 7144i, -13123i)), Struct_3(vec2<u32>(1u, 0u), vec4<i32>(1i, 13526i, -12008i, i32(-2147483648))), Struct_3(vec2<u32>(1u, 778u), vec4<i32>(-1i, 14705i, -794i, -1i)), Struct_3(vec2<u32>(4294967295u, 38364u), vec4<i32>(2147483647i, i32(-2147483648), -13745i, 2147483647i)));

var<private> global3: array<i32, 29> = array<i32, 29>(2147483647i, i32(-2147483648), 0i, -5397i, -30625i, 1i, i32(-2147483648), -1i, 24403i, 56567i, -47473i, 10208i, -1i, -3451i, 0i, 1i, -1i, -30999i, 8703i, i32(-2147483648), 12783i, -11925i, -19830i, 0i, 2147483647i, 2147483647i, 6501i, -1i, i32(-2147483648));

var<private> global4: array<Struct_1, 25>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: i32) -> f32 {
    return 888f;
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-805f * 734f))), _wgslsmith_f_op_f32(-1435f - -1253f)), 417f, _wgslsmith_f_op_f32(f32(-1f) * -1018f), 1000f));
    let var_1 = Struct_2(~(vec4<u32>(4294967295u, u_input.c, u_input.b >> (11527u % 32u), u_input.c) >> (_wgslsmith_div_vec4_u32(vec4<u32>(12818u, u_input.c, 4757u, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.c, u_input.b, 1u), vec4<u32>(5532u, u_input.b, u_input.b, 4294967295u))) % vec4<u32>(32u))), _wgslsmith_mult_u32(27590u << ((u_input.b | 857u) % 32u), _wgslsmith_mult_u32(u_input.c, firstTrailingBit(~u_input.c))), -917f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-1711f, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_0.wx * var_0.yz))), global3[_wgslsmith_index_u32(~44573u, 29u)])) + _wgslsmith_f_op_f32(f32(-1f) * -281f)));
    let var_2 = Struct_4(Struct_1(!vec2<bool>(!global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(~60085u, 11u)])), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 11u)] == global0[_wgslsmith_index_u32(~4294967295u, 11u)], all(vec2<bool>(global0[_wgslsmith_index_u32(36425u, 11u)], true))), 54990i, min(var_1.b, ~firstLeadingBit(u_input.b & u_input.b)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.c * -1520f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1319f, var_1.c) - vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(trunc(var_0.wz)))), u_input.d)), _wgslsmith_f_op_f32(ceil(var_0.x))));
    var var_4 = ~var_2.d;
    return global0[_wgslsmith_index_u32(~(~4294967295u), 11u)];
}

fn func_1() -> vec2<i32> {
    var var_0 = select(true, global0[_wgslsmith_index_u32(u_input.b, 11u)], func_2());
    return u_input.a.zx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(vec4<u32>(u_input.c, ~(35569u | (u_input.c | 4294967295u)), 9964u, 20287u));
    global2 = array<Struct_3, 10>();
    var var_1 = _wgslsmith_div_vec2_i32(func_1(), select(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(-u_input.a.yz, _wgslsmith_mod_vec2_i32(u_input.a.zy, u_input.a.zy), max(u_input.a.yy, vec2<i32>(-1i, global3[_wgslsmith_index_u32(17385u, 29u)]))), select(u_input.a.yx, u_input.a.zx, vec2<bool>(true, true)) ^ -vec2<i32>(2147483647i, -1i)), vec2<i32>(1i, _wgslsmith_div_i32(min(1i, u_input.d), -2147483647i)), select(select(select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 11u)], global0[_wgslsmith_index_u32(u_input.b, 11u)]), true), select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], true), vec2<bool>(global0[_wgslsmith_index_u32(15102u, 11u)], false), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 11u)] && true, all(vec4<bool>(global0[_wgslsmith_index_u32(2397u, 11u)], true, false, global0[_wgslsmith_index_u32(u_input.c, 11u)]))), global0[_wgslsmith_index_u32(var_0.x, 11u)])));
    global3 = array<i32, 29>();
    let var_2 = max(select(-(~(~vec4<i32>(u_input.d, var_1.x, var_1.x, var_1.x))), ~countOneBits(vec4<i32>(-2147483647i, -2147483647i, 30587i, 2147483647i) & vec4<i32>(2147483647i, 1i, global3[_wgslsmith_index_u32(6739u, 29u)], global3[_wgslsmith_index_u32(var_0.x, 29u)])), true), vec4<i32>(~(-1i), ~reverseBits(21798i << (var_0.x % 32u)), -37616i, abs(_wgslsmith_add_i32(-24057i, firstLeadingBit(global3[_wgslsmith_index_u32(0u, 29u)])))));
    let var_3 = ~vec2<u32>(_wgslsmith_div_u32(75359u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(43070u, var_0.x, 28944u), vec3<u32>(u_input.c, var_0.x, 4505u))), select(abs(40659u), _wgslsmith_dot_vec2_u32(var_0.xy, ~vec2<u32>(u_input.c, u_input.c)), global0[_wgslsmith_index_u32(0u, 11u)]));
    var var_4 = func_1() >> (countOneBits(vec2<u32>(~4294967295u, 7600u)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.yw, ~(~firstTrailingBit(var_3)) | vec2<u32>(80830u, _wgslsmith_clamp_u32(var_3.x, var_3.x, 4294967295u)), _wgslsmith_sub_u32(~(~var_0.x), 4294967295u), vec3<u32>(_wgslsmith_div_u32(1u, u_input.b), var_0.x, var_3.x));
}

