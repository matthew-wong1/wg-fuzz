struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(1339f, vec3<f32>(1573f, -1910f, 895f)), Struct_1(-473f, vec3<f32>(519f, -214f, 822f)), vec3<i32>(-15171i, 1i, -1i), -1025f, true);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<i32>) -> f32 {
    let var_0 = abs(select(~vec4<i32>(arg_2.x, arg_2.x, 2147483647i, -1i), min(vec4<i32>(15490i, -27186i, -972i, global0.c.x) | vec4<i32>(2147483647i, global0.c.x, 2147483647i, 1i), vec4<i32>(29193i, -2147483647i, -14659i, 27952i) >> (vec4<u32>(1u, 4294967295u, u_input.c.x, u_input.b) % vec4<u32>(32u))), select(global0.e, true, true) & false)) >> (vec4<u32>(0u, 37093u, _wgslsmith_mult_u32((38326u | u_input.c.x) >> ((4294967295u | u_input.a.x) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.b, u_input.b, u_input.a.x), vec4<u32>(19627u, u_input.c.x, 16637u, 5296u))), 24482u) % vec4<u32>(32u));
    var var_1 = global0.a;
    var var_2 = Struct_2(arg_1, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_1.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b) - vec3<f32>(global0.d, 1042f, 264f))), firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-7940i, 0i, var_0.x), global0.c)), 1615f, global0.e);
    var_2 = Struct_2(var_2.a, global0.b, _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -1i, 19924i), ~select(vec3<i32>(4739i, arg_0.x, arg_0.x) >> (vec3<u32>(u_input.b, u_input.a.x, u_input.c.x) % vec3<u32>(32u)), vec3<i32>(0i, global0.c.x, arg_2.x), select(vec3<bool>(false, false, global0.e), vec3<bool>(true, false, var_2.e), vec3<bool>(false, false, true)))), _wgslsmith_f_op_f32(999f * var_1.b.x), true);
    var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1030f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d, arg_1.a, -581f) * _wgslsmith_f_op_vec3_f32(var_2.a.b + vec3<f32>(985f, arg_1.a, 150f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.b.b.x, var_1.a, global0.b.b.x))))), select(vec3<bool>(false, var_2.e, global0.e), select(vec3<bool>(global0.e, true, global0.e), vec3<bool>(false, false, false), vec3<bool>(true, global0.e, true)), true)))), arg_1, vec3<i32>(_wgslsmith_sub_i32(max(arg_2.x, global0.c.x), global0.c.x), var_0.x, ~arg_0.x) & vec3<i32>(1i, -14794i, arg_0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.b.x)), var_1.a))), true);
    return _wgslsmith_f_op_f32(select(101f, var_2.a.a, true));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.d, -604f)), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<i32>(global0.c.x, -1i, global0.c.x) ^ global0.c, global0.b, global0.c)))));
    let var_1 = ~(~(-15101i));
    var var_2 = !select(!(!(!vec3<bool>(true, global0.e, global0.e))), select(select(vec3<bool>(global0.e, false, true), vec3<bool>(global0.e, global0.e, true), vec3<bool>(global0.e, false, global0.e)), vec3<bool>(true, global0.e, any(vec2<bool>(true, false))), true), false);
    var_2 = !select(!(!vec3<bool>(var_2.x, var_2.x, false)), !select(!vec3<bool>(false, global0.e, true), vec3<bool>(var_2.x, false, false), select(vec3<bool>(var_2.x, true, global0.e), vec3<bool>(var_2.x, false, global0.e), true)), vec3<bool>(var_2.x, !var_2.x == (var_2.x & true), abs(u_input.b) > _wgslsmith_dot_vec2_u32(u_input.a.yw, u_input.c.xx)));
    var var_3 = 1u;
    return global0.a;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: f32) -> Struct_1 {
    global0 = Struct_2(global0.b, global0.b, firstTrailingBit(vec3<i32>(~(-1i), -9415i, arg_1.c.x >> (u_input.b % 32u)) ^ global0.c), _wgslsmith_f_op_f32(-776f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.d, _wgslsmith_f_op_f32(ceil(777f))))), false);
    let var_0 = global0.b;
    global0 = Struct_2(global0.a, Struct_1(925f, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(global0.b.b + arg_2.zwx)))), abs(~(-(vec3<i32>(2147483647i, 45400i, arg_0.x) & arg_1.c))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - -688f)))), -1348f)), false);
    var var_1 = ~arg_0.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(round(1069f)), -342f)));
    return arg_1.b;
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.b.a - global0.a.b.x), _wgslsmith_f_op_f32(floor(global0.b.b.x)), global0.d <= 250f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -101f))), global0.a.b), arg_0.a, _wgslsmith_mod_vec3_i32(select(~arg_0.c, -min(vec3<i32>(arg_0.c.x, 1i, -21219i), vec3<i32>(3806i, arg_0.c.x, -1i)), true), reverseBits(vec3<i32>(1i, min(1i, global0.c.x), 1i >> (1u % 32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-701f))), all(vec3<bool>(global0.e, true & any(vec4<bool>(false, arg_0.e, arg_0.e, arg_0.e)), false)));
    global0 = arg_0;
    global0 = arg_0;
    global0 = Struct_2(func_2(_wgslsmith_div_f32(arg_0.d, -107f)), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.a.b - _wgslsmith_f_op_vec3_f32(-arg_0.b.b)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.a.b + global0.b.b)))), ~min(abs(reverseBits(vec3<i32>(global0.c.x, arg_0.c.x, 1i))), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(arg_0.c, vec3<i32>(-56594i, 0i, global0.c.x)), arg_0.c << (u_input.a.zyx % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b.x)), true);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a * _wgslsmith_f_op_f32(-arg_0.b.b.x)));
    return Struct_2(func_4(global0.c.xz, arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-735f, global0.d, var_0, arg_0.d)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-489f, global0.a.a, -734f, 311f) + vec4<f32>(global0.d, arg_0.a.b.x, global0.b.a, arg_0.b.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d * -474f)))), global0.a, max(arg_0.c, ~(-arg_0.c)), arg_0.b.b.x, true);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<bool>) -> Struct_2 {
    global0 = func_5(Struct_2(global0.a, func_4(_wgslsmith_mult_vec2_i32(abs(global0.c.yz), global0.c.zz), Struct_2(func_2(global0.a.a), global0.b, ~vec3<i32>(0i, 1i, 0i), 1439f, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(-149f, global0.d, global0.a.b.x, -1340f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.b.x, global0.d, global0.d, 1340f), vec4<f32>(1666f, 1353f, 481f, global0.b.b.x), true))), _wgslsmith_div_f32(func_2(global0.b.a).a, 868f)), vec3<i32>(_wgslsmith_div_i32(~global0.c.x, ~global0.c.x), global0.c.x, 3278i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.d))), global0.e));
    var var_0 = global0.c;
    let var_1 = Struct_2(global0.b, func_5(Struct_2(Struct_1(_wgslsmith_f_op_f32(340f - global0.a.a), global0.b.b), Struct_1(_wgslsmith_f_op_f32(global0.a.b.x - global0.b.b.x), global0.a.b), _wgslsmith_mult_vec3_i32(select(global0.c, global0.c, true), vec3<i32>(-36257i, global0.c.x, var_0.x) << (vec3<u32>(5228u, arg_0.x, u_input.b) % vec3<u32>(32u))), -399f, select(!arg_1.x, true, true))).b, vec3<i32>(_wgslsmith_sub_i32(var_0.x & _wgslsmith_div_i32(-49731i, global0.c.x), i32(-1i) * -2147483647i), countOneBits(global0.c.x) ^ 0i, -var_0.x << (~(~arg_0.x) % 32u)), _wgslsmith_f_op_f32(func_3(-global0.c, func_2(global0.d), global0.c)), true);
    let var_2 = var_1;
    return func_5(var_1);
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: vec2<f32>, arg_3: vec4<bool>) -> vec4<f32> {
    global0 = func_5(func_5(arg_0));
    global0 = Struct_2(arg_0.a, Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -689f), all(arg_3.xz))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(473f, arg_2.x, 497f)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1258f, arg_0.b.a, -452f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-738f, 979f, arg_2.x)))), select(select(vec3<bool>(false, false, true), arg_3.wwx, false), select(arg_3.xxw, arg_3.zxy, false), vec3<bool>(global0.e, arg_3.x, false))))), -vec3<i32>(i32(-1i) * -1i, -19009i, 2147483647i), -1154f, _wgslsmith_f_op_f32(abs(global0.d)) > _wgslsmith_f_op_f32(global0.d + _wgslsmith_f_op_f32(f32(-1f) * -126f)));
    var var_0 = -abs(vec4<i32>(reverseBits(1i), abs(firstLeadingBit(global0.c.x)), global0.c.x, global0.c.x));
    let var_1 = _wgslsmith_div_vec2_f32(global0.b.b.xz, func_4(arg_0.c.zx, arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(389f, 226f, -246f, arg_2.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(624f, arg_0.b.b.x, arg_0.d, -1484f), vec4<f32>(global0.d, arg_0.a.b.x, arg_2.x, 510f))))), -729f).b.zz);
    var_0 = min(vec4<i32>(firstTrailingBit(global0.c.x), ~_wgslsmith_clamp_i32(2147483647i, -23859i, _wgslsmith_add_i32(var_0.x, arg_0.c.x)), _wgslsmith_sub_i32(_wgslsmith_add_i32(-1i, -2147483647i), -2147483647i), var_0.x | 30483i), vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.zw, vec2<i32>(0i >> (arg_1 % 32u), 2147483647i)), -select(-8790i | arg_0.c.x, _wgslsmith_mod_i32(global0.c.x, -32318i), true), _wgslsmith_add_i32(-arg_0.c.x, _wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_0.c.x, -8257i), arg_0.c.x ^ 28232i)), -1i));
    return vec4<f32>(521f, _wgslsmith_f_op_f32(-424f + _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a.a)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(812f, _wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(round(var_1.x)))), arg_0.e))), 1287f);
}

fn func_7(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<i32>(1i, arg_2.c.x, arg_2.c.x), func_5(arg_2).a, _wgslsmith_div_vec3_i32(vec3<i32>(global0.c.x, -15106i, arg_2.c.x), vec3<i32>(global0.c.x, arg_2.c.x, 0i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), vec3<f32>(-1191f, -1872f, _wgslsmith_f_op_f32(f32(-1f) * -533f)));
    var_0 = arg_2.a;
    var var_1 = _wgslsmith_clamp_vec4_i32(min(vec4<i32>(~(-arg_2.c.x), 0i, ~global0.c.x, 0i), _wgslsmith_sub_vec4_i32(-firstTrailingBit(vec4<i32>(global0.c.x, -2147483647i, -1i, global0.c.x)), -select(vec4<i32>(-30655i, global0.c.x, 10619i, 37044i), vec4<i32>(global0.c.x, -3414i, 0i, -1883i), arg_2.e))), -max(-(~vec4<i32>(arg_2.c.x, -13340i, arg_2.c.x, arg_2.c.x)), ~vec4<i32>(-1i, 2147483647i, arg_2.c.x, global0.c.x) ^ -vec4<i32>(1i, global0.c.x, global0.c.x, -20992i)), firstLeadingBit(vec4<i32>(global0.c.x, ~global0.c.x, arg_2.c.x << (78956u % 32u), max(-2147483647i, arg_2.c.x))) ^ vec4<i32>(-2147483647i, -(arg_2.c.x & -30112i), -12005i, _wgslsmith_dot_vec3_i32(global0.c, arg_2.c)));
    var var_2 = -300f;
    let var_3 = global0.a;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_7(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_6(func_1(u_input.c.zx, vec2<bool>(true, false)), u_input.c.x & 63407u, vec2<f32>(global0.a.b.x, -667f), vec4<bool>(global0.e, false, true, global0.e))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1477f, -1546f, global0.b.a, -839f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-768f, 327f, -653f, -380f)))), vec4<f32>(_wgslsmith_f_op_f32(select(global0.d, global0.d, true)), _wgslsmith_div_f32(global0.d, -1452f), _wgslsmith_f_op_f32(-121f - global0.d), func_1(vec2<u32>(u_input.c.x, 1u), vec2<bool>(global0.e, true)).a.a))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(1134f + 280f), _wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(-332f - global0.d))))), func_1(_wgslsmith_sub_vec2_u32(abs(u_input.a.ww), reverseBits(u_input.c.xz)), !(!select(vec2<bool>(global0.e, global0.e), vec2<bool>(false, false), true))), global0.a.b);
    var var_0 = func_1(firstTrailingBit(~u_input.a.xw), vec2<bool>(true, false)).e;
    let var_1 = Struct_2(func_7(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.b.x, -920f, global0.d, global0.d)), vec4<f32>(global0.d, 1107f, global0.a.b.x, global0.b.b.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.a, global0.a.a, _wgslsmith_f_op_f32(global0.a.b.x + global0.b.a), _wgslsmith_f_op_f32(1000f + -2410f))), func_1(_wgslsmith_clamp_vec2_u32(u_input.a.yw, ~vec2<u32>(30348u, 4294967295u), ~vec2<u32>(u_input.a.x, 90167u)), select(select(vec2<bool>(false, global0.e), vec2<bool>(true, global0.e), false), select(vec2<bool>(global0.e, true), vec2<bool>(false, global0.e), global0.e), !vec2<bool>(true, global0.e))), func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1774f, 1258f) - 1053f)).b).a, Struct_1(func_7(vec4<f32>(-1000f, _wgslsmith_f_op_f32(1000f - global0.d), _wgslsmith_div_f32(-993f, -191f), global0.a.a), _wgslsmith_div_vec4_f32(vec4<f32>(global0.a.b.x, -1000f, global0.a.a, -445f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-390f, -2377f, global0.d, global0.b.b.x) * vec4<f32>(1691f, -1207f, -570f, global0.a.a))), Struct_2(Struct_1(global0.a.a, global0.a.b), Struct_1(global0.d, vec3<f32>(global0.d, global0.b.b.x, global0.b.a)), global0.c, global0.b.b.x, global0.e), global0.a.b).d, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(907f + global0.d)), global0.d, global0.a.b.x)), ~vec3<i32>(reverseBits(-global0.c.x), -15296i, global0.c.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.a.a)) + _wgslsmith_f_op_f32(-1199f + global0.a.a))))), true);
    var var_2 = func_1(min(_wgslsmith_mult_vec2_u32(min(u_input.c.yz, abs(vec2<u32>(u_input.c.x, u_input.a.x))), u_input.a.zy ^ (u_input.c.zz | vec2<u32>(33264u, u_input.b))), select(_wgslsmith_mod_vec2_u32(vec2<u32>(60660u, 58196u) | u_input.a.ww, _wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(45641u, 0u))), abs(~u_input.a.wz), !global0.e)), vec2<bool>(var_1.e, var_1.e));
    let var_3 = var_1;
    var var_4 = var_3.a.b.xy;
    let var_5 = var_2.c.x;
    var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.b.b.zy + _wgslsmith_f_op_vec2_f32(step(global0.a.b.zz, vec2<f32>(global0.a.b.x, var_3.d))))) + var_2.a.b.xy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(876f + global0.b.a), -abs(global0.c.x), vec4<u32>(u_input.c.x, 44131u, 46461u, 28299u), firstLeadingBit(i32(-1i) * -2147483647i), max(-(~vec2<i32>(var_2.c.x, var_3.c.x)), _wgslsmith_add_vec2_i32(vec2<i32>(var_1.c.x, -1i) | vec2<i32>(var_1.c.x, -2147483647i), _wgslsmith_sub_vec2_i32(var_2.c.yy, global0.c.yy))) | vec2<i32>(2147483647i, var_2.c.x));
}

