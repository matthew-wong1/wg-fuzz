struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13> = array<f32, 13>(-924f, 1562f, 636f, -1000f, 642f, -154f, 956f, -326f, -1353f, 458f, 1317f, 516f, -1386f);

var<private> global1: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(26164u, 29711u), vec2<u32>(1u, 66239u), vec2<u32>(4294967295u, 43083u), vec2<u32>(32093u, 53025u), vec2<u32>(35195u, 33061u), vec2<u32>(85668u, 24593u), vec2<u32>(38899u, 42267u), vec2<u32>(57772u, 0u), vec2<u32>(4294967295u, 79634u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 39240u), vec2<u32>(0u, 105356u), vec2<u32>(0u, 4294967295u), vec2<u32>(4047u, 4294967295u), vec2<u32>(24532u, 11387u), vec2<u32>(1u, 18732u), vec2<u32>(36079u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 47881u), vec2<u32>(1u, 55082u), vec2<u32>(20502u, 4346u), vec2<u32>(99323u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(19021u, 12707u));

var<private> global2: u32;

var<private> global3: Struct_1 = Struct_1(vec3<f32>(-621f, 916f, -598f));

var<private> global4: vec4<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(step(1714f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(53410u, 13u)] - _wgslsmith_f_op_f32(888f + -1444f))))));
    let var_1 = _wgslsmith_mult_i32(-abs(arg_1 ^ -24093i), arg_1);
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1314f) - global0[_wgslsmith_index_u32(49859u, 13u)]), 456f, _wgslsmith_f_op_f32(sign(global3.a.x)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(round(972f)), _wgslsmith_f_op_f32(sign(-536f)), _wgslsmith_div_f32(1082f, -749f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-266f, -210f, global0[_wgslsmith_index_u32(u_input.a, 13u)]), global3.a) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(221f, global3.a.x, 1863f)))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)]) * global3.a))), _wgslsmith_f_op_vec3_f32(global3.a + _wgslsmith_f_op_vec3_f32(-global3.a)))));
    var var_3 = _wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.b.x, u_input.b.x, 57u)), vec3<u32>(~(~(u_input.a | 26316u)), ~u_input.a, u_input.a));
    return -2147483647i;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_i32(-_wgslsmith_mod_vec3_i32(max(vec3<i32>(-2147483647i, 30201i, -1i), vec3<i32>(1i, 2147483647i, 0i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-19263i, 26466i, 2147483647i), vec3<i32>(-2509i, 0i, 2147483647i), vec3<i32>(14625i, -12373i, 2147483647i))), vec3<i32>(~_wgslsmith_mod_i32(0i, 6049i), -1i, func_3(vec2<i32>(-1i, 2147483647i), countOneBits(0i)))) << (~arg_2 % vec3<u32>(32u));
    var var_1 = 1688f;
    let var_2 = vec4<i32>(_wgslsmith_mod_i32(abs(_wgslsmith_mult_i32(reverseBits(-27100i), func_3(vec2<i32>(var_0.x, var_0.x), var_0.x))), ~1i), -45538i, _wgslsmith_add_i32((-2147483647i ^ firstTrailingBit(var_0.x)) ^ var_0.x, var_0.x), 2147483647i);
    let var_3 = arg_3.a.x;
    let var_4 = arg_3;
    return var_4;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = global4.x;
    global3 = func_2(u_input.a, ~1u, ~vec3<u32>(15770u, ~(81415u & u_input.b.x), u_input.b.x), arg_0);
    let var_1 = func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, _wgslsmith_div_u32(u_input.b.x, ~1u), ~41248u), ~vec3<u32>(u_input.a, 19406u, ~1u)), _wgslsmith_dot_vec3_u32(~max(~vec3<u32>(4294967295u, u_input.b.x, u_input.a), vec3<u32>(17426u, 1u, 17743u)), ~vec3<u32>(73005u, u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b, global1[_wgslsmith_index_u32(0u, 24u)]))), ~(~vec3<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(64810u, u_input.b.x, 0u), vec3<u32>(83792u, 594u, u_input.b.x)), abs(u_input.b.x))), arg_1);
    let var_2 = _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 1i, _wgslsmith_mult_i32(i32(-1i) * -1i, i32(-1i) * -1i), 25367i), -(~vec4<i32>(1i, 1i, 1i, 1i)));
    var var_3 = func_2(firstTrailingBit(u_input.b.x) | 0u, select(~_wgslsmith_clamp_u32(abs(1u), u_input.a, ~0u), abs(_wgslsmith_sub_u32(48717u << (0u % 32u), u_input.a)), global4.x), select(firstLeadingBit(vec3<u32>(4294967295u, u_input.a, 45089u) ^ vec3<u32>(35747u, u_input.a, u_input.a)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 4294967295u), vec3<u32>(u_input.a, 1895u, u_input.a)) | min(vec3<u32>(31139u, 11063u, 89344u), vec3<u32>(u_input.b.x, u_input.b.x, 78260u)), global4.yzw) ^ vec3<u32>(11170u, u_input.a, 0u), Struct_1(vec3<f32>(-220f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - arg_1.a.x))));
    return func_2(countOneBits(_wgslsmith_mod_u32(~firstTrailingBit(u_input.a), 25398u)), _wgslsmith_sub_u32(~(~4294967295u), (1u & u_input.a) >> (~70324u % 32u)) | u_input.a, vec3<u32>(firstTrailingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(75917u, 53732u, 0u, 1u), vec4<u32>(6564u, 4294967295u, 4294967295u, 0u))), ~u_input.b.x, ~(~10428u)), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(global3.a), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global3.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 13u)], 354f))) * global3.a)));
    var var_1 = -1056f;
    var_1 = 1487f;
    global2 = ~select(~reverseBits(~1u), 4294967295u & abs(_wgslsmith_sub_u32(4294967295u, u_input.b.x)), all(global4.xwz));
    global3 = Struct_1(global3.a);
    let var_2 = !(!vec4<bool>(true, global4.x, global4.x, !(global0[_wgslsmith_index_u32(u_input.b.x, 13u)] < var_0.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -702i, -19548i, 2147483647i), vec4<i32>(-2147483647i, 28468i, 1i, -11467i))), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -70720i, -1i, 24245i), vec4<i32>(-17594i, 2147483647i, 23622i, 0i)) ^ -28071i, 28563i), -firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(10116i, 70857i, 2147483647i), vec3<i32>(-1i, 33758i, 71368i)))), ~(~_wgslsmith_add_u32(_wgslsmith_div_u32(0u, u_input.a), u_input.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 13u)], 1609f, 222f, 1000f) + vec4<f32>(var_0.a.x, global3.a.x, global0[_wgslsmith_index_u32(0u, 13u)], global3.a.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-296f, -361f, global0[_wgslsmith_index_u32(u_input.a, 13u)], global3.a.x))))), vec2<i32>(-1i, min(0i, 0i)), reverseBits(vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, -39521i), vec3<i32>(42865i, 2147483647i, 2147483647i))) << (u_input.b % vec2<u32>(32u))));
}

