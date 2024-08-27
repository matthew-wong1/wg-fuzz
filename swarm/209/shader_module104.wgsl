struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-268f, -391f, 790f, -1585f);

var<private> global1: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: f32) -> f32 {
    var var_0 = ~vec4<i32>(_wgslsmith_add_i32(~(~arg_0.b.a.x), -(~1i)), 2147483647i, ~_wgslsmith_mod_i32(arg_0.c.b & u_input.a, _wgslsmith_dot_vec3_i32(arg_0.c.a, vec3<i32>(-19390i, -30184i, 23366i))), 1i);
    var var_1 = -arg_0.c.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0.zz), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-971f, 183f), _wgslsmith_f_op_f32(-arg_0.b.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(3468f, _wgslsmith_f_op_f32(-arg_0.b.c))) + arg_0.c.c)), global1.x || global1.x));
    let var_3 = ~u_input.b;
    var var_4 = arg_0;
    return -391f;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: vec4<u32>) -> vec4<f32> {
    var var_0 = _wgslsmith_div_f32(arg_0.c.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1501f, _wgslsmith_f_op_f32(arg_0.b.c * arg_0.c.c)))));
    let var_1 = Struct_1(-select(min(vec3<i32>(2147483647i, 31890i, arg_1.x) << (vec3<u32>(4294967295u, 60220u, arg_3.x) % vec3<u32>(32u)), arg_0.c.a), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.x, 2147483647i, 1i) | arg_1, _wgslsmith_mult_vec3_i32(arg_0.b.a, arg_0.b.a)), !select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, global1.x, false), vec3<bool>(true, true, global1.x))), 0i, 632f);
    var var_2 = _wgslsmith_f_op_f32(func_3(arg_0, !vec3<bool>(true, !all(vec2<bool>(false, true)), true), 641f));
    let var_3 = reverseBits(abs(_wgslsmith_add_vec4_i32(-(~vec4<i32>(arg_0.b.a.x, -18029i, 57878i, -57803i)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-23429i, 2147483647i, var_1.b, arg_1.x), vec4<i32>(arg_2.x, 1i, 1i, var_1.a.x)))));
    let var_4 = abs(max(var_1.a.zz, var_1.a.xx));
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.c, -346f, global0.x, global0.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.c, 1139f, var_1.c, global0.x)))))))));
}

fn func_2() -> vec2<i32> {
    global1 = !vec2<bool>(global1.x | false, true);
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-883f, _wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(2435f * 697f)), vec4<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), global0.x, _wgslsmith_f_op_f32(global0.x * 799f), global0.x)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -541f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))) * global0.wxz);
    global0 = _wgslsmith_f_op_vec4_f32(func_4(Struct_2(7842u, Struct_1(vec3<i32>(firstLeadingBit(-1i), i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-21981i, -15253i, -1i, u_input.a), vec4<i32>(5965i, -18181i, 0i, 0i))), 0i, _wgslsmith_f_op_f32(func_3(Struct_2(u_input.b, Struct_1(vec3<i32>(-2147483647i, u_input.a, u_input.a), u_input.a, -1243f), Struct_1(vec3<i32>(u_input.a, 0i, -45027i), 0i, var_1.x)), !vec3<bool>(true, global1.x, global1.x), 427f))), Struct_1(min(vec3<i32>(-1i, 1i, u_input.a) | vec3<i32>(u_input.a, u_input.a, -1i), -vec3<i32>(-67743i, -19972i, 2147483647i)), 1i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 41482i, 1i), vec3<i32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-722f * var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1149f))))), -_wgslsmith_mult_vec3_i32(abs(-vec3<i32>(-21202i, u_input.a, u_input.a)), vec3<i32>(u_input.a, 2147483647i, 1i) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 35260u, 47562u), vec3<u32>(34862u, u_input.b, u_input.b), vec3<u32>(61598u, u_input.b, 32349u)) % vec3<u32>(32u))), ~(~(vec2<i32>(-1i, u_input.a) >> (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u)))) ^ select(_wgslsmith_div_vec2_i32(max(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(6120i, 2147483647i)), -vec2<i32>(u_input.a, u_input.a)), _wgslsmith_div_vec2_i32(-vec2<i32>(u_input.a, -42918i), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -2147483647i), global1.x)), false), vec4<u32>(13581u, _wgslsmith_add_u32(~u_input.b, 10328u), 1u, _wgslsmith_add_u32(firstLeadingBit(u_input.b), 18534u)) >> ((~(vec4<u32>(68544u, 0u, u_input.b, u_input.b) << (vec4<u32>(u_input.b, u_input.b, u_input.b, 6008u) % vec4<u32>(32u))) << (vec4<u32>(countOneBits(u_input.b), ~8936u, ~2668u, firstTrailingBit(9314u)) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_2 = Struct_1(vec3<i32>(select(54958i, 20704i, any(vec4<bool>(false, false, global1.x, false))) & 0i, i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(firstLeadingBit(abs(vec3<i32>(-4080i, u_input.a, u_input.a))), -vec3<i32>(u_input.a, 0i, u_input.a) >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 4294967295u), vec3<u32>(25072u, u_input.b, 17210u)) % vec3<u32>(32u)))), u_input.a, _wgslsmith_f_op_f32(-var_0.x));
    return max(var_2.a.zy, var_2.a.xy);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = ~(func_2() & arg_2.c.a.yx);
    global1 = select(select(vec2<bool>(all(vec4<bool>(global1.x, true, false, false)), false), select(!vec2<bool>(global1.x, global1.x), vec2<bool>(any(vec4<bool>(global1.x, global1.x, global1.x, global1.x)), global1.x | false), false), select(vec2<bool>(global1.x, select(global1.x, global1.x, global1.x)), select(select(vec2<bool>(global1.x, true), vec2<bool>(true, false), vec2<bool>(true, true)), !vec2<bool>(global1.x, global1.x), global1.x & true), global1.x)), !(!select(!vec2<bool>(global1.x, global1.x), select(vec2<bool>(false, global1.x), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, global1.x), vec2<bool>(true, true), global1.x))), !(!(!(!global1.x))));
    global1 = !vec2<bool>(false, !global1.x);
    global1 = vec2<bool>(all(select(vec2<bool>(global1.x, !global1.x), vec2<bool>(true, true), true)), any(select(vec2<bool>(!global1.x, all(vec4<bool>(global1.x, true, true, global1.x))), vec2<bool>(u_input.a >= arg_2.c.a.x, global1.x), !(!vec2<bool>(global1.x, true)))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2141f, arg_0.x, -972f, arg_2.c.c))), vec4<f32>(-245f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_2.c.c, 1076f))), arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-global0.x))));
    return Struct_1(-(vec3<i32>(_wgslsmith_sub_i32(-2147483647i, var_0.x), 2147483647i, -2147483647i) >> (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(66326u, 0u, u_input.b), vec3<u32>(u_input.b, 15003u, u_input.b)), abs(u_input.b), u_input.b ^ u_input.b) % vec3<u32>(32u))), ~(-63878i), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -185f), _wgslsmith_f_op_f32(min(var_1.x, -105f))))) - _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(arg_2, vec3<i32>(9406i, -1i, 17341i), var_0, vec4<u32>(0u, 4294967295u, u_input.b, 48836u))).x - _wgslsmith_f_op_f32(var_1.x + 1708f)))));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: vec3<i32>) -> vec3<f32> {
    let var_0 = _wgslsmith_mult_vec4_u32(~(~(_wgslsmith_mult_vec4_u32(vec4<u32>(14216u, 23708u, arg_1.a, arg_1.a), vec4<u32>(u_input.b, 4294967295u, 1u, u_input.b)) | ~vec4<u32>(113507u, arg_1.a, arg_1.a, u_input.b))), ~vec4<u32>(~38657u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(24887u, 1u, 35794u, 44196u), vec4<u32>(1u, u_input.b, arg_1.a, arg_1.a)), firstLeadingBit(1u) | _wgslsmith_mod_u32(7579u, arg_1.a), countOneBits(0u) << ((4294967295u << (arg_1.a % 32u)) % 32u)));
    var var_1 = _wgslsmith_div_vec3_i32(arg_2, -arg_2);
    let var_2 = arg_1.b;
    var var_3 = 1u;
    let var_4 = abs(arg_1.c.a);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.www - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.yyx - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-311f, -1824f, 1250f)))) - vec3<f32>(_wgslsmith_f_op_f32(-1172f - 882f), _wgslsmith_f_op_f32(f32(-1f) * -1492f), _wgslsmith_f_op_f32(max(820f, 1000f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.xyy) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global0.xzx)) + vec3<f32>(239f, arg_1.c.c, arg_1.c.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_1 = var_0;
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(global0.x - -501f), var_0))), vec2<f32>(130f, var_0));
    var var_3 = var_0;
    let var_4 = Struct_1(firstTrailingBit(max(_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.a, u_input.a, 11590i), vec3<i32>(12414i, -39122i, u_input.a)), vec3<i32>(1i, u_input.a & u_input.a, abs(u_input.a)))), -22231i, global0.x);
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_4.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_f_op_f32(step(global0.x, var_4.c)), 171f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(959f, 518f, 292f)) + _wgslsmith_f_op_vec3_f32(floor(global0.yxw)))) * _wgslsmith_f_op_vec3_f32(abs(global0.wwy))), 41427u, global0.wx, _wgslsmith_f_op_vec3_f32(func_5(global1.x, Struct_2(u_input.b, func_1(global0.zw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(687f, -283f, var_2.x)), Struct_2(u_input.b, Struct_1(vec3<i32>(var_4.a.x, u_input.a, u_input.a), var_4.a.x, 320f), var_4)), func_1(_wgslsmith_f_op_vec2_f32(abs(var_2)), vec3<f32>(632f, 537f, global0.x), Struct_2(u_input.b, Struct_1(vec3<i32>(63899i, var_4.a.x, u_input.a), var_4.b, var_0), Struct_1(vec3<i32>(44379i, var_4.a.x, -3228i), 1i, 840f)))), vec3<i32>(reverseBits(~1i), 1i, min(-2249i, -var_4.a.x)))), firstTrailingBit(var_4.b & -10103i));
}

