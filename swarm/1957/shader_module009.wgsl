struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: vec4<bool>,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9> = array<bool, 9>(false, true, false, true, false, true, false, false, false);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: vec2<f32>) -> vec2<u32> {
    var var_0 = Struct_5(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_add_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_1.c.x, -13584i), vec3<i32>(36143i, u_input.a, u_input.a)), _wgslsmith_add_i32(u_input.a, -19369i | u_input.a))), global0[_wgslsmith_index_u32(arg_1.b, 9u)], select(!(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 9u)], true, false, true)), vec4<bool>(select(arg_1.c.x, u_input.a, global0[_wgslsmith_index_u32(arg_0, 9u)]) == _wgslsmith_mult_i32(arg_1.a, 0i), true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(arg_2, arg_2, arg_0, arg_2)) << (~40252u % 32u), 9u)], true), vec4<bool>(global0[_wgslsmith_index_u32(abs(abs(u_input.b.x)), 9u)], global0[_wgslsmith_index_u32(arg_2, 9u)], global0[_wgslsmith_index_u32(15908u, 9u)], true)), ~u_input.b.xx, vec3<bool>(global0[_wgslsmith_index_u32(32016u, 9u)], ((arg_1.c.x & -22937i) < -16624i) && any(!vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.b.x, 9u)])), !(!(!global0[_wgslsmith_index_u32(arg_2, 9u)]))));
    var var_1 = arg_1.b;
    let var_2 = true;
    let var_3 = true;
    var var_4 = 4294967295u;
    return select(~(var_0.d & var_0.d), u_input.c.xx, any(select(var_0.c.wx, vec2<bool>(false, var_0.b), !(!var_0.c.yw))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(arg_0.x));
    let var_1 = Struct_5(u_input.a, !all(vec3<bool>(arg_2.x, false, true)), arg_2, vec2<u32>(arg_1.x, u_input.d), arg_2.zyz);
    var var_2 = !arg_2.wzx;
    var var_3 = !var_1.e;
    var_0 = _wgslsmith_f_op_f32(exp2(arg_0.x));
    return -680f;
}

fn func_2() -> Struct_4 {
    var var_0 = (vec2<i32>(u_input.a, 30130i) | firstLeadingBit(reverseBits(-vec2<i32>(u_input.a, -39557i)))) << (u_input.c.xz % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(856f, -633f, global0[_wgslsmith_index_u32(u_input.b.x, 9u)])) - -113f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec4<f32>(-924f, -617f, 212f, 717f), func_3(2702u, Struct_1(var_0.x, u_input.d, vec2<i32>(u_input.a, -1i)), 4560u, vec2<f32>(-298f, 178f)), select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 9u)], false, global0[_wgslsmith_index_u32(4294967295u, 9u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 9u)], global0[_wgslsmith_index_u32(81953u, 9u)], false), vec4<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)])), ~4294967295u)))));
    var_1 = 592f;
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(max(789f, -559f)))));
    var var_2 = Struct_1(-12571i, 1u >> (func_3(~_wgslsmith_div_u32(u_input.d, 0u), Struct_1(select(41872i, u_input.a, global0[_wgslsmith_index_u32(u_input.d, 9u)]), _wgslsmith_mult_u32(8095u, u_input.c.x), vec2<i32>(u_input.a, u_input.a) | vec2<i32>(1i, 2147483647i)), abs(~u_input.b.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(848f, -1743f) + vec2<f32>(-875f, 1111f))))).x % 32u), min(~countOneBits(vec2<i32>(u_input.a, 0i)), max(vec2<i32>(-1i, u_input.a) | firstTrailingBit(vec2<i32>(u_input.a, u_input.a)), _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, var_0.x), vec2<i32>(-2147483647i, u_input.a), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(1i, 4018i) << (vec2<u32>(62627u, u_input.d) % vec2<u32>(32u))))));
    return Struct_4(var_0.x, Struct_2(true), vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(42098u, u_input.d >> (var_2.b % 32u)), 9u)], (_wgslsmith_f_op_f32(func_4(vec4<f32>(1021f, 223f, 784f, -145f), u_input.b.zy, vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 9u)], true, global0[_wgslsmith_index_u32(11953u, 9u)]), 4294967295u)) <= _wgslsmith_f_op_f32(func_4(vec4<f32>(1203f, -1626f, 1000f, 361f), vec2<u32>(4294967295u, var_2.b), vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.c.x, 9u)], true), 1u))) | all(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 9u)], global0[_wgslsmith_index_u32(u_input.d, 9u)], global0[_wgslsmith_index_u32(u_input.b.x, 9u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(20666u, 9u)], global0[_wgslsmith_index_u32(0u, 9u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(52323u, 9u)])))), _wgslsmith_div_vec4_i32(-(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.c.x, var_0.x, var_0.x, 0i), vec4<i32>(2174i, u_input.a, -2147483647i, var_0.x)) >> (countOneBits(u_input.c) % vec4<u32>(32u))), vec4<i32>(min(-var_0.x, -var_0.x), -72644i, select(i32(-1i) * -28895i, ~12442i, global0[_wgslsmith_index_u32(var_2.b, 9u)]), -2147483647i)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<f32>) -> f32 {
    let var_0 = func_2();
    return 676f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 9>();
    let var_0 = ~u_input.c.xx;
    global0 = array<bool, 9>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(Struct_2(global0[_wgslsmith_index_u32(u_input.d, 9u)]), Struct_2(global0[_wgslsmith_index_u32(57400u, 9u)]), vec2<f32>(-1386f, 1359f)))))) - _wgslsmith_f_op_f32(-723f + 665f)), _wgslsmith_f_op_f32(f32(-1f) * -1166f));
    let var_2 = u_input.a;
    var var_3 = Struct_3(u_input.b << (select(_wgslsmith_div_vec3_u32(u_input.c.wzx >> (u_input.b % vec3<u32>(32u)), abs(u_input.c.zzx)), u_input.c.www, select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.d, 9u)]), vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 9u)], false, global0[_wgslsmith_index_u32(1u, 9u)]), vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.c.x, 9u)])), !vec3<bool>(global0[_wgslsmith_index_u32(37596u, 9u)], global0[_wgslsmith_index_u32(6433u, 9u)], false))) % vec3<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<f32>(var_1.x, 1000f, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1436f, 199f, 2395f)), u_input.c.x >= 5523u)), min(_wgslsmith_mult_vec2_u32(vec2<u32>(29368u, u_input.d), vec2<u32>(43286u, u_input.b.x)), ~var_0), vec4<bool>(global0[_wgslsmith_index_u32(9230u, 9u)], any(vec4<bool>(false, global0[_wgslsmith_index_u32(38040u, 9u)], global0[_wgslsmith_index_u32(var_0.x, 9u)], false)), true, var_1.x != -1000f), 0u | (0u >> (u_input.d % 32u))))), _wgslsmith_f_op_f32(f32(-1f) * -1319f));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, reverseBits(~vec4<u32>(var_3.a.x ^ u_input.c.x, var_3.a.x, abs(var_3.a.x), abs(4294967295u))), ~_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, 4590u, 1u), var_3.a >> (vec3<u32>(var_3.a.x, 4294967295u, var_3.a.x) % vec3<u32>(32u))), ~(~var_3.a)), _wgslsmith_mult_u32(var_3.a.x >> (~reverseBits(var_3.a.x) % 32u), ~(~_wgslsmith_clamp_u32(var_3.a.x, 1u, var_3.a.x))), vec4<u32>(~abs(abs(u_input.d)), min(var_3.a.x >> (25260u % 32u), ~11535u) ^ abs(countOneBits(4294967295u)), firstLeadingBit(select(u_input.b.x, 93271u, global0[_wgslsmith_index_u32(var_3.a.x, 9u)])) << (82513u % 32u), _wgslsmith_mult_u32(firstLeadingBit(22497u), var_3.a.x)));
}

