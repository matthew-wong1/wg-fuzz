struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<bool>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: vec3<bool>, arg_3: i32) -> vec3<bool> {
    let var_0 = all(vec2<bool>(true, all(select(arg_0, select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), true))));
    let var_1 = !(~(~1u >> (_wgslsmith_sub_u32(11536u, u_input.c) % 32u)) != _wgslsmith_dot_vec2_u32(~min(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.c, u_input.a)), abs(countOneBits(vec2<u32>(1u, u_input.c)))));
    let var_2 = vec2<bool>(min(min(1u, u_input.a), u_input.a) != u_input.c, !arg_0.x);
    let var_3 = select(!select(arg_2, !arg_2, !select(vec3<bool>(false, false, true), vec3<bool>(var_1, false, true), false)), !arg_0, all(select(select(!arg_0, select(arg_0, vec3<bool>(var_2.x, arg_0.x, var_2.x), true), true), vec3<bool>(true | arg_0.x, true, true), vec3<bool>(true, arg_2.x, true))));
    var var_4 = Struct_1(vec4<i32>(arg_1, u_input.b, -46277i, arg_1), any(vec3<bool>(!var_1, u_input.b == arg_1, !arg_0.x)) || arg_2.x, select(var_3.zy, arg_2.xz, select(!arg_2.zx, arg_2.zy, false)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(362f, 495f, -587f), vec3<f32>(504f, 574f, -551f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(281f, -702f, -848f)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(505f, 148f, 183f), vec3<f32>(-692f, 311f, 2263f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2130f, 382f, 366f))))), !(var_2.x | !(var_3.x | true)));
    return arg_2;
}

fn func_4(arg_0: vec3<bool>, arg_1: i32) -> u32 {
    let var_0 = select(vec3<i32>(~abs(min(u_input.b, u_input.b)), -4942i, _wgslsmith_add_i32(u_input.b, _wgslsmith_mult_i32(countOneBits(23677i), -arg_1))), abs(vec3<i32>(abs(-28725i), 1i, u_input.b)), vec3<bool>(select(!all(vec3<bool>(true, false, false)), !arg_0.x, !arg_0.x | (false && arg_0.x)), true, true));
    let var_1 = i32(-1i) * -2147483647i;
    return u_input.c;
}

fn func_2(arg_0: i32, arg_1: bool) -> vec2<u32> {
    var var_0 = select(~max(~select(vec4<u32>(u_input.a, 0u, 14569u, 34457u), vec4<u32>(0u, u_input.c, 1u, 11782u), false), vec4<u32>(1u, 4294967295u ^ u_input.a, ~u_input.a, u_input.c)), vec4<u32>(func_4(!func_3(vec3<bool>(true, arg_1, arg_1), -33930i, vec3<bool>(arg_1, arg_1, arg_1), u_input.b), 0i), abs(max(func_4(vec3<bool>(false, true, arg_1), -1988i), ~4294967295u)), 28662u, (~u_input.c | 57449u) & ~0u), select(vec4<bool>(true, !arg_1, arg_1, true), !(!vec4<bool>(true, arg_1, arg_1, arg_1)), vec4<bool>(arg_1, select(true, all(vec3<bool>(arg_1, arg_1, false)), true), 53020u <= (u_input.a & u_input.c), false)));
    var_0 = vec4<u32>(1u, 61407u, 12452u, _wgslsmith_add_u32(~u_input.c, ~_wgslsmith_mult_u32(u_input.a, min(4294967295u, var_0.x))));
    var var_1 = ~(~(~abs(min(vec3<i32>(0i, u_input.b, u_input.b), vec3<i32>(-14805i, 2147483647i, u_input.b)))));
    let var_2 = Struct_2(_wgslsmith_div_u32(_wgslsmith_clamp_u32(~u_input.a | ~var_0.x, var_0.x, ~28340u | _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 1u, 1u, var_0.x), vec4<u32>(var_0.x, 46687u, 4294967295u, var_0.x))), 4294967295u), Struct_1(select(vec4<i32>(-1i) * -vec4<i32>(0i, 1i, 19381i, var_1.x), vec4<i32>(~2147483647i, 84703i, 1i, select(-10619i, 24260i, true)), vec4<bool>(any(vec3<bool>(false, false, arg_1)), arg_1, arg_1, !arg_1)), !(!all(vec4<bool>(arg_1, true, false, false))), !(!(!vec2<bool>(arg_1, false))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(888f + -989f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(384f)))), arg_1), select(vec4<bool>(arg_1, any(select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(arg_1, arg_1, arg_1), false)), true, any(vec2<bool>(arg_1, true)) == true), vec4<bool>(func_3(!vec3<bool>(true, false, arg_1), u_input.b, vec3<bool>(false, arg_1, arg_1), -var_1.x).x, true, -45960i != countOneBits(var_1.x), arg_1), !arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1375f, 1652f))))))), ~(select(abs(vec4<u32>(var_0.x, var_0.x, u_input.a, u_input.c)), vec4<u32>(1u, u_input.c, u_input.a, 1u) << (vec4<u32>(u_input.c, 4294967295u, 1u, var_0.x) % vec4<u32>(32u)), true) >> (abs(~vec4<u32>(var_0.x, var_0.x, 28099u, u_input.c)) % vec4<u32>(32u))));
    var var_3 = Struct_2(16675u, Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, _wgslsmith_dot_vec4_i32(var_2.b.a, vec4<i32>(52775i, u_input.b, u_input.b, 3948i)), 54634i), vec4<i32>(abs(arg_0), 2147483647i, -var_2.b.a.x, arg_0), -firstLeadingBit(vec4<i32>(-22912i, arg_0, 2147483647i, arg_0))), var_2.c.x, select(var_2.c.ww, var_2.b.c, vec2<bool>(true, true)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d * var_2.d) - -1073f), 964f, -244f), all(var_2.c.zw)), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -501f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d * -329f)), !func_3(var_2.c.wyx, ~23991i, var_2.c.wyx, _wgslsmith_mult_i32(var_1.x, 1i)).x, all(var_2.c.zwy), true), 261f, vec4<u32>(_wgslsmith_sub_u32(~1u, ~var_0.x), 1u, var_2.e.x, 18232u));
    return ~_wgslsmith_sub_vec2_u32(var_2.e.yz, _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 62903u), var_3.e.wy), var_2.e.ww));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: vec2<u32>) -> vec2<u32> {
    return _wgslsmith_mod_vec2_u32(~select(func_2(_wgslsmith_add_i32(arg_1.x, -639i), any(vec4<bool>(false, true, true, false))), arg_2, vec2<bool>(any(vec2<bool>(true, false)), false)), ~vec2<u32>(0u, _wgslsmith_mod_u32(22933u, 1u)));
}

fn func_5(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<u32>, arg_3: bool) -> vec3<f32> {
    var var_0 = Struct_1(vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-1501i, -35378i), vec2<i32>(u_input.b, 0i)) << (~arg_1 % 32u), _wgslsmith_div_i32(_wgslsmith_sub_i32(~(-2147483647i), ~u_input.b), firstTrailingBit(countOneBits(0i))), u_input.b, -2147483647i), arg_3, vec2<bool>(true, arg_3), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f))), false);
    var_0 = Struct_1(var_0.a, select(any(vec4<bool>(arg_3, any(vec4<bool>(false, var_0.c.x, arg_3, false)), !arg_3, arg_3)), any(vec2<bool>(any(vec4<bool>(true, false, arg_3, false)), true)), var_0.c.x), !(!vec2<bool>(false && var_0.c.x, arg_3)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_0.d, vec3<f32>(182f, var_0.d.x, -1410f))) + vec3<f32>(var_0.d.x, 146f, var_0.d.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.d.x, var_0.d.x, 936f), _wgslsmith_f_op_vec3_f32(max(var_0.d, vec3<f32>(var_0.d.x, -973f, var_0.d.x))), true))))), !(!any(var_0.c)));
    var var_1 = abs(~(~4294967295u & ~arg_0.x) >> (arg_2.x % 32u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(835f - -479f)))))));
    var var_3 = Struct_1(select(~(~vec4<i32>(u_input.b, var_0.a.x, -34323i, -9770i)), select(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(var_0.a, var_0.a), vec4<i32>(var_0.a.x, 2147483647i, var_0.a.x, u_input.b)), -select(var_0.a, vec4<i32>(-30727i, 30047i, 13583i, -16837i), vec4<bool>(var_0.b, arg_3, arg_3, true)), all(vec4<bool>(arg_3, arg_3, false, arg_3))), select(vec4<bool>(494f < var_0.d.x, var_0.d.x <= 606f, any(vec3<bool>(var_0.e, true, false)), true), !(!vec4<bool>(false, arg_3, var_0.c.x, false)), var_0.b)), !arg_3, vec2<bool>(arg_3, true), vec3<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(518f * _wgslsmith_f_op_f32(round(968f))) * var_0.d.x), _wgslsmith_div_f32(var_0.d.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.d.x - -2462f))))), var_0.b);
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(var_3.d.x, _wgslsmith_f_op_f32(-var_0.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x * var_0.d.x) - 564f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.d.x, _wgslsmith_f_op_f32(var_3.d.x + -157f), _wgslsmith_f_op_f32(max(var_0.d.x, -1221f)))), var_0.e)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_0.d))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d) - var_3.d))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1038f, -1059f, 539f)))), vec3<f32>(-191f, _wgslsmith_f_op_f32(round(1f)), -1301f)) * _wgslsmith_f_op_vec3_f32(func_5(func_1(max(~vec4<i32>(u_input.b, 0i, u_input.b, 17183i), -vec4<i32>(u_input.b, u_input.b, u_input.b, -1i)), reverseBits(abs(vec2<i32>(u_input.b, u_input.b))), ~(vec2<u32>(86715u, 69781u) | vec2<u32>(u_input.a, u_input.a))), u_input.c, ~(~abs(vec3<u32>(u_input.a, 4294967295u, 45055u))), any(vec4<bool>(true, true, true, true)))));
    let var_1 = vec2<i32>(~firstLeadingBit(1i), ~_wgslsmith_mod_i32(abs(u_input.b), u_input.b));
    var var_2 = _wgslsmith_f_op_f32(599f + 212f);
    var var_3 = Struct_2(func_1(abs(vec4<i32>(u_input.b, -1i, u_input.b, var_1.x)) & _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 38794i, var_1.x, var_1.x), vec4<i32>(-1i, var_1.x, -1i, u_input.b)), _wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(-56736i, u_input.b)), firstTrailingBit(vec2<i32>(u_input.b, -1i))), ~vec2<u32>(50758u, 1u) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))).x << (1u % 32u), Struct_1(reverseBits(vec4<i32>(2147483647i, -2147483647i, -19109i << (u_input.a % 32u), 0i)), any(vec4<bool>(all(vec3<bool>(false, true, false)), true, true, true)), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_0 - var_0), var_0)) * vec3<f32>(-818f, _wgslsmith_f_op_vec3_f32(func_5(vec2<u32>(1u, u_input.a), 4294967295u, vec3<u32>(u_input.c, u_input.c, u_input.c), true)).x, -401f)), !(true == any(vec4<bool>(false, true, false, true)))), vec4<bool>(false, true, any(vec2<bool>(true, var_0.x >= -591f)), u_input.b > -1i), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-114f + var_0.x), _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(f32(-1f) * -647f)), ~vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.c, 0u), vec4<u32>(8773u, u_input.a, 8658u, u_input.a)), 0u, 3044u, u_input.c));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(var_0.x * 2125f), _wgslsmith_div_f32(var_3.b.d.x, 1176f), -1000f, _wgslsmith_f_op_f32(-228f + var_0.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1876f, 109f, var_3.b.d.x, -1111f), vec4<f32>(-2173f, var_3.d, -444f, var_3.b.d.x))), vec4<f32>(-1396f, var_3.d, var_3.d, -178f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-339f, -1786f, 788f, var_3.d))))));
    var_2 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_4, vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(var_3.b.a & var_3.b.a, vec4<i32>(u_input.b, var_1.x, -4888i, var_3.b.a.x)), firstTrailingBit(var_3.b.a ^ var_3.b.a)), ~_wgslsmith_mult_i32(2147483647i, u_input.b)), _wgslsmith_mult_vec4_u32(abs(var_3.e), var_3.e), _wgslsmith_dot_vec4_u32(countOneBits(abs(~vec4<u32>(var_3.e.x, 1u, var_3.a, var_3.a))), vec4<u32>(7151u, 5955u, ~u_input.a, _wgslsmith_dot_vec2_u32(var_3.e.xx, vec2<u32>(var_3.a, 0u)) & countOneBits(u_input.c))), 998f);
}

