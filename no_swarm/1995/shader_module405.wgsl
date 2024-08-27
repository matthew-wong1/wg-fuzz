struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
    d: vec4<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec3<u32> {
    var var_0 = global0.d.xx;
    global0 = Struct_2(reverseBits(-42282i), global0.b, global0.c, ~vec3<u32>(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), _wgslsmith_clamp_u32(0u | var_0.x, u_input.b, u_input.b), ~(~u_input.c.x)), vec2<i32>(_wgslsmith_mod_i32(1i, global0.e.x), _wgslsmith_clamp_i32(u_input.a.x, global0.a, -4109i) | -7501i) & vec2<i32>(-28259i, global0.e.x));
    var var_1 = _wgslsmith_f_op_f32(893f * global0.c.x);
    var var_2 = global0.c.xz;
    global0 = Struct_2(~(-1i), Struct_1(abs(firstTrailingBit(_wgslsmith_mult_vec4_i32(global0.b.a, vec4<i32>(global0.a, 1i, global0.a, 0i)))), global0.b.b ^ _wgslsmith_mod_vec4_i32(global0.b.b, -global0.b.a), vec4<bool>(all(global0.b.c.yz), false, true, any(select(global0.b.c, global0.b.c, vec4<bool>(true, true, global0.b.c.x, global0.b.d)))), (-1808f != global0.c.x) != true), _wgslsmith_f_op_vec3_f32(-global0.c), firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(var_0.x, _wgslsmith_div_u32(global0.d.x, var_0.x)), ~u_input.c.x, u_input.b)), global0.b.a.yx);
    return vec3<u32>(global0.d.x, 1u, 4294967295u);
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_1(global0.b.b, -(_wgslsmith_mult_vec4_i32(global0.b.b, -arg_0.b) & (select(vec4<i32>(0i, -37902i, 1i, 1048i), vec4<i32>(u_input.a.x, global0.e.x, 0i, arg_0.d), true) | firstLeadingBit(arg_0.b))), select(global0.b.c, global0.b.c, arg_2), true);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -342f);
    var var_2 = -var_0.a.zwz;
    var_0 = global0.b;
    var var_3 = Struct_2(_wgslsmith_mod_i32(35087i, _wgslsmith_add_i32(min(arg_0.b.x, ~1i), _wgslsmith_div_i32(1i, ~16069i))), global0.b, global0.c, func_3(), vec2<i32>(5661i, _wgslsmith_div_i32(-1i, var_0.b.x ^ (1i >> (0u % 32u)))));
    return var_3.b;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    return Struct_2(~global0.a, Struct_1(-firstTrailingBit(-arg_1.b), vec4<i32>(-arg_1.a.x | _wgslsmith_dot_vec2_i32(u_input.a, arg_1.a.xw), abs(-33623i), -53849i, -1i), vec4<bool>(global0.b.c.x, (u_input.c.x != arg_0) & !global0.b.d, true, true), true), vec3<f32>(_wgslsmith_f_op_f32(step(global0.c.x, -948f)), _wgslsmith_f_op_f32(exp2(global0.c.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1635f * _wgslsmith_f_op_f32(exp2(arg_2.c.x)))))), select(~((vec3<u32>(4163u, 4294967295u, global0.d.x) ^ global0.d) << ((arg_2.d >> (vec3<u32>(1u, u_input.c.x, arg_0) % vec3<u32>(32u))) % vec3<u32>(32u))), ~vec3<u32>(u_input.b >> (arg_2.d.x % 32u), ~22130u, _wgslsmith_div_u32(arg_2.d.x, 4294967295u)), arg_1.c.wyw), _wgslsmith_add_vec2_i32(vec2<i32>(~global0.b.b.x, 1i), _wgslsmith_sub_vec2_i32(~vec2<i32>(0i, -19954i), vec2<i32>(-31437i, u_input.a.x))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    global0 = arg_0;
    global1 = u_input.a.x ^ _wgslsmith_sub_i32(u_input.a.x, countOneBits(~arg_1.x & _wgslsmith_div_i32(arg_3.b.x, arg_3.b.x)));
    global1 = 12101i;
    return Struct_2(countOneBits(-1i ^ (_wgslsmith_dot_vec4_i32(arg_0.b.a, arg_3.b) << (arg_0.d.x % 32u))), Struct_1(reverseBits(~vec4<i32>(arg_1.x, u_input.a.x, global0.b.b.x, arg_3.b.x)), arg_0.b.b, vec4<bool>(global0.b.d, true & arg_2, all(!global0.b.c.xz), arg_3.d), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1232f, arg_0.c.x, 1742f) * global0.c), _wgslsmith_f_op_vec3_f32(-arg_0.c)) * arg_0.c) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.c.x))), 533f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1123f + arg_0.c.x) + _wgslsmith_div_f32(arg_0.c.x, -1000f)))), vec3<u32>(arg_0.d.x, global0.d.x, _wgslsmith_div_u32(24626u, 43068u)), _wgslsmith_mod_vec2_i32(arg_1.ww, -arg_3.b.ww));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_2) -> Struct_3 {
    global1 = -2147483647i;
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, arg_1.c.x, arg_1.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(399f - -1196f), _wgslsmith_div_f32(arg_1.c.x, -525f)))))));
    var var_1 = vec3<u32>(34154u, _wgslsmith_clamp_u32(50591u, 39681u, ~_wgslsmith_mod_u32(0u, 53149u)) & ~37351u, ~(~arg_1.d.x));
    let var_2 = all(arg_1.b.c.wzz);
    var_1 = vec3<u32>(4294967295u, arg_1.d.x | 1u, reverseBits(_wgslsmith_div_u32(func_4(45776u, arg_1.b, Struct_2(40475i, Struct_1(vec4<i32>(arg_1.e.x, 1i, u_input.a.x, arg_1.a), arg_1.b.a, vec4<bool>(var_2, false, var_2, false), var_2), vec3<f32>(1725f, -1000f, -2218f), global0.d, vec2<i32>(global0.e.x, u_input.a.x))).d.x, 34696u >> (0u % 32u)))) >> (vec3<u32>(28544u, _wgslsmith_add_u32(~4294967295u, ~(u_input.c.x << (62981u % 32u))), var_1.x << (102905u % 32u)) % vec3<u32>(32u));
    return Struct_3(global0.b.a.yx, countOneBits(_wgslsmith_mod_vec4_i32(global0.b.a, vec4<i32>(u_input.a.x, _wgslsmith_sub_i32(arg_1.e.x, -38098i), ~global0.a, _wgslsmith_mult_i32(99244i, global0.b.b.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(func_4(20928u, Struct_1(vec4<i32>(u_input.a.x, arg_1.b.a.x, arg_1.e.x, global0.e.x), arg_1.b.b, arg_1.b.c, true), Struct_2(arg_1.a, Struct_1(vec4<i32>(arg_1.a, -1i, u_input.a.x, u_input.a.x), vec4<i32>(arg_1.b.a.x, global0.a, 1i, u_input.a.x), vec4<bool>(global0.b.d, var_2, arg_1.b.d, false), var_2), vec3<f32>(arg_0.x, var_0.x, 2686f), vec3<u32>(global0.d.x, global0.d.x, arg_1.d.x), vec2<i32>(1i, 0i))).c.x + 186f))))), arg_1.b.b.x, func_4(~(select(u_input.b, 70277u, global0.b.c.x) & ~arg_1.d.x), arg_1.b, arg_1).d.zz);
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1319f, -1381f, _wgslsmith_f_op_f32(ceil(global0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -921f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, global0.c.x, _wgslsmith_f_op_f32(abs(-760f)), global0.c.x))), global0.b, (global0.d.x < 4294967295u) || false, global0.b.c, func_6(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global0.c.x)), -567f, false)), global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1446f)))), func_5(func_4(u_input.b, func_2(Struct_3(global0.e, vec4<i32>(global0.b.a.x, u_input.a.x, 1i, u_input.a.x), global0.c.x, global0.e.x, u_input.c.yz), 2866u, vec4<bool>(true, true, true, true)), Struct_2(-2147483647i, Struct_1(vec4<i32>(global0.e.x, 1i, -53455i, 1i), vec4<i32>(2147483647i, -39724i, u_input.a.x, -2147483647i), vec4<bool>(global0.b.d, global0.b.d, global0.b.c.x, global0.b.d), false), global0.c, vec3<u32>(1u, u_input.c.x, 6862u), vec2<i32>(u_input.a.x, global0.a))), firstLeadingBit(global0.b.a), !global0.b.c.x, global0.b)));
    global0 = func_4(~(~reverseBits(global0.d.x | 1u)), func_5(Struct_2(7554i, Struct_1(-var_0.e.b, ~vec4<i32>(var_0.e.a.x, 18657i, var_0.e.d, var_0.e.d), vec4<bool>(var_0.c, true, true, false), global0.b.d || false), var_0.a.xwx, u_input.c, global0.b.a.xy), vec4<i32>(-var_0.b.a.x << (firstLeadingBit(1u) % 32u), var_0.e.a.x, -countOneBits(20945i), ~func_2(Struct_3(vec2<i32>(global0.b.a.x, 1i), var_0.b.a, var_0.a.x, var_0.b.a.x, var_0.e.e), 0u, vec4<bool>(true, global0.b.d, global0.b.c.x, var_0.d.x)).b.x), false, var_0.b).b, Struct_2(func_4(var_0.e.e.x, Struct_1(func_5(Struct_2(global0.a, var_0.b, var_0.a.xzw, global0.d, vec2<i32>(var_0.e.b.x, -1i)), vec4<i32>(u_input.a.x, u_input.a.x, 0i, var_0.e.b.x), false, Struct_1(vec4<i32>(global0.a, var_0.e.b.x, -1i, var_0.b.a.x), global0.b.b, vec4<bool>(true, global0.b.c.x, false, var_0.c), false)).b.a, _wgslsmith_mult_vec4_i32(var_0.b.a, var_0.e.b), !global0.b.c, all(global0.b.c.wy)), Struct_2(_wgslsmith_clamp_i32(global0.a, 47033i, global0.e.x), func_2(Struct_3(global0.e, vec4<i32>(1i, u_input.a.x, u_input.a.x, var_0.e.d), -894f, global0.e.x, var_0.e.e), 3288u, var_0.b.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, -531f, 688f) - vec3<f32>(var_0.a.x, var_0.e.c, global0.c.x)), ~u_input.c, var_0.e.b.wy)).e.x, Struct_1(-var_0.e.b, func_6(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1104f, -1000f, -1000f)), Struct_2(global0.a, var_0.b, vec3<f32>(1066f, var_0.e.c, 322f), vec3<u32>(var_0.e.e.x, var_0.e.e.x, u_input.c.x), vec2<i32>(2147483647i, 2147483647i))).b, func_5(func_5(Struct_2(global0.b.a.x, Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, -26875i, global0.a), vec4<i32>(var_0.b.b.x, global0.a, u_input.a.x, u_input.a.x), var_0.b.c, true), var_0.a.zyy, u_input.c, vec2<i32>(global0.b.a.x, 2147483647i)), vec4<i32>(u_input.a.x, global0.a, -13142i, -2147483647i), false, Struct_1(global0.b.a, vec4<i32>(-2147483647i, 53120i, global0.e.x, -1i), vec4<bool>(true, global0.b.c.x, true, global0.b.c.x), false)), _wgslsmith_sub_vec4_i32(var_0.b.a, var_0.b.b), var_0.d.x, Struct_1(global0.b.a, vec4<i32>(var_0.e.d, 36336i, -2147483647i, var_0.e.b.x), global0.b.c, false)).b.c, _wgslsmith_f_op_f32(913f * var_0.e.c) == 273f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-608f - var_0.a.x) - _wgslsmith_f_op_f32(trunc(global0.c.x))), -458f, _wgslsmith_f_op_f32(-func_4(u_input.c.x, Struct_1(vec4<i32>(1i, var_0.e.a.x, -40745i, global0.a), vec4<i32>(43081i, var_0.b.a.x, 2147483647i, u_input.a.x), global0.b.c, global0.b.c.x), Struct_2(2147483647i, Struct_1(vec4<i32>(var_0.b.b.x, 16987i, global0.b.b.x, global0.e.x), vec4<i32>(var_0.b.b.x, -28432i, 35592i, u_input.a.x), var_0.d, var_0.b.c.x), vec3<f32>(972f, -173f, var_0.e.c), vec3<u32>(u_input.b, 1u, 232u), var_0.b.a.wx)).c.x)), ~(~vec3<u32>(var_0.e.e.x, 4294967295u, 1u)), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(global0.b.b.wy, global0.b.a.xw), u_input.a)));
    var var_1 = !vec2<bool>(select(782f < _wgslsmith_f_op_f32(-var_0.e.c), !all(global0.b.c.wzy), _wgslsmith_f_op_f32(-global0.c.x) >= -1564f), !(!(-148f <= var_0.e.c)));
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, var_0.a.x, var_0.a.x, var_0.a.x)), _wgslsmith_div_vec4_f32(var_0.a, var_0.a)) * var_0.a)), vec4<f32>(675f, var_0.e.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.c.x, -1504f)) + _wgslsmith_f_op_f32(-1213f - global0.c.x)) - var_0.a.x), -1000f)));
    global1 = ~global0.a;
    return Struct_2(_wgslsmith_add_i32((global0.a ^ ~u_input.a.x) | 1i, max(u_input.a.x, 1i >> (min(var_0.e.e.x, 47646u) % 32u))), global0.b, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.x, 1000f, global0.c.x), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -218f), var_2.x, var_2.x), all(vec2<bool>(true, true)))), func_5(Struct_2(~global0.a, func_2(Struct_3(var_0.e.b.wx, var_0.b.b, var_2.x, -37521i, vec2<u32>(global0.d.x, 14367u)), u_input.c.x, vec4<bool>(false, false, false, true)), _wgslsmith_f_op_vec3_f32(-var_2.yxz), vec3<u32>(global0.d.x, var_0.e.e.x, var_0.e.e.x), vec2<i32>(4004i, -72373i)), var_0.b.a, func_4(~var_0.e.e.x, var_0.b, func_4(global0.d.x, Struct_1(vec4<i32>(0i, -18929i, var_0.e.b.x, 2147483647i), vec4<i32>(global0.b.a.x, 1i, global0.a, u_input.a.x), global0.b.c, global0.b.d), Struct_2(2147483647i, var_0.b, vec3<f32>(-163f, -438f, var_2.x), vec3<u32>(15162u, var_0.e.e.x, 1u), var_0.b.a.wz))).b.d, global0.b).d | vec3<u32>(42190u, abs(~var_0.e.e.x), reverseBits(global0.d.x ^ 0u)), select(vec2<i32>(global0.a, func_2(Struct_3(var_0.e.a, var_0.b.b, var_0.a.x, u_input.a.x, vec2<u32>(161u, 1u)), var_0.e.e.x, var_0.d).b.x) & vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0.b.b.x, 1i), vec3<i32>(u_input.a.x, 17164i, global0.b.b.x)), ~36903i), vec2<i32>(~_wgslsmith_sub_i32(-1i, u_input.a.x), select(global0.e.x, -u_input.a.x, !global0.b.c.x)), global0.b.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global1 = u_input.a.x;
    let var_0 = vec3<i32>(-1i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(abs(global0.b.a.yyz), func_2(Struct_3(vec2<i32>(u_input.a.x, global0.e.x), global0.b.a, global0.c.x, -7624i, vec2<u32>(u_input.c.x, global0.d.x)), u_input.b, global0.b.c).a.yxy), ~vec3<i32>(-37097i, -10976i, global0.a)), -abs(global0.b.b.wzw)), ~(-4061i));
    global0 = func_5(Struct_2(0i, Struct_1(~firstLeadingBit(vec4<i32>(27006i, -5993i, -40579i, var_0.x)), ~(~global0.b.a), func_5(Struct_2(u_input.a.x, Struct_1(vec4<i32>(-1i, -47761i, global0.a, -2147483647i), global0.b.a, vec4<bool>(global0.b.c.x, global0.b.d, global0.b.d, global0.b.d), global0.b.d), global0.c, u_input.c, vec2<i32>(global0.a, -1i)), abs(vec4<i32>(var_0.x, 2147483647i, -33330i, 2147483647i)), global0.b.d || false, Struct_1(global0.b.b, vec4<i32>(29354i, global0.a, -4962i, global0.b.a.x), vec4<bool>(false, false, true, true), global0.b.c.x)).b.c, global0.b.c.x), vec3<f32>(-875f, 1981f, global0.c.x), u_input.c >> (vec3<u32>(u_input.c.x << (global0.d.x % 32u), ~4294967295u, 0u) % vec3<u32>(32u)), u_input.a), _wgslsmith_mult_vec4_i32(func_5(Struct_2(-47664i, Struct_1(global0.b.b, vec4<i32>(var_0.x, -2147483647i, 0i, u_input.a.x), global0.b.c, global0.b.d), _wgslsmith_f_op_vec3_f32(round(global0.c)), firstTrailingBit(global0.d), vec2<i32>(u_input.a.x, 2147483647i)), global0.b.b, func_4(78814u, Struct_1(global0.b.b, global0.b.b, vec4<bool>(global0.b.d, global0.b.c.x, true, global0.b.c.x), true), Struct_2(u_input.a.x, Struct_1(global0.b.a, global0.b.a, global0.b.c, global0.b.c.x), global0.c, u_input.c, vec2<i32>(var_0.x, var_0.x))).d.x >= _wgslsmith_mult_u32(0u, global0.d.x), global0.b).b.a, vec4<i32>(u_input.a.x, -u_input.a.x, var_0.x >> (select(u_input.b, u_input.c.x, true) % 32u), 2147483647i)), true, Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(global0.b.a, vec4<i32>(global0.b.a.x, var_0.x, -2147483647i, u_input.a.x)), global0.b.b.x, _wgslsmith_clamp_i32(-2147483647i, u_input.a.x, u_input.a.x), _wgslsmith_dot_vec2_i32(var_0.zy, vec2<i32>(global0.b.b.x, global0.b.a.x))) ^ ~global0.b.b, vec4<i32>(select(_wgslsmith_div_i32(u_input.a.x, 33439i), var_0.x ^ -1i, true), -1i, max(23483i, u_input.a.x), ~_wgslsmith_clamp_i32(u_input.a.x, 16851i, u_input.a.x)), !global0.b.c, false));
    global0 = Struct_2(_wgslsmith_add_i32(var_0.x, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(global0.a, u_input.a.x << (global0.d.x % 32u), 38375i), func_4(_wgslsmith_mod_u32(global0.d.x, u_input.b), Struct_1(global0.b.b, global0.b.b, global0.b.c, false), func_1()).a, firstLeadingBit(~(-2147483647i)))), func_5(func_4(global0.d.x, global0.b, func_4(1u, Struct_1(vec4<i32>(22521i, -2147483647i, -8794i, -22270i), global0.b.b, global0.b.c, true), func_1())), select(vec4<i32>(u_input.a.x, 2147483647i, global0.a, global0.a), vec4<i32>(-41727i, u_input.a.x, global0.e.x, u_input.a.x), global0.c.x > global0.c.x) ^ -global0.b.a, select(!func_1().b.d, global0.b.d, !global0.b.d), func_4(reverseBits(global0.d.x & global0.d.x), Struct_1(~global0.b.a, global0.b.a, global0.b.c, true), Struct_2(var_0.x, global0.b, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.c.x, -820f, 1691f))), _wgslsmith_mod_vec3_u32(vec3<u32>(51469u, u_input.c.x, 110146u), u_input.c), func_4(0u, Struct_1(global0.b.b, global0.b.a, global0.b.c, true), Struct_2(var_0.x, Struct_1(global0.b.a, vec4<i32>(-2147483647i, var_0.x, -1i, var_0.x), global0.b.c, global0.b.d), global0.c, u_input.c, vec2<i32>(u_input.a.x, u_input.a.x))).b.a.xy)).b).b, vec3<f32>(_wgslsmith_f_op_f32(func_1().c.x + global0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -813f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x * -217f) + _wgslsmith_f_op_f32(global0.c.x + global0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(513f)) * -577f)), firstLeadingBit(global0.d) ^ ~global0.d, var_0.zx);
    global0 = func_5(func_5(Struct_2(reverseBits(_wgslsmith_div_i32(-2147483647i, u_input.a.x)), Struct_1(global0.b.b ^ global0.b.a, -global0.b.b, vec4<bool>(false, global0.b.c.x, global0.b.d, false), true), vec3<f32>(_wgslsmith_f_op_f32(floor(-1727f)), global0.c.x, 1110f), global0.d, -global0.e), min(reverseBits(global0.b.a ^ global0.b.b), global0.b.a | global0.b.b), func_4(_wgslsmith_mod_u32(14818u, global0.d.x), func_1().b, Struct_2(~global0.e.x, Struct_1(vec4<i32>(u_input.a.x, var_0.x, global0.b.b.x, global0.e.x), global0.b.b, global0.b.c, global0.b.c.x), global0.c, vec3<u32>(u_input.c.x, 62298u, 4294967295u), global0.b.b.zz)).b.c.x, global0.b), global0.b.a ^ vec4<i32>(u_input.a.x, ~var_0.x, -u_input.a.x, abs(-1i & global0.e.x)), true, func_4(func_5(func_4(_wgslsmith_add_u32(32186u, 1239u), Struct_1(vec4<i32>(43222i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-1i, -54551i, -2147483647i, 2147483647i), vec4<bool>(true, global0.b.d, false, global0.b.c.x), false), Struct_2(2147483647i, Struct_1(global0.b.b, vec4<i32>(global0.a, u_input.a.x, global0.b.a.x, 0i), global0.b.c, false), global0.c, u_input.c, u_input.a)), vec4<i32>(-1i, 1i, var_0.x, ~var_0.x), true, global0.b).d.x, func_2(Struct_3(vec2<i32>(0i, 2147483647i) ^ u_input.a, vec4<i32>(1i, -37017i, -35447i, 2147483647i), -720f, func_1().e.x, vec2<u32>(19351u, global0.d.x)), global0.d.x, !global0.b.c), Struct_2(-1i, func_1().b, global0.c, vec3<u32>(global0.d.x, global0.d.x, 0u) ^ global0.d, u_input.a)).b);
    let var_1 = ~4294967295u;
    global0 = Struct_2(-_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), Struct_1(global0.b.a, global0.b.b, !global0.b.c, false), vec3<f32>(global0.c.x, -1922f, -1000f), ~u_input.c, vec2<i32>(-2147483647i, var_0.x << (var_1 % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(max(var_0, vec3<i32>(~(-23854i), ~(1i >> (1u % 32u)), -2147483647i)), ~_wgslsmith_mult_u32(firstTrailingBit(37094u ^ var_1), 4294967295u), -1000f, select(var_0 | ~vec3<i32>(2147483647i, -70325i, global0.a), vec3<i32>(var_0.x, -(~u_input.a.x), _wgslsmith_sub_i32(u_input.a.x, max(-35262i, var_0.x))), select(select(global0.b.c.xxx, func_1().b.c.xwz, global0.b.c.x), select(vec3<bool>(false, true, true), !global0.b.c.xyz, false), !(global0.d.x <= var_1))));
}

