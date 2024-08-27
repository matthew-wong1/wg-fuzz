struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: Struct_2,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

var<private> global1: i32;

var<private> global2: array<Struct_1, 29>;

var<private> global3: Struct_1 = Struct_1(-1000f, vec4<u32>(7961u, 0u, 29412u, 4294967295u), vec2<f32>(664f, 1424f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: bool, arg_3: vec3<f32>) -> vec4<f32> {
    let var_0 = _wgslsmith_mult_u32(global3.b.x, _wgslsmith_clamp_u32(arg_1.x, global3.b.x, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global3.b.x, 18695u), vec2<u32>(arg_0.c.a.b.x, u_input.c.x)) >> (abs(vec2<u32>(64268u, u_input.c.x)) % vec2<u32>(32u)), vec2<u32>(1u, arg_0.c.a.b.x) >> (vec2<u32>(4294967295u, u_input.c.x) % vec2<u32>(32u)))));
    var var_1 = ~(var_0 ^ max(~_wgslsmith_dot_vec3_u32(global3.b.zwz, global3.b.zzx), arg_1.x));
    var var_2 = global2[_wgslsmith_index_u32(countOneBits(u_input.c.x), 29u)];
    var var_3 = arg_0.c;
    var var_4 = arg_0;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a) * -1322f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3.a)) - var_3.a.c.x)), _wgslsmith_f_op_f32(arg_3.x * var_4.c.a.a), -2263f));
}

fn func_3() -> vec2<f32> {
    var var_0 = !select(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true))), vec3<bool>(_wgslsmith_f_op_f32(912f - global3.a) != _wgslsmith_f_op_f32(global3.a + 1000f), (global3.b.x != global3.b.x) & true, false), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), true), vec3<bool>(global3.c.x <= 1000f, any(vec2<bool>(true, false)), -13353i != u_input.a.x), vec3<bool>(true, true, true)));
    var_0 = select(!vec3<bool>(all(!vec2<bool>(var_0.x, false)), false, var_0.x), select(vec3<bool>(true, all(!vec3<bool>(var_0.x, false, true)), false), select(select(select(vec3<bool>(true, true, var_0.x), vec3<bool>(true, true, false), var_0.x), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, false, var_0.x)), true), !select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, false, var_0.x), var_0.x), any(!vec4<bool>(var_0.x, false, false, var_0.x))), global3.c.x == _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.a * global3.a), global3.a)), true);
    let var_1 = -(~max(u_input.b.xx, u_input.a.yz) ^ vec2<i32>(u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, -62103i))) & vec2<i32>(u_input.a.x, firstLeadingBit(countOneBits(-2147483647i) >> (countOneBits(0u) % 32u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3.a, global3.a))))))))));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~(u_input.c.x & (2683u & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, global3.b.x, u_input.c.x, u_input.c.x), global3.b))), 32698u), 30u)];
    return vec2<f32>(_wgslsmith_f_op_f32(floor(-485f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -203f))) * -1148f)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: f32) -> u32 {
    global1 = -70303i | max(33190i, 1i >> (~min(u_input.c.x, u_input.c.x) % 32u));
    var var_0 = ~vec2<u32>(~abs(_wgslsmith_mod_u32(u_input.c.x, 73747u)), global3.b.x);
    var var_1 = vec2<i32>(u_input.a.x, 32674i);
    let var_2 = select(!(!vec3<bool>(true, !arg_1, arg_1 & arg_1)), vec3<bool>(any(!(!vec2<bool>(arg_1, arg_1))), u_input.a.x <= abs(reverseBits(-12072i)), !(!all(vec3<bool>(arg_1, false, true)))), arg_1);
    global0 = array<Struct_2, 30>();
    return ~_wgslsmith_dot_vec2_u32(~(arg_0.b.wz | global3.b.ww) | ~(~vec2<u32>(0u, var_0.x)), global3.b.wx);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_4) -> Struct_3 {
    let var_0 = false;
    global0 = array<Struct_2, 30>();
    let var_1 = func_4(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1318f, global3.a)))), ~arg_0.b, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_3())))), u_input.b.x >= max(_wgslsmith_mod_i32(40032i, arg_3.a), arg_3.a), 13827i, _wgslsmith_f_op_f32(f32(-1f) * -873f)) & arg_0.b.x;
    let var_2 = arg_3;
    var var_3 = ~_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(global3.b.ywy, vec3<u32>(arg_0.b.x, var_1, 1u)) | (select(vec3<u32>(0u, 71499u, 11329u), global3.b.wyw, vec3<bool>(true, var_0, true)) | ~vec3<u32>(var_1, 4294967295u, var_1)), arg_0.b.yww & firstLeadingBit(~vec3<u32>(u_input.c.x, 0u, 0u)));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global3.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-504f, arg_0.c.x)))), _wgslsmith_clamp_vec4_u32(~min(arg_0.b, global3.b), min(~vec4<u32>(var_1, 0u, arg_1, arg_0.b.x), ~global3.b), vec4<u32>(arg_0.b.x, 77028u, 1u, _wgslsmith_mult_u32(u_input.c.x, 39807u))) ^ select(vec4<u32>(0u ^ u_input.c.x, var_3.x, 1u, ~global3.b.x), vec4<u32>(select(1u, 75086u, var_0), 60383u, 0u, _wgslsmith_div_u32(var_3.x, var_3.x)), vec4<bool>(any(vec4<bool>(true, false, var_0, var_0)), var_0, var_0, !var_0)), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + 2383f), ~vec4<u32>(929u, 20538u, global3.b.x, 86665u), _wgslsmith_f_op_vec2_f32(sign(arg_0.c))), global3.b), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-804f + 1847f) + _wgslsmith_f_op_f32(ceil(3826f))), -640f, -366f))), arg_0);
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_3) -> vec4<bool> {
    let var_0 = arg_2.d.xz;
    let var_1 = arg_2.d;
    global0 = array<Struct_2, 30>();
    var var_2 = arg_1;
    var var_3 = vec4<bool>(!(!all(!vec3<bool>(arg_0, arg_0, false))), arg_0, any(!(!select(vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, false, arg_0), arg_0))), any(!select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, true), arg_0)) == true);
    return select(!select(!select(vec4<bool>(false, true, var_3.x, false), vec4<bool>(arg_0, arg_0, var_3.x, arg_0), vec4<bool>(var_3.x, arg_0, arg_0, true)), !vec4<bool>(arg_0, true, arg_0, true), var_3.x), vec4<bool>(true, var_3.x, arg_0, any(select(select(var_3.yz, vec2<bool>(arg_0, var_3.x), vec2<bool>(true, false)), vec2<bool>(true, var_3.x), vec2<bool>(false, arg_0)))), select(vec4<bool>(arg_0, !(!arg_0), arg_0, select(true, var_3.x, var_3.x)), vec4<bool>(true, true, ~u_input.d >= 2309i, arg_0), var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 30>();
    let var_0 = func_5(true, global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global3.b.x, (global3.b.x >> (186u % 32u)) & ~70176u), 30u)], func_2(global2[_wgslsmith_index_u32(u_input.c.x, 29u)], 62905u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_3(global3.a, global3.b, global0[_wgslsmith_index_u32(u_input.c.x, 30u)], vec3<f32>(global3.c.x, 1013f, -1865f), global2[_wgslsmith_index_u32(u_input.c.x, 29u)]), vec2<u32>(global3.b.x, 108711u), false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c.x, -1018f, global3.a)))) - vec4<f32>(_wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_div_f32(-870f, global3.a), _wgslsmith_f_op_f32(trunc(136f)), -1197f)), Struct_4(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(10311i, u_input.d), vec2<i32>(-2147483647i, u_input.a.x))))), func_2(global2[_wgslsmith_index_u32(u_input.c.x, 29u)], global3.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.c.x, -968f, -764f, -449f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-885f, -1000f, global3.a, global3.a) * vec4<f32>(global3.c.x, -345f, global3.a, global3.c.x)))), Struct_4(0i)));
    let var_1 = firstTrailingBit(56866i);
    global2 = array<Struct_1, 29>();
    global3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c.x - _wgslsmith_f_op_f32(max(global3.c.x, _wgslsmith_f_op_f32(global3.c.x - -1598f)))) + _wgslsmith_f_op_f32(global3.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c.x) + _wgslsmith_f_op_f32(-global3.c.x)))), global3.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(global3.a, global3.a), vec2<f32>(1575f, global3.a)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global3.c, global3.c)) - vec2<f32>(-742f, global3.a)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1063f, global3.a, global3.a, global3.c.x) * vec4<f32>(-2627f, -719f, -654f, -179f))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(799f, global3.a, 2908f, 745f), vec4<f32>(-611f, global3.c.x, 1171f, global3.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1375f, -1687f, global3.a, global3.a))))) * vec4<f32>(global3.a, global3.a, -139f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1618f, 1765f))))));
    global2 = array<Struct_1, 29>();
    global0 = array<Struct_2, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(~(-31571i), u_input.c, _wgslsmith_clamp_vec3_i32(u_input.a, -_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a.x, u_input.d, u_input.b.x)), ~u_input.a), ~vec3<i32>(-15873i, -60882i, var_1)));
}

