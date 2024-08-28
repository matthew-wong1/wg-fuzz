struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 10>;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, false, true, false), false, 0u);

var<private> global2: array<bool, 25>;

var<private> global3: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(-45303i, -43417i, 32154i), vec3<i32>(6022i, 1i, 1i), vec3<i32>(i32(-2147483648), 1982i, 3019i), vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec3<i32>(-19829i, -23504i, -14084i), vec3<i32>(2147483647i, -24526i, -30006i), vec3<i32>(0i, -5012i, -71966i), vec3<i32>(28447i, i32(-2147483648), 81524i), vec3<i32>(24669i, -15473i, 1i), vec3<i32>(-1i, -68239i, 2147483647i), vec3<i32>(35383i, 0i, i32(-2147483648)), vec3<i32>(14712i, 0i, 1i), vec3<i32>(-28925i, 2147483647i, i32(-2147483648)), vec3<i32>(46921i, -1i, 2147483647i), vec3<i32>(12916i, 33858i, 2147483647i));

var<private> global4: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_1(vec4<bool>(arg_0.c != (_wgslsmith_mult_u32(4294967295u, arg_0.c) ^ ~global1.c), arg_0.b, true, any(vec4<bool>(true, false, true, all(arg_0.a)))), (reverseBits(~4294967295u) == ~global1.c) && (_wgslsmith_mult_i32(u_input.a, -u_input.a) > (-u_input.a | u_input.d.x)), global1.c);
    let var_1 = Struct_1(select(arg_0.a, select(!arg_0.a, select(vec4<bool>(true, true, var_0.a.x, global1.b), !arg_0.a, arg_0.b), true), !var_0.a), true, ~1u);
    var_0 = Struct_1(select(vec4<bool>(true, (arg_0.a.x & global2[_wgslsmith_index_u32(0u, 25u)]) | !arg_0.b, all(var_1.a.ywz), global1.b), !vec4<bool>(false, !var_0.b, !var_0.a.x, true), vec4<bool>(false, any(var_1.a.yzz), var_1.b, global1.b)), !var_1.b || any(vec4<bool>(global2[_wgslsmith_index_u32(~45165u, 25u)], any(vec3<bool>(var_1.a.x, true, true)), arg_0.a.x && false, var_0.b & global1.b)), var_1.c);
    var var_2 = abs(~min(_wgslsmith_mult_u32(_wgslsmith_div_u32(var_0.c, var_0.c), ~arg_0.c), arg_0.c));
    global1 = Struct_1(!var_1.a, false, 4294967295u);
    return _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(abs(u_input.a | 1669i), -1i), u_input.b, select(_wgslsmith_dot_vec4_i32(select(u_input.d, vec4<i32>(u_input.b, 1i, u_input.a, 0i), true), u_input.d << (vec4<u32>(arg_0.c, 17621u, 2586u, var_1.c) % vec4<u32>(32u))), 4137i, var_1.c <= (1u & global1.c)), max(u_input.b, _wgslsmith_clamp_i32(countOneBits(u_input.c.x), u_input.b, -8074i | u_input.b))), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, abs(reverseBits(u_input.b)), u_input.b, ~(i32(-1i) * -35926i)), vec4<i32>(1i, 0i, u_input.e.x, -2147483647i)));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_1(global1.a, (global1.a.x & true) | false, countOneBits(19233u));
    let var_1 = _wgslsmith_f_op_vec2_f32(arg_0.xy - vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(trunc(arg_0.x))))), arg_0.x));
    let var_2 = 1u;
    global0 = array<vec2<bool>, 10>();
    let var_3 = func_3(Struct_1(global1.a, !any(vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 25u)], global2[_wgslsmith_index_u32(var_2, 25u)])), var_0.c >> (abs(_wgslsmith_mod_u32(var_0.c, 1u)) % 32u)));
    return var_0;
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> Struct_1 {
    var var_0 = global1.a.yx;
    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(426f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1264f), -858f, global2[_wgslsmith_index_u32(1u, 25u)])), -659f, _wgslsmith_f_op_f32(f32(-1f) * -204f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(749f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2120f, 798f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1499f, -1000f)), _wgslsmith_div_f32(819f, -1577f))))), global1.c);
    var var_2 = global0[_wgslsmith_index_u32(39734u, 10u)];
    global4 = -897f;
    global2 = array<bool, 25>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(u_input.a, u_input.d.x);
    global0 = array<vec2<bool>, 10>();
    var var_1 = func_1(vec2<u32>(9540u, firstTrailingBit(abs(1u))), abs(global1.c));
    global2 = array<bool, 25>();
    let var_2 = u_input.d.wzw;
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1291f)) * 1f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(970f - -518f), -1297f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-123f, 646f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + -660f)))), true));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -27900i, i32(-1i) * -var_0.x, ~vec2<u32>(_wgslsmith_add_u32(1u, global1.c), 7744u), 1u << (1u % 32u), var_1.c);
}

