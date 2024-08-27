struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<i32, 4> = array<i32, 4>(42165i, i32(-2147483648), -27132i, 46627i);

var<private> global2: vec4<f32>;

var<private> global3: u32;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> u32 {
    let var_0 = Struct_5(Struct_1(select(true, true, true), vec4<u32>(~15259u, u_input.b.x, _wgslsmith_add_u32(arg_1.x, 1u), arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-723f + -1000f), global0.a.x)), global0.a.x);
    let var_1 = (~(~_wgslsmith_div_u32(54600u, arg_0)) != abs(80759u)) & var_0.a.a;
    global0 = Struct_4(global0.a);
    global1 = array<i32, 4>();
    let var_2 = Struct_3(vec4<bool>(var_1, any(vec4<bool>(true, true, true, true)), 22671i > -global1[_wgslsmith_index_u32(~arg_1.x, 4u)], var_0.a.a && var_1), var_0.a, countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(var_0.a.b.x, u_input.b.x, arg_0), firstTrailingBit(u_input.b.x), arg_0, ~0u), vec4<u32>(u_input.b.x, ~45270u, arg_1.x, arg_1.x))), Struct_2(Struct_1(var_0.a.a, abs(var_0.a.b))));
    return min(~(~(~(~1u))), _wgslsmith_add_u32(_wgslsmith_add_u32(1u, ~arg_0), _wgslsmith_mult_u32(26663u, u_input.b.x)) >> (0u % 32u));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32) -> bool {
    global0 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.x, -1259f, global0.a.x, 1399f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a + _wgslsmith_f_op_vec4_f32(global0.a + global0.a)) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1157f, 812f, -1000f, global0.a.x) - global0.a), global0.a)))));
    global3 = ~1u;
    var var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -664f)));
    var var_2 = _wgslsmith_f_op_f32(-845f - global2.x);
    return !((1i ^ ~_wgslsmith_mult_i32(14065i, global1[_wgslsmith_index_u32(u_input.b.x, 4u)])) != ~_wgslsmith_div_i32(11804i, i32(-1i) * -2147483647i));
}

fn func_4(arg_0: u32, arg_1: vec2<bool>) -> Struct_5 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(global0.a, global0.a))))), global0.a, true)));
    let var_1 = 1i;
    let var_2 = Struct_3(select(vec4<bool>(any(!vec4<bool>(arg_1.x, arg_1.x, false, false)), true, true & !arg_1.x, all(select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(true, true, true), arg_1.x))), select(select(vec4<bool>(false, arg_1.x, true, true), !vec4<bool>(false, arg_1.x, false, arg_1.x), true), vec4<bool>(any(vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x)), all(vec2<bool>(arg_1.x, true)), any(vec3<bool>(false, arg_1.x, true)), arg_1.x), vec4<bool>(!arg_1.x, false, func_3(vec3<u32>(32104u, 1u, u_input.b.x), 38333u), arg_1.x)), any(arg_1)), Struct_1(false, reverseBits(~(~vec4<u32>(u_input.b.x, arg_0, u_input.b.x, 42599u)))), ~(vec4<u32>(27755u, 70317u, 1u, arg_0) >> (select(vec4<u32>(u_input.b.x, 35772u, 53018u, arg_0), vec4<u32>(33137u, 89453u, 1u, 3685u), vec4<bool>(true, false, arg_1.x, false)) % vec4<u32>(32u))) & vec4<u32>(arg_0, u_input.b.x, 1u, ~u_input.b.x & ~u_input.b.x), Struct_2(Struct_1(false, _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 21055u, u_input.b.x), vec4<u32>(arg_0, 1u, u_input.b.x, arg_0)), vec4<u32>(4294967295u, 13434u, 1u, arg_0)))));
    let var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(213f, 165f, 725f, global0.a.x))))));
    var var_4 = select(_wgslsmith_div_vec4_i32(vec4<i32>(max(_wgslsmith_mod_i32(5119i, global1[_wgslsmith_index_u32(21479u, 4u)]), _wgslsmith_div_i32(var_1, var_1)), -global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 0u), 4u)], var_1, -21915i), firstLeadingBit(vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 4u)] >> (846u % 32u), _wgslsmith_mult_i32(11447i, global1[_wgslsmith_index_u32(51531u, 4u)]), global1[_wgslsmith_index_u32(0u, 4u)] & 37868i, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0, 1u), 4u)]))), firstTrailingBit(abs(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 36123i, var_1, 2097i), vec4<i32>(u_input.a.x, 6080i, 1i, u_input.a.x))))), !vec4<bool>(var_2.a.x, false, !any(var_2.a), var_2.a.x));
    return Struct_5(Struct_1(!arg_1.x, ~(~(var_2.b.b >> (vec4<u32>(1u, u_input.b.x, var_2.b.b.x, arg_0) % vec4<u32>(32u))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global2.xx * vec2<f32>(-1000f, 633f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(675f, -276f))), 594f);
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: f32, arg_3: u32) -> Struct_1 {
    var var_0 = false;
    let var_1 = false;
    var var_2 = func_4(_wgslsmith_sub_u32(func_2(0u, vec3<u32>(u_input.b.x, 15633u, min(arg_3, arg_3))), reverseBits(_wgslsmith_div_u32(66378u, u_input.b.x))), vec2<bool>(func_3(select(vec3<u32>(59997u, 1u, 4294967295u), vec3<u32>(39951u, u_input.b.x, arg_3), false), ~arg_3) | false, any(select(vec4<bool>(true, var_1, true, true), select(vec4<bool>(false, false, var_1, true), vec4<bool>(true, var_1, false, true), vec4<bool>(var_1, var_1, false, true)), !vec4<bool>(var_1, var_1, var_1, false)))));
    let var_3 = var_1 || true;
    let var_4 = func_4(18506u, select(vec2<bool>(all(!vec3<bool>(true, var_3, true)), !(!var_2.a.a)), vec2<bool>(!all(vec2<bool>(false, var_1)), arg_1 > arg_1), vec2<bool>(!any(vec3<bool>(false, var_2.a.a, var_1)), false)));
    return func_4(arg_3, !vec2<bool>(false, any(!vec4<bool>(true, var_1, var_4.a.a, var_4.a.a)))).a;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_4 {
    var var_0 = true;
    let var_1 = false;
    global2 = global0.a;
    var var_2 = func_4(33546u, !(!(!vec2<bool>(true, arg_0.a))));
    var_2 = Struct_5(arg_0, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c, global2.x) * _wgslsmith_f_op_vec2_f32(var_2.b - global2.xz)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global2.yy - vec2<f32>(global0.a.x, var_2.b.x)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1140f, _wgslsmith_f_op_f32(var_2.c * var_2.c)) * _wgslsmith_div_vec2_f32(vec2<f32>(global0.a.x, global2.x), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1602f, global0.a.x), global0.a.zz)))))), _wgslsmith_f_op_f32(-var_2.b.x));
    return Struct_4(global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global2.zxz))))), -59068i, global2.x, 1u), abs(reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 14010u), u_input.b))));
    let var_0 = Struct_2(func_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.a.x)) + _wgslsmith_f_op_f32(global2.x - -1929f)), 361f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -191f) + _wgslsmith_f_op_f32(-global2.x))), -(~global1[_wgslsmith_index_u32(1u, 4u)] | -u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(290f))) - global0.a.x), u_input.b.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a.zxy))), _wgslsmith_f_op_vec3_f32(sign(global2.xzx)))));
    let var_2 = _wgslsmith_f_op_f32(select(1066f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, _wgslsmith_div_f32(-1666f, -158f))) - 538f), !any(!(!vec4<bool>(var_0.a.a, var_0.a.a, true, var_0.a.a)))));
    global3 = func_1(global0.a.zzw, ~(~(~(~global1[_wgslsmith_index_u32(var_0.a.b.x, 4u)]))), var_2, ~(~(0u | ~u_input.b.x))).b.x;
    let var_3 = _wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec3<i32>(-26814i, 1i, 19730i)), countOneBits(vec3<i32>(u_input.a.x, 0i, -8242i))) << (u_input.b.x % 32u), ~77750i);
    let var_4 = vec3<i32>(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(var_0.a.b.x, u_input.b.x) >> (vec2<u32>(26405u, 18433u) % vec2<u32>(32u)), vec2<u32>(4294967295u, var_0.a.b.x) ^ var_0.a.b.xy, select(vec2<bool>(var_0.a.a, var_0.a.a), vec2<bool>(var_0.a.a, true), false)), vec2<u32>(func_1(global2.yzx, u_input.a.x, 1710f, u_input.b.x).b.x, _wgslsmith_clamp_u32(55900u, var_0.a.b.x, 4294967295u))), 4u)], 1i, ~(-66175i));
    global0 = Struct_4(global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(global2.zx, -firstTrailingBit(u_input.a.x), firstTrailingBit(func_4(~67645u, !vec2<bool>(var_0.a.a, true)).a.b.xxw), -11896i);
}

