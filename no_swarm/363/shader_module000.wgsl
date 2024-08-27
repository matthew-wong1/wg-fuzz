struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = u_input.a.zx;
    var var_1 = vec3<bool>((select(select(false, true, false), true, true) && (_wgslsmith_f_op_f32(trunc(-289f)) < -2101f)) | true, u_input.a.x > 64741i, false);
    var var_2 = ~_wgslsmith_mod_u32(firstLeadingBit(u_input.b.x), u_input.b.x);
    var_1 = select(!select(vec3<bool>(true | var_1.x, all(vec3<bool>(var_1.x, false, true)), !var_1.x), vec3<bool>(any(var_1.zx), u_input.b.x >= u_input.b.x, var_1.x), vec3<bool>(true, 115329u < u_input.b.x, false)), !(!select(select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, false, var_1.x), var_1.x), select(vec3<bool>(false, false, var_1.x), vec3<bool>(false, true, false), vec3<bool>(var_1.x, var_1.x, var_1.x)), vec3<bool>(true, true, true))), vec3<bool>(true, all(vec2<bool>(false, true)), true));
    var var_3 = all(!vec3<bool>(true, var_1.x, !var_1.x));
    return _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(_wgslsmith_clamp_u32(abs(u_input.b.x), ~max(0u, u_input.b.x), ~25515u), abs(~firstLeadingBit(u_input.b.x))));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_3(-2147483647i != u_input.a.x, Struct_1(arg_0, func_3(Struct_2(countOneBits(4801i))), _wgslsmith_div_vec4_u32(vec4<u32>(abs(arg_0), u_input.b.x, ~arg_0, firstTrailingBit(0u)), arg_3 & _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 0u, 19049u, arg_3.x), vec4<u32>(arg_0, 4294967295u, u_input.b.x, 1u)))), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(func_3(Struct_2(8075i)), _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(1396u, 4294967295u))), 0u), reverseBits(func_3(Struct_2(0i))), firstTrailingBit(16078u)), 52169u);
    let var_1 = vec3<bool>(false, var_0.a, true);
    let var_2 = u_input.a.x;
    let var_3 = firstLeadingBit(2147483647i);
    let var_4 = Struct_2(var_3);
    return Struct_1(4294967295u, select(~(~0u), 1u, true), _wgslsmith_mult_vec4_u32(abs(~(vec4<u32>(4294967295u, arg_3.x, arg_3.x, var_0.d) | vec4<u32>(var_0.d, 36898u, var_0.d, arg_3.x))), ~arg_3));
}

fn func_4(arg_0: Struct_4, arg_1: f32) -> Struct_4 {
    var var_0 = arg_0;
    var var_1 = true;
    var var_2 = select(select(vec2<bool>(all(vec3<bool>(false, true, false)) || true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, true, false))), true), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, true, true))), vec2<bool>(var_0.d.a >= 2147483647i, -1000f <= arg_0.b.x), !all(vec3<bool>(true, false, true))), select(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(false, false)), vec2<bool>(true, arg_0.c.a < u_input.b.x), (u_input.a.x > -28494i) || select(true, false, false)), !(!all(vec4<bool>(false, true, false, false)))), 1u <= u_input.b.x);
    let var_3 = firstTrailingBit((u_input.a << (vec3<u32>(_wgslsmith_mod_u32(5250u, var_0.a), u_input.b.x, ~45741u) % vec3<u32>(32u))) >> (~(~vec3<u32>(62201u, 8973u, 114477u)) % vec3<u32>(32u)));
    var var_4 = _wgslsmith_mod_i32(-arg_0.d.a, _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_0.d.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1716i, -2147483647i, var_3.x), vec4<i32>(-1i, var_3.x, var_0.d.a, u_input.a.x))), vec2<i32>(arg_0.d.a | ~(-1i), -firstLeadingBit(-27090i))));
    return arg_0;
}

fn func_1() -> Struct_4 {
    let var_0 = u_input.b.x;
    var var_1 = abs(var_0);
    var_1 = 40716u;
    let var_2 = Struct_3(true, Struct_1(~_wgslsmith_add_u32(1u, 33983u) ^ (var_0 | var_0), u_input.b.x, _wgslsmith_mult_vec4_u32(~(vec4<u32>(var_0, u_input.b.x, u_input.b.x, 28360u) << (vec4<u32>(9332u, 27892u, 8577u, u_input.b.x) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(70905u, 35558u, 41575u, var_0), vec4<u32>(68084u, var_0, 66829u, 103828u)), vec4<u32>(u_input.b.x, u_input.b.x, 85510u, 19470u)))), 7586u, 26745u);
    var_1 = ~(var_2.d >> (0u % 32u));
    return func_4(Struct_4(~reverseBits(4294967295u), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(497f, -439f, -448f, 995f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(195f, 117f, 115f, -1292f) + vec4<f32>(-251f, 312f, 480f, 122f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1094f, -749f, -1215f, -570f)))))), func_2(var_2.c, _wgslsmith_f_op_f32(sign(161f)), false, var_2.b.c), Struct_2(2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -590f) + -697f) + _wgslsmith_div_f32(1306f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(157f * -507f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = func_2(4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1().b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b.x, -1809f)) * var_0.b.x))), true, _wgslsmith_div_vec4_u32(~vec4<u32>(24922u, u_input.b.x, 1u, ~105005u), ~(~vec4<u32>(4294967295u, u_input.b.x, var_0.a, 0u)) | var_0.c.c));
    var var_2 = select(select(select(vec3<bool>(true, true, all(vec3<bool>(false, true, false))), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), any(vec3<bool>(true, false, false))), vec3<bool>(all(vec2<bool>(true, false)), false, true), vec3<bool>(true, true, true)), true), vec3<bool>(false, true, !(true && any(vec2<bool>(false, false)))), !vec3<bool>(true, any(vec3<bool>(true, true, true)), true | all(vec2<bool>(true, false))));
    var var_3 = 0i;
    var var_4 = func_1().d;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(min(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -46846i, -48166i, 26846i), vec4<i32>(var_4.a, 2147483647i, var_4.a, -37768i)), 2147483647i), -_wgslsmith_mod_i32(11742i, u_input.a.x), -24037i, abs(_wgslsmith_mult_i32(9012i, var_4.a))), vec4<i32>(1i, _wgslsmith_sub_i32(i32(-1i) * -21478i, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, var_0.d.a, var_0.d.a), u_input.a) | 1i, ~countOneBits(var_4.a)), !(!(!vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)))));
}

