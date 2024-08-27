struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

var<private> global1: array<u32, 2> = array<u32, 2>(1u, 65973u);

var<private> global2: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(1u, 0u, 0u), vec3<u32>(1u, 4294967295u, 25489u), vec3<u32>(4294967295u, 104863u, 45569u), vec3<u32>(36534u, 1122u, 2637u), vec3<u32>(105669u, 4294967295u, 46234u), vec3<u32>(4294967295u, 25070u, 4294967295u), vec3<u32>(80416u, 77656u, 5019u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(0u, 57803u, 1u), vec3<u32>(55049u, 74878u, 0u), vec3<u32>(43300u, 0u, 12242u), vec3<u32>(37541u, 39344u, 68468u), vec3<u32>(59913u, 5205u, 0u));

var<private> global3: array<f32, 9>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>) -> u32 {
    let var_0 = u_input.a.x;
    var var_1 = select(!select(vec4<bool>(true, 4975u >= global1[_wgslsmith_index_u32(0u, 2u)], 9833i <= u_input.d.x, true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), true), true), select(true, true, false)), !select(select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, true, any(vec4<bool>(true, false, true, false))), ~arg_1.x <= _wgslsmith_clamp_u32(33651u, 13319u, 4294967295u)), false);
    return ~(~(arg_1.x >> (_wgslsmith_mult_u32(abs(arg_1.x), ~3451u) % 32u)));
}

fn func_2() -> Struct_3 {
    global2 = array<vec3<u32>, 13>();
    var var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(firstTrailingBit(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(func_3(-549f, vec4<u32>(u_input.e.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.e.x, 2u)], 2u)], global1[_wgslsmith_index_u32(17757u, 2u)], 51955u)), 2u)], ~u_input.e.x, ~26311u)), countOneBits(abs(~567u)), abs(firstLeadingBit(_wgslsmith_add_u32(u_input.e.x, u_input.e.x)))), vec3<u32>(countOneBits(37686u), ~abs(~u_input.e.x), 1u ^ u_input.e.x));
    let var_1 = u_input.c.x;
    var var_2 = -u_input.a.x;
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(1u, 9u)]))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 2u)], 9u)] * global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 2u)], 9u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1088f)) * 1000f))));
    return Struct_3(_wgslsmith_f_op_f32(843f * 470f), _wgslsmith_clamp_vec2_i32(-abs(u_input.a | u_input.c.yy), min((vec2<i32>(-42024i, -2147483647i) ^ u_input.c.xw) << (~vec2<u32>(80509u, 5019u) % vec2<u32>(32u)), ~firstLeadingBit(vec2<i32>(u_input.d.x, 8098i))), vec2<i32>(0i, _wgslsmith_mult_i32(-u_input.c.x, _wgslsmith_sub_i32(u_input.b.x, -49328i)))), firstLeadingBit(vec4<u32>(32431u, ~(28647u | global1[_wgslsmith_index_u32(var_0.x, 2u)]), global1[_wgslsmith_index_u32(u_input.e.x, 2u)], firstLeadingBit(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(var_0.x, 2u)], 30190u)))));
}

fn func_1() -> u32 {
    var var_0 = 9201u;
    global1 = array<u32, 2>();
    var var_1 = func_2();
    return 1u;
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<u32>) -> Struct_2 {
    global1 = array<u32, 2>();
    global2 = array<vec3<u32>, 13>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(_wgslsmith_div_vec4_u32(vec4<u32>(1u, select(907u, 4294967295u, false), 4294967295u, ~4294967295u), vec4<u32>(func_3(global3[_wgslsmith_index_u32(4294967295u, 9u)], vec4<u32>(0u, arg_2.x, 34616u, 15675u)), u_input.e.x, countOneBits(4294967295u), 4294967295u))), ~countOneBits(vec4<u32>(global1[_wgslsmith_index_u32(func_2().c.x, 2u)], ~71916u, arg_0.x, _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24407u, 2u)], 13u)], global2[_wgslsmith_index_u32(21363u, 13u)])))), 2u)];
    return global0[_wgslsmith_index_u32(1u, 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, func_1(), func_3(-377f, vec4<u32>(41391u, u_input.e.x, 4294967295u, u_input.e.x)) & ~u_input.e.x), firstLeadingBit(u_input.e)), u_input.d.x, abs(~reverseBits(~vec2<u32>(70005u, u_input.e.x))));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1795f), _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(var_0.a.c, 9u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(661f, 275f)))))), global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(16738u, 2u)], ~1u)), 2u)], 9u)], true));
    var var_2 = u_input.a.x == ~(~min(u_input.a.x, u_input.c.x));
    var var_3 = 395f;
    var var_4 = abs(~vec4<u32>(~(~global1[_wgslsmith_index_u32(46646u, 2u)]), 0u, select(var_0.a.c, 2506u, true), _wgslsmith_div_u32(reverseBits(38994u), 1u)));
    var var_5 = _wgslsmith_mod_vec3_i32(max(vec3<i32>(1i, -2147483647i, _wgslsmith_div_i32(u_input.b.x, u_input.d.x) & 1i), ~select(vec3<i32>(5836i, u_input.d.x, u_input.b.x), u_input.c.zzw, var_0.b.x)), vec3<i32>(max(-1i, -1i), u_input.a.x, -1i));
    var var_6 = ~_wgslsmith_mod_vec4_i32(u_input.c, reverseBits(u_input.b)) | ~min(max(vec4<i32>(5374i, -19564i, var_5.x, var_5.x), vec4<i32>(var_5.x, -32131i, 2147483647i, 16475i)), _wgslsmith_div_vec4_i32(u_input.b ^ vec4<i32>(u_input.d.x, 0i, -1i, -4856i), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -2147483647i, u_input.a.x, -16735i), u_input.c, vec4<i32>(u_input.d.x, var_5.x, u_input.d.x, u_input.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(var_4.wwz, countOneBits(~global2[_wgslsmith_index_u32(var_0.a.c, 13u)]) << (global2[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 13u)] % vec3<u32>(32u))), vec4<i32>(u_input.c.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(min(u_input.b.x, var_6.x), var_6.x | -32383i, _wgslsmith_sub_i32(var_6.x, var_6.x)), countOneBits(func_2().b.x)), 47450i, ~(~_wgslsmith_clamp_i32(2147483647i, -11619i, var_5.x))));
}

