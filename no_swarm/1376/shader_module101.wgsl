struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 19> = array<vec2<i32>, 19>(vec2<i32>(-46529i, 0i), vec2<i32>(24485i, 0i), vec2<i32>(-73717i, -27741i), vec2<i32>(0i, -1i), vec2<i32>(1i, 37642i), vec2<i32>(-3692i, 4548i), vec2<i32>(-35961i, -46830i), vec2<i32>(2147483647i, 32448i), vec2<i32>(-71279i, -7385i), vec2<i32>(2147483647i, -5875i), vec2<i32>(25950i, -2881i), vec2<i32>(i32(-2147483648), 60084i), vec2<i32>(1i, 0i), vec2<i32>(35813i, -30616i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-1i, 2147483647i), vec2<i32>(-1i, 39612i), vec2<i32>(1i, -29247i), vec2<i32>(-1i, 36071i));

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_add_i32(-1i, _wgslsmith_div_i32(u_input.a.x & u_input.a.x, u_input.a.x));
    let var_1 = arg_3;
    global0 = array<vec2<i32>, 19>();
    let var_2 = vec2<i32>(-40141i, u_input.c);
    var var_3 = Struct_1(any(!(!vec4<bool>(global1.x, arg_0.x, arg_3.a, var_1.a))) || (var_1.e.x == arg_2.e.x), _wgslsmith_f_op_f32(round(arg_3.b)), ~vec3<u32>(~arg_3.c.x, ~abs(81933u), arg_2.c.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.x, var_1.b, -490f, arg_2.b) - vec4<f32>(arg_3.b, arg_2.b, var_1.d.x, -484f))), vec4<f32>(205f, _wgslsmith_f_op_f32(f32(-1f) * -1227f), _wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b - 1307f))), var_1.a)), arg_3.e);
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(arg_3.d + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_3.d * vec4<f32>(arg_1.d.x, 875f, -2023f, 777f))) + arg_1.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_3.d))))));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: f32) -> vec4<f32> {
    let var_0 = 0u;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -951f), _wgslsmith_f_op_f32(-arg_2), arg_2, _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(true, global1.x, global1.x), Struct_1(global1.x, 2223f, vec3<u32>(var_0, 0u, 46986u), vec4<f32>(448f, arg_2, -227f, -614f), vec3<u32>(u_input.b.x, 0u, 4294967295u)), Struct_1(global1.x, -1354f, arg_1, vec4<f32>(arg_2, 1480f, arg_2, arg_2), vec3<u32>(32760u, 56913u, 4294967295u)), Struct_1(global1.x, 1256f, vec3<u32>(var_0, var_0, arg_0), vec4<f32>(arg_2, arg_2, arg_2, -385f), vec3<u32>(u_input.b.x, 0u, arg_0)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1840f, arg_2, 2031f, arg_2) + vec4<f32>(-1019f, 946f, arg_2, arg_2))))));
}

fn func_1() -> Struct_1 {
    global0 = array<vec2<i32>, 19>();
    var var_0 = global1.x;
    var var_1 = vec4<bool>(true, true, false, !global1.x);
    let var_2 = any(var_1.xww);
    var var_3 = Struct_1(true, _wgslsmith_f_op_f32(-472f - -393f), vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-141f, 1277f, 1000f, 1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(147f, 694f, -423f, 1309f) + vec4<f32>(-1160f, 734f, -312f, -957f))) + _wgslsmith_f_op_vec4_f32(func_2(28044u, vec3<u32>(u_input.b.x, 20761u, 4294967295u), 1068f)))), vec3<u32>(62065u, _wgslsmith_sub_u32(u_input.b.x, ~u_input.b.x >> (1u % 32u)), 51194u));
    return Struct_1(var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1338f + 2088f)), select(vec3<u32>(_wgslsmith_mod_u32(~var_3.e.x, u_input.b.x), select(~4294967295u, 4294967295u, false), 7356u), _wgslsmith_mult_vec3_u32(vec3<u32>(~1u, 1u, countOneBits(43910u)), u_input.b.ywz ^ _wgslsmith_clamp_vec3_u32(u_input.b.xww, u_input.b.wwx, var_3.c)), false), var_3.d, var_3.c | abs(_wgslsmith_clamp_vec3_u32(~u_input.b.xyx, reverseBits(vec3<u32>(u_input.b.x, 39560u, var_3.e.x)), abs(u_input.b.yxz))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(u_input.c >= 1i, -662f, min(u_input.b.zzy, arg_1.e), arg_1.d, select(arg_1.e, vec3<u32>(0u << (abs(arg_1.c.x) % 32u), u_input.b.x, firstLeadingBit(~17151u)), select(global1.zxw, !(!global1.xwy), !(!global1.zxw))));
    let var_1 = vec3<bool>(all(select(vec4<bool>(!arg_1.a, false & var_0.a, !global1.x, true), vec4<bool>(!var_0.a, false != arg_1.a, !arg_1.a, true), all(select(vec4<bool>(arg_1.a, true, true, true), vec4<bool>(arg_1.a, false, true, false), vec4<bool>(global1.x, arg_1.a, arg_1.a, arg_1.a))))), true, false);
    let var_2 = func_1();
    let var_3 = 4294967295u;
    var var_4 = vec3<f32>(-1057f, _wgslsmith_f_op_f32(-arg_1.d.x), 1000f);
    return Struct_1(!global1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.d.x, -132f, true)), var_0.d.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.d.x))))))), ~vec3<u32>(1u, ~46953u, firstTrailingBit(~1u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1204f, -291f, -1549f, 111f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x - var_4.x)), _wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(ceil(var_2.b))), -1758f, var_2.b))), vec3<u32>(~(~arg_0.x), arg_1.c.x, 0u ^ max(min(2985u, arg_0.x), ~0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(u_input.b << (vec4<u32>(~firstLeadingBit(u_input.b.x), min(47849u, u_input.b.x) << (u_input.b.x % 32u), 0u, 119789u) % vec4<u32>(32u)), func_1());
    let var_1 = var_0.b;
    let var_2 = Struct_1(true, -287f, vec3<u32>(func_1().e.x, _wgslsmith_add_u32(var_0.e.x, ~0u), u_input.b.x), var_0.d, ~(~(~u_input.b.xzw)));
    let var_3 = var_0.d.x;
    global0 = array<vec2<i32>, 19>();
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1533f)) + var_0.b)))));
    global1 = vec4<bool>(true, all(vec3<bool>(false, var_2.a, global1.x)), !func_4(vec4<u32>(1u, min(var_0.c.x, 82927u), var_2.e.x, ~u_input.b.x), Struct_1(var_2.a, var_2.d.x, ~var_2.c, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1022f, -501f, var_1, -656f))), vec3<u32>(var_2.c.x, var_2.c.x, var_2.c.x))).a, !select(func_4(u_input.b, var_2).b != 378f, var_2.a, true || global1.x));
    var var_5 = vec2<u32>(var_2.e.x, func_4(_wgslsmith_div_vec4_u32(vec4<u32>(func_4(u_input.b, Struct_1(var_2.a, -161f, vec3<u32>(u_input.b.x, u_input.b.x, 0u), vec4<f32>(-629f, -1269f, 1532f, -562f), var_2.c)).e.x, var_0.c.x & 1u, func_4(vec4<u32>(u_input.b.x, var_2.e.x, u_input.b.x, u_input.b.x), Struct_1(global1.x, -112f, u_input.b.wxx, var_0.d, var_2.e)).c.x, u_input.b.x), u_input.b), Struct_1(!(!var_0.a), _wgslsmith_f_op_f32(var_2.d.x + 215f), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(var_0.e, vec3<u32>(1u, var_0.e.x, var_0.e.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.c.x, 0u, var_2.c.x), vec3<u32>(0u, u_input.b.x, 1u), vec3<u32>(4294967295u, u_input.b.x, var_2.e.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(global1.www, var_0, var_2, Struct_1(false, var_3, var_0.e, var_0.d, u_input.b.zzz))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1048f, var_3, var_4, -1545f) - vec4<f32>(var_3, var_1, var_1, var_3))), vec3<u32>(_wgslsmith_mult_u32(0u, var_0.c.x), var_0.c.x, 0u))).e.x);
    global0 = array<vec2<i32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<i32>(31397i, u_input.a.x, u_input.a.x)), u_input.b, ~(-vec3<i32>(min(u_input.d.x, 16198i), _wgslsmith_sub_i32(0i, u_input.c), _wgslsmith_sub_i32(-40195i, u_input.d.x))), ~max(abs(vec4<i32>(-1i, u_input.c, u_input.c, u_input.a.x) << (u_input.b % vec4<u32>(32u))), -(vec4<i32>(2147483647i, 4114i, u_input.d.x, -2147483647i) & vec4<i32>(u_input.d.x, u_input.a.x, -49099i, -54195i))), _wgslsmith_f_op_vec4_f32(select(var_2.d, var_2.d, select(!select(vec4<bool>(var_2.a, false, var_2.a, var_2.a), vec4<bool>(false, global1.x, false, true), vec4<bool>(true, global1.x, var_0.a, var_0.a)), !(!vec4<bool>(true, var_2.a, false, var_2.a)), !var_2.a))));
}

