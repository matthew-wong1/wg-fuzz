struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 4294967295u, 46540u);

var<private> global1: vec4<u32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = 80775i;
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(min(abs(vec4<u32>(arg_2, arg_3.a, arg_2, global0.x)), vec4<u32>(_wgslsmith_add_u32(arg_3.a, 4294967295u), ~39610u, arg_2, _wgslsmith_mod_u32(u_input.c.x, global0.x))), u_input.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-450f + 1375f))) + arg_0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1299f)), arg_0.b)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(54352u, 29423u, 1u, arg_3.c), u_input.a), firstTrailingBit(~arg_2), ~_wgslsmith_add_u32(_wgslsmith_mod_u32(51696u, global0.x), 1u)), select(max(vec3<i32>(arg_3.d.x, 1i, abs(u_input.e.x)), -u_input.b.yzz), countOneBits(vec3<i32>(-1i, _wgslsmith_sub_i32(arg_3.d.x, var_0), -2147483647i)), !(!(!vec3<bool>(arg_1.x, arg_1.x, false)))));
    let var_2 = var_1;
    var var_3 = Struct_1(arg_3.c, arg_3.b, 50940u, var_2.d);
    return -_wgslsmith_clamp_vec4_i32(-u_input.b, -u_input.b, abs(u_input.b << (u_input.a % vec4<u32>(32u))) << (reverseBits(vec4<u32>(arg_0.a, 0u, var_2.c, 46943u)) % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> bool {
    var var_0 = arg_0;
    global0 = vec3<u32>(select(_wgslsmith_div_u32(_wgslsmith_div_u32(var_0.c & var_0.c, ~15499u), 10251u), ~45835u, arg_0.d.x >= _wgslsmith_dot_vec4_i32(func_3(arg_0, vec3<bool>(false, false, true), u_input.c.x, arg_0), vec4<i32>(48862i, 51482i, var_0.d.x, 12868i) << (u_input.a % vec4<u32>(32u)))), 1u << (~arg_1 % 32u), ~var_0.a);
    var var_1 = arg_0.d.x;
    return !(u_input.e.x >= 2147483647i);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<bool>) -> vec2<bool> {
    var var_0 = min(vec3<i32>(reverseBits(u_input.b.x), u_input.d.x, ~arg_0.d.x), abs(firstLeadingBit(firstLeadingBit(_wgslsmith_add_vec3_i32(arg_0.d, arg_0.d)))));
    var_0 = ~(-firstLeadingBit(firstTrailingBit(vec3<i32>(arg_0.d.x, 18123i, var_0.x) & vec3<i32>(arg_0.d.x, arg_0.d.x, 25223i))));
    var var_1 = Struct_1(reverseBits(arg_0.a), arg_0.b, _wgslsmith_sub_u32(1u, 0u), arg_0.d);
    let var_2 = select(arg_2.yz, vec2<bool>(!(arg_2.x | func_2(arg_0, 1u)), true), !(!select(arg_2.wz, vec2<bool>(arg_2.x, arg_2.x), !vec2<bool>(arg_2.x, true))));
    global0 = ~vec3<u32>(u_input.a.x, 4294967295u, ~(~_wgslsmith_mult_u32(4294967295u, global0.x)));
    return !var_2;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = ~(~min(6473u, min(_wgslsmith_div_u32(0u, 36654u), arg_3.c)));
    let var_1 = arg_3.d.x;
    var var_2 = -vec2<i32>(_wgslsmith_mult_i32(i32(-1i) * -u_input.b.x, ~(-4400i)), arg_3.d.x);
    global0 = global1.zwy;
    let var_3 = Struct_1(_wgslsmith_add_u32(u_input.c.x, 43143u), arg_3.b, 61497u, vec3<i32>(arg_0.x, _wgslsmith_div_i32(firstLeadingBit(-19013i), abs(-66732i)), arg_3.d.x));
    return Struct_1(global0.x, _wgslsmith_f_op_f32(-var_3.b), 0u, -(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.d, arg_3.d), u_input.b.zzy) >> (~u_input.a.zww % vec3<u32>(32u))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<u32>, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = 4294967295u;
    let var_1 = func_4(firstLeadingBit(vec2<i32>(select(i32(-1i) * -46194i, arg_1.x, true), _wgslsmith_clamp_i32(0i, arg_0.d.x, -arg_0.d.x))), select(vec2<bool>((0u >> (u_input.c.x % 32u)) != abs(u_input.c.x), all(vec3<bool>(true, true, true))), vec2<bool>(true, true), true), -_wgslsmith_mult_i32(abs(firstTrailingBit(arg_0.d.x)), _wgslsmith_sub_i32(26603i, ~u_input.b.x)), func_4(firstLeadingBit(arg_0.d.zy), !select(vec2<bool>(true, true), func_1(arg_0, vec2<u32>(global0.x, arg_2.x), vec4<bool>(false, false, false, false)), vec2<bool>(true, true)), _wgslsmith_add_i32(arg_0.d.x, -2147483647i) >> ((4294967295u << (arg_0.c % 32u)) % 32u), func_4(~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, 0i), vec2<i32>(u_input.b.x, arg_0.d.x)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true), true), abs(-2147483647i >> (arg_0.c % 32u)), func_4(-arg_3.d.zx, vec2<bool>(true, true), u_input.e.x, arg_3))));
    var var_2 = _wgslsmith_dot_vec3_u32(~global1.zxx, countOneBits(~abs(global1.wyw) & select(reverseBits(vec3<u32>(0u, global1.x, arg_0.a)), u_input.a.ywx >> (global1.yzy % vec3<u32>(32u)), vec3<bool>(true, true, false))));
    var var_3 = !select(vec2<bool>(func_2(arg_3, u_input.c.x | var_1.a), true), select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), func_1(arg_0, vec2<u32>(arg_3.a, arg_3.a), vec4<bool>(true, true, true, true)), true), vec2<bool>(true, true), true), true);
    let var_4 = 4294967295u;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.b, arg_3.b), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1207f, 1299f)))), select(!vec2<bool>(var_3.x, var_3.x), vec2<bool>(true, true), vec2<bool>(true, var_3.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-397f, -1620f), vec2<f32>(688f, 1755f)))), select(vec2<bool>(false & var_3.x, func_2(Struct_1(var_1.c, 1334f, var_1.c, vec3<i32>(u_input.b.x, 1i, -2147483647i)), 42048u)), vec2<bool>(var_3.x, true), vec2<bool>(true, any(vec3<bool>(false, var_3.x, true)))))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_3.b)), arg_3.b), 2117f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(980f))), -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(429f - -969f)) + -3310f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(func_4(u_input.b.zx, func_1(Struct_1(0u, 903f, global0.x, u_input.d), global0.xz, vec4<bool>(false, false, false, true)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, -1i, -1i, -11373i), u_input.b), Struct_1(52647u, 366f, 5142u, vec3<i32>(-2147483647i, 46545i, u_input.b.x))), vec4<i32>(u_input.e.x | -14536i, 2147483647i, -u_input.b.x, i32(-1i) * -1i), ~vec3<u32>(0u, global1.x, 38397u), Struct_1(1u, _wgslsmith_f_op_f32(abs(210f)), 16821u, u_input.d)))));
    global0 = ~(max(max(vec3<u32>(26851u, 1u, u_input.a.x), u_input.a.zyz) >> ((vec3<u32>(5221u, global1.x, 4294967295u) >> (global1.xxx % vec3<u32>(32u))) % vec3<u32>(32u)), ~_wgslsmith_mult_vec3_u32(u_input.a.xxy, u_input.a.zww)) >> (select(vec3<u32>(~4294967295u, 27005u, _wgslsmith_clamp_u32(1u, 1u, global1.x)), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, global1.x, 0u), vec3<u32>(4294967295u, global0.x, global1.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, global1.x, 80745u), vec3<u32>(29208u, 4294967295u, global1.x))), vec3<bool>(true, true, all(vec4<bool>(true, false, false, false)))) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_div_vec2_i32(u_input.e.zz, u_input.d.xx);
    global0 = u_input.a.wyz;
    var var_2 = !(!vec4<bool>(!select(true, false, false), any(vec4<bool>(false, false, true, false)), true, any(vec4<bool>(true, true, true, false))));
    var var_3 = !var_2.x;
    global1 = u_input.a;
    var var_4 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1842f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_0 - var_0))), _wgslsmith_add_u32(global1.x, global0.x ^ _wgslsmith_mult_u32(u_input.c.x, ~5922u)));
}

