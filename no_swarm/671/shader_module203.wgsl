struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_2,
    d: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<bool>(false, false, false, true), vec3<f32>(1128f, -1000f, 101f), Struct_1(vec2<u32>(13499u, 0u), false, vec2<u32>(1u, 1u), vec3<i32>(1i, -37508i, 0i), vec4<bool>(false, true, false, false)));

var<private> global1: Struct_5 = Struct_5(32073u, Struct_3(3774i, vec3<f32>(214f, 383f, -1000f), Struct_1(vec2<u32>(108539u, 0u), false, vec2<u32>(5618u, 1u), vec3<i32>(0i, -12364i, 26430i), vec4<bool>(false, false, false, false)), vec3<bool>(false, false, false)));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<u32>) -> f32 {
    global1 = Struct_5(select(_wgslsmith_sub_u32(max(global0.c.a.x, 15819u), 4294967295u) & _wgslsmith_dot_vec3_u32(vec3<u32>(54513u, global0.c.a.x, 0u), _wgslsmith_mod_vec3_u32(arg_2, arg_2)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_1.c.x, arg_0.c.a.x << (arg_1.c.x % 32u)), arg_1.a.x), true), Struct_3(arg_0.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global1.b.b))))), global1.b.c, global0.c.e.xxw));
    let var_0 = Struct_2(select(select(select(arg_0.c.e, arg_1.e, any(vec2<bool>(false, false))), global0.a, global1.b.c.b), vec4<bool>(false, global0.a.x, true, arg_1.e.x), true), global1.b.b, Struct_1(arg_0.c.c, !(!arg_1.e.x & true), global0.c.c, vec3<i32>(abs(~(-1i)), -1i, ~1i), vec4<bool>(any(vec4<bool>(arg_1.e.x, arg_1.e.x, false, global1.b.c.b)), true, true, !any(arg_1.e.xz))));
    global1 = Struct_5(~(~102341u), Struct_3(arg_0.c.d.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b.x, 706f, 1049f), var_0.b))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(var_0.b))))), arg_0.c, vec3<bool>(!var_0.a.x, false, arg_0.c.b)));
    let var_1 = Struct_4(global1.b, _wgslsmith_dot_vec4_u32(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(global0.c.c.x, arg_2.x, global1.a, 1u), vec4<u32>(arg_0.c.c.x, arg_2.x, global0.c.c.x, 59559u))), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global0.c.a.x, arg_1.c.x, arg_1.c.x), ~vec4<u32>(80882u, 3196u, 1u, arg_1.c.x)))), var_0, global1.b.c.a.x);
    var var_2 = Struct_1(firstLeadingBit(~arg_2.yy), !var_1.c.c.e.x, vec2<u32>(1u, arg_1.c.x), _wgslsmith_clamp_vec3_i32(~_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.c.d.x, arg_0.a, global0.c.d.x), arg_1.d), ~arg_0.c.d), vec3<i32>(arg_0.c.d.x, i32(-1i) * -1443i, -arg_1.d.x) >> (select(vec3<u32>(arg_2.x, arg_2.x, 39895u), firstLeadingBit(vec3<u32>(4294967295u, u_input.a, var_1.d)), all(arg_1.e.yww)) % vec3<u32>(32u)), vec3<i32>(global1.b.a, max(1i, firstTrailingBit(-1i)), abs(var_1.a.c.d.x))), select(select(global0.a, select(vec4<bool>(false, false, var_0.a.x, true), select(vec4<bool>(true, true, global0.c.b, global1.b.d.x), vec4<bool>(true, true, arg_1.b, true), var_1.c.a.x), select(var_1.a.c.e, vec4<bool>(global0.a.x, false, var_1.a.d.x, true), false)), all(var_1.a.d.yz)), vec4<bool>(global0.c.b, !all(var_0.a.xy), arg_1.b, false), ~(~2749u) != (_wgslsmith_add_u32(56003u, global0.c.c.x) >> (_wgslsmith_add_u32(global1.b.c.c.x, arg_1.a.x) % 32u))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-753f * 543f) - global0.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -466f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -226f) - _wgslsmith_f_op_f32(step(global1.b.b.x, -472f))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<f32>) -> vec2<i32> {
    global1 = Struct_5(_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(1u & global0.c.c.x, 4294967295u | global0.c.c.x), arg_0.x), 42944u), Struct_3(~(-max(global0.c.d.x, global1.b.a)), vec3<f32>(global1.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1.b, Struct_1(global1.b.c.a, true, vec2<u32>(arg_0.x, global0.c.a.x), vec3<i32>(-18729i, global1.b.a, -2147483647i), global0.a), arg_0))), _wgslsmith_f_op_f32(-global1.b.b.x)), global0.c, !select(global1.b.c.e.www, global0.c.e.zxw, true)));
    global0 = Struct_2(vec4<bool>(false, global1.b.d.x, all(!vec4<bool>(global0.c.e.x, global0.a.x, true, global1.b.c.e.x)), reverseBits(min(6031u, 4294967295u)) >= global0.c.c.x), vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(-global0.b.x), 1377f), global1.b.c);
    global1 = Struct_5(~_wgslsmith_mod_u32(reverseBits(42342u) >> (~global1.a % 32u), max(9971u >> (u_input.a % 32u), ~4294967295u)), Struct_3(~(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.c.d.x, -1i, -41889i), global1.b.c.d) >> (1u % 32u)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x - 2787f) + global0.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.b.x, -1351f, false)) + _wgslsmith_f_op_f32(-global0.b.x))), Struct_1(~_wgslsmith_div_vec2_u32(global1.b.c.a, arg_0.xz), true, ~vec2<u32>(u_input.a, 17851u), vec3<i32>(~global1.b.c.d.x, select(-1576i, global0.c.d.x, true), select(global0.c.d.x, global1.b.a, false)), vec4<bool>(global0.c.b || global1.b.c.e.x, true, global1.b.c.b || false, all(global0.a.zzw))), !select(vec3<bool>(true, false, global1.b.c.b), select(global0.c.e.wyz, vec3<bool>(global1.b.d.x, false, global0.a.x), vec3<bool>(false, global0.c.b, global0.a.x)), global0.a.xxx)));
    let var_0 = Struct_4(Struct_3(0i, _wgslsmith_f_op_vec3_f32(-global1.b.b), Struct_1(vec2<u32>(_wgslsmith_div_u32(arg_0.x, global0.c.c.x), 100697u), (false || global0.a.x) || false, ~arg_0.zx, -vec3<i32>(1i, global1.b.c.d.x, -27469i), vec4<bool>(true, true, global1.b.d.x || false, false)), vec3<bool>(global1.b.c.b, !(!global1.b.c.b), !global0.a.x)), _wgslsmith_mult_u32(firstLeadingBit(~min(53851u, 4294967295u)), global0.c.a.x), Struct_2(select(global1.b.c.e, vec4<bool>(all(global0.a.wx), !global1.b.d.x, !global0.a.x, any(vec3<bool>(global1.b.c.e.x, false, true))), select(!global0.a, !global1.b.c.e, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global1.b.b, vec3<f32>(302f, global0.b.x, 681f)))), global0.c), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~95118u, _wgslsmith_mod_u32(u_input.b, 1u), ~23888u, 1u), ~min(vec4<u32>(u_input.b, global0.c.c.x, global1.a, arg_0.x), vec4<u32>(1u, global0.c.a.x, 34794u, global0.c.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(638u, 42892u, global0.c.a.x, u_input.a), vec4<u32>(arg_0.x, 4294967295u, 0u, 1u)) | (vec4<u32>(global0.c.a.x, 63728u, arg_0.x, global1.a) << (vec4<u32>(1u, global0.c.c.x, u_input.a, 40348u) % vec4<u32>(32u)))), countOneBits(vec4<u32>(countOneBits(34548u), _wgslsmith_add_u32(arg_0.x, global0.c.c.x), 58156u >> (global1.a % 32u), _wgslsmith_div_u32(0u, 23412u)))));
    var var_1 = _wgslsmith_mod_vec4_u32(~select(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.a, global1.a, 21155u, u_input.a), vec4<u32>(global1.a, 4294967295u, 1u, 1u)), vec4<u32>(4294967295u, 12093u, 0u, 0u) >> (vec4<u32>(37515u, global0.c.a.x, 20658u, 4092u) % vec4<u32>(32u))), select(~vec4<u32>(42718u, global0.c.a.x, var_0.d, 54332u), vec4<u32>(global1.b.c.a.x, 63996u, u_input.b, global0.c.c.x), all(vec4<bool>(true, var_0.c.c.b, false, global0.a.x))), any(select(var_0.a.d, vec3<bool>(var_0.c.c.b, global0.c.b, global0.c.b), false))), min(~(min(vec4<u32>(1u, var_0.d, global1.a, 1u), vec4<u32>(u_input.a, 40895u, global0.c.c.x, global0.c.a.x)) & vec4<u32>(global0.c.c.x, global0.c.c.x, u_input.b, global1.a)), vec4<u32>(~select(1u, 4294967295u, global0.a.x), 4294967295u, countOneBits(0u), firstLeadingBit(var_0.c.c.c.x))));
    return vec2<i32>(abs(_wgslsmith_add_i32(abs(abs(global0.c.d.x)), -1i)), global0.c.d.x);
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> Struct_4 {
    var var_0 = global0.b.yy;
    var var_1 = Struct_4(global1.b, ~_wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_add_vec2_u32(global1.b.c.c, vec2<u32>(41140u, 0u))), min(~vec2<u32>(global1.b.c.a.x, arg_2.c.a.x), global1.b.c.a ^ global0.c.c)), arg_2, _wgslsmith_mod_u32(u_input.a, 43422u));
    var var_2 = ~vec2<u32>(_wgslsmith_sub_u32(4294967295u, 1u), ~_wgslsmith_div_u32(var_1.c.c.c.x, 1u));
    global1 = Struct_5(abs(_wgslsmith_clamp_u32(8651u, min(max(global0.c.c.x, var_1.a.c.a.x), global1.a), global0.c.c.x & 88326u)), Struct_3(-(~arg_0) | _wgslsmith_div_i32(1i, arg_2.c.d.x), global1.b.b, arg_2.c, select(!(!global1.b.c.e.xzz), vec3<bool>(global1.b.c.b, var_1.a.c.e.x, true), false)));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.x)))));
    return Struct_4(Struct_3(global0.c.d.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a.b))), Struct_1(global1.b.c.c, global0.c.e.x, ~_wgslsmith_sub_vec2_u32(global1.b.c.c, vec2<u32>(arg_2.c.c.x, arg_2.c.a.x)), ~(global1.b.c.d >> (vec3<u32>(arg_2.c.a.x, 67744u, 0u) % vec3<u32>(32u))), select(select(vec4<bool>(true, global0.a.x, arg_2.c.b, true), global1.b.c.e, false), vec4<bool>(true, true, true, true), var_1.c.c.e)), select(var_1.c.a.yyw, global0.a.zwz, true & global0.c.e.x)), abs(~1u), arg_2, global1.a);
}

fn func_5(arg_0: Struct_4) -> Struct_1 {
    global1 = Struct_5(~(select(13156u, arg_0.a.c.a.x, any(vec4<bool>(true, false, global0.a.x, false))) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.c.c.x, u_input.b, 31129u), vec3<u32>(59778u, arg_0.c.c.a.x, u_input.b)) % 32u)), global1.b);
    var var_0 = global0.b.x;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.a.b.x * global1.b.b.x))) + _wgslsmith_f_op_f32(global1.b.b.x * func_4(-50673i, arg_0.c.c.d.x, Struct_2(vec4<bool>(false, false, true, false), vec3<f32>(global1.b.b.x, global0.b.x, global0.b.x), Struct_1(vec2<u32>(u_input.b, 1u), arg_0.a.c.e.x, vec2<u32>(4294967295u, 43234u), vec3<i32>(arg_0.a.a, 35597i, arg_0.c.c.d.x), global1.b.c.e))).c.b.x))));
    let var_1 = ~vec3<i32>(-2147483647i, ~_wgslsmith_add_i32(global1.b.a, -2147483647i), global0.c.d.x) ^ ~(countOneBits(arg_0.c.c.d ^ global0.c.d) & arg_0.c.c.d);
    let var_2 = Struct_3(_wgslsmith_div_i32(~var_1.x, var_1.x), global1.b.b, func_4(global1.b.c.d.x, _wgslsmith_mod_i32(-47512i, -abs(global1.b.c.d.x)), func_4(~firstTrailingBit(18038i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, var_1.x), var_1.xx), Struct_2(select(vec4<bool>(false, true, global1.b.c.e.x, true), vec4<bool>(arg_0.a.c.b, true, global1.b.c.e.x, arg_0.a.d.x), vec4<bool>(arg_0.a.c.b, arg_0.c.c.e.x, false, false)), arg_0.c.b, Struct_1(arg_0.c.c.c, false, vec2<u32>(global1.a, global0.c.c.x), global0.c.d, global1.b.c.e))).c).c.c, vec3<bool>(global1.b.c.b, !(!arg_0.a.d.x), -1341f <= _wgslsmith_div_f32(global1.b.b.x, -398f)));
    return var_2.c;
}

fn func_1(arg_0: u32) -> vec3<f32> {
    var var_0 = firstLeadingBit(~global1.b.a);
    let var_1 = func_5(func_4(_wgslsmith_mult_i32(max(3215i ^ global1.b.a, _wgslsmith_add_i32(-14257i, 5053i)), -40324i), _wgslsmith_dot_vec2_i32(func_2(vec3<u32>(0u, u_input.b, global1.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(716f, global0.b.x, global0.b.x) + global1.b.b)), ~_wgslsmith_mod_vec2_i32(global1.b.c.d.zx, vec2<i32>(-3854i, -23298i))), Struct_2(vec4<bool>(true, select(true, global1.b.c.b, global0.c.e.x), all(global0.a), -1i <= global1.b.a), global1.b.b, Struct_1(global1.b.c.c & vec2<u32>(u_input.b, 9190u), global0.b.x < global0.b.x, _wgslsmith_clamp_vec2_u32(global1.b.c.a, vec2<u32>(6350u, global0.c.c.x), global1.b.c.c), global0.c.d, select(global0.c.e, vec4<bool>(true, true, false, false), true)))));
    var var_2 = true & var_1.e.x;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(func_4(_wgslsmith_clamp_i32(2147483647i, global0.c.d.x, 47713i) | 1i, -1i << (arg_0 % 32u), func_4(_wgslsmith_mod_i32(global0.c.d.x, global1.b.c.d.x), -58283i, Struct_2(vec4<bool>(true, global1.b.c.b, false, global0.c.e.x), global1.b.b, global0.c)).c).a, func_5(Struct_4(global1.b, 4294967295u, Struct_2(var_1.e, global1.b.b, Struct_1(var_1.c, global1.b.c.b, vec2<u32>(1u, 13202u), vec3<i32>(var_1.d.x, global0.c.d.x, var_1.d.x), vec4<bool>(global1.b.c.e.x, global1.b.c.e.x, var_1.e.x, false))), global1.a)), reverseBits(vec3<u32>(78619u, global0.c.a.x, global0.c.a.x) >> (abs(vec3<u32>(var_1.a.x, u_input.b, var_1.c.x)) % vec3<u32>(32u))))) - global1.b.b.x);
    global0 = func_4(_wgslsmith_div_i32(-(-2147483647i & global0.c.d.x), func_5(Struct_4(Struct_3(27964i, global0.b, Struct_1(global0.c.c, false, global1.b.c.c, vec3<i32>(var_1.d.x, -72726i, global0.c.d.x), vec4<bool>(true, false, global0.a.x, false)), vec3<bool>(global1.b.d.x, global1.b.c.e.x, var_1.e.x)), 48167u, Struct_2(var_1.e, global0.b, Struct_1(vec2<u32>(arg_0, global0.c.c.x), false, var_1.a, vec3<i32>(var_1.d.x, global1.b.c.d.x, 888i), var_1.e)), global1.a)).d.x | global1.b.c.d.x) & (select(global1.b.c.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(45254i, -25094i), vec2<i32>(var_1.d.x, 0i)), global1.b.d.x) & 2147483647i), _wgslsmith_dot_vec3_i32(-(~vec3<i32>(7853i, var_1.d.x, 1i)), global0.c.d), Struct_2(global1.b.c.e, _wgslsmith_f_op_vec3_f32(global0.b - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b.b))), Struct_1(global0.c.a, ~u_input.b > _wgslsmith_div_u32(global0.c.c.x, arg_0), ~(~vec2<u32>(4294967295u, 105371u)), ~var_1.d, !(!var_1.e)))).c;
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(486f)) * 574f)) + -1213f), -563f, 112f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(select(select(global0.a, global0.a, global0.a.x), vec4<bool>(global0.c.e.x, global1.b.d.x, true, all(global1.b.c.e)), !(global0.c.e.x | true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b.b))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, global1.a, u_input.b), vec4<u32>(0u, 0u, global1.a, global1.b.c.a.x)))), vec3<f32>(_wgslsmith_f_op_f32(1594f * -1000f), _wgslsmith_f_op_f32(-1391f - 349f), _wgslsmith_div_f32(global0.b.x, 1567f))))), func_5(Struct_4(func_4(global0.c.d.x, ~global0.c.d.x, func_4(global1.b.a, global1.b.a, Struct_2(vec4<bool>(true, true, global1.b.d.x, false), vec3<f32>(global1.b.b.x, global1.b.b.x, -703f), global1.b.c)).c).a, func_4(13372i, global1.b.c.d.x << (u_input.b % 32u), Struct_2(vec4<bool>(true, true, true, global0.c.b), vec3<f32>(-599f, global0.b.x, -1954f), Struct_1(vec2<u32>(0u, u_input.a), global0.c.b, vec2<u32>(11946u, 0u), global0.c.d, global1.b.c.e))).d, Struct_2(select(vec4<bool>(true, false, global1.b.d.x, global0.a.x), global0.a, vec4<bool>(global0.c.b, true, global0.a.x, true)), vec3<f32>(-1000f, 2846f, global0.b.x), global1.b.c), ~u_input.a | u_input.b)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1326f), global0.b.x, global0.b.x, 958f);
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(global1.b.b.x)), _wgslsmith_div_f32(var_0.b.x, 903f), global1.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) * global0.b.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(global1.b, global1.b.c, vec3<u32>(0u, var_0.c.c.x, 4294967295u))), var_0.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(495f * -1403f), !global1.b.d.x)), 868f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1636f, 610f, -1315f, -744f) - vec4<f32>(736f, 295f, global1.b.b.x, var_1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(893f, 524f, 366f, var_0.b.x))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1266f, -534f, global0.b.x, -1000f) - vec4<f32>(1660f, -1055f, 1394f, var_1.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(245f, -1093f, var_0.b.x, var_0.b.x), vec4<f32>(-1145f, 1033f, 1054f, -777f))), vec4<bool>(true, true, global1.b.d.x, var_0.c.e.x))))));
    let var_3 = vec3<i32>(-func_4(_wgslsmith_add_i32(var_0.c.d.x, _wgslsmith_dot_vec2_i32(global0.c.d.yx, global0.c.d.xy)), ~(~0i), func_4(~global1.b.a, -21366i >> (1u % 32u), Struct_2(var_0.a, vec3<f32>(-189f, var_2.x, 343f), var_0.c)).c).a.c.d.x, var_0.c.d.x, global1.b.c.d.x);
    var var_4 = global0.c.a.x;
    let var_5 = _wgslsmith_f_op_vec3_f32(-var_1.wxx);
    let var_6 = ~(~1u) ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(~var_0.c.c.x, ~4294967295u, _wgslsmith_mod_u32(21487u, 4294967295u)), ~(~vec3<u32>(u_input.a, 1u, global0.c.c.x) ^ ~vec3<u32>(56403u, global0.c.a.x, global0.c.a.x)));
    var_4 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(min(4294967295u, u_input.b), _wgslsmith_mod_u32(_wgslsmith_mult_u32(var_0.c.c.x, var_0.c.c.x), 4294967295u | global0.c.c.x)), ~firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 1u, global1.a, global0.c.a.x), vec4<u32>(var_6, global1.b.c.c.x, 6056u, global0.c.c.x))), _wgslsmith_sub_u32(~var_0.c.a.x, func_4(min(global1.b.c.d.x, -72463i), _wgslsmith_sub_i32(-6658i, reverseBits(global1.b.c.d.x)), func_4(max(44639i, var_0.c.d.x), _wgslsmith_clamp_i32(var_0.c.d.x, var_0.c.d.x, -19880i), Struct_2(vec4<bool>(false, false, true, var_0.c.e.x), vec3<f32>(var_5.x, global1.b.b.x, -349f), var_0.c)).c).a.c.a.x), _wgslsmith_f_op_f32(1f * 1000f), func_5(Struct_4(Struct_3(0i, global0.b, global0.c, vec3<bool>(global0.c.e.x, global0.c.b, true)), select(u_input.a, 1u, true), Struct_2(func_5(Struct_4(global1.b, 4294967295u, Struct_2(vec4<bool>(global1.b.d.x, false, false, false), var_2.www, Struct_1(vec2<u32>(var_6, var_0.c.c.x), global0.a.x, vec2<u32>(u_input.b, global0.c.a.x), vec3<i32>(var_3.x, global1.b.c.d.x, 41262i), vec4<bool>(false, global1.b.d.x, global0.a.x, var_0.a.x))), u_input.b)).e, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(796f, global0.b.x, 822f), vec3<f32>(299f, global0.b.x, global1.b.b.x))), var_0.c), 6603u)).c.x);
}

