struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> f32 {
    let var_0 = Struct_1(max(_wgslsmith_dot_vec4_i32(~(-arg_1), firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.x, -435i, arg_1.x, arg_0.a), vec4<i32>(33101i, arg_1.x, arg_1.x, arg_1.x)))), -_wgslsmith_div_i32(arg_0.a, -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-816f)) + _wgslsmith_div_f32(-544f, _wgslsmith_f_op_f32(-186f - 259f))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(812f)) + 1000f) + 1000f));
    let var_1 = vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-2147483647i | arg_0.a, ~42224i), abs(countOneBits(arg_1.x)), arg_0.a) | 1i, abs(arg_0.a));
    var var_2 = Struct_1(-2147483647i >> (_wgslsmith_clamp_u32(select(u_input.c.x, ~u_input.a, any(vec4<bool>(arg_0.b, var_0.b, var_0.b, arg_0.b))), u_input.a, u_input.c.x) % 32u), true);
    let var_3 = Struct_1(_wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(~arg_1, vec4<i32>(0i, var_0.a, 2147483647i, arg_0.a)), firstTrailingBit(6415i)), var_2.b);
    var var_4 = var_3;
    return -250f;
}

fn func_2(arg_0: vec4<bool>, arg_1: bool) -> bool {
    var var_0 = Struct_1(~(-_wgslsmith_mult_i32(~(-3563i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, -2147483647i), vec3<i32>(2147483647i, 2147483647i, 2147483647i)))), true);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2777f * _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_mod_i32(var_0.a, var_0.a), arg_0.x), vec4<i32>(~var_0.a, -var_0.a, 41012i, var_0.a)))) - -115f);
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1, var_1, var_0.b))), _wgslsmith_f_op_f32(func_3(Struct_1(0i, !arg_1), vec4<i32>(~1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, var_0.a, 1569i), vec3<i32>(var_0.a, var_0.a, var_0.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0.a, var_0.a), vec3<i32>(var_0.a, var_0.a, var_0.a)), _wgslsmith_div_i32(-1i, 45836i))))) + vec2<f32>(var_1, var_1));
    var_0 = Struct_1(1i, false);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(126f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_1)))), _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(round(var_2.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-484f)), var_2.x)))));
    return _wgslsmith_dot_vec4_i32(~select(vec4<i32>(2147483647i, -69866i, 0i, var_0.a), vec4<i32>(27323i, var_0.a, -1i, 1i), arg_0.x) | _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a, var_0.a, -5913i, -750i), reverseBits(vec4<i32>(var_0.a, 24178i, 2147483647i, 1i))), _wgslsmith_add_vec4_i32(-vec4<i32>(-1i, -26392i, var_0.a, var_0.a), vec4<i32>(var_0.a, 57151i, -2147483647i, var_0.a)) >> (firstLeadingBit(vec4<u32>(5659u, 0u, 23471u, u_input.b)) % vec4<u32>(32u))) != firstLeadingBit(2147483647i);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>) -> bool {
    global0 = array<vec3<bool>, 6>();
    var var_0 = Struct_1(arg_1.x, false);
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -803f) + arg_0.x) - _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x)))) > arg_0.x;
    let var_2 = abs(~max(vec2<i32>(arg_1.x, var_0.a), ~abs(arg_1)));
    var var_3 = 1u;
    return any(select(vec2<bool>(select(func_2(vec4<bool>(true, false, true, true), var_0.b), true, any(vec2<bool>(false, true))), false), select(vec2<bool>(!var_0.b, true), select(!vec2<bool>(var_0.b, true), select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, var_0.b), vec2<bool>(true, true)), any(vec2<bool>(var_0.b, false))), vec2<bool>(true, var_0.b)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(-2156f, _wgslsmith_div_f32(-1577f, _wgslsmith_f_op_f32(f32(-1f) * -2646f)), -224f);
    let var_1 = Struct_1(reverseBits(~select(1i, -31481i, true) & -2147483647i), !any(vec4<bool>(true, true, true, func_1(var_0, vec2<i32>(2147483647i, 0i)))));
    global0 = array<vec3<bool>, 6>();
    global0 = array<vec3<bool>, 6>();
    let var_2 = global0[_wgslsmith_index_u32(42078u, 6u)];
    global0 = array<vec3<bool>, 6>();
    let var_3 = Struct_1(abs(57i), all(vec4<bool>(!(true || var_1.b), var_2.x, true, true)));
    let var_4 = Struct_1(_wgslsmith_dot_vec3_i32(abs(_wgslsmith_add_vec3_i32(vec3<i32>(var_3.a, -38944i, var_3.a) >> (vec3<u32>(0u, u_input.b, u_input.a) % vec3<u32>(32u)), vec3<i32>(-2147483647i, -16461i, var_1.a))), -vec3<i32>(-2147483647i, -1i, var_1.a) ^ vec3<i32>(var_1.a << (u_input.c.x % 32u), ~(-7920i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.a, var_1.a), vec2<i32>(var_3.a, var_3.a)))), !var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, max(~(abs(vec2<i32>(29787i, var_3.a)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), ~firstTrailingBit(vec2<i32>(0i, var_4.a)) >> (u_input.c.xx % vec2<u32>(32u))), -abs(min(vec2<i32>(var_4.a, -13781i), vec2<i32>(var_3.a, 0i))) & ~vec2<i32>(49619i, reverseBits(var_3.a)), _wgslsmith_mult_vec3_u32(((vec3<u32>(43800u, 1u, 0u) | vec3<u32>(u_input.a, 1952u, u_input.c.x)) & u_input.c) & ~min(u_input.c, u_input.c), ~u_input.c));
}

