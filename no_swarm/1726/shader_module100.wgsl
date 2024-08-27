struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: f32,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

var<private> global1: Struct_1;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = true;
    var var_1 = global0[_wgslsmith_index_u32(1u, 12u)];
    var var_2 = arg_0.c;
    global0 = array<Struct_2, 12>();
    let var_3 = Struct_3(select(!vec3<bool>(true, true, all(vec3<bool>(false, false, true))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), -1000f != _wgslsmith_f_op_f32(-1554f + global1.d.x)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), false)), !select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, true), true), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.d.x - global1.d.x) * arg_0.c.d.x), -866f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(var_1.a)), vec4<f32>(var_2.d.x, -682f, var_1.c.d.x, -1346f))) - _wgslsmith_f_op_vec4_f32(-var_1.a)))), abs(min(select(vec4<u32>(var_1.d.x, arg_0.c.c, var_2.c, arg_0.c.b.x) & vec4<u32>(0u, 4294967295u, arg_0.c.e, u_input.a.x), vec4<u32>(var_1.d.x, var_2.c, 0u, var_2.c), var_2.c != 28367u), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, 12865u, var_1.c.e, 52941u), vec4<u32>(var_2.e, global1.c, var_1.d.x, 1972u) << (vec4<u32>(1u, 0u, 4294967295u, 52480u) % vec4<u32>(32u))))));
    return u_input.a.x;
}

fn func_2(arg_0: vec2<i32>) -> vec3<f32> {
    let var_0 = Struct_3(vec3<bool>(true, true, true), select(vec2<bool>(func_3(Struct_2(vec4<f32>(-1272f, -348f, -1228f, -683f), 60050i, Struct_1(arg_0.x, global1.b, 70554u, global1.d, global1.c), vec3<u32>(1u, u_input.a.x, 26931u))) <= firstTrailingBit(global1.e), any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false))), vec2<bool>(true, true), vec2<bool>(select(true, true, true), true)), -510f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.x, 134f, 256f, global1.d.x) - vec4<f32>(global1.d.x, 1093f, global1.d.x, 513f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.d.x, 464f, global1.d.x, global1.d.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.x, global1.d.x, global1.d.x, global1.d.x) + vec4<f32>(global1.d.x, 1355f, global1.d.x, -533f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.x, -1458f, global1.d.x, -897f) * vec4<f32>(global1.d.x, -569f, global1.d.x, global1.d.x))))), ~vec4<u32>(~global1.c, 1u, 4014u, global1.c));
    let var_1 = ~_wgslsmith_clamp_i32(~(i32(-1i) * -2147483647i), 0i, ~select(_wgslsmith_mult_i32(arg_0.x, -1i), _wgslsmith_sub_i32(global1.a, global1.a), !var_0.b.x));
    global1 = Struct_1(max(2147483647i << (var_0.e.x % 32u), u_input.b.x), var_0.e.xwz, func_3(Struct_2(vec4<f32>(694f, _wgslsmith_f_op_f32(round(var_0.c)), _wgslsmith_f_op_f32(f32(-1f) * -1053f), _wgslsmith_div_f32(var_0.c, global1.d.x)), 0i, Struct_1(~(-2147483647i), _wgslsmith_add_vec3_u32(var_0.e.yxz, vec3<u32>(var_0.e.x, 38758u, u_input.a.x)), global1.e, vec3<f32>(642f, -1051f, var_0.d.x), min(global1.b.x, u_input.a.x)), ~abs(var_0.e.zxy))), global1.d, countOneBits(_wgslsmith_mod_u32(global1.e, 18095u)) ^ ~7261u);
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.c, 521f, global1.d.x))), vec3<f32>(global1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1685f), _wgslsmith_f_op_f32(global1.d.x + _wgslsmith_f_op_f32(global1.d.x - 1588f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_0.c * -527f), var_0.d.x, _wgslsmith_f_op_f32(-global1.d.x)), _wgslsmith_f_op_vec3_f32(-var_0.d.ywy), var_0.a.x))));
}

fn func_1(arg_0: bool) -> vec4<u32> {
    let var_0 = vec2<bool>(arg_0, true);
    global1 = Struct_1(1i, ~global1.b ^ (global1.b | abs(global1.b & global1.b)), 1u, _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_add_vec2_i32(u_input.b.zx, u_input.b.yw))), func_3(Struct_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.d.x, global1.d.x, global1.d.x, -1414f))), -1i, Struct_1(global1.a, vec3<u32>(global1.e, u_input.a.x, 1u), 24222u, global1.d, 4294967295u), ~vec3<u32>(u_input.a.x, u_input.a.x, global1.c))) ^ 40410u);
    let var_1 = u_input.b.wyy;
    let var_2 = !select(!vec3<bool>(var_0.x, false, var_0.x == var_0.x), vec3<bool>(true, select(true, false, true), var_0.x), var_0.x);
    let var_3 = 1i;
    return reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(~global1.e, _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.c, 11542u, 4294967295u, 65598u), vec4<u32>(u_input.a.x, 26100u, u_input.a.x, global1.b.x)), _wgslsmith_div_u32(global1.b.x, u_input.a.x) | firstLeadingBit(1u), u_input.a.x), ~(~vec4<u32>(u_input.a.x, u_input.a.x, 2180u, 0u)) ^ ~(~vec4<u32>(5018u, u_input.a.x, global1.c, global1.e))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.d.x, global1.d.x, -1959f, global1.d.x), vec4<f32>(global1.d.x, -940f, -2346f, global1.d.x), vec4<bool>(true, false, true, false))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(623f, global1.d.x, 1358f, global1.d.x), vec4<f32>(global1.d.x, 1781f, 479f, 1000f)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.d.x, -1179f, global1.d.x, global1.d.x)))))));
    let var_1 = global1.b;
    var var_2 = _wgslsmith_sub_vec4_u32(func_1(false), min(vec4<u32>(firstLeadingBit(u_input.a.x), _wgslsmith_mult_u32(1u, 0u), global1.e, global1.b.x) & (vec4<u32>(68177u, 1u, global1.c, var_1.x) ^ countOneBits(vec4<u32>(8157u, global1.c, var_1.x, var_1.x))), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(1u, global1.b.x, 0u, global1.b.x)), ~(vec4<u32>(4294967295u, 4294967295u, 62033u, global1.e) & vec4<u32>(84740u, 99891u, var_1.x, 1u)))));
    global1 = Struct_1(global1.a, vec3<u32>(countOneBits(reverseBits(_wgslsmith_clamp_u32(1u, global1.e, u_input.a.x))), 1u, 15753u), max(u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), 1028f))), 18455u << ((20432u ^ u_input.a.x) % 32u));
    var_0 = vec4<f32>(global1.d.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.d.x, global1.d.x) - _wgslsmith_f_op_f32(ceil(global1.d.x))), _wgslsmith_div_f32(428f, 235f), 1078f);
    let var_3 = global0[_wgslsmith_index_u32(~1u, 12u)];
    let var_4 = _wgslsmith_f_op_f32(-var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(min(max(select(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, global1.b.x, var_2.x), vec4<u32>(1u, var_1.x, global1.e, var_3.d.x)), ~vec4<u32>(var_2.x, 1611u, var_1.x, 32923u), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), true)), vec4<u32>(65592u, u_input.a.x << (49528u % 32u), 24926u, var_2.x >> (var_2.x % 32u))), vec4<u32>(var_3.c.c, ~_wgslsmith_div_u32(1u, u_input.a.x), abs(~79100u), u_input.a.x)), countOneBits(select(min(_wgslsmith_clamp_vec2_i32(u_input.b.yx, vec2<i32>(u_input.b.x, 38339i), u_input.b.xw), vec2<i32>(1i, -1i)), -abs(u_input.b.zw), all(vec2<bool>(true, true)))), ~var_1.zz, ~u_input.a.x >> (1u % 32u));
}

