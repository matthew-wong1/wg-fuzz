struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = select(vec2<bool>(!arg_0.b, false), select(vec2<bool>(any(!vec3<bool>(arg_0.b, true, true)), arg_0.b & true), vec2<bool>((arg_0.b && false) == arg_0.b, true), !arg_0.b), arg_0.b);
    let var_1 = Struct_4(Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~u_input.c.xxz, vec3<u32>(arg_0.d.x, 8027u, 18414u)), abs(arg_0.a)), true, vec3<f32>(_wgslsmith_f_op_f32(-global0.c.x), arg_0.c.x, _wgslsmith_f_op_f32(-1f)), vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(arg_0.d.x, u_input.e.x, u_input.b, arg_0.d.x)), vec4<u32>(110372u, arg_0.d.x, arg_0.d.x, u_input.b)), _wgslsmith_div_u32(u_input.b, arg_0.d.x), _wgslsmith_div_u32(arg_0.d.x, 10381u) << (~u_input.b % 32u)), abs(arg_0.e)));
    let var_2 = arg_0;
    let var_3 = vec2<bool>(true, !all(vec3<bool>(arg_0.b | arg_0.b, !var_0.x, var_1.a.b && false)));
    var var_4 = any(!select(select(!vec3<bool>(true, var_3.x, var_0.x), vec3<bool>(true, true, true), select(vec3<bool>(true, false, var_0.x), vec3<bool>(var_1.a.b, var_2.b, false), var_3.x)), !vec3<bool>(true, var_0.x, true), all(vec3<bool>(true, var_3.x, arg_0.b))));
    return _wgslsmith_f_op_f32(abs(641f));
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<i32>(global0.b.x, ~(-1i), _wgslsmith_mod_i32(1i, global0.b.x | global0.b.x), global0.b.x);
    let var_1 = abs(0u);
    var var_2 = true || (~(~0u) >= _wgslsmith_mult_u32(var_1, _wgslsmith_clamp_u32(9721u, ~4294967295u, countOneBits(27330u))));
    var_2 = ~((_wgslsmith_dot_vec3_i32(var_0.www, vec3<i32>(-2147483647i, global0.b.x, 2147483647i)) << (u_input.e.x % 32u)) >> ((u_input.c.x | u_input.a) % 32u)) < 6108i;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-216f)) * 1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a, -885f))) * 172f)), global0.b, _wgslsmith_f_op_vec3_f32(select(global0.c, _wgslsmith_f_op_vec3_f32(min(global0.c, global0.c)), false)));
    return Struct_1(~0u, var_3.a >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1309f))), global0.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c.x, global0.c.x, 155f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, -865f, -909f))))) + vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(u_input.c.x, true, vec3<f32>(202f, -1951f, global0.c.x), u_input.d, vec4<i32>(global0.b.x, global0.b.x, var_3.b.x, var_0.x)))), var_3.a, 289f)), u_input.d, -(vec4<i32>(_wgslsmith_mult_i32(-1i, 10747i), global0.b.x, global0.b.x, global0.b.x) ^ vec4<i32>(-1i, 1i, 1i, i32(-1i) * -14307i)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: u32) -> vec3<f32> {
    global0 = Struct_2(-135f, arg_1.d.xzw, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.c * arg_1.a.c), vec3<f32>(-1010f, -1510f, _wgslsmith_f_op_f32(f32(-1f) * -544f))));
    global0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.c.x), arg_1.b.c.x), select(vec3<i32>(23626i, firstTrailingBit(~global0.b.x), i32(-1i) * -6101i), -countOneBits(vec3<i32>(52519i, arg_1.b.e.x, 2147483647i)), arg_2.wyy), _wgslsmith_div_vec3_f32(arg_1.a.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    var var_0 = 1u;
    var var_1 = -firstLeadingBit(i32(-1i) * -global0.b.x);
    var var_2 = arg_1.e;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(arg_1.a.c.x - -257f), -949f) * vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.a.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-472f - 709f) - global0.a)), arg_1.b.c.x));
}

fn func_1() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(260f, global0.a)))) - vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.a, 546f))), 808f)) + _wgslsmith_f_op_vec3_f32(select(global0.c, _wgslsmith_f_op_vec3_f32(func_4(vec2<bool>(true, true), Struct_3(Struct_1(22605u, true, global0.c, vec3<u32>(u_input.b, 4294967295u, u_input.b), vec4<i32>(global0.b.x, global0.b.x, -1i, global0.b.x)), func_2(), u_input.c, vec4<i32>(1i, 1395i, -54658i, global0.b.x), 26747u), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), false), false), 3055u)), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true))))));
    let var_1 = select(-vec4<i32>(abs(1i), 2147483647i ^ _wgslsmith_mult_i32(global0.b.x, 1i), global0.b.x, 21034i), firstLeadingBit(abs(-countOneBits(vec4<i32>(global0.b.x, global0.b.x, global0.b.x, -11980i)))), !(!(-global0.b.x > global0.b.x)));
    var var_2 = Struct_1(reverseBits(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(u_input.c, select(u_input.c, u_input.c, true)))), true | (~_wgslsmith_dot_vec3_i32(var_1.zxx, vec3<i32>(-35423i, var_1.x, -11324i)) != -1i), global0.c, ~(~u_input.c.zyz), func_2().e);
    let var_3 = Struct_5(select(!select(vec3<bool>(var_2.b, true, var_2.b), select(vec3<bool>(false, false, true), vec3<bool>(false, var_2.b, var_2.b), var_2.b), select(vec3<bool>(false, true, var_2.b), vec3<bool>(true, var_2.b, true), vec3<bool>(var_2.b, false, var_2.b))), select(select(!vec3<bool>(var_2.b, false, var_2.b), vec3<bool>(true, true, var_2.b), true), !(!vec3<bool>(var_2.b, var_2.b, var_2.b)), select(vec3<bool>(var_2.b, var_2.b, true), select(vec3<bool>(false, true, true), vec3<bool>(var_2.b, var_2.b, var_2.b), vec3<bool>(false, false, var_2.b)), !vec3<bool>(var_2.b, var_2.b, true))), vec3<bool>(true, !var_2.b, !var_2.b)), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -741f), global0.a))), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(~global0.b, -vec3<i32>(var_1.x, 2133i, 10379i)), -abs(var_2.e.yzy)), _wgslsmith_f_op_vec3_f32(step(global0.c, vec3<f32>(var_2.c.x, _wgslsmith_f_op_f32(828f * var_0.x), _wgslsmith_div_f32(-474f, var_0.x))))), ~u_input.d);
    let var_4 = 0i;
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, func_1(), firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(u_input.b, 47468u, u_input.e.x), 0u, ~20594u, _wgslsmith_mult_u32(0u, u_input.c.x)), ~u_input.c, max(~u_input.c, max(vec4<u32>(99834u, 1954u, 4294967295u, 45058u), u_input.c)))), vec2<u32>(u_input.b, ~(~25527u)));
}

