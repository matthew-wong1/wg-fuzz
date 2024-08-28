struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<u32>(9930u, 41395u, 0u, 1u));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: i32) -> vec4<f32> {
    let var_0 = Struct_1(u_input.d.x, all(arg_0.xw), vec2<f32>(674f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1394f + _wgslsmith_f_op_f32(min(-1000f, 1833f)))))), _wgslsmith_add_vec2_i32(select(vec2<i32>(u_input.b.x, 2147483647i) >> (global0.a.yw % vec2<u32>(32u)), -u_input.a, 2147483647i != arg_2) | vec2<i32>(_wgslsmith_mult_i32(-1i, arg_2), max(2147483647i, arg_2)), u_input.a));
    global0 = Struct_2(u_input.d);
    var var_1 = ~(firstLeadingBit(~(vec4<i32>(var_0.d.x, var_0.d.x, 7970i, -51653i) << (arg_1.a % vec4<u32>(32u)))) & firstTrailingBit(~vec4<i32>(0i, 0i, -27178i, -1835i)));
    let var_2 = countOneBits(select(0u, global0.a.x, true));
    var var_3 = abs(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(global0.a.x, _wgslsmith_sub_u32(var_0.a, 1u)), ~_wgslsmith_sub_u32(arg_1.a.x, ~1u)));
    return _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1583f - var_0.c.x) - _wgslsmith_div_f32(var_0.c.x, var_0.c.x)))), var_0.c.x, -1049f), vec4<f32>(var_0.c.x, 2319f, _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-567f - 537f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-621f * var_0.c.x))))));
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    var var_0 = Struct_2(~(countOneBits(u_input.d) >> (vec4<u32>(1495u, ~u_input.d.x, ~global0.a.x, global0.a.x) % vec4<u32>(32u))));
    var var_1 = ~firstTrailingBit(firstLeadingBit(~(u_input.b | vec3<i32>(-79972i, u_input.c, u_input.c))));
    var var_2 = Struct_1(0u, !select(false, !any(vec3<bool>(false, true, true)), true), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-1000f - arg_0.x))))), var_1.yz);
    var_1 = u_input.b;
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.c.x), var_2.c.x, any(vec3<bool>(true, false, var_2.b)))))), -889f, 129f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(var_2.b, var_2.b, var_2.b, var_2.b), Struct_2(vec4<u32>(var_2.a, 18920u, 0u, var_0.a.x)), var_2.d.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.x, -681f, var_2.c.x, -438f) - vec4<f32>(-1000f, arg_0.x, 731f, arg_0.x)) * _wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(var_2.b, var_2.b, var_2.b, var_2.b), Struct_2(vec4<u32>(u_input.d.x, 18553u, global0.a.x, var_0.a.x)), 1i)))) + vec4<f32>(-2054f, 889f, _wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, 1706f)))));
    return ~global0.a.x;
}

fn func_1() -> Struct_1 {
    global0 = Struct_2(global0.a << (_wgslsmith_div_vec4_u32(abs(~global0.a), ~(~u_input.d)) % vec4<u32>(32u)));
    var var_0 = global0.a.xx;
    var var_1 = Struct_2(vec4<u32>(global0.a.x, ~min(_wgslsmith_mod_u32(var_0.x, 36127u), func_2(vec3<f32>(-1229f, 867f, -104f))), global0.a.x, var_0.x));
    var_0 = vec2<u32>(countOneBits(~(~19916u)), u_input.d.x);
    var_0 = vec2<u32>(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(1u, global0.a.x), u_input.d.x & (_wgslsmith_mult_u32(global0.a.x, 1u) | _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_1.a.x, 39522u), vec3<u32>(global0.a.x, var_1.a.x, global0.a.x)))), global0.a.x);
    return Struct_1(1u, !(~(~u_input.a.x) < u_input.b.x), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -749f)), _wgslsmith_div_f32(-384f, _wgslsmith_f_op_f32(-287f + 189f))))), select(_wgslsmith_mod_vec2_i32(firstTrailingBit(u_input.b.yz >> (var_1.a.yx % vec2<u32>(32u))), firstTrailingBit(vec2<i32>(u_input.b.x, -2147483647i) << (vec2<u32>(var_1.a.x, 0u) % vec2<u32>(32u)))), min(vec2<i32>(_wgslsmith_add_i32(u_input.a.x, -2147483647i), max(u_input.b.x, u_input.b.x)), u_input.a), vec2<bool>(true, true)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    let var_0 = 1u;
    global0 = arg_3;
    var var_1 = arg_0;
    global0 = arg_2;
    let var_2 = select(!select(vec3<bool>(all(vec2<bool>(var_1.b, arg_0.b)), true, arg_0.b), vec3<bool>(var_1.b, true, any(vec3<bool>(false, true, true))), vec3<bool>(all(vec3<bool>(arg_0.b, var_1.b, var_1.b)), true, arg_0.b)), vec3<bool>(~(~arg_3.a.x) >= abs(var_0), arg_1.x >= arg_1.x, select(any(!vec2<bool>(false, var_1.b)), select(false | var_1.b, arg_0.b, true), false)), 4294967295u < global0.a.x);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(abs(16599u), !any(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), true)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(689f, -854f), vec2<f32>(-1774f, 1000f))), vec2<f32>(362f, -470f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-110f, -185f)), !all(vec4<bool>(false, true, false, true)))), -u_input.a);
    global0 = func_4(func_1(), _wgslsmith_clamp_vec4_u32(~global0.a & u_input.d, countOneBits(vec4<u32>(var_0.a, _wgslsmith_mod_u32(var_0.a, 37208u), min(u_input.d.x, 4294967295u), 59534u)), ~vec4<u32>(var_0.a, _wgslsmith_mod_u32(3624u, u_input.d.x), _wgslsmith_clamp_u32(global0.a.x, var_0.a, 4294967295u), firstTrailingBit(global0.a.x))), Struct_2(u_input.d), Struct_2(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(var_0.a, 36830u, global0.a.x, global0.a.x)) & vec4<u32>(u_input.d.x, global0.a.x, global0.a.x, 0u), ~(~vec4<u32>(global0.a.x, var_0.a, var_0.a, u_input.d.x)))));
    global0 = func_4(Struct_1(_wgslsmith_mod_u32(73365u, ~0u), !var_0.b, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(188f, var_0.c.x)))), _wgslsmith_f_op_vec2_f32(var_0.c * _wgslsmith_f_op_vec2_f32(-var_0.c)))), min(var_0.d, u_input.a)), global0.a, Struct_2(max(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, 1u, u_input.d.x, 4294967295u), vec4<u32>(var_0.a, 70477u, global0.a.x, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 48444u, 4294967295u, var_0.a), global0.a)), ~vec4<u32>(global0.a.x, 5955u, global0.a.x, u_input.d.x))), func_4(func_1(), vec4<u32>(13813u, ~_wgslsmith_sub_u32(u_input.d.x, global0.a.x), ~global0.a.x, 82733u), Struct_2(global0.a), func_4(Struct_1(~16934u, all(vec3<bool>(var_0.b, true, true)), vec2<f32>(-758f, var_0.c.x), firstLeadingBit(var_0.d)), (vec4<u32>(16259u, 1u, var_0.a, var_0.a) >> (vec4<u32>(40547u, global0.a.x, 28254u, 77515u) % vec4<u32>(32u))) >> ((vec4<u32>(69410u, 0u, var_0.a, global0.a.x) & global0.a) % vec4<u32>(32u)), Struct_2(~vec4<u32>(0u, var_0.a, 4294967295u, global0.a.x)), func_4(var_0, vec4<u32>(1u, u_input.d.x, var_0.a, 66184u) >> (global0.a % vec4<u32>(32u)), Struct_2(u_input.d), Struct_2(vec4<u32>(0u, 1u, 1u, u_input.d.x))))));
    global0 = Struct_2(u_input.d);
    let var_1 = func_4(func_1(), global0.a, func_4(Struct_1(0u, var_0.b, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-419f, var_0.c.x)), var_0.c)), vec2<i32>(countOneBits(u_input.c), 17056i)), abs((u_input.d ^ global0.a) << (~global0.a % vec4<u32>(32u))), Struct_2(abs(vec4<u32>(14037u, 20460u, 4294967295u, 58215u))), Struct_2(abs(global0.a))), Struct_2(~(~(~u_input.d))));
    global0 = func_4(Struct_1(countOneBits(_wgslsmith_add_u32(var_1.a.x, global0.a.x & u_input.d.x)), var_0.b, var_0.c, -firstTrailingBit(-vec2<i32>(-12932i, u_input.b.x))), firstTrailingBit(u_input.d), Struct_2(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(global0.a, firstLeadingBit(vec4<u32>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x))), u_input.d)), Struct_2(select(u_input.d, vec4<u32>(var_0.a, var_1.a.x, 4294967295u, u_input.d.x), any(vec3<bool>(var_0.b, true, var_0.b))) ^ var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(653f, 1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_0.c.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(982f, var_0.c.x, true))), var_0.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.c.x * -351f)))))), max(-select(vec4<i32>(var_0.d.x, -16882i, 2147483647i, 0i), vec4<i32>(-2147483647i, -2147483647i, u_input.b.x, var_0.d.x), vec4<bool>(false, var_0.b, true, var_0.b)), vec4<i32>(-1i) * -vec4<i32>(var_0.d.x, -60701i, 6147i, -1i)), global0.a.x, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, var_0.c.x, var_0.c.x) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.c.x, var_0.c.x, var_0.c.x))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2023f), var_0.c.x, _wgslsmith_f_op_f32(-var_0.c.x)))));
}

