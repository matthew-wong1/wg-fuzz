struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<bool>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

var<private> global1: array<bool, 27>;

var<private> global2: vec3<f32> = vec3<f32>(-551f, 1000f, 802f);

var<private> global3: u32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global0 = array<u32, 5>();
    let var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7254u | global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(46699u, 0u), ~vec2<u32>(global0[_wgslsmith_index_u32(57053u, 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)])), 5u)], 5u)], 5u)]), 27u)] | true;
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(779f - _wgslsmith_f_op_f32(f32(-1f) * -445f)))), vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(52455u, 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(63758u, 5u)], 5u)], 5u)]), 5u)] << ((4294967295u >> (global0[_wgslsmith_index_u32(11080u, 5u)] % 32u)) % 32u), 27u)], !var_0, global2.x >= _wgslsmith_f_op_f32(-501f * global2.x), any(vec2<bool>(global1[_wgslsmith_index_u32(16245u, 27u)], global1[_wgslsmith_index_u32(50723u, 27u)]))), select(!select(vec2<bool>(false, global1[_wgslsmith_index_u32(2091u, 27u)]), vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(64954u, 5u)], 27u)], true), var_0), vec2<bool>(true, all(vec2<bool>(true, var_0))), !(var_0 != true)), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), u_input.c.yz, vec2<i32>(345i, 0i) ^ vec2<i32>(u_input.b, 8495i)), vec3<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(3802u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42435u, 5u)], 5u)], 5u)], 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10816u, 5u)], 5u)], 5u)])), ~vec3<u32>(1u, global0[_wgslsmith_index_u32(74067u, 5u)], global0[_wgslsmith_index_u32(20999u, 5u)])), _wgslsmith_div_u32(~4294967295u, 33016u), _wgslsmith_div_u32(42543u, ~global0[_wgslsmith_index_u32(1u, 5u)]))), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(abs(0u), 5u)], 5u)], _wgslsmith_f_op_f32(global2.x * 302f));
    global2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-global2.x)), var_1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(608f * var_1.a.a) + global2.x)))));
    let var_2 = _wgslsmith_f_op_f32(global2.x * -345f);
    return -1227f;
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_3) -> Struct_2 {
    global0 = array<u32, 5>();
    let var_0 = global0[_wgslsmith_index_u32(~1u, 5u)];
    let var_1 = Struct_5(Struct_4(Struct_2(arg_2.a, 19695i, Struct_1(_wgslsmith_f_op_f32(func_3()), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 27u)], true, true, global1[_wgslsmith_index_u32(9668u, 27u)]), arg_2.a.c, select(vec2<i32>(arg_2.a.d.x, 1i), vec2<i32>(-4226i, arg_2.a.d.x), arg_2.a.c), vec3<u32>(global0[_wgslsmith_index_u32(0u, 5u)], 30926u, 56378u)), arg_2.a, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.x, arg_2.a.a)))), Struct_2(arg_2.a, -(~arg_2.a.d.x), Struct_1(_wgslsmith_f_op_f32(-1187f * global2.x), !arg_2.a.b, arg_2.a.b.xz, u_input.c.yy, ~vec3<u32>(global0[_wgslsmith_index_u32(1u, 5u)], arg_2.a.e.x, 8818u)), Struct_1(_wgslsmith_f_op_f32(arg_2.c + -971f), !vec4<bool>(arg_2.a.c.x, false, arg_2.a.b.x, true), !arg_2.a.b.xy, arg_2.a.d, firstLeadingBit(arg_2.a.e)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global2.xy * global2.zy), vec2<f32>(-1275f, arg_2.c)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c, -1000f, -486f)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1609f, global2.x, arg_2.c)))) - vec3<f32>(-649f, arg_2.a.a, -1000f))));
    let var_2 = true;
    var var_3 = Struct_2(var_1.a.b.d, var_1.a.b.b, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c * -2301f)))), vec4<bool>(var_1.a.a.d.c.x, !(!var_1.a.b.c.b.x), true == select(var_1.a.a.d.b.x, arg_2.a.c.x, true), !select(true, var_2, arg_2.a.b.x)), var_1.a.b.c.b.zx, _wgslsmith_mod_vec2_i32(-vec2<i32>(-14184i, 2147483647i), select(vec2<i32>(-15111i, -17810i), u_input.c.yx, !vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 27u)]))), (vec3<u32>(85139u, var_1.a.a.c.e.x, arg_2.b) & vec3<u32>(global0[_wgslsmith_index_u32(1u, 5u)], 4294967295u, arg_0)) << (countOneBits(~vec3<u32>(4294967295u, 33279u, arg_2.b)) % vec3<u32>(32u))), Struct_1(1f, var_1.a.a.c.b, !var_1.a.a.d.c, select(~arg_1.xy, _wgslsmith_add_vec2_i32(~var_1.a.b.d.d, vec2<i32>(2147483647i, arg_1.x)), arg_2.a.b.ww), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(var_1.a.b.c.e.x, 1u, arg_0)), _wgslsmith_sub_vec3_u32(var_1.a.b.a.e | vec3<u32>(69831u, global0[_wgslsmith_index_u32(1u, 5u)], var_1.a.a.a.e.x), vec3<u32>(arg_2.b, arg_2.a.e.x, global0[_wgslsmith_index_u32(0u, 5u)])))), vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-arg_2.a.a)));
    return var_1.a.b;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * 894f)) * 253f);
    var var_1 = true;
    let var_2 = true;
    let var_3 = Struct_5(Struct_4(func_2(_wgslsmith_dot_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)]), firstLeadingBit(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5681u, 5u)], 5u)], 36622u))), countOneBits(vec3<i32>(u_input.b, 18894i, u_input.a) << (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54646u, 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 40591u, 4294967295u) % vec3<u32>(32u))), Struct_3(Struct_1(-101f, vec4<bool>(arg_0.x, arg_0.x, false, true), vec2<bool>(true, true), u_input.c.zy, vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], 0u)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(24107u, 5u)], 4294967295u), 5u)], global2.x)), Struct_2(func_2(105374u, max(u_input.c.zxw, vec3<i32>(arg_1.x, -1i, -64727i)), Struct_3(Struct_1(global2.x, vec4<bool>(global1[_wgslsmith_index_u32(1u, 27u)], false, var_2, true), arg_0.zx, vec2<i32>(46077i, u_input.b), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)], global0[_wgslsmith_index_u32(0u, 5u)])), 1u, global2.x)).d, 0i, Struct_1(global2.x, !vec4<bool>(var_2, true, true, false), arg_0.xy, select(u_input.c.xy, vec2<i32>(-2147483647i, arg_1.x), vec2<bool>(true, false)), vec3<u32>(15501u, 10726u, 56996u) & vec3<u32>(global0[_wgslsmith_index_u32(1u, 5u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20013u, 5u)], 5u)])), func_2(~global0[_wgslsmith_index_u32(30144u, 5u)], -u_input.c.wxy, Struct_3(Struct_1(global2.x, vec4<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 27u)], global1[_wgslsmith_index_u32(35027u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)]), arg_0.xy, arg_1, vec3<u32>(17901u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 1390u)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], 5u)], global2.x)).d, _wgslsmith_f_op_vec2_f32(func_2(global0[_wgslsmith_index_u32(44390u, 5u)], u_input.c.zzz, Struct_3(Struct_1(-1122f, vec4<bool>(var_2, var_2, arg_0.x, false), vec2<bool>(var_2, true), vec2<i32>(arg_1.x, 1i), vec3<u32>(global0[_wgslsmith_index_u32(114550u, 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1518u, 5u)], 5u)], 0u)), 57594u, 733f)).e * global2.yx)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(1485f * global2.x), var_0, 295f)))));
    let var_4 = true;
    return vec2<bool>(all(func_2(var_3.a.a.d.e.x, u_input.c.yyy, Struct_3(var_3.a.b.a, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 1u), _wgslsmith_div_f32(-1205f, 1349f))).d.c), false);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_3) -> StorageBuffer {
    let var_0 = ~_wgslsmith_mult_i32((38666i << (~arg_3.b % 32u)) << (_wgslsmith_add_u32(_wgslsmith_mod_u32(arg_3.a.e.x, global0[_wgslsmith_index_u32(1u, 5u)]), ~4294967295u) % 32u), arg_1.x);
    global0 = array<u32, 5>();
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-767f, 208f, global2.x)), _wgslsmith_div_vec3_f32(vec3<f32>(-1005f, 777f, arg_3.c), vec3<f32>(-1000f, arg_2.e.x, global2.x)), arg_2.a.b.wzz)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-129f, 512f, -1409f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(392f, global2.x, -482f))) - vec3<f32>(-1732f, _wgslsmith_f_op_f32(-arg_2.d.a), 884f))));
    global3 = _wgslsmith_dot_vec3_u32(arg_3.a.e, ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3.a.e.x, 6233u, arg_3.b), ~vec3<u32>(arg_2.d.e.x, 1u, 31770u), vec3<u32>(0u, 1u, 91471u)) | (vec3<u32>(65157u, arg_2.c.e.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44620u, 5u)], 5u)], 5u)], 5u)]) ^ vec3<u32>(arg_3.b, arg_2.c.e.x, arg_3.a.e.x))));
    var var_1 = arg_2.d;
    return StorageBuffer(arg_0.x, -2147483647i, 88264u, vec4<f32>(arg_3.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_2.e.x, _wgslsmith_div_f32(arg_3.c, arg_2.a.a))), -790f)), arg_2.e.x, -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~(abs(1u) >> (~_wgslsmith_dot_vec2_u32(~vec2<u32>(5085u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(123188u, 5u)], 5u)]), vec2<u32>(1u, 1u)) % 32u)), 5u)];
    global1 = array<bool, 27>();
    let x = u_input.a;
    s_output = func_4(-u_input.c, u_input.c.zw, Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, -1413f)), !select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15448u, 5u)], 5u)], 5u)], 27u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(75603u, 5u)], 27u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 27u)], global1[_wgslsmith_index_u32(1u, 27u)], true), vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43214u, 5u)], 27u)], global1[_wgslsmith_index_u32(45385u, 27u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 27u)], true)), select(func_1(vec3<bool>(global1[_wgslsmith_index_u32(58296u, 27u)], global1[_wgslsmith_index_u32(1u, 27u)], true), u_input.c.zx), select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(26980u, 27u)]), vec2<bool>(global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2262u, 5u)], 5u)], 5u)], 27u)]), global1[_wgslsmith_index_u32(4273u, 27u)]), vec2<bool>(false, false)), vec2<i32>(u_input.c.x, u_input.b) << (abs(vec2<u32>(4294967295u, 29701u)) % vec2<u32>(32u)), vec3<u32>(41219u, ~1u, ~29946u)), ~(~countOneBits(0i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(103f * -1316f)), !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 27u)], true, true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46877u, 5u)], 27u)]), vec2<bool>(-16360i <= u_input.b, true), min(-vec2<i32>(-29940i, u_input.a), firstLeadingBit(vec2<i32>(32661i, 7286i))), _wgslsmith_mod_vec3_u32(func_2(9010u, u_input.c.wzz, Struct_3(Struct_1(global2.x, vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34312u, 5u)], 27u)], true, false, global1[_wgslsmith_index_u32(1u, 27u)]), vec2<bool>(global1[_wgslsmith_index_u32(35516u, 27u)], true), vec2<i32>(-2147483647i, u_input.a), vec3<u32>(global0[_wgslsmith_index_u32(63707u, 5u)], 1u, 9513u)), global0[_wgslsmith_index_u32(51286u, 5u)], 1534f)).d.e, ~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)], 4294967295u, 29479u))), func_2(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30582u, 5u)], 5u)] | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)], 5u)], countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)])), vec3<i32>(_wgslsmith_add_i32(u_input.c.x, 1i), min(2147483647i, u_input.b), -2147483647i & u_input.c.x), Struct_3(func_2(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(63885u, 5u)], 5u)], 5u)], 5u)], vec3<i32>(-1i, 1i, u_input.a), Struct_3(Struct_1(120f, vec4<bool>(global1[_wgslsmith_index_u32(36917u, 27u)], true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 27u)], true), vec2<bool>(false, global1[_wgslsmith_index_u32(29333u, 27u)]), u_input.c.zx, vec3<u32>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(63459u, 5u)], 5u)], global0[_wgslsmith_index_u32(23164u, 5u)])), 4294967295u, global2.x)).c, global0[_wgslsmith_index_u32(firstTrailingBit(19825u), 5u)], _wgslsmith_f_op_f32(-1169f + global2.x))).d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-171f, global2.x))), _wgslsmith_f_op_vec2_f32(max(global2.zx, global2.zz)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global2.yx)) * _wgslsmith_div_vec2_f32(global2.zz, vec2<f32>(global2.x, global2.x))))), Struct_3(Struct_1(-1000f, !(!vec4<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 27u)], false, true)), vec2<bool>(any(vec2<bool>(true, false)), !global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 27u)]), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -22474i) ^ u_input.c.zz, vec2<i32>(u_input.b, u_input.a)), ~firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27708u, 5u)], 5u)], 39557u, 8479u))), reverseBits(abs(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 35096u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-935f - global2.x)))));
}

