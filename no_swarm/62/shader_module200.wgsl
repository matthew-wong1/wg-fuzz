struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(835f, -1040f, 1125f), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, true)), vec4<u32>(1u, 0u, 0u, 15395u), Struct_1(vec3<bool>(false, true, false)));

var<private> global1: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(-918f, 1621f, -1000f), vec3<f32>(-1000f, -972f, 1000f), vec3<f32>(-1158f, -1047f, -804f), vec3<f32>(-413f, -1015f, 980f), vec3<f32>(454f, -1316f, -1075f), vec3<f32>(895f, -589f, -105f), vec3<f32>(581f, 744f, -191f), vec3<f32>(740f, -758f, 371f), vec3<f32>(433f, -1000f, 935f), vec3<f32>(-1301f, 765f, 1654f), vec3<f32>(-494f, -938f, -652f), vec3<f32>(-1706f, -620f, 171f), vec3<f32>(-101f, 210f, -1000f), vec3<f32>(1570f, -1908f, 797f), vec3<f32>(-254f, 1263f, -145f), vec3<f32>(-554f, -557f, -724f), vec3<f32>(307f, -1418f, -642f), vec3<f32>(1396f, -878f, 1823f), vec3<f32>(-353f, 362f, 1000f), vec3<f32>(1487f, -2064f, 1316f), vec3<f32>(-664f, 1534f, 254f));

var<private> global2: array<u32, 10>;

var<private> global3: bool = false;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = -519f;
    var var_1 = -_wgslsmith_add_vec4_i32(firstTrailingBit(-(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) & vec4<i32>(-29417i, u_input.b, u_input.b, u_input.b))), vec4<i32>(_wgslsmith_clamp_i32(u_input.b, -10737i, u_input.b), -40912i, -3675i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-29571i, u_input.b, u_input.b), vec3<i32>(u_input.b, -16021i, -1i)), max(vec3<i32>(53047i, u_input.b, 1i), vec3<i32>(u_input.b, u_input.b, 1i)))));
    let var_2 = _wgslsmith_div_vec3_u32(global0.d.wwz, global0.d.xxx);
    let var_3 = select(var_1.x != _wgslsmith_dot_vec2_i32(var_1.wz, vec2<i32>(~37501i, u_input.b)), global0.e.a.x, all(select(!vec4<bool>(arg_0.a.x, false, arg_0.a.x, arg_0.a.x), select(!vec4<bool>(global0.b.a.x, global0.c.a.x, false, true), !vec4<bool>(global0.b.a.x, arg_0.a.x, true, arg_0.a.x), arg_0.a.x), !select(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, false), vec4<bool>(arg_0.a.x, true, arg_0.a.x, true), vec4<bool>(false, false, true, true)))));
    var var_4 = !select(vec3<bool>(all(!vec3<bool>(false, var_3, false)), any(select(vec3<bool>(true, global0.e.a.x, true), global0.e.a, global0.e.a)), _wgslsmith_f_op_f32(global0.a.x + global0.a.x) != 878f), vec3<bool>(all(vec2<bool>(true, var_3)), global0.e.a.x, var_3), !arg_0.a);
    return _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(select(firstTrailingBit(vec4<i32>(35192i, 0i, var_1.x, -2147483647i)) << (max(vec4<u32>(var_2.x, 0u, u_input.a, global0.d.x), global0.d) % vec4<u32>(32u)), vec4<i32>(u_input.b, 1i, i32(-1i) * -17798i, u_input.b), !(!vec4<bool>(true, var_4.x, true, var_3))), vec4<i32>(reverseBits(-1i ^ u_input.b), max(51962i, 25470i), u_input.b, -1i)), vec4<i32>(-1i) * -min(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 0i, u_input.b, -1i), vec4<i32>(var_1.x, 0i, -7557i, 21119i)), vec4<i32>(46781i, var_1.x, -1i, u_input.b)));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: f32) -> u32 {
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2, global0.a.x, 1352f))))), vec3<f32>(_wgslsmith_f_op_f32(round(-1895f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -535f) + _wgslsmith_f_op_f32(-arg_1.b.x)), arg_2))), global0.c, Struct_1(global0.b.a), vec4<u32>(abs(arg_1.c & u_input.a) << (_wgslsmith_clamp_u32(abs(50753u), ~9982u, 1u) % 32u), global0.d.x, u_input.a, u_input.a), global0.c);
    let var_0 = Struct_3(_wgslsmith_div_vec3_i32(arg_1.a, vec3<i32>(_wgslsmith_add_i32(firstTrailingBit(-36296i), arg_0), func_3(global0.b), -arg_0 << (~u_input.a % 32u))), arg_1.b, _wgslsmith_add_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28412u, 10u)] ^ u_input.a, 10u)] | _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c, global0.d.x, 46544u), global0.d.zwx), 37484u), ~1u));
    let var_1 = _wgslsmith_div_i32(var_0.a.x, arg_1.a.x);
    global3 = !select(true, global0.b.a.x, global0.e.a.x);
    let var_2 = var_0;
    return var_2.c;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2) -> vec2<bool> {
    global1 = array<vec3<f32>, 21>();
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(979f, _wgslsmith_div_f32(arg_1.a.x, 725f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(380f, arg_1.a.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a.x, global0.a.x, arg_1.a.x), vec3<f32>(-825f, -1371f, arg_1.a.x), false)) - vec3<f32>(arg_1.a.x, arg_1.a.x, -774f)) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(arg_1.a + global0.a), _wgslsmith_f_op_vec3_f32(global0.a + global0.a))))), global0.e, Struct_1(vec3<bool>(all(!vec4<bool>(global0.e.a.x, arg_1.b.a.x, arg_1.e.a.x, false)), global0.b.a.x, false)), reverseBits((global0.d >> (global0.d % vec4<u32>(32u))) << (~vec4<u32>(global0.d.x, 0u, u_input.a, 4294967295u) % vec4<u32>(32u))) >> (global0.d % vec4<u32>(32u)), Struct_1(arg_1.c.a));
    global2 = array<u32, 10>();
    let var_0 = true == any(!global0.b.a);
    let var_1 = vec4<bool>(!global0.b.a.x, arg_1.e.a.x, true, _wgslsmith_div_f32(1754f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) + arg_1.a.x)) <= global0.a.x);
    return select(select(!arg_1.e.a.zx, !arg_1.c.a.yx, vec2<bool>(true, var_1.x)), var_1.wz, vec2<bool>(true | any(global0.b.a.xy), any(vec4<bool>(arg_1.a.x <= 1617f, !var_0, global0.b.a.x, false && global0.b.a.x))));
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3) -> vec4<u32> {
    var var_0 = select(vec4<bool>(true != (_wgslsmith_sub_i32(arg_1.a.x, -2147483647i) <= -1i), global0.e.a.x, global0.b.a.x, !all(vec3<bool>(false, true, global0.c.a.x))), vec4<bool>(global0.c.a.x & !global0.c.a.x, false, global0.b.a.x, global0.b.a.x), true);
    var var_1 = ~abs(_wgslsmith_sub_vec2_u32(select(global0.d.zx, ~global0.d.yz, select(var_0.zw, global0.e.a.zx, false)), global0.d.zw));
    global1 = array<vec3<f32>, 21>();
    var_1 = select(global0.d.zy, vec2<u32>(global0.d.x, ~(~arg_2.c << (~arg_1.c % 32u))), func_4(vec4<u32>(arg_2.c, 0u, 4294967295u, abs(0u) & func_2(-6254i, arg_2, -1182f)), Struct_2(arg_2.b.xzz, global0.c, global0.b, global0.d, Struct_1(vec3<bool>(global0.b.a.x, false, true)))));
    var var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_2.b.x, arg_1.b.x))))), -491f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.x * 210f) * _wgslsmith_f_op_f32(-global0.a.x))))), global0.c, Struct_1(global0.b.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_clamp_u32(9649u, 26232u, var_1.x), 4294967295u, u_input.a), global0.d, ~_wgslsmith_clamp_vec4_u32(max(vec4<u32>(global2[_wgslsmith_index_u32(22617u, 10u)], arg_1.c, global0.d.x, arg_0), global0.d), global0.d, min(global0.d, vec4<u32>(u_input.a, global0.d.x, 29326u, arg_0)))), Struct_1(select(select(select(global0.b.a, var_0.zxw, false), var_0.zzx, arg_2.b.x >= -2850f), select(!vec3<bool>(var_0.x, false, false), select(vec3<bool>(global0.e.a.x, var_0.x, false), vec3<bool>(global0.b.a.x, global0.b.a.x, var_0.x), var_0.www), !vec3<bool>(global0.e.a.x, global0.b.a.x, global0.c.a.x)), true)));
    return ~(~var_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32((~vec4<u32>(36880u, 1u, global0.d.x, 4294967295u) & (vec4<u32>(18669u, global2[_wgslsmith_index_u32(47074u, 10u)], 4294967295u, 37564u) | vec4<u32>(global0.d.x, 4294967295u, 4294967295u, 61378u))) & vec4<u32>(abs(u_input.a), global2[_wgslsmith_index_u32(u_input.a, 10u)], ~0u, 1u), ~(func_1(50536u, Struct_3(vec3<i32>(52867i, u_input.b, 1i), vec4<f32>(158f, -545f, global0.a.x, 1230f), 1u), Struct_3(vec3<i32>(1282i, u_input.b, u_input.b), vec4<f32>(156f, 743f, global0.a.x, -588f), u_input.a)) | _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(29473u, 10u)], global0.d.x, 10169u), global0.d))), 21u)], global0.b, global0.e, ~reverseBits(vec4<u32>(1u >> (u_input.a % 32u), global0.d.x, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(62467u, 49222u, global2[_wgslsmith_index_u32(global0.d.x, 10u)]), vec3<u32>(global0.d.x, 0u, u_input.a)), 10u)], 48673u ^ global0.d.x)), Struct_1(select(select(global0.c.a, select(global0.e.a, global0.e.a, global0.e.a), global0.b.a.x), global0.c.a, global0.e.a.x)));
    var var_0 = ~(~(~_wgslsmith_mod_u32(countOneBits(93511u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 32650u, global0.d.x), vec3<u32>(global0.d.x, 7351u, global0.d.x)))));
    var var_1 = ~abs(_wgslsmith_mult_vec4_i32(select(countOneBits(vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b)), ~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), !vec4<bool>(global0.e.a.x, global0.c.a.x, global0.e.a.x, global0.e.a.x)), vec4<i32>(82179i, u_input.b, u_input.b, u_input.b) << (vec4<u32>(28797u, global2[_wgslsmith_index_u32(24632u, 10u)], u_input.a, 63090u) % vec4<u32>(32u))));
    var var_2 = vec3<bool>(global0.c.a.x, any(!select(vec2<bool>(true, false), vec2<bool>(global0.e.a.x, true), true)), -(2147483647i ^ (u_input.b | 1i)) <= ~(var_1.x & (u_input.b & var_1.x)));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(0u, 21u)] - global1[_wgslsmith_index_u32(global0.d.x, 21u)]), Struct_1(vec3<bool>(false, true, !all(global0.c.a))), Struct_1(vec3<bool>(11284u <= _wgslsmith_clamp_u32(global0.d.x, global2[_wgslsmith_index_u32(u_input.a, 10u)], 61117u), !all(vec4<bool>(false, true, true, var_2.x)), !var_2.x)), ~vec4<u32>(_wgslsmith_add_u32(u_input.a, global0.d.x), ~(9046u >> (global0.d.x % 32u)), _wgslsmith_add_u32(min(u_input.a, global0.d.x), countOneBits(39921u)), u_input.a), Struct_1(global0.e.a));
    var var_4 = Struct_3(countOneBits(var_1.wyy), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.a.x, _wgslsmith_f_op_f32(global0.a.x * global0.a.x), _wgslsmith_div_f32(-852f, global0.a.x), _wgslsmith_div_f32(-1087f, -754f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, 1539f, 1423f, 432f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a.x, 131f, 556f, global0.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, 1000f, var_3.a.x, global0.a.x) * vec4<f32>(-208f, global0.a.x, global0.a.x, var_3.a.x))))), select(vec4<bool>(!var_3.e.a.x, !global0.b.a.x, var_2.x, var_2.x), vec4<bool>(var_2.x, global0.e.a.x, !var_2.x, any(var_3.b.a)), !(global0.a.x >= global0.a.x)))), u_input.a | _wgslsmith_div_u32(var_3.d.x, 0u));
    let var_5 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(abs(select(global0.d.xwx, vec3<u32>(global0.d.x, 59424u, global0.d.x), global0.b.a))), select(~vec3<u32>(2696u, u_input.a, 4294967295u), _wgslsmith_mult_vec3_u32(~global0.d.yzx, ~vec3<u32>(0u, u_input.a, 10259u)), vec3<bool>(true, !global0.e.a.x, global0.e.a.x))), 21u)], global0.e, Struct_1(vec3<bool>(any(!vec4<bool>(true, true, global0.e.a.x, var_2.x)), !any(global0.b.a), var_2.x)), firstTrailingBit(min(~var_3.d, countOneBits(global0.d))), global0.e);
    let var_6 = Struct_3(firstTrailingBit(var_1.yzz), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, var_4.b.x, var_4.b.x, -1000f)))), _wgslsmith_f_op_vec4_f32(var_4.b + var_4.b)))), var_5.d.x);
    let var_7 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(step(1000f, -172f)), var_4.b.x, -132f), vec3<f32>(-365f, _wgslsmith_f_op_f32(-var_6.b.x), _wgslsmith_f_op_f32(max(991f, var_5.a.x))))), _wgslsmith_f_op_vec3_f32(-var_3.a), var_5.e.a)), var_3.b, global0.e, func_1(u_input.a << (_wgslsmith_div_u32(func_2(2147483647i, Struct_3(vec3<i32>(var_1.x, 2147483647i, -4314i), vec4<f32>(global0.a.x, var_3.a.x, 829f, var_5.a.x), global0.d.x), -851f), global0.d.x) % 32u), var_6, var_6), Struct_1(!var_3.c.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0.a.x), var_5.a.xx);
}

