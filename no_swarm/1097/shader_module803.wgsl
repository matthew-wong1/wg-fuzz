struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
    d: Struct_2,
    e: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct Struct_5 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(vec4<i32>(-1i, 1i, 7566i, 18461i), true), Struct_1(vec4<i32>(i32(-2147483648), 15048i, -1i, -48i), true)), Struct_2(Struct_1(vec4<i32>(-1i, 1i, -1i, 39120i), false), Struct_1(vec4<i32>(-27952i, 29486i, 27692i, 1i), false)), Struct_2(Struct_1(vec4<i32>(-7958i, -23172i, i32(-2147483648), -14193i), true), Struct_1(vec4<i32>(1i, i32(-2147483648), 2147483647i, -1i), true)), Struct_2(Struct_1(vec4<i32>(2147483647i, 2147483647i, 2147483647i, -1i), true), Struct_1(vec4<i32>(-1i, i32(-2147483648), -33202i, i32(-2147483648)), false)), Struct_2(Struct_1(vec4<i32>(-73898i, 2147483647i, -1i, i32(-2147483648)), true), Struct_1(vec4<i32>(-24874i, -25868i, 32077i, 39220i), false)), Struct_2(Struct_1(vec4<i32>(2147483647i, 365i, i32(-2147483648), -1i), true), Struct_1(vec4<i32>(0i, -14026i, 26717i, 1i), true)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -105992i, 12343i, -20397i), true), Struct_1(vec4<i32>(-15668i, -1i, -24304i, -1i), true)), Struct_2(Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 36481i, 9512i), false), Struct_1(vec4<i32>(1i, 1i, -1i, 0i), false)), Struct_2(Struct_1(vec4<i32>(0i, i32(-2147483648), 2147483647i, 2147483647i), false), Struct_1(vec4<i32>(86264i, -113083i, -20350i, 58541i), false)), Struct_2(Struct_1(vec4<i32>(2147483647i, 0i, -1i, 0i), false), Struct_1(vec4<i32>(53477i, -1i, 0i, -5932i), false)), Struct_2(Struct_1(vec4<i32>(24626i, -39623i, 10134i, 0i), true), Struct_1(vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 54831i), true)), Struct_2(Struct_1(vec4<i32>(-1i, -40706i, -1i, 2147483647i), true), Struct_1(vec4<i32>(1i, -42635i, -1i, 2147483647i), true)), Struct_2(Struct_1(vec4<i32>(-28848i, -2221i, 2147483647i, 1i), true), Struct_1(vec4<i32>(-1i, 11401i, 45549i, -3494i), false)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 1i, 27874i, 1i), true), Struct_1(vec4<i32>(-1i, 54313i, 0i, 2147483647i), true)), Struct_2(Struct_1(vec4<i32>(-3116i, i32(-2147483648), -26303i, 0i), false), Struct_1(vec4<i32>(-1i, -20743i, -3380i, 9552i), false)));

var<private> global1: vec2<i32> = vec2<i32>(-26097i, -1i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: u32) -> vec4<u32> {
    global0 = array<Struct_2, 15>();
    let var_0 = u_input.a.zyx;
    let var_1 = Struct_5(~18001i, arg_0.x);
    global1 = vec2<i32>(_wgslsmith_mod_i32(min(_wgslsmith_mod_i32(11797i, global1.x), 0i), 2147483647i), global1.x);
    let var_2 = var_1;
    return ~abs(vec4<u32>(~1u | _wgslsmith_sub_u32(4294967295u, u_input.a.x), var_0.x, _wgslsmith_div_u32(16860u, ~arg_1), 4294967295u));
}

fn func_2() -> vec2<bool> {
    let var_0 = max(max(_wgslsmith_mult_u32(~u_input.a.x, abs(u_input.a.x)), (62589u << (u_input.a.x % 32u)) << ((57652u << (u_input.a.x % 32u)) % 32u)), ~4056u) < _wgslsmith_dot_vec4_u32(vec4<u32>(2032u, 48234u, 5487u, u_input.a.x), _wgslsmith_clamp_vec4_u32(select(func_3(vec3<f32>(-917f, 224f, 2210f), 1u), _wgslsmith_add_vec4_u32(u_input.a, u_input.a), true), (u_input.a ^ vec4<u32>(25038u, u_input.a.x, 12235u, u_input.a.x)) | ~u_input.a, ~(u_input.a >> (u_input.a % vec4<u32>(32u)))));
    var var_1 = false;
    global0 = array<Struct_2, 15>();
    var var_2 = u_input.c >> (~(~(reverseBits(u_input.a.xwy) >> (func_3(vec3<f32>(-1000f, 520f, 1000f), u_input.a.x).wxx % vec3<u32>(32u)))) % vec3<u32>(32u));
    return !select(vec2<bool>(true & select(false, var_0, var_0), any(!vec2<bool>(false, var_0))), !vec2<bool>(!var_0, any(vec2<bool>(true, var_0))), select(vec2<bool>(true, any(vec4<bool>(var_0, false, false, var_0))), vec2<bool>(!var_0, true), select(!vec2<bool>(var_0, false), vec2<bool>(false, var_0), vec2<bool>(true, true))));
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: bool, arg_3: vec3<i32>) -> Struct_1 {
    global0 = array<Struct_2, 15>();
    global1 = _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.x, ~(~firstTrailingBit(global1.x))), select(arg_0, u_input.c.zz, func_2()));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -437f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1265f, 1591f)) - _wgslsmith_f_op_f32(1123f + 589f)))), _wgslsmith_f_op_f32(f32(-1f) * -1008f));
    let var_1 = Struct_4(1u, vec3<u32>(max(~arg_1, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 1u, u_input.a.x), vec3<u32>(4294967295u, 0u, 1966u)), _wgslsmith_div_u32(arg_1, arg_1), arg_1)), ~reverseBits(2908u), u_input.a.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1680f, -388f, _wgslsmith_f_op_f32(exp2(var_0.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-228f, 912f, var_0.x)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-529f, 638f, _wgslsmith_f_op_f32(752f * var_0.x)))), vec3<bool>(!(global1.x <= -2147483647i), true, min(1u, u_input.a.x) <= ~arg_1))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-568f, _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(-848f - var_0.x)))), vec3<f32>(334f, -658f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x)))), func_2().x)));
    var var_2 = select(select(vec3<bool>(true, true, arg_2), !(!vec3<bool>(arg_2, arg_2, arg_2)), all(!vec2<bool>(arg_2, arg_2))), vec3<bool>(true, true, all(select(select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, false), vec2<bool>(true, true)), func_2(), any(vec2<bool>(arg_2, arg_2))))), arg_2);
    return Struct_1(~(u_input.b >> ((vec4<u32>(1u, u_input.a.x, 12482u, u_input.a.x) >> (~u_input.a % vec4<u32>(32u))) % vec4<u32>(32u))), any(select(select(!vec4<bool>(var_2.x, arg_2, true, arg_2), !vec4<bool>(var_2.x, true, false, false), var_2.x), select(!vec4<bool>(arg_2, var_2.x, true, true), vec4<bool>(false, var_2.x, arg_2, var_2.x), select(vec4<bool>(arg_2, true, false, arg_2), vec4<bool>(var_2.x, false, arg_2, false), vec4<bool>(arg_2, arg_2, true, false))), vec4<bool>(true, true, true, true))));
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    var var_0 = vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(~1u, (74254u & _wgslsmith_div_u32(u_input.a.x, u_input.a.x)) >> ((u_input.a.x ^ _wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.zx)) % 32u)), 0u, 4294967295u);
    var var_1 = ~u_input.a ^ ~func_3(vec3<f32>(140f, -109f, _wgslsmith_div_f32(170f, 1236f)), ~u_input.a.x);
    global1 = vec2<i32>(-u_input.c.x, ~2147483647i);
    global1 = vec2<i32>(select(_wgslsmith_dot_vec4_i32(-select(arg_0.a.a, vec4<i32>(-31588i, global1.x, u_input.b.x, -30784i), arg_0.e.x), arg_0.a.a >> (~u_input.a % vec4<u32>(32u))), global1.x << (0u % 32u), true), u_input.c.x);
    var_0 = select(select(func_3(vec3<f32>(846f, 997f, 260f), var_1.x), vec4<u32>(_wgslsmith_mult_u32(1576u, var_1.x), min(46476u, 4294967295u), firstLeadingBit(0u), 4294967295u), !(arg_0.d.a.b == false)), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, u_input.a.x), vec4<u32>(var_1.x, 1u, 1u, 1u)), vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, var_0.x), _wgslsmith_mult_u32(u_input.a.x, var_1.x), 4294967295u, var_0.x)), true) >> (abs(vec4<u32>(~(~u_input.a.x), 80563u, var_1.x << ((var_0.x & var_0.x) % 32u), _wgslsmith_add_u32(27798u, var_0.x))) % vec4<u32>(32u));
    return arg_0.d;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec3<u32>) -> u32 {
    var var_0 = arg_0.b.b;
    return u_input.a.x;
}

fn func_6(arg_0: u32, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = vec3<f32>(-1205f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(610f, -684f))) - -202f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(435f * _wgslsmith_f_op_f32(f32(-1f) * -336f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(513f))));
    var var_2 = Struct_3(Struct_1(u_input.b, all(vec2<bool>(true, false))), func_1(u_input.c.xx, u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1000f, -1389f, true)), 974f)), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_1.x, arg_1.x), ~(-40310i), -global1.x), firstTrailingBit(~global1.x), global1.x)).a.x, !vec4<bool>(!all(vec3<bool>(true, false, true)), true, true, true), Struct_2(Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.x, 44673i, u_input.b.x, 11944i) << (vec4<u32>(0u, 0u, arg_0, arg_0) % vec4<u32>(32u)), vec4<i32>(global1.x, -2147483647i, u_input.c.x, u_input.b.x)), global1.x >= -7005i), Struct_1(vec4<i32>(u_input.c.x, 2147483647i, u_input.b.x, firstTrailingBit(2147483647i)), true)), vec2<bool>(func_2().x & any(vec2<bool>(false, true)), true));
    var_2 = Struct_3(Struct_1(~(_wgslsmith_sub_vec4_i32(vec4<i32>(18695i, 60076i, -1i, 2829i), u_input.b) | vec4<i32>(u_input.b.x, 37900i, -2769i, 1i)), all(vec3<bool>(true, false, 1199f <= var_1.x))), -46480i, !vec4<bool>(func_4(Struct_3(var_2.d.a, arg_1.x, vec4<bool>(var_2.e.x, var_2.e.x, true, var_2.a.b), Struct_2(var_2.d.a, Struct_1(vec4<i32>(var_2.d.a.a.x, -37873i, -2147483647i, arg_1.x), var_2.d.a.b)), var_2.c.zx)).b.b, func_3(vec3<f32>(var_1.x, var_1.x, var_1.x), 0u).x == reverseBits(0u), true, false), func_4(Struct_3(var_2.a, u_input.b.x, !(!vec4<bool>(false, false, var_2.a.b, var_2.e.x)), func_4(Struct_3(var_2.a, -11889i, var_2.c, global0[_wgslsmith_index_u32(arg_0, 15u)], vec2<bool>(var_2.a.b, false))), select(var_2.c.xy, !vec2<bool>(var_2.e.x, var_2.a.b), vec2<bool>(var_2.d.a.b, true)))), select(vec2<bool>(true, false), vec2<bool>(var_2.a.b, var_2.d.b.b), !(!(!var_2.c.wy))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, -1591f) - var_1), vec3<f32>(var_1.x, -236f, var_1.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-611f, var_1.x, -2048f))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(select(var_1.x, 1193f, var_2.e.x)), _wgslsmith_f_op_f32(var_1.x + var_1.x)), vec3<f32>(var_1.x, 1f, 227f)), var_2.c.zwy)));
    return Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(abs(arg_1.x), 41615i, ~var_2.d.a.a.x & _wgslsmith_div_i32(-1i, var_2.a.a.x), -16840i), -(~var_2.d.b.a) ^ _wgslsmith_add_vec4_i32(vec4<i32>(491i, global1.x, var_2.b, u_input.c.x), var_2.a.a)), any(select(var_2.c.wwx, !var_2.c.yyz, !var_2.c.xyw)) == (!func_1(arg_1, 4294967295u, false, vec3<i32>(var_2.d.b.a.x, 28248i, global1.x)).b | all(vec3<bool>(true, var_2.d.b.b, var_2.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(func_4(Struct_3(func_1(u_input.c.xy, u_input.a.x, false, vec3<i32>(global1.x, 46535i, 68211i)), u_input.b.x, select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), true), Struct_2(Struct_1(vec4<i32>(global1.x, 0i, -1i, u_input.b.x), true), Struct_1(u_input.b, false)), vec2<bool>(true, true))), select(-56547i, ~u_input.c.x, global1.x <= select(global1.x, global1.x, false)), u_input.a.ywz), vec2<i32>(-u_input.c.x, global1.x));
    var var_1 = Struct_3(var_0, 5110i, !select(!(!vec4<bool>(false, var_0.b, false, var_0.b)), select(!vec4<bool>(true, true, var_0.b, true), select(vec4<bool>(var_0.b, var_0.b, false, var_0.b), vec4<bool>(var_0.b, true, true, false), false), true), true), func_4(Struct_3(Struct_1(max(u_input.b, u_input.b), true), -6972i, select(!vec4<bool>(true, var_0.b, true, true), select(vec4<bool>(var_0.b, var_0.b, true, false), vec4<bool>(true, false, var_0.b, false), false), !vec4<bool>(true, var_0.b, var_0.b, var_0.b)), Struct_2(var_0, var_0), vec2<bool>(false, false == var_0.b))), !vec2<bool>(var_0.b, var_0.b));
    var var_2 = Struct_3(Struct_1(select(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.a.x, -12090i, 59424i, 18653i), vec4<i32>(global1.x, global1.x, -58293i, 2147483647i)), ~u_input.b, -vec4<i32>(var_1.a.a.x, var_1.d.a.a.x, global1.x, 29534i)), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, u_input.b.x, -50735i), vec4<i32>(u_input.c.x, -1i, global1.x, global1.x)) | var_0.a, false), true), _wgslsmith_sub_i32(func_6(u_input.a.x, func_4(Struct_3(Struct_1(vec4<i32>(36295i, var_0.a.x, u_input.c.x, var_0.a.x), false), 0i, vec4<bool>(true, var_0.b, false, var_0.b), var_1.d, vec2<bool>(false, false))).b.a.zy).a.x, ~(-44343i)) & ~(0i | (var_1.a.a.x << (u_input.a.x % 32u))), !var_1.c, Struct_2(Struct_1(vec4<i32>(1i, 72264i, global1.x, -2147483647i) & var_1.a.a, !all(vec2<bool>(var_0.b, false))), var_1.d.b), vec2<bool>(true, select(true, true, !any(vec4<bool>(true, true, false, var_0.b)))));
    var var_3 = firstTrailingBit(u_input.a) ^ ~u_input.a;
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(201f, -1961f, -403f, 1811f)), vec4<f32>(-149f, 653f, -1455f, -190f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1073f, 2439f, 246f, 1209f))), var_1.c.x)), vec4<f32>(1979f, -438f, 1000f, -490f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(225f, -1517f, 835f, -409f), vec4<f32>(1000f, -1009f, -1249f, 335f)))) - vec4<f32>(-177f, -382f, _wgslsmith_f_op_f32(-310f - -960f), -159f))));
    var var_5 = Struct_1(var_2.d.b.a, var_2.d.a.b);
    var_3 = select(u_input.a, ~vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(1u, var_3.x), firstTrailingBit(~var_3.x), ~countOneBits(0u)), true);
    var var_6 = ~(~countOneBits(_wgslsmith_div_i32(-9614i, -1i))) <= min(_wgslsmith_add_i32(-_wgslsmith_div_i32(global1.x, var_0.a.x), _wgslsmith_div_i32(u_input.b.x, abs(var_5.a.x))), ~((var_0.a.x << (var_3.x % 32u)) & _wgslsmith_sub_i32(var_5.a.x, var_1.d.a.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(1i, -_wgslsmith_mult_i32(var_5.a.x, 26888i), firstLeadingBit(var_5.a.x)) ^ func_6(var_3.x, countOneBits(vec2<i32>(65448i, -2147483647i))).a.wzx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_4.yw) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(var_4.zx, var_4.zx, false)))) + var_4.wx)), _wgslsmith_clamp_vec3_i32(func_1(-_wgslsmith_clamp_vec2_i32(vec2<i32>(8634i, 1i), var_0.a.xy, var_0.a.zw), _wgslsmith_dot_vec2_u32(~vec2<u32>(5464u, 64686u), vec2<u32>(162925u, var_3.x)), all(!vec4<bool>(false, var_5.b, var_2.c.x, false)), ~(var_0.a.zyz | vec3<i32>(var_0.a.x, 6144i, var_5.a.x))).a.zwx, min(~var_0.a.xyy >> (u_input.a.wxx % vec3<u32>(32u)), ~(vec3<i32>(-2147483647i, 1i, -1119i) << (vec3<u32>(u_input.a.x, var_3.x, 1u) % vec3<u32>(32u)))), _wgslsmith_div_vec3_i32(var_2.a.a.xyw, vec3<i32>(_wgslsmith_mult_i32(var_1.d.a.a.x, var_2.b), -var_0.a.x, u_input.c.x))), var_4.yyy);
}

