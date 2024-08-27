struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_1 = Struct_1(0i, vec4<f32>(-1153f, 1521f, -666f, 261f), vec3<u32>(24250u, 1u, 1u), vec2<f32>(1176f, -704f));

var<private> global2: vec4<u32> = vec4<u32>(1u, 1u, 61176u, 1u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<u32> {
    let var_0 = ~countOneBits(global1.a);
    let var_1 = global1.d;
    let var_2 = -2295f;
    global1 = Struct_1(~_wgslsmith_add_i32(_wgslsmith_add_i32(var_0, firstTrailingBit(-28836i)), u_input.c.x), global1.b, global1.c, vec2<f32>(var_2, var_1.x));
    var var_3 = Struct_1(19286i, vec4<f32>(-2137f, _wgslsmith_f_op_f32(round(-528f)), -1000f, 570f), select(global1.c, ~_wgslsmith_mod_vec3_u32(global2.wyw, vec3<u32>(18504u, global2.x, 0u)), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(global1.d - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, 1372f), _wgslsmith_f_op_vec2_f32(trunc(global1.d)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))));
    return vec3<u32>(global2.x, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(max(u_input.a, global2.x), _wgslsmith_mult_u32(global2.x, global1.c.x), 60577u, abs(global2.x))), countOneBits(~vec4<u32>(0u, 0u, 33387u, var_3.c.x))), 1u);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<bool>) -> Struct_1 {
    global0 = vec2<i32>(_wgslsmith_dot_vec4_i32(-reverseBits(vec4<i32>(-25467i, 47498i, u_input.b, global0.x)), -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, global0.x, u_input.b, global1.a), vec4<i32>(global0.x, -2147483647i, 41904i, global1.a))) | (_wgslsmith_div_i32(u_input.c.x, global0.x) & global1.a), 1i);
    let var_0 = reverseBits(u_input.a) | global1.c.x;
    let var_1 = Struct_1(~22212i, global1.b, ~_wgslsmith_clamp_vec3_u32(func_3(), vec3<u32>(abs(u_input.a), ~43492u, var_0), vec3<u32>(min(47974u, arg_0.x), 1u, _wgslsmith_mult_u32(84832u, 34007u))), vec2<f32>(-838f, _wgslsmith_f_op_f32(abs(-995f))));
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> i32 {
    global2 = (~vec4<u32>(global2.x, 35272u, ~0u, _wgslsmith_div_u32(arg_3, 72936u)) << (~(vec4<u32>(global1.c.x, 4294967295u, arg_3, u_input.a) ^ (vec4<u32>(global1.c.x, 44937u, arg_2.c.x, 902u) & vec4<u32>(28891u, 44743u, global1.c.x, 4294967295u))) % vec4<u32>(32u))) << (vec4<u32>(~(~abs(1u)), arg_2.c.x, 12674u, arg_3) % vec4<u32>(32u));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, arg_2.b.x, arg_2.d.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.b.x, -261f, 2002f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b.zzx)), (26615u >= u_input.a) && all(vec4<bool>(true, false, false, true))))) + vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1028f)), -1222f));
    global2 = ~vec4<u32>(~1u, ~firstTrailingBit(arg_0.c.x), global2.x, _wgslsmith_sub_u32(~arg_3 >> (func_3().x % 32u), func_2(countOneBits(vec4<u32>(global2.x, arg_0.c.x, 16145u, 1u)), vec3<bool>(true, true, true)).c.x));
    global2 = firstLeadingBit(countOneBits(~abs(vec4<u32>(u_input.a, arg_2.c.x, arg_3, global2.x))) << (vec4<u32>(~_wgslsmith_mod_u32(u_input.a, u_input.a), _wgslsmith_add_u32(45465u, arg_2.c.x), arg_2.c.x, _wgslsmith_mod_u32(global2.x, global1.c.x)) % vec4<u32>(32u)));
    let var_1 = func_2(countOneBits(vec4<u32>(14750u, global2.x, 28095u, arg_3) >> (vec4<u32>(1u, global2.x, arg_3, global1.c.x) % vec4<u32>(32u))) << (abs(~vec4<u32>(arg_2.c.x, 12070u, 21788u, 29319u) >> (~vec4<u32>(global2.x, global2.x, u_input.a, 29494u) % vec4<u32>(32u))) % vec4<u32>(32u)), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-arg_2.b.x) > 1018f), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), true), vec3<bool>(0i == u_input.b, any(vec3<bool>(true, false, false)), true), true), vec3<bool>(select(true, all(vec2<bool>(true, false)), all(vec2<bool>(true, true))), true, _wgslsmith_f_op_f32(-236f * -483f) <= func_2(vec4<u32>(arg_2.c.x, arg_0.c.x, 1u, arg_3), vec3<bool>(false, true, true)).d.x)));
    return -2147483647i;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<i32>) -> u32 {
    global0 = reverseBits(-_wgslsmith_div_vec2_i32(vec2<i32>(~global1.a, global0.x), _wgslsmith_div_vec2_i32(u_input.c, vec2<i32>(41185i, u_input.c.x))));
    global0 = select(~vec2<i32>(-2147483647i, func_4(func_2(arg_1, vec3<bool>(true, true, false)), arg_0.b.x, arg_0, abs(arg_1.x))), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(countOneBits(u_input.c.x), ~u_input.b), 53469i), -35126i), vec2<bool>(true, true));
    global0 = vec2<i32>(-1i, arg_2.x);
    return ~arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -vec2<i32>(0i << (~func_1(Struct_1(global0.x, global1.b, vec3<u32>(global1.c.x, global1.c.x, global1.c.x), vec2<f32>(-722f, global1.d.x)), vec4<u32>(global1.c.x, 57761u, 61261u, 1u), vec4<i32>(global1.a, -1i, 8880i, -725i)) % 32u), ~global0.x);
    global1 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_div_i32(func_2(select(vec4<u32>(72930u, 0u, u_input.a, u_input.a), vec4<u32>(global1.c.x, 4046u, 110327u, 40548u), false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)).a, func_4(Struct_1(u_input.c.x, vec4<f32>(global1.d.x, global1.b.x, global1.d.x, global1.d.x), vec3<u32>(45883u, global2.x, 4294967295u), global1.b.zw), _wgslsmith_f_op_f32(trunc(global1.d.x)), Struct_1(28178i, vec4<f32>(global1.b.x, global1.d.x, -2297f, -1121f), vec3<u32>(58124u, global2.x, 14823u), global1.d), 1u)), _wgslsmith_div_i32(global0.x & 2147483647i, global0.x)), _wgslsmith_f_op_vec4_f32(-global1.b), _wgslsmith_mult_vec3_u32(func_3(), ~(~vec3<u32>(0u, 0u, 0u) >> (~global2.wxx % vec3<u32>(32u)))), global1.d);
    global0 = select(~vec2<i32>(u_input.c.x, u_input.b), ~(~(~u_input.c)), true) << (abs(vec2<u32>(firstTrailingBit(firstTrailingBit(4294967295u)), abs(1u))) % vec2<u32>(32u));
    global2 = vec4<u32>(44067u, ~global2.x, ~max(_wgslsmith_div_u32(max(u_input.a, u_input.a), func_1(Struct_1(global0.x, vec4<f32>(global1.d.x, 778f, global1.d.x, global1.b.x), vec3<u32>(0u, 8731u, 14889u), global1.d), vec4<u32>(11827u, 1u, 24738u, global2.x), vec4<i32>(1i, -26551i, global1.a, u_input.b))), ~_wgslsmith_mod_u32(62202u, u_input.a)), 0u);
    global2 = vec4<u32>(50629u, _wgslsmith_add_u32(1u, 35524u), 1539u, reverseBits(~u_input.a) ^ (8997u & _wgslsmith_div_u32(~global1.c.x, global1.c.x)));
    global0 = -vec2<i32>(abs(-u_input.b), select(u_input.b, 0i, false));
    var var_0 = vec4<bool>(abs(~(~global2.x)) <= _wgslsmith_div_u32(u_input.a, reverseBits(~5630u)), min(-(global1.a << (global1.c.x % 32u)), global1.a) == (global0.x & -61115i), !(!(any(vec3<bool>(false, false, true)) | any(vec3<bool>(true, true, false)))), false);
    var var_1 = 178f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_clamp_u32(51929u, 88408u, _wgslsmith_mod_u32(func_1(Struct_1(global0.x, global1.b, vec3<u32>(4294967295u, 4294967295u, global2.x), global1.d), vec4<u32>(global2.x, 4294967295u, global2.x, 1u), vec4<i32>(global1.a, global0.x, 2147483647i, global0.x)), global1.c.x)), u_input.a | (13212u & _wgslsmith_sub_u32(4294967295u, global1.c.x))), global1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -242f), vec2<u32>(firstTrailingBit(_wgslsmith_mod_u32(~u_input.a, u_input.a)), ~func_1(func_2(vec4<u32>(26743u, 18495u, 1u, u_input.a), var_0.zwy), vec4<u32>(global1.c.x, global2.x, 77061u, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -70541i, -1i, global1.a), vec4<i32>(2147483647i, u_input.c.x, 63419i, global1.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.d.x + _wgslsmith_f_op_f32(global1.b.x * -2253f)), global1.b.x, false)), _wgslsmith_f_op_f32(round(-1160f))));
}

