struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(1715u, 0u, 0u, 1u, 1u, 38811u, 4294967295u, 82427u, 4294967295u, 1u, 7400u, 8364u, 27924u, 2244u, 0u, 1u, 1u, 13627u, 12057u, 32514u, 4294967295u, 5621u, 4294967295u, 26485u);

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(false, -67916i, 1556u, vec2<bool>(false, false), -37985i), Struct_1(false, 2147483647i, 1u, vec2<bool>(true, true), -16896i), Struct_1(false, i32(-2147483648), 1u, vec2<bool>(false, false), i32(-2147483648)), Struct_1(true, 2147483647i, 1900u, vec2<bool>(true, true), -25714i), Struct_1(true, 47612i, 23537u, vec2<bool>(true, false), 0i), Struct_1(true, -1i, 4294967295u, vec2<bool>(false, true), -34020i), Struct_1(false, 39343i, 4294967295u, vec2<bool>(true, false), i32(-2147483648)), Struct_1(true, -1i, 4294967295u, vec2<bool>(true, true), -1i), Struct_1(true, -14816i, 0u, vec2<bool>(true, false), -1i), Struct_1(true, -1i, 0u, vec2<bool>(true, false), 8241i), Struct_1(false, 2147483647i, 41178u, vec2<bool>(false, true), 2147483647i), Struct_1(false, 1i, 86821u, vec2<bool>(false, true), 1i), Struct_1(true, -1i, 6085u, vec2<bool>(false, false), -11301i));

var<private> global2: array<vec3<f32>, 13>;

var<private> global3: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    var var_0 = Struct_1(true, -2147483647i, 4294967295u, select(select(!select(vec2<bool>(false, global3.a), global3.d, false), vec2<bool>(false, true), true), vec2<bool>(!(!global3.a), any(select(vec3<bool>(global3.d.x, global3.d.x, true), vec3<bool>(global3.d.x, global3.a, global3.a), vec3<bool>(global3.a, global3.a, false)))), !(all(vec4<bool>(global3.d.x, global3.a, false, global3.a)) | true)), firstTrailingBit(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(global3.b, -6169i, global3.b), vec3<i32>(u_input.a, global3.b, -24277i)))));
    global0 = array<u32, 24>();
    let var_1 = -1928f;
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~_wgslsmith_add_u32(global3.c, max(var_0.c, global3.c))), global3.c), 13u)];
    return !all(select(select(vec4<bool>(var_2.d.x, false, true, true), vec4<bool>(true, var_0.d.x, true, false), true), !(!vec4<bool>(false, global3.a, global3.d.x, true)), vec4<bool>(var_2.d.x, all(global3.d), false, var_0.d.x == true)));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec3<bool>(select(global3.a, true, !func_3()), false, global3.d.x);
    var var_1 = arg_0;
    let var_2 = _wgslsmith_dot_vec4_i32(~(max(max(vec4<i32>(u_input.a, global3.e, 25360i, 1i), vec4<i32>(global3.e, global3.e, 24742i, u_input.a)), abs(vec4<i32>(17125i, u_input.a, arg_1.e, u_input.a))) | -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 18359i, u_input.a, -1i), vec4<i32>(arg_1.b, 16428i, u_input.a, global3.b))), vec4<i32>(_wgslsmith_div_i32(~(-22535i), _wgslsmith_sub_i32(-19740i, _wgslsmith_mult_i32(global3.e, 0i))), select(u_input.a, _wgslsmith_mult_i32(-2147483647i, global3.e), global3.d.x) >> (global3.c % 32u), ~82188i, _wgslsmith_mod_i32(countOneBits(firstTrailingBit(-2147483647i)), ~u_input.a)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, 1785f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(273f, arg_0))), -825f)))));
    let var_4 = Struct_1(var_0.x, abs(min(var_2, ~(-1i) & (var_2 << (177u % 32u)))), ~arg_1.c, vec2<bool>(_wgslsmith_add_u32(firstLeadingBit(arg_1.c), abs(global3.c)) > global0[_wgslsmith_index_u32(~41560u, 24u)], _wgslsmith_f_op_f32(-arg_0) >= -963f), min(global3.e, _wgslsmith_div_i32(_wgslsmith_div_i32(2147483647i, var_2), _wgslsmith_div_i32(var_2, -63591i)) | ~var_2));
    return Struct_1(all(!vec3<bool>(true, true, var_4.d.x)), arg_1.b, firstLeadingBit(global3.c), var_0.yx, max(firstTrailingBit(arg_1.b >> (4294967295u % 32u)), ~(-12734i)) >> (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_1.c, select(global3.c, 0u, var_0.x)), abs(~var_4.c), ~(15077u << (arg_1.c % 32u))) % 32u));
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-781f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1293f)), arg_2.d.x))));
    let var_1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -565f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1332f, -1795f)))) - _wgslsmith_f_op_f32(sign(-221f))), global1[_wgslsmith_index_u32(4294967295u, 13u)]);
    var var_2 = vec3<f32>(-699f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-2117f, -150f)), _wgslsmith_f_op_f32(-1222f - 407f)))) * -1440f), _wgslsmith_f_op_f32(-524f * -344f));
    var var_3 = select(vec4<bool>(false, any(!vec3<bool>(global3.d.x, false, true)), select(true, true, global3.d.x), true), !(!select(select(vec4<bool>(var_1.d.x, arg_2.d.x, global3.a, arg_2.d.x), vec4<bool>(var_1.a, global3.a, true, global3.d.x), true), select(vec4<bool>(true, global3.d.x, true, global3.d.x), vec4<bool>(arg_2.a, global3.d.x, arg_2.d.x, arg_2.d.x), false), select(vec4<bool>(true, arg_2.a, true, var_1.d.x), vec4<bool>(false, var_1.a, true, arg_2.d.x), true))), !select(select(!vec4<bool>(arg_2.a, var_1.a, false, global3.a), select(vec4<bool>(false, true, global3.d.x, true), vec4<bool>(true, false, true, true), true), vec4<bool>(false, arg_2.d.x, false, global3.d.x)), select(vec4<bool>(true, false, arg_2.a, false), vec4<bool>(true, var_1.d.x, arg_2.a, true), vec4<bool>(arg_2.d.x, false, true, global3.d.x)), !(!vec4<bool>(global3.a, var_1.d.x, true, var_1.d.x))));
    global1 = array<Struct_1, 13>();
    return global1[_wgslsmith_index_u32(~max(firstLeadingBit(~abs(4294967295u)), ~abs(7368u)), 13u)];
}

fn func_1() -> Struct_1 {
    global0 = array<u32, 24>();
    var var_0 = func_4(-2147483647i, abs(vec3<i32>(global3.b, -2147483647i >> (~global3.c % 32u), u_input.a)), func_2(_wgslsmith_f_op_f32(-125f * 1084f), Struct_1(!global3.a, i32(-1i) * -8800i, global3.c, !(!vec2<bool>(false, global3.d.x)), max(-26502i, ~5734i))), -1i);
    var var_1 = -446f;
    global1 = array<Struct_1, 13>();
    return global1[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c, global3.c, 27490u) & max(vec3<u32>(global3.c, var_0.c, global3.c), vec3<u32>(global3.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.c, 24u)], 24u)], 24u)], 4294967295u)), ~vec3<u32>(1u, 49632u, 4294967295u) >> (vec3<u32>(global3.c, var_0.c, global3.c) % vec3<u32>(32u))) & 30735u, global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(global3.c, 0u)), 24u)], !any(global3.d) || false), 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = vec3<u32>(~min(global3.c, var_0.c), 1u, firstTrailingBit(~(~1u)));
    global1 = array<Struct_1, 13>();
    var var_2 = ~37553u;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-168f, 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1919f + -717f), _wgslsmith_f_op_f32(f32(-1f) * -1030f))), -func_1().b);
}

