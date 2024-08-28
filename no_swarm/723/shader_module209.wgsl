struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: f32, arg_3: vec4<f32>) -> f32 {
    let var_0 = u_input.a | select(~abs(vec3<u32>(1u, arg_0, 50462u)), reverseBits(vec3<u32>(firstLeadingBit(0u), ~arg_0, arg_0)), true);
    var var_1 = _wgslsmith_f_op_f32(-arg_3.x);
    var var_2 = Struct_3(_wgslsmith_div_vec4_i32(~vec4<i32>(1i, _wgslsmith_mod_i32(arg_1, arg_1), 1i, abs(-12437i)), ~(vec4<i32>(arg_1, -34209i, -12226i, 2147483647i) >> (max(vec4<u32>(0u, 0u, 0u, var_0.x), vec4<u32>(23596u, u_input.a.x, u_input.a.x, 78031u)) % vec4<u32>(32u)))), vec4<u32>((select(0u, u_input.a.x, true) << (max(42585u, arg_0) % 32u)) ^ u_input.a.x, ~_wgslsmith_mod_u32(arg_0 ^ arg_0, ~var_0.x), firstTrailingBit(firstTrailingBit(~52933u)), var_0.x));
    let var_3 = Struct_1(arg_2, vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~var_2.a, ~var_2.a), var_2.a), -5709i, var_2.a.x), _wgslsmith_f_op_vec4_f32(arg_3 + _wgslsmith_f_op_vec4_f32(step(arg_3, _wgslsmith_div_vec4_f32(arg_3, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_3.x, arg_3.x, 1000f, 985f))))))), all(vec4<bool>(true, true, true, true)));
    let var_4 = var_3;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-509f, arg_2)) * _wgslsmith_f_op_f32(floor(arg_3.x))) + _wgslsmith_f_op_f32(round(-1192f))) * 1765f));
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    var var_0 = arg_0.a;
    var var_1 = arg_0.a;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(59022u, max(arg_0.b.x, 7377i), 875f, arg_0.c)))) > arg_0.a;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -706f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -826f) - _wgslsmith_f_op_f32(f32(-1f) * -365f)))));
    let var_3 = select(vec2<bool>(true, any(!vec3<bool>(false, var_2, arg_0.d))), vec2<bool>(false, arg_0.d), !var_2);
    return Struct_3(_wgslsmith_div_vec4_i32((vec4<i32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x) ^ -vec4<i32>(48289i, arg_0.b.x, arg_0.b.x, 0i)) ^ (-vec4<i32>(2147483647i, 0i, 13774i, -2147483647i) ^ _wgslsmith_div_vec4_i32(vec4<i32>(53580i, arg_0.b.x, 1i, arg_0.b.x), vec4<i32>(27996i, -26184i, 60835i, arg_0.b.x))), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(46415i, 23389i, arg_0.b.x, arg_0.b.x), ~vec4<i32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x)), firstTrailingBit(-vec4<i32>(1i, arg_0.b.x, arg_0.b.x, arg_0.b.x)))), vec4<u32>(u_input.a.x, 0u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(208u, 4294967295u, 31417u), u_input.a), abs(firstLeadingBit(u_input.a.x ^ 4294967295u))));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec4<f32>, arg_3: vec2<f32>) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(520f)))))));
    var var_1 = Struct_3(vec4<i32>(-2147483647i, _wgslsmith_sub_i32(arg_0.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, 0i), arg_0.a.wwy & vec3<i32>(arg_1, -16966i, -2147483647i))), -1i, -(~_wgslsmith_dot_vec3_i32(arg_0.a.wxz, vec3<i32>(-28354i, arg_0.a.x, arg_0.a.x)))), arg_0.b);
    let var_2 = func_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -350f)) - _wgslsmith_f_op_f32(func_3(6364u, var_1.a.x, arg_2.x, vec4<f32>(var_0.a, -906f, -1658f, var_0.a)))), vec3<i32>(_wgslsmith_clamp_i32(-72483i, var_1.a.x, arg_1), min(-41500i, 1i), _wgslsmith_sub_i32(0i, -arg_0.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_2.x)), -2233f, _wgslsmith_f_op_f32(-arg_2.x), 962f) + arg_2), any(vec4<bool>(true, true, true, true)) & false));
    var var_3 = func_2(Struct_1(var_0.a, _wgslsmith_mod_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(1i, var_2.a.x, -2147483647i), vec3<i32>(arg_1, 2147483647i, -1i)), vec3<i32>(var_2.a.x, -11381i, var_2.a.x) & select(vec3<i32>(15840i, var_1.a.x, -1i), vec3<i32>(-2147483647i, var_1.a.x, arg_1), true)), vec4<f32>(-1369f, var_0.a, _wgslsmith_f_op_f32(-var_0.a), 1f), true));
    var var_4 = arg_0;
    return -168f;
}

fn func_1() -> Struct_1 {
    let var_0 = !vec2<bool>(any(vec2<bool>(true, true)), true);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(Struct_1(-356f, vec3<i32>(-1i, 39041i, 9286i), vec4<f32>(-1633f, -570f, 592f, -1000f), true)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(-40119i, -2147483647i, -11703i)), vec4<f32>(-907f, -1679f, _wgslsmith_div_f32(1327f, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1259f), -961f))) * _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-398f, -812f))))))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1u, -5376i, -1284f, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(636f, -703f, 300f, 643f)))))))));
    let var_3 = select(!select(!vec3<bool>(var_0.x, false, var_0.x), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, true, var_0.x), select(vec3<bool>(true, false, true), vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, true, false))), vec3<bool>(!var_0.x, true, true)), !(!(!vec3<bool>(var_0.x, var_0.x, var_0.x))), !(!select(select(vec3<bool>(false, false, false), vec3<bool>(var_0.x, false, true), vec3<bool>(false, true, true)), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, false, var_0.x))));
    let var_4 = _wgslsmith_mod_i32(firstTrailingBit(1i), _wgslsmith_dot_vec3_i32(select(~vec3<i32>(1i, 1i, 1i), _wgslsmith_add_vec3_i32(select(vec3<i32>(-3012i, -12934i, 20676i), vec3<i32>(26723i, 0i, 2147483647i), var_0.x), vec3<i32>(-13865i, 1i, 2147483647i)), all(select(vec4<bool>(false, var_0.x, false, false), vec4<bool>(var_0.x, true, var_0.x, var_3.x), vec4<bool>(var_3.x, true, var_0.x, true)))), ~(-vec3<i32>(1i, 1i, 1i))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.a - var_2.a))) - 454f)), abs(~(~max(vec3<i32>(-36527i, 0i, -1519i), vec3<i32>(57862i, -22000i, var_4)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1315f, var_2.a, 1538f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(398f - -939f), var_2.a)) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), var_2.a, 1000f, -668f)), all(select(!(!vec4<bool>(var_0.x, true, var_3.x, false)), vec4<bool>(true, true, var_0.x, false), !(!vec4<bool>(var_3.x, false, true, var_3.x)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1388f - _wgslsmith_f_op_f32(min(-471f, arg_0.a))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_5(func_1(), Struct_3(select(vec4<i32>(~1i, -1i, 1299i, -2147483647i), vec4<i32>(firstTrailingBit(-1i), 1i, abs(2147483647i), firstTrailingBit(8556i)), !all(vec2<bool>(true, true))), select(vec4<u32>(46753u, u_input.a.x, 1u, u_input.a.x) | vec4<u32>(14625u, 17656u, 90291u, 0u), vec4<u32>(41423u, u_input.a.x, 1u, 3592u), true) << (vec4<u32>(88881u, 1u, ~1u, 40978u) % vec4<u32>(32u))), ~abs(reverseBits(u_input.a.x) ^ u_input.a.x)));
    let var_1 = func_1();
    let var_2 = var_1;
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(round(-253f))))) < 1000f;
    var_3 = true;
    let var_4 = var_1;
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-871f, 403f), _wgslsmith_f_op_f32(145f * var_4.a))))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_4.a))) + _wgslsmith_f_op_f32(var_2.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))));
    var var_5 = vec3<i32>(2147483647i, var_1.b.x << (27752u % 32u), -59641i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(vec3<u32>(~(~u_input.a.x), ~u_input.a.x, 32656u), ~reverseBits(countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, 1u)))), var_1.c.yx, var_5.x);
}

