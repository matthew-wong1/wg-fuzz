struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_1, 17>;

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(-995f, 73763u, 1328f, vec4<u32>(41072u, 8935u, 1u, 0u)), Struct_1(1395f, 103472u, -633f, vec4<u32>(4294967295u, 0u, 1u, 11801u)));

var<private> global3: array<Struct_1, 32>;

var<private> global4: Struct_1 = Struct_1(-863f, 36024u, -1592f, vec4<u32>(26683u, 1537u, 4094u, 1u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    return global2[_wgslsmith_index_u32(countOneBits(272u), 2u)];
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<bool>) -> u32 {
    let var_0 = _wgslsmith_mult_vec4_i32(~(-min(vec4<i32>(u_input.b, u_input.b, u_input.b, 22304i) >> (arg_1.d % vec4<u32>(32u)), vec4<i32>(u_input.b, u_input.b, -49213i, arg_2.x))), vec4<i32>(32952i, _wgslsmith_mod_i32(-8743i, -78033i), max(arg_2.x, u_input.b) & select(_wgslsmith_div_i32(u_input.b, arg_2.x), 1i, true), arg_2.x));
    let var_1 = global0.x;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) - _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(828f - global4.c))), _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a, u_input.a), 21511u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.a - global4.c))) + 724f)), global4.d);
    global3 = array<Struct_1, 32>();
    var var_3 = 0i;
    return ~67387u;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: Struct_1) -> i32 {
    global0 = ~vec4<u32>(firstLeadingBit(4294967295u), ~func_3(~global0.zzw, func_2(vec3<bool>(false, true, arg_2.x), global3[_wgslsmith_index_u32(u_input.a, 32u)], global0.x), vec2<i32>(0i, u_input.b), vec3<bool>(arg_2.x, true, false)), global0.x, abs(_wgslsmith_div_u32(~global0.x, u_input.a)));
    let var_0 = any(!(!(!(!vec4<bool>(false, true, false, arg_2.x)))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -628f), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2109f, arg_3.a, arg_1.x))))), ~vec4<u32>(8880u, ~1u, min(4294967295u, arg_3.d.x), 27590u >> (~global0.x % 32u)));
    let var_2 = arg_3.c;
    var var_3 = vec2<f32>(var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global4.c + 475f)))));
    return (u_input.b ^ u_input.b) | (u_input.b ^ u_input.b);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> i32 {
    var var_0 = ~(-u_input.b);
    global4 = func_2(vec3<bool>(false, true, true && (any(vec2<bool>(true, false)) & false)), arg_2, ~arg_2.d.x);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(abs(arg_2.c)), 54803u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a)), ~_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(arg_2.d, vec4<u32>(arg_0, arg_0, 0u, 1u)), _wgslsmith_div_vec4_u32(~vec4<u32>(85426u, global4.d.x, 15064u, 25500u), ~global4.d)));
    global2 = array<Struct_1, 2>();
    global0 = var_1.d;
    return func_4(func_2(vec3<bool>(false, true, true), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global4.c)), 2435f)), _wgslsmith_mult_u32(func_3(global0.www, var_1, vec2<i32>(u_input.b, 1i), vec3<bool>(true, false, true)), _wgslsmith_dot_vec3_u32(var_1.d.xwx, vec3<u32>(23320u, 28415u, 42429u))), _wgslsmith_f_op_f32(arg_2.a + -1396f), global4.d), _wgslsmith_div_u32(arg_0, 100679u)), select(select(vec2<bool>(true, all(vec2<bool>(false, true))), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), true), vec2<bool>(true, true)), !select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, false), true), vec2<bool>(true, all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true)))), !vec2<bool>(!any(vec4<bool>(true, false, true, false)), any(vec4<bool>(true, true, true, true))), func_2(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), vec3<bool>(false, true, false), any(vec2<bool>(true, false))), func_2(vec3<bool>(any(vec2<bool>(true, false)), false, true), var_1, (13037u | arg_1) >> ((1u & global0.x) % 32u)), max(~(u_input.a >> (arg_1 % 32u)), func_3(vec3<u32>(global4.d.x, 0u, 69825u), global2[_wgslsmith_index_u32(var_1.d.x | 34936u, 2u)], _wgslsmith_add_vec2_i32(vec2<i32>(1i, -4300i), vec2<i32>(u_input.b, u_input.b)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.c, global4.a, global4.a) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-538f, -248f, global4.c) - vec3<f32>(global4.c, -725f, 1152f)))), vec3<f32>(_wgslsmith_f_op_f32(-global4.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-218f, global4.a))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), ~u_input.a, -669f, ~(global4.d >> (vec4<u32>(53476u, ~7059u, global4.b, _wgslsmith_sub_u32(29425u, global4.b)) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(global4.c * var_0.x);
    global2 = array<Struct_1, 2>();
    var var_3 = vec4<bool>(any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)))), global4.a < _wgslsmith_f_op_f32(f32(-1f) * -223f), any(vec4<bool>(true, u_input.b != func_1(u_input.a, 1u, Struct_1(var_1.c, u_input.a, -801f, vec4<u32>(var_1.b, var_1.b, 4294967295u, 54241u))), !any(vec2<bool>(false, false)), true)), !all(vec4<bool>(true, true, true, true)) && all(vec4<bool>(all(vec4<bool>(true, false, true, true)), any(vec4<bool>(true, false, false, true)), true, true)));
    var var_4 = firstTrailingBit(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(min(-vec4<i32>(u_input.b, u_input.b, 2147483647i, -44942i), ~vec4<i32>(-1i, u_input.b, u_input.b, u_input.b)), vec4<i32>(-1i) * -vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b)), (min(vec4<i32>(1i, u_input.b, 9479i, 2147483647i), vec4<i32>(u_input.b, u_input.b, 0i, u_input.b)) | (vec4<i32>(0i, u_input.b, u_input.b, 1i) >> (vec4<u32>(u_input.a, var_1.d.x, 23335u, 4294967295u) % vec4<u32>(32u)))) >> (reverseBits(vec4<u32>(u_input.a, 4294967295u, 21458u, 1u)) % vec4<u32>(32u))));
    let var_5 = Struct_1(-1411f, 30045u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1028f))), vec4<u32>(_wgslsmith_mod_u32(global0.x, func_2(select(vec3<bool>(var_3.x, true, var_3.x), vec3<bool>(var_3.x, var_3.x, false), true), func_2(var_3.wxz, global1[_wgslsmith_index_u32(global0.x, 17u)], global4.b), 0u).d.x), ~global4.d.x, 0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(global4.d.x, global4.b), firstLeadingBit(reverseBits(vec2<u32>(1u, u_input.a))))));
    var var_6 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(245f, 791f)), _wgslsmith_f_op_f32(abs(-221f)), _wgslsmith_f_op_f32(1322f + -1274f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1570f, global4.a, var_5.c) * vec3<f32>(var_0.x, var_5.c, var_1.a))), _wgslsmith_div_vec3_f32(vec3<f32>(var_2, var_5.c, -1095f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-793f, var_1.a, global4.c), vec3<f32>(var_0.x, 1269f, var_1.c), var_3.xzz)))))));
    global0 = var_1.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(select(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b, -2147483647i), 1i), -(~var_4.x), !var_3.x), min(abs(_wgslsmith_mod_i32(var_4.x, u_input.b)), -7567i), -1i), global0.x, 44394u);
}

