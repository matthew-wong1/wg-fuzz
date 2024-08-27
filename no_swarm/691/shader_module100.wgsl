struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<i32>, 8>;

var<private> global2: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> i32 {
    var var_0 = select(global2.zy, !vec2<bool>(_wgslsmith_clamp_u32(arg_1, arg_3.b.x, arg_1) < arg_3.b.x, ~arg_1 >= reverseBits(arg_1)), !vec2<bool>(global2.x, _wgslsmith_f_op_f32(-arg_3.d.x) <= _wgslsmith_f_op_f32(f32(-1f) * -495f)));
    var var_1 = firstTrailingBit(arg_3.a & 4083i);
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.d.xxx)));
    var var_4 = _wgslsmith_sub_i32(57696i, 1i);
    return -1519i;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(arg_1.b, Struct_1(_wgslsmith_div_i32(func_3(abs(vec4<i32>(-1030i, 1i, u_input.b, 0i)), 35587u, u_input.a.x, Struct_1(-19288i, arg_0.a.b, vec4<i32>(u_input.a.x, -47490i, -1i, u_input.b), arg_0.b.d)), 1i), arg_1.b.b, global0.a.c, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.a.d.x, 603f, global0.b.d.x, 1100f)))))))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a.d.x * global0.a.d.x)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1144f, _wgslsmith_f_op_f32(-arg_1.a.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-637f * 1134f)))));
    let var_2 = select(!vec4<bool>(global2.x, any(select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(false, global2.x, false), vec3<bool>(global2.x, false, global2.x))), any(!vec3<bool>(global2.x, true, true)), -2147483647i < _wgslsmith_sub_i32(-4872i, global0.a.a)), vec4<bool>(global2.x && (true && !global2.x), true, _wgslsmith_div_i32(var_0.b.c.x, 1i) > ~1i, true), vec4<bool>(select(any(vec4<bool>(true, true, global2.x, true)) && any(vec4<bool>(global2.x, global2.x, false, global2.x)), global2.x, false), !(firstTrailingBit(31377u) >= var_0.b.b.x), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.b.d.x))) <= _wgslsmith_f_op_f32(294f + 829f)));
    return Struct_2(Struct_1(1i, ~(~_wgslsmith_div_vec2_u32(arg_0.a.b, global0.b.b)), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(2147483647i, -9064i, var_0.a.c.x, arg_0.a.a)), ~arg_1.a.c), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, arg_0.a.c.x, arg_0.b.a, 16490i), ~vec4<i32>(-30061i, global0.b.c.x, arg_0.b.a, global0.a.a)), vec4<i32>(countOneBits(0i), 2147483647i, func_3(arg_1.b.c, 0u, 0i, arg_1.a), _wgslsmith_div_i32(var_0.b.a, 51610i))), arg_1.a.d), Struct_1(arg_0.b.a, ~arg_1.a.b, abs(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, arg_0.a.c.x), arg_0.a.c.xz), 0i, -2147483647i, ~(-4174i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.d.x, -667f, _wgslsmith_f_op_f32(1000f - 2188f), -1081f))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> bool {
    global2 = !vec3<bool>(true, false, global2.x);
    var var_0 = !(!select(global2.zx, select(select(vec2<bool>(global2.x, true), global2.zx, false), !vec2<bool>(global2.x, global2.x), !global2.yy), global2.zz));
    var var_1 = global0.a;
    let var_2 = func_2(func_2(arg_0, arg_3), arg_0);
    global1 = array<vec2<i32>, 8>();
    return any(!vec3<bool>(select(false, false, var_0.x), 440f < var_2.a.d.x, !var_0.x)) | (_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1155f))) > _wgslsmith_f_op_f32(ceil(var_2.a.d.x)));
}

fn func_5(arg_0: f32, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    var var_0 = global0.b;
    var_0 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-var_0.c.x, 27995i, -1i), func_2(func_2(Struct_2(global0.a, Struct_1(var_0.a, var_0.b, var_0.c, vec4<f32>(arg_3.d.x, -859f, -1507f, -1314f))), func_2(Struct_2(arg_3, Struct_1(-1i, var_0.b, arg_3.c, vec4<f32>(-531f, 343f, 788f, 615f))), Struct_2(arg_3, global0.b))), func_2(Struct_2(Struct_1(-1i, var_0.b, global0.b.c, global0.a.d), Struct_1(-21314i, var_0.b, arg_3.c, var_0.d)), Struct_2(global0.a, global0.b))).a.c.yzx), countOneBits(countOneBits(firstLeadingBit(vec2<u32>(4294967295u, var_0.b.x)))), arg_3.c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, global0.a.d.x, global0.a.d.x, global0.b.d.x)) * _wgslsmith_f_op_vec4_f32(-arg_3.d)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(var_0.d.x, global0.a.d.x)), _wgslsmith_f_op_f32(max(756f, arg_3.d.x)), _wgslsmith_f_op_f32(arg_0 - var_0.d.x), _wgslsmith_f_op_f32(arg_0 - arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.d))), !vec4<bool>(global2.x, arg_3.d.x < arg_0, arg_1.x, !global2.x))));
    let var_1 = Struct_2(func_2(func_2(Struct_2(arg_3, func_2(Struct_2(Struct_1(var_0.a, vec2<u32>(56034u, arg_3.b.x), global0.a.c, vec4<f32>(global0.a.d.x, -895f, -166f, -1000f)), Struct_1(1i, arg_3.b, vec4<i32>(var_0.a, 1i, global0.a.c.x, -14441i), arg_3.d)), Struct_2(Struct_1(u_input.a.x, var_0.b, vec4<i32>(-2147483647i, global0.a.c.x, u_input.a.x, global0.a.c.x), var_0.d), Struct_1(0i, vec2<u32>(global0.b.b.x, 4294967295u), global0.a.c, arg_3.d))).a), Struct_2(Struct_1(-1i, arg_3.b, vec4<i32>(47318i, arg_3.a, arg_3.c.x, var_0.c.x), var_0.d), arg_3)), func_2(func_2(Struct_2(Struct_1(u_input.a.x, vec2<u32>(var_0.b.x, arg_3.b.x), arg_3.c, vec4<f32>(arg_3.d.x, -2046f, arg_0, arg_2)), global0.b), func_2(Struct_2(Struct_1(arg_3.c.x, vec2<u32>(17702u, arg_3.b.x), vec4<i32>(1i, 1638i, -90738i, 1i), var_0.d), arg_3), Struct_2(arg_3, global0.a))), Struct_2(Struct_1(u_input.a.x, arg_3.b, vec4<i32>(-33973i, u_input.a.x, 14503i, -1i), arg_3.d), func_2(Struct_2(Struct_1(global0.a.a, vec2<u32>(var_0.b.x, 4294967295u), vec4<i32>(1i, arg_3.a, 1i, u_input.a.x), vec4<f32>(-223f, arg_0, arg_3.d.x, global0.a.d.x)), Struct_1(-2147483647i, vec2<u32>(arg_3.b.x, arg_3.b.x), vec4<i32>(u_input.a.x, u_input.b, var_0.a, -43777i), vec4<f32>(-412f, -643f, 293f, arg_0))), Struct_2(global0.a, global0.b)).a))).a, func_2(Struct_2(arg_3, func_2(func_2(Struct_2(Struct_1(u_input.a.x, global0.a.b, arg_3.c, vec4<f32>(arg_0, -255f, 143f, 737f)), Struct_1(var_0.a, arg_3.b, vec4<i32>(-12715i, 0i, -14555i, arg_3.c.x), vec4<f32>(-119f, -2311f, arg_2, 609f))), Struct_2(arg_3, arg_3)), func_2(Struct_2(arg_3, arg_3), Struct_2(Struct_1(var_0.a, vec2<u32>(global0.b.b.x, 2797u), global0.a.c, vec4<f32>(arg_2, -1568f, -1969f, global0.b.d.x)), global0.a))).a), Struct_2(arg_3, func_2(func_2(Struct_2(Struct_1(1i, vec2<u32>(41038u, 1u), vec4<i32>(-1i, global0.a.c.x, u_input.a.x, var_0.a), var_0.d), Struct_1(16590i, global0.a.b, vec4<i32>(-1i, var_0.a, 26313i, -17051i), arg_3.d)), Struct_2(arg_3, Struct_1(u_input.a.x, var_0.b, vec4<i32>(689i, u_input.b, u_input.a.x, -14564i), vec4<f32>(747f, 2139f, -907f, -106f)))), func_2(Struct_2(Struct_1(global0.b.c.x, var_0.b, vec4<i32>(48110i, var_0.a, arg_3.a, -17639i), global0.b.d), global0.b), Struct_2(arg_3, global0.b))).b)).a);
    let var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(-func_2(Struct_2(Struct_1(12636i, arg_3.b, vec4<i32>(u_input.a.x, var_0.a, var_1.b.c.x, 1i), vec4<f32>(-100f, 615f, var_0.d.x, -375f)), Struct_1(0i, vec2<u32>(0u, var_0.b.x), vec4<i32>(u_input.a.x, -1200i, u_input.b, var_0.c.x), vec4<f32>(var_0.d.x, arg_3.d.x, 997f, 2124f))), Struct_2(global0.a, arg_3)).b.c.xwy, arg_3.c.yxw), vec2<u32>(~27647u, var_0.b.x), arg_3.c, vec4<f32>(-508f, arg_2, -1000f, global0.b.d.x)), func_2(var_1, Struct_2(func_2(var_1, var_1).a, Struct_1(u_input.a.x, abs(vec2<u32>(4294967295u, var_0.b.x)), vec4<i32>(u_input.a.x, -17981i, 20319i, global0.b.c.x) | arg_3.c, global0.b.d))).b);
    global0 = Struct_2(func_2(func_2(var_2, func_2(Struct_2(Struct_1(u_input.b, arg_3.b, global0.a.c, vec4<f32>(var_2.a.d.x, arg_0, 760f, -656f)), global0.b), var_2)), Struct_2(func_2(func_2(var_2, var_1), var_1).a, var_2.a)).b, global0.b);
    return func_2(Struct_2(func_2(Struct_2(Struct_1(arg_3.a, vec2<u32>(4294967295u, var_1.b.b.x), vec4<i32>(0i, -2147483647i, -1i, 1785i), var_2.b.d), var_1.b), func_2(var_1, var_1)).a, Struct_1(firstTrailingBit(var_2.a.c.x), vec2<u32>(~var_0.b.x, 4294967295u), var_0.c & _wgslsmith_div_vec4_i32(vec4<i32>(-42301i, global0.a.c.x, var_0.a, var_0.c.x), var_1.b.c), _wgslsmith_f_op_vec4_f32(arg_3.d + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.b.d.x, 1009f, -278f, 324f)))))), Struct_2(global0.b, func_2(Struct_2(Struct_1(-1208i, vec2<u32>(0u, 28659u), var_2.a.c, var_1.a.d), Struct_1(-24674i, global0.a.b, global0.b.c, vec4<f32>(-1011f, -546f, arg_3.d.x, 217f))), Struct_2(var_1.a, func_2(var_2, Struct_2(Struct_1(u_input.a.x, vec2<u32>(arg_3.b.x, 26737u), vec4<i32>(43017i, 0i, var_1.a.c.x, arg_3.c.x), vec4<f32>(arg_2, arg_2, arg_3.d.x, 1000f)), Struct_1(global0.b.c.x, vec2<u32>(4294967295u, var_1.a.b.x), vec4<i32>(var_2.a.c.x, arg_3.a, -1i, -1i), global0.b.d))).a)).b));
}

fn func_1() -> bool {
    global0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.d.x) + global0.a.d.x) + global0.a.d.x), select(vec3<bool>(false, (0i >> (global0.b.b.x % 32u)) > -2147483647i, true), vec3<bool>(abs(global0.b.a) == u_input.a.x, any(vec3<bool>(global2.x, global2.x, false)), !(global0.a.d.x > 1000f)), true & func_4(func_2(Struct_2(global0.a, global0.a), Struct_2(global0.a, Struct_1(1i, global0.a.b, global0.a.c, vec4<f32>(973f, -1000f, -456f, 1000f)))), 48101u, _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_2(Struct_2(global0.b, Struct_1(2147483647i, global0.b.b, global0.a.c, global0.a.d)), Struct_2(Struct_1(3970i, global0.a.b, global0.a.c, vec4<f32>(global0.b.d.x, -641f, -2336f, -2415f)), Struct_1(u_input.b, global0.a.b, vec4<i32>(4403i, u_input.b, u_input.b, 47294i), vec4<f32>(646f, -693f, global0.b.d.x, global0.b.d.x)))))), _wgslsmith_f_op_f32(global0.a.d.x - _wgslsmith_f_op_f32(1f + global0.b.d.x)), func_2(func_2(func_2(func_2(Struct_2(global0.b, Struct_1(u_input.a.x, vec2<u32>(0u, global0.a.b.x), global0.b.c, vec4<f32>(global0.b.d.x, -933f, global0.b.d.x, global0.a.d.x))), Struct_2(global0.b, global0.a)), Struct_2(Struct_1(global0.b.a, global0.b.b, vec4<i32>(global0.a.a, u_input.b, u_input.b, 1i), vec4<f32>(-529f, 541f, global0.b.d.x, -1618f)), global0.a)), func_2(Struct_2(Struct_1(u_input.b, global0.b.b, vec4<i32>(u_input.b, -16722i, 2147483647i, -2147483647i), global0.a.d), global0.b), func_2(Struct_2(Struct_1(-25678i, global0.b.b, global0.a.c, vec4<f32>(758f, 383f, global0.b.d.x, 1048f)), global0.b), Struct_2(Struct_1(1i, vec2<u32>(global0.a.b.x, global0.b.b.x), global0.b.c, vec4<f32>(-1063f, global0.a.d.x, 178f, global0.a.d.x)), global0.b)))), Struct_2(global0.a, global0.b)).a);
    let var_0 = global0.a.d;
    var var_1 = global0.a;
    var var_2 = func_2(Struct_2(func_5(_wgslsmith_f_op_f32(f32(-1f) * -855f), !(!vec3<bool>(global2.x, false, true)), 1f, Struct_1(~2147483647i, ~vec2<u32>(0u, 1u), vec4<i32>(-12481i, u_input.a.x, -27432i, global0.a.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(412f, var_1.d.x, 1830f, global0.b.d.x)))).a, global0.a), func_5(-1000f, select(vec3<bool>(7551u > var_1.b.x, var_1.c.x >= -51081i, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, global2.x), select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(true, true, true), vec3<bool>(global2.x, true, true))), vec3<bool>(false, select(true, global2.x, true), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.b.d.x), _wgslsmith_f_op_f32(sign(var_1.d.x)))) * _wgslsmith_f_op_f32(exp2(var_1.d.x))), global0.b)).a;
    var_1 = Struct_1(countOneBits(var_2.c.x >> (27867u % 32u)), ~vec2<u32>(1u, firstTrailingBit(~global0.a.b.x)), global0.b.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1017f, _wgslsmith_f_op_f32(f32(-1f) * -1073f), 1277f, _wgslsmith_f_op_f32(sign(var_2.d.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, -1362f, 397f, -830f), global0.a.d))))));
    return !all(select(select(vec4<bool>(global2.x, false, true, false), select(vec4<bool>(global2.x, false, global2.x, global2.x), vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(global2.x, global2.x, global2.x, global2.x)), false || global2.x), select(!vec4<bool>(global2.x, global2.x, global2.x, global2.x), !vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(global2.x, global2.x, true, false)), !select(global2.x, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(select(!vec3<bool>(any(vec3<bool>(true, global2.x, true)), true, !global2.x), vec3<bool>(false, func_1(), select(global2.x & false, true, true)), false), !select(vec3<bool>(global2.x, func_1(), 257f >= global0.b.d.x), select(!vec3<bool>(global2.x, true, true), !vec3<bool>(false, global2.x, global2.x), !vec3<bool>(global2.x, global2.x, true)), select(!vec3<bool>(global2.x, true, global2.x), select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(false, global2.x, global2.x), global2.x), global2.x)), min(_wgslsmith_div_u32(global0.a.b.x & global0.a.b.x, abs(global0.a.b.x)), 37488u) <= global0.a.b.x);
    let var_0 = _wgslsmith_div_u32(global0.b.b.x, firstTrailingBit(global0.a.b.x)) >= ~14902u;
    let var_1 = 652f;
    var var_2 = 0u;
    global1 = array<vec2<i32>, 8>();
    var var_3 = Struct_2(Struct_1(global0.b.a, vec2<u32>(13041u, 752u) & _wgslsmith_add_vec2_u32(~vec2<u32>(global0.a.b.x, global0.a.b.x), reverseBits(vec2<u32>(global0.a.b.x, global0.b.b.x))), global0.b.c, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, global0.a.d.x)), _wgslsmith_f_op_f32(-global0.a.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_div_f32(1403f, 1030f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1417f * global0.a.d.x) + _wgslsmith_f_op_f32(-global0.b.d.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global0.b.d.x)))))), func_2(Struct_2(global0.b, global0.a), func_2(func_2(func_5(-2316f, vec3<bool>(true, var_0, false), -657f, global0.b), func_5(var_1, vec3<bool>(global2.x, false, false), 363f, global0.a)), Struct_2(global0.a, func_2(Struct_2(Struct_1(42499i, vec2<u32>(global0.b.b.x, 0u), vec4<i32>(-2147483647i, u_input.a.x, u_input.b, global0.a.c.x), vec4<f32>(-111f, global0.a.d.x, -856f, 563f)), global0.a), Struct_2(Struct_1(global0.a.c.x, global0.a.b, global0.b.c, vec4<f32>(1350f, global0.a.d.x, var_1, global0.a.d.x)), global0.a)).a))).a);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(global0.b.b.x, _wgslsmith_mod_u32(var_3.b.b.x, max(global0.b.b.x, 1u)), ~(global0.b.b.x & 4294967295u)), 12974i);
}

