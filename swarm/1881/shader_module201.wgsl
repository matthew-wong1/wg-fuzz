struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<f32> {
    global0 = Struct_1(-reverseBits(_wgslsmith_mult_vec4_i32(global0.a, global0.a) | ~vec4<i32>(0i, 1i, global0.c, global0.c)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(select(25556u, 4294967295u, true), 59453u, 1u), select(0u, 4294967295u, true) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 37203u)) % 32u)) != ~select(68272u, 4294967295u, any(vec3<bool>(global0.b, global0.b, global0.b))), -firstLeadingBit(_wgslsmith_mult_i32(abs(global0.c), 0i)), _wgslsmith_f_op_vec4_f32(global0.d * global0.d));
    global0 = Struct_1(max(vec4<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(global0.c, global0.c)), global0.a.wx), 2147483647i, global0.c, global0.c), ~global0.a), !(global0.d.x != global0.d.x), -1i, _wgslsmith_f_op_vec4_f32(global0.d * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global0.d - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-202f, global0.d.x, 391f, global0.d.x)))))));
    let var_0 = true;
    return _wgslsmith_div_vec4_f32(global0.d, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)), -1000f, -845f))));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(global0.a, global0.b, -_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(global0.a.x, 0i)), global0.a.zx) ^ global0.c, _wgslsmith_f_op_vec4_f32(func_3()));
    global0 = Struct_1(vec4<i32>(global0.c, ~_wgslsmith_dot_vec2_i32(~global0.a.xw, global0.a.wy), 1i, 2147483647i), all(select(select(vec4<bool>(true, global0.b, false, var_0.b), vec4<bool>(true, false, global0.b, true), true), !vec4<bool>(var_0.b, true, true, global0.b), true)) && !var_0.b, ~abs(-var_0.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -110f), var_0.d.x, 1555f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.d.x, 2727f) * _wgslsmith_f_op_f32(floor(-484f)))) * vec4<f32>(-692f, _wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(-1047f - 566f)), -1118f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global0.d.x)))))));
    var var_1 = Struct_1(~vec4<i32>(~u_input.a, global0.c, -2147483647i, var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.d.x)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) + -291f)), -1i, _wgslsmith_f_op_vec4_f32(-var_0.d));
    global0 = Struct_1(min(~vec4<i32>(reverseBits(u_input.a), global0.c, select(var_0.c, var_1.a.x, var_1.b), -1i & u_input.a), var_0.a ^ countOneBits(abs(vec4<i32>(u_input.a, global0.c, -2147483647i, 2147483647i)))), all(vec3<bool>(var_1.b, global0.b, any(!vec2<bool>(true, var_0.b)))), abs(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0.a.xx & var_0.a.zz, var_0.a.xy, vec2<i32>(var_1.c, -2147483647i)), var_1.a.wy)), vec4<f32>(var_0.d.x, -1000f, _wgslsmith_f_op_f32(floor(449f)), var_1.d.x));
    var var_2 = ~select(vec4<u32>(1u, 1u, 1u, 1u), ~select(~vec4<u32>(58467u, 1u, 27750u, 8488u), ~vec4<u32>(1u, 39975u, 0u, 0u), !var_1.b), vec4<bool>(true, false, any(vec2<bool>(true, var_1.b)), var_1.b));
    return firstTrailingBit(4294967295u);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = max(abs(vec3<u32>(func_2(), _wgslsmith_dot_vec4_u32(~vec4<u32>(35473u, 1u, 0u, 4573u), vec4<u32>(1u, 1u, 1u, 1u)), 1u)), vec3<u32>(abs(1u), ~(~1u), 1u));
    global0 = arg_1;
    global0 = Struct_1(vec4<i32>(~_wgslsmith_add_i32(countOneBits(arg_2.x), _wgslsmith_sub_i32(u_input.a, global0.a.x)), -1i, ~_wgslsmith_dot_vec2_i32(arg_0.zw, arg_0.wy) >> (_wgslsmith_sub_u32(4294967295u, _wgslsmith_mult_u32(4294967295u, 1u)) % 32u), 2147483647i), all(vec2<bool>(arg_1.b, any(select(vec2<bool>(true, true), vec2<bool>(global0.b, global0.b), global0.b)))), -_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(arg_1.a.x, u_input.a), ~(-1i), _wgslsmith_mult_i32(arg_0.x, 2147483647i)), arg_1.a.zyz), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2069f + _wgslsmith_f_op_f32(-404f * 1428f)), _wgslsmith_f_op_f32(min(arg_1.d.x, arg_1.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1480f)) + _wgslsmith_f_op_f32(-arg_1.d.x)) - global0.d.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.d.x + global0.d.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) - arg_1.d.x))));
    let var_1 = arg_1;
    global0 = arg_1;
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(firstTrailingBit(38667u), min(0u, 4294967295u), ~(~1u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(12995u, 1u, 0u), vec3<u32>(1u, 6791u, 1u)) ^ 1u, ~abs(4294967295u), func_2()) >> (countOneBits(~firstLeadingBit(vec3<u32>(4294967295u, 14705u, 0u))) % vec3<u32>(32u)));
    var var_1 = Struct_1(_wgslsmith_sub_vec4_i32(global0.a, -vec4<i32>(9803i, arg_2.c, u_input.a, u_input.a)) & arg_1, true, arg_1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_div_f32(arg_2.d.x, global0.d.x), _wgslsmith_f_op_f32(arg_0.d.x + arg_2.d.x), _wgslsmith_f_op_f32(select(-406f, arg_2.d.x, arg_0.b))))));
    var var_2 = arg_2;
    let var_3 = Struct_1(select(vec4<i32>(-1i, 2147483647i, -1i, 81781i) & ~arg_1, vec4<i32>(max(u_input.a, 2147483647i), arg_0.c, 1i, -var_1.a.x), var_2.b & arg_0.b) & -vec4<i32>(reverseBits(arg_0.c), -1i, min(var_1.a.x, u_input.a), u_input.a & u_input.a), false, i32(-1i) * -1i, var_2.d);
    let var_4 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x);
}

fn func_5(arg_0: f32, arg_1: u32) -> Struct_1 {
    var var_0 = global0.d.yzx;
    var var_1 = func_1(_wgslsmith_mult_vec4_i32(~(~global0.a), abs(global0.a)) << (max(min(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, arg_1, arg_1, arg_1), vec4<u32>(arg_1, 81234u, arg_1, arg_1)), abs(vec4<u32>(arg_1, 14209u, arg_1, arg_1))), ~vec4<u32>(22927u, arg_1, arg_1, 0u)) % vec4<u32>(32u)), func_1(~func_1(~global0.a, Struct_1(vec4<i32>(global0.c, u_input.a, u_input.a, 1i), true, global0.c, global0.d), vec2<i32>(2147483647i, -29823i)).a, Struct_1(vec4<i32>(global0.c, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.c, -2147483647i), global0.a.xw), ~global0.a.x, global0.a.x), -4535i < _wgslsmith_dot_vec2_i32(global0.a.ww, vec2<i32>(u_input.a, u_input.a)), 68311i, vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.d.x)), _wgslsmith_div_f32(global0.d.x, global0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -414f), arg_0)), ~(-vec2<i32>(u_input.a, -2147483647i))), ~global0.a.ww & min(vec2<i32>(_wgslsmith_mult_i32(-11761i, u_input.a), _wgslsmith_mod_i32(global0.c, 1i)), (vec2<i32>(-14782i, u_input.a) | global0.a.zx) ^ global0.a.wz));
    let var_2 = Struct_1(global0.a, true, abs(firstTrailingBit(0i) ^ ~_wgslsmith_clamp_i32(1i, 37674i, 22458i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global0.d)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, -696f, var_0.x), _wgslsmith_f_op_vec4_f32(-var_1.d)))));
    var var_3 = !any(select(select(!vec2<bool>(var_1.b, true), !vec2<bool>(global0.b, var_2.b), vec2<bool>(true, var_2.b)), vec2<bool>(true, true), true));
    let var_4 = var_2;
    return Struct_1(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(global0.c, _wgslsmith_div_i32(var_2.c, 2147483647i), 27928i | var_2.c, 62800i)), var_2.a, vec4<i32>(global0.c, 0i, var_1.a.x ^ _wgslsmith_mod_i32(5515i, 2147483647i), var_1.c)), all(vec3<bool>(global0.b, true, false)), var_1.a.x, _wgslsmith_f_op_vec4_f32(-var_1.d));
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1)))) + -883f);
    var var_1 = _wgslsmith_mod_u32(firstLeadingBit(~arg_3.x), _wgslsmith_div_u32(firstLeadingBit(abs(1u)), arg_3.x));
    global0 = Struct_1(global0.a, false, _wgslsmith_add_i32(1i, global0.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_0.d))));
    let var_2 = firstLeadingBit(vec2<u32>(14250u, arg_3.x));
    return func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)), 20037u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(func_5(_wgslsmith_f_op_f32(func_4(func_1(-vec4<i32>(-66808i, 13010i, 45949i, global0.c), Struct_1(vec4<i32>(-2147483647i, u_input.a, 77334i, global0.a.x), true, u_input.a, global0.d), reverseBits(global0.a.zx)), _wgslsmith_div_vec4_i32(global0.a, global0.a), Struct_1(abs(global0.a), true, select(global0.a.x, global0.a.x, global0.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-160f, global0.d.x, 1536f, 289f))))), 1u), _wgslsmith_f_op_f32(1461f * -624f), ~vec4<i32>(reverseBits(2577i), i32(-1i) * -u_input.a, u_input.a, _wgslsmith_mod_i32(~u_input.a, _wgslsmith_sub_i32(1i, 1i))), _wgslsmith_clamp_vec2_u32(vec2<u32>(~(~1u), abs(select(1u, 4294967295u, global0.b))), ~firstTrailingBit(firstLeadingBit(vec2<u32>(69035u, 4294967295u))), vec2<u32>(1u, 1u)));
    global0 = Struct_1(min(vec4<i32>(-(~17374i), ~global0.c | 1i, 1749i, ~_wgslsmith_mult_i32(global0.c, 2147483647i)), _wgslsmith_mod_vec4_i32(-_wgslsmith_mult_vec4_i32(global0.a, global0.a), select(global0.a ^ vec4<i32>(u_input.a, u_input.a, u_input.a, global0.a.x), vec4<i32>(global0.a.x, global0.c, 239i, 2147483647i), all(vec3<bool>(global0.b, global0.b, false))))), false, _wgslsmith_dot_vec3_i32(firstTrailingBit(firstLeadingBit(func_6(Struct_1(vec4<i32>(2147483647i, u_input.a, 4363i, global0.a.x), global0.b, 35001i, vec4<f32>(global0.d.x, -599f, -1243f, global0.d.x)), global0.d.x, global0.a, vec2<u32>(0u, 60176u)).a.xyz)), _wgslsmith_sub_vec3_i32(vec3<i32>(global0.a.x, u_input.a, 13635i) ^ vec3<i32>(global0.c, u_input.a, -45459i), global0.a.xxz)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.d)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2187f, -464f, -1734f, 269f), vec4<f32>(-779f, global0.d.x, 944f, -2173f))))) + vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.d.x))), 944f, global0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2052f)) + 1224f))));
    let var_0 = u_input.a;
    global0 = Struct_1(vec4<i32>(global0.c, firstTrailingBit(u_input.a), global0.a.x >> (~1u % 32u), global0.a.x << (~reverseBits(0u) % 32u)), global0.b, ~(-37023i), vec4<f32>(global0.d.x, global0.d.x, _wgslsmith_f_op_f32(global0.d.x * _wgslsmith_f_op_f32(-func_6(Struct_1(vec4<i32>(global0.a.x, u_input.a, -56239i, u_input.a), global0.b, 1i, global0.d), global0.d.x, global0.a, vec2<u32>(0u, 42134u)).d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1588f - _wgslsmith_div_f32(-936f, -1761f)))));
    global0 = func_6(Struct_1(_wgslsmith_clamp_vec4_i32(func_5(-917f, 1u).a, -vec4<i32>(global0.a.x, 23130i, var_0, global0.c), vec4<i32>(~(-28054i), 0i, -1i, _wgslsmith_dot_vec4_i32(global0.a, vec4<i32>(global0.a.x, 0i, var_0, global0.c)))), 0i < _wgslsmith_sub_i32(_wgslsmith_add_i32(10645i, 0i), _wgslsmith_sub_i32(u_input.a, -2147483647i)), global0.a.x, global0.d), -269f, func_6(Struct_1(firstTrailingBit(func_6(Struct_1(global0.a, global0.b, -1i, global0.d), -1638f, global0.a, vec2<u32>(0u, 4294967295u)).a), true | global0.b, -u_input.a | (global0.c ^ -13369i), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(global0.d, global0.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -247f), func_1(vec4<i32>(19661i, global0.c, u_input.a, 1i), Struct_1(global0.a, global0.b, 0i, global0.d), global0.a.wz).b))), vec4<i32>(var_0, i32(-1i) * -1i, var_0, reverseBits(var_0 | 25219i)), abs(vec2<u32>(1u, 1u))).a, firstTrailingBit(_wgslsmith_clamp_vec2_u32(~vec2<u32>(3979u, 76394u), ~vec2<u32>(23744u, 1u), vec2<u32>(~38213u, _wgslsmith_dot_vec3_u32(vec3<u32>(27215u, 0u, 4294967295u), vec3<u32>(0u, 4294967295u, 4971u))))));
    global0 = Struct_1(select(vec4<i32>(u_input.a, abs(-2633i), firstLeadingBit(u_input.a), 0i), global0.a, select(vec4<bool>(true, global0.d.x >= -248f, global0.b, any(vec2<bool>(global0.b, true))), select(!vec4<bool>(true, false, global0.b, true), !vec4<bool>(global0.b, global0.b, true, true), true), vec4<bool>(global0.b, func_1(global0.a, Struct_1(vec4<i32>(var_0, -40134i, global0.c, -2147483647i), true, u_input.a, global0.d), global0.a.xy).b, true, false == global0.b))), true, ~(-1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, _wgslsmith_f_op_f32(-1583f * 390f), 1000f, global0.d.x))));
    global0 = func_1(vec4<i32>(_wgslsmith_add_i32(global0.a.x, firstLeadingBit(2147483647i)), func_5(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_div_u32(52230u, 1u)).c, select(u_input.a, ~u_input.a, global0.b), _wgslsmith_sub_i32(0i, _wgslsmith_add_i32(-18348i, u_input.a))) ^ global0.a, Struct_1(global0.a, all(vec3<bool>(true, true, true)), global0.a.x, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-func_6(Struct_1(vec4<i32>(-2147483647i, u_input.a, -4906i, 41096i), global0.b, 6617i, vec4<f32>(global0.d.x, -671f, -1466f, 131f)), global0.d.x, vec4<i32>(-62029i, global0.c, 2147483647i, u_input.a), vec2<u32>(101052u, 23843u)).d), global0.d))), select(-global0.a.wx, global0.a.wx, select(select(vec2<bool>(true, true), vec2<bool>(true, true), var_0 != global0.c), vec2<bool>(true, true), select(global0.b, true, true))));
    var var_1 = func_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -744f))), min(1u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(-1613f, ~(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.a), var_1.a.xxw) & vec3<i32>(global0.c, var_0, var_1.c)) | vec3<i32>(var_0, _wgslsmith_div_i32(1i, _wgslsmith_div_i32(2147483647i, var_0)), ~21227i), reverseBits(global0.c), var_1.d.x);
}

