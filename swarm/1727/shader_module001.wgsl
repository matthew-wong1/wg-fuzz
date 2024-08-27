struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -36063i;

var<private> global1: vec4<i32>;

var<private> global2: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(1u, 1u, 3587u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4294967295u, 0u, 32764u), vec3<u32>(67004u, 1u, 4294967295u), vec3<u32>(13347u, 4294967295u, 4294967295u), vec3<u32>(0u, 0u, 0u), vec3<u32>(1u, 1438u, 81567u), vec3<u32>(0u, 4294967295u, 84438u), vec3<u32>(1u, 2015u, 136718u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(26844u, 19626u, 43787u), vec3<u32>(11471u, 1u, 5222u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = true;
    var var_1 = Struct_2(Struct_1(~vec4<i32>(~44349i, -2147483647i, 0i, -2147483647i)), arg_3, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(393f, 301f, arg_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_2.x, -204f)), 4294967295u == u_input.a.x))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -761f), _wgslsmith_f_op_f32(-1428f + -880f), -302f))), ((_wgslsmith_f_op_f32(step(870f, arg_1)) <= _wgslsmith_f_op_f32(-arg_1)) & (arg_3.a.x >= ~global1.x)) & (~(~1u) == _wgslsmith_dot_vec3_u32(vec3<u32>(8103u, u_input.a.x, 11407u), countOneBits(vec3<u32>(1u, 56418u, 3466u)))));
    var var_2 = Struct_2(var_1.b, Struct_1(vec4<i32>(-1i, ~(-2147483647i) >> (u_input.a.x % 32u), -global1.x, -arg_3.a.x)), vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1.c.x)), 2951f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-434f, -199f))))), true);
    let var_3 = Struct_1(_wgslsmith_div_vec4_i32(arg_3.a, vec4<i32>(abs(21277i), -1i, 1i, ~arg_0.x)));
    let var_4 = Struct_2(var_3, var_1.b, vec3<f32>(var_2.c.x, var_2.c.x, _wgslsmith_div_f32(-330f, _wgslsmith_f_op_f32(min(arg_2.x, _wgslsmith_div_f32(arg_1, var_1.c.x))))), true);
    return !vec2<bool>(true, any(vec2<bool>(all(vec4<bool>(false, var_4.d, true, var_4.d)), select(false, var_0, true))));
}

fn func_2() -> i32 {
    let var_0 = func_3(-reverseBits(_wgslsmith_div_vec3_i32(~vec3<i32>(7285i, 2147483647i, 36098i), max(global1.xwx, vec3<i32>(global1.x, global1.x, 0i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1703f)) - -1845f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(279f, _wgslsmith_f_op_f32(floor(-280f))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(266f, 1281f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1897f, 998f) - vec2<f32>(386f, 434f)))))), Struct_1(vec4<i32>(~_wgslsmith_mult_i32(global1.x, 2147483647i), 14923i, -45683i, 0i)));
    let var_1 = Struct_2(Struct_1(vec4<i32>(_wgslsmith_mult_i32(27861i, 59936i), global1.x, -61940i, _wgslsmith_clamp_i32(i32(-1i) * -50622i, global1.x, i32(-1i) * -17770i))), Struct_1(max(vec4<i32>(_wgslsmith_mult_i32(global1.x, global1.x), ~(-1i), -4658i, -global1.x), -vec4<i32>(global1.x, 2585i, -73693i, 1i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1105f, 468f, -333f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-717f, 666f, 636f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -875f), _wgslsmith_f_op_f32(step(-198f, 758f)), _wgslsmith_div_f32(-337f, -218f)))), false);
    let var_2 = var_1.a;
    let var_3 = vec3<bool>(true, all(select(!select(vec3<bool>(true, false, var_1.d), vec3<bool>(var_0.x, var_1.d, false), true), select(vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, false, var_1.d), all(vec2<bool>(false, var_1.d))), false)), var_1.d);
    var var_4 = var_0.x;
    return abs(-7861i);
}

fn func_1(arg_0: vec2<f32>) -> vec4<i32> {
    global2 = array<vec3<u32>, 12>();
    global1 = vec4<i32>(global1.x, i32(-1i) * -global1.x, global1.x, func_2());
    var var_0 = _wgslsmith_f_op_vec2_f32(select(arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0 + _wgslsmith_f_op_vec2_f32(-arg_0)))), true));
    let var_1 = Struct_1(-(~vec4<i32>(-1i, 30065i, 12879i, -1i) ^ min(vec4<i32>(2147483647i, 0i, global1.x, global1.x), vec4<i32>(55093i, 33440i, 28576i, -10211i))) | (~(-vec4<i32>(1i, -1i, global1.x, global1.x)) >> (vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(38752u, 1u), u_input.a.x, u_input.a.x) % vec4<u32>(32u))));
    global2 = array<vec3<u32>, 12>();
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = abs(~(-vec4<i32>(-1i, _wgslsmith_sub_i32(2147483647i, global1.x), global1.x, 26106i)));
    global1 = -_wgslsmith_sub_vec4_i32(select(max(countOneBits(vec4<i32>(global1.x, global1.x, global1.x, global1.x)), select(vec4<i32>(-51350i, global1.x, global1.x, -11552i), vec4<i32>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(false, false, false, true))), -vec4<i32>(global1.x, global1.x, global1.x, global1.x), true), -abs(vec4<i32>(-1i, global1.x, global1.x, global1.x)) & vec4<i32>(54284i, -35845i, _wgslsmith_clamp_i32(-1i, -2147483647i, 2147483647i), firstLeadingBit(14953i)));
    global1 = vec4<i32>(-1i, global1.x, _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_sub_i32(global1.x, -global1.x), global1.x), ~global1.x), global1.x);
    global1 = vec4<i32>(global1.x, ~(-_wgslsmith_mult_i32(firstLeadingBit(global1.x), 3677i)), ~(~_wgslsmith_sub_i32(_wgslsmith_add_i32(global1.x, -51529i), ~global1.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.x >> (~u_input.a.x % 32u), select(-2147483647i, _wgslsmith_mod_i32(19134i, global1.x), false), global1.x), max(_wgslsmith_div_vec3_i32(global1.zzx, firstTrailingBit(vec3<i32>(-2147483647i, global1.x, 1i))), -(~vec3<i32>(global1.x, 16496i, global1.x)))));
    let var_0 = vec2<bool>(any(select(vec4<bool>(false, all(vec2<bool>(false, true)), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), u_input.a.x < u_input.a.x), true)), true);
    var var_1 = Struct_1(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1056f, 351f), vec2<f32>(-501f, 750f), false)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(683f, -1000f))))) ^ (vec4<i32>(-12185i >> (u_input.a.x % 32u), global1.x << (3895u % 32u), 2147483647i, 1i) & -vec4<i32>(global1.x, global1.x, -89507i, 1i)));
    let var_2 = Struct_1(vec4<i32>(var_1.a.x, select(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.a.x, var_1.a.x, global1.x), vec3<i32>(-8835i, 0i, 27221i)), _wgslsmith_mult_vec3_i32(var_1.a.zwz, vec3<i32>(global1.x, var_1.a.x, var_1.a.x))), 30224i, false), global1.x, -3467i));
    global1 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-2147483647i, -1i)), ~vec2<i32>(-38616i, var_2.a.x)), abs(global1.x) | _wgslsmith_mult_i32(-14016i, 21471i)), -var_2.a.x, ~(-global1.x), var_1.a.x), ~var_1.a);
    global1 = ~var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(select(-27358i, var_2.a.x, (~8592u | ~u_input.a.x) < ~_wgslsmith_div_u32(u_input.a.x, u_input.a.x)));
}

