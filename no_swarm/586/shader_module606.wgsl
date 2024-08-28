struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<i32>(38507i, 2147483647i), vec2<f32>(-1691f, 823f), -18047i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    let var_0 = true;
    global0 = Struct_4(_wgslsmith_mult_vec2_i32(abs(-vec2<i32>(-24714i, global0.c)), _wgslsmith_add_vec2_i32(vec2<i32>(reverseBits(global0.c), -5618i << (u_input.a.x % 32u)), ~(-vec2<i32>(-1i, -34896i)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.b.x - global0.b.x), _wgslsmith_div_f32(-803f, global0.b.x), !var_0)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1641f))), global0.b.x), ~global0.c);
    global0 = Struct_4(global0.a << (~(~vec2<u32>(1u, 1u)) % vec2<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))), abs(global0.a.x));
    global0 = Struct_4(vec2<i32>(-1i) * -firstTrailingBit(u_input.d.yz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(-437f, 1000f) + vec2<f32>(-1207f, global0.b.x))) - _wgslsmith_div_vec2_f32(global0.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, global0.b.x) * vec2<f32>(global0.b.x, global0.b.x))))), ~_wgslsmith_dot_vec3_i32(u_input.d.yxz, u_input.d.wxx));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.b.x), global0.b.x)), _wgslsmith_f_op_f32(1424f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(385f, _wgslsmith_f_op_f32(sign(831f)), !var_0)))), _wgslsmith_f_op_f32(-global0.b.x), global0.b.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * -317f);
}

fn func_2(arg_0: vec2<f32>) -> Struct_4 {
    global0 = Struct_4(u_input.d.wx, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_0))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -408f) * vec2<f32>(global0.b.x, global0.b.x))))))), max(global0.a.x, 15328i));
    global0 = Struct_4(_wgslsmith_mod_vec2_i32(firstLeadingBit(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(global0.a, vec2<i32>(-2147483647i, global0.a.x)), vec2<i32>(u_input.d.x, u_input.b.x))), select(~vec2<i32>(global0.a.x, global0.a.x), ~vec2<i32>(24761i, global0.a.x), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-271f, 773f), vec2<f32>(2768f, arg_0.x)))))) - global0.b), ~(~(_wgslsmith_add_i32(u_input.b.x, -16300i) >> (countOneBits(u_input.c.x) % 32u))));
    var var_0 = false;
    let var_1 = ~u_input.a;
    let var_2 = Struct_1(var_1.yy, any(vec3<bool>(!any(vec2<bool>(false, true)), true, select(true, all(vec4<bool>(false, false, false, false)), true))), global0.b.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3()), 1146f, global0.b.x, -634f) - vec4<f32>(1340f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-416f))), arg_0.x, -430f)));
    return Struct_4(_wgslsmith_add_vec2_i32(~vec2<i32>(global0.a.x, u_input.d.x), ~(-u_input.d.zw)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(var_2.d.x * global0.b.x)) - vec2<f32>(_wgslsmith_div_f32(var_2.c, 632f), 669f)))), ~_wgslsmith_mod_i32(~(-7382i), global0.c));
}

fn func_4(arg_0: Struct_4) -> i32 {
    let var_0 = all(!vec4<bool>(true, (29271i & global0.c) != _wgslsmith_mult_i32(arg_0.c, 37209i), 4294967295u != (u_input.c.x << (u_input.a.x % 32u)), true));
    global0 = func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b), vec2<f32>(global0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.x * global0.b.x), -872f))));
    global0 = Struct_4(select(vec2<i32>(1i, _wgslsmith_add_i32(~(-1i), _wgslsmith_dot_vec2_i32(u_input.b, u_input.d.xz))), vec2<i32>(global0.c >> (u_input.a.x % 32u), _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0.a.x, -2147483647i, 2147483647i), u_input.d.xzy & vec3<i32>(0i, u_input.b.x, arg_0.c))), select(select(vec2<bool>(var_0, false), vec2<bool>(var_0, var_0), true), select(vec2<bool>(true, var_0), vec2<bool>(false, true), false), var_0)), global0.b, abs(-select(_wgslsmith_mult_i32(63209i, -23332i), reverseBits(arg_0.a.x), all(vec3<bool>(var_0, false, true)))));
    var var_1 = min(1u, 0u);
    var var_2 = vec4<bool>(any(select(!select(vec2<bool>(var_0, true), vec2<bool>(false, var_0), vec2<bool>(false, var_0)), vec2<bool>(any(vec3<bool>(false, var_0, var_0)), false), vec2<bool>(false, var_0 | false))), _wgslsmith_f_op_f32(abs(global0.b.x)) <= global0.b.x, var_0 | var_0, true);
    return func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -819f)), -215f) - vec2<f32>(-213f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.b.x, -212f)))))).c;
}

fn func_1() -> Struct_3 {
    global0 = Struct_4(vec2<i32>(-min(u_input.b.x, global0.a.x) << (4294967295u % 32u), _wgslsmith_mod_i32(func_4(func_2(vec2<f32>(global0.b.x, global0.b.x))), _wgslsmith_dot_vec3_i32(u_input.d.xwx, ~vec3<i32>(u_input.d.x, -1i, u_input.d.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1693f, -1463f), global0.b.x) + global0.b) + _wgslsmith_f_op_vec2_f32(-global0.b)), i32(-1i) * -1i);
    var var_0 = vec3<i32>(~(~global0.a.x), _wgslsmith_mult_i32(u_input.d.x, countOneBits(max(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), global0.c))), (-(1i ^ u_input.d.x) << (u_input.c.x % 32u)) << (~(~_wgslsmith_div_u32(34733u, u_input.c.x)) % 32u));
    var_0 = reverseBits(~u_input.d.wzz);
    let var_1 = vec3<u32>(_wgslsmith_mult_u32(max(4294967295u, abs(u_input.c.x) << (1u % 32u)), min(_wgslsmith_dot_vec4_u32(vec4<u32>(55972u, 4294967295u, 0u, u_input.a.x), min(vec4<u32>(u_input.c.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a)), 0u)), firstTrailingBit(u_input.c.x), ~countOneBits(u_input.a.x));
    global0 = func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b + vec2<f32>(global0.b.x, -1287f)) * func_2(vec2<f32>(-889f, -697f)).b)), _wgslsmith_f_op_vec2_f32(floor(func_2(_wgslsmith_f_op_vec2_f32(-global0.b)).b))));
    return Struct_3(!vec4<bool>(true, true, !all(vec3<bool>(true, false, true)), !(-2189f == global0.b.x)), vec4<i32>(global0.a.x, u_input.d.x, var_0.x, -16721i), var_1);
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    global0 = func_2(vec2<f32>(_wgslsmith_f_op_f32(select(global0.b.x, _wgslsmith_f_op_f32(sign(global0.b.x)), false)), _wgslsmith_f_op_f32(floor(global0.b.x))));
    global0 = Struct_4(u_input.d.yy, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, global0.b.x)), vec2<f32>(global0.b.x, global0.b.x), arg_0.a.wx))), _wgslsmith_f_op_vec2_f32(max(global0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b * global0.b))))), ~(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-8916i, u_input.d.x, 24212i, 2147483647i), vec4<i32>(-2147483647i, -2147483647i, 1i, -2147483647i)), abs(35872i)) << (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(u_input.a.x, 4294967295u)), 1u) % 32u)));
    var var_0 = Struct_1(func_1().c.xx, !(global0.b.x == global0.b.x), global0.b.x, vec4<f32>(global0.b.x, -524f, global0.b.x, -376f));
    let var_1 = firstLeadingBit(u_input.c.x) & ~_wgslsmith_clamp_u32(0u, u_input.c.x ^ u_input.a.x, u_input.c.x);
    var var_2 = ~vec2<i32>(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d.xx))).a.x, ~(_wgslsmith_clamp_i32(11949i, -2147483647i, 1i) >> (_wgslsmith_clamp_u32(var_1, arg_0.c.x, var_0.a.x) % 32u)));
    return func_1();
}

fn func_6(arg_0: Struct_3, arg_1: u32, arg_2: Struct_4, arg_3: u32) -> Struct_2 {
    global0 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b) * vec2<f32>(_wgslsmith_f_op_f32(min(global0.b.x, -412f)), global0.b.x)));
    return Struct_2(Struct_1(firstLeadingBit(countOneBits(_wgslsmith_mult_vec2_u32(u_input.c.yx, u_input.a.ww))), !(!any(arg_0.a.yyx)), arg_2.b.x, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -936f), -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-623f)))), global0.b.x)), Struct_1(func_5(func_5(Struct_3(vec4<bool>(arg_0.a.x, false, arg_0.a.x, false), arg_0.b, u_input.c))).c.zz, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x + arg_2.b.x) * arg_2.b.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(240f)), -1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, -664f, arg_2.b.x, global0.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, -336f, -809f, global0.b.x)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1538f, 588f, arg_2.b.x, global0.b.x)))))), ~firstLeadingBit(_wgslsmith_dot_vec4_i32(u_input.d, _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 25343i, 1i, 26062i), u_input.d))), _wgslsmith_mult_vec4_i32(arg_0.b << (~(vec4<u32>(arg_3, 4294967295u, arg_3, 0u) ^ u_input.a) % vec4<u32>(32u)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 81497i, -1i, u_input.d.x) ^ vec4<i32>(-263i, -2147483647i, -40757i, arg_0.b.x), u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(func_1()), ~(~abs(u_input.c.x)) ^ 21067u, func_2(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-108f, global0.b.x))).b - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.b.x, -240f))))))), ~_wgslsmith_mult_u32(~u_input.a.x, 40836u));
    var var_1 = func_5(func_1()).a.x;
    var_1 = true;
    let var_2 = global0.b;
    var_1 = func_1().a.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-247f, global0.b.x)), -541f, _wgslsmith_f_op_f32(max(global0.b.x, -934f)))) * vec3<f32>(var_2.x, global0.b.x, _wgslsmith_f_op_f32(-var_0.a.d.x))), var_0.a.d.zwx));
    let var_4 = -335f <= _wgslsmith_f_op_f32(trunc(global0.b.x));
    let var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.d.wwz);
}

