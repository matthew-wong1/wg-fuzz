struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: i32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: Struct_4 = Struct_4(Struct_3(1000f, Struct_2(43247i, true, vec2<bool>(true, false)), -41746i, vec3<u32>(86506u, 57563u, 67277u)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: u32, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_2(-_wgslsmith_dot_vec3_i32(arg_1, arg_1), global0.a.b.c.x, !(!select(global0.a.b.c, global0.a.b.c, !global0.a.b.b)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-956f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1823f))))), global0.a.a));
    var var_2 = ~vec4<i32>(_wgslsmith_div_i32(global0.a.b.a, -var_0.a), var_0.a, firstLeadingBit(-1i), _wgslsmith_clamp_i32(-global0.a.b.a, 1i, -793i)) << (arg_3 % vec4<u32>(32u));
    var var_3 = u_input.a != global0.a.d.x;
    return Struct_2(~(var_2.x & arg_1.x), false, vec2<bool>(true, all(select(vec2<bool>(true, global0.a.b.c.x), global0.a.b.c, select(var_0.c.x, true, global0.a.b.b)))));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(global0.a.a)), ~select(_wgslsmith_mult_vec3_u32(global0.a.d, vec3<u32>(18522u, u_input.a, 11364u)), vec3<u32>(u_input.a, u_input.a, u_input.a) | firstLeadingBit(global0.a.d), !(!global0.a.b.c.x)), false);
    var var_1 = Struct_4(Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(ceil(global0.a.a))), _wgslsmith_f_op_f32(-global0.a.a)), global0.a.b, _wgslsmith_mult_i32(firstTrailingBit(50752i & u_input.b), -2147483647i), min(~firstTrailingBit(vec3<u32>(0u, global0.a.d.x, 1u)), abs(vec3<u32>(0u, u_input.a, global0.a.d.x)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(global0.a.d.x, 1u, u_input.a), vec3<u32>(1u, 62994u, 0u)) % vec3<u32>(32u)))));
    global0 = Struct_4(var_1.a);
    var var_2 = !(!(global0.a.d.x < _wgslsmith_mult_u32(u_input.a, u_input.a))) && ((var_1.a.b.c.x & (_wgslsmith_f_op_f32(min(var_0.a, -238f)) >= _wgslsmith_f_op_f32(-180f + 306f))) | !any(vec4<bool>(var_1.a.b.b, true, true, var_1.a.b.c.x)));
    let var_3 = var_0;
    return -(i32(-1i) * -var_1.a.b.a);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3) -> Struct_2 {
    return func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) + -574f), vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(7622i, arg_1.b.a, global0.a.b.a, 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(33854i, -2147483647i, 2529i, arg_1.b.a), vec4<i32>(arg_0.a, arg_1.c, -2147483647i, -2147483647i), vec4<i32>(arg_1.c, -22656i, arg_0.a, arg_0.a))), vec4<i32>(func_3(), 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a, 3728i), vec2<i32>(-2147483647i, -2147483647i)), 0i)), -10994i, firstTrailingBit(global0.a.b.a)), abs(~52607u), ~(~countOneBits(~vec4<u32>(u_input.a, u_input.a, global0.a.d.x, u_input.a))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a, -1000f, global0.a.a, 961f) - vec4<f32>(148f, 394f, global0.a.a, global0.a.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a, 1000f, 1348f, global0.a.a)))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1338f, -261f)), _wgslsmith_f_op_f32(global0.a.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a))), global0.a.a), select(arg_2, select(vec4<bool>(arg_0.c.x, all(vec4<bool>(true, arg_0.b, arg_1.x, false)), arg_0.c.x || true, false), arg_2, !select(arg_2, vec4<bool>(true, false, false, arg_1.x), arg_2)), vec4<bool>(arg_0.c.x, true, false, false))));
    global0 = Struct_4(Struct_3(1239f, Struct_2(8141i, true, global0.a.b.c), _wgslsmith_div_i32(global0.a.c >> (u_input.a % 32u), -arg_0.a), vec3<u32>(_wgslsmith_dot_vec4_u32(min(vec4<u32>(25113u, 0u, 48706u, global0.a.d.x), vec4<u32>(global0.a.d.x, u_input.a, u_input.a, global0.a.d.x)), ~vec4<u32>(77599u, u_input.a, 0u, u_input.a)), u_input.a, global0.a.d.x)));
    let var_1 = ~vec3<u32>(30839u, global0.a.d.x, countOneBits(u_input.a));
    global0 = Struct_4(global0.a);
    var var_2 = ~global0.a.d.x;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(global0.a);
    let var_0 = func_4(func_2(func_1(-1337f, vec3<i32>(min(u_input.b, 43637i), global0.a.c, i32(-1i) * -53150i), abs(u_input.a), vec4<u32>(4294967295u, ~u_input.a, ~296u, 47170u)), global0.a), !vec3<bool>(any(vec2<bool>(global0.a.b.c.x, global0.a.b.b)), u_input.b > _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b, 2147483647i), vec3<i32>(global0.a.c, 1i, 1i)), !(!global0.a.b.c.x)), select(select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(global0.a.b.c.x, false, false, global0.a.b.b), vec4<bool>(global0.a.b.c.x, true, false, true)), select(vec4<bool>(true, true, global0.a.b.c.x, false), vec4<bool>(global0.a.b.b, global0.a.b.b, global0.a.b.c.x, true), vec4<bool>(global0.a.b.c.x, global0.a.b.b, global0.a.b.b, global0.a.b.b)), global0.a.b.c.x), select(select(vec4<bool>(global0.a.b.c.x, global0.a.b.c.x, global0.a.b.c.x, true), vec4<bool>(global0.a.b.b, global0.a.b.b, global0.a.b.c.x, global0.a.b.b), vec4<bool>(false, true, global0.a.b.b, false)), !vec4<bool>(global0.a.b.b, true, false, global0.a.b.b), !vec4<bool>(global0.a.b.c.x, true, true, global0.a.b.c.x)), vec4<bool>(func_1(1286f, vec3<i32>(58339i, global0.a.b.a, global0.a.c), 33857u, vec4<u32>(2874u, u_input.a, global0.a.d.x, 66969u)).c.x, true, true, 0i >= global0.a.c)), !select(vec4<bool>(false, false, global0.a.b.c.x, global0.a.b.b), select(vec4<bool>(global0.a.b.b, global0.a.b.c.x, global0.a.b.b, false), vec4<bool>(global0.a.b.c.x, true, global0.a.b.c.x, true), true), select(vec4<bool>(false, global0.a.b.c.x, false, global0.a.b.b), vec4<bool>(false, global0.a.b.c.x, global0.a.b.c.x, false), global0.a.b.b)), !(!(!vec4<bool>(true, global0.a.b.c.x, true, global0.a.b.c.x)))));
    let var_1 = func_3();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.a))) - -448f);
    var var_3 = var_0.b;
    var_3 = func_4(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2, -1526f)) + -1000f) + -1140f), ~(_wgslsmith_add_vec3_i32(vec3<i32>(17429i, var_1, 2147483647i), vec3<i32>(var_1, -1i, var_0.a)) ^ vec3<i32>(-1i, u_input.b, 39102i)), global0.a.d.x, _wgslsmith_clamp_vec4_u32(vec4<u32>(abs(u_input.a), u_input.a, firstTrailingBit(global0.a.d.x), global0.a.d.x), min(~vec4<u32>(27245u, global0.a.d.x, 82464u, 73593u), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.a.d.x, u_input.a, 85170u, global0.a.d.x), vec4<u32>(21635u, 0u, global0.a.d.x, u_input.a))), ~(~vec4<u32>(16582u, 132u, 1u, 99106u)))), !(!vec3<bool>(any(vec4<bool>(global0.a.b.c.x, var_0.c.x, var_0.b, var_0.b)), select(true, var_0.c.x, false), global0.a.b.b != false)), vec4<bool>(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), select(~vec3<i32>(global0.a.c, -1i, -1171i), abs(vec3<i32>(-12203i, u_input.b, u_input.b)), !global0.a.b.c.x), firstLeadingBit(~4294967295u), reverseBits(~vec4<u32>(0u, 26029u, 0u, 0u))).b, true, global0.a.b.c.x, func_1(_wgslsmith_f_op_f32(-282f * global0.a.a), -(~vec3<i32>(global0.a.c, var_1, 24075i)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(26061u, global0.a.d.x)) | global0.a.d.x, _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(global0.a.d.x, 44001u, global0.a.d.x, 4294967295u)), vec4<u32>(27838u, 4294967295u, 53777u, 12588u), vec4<u32>(global0.a.d.x, u_input.a, u_input.a, 74410u))).c.x)).c.x;
    let var_4 = min(max(_wgslsmith_mult_i32(~1i, _wgslsmith_mult_i32(var_1, _wgslsmith_clamp_i32(-37873i, u_input.b, -83247i))), -2147483647i), func_1(-1017f, vec3<i32>(firstTrailingBit(var_1), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-1i, u_input.b, 5634i), -2958i & u_input.b), global0.a.b.a), u_input.a & ~(~1u), _wgslsmith_sub_vec4_u32(~vec4<u32>(global0.a.d.x, u_input.a, global0.a.d.x, 11972u), select(vec4<u32>(global0.a.d.x, u_input.a, 18247u, u_input.a), vec4<u32>(u_input.a, global0.a.d.x, u_input.a, global0.a.d.x), vec4<bool>(var_0.b, var_0.c.x, global0.a.b.b, true))) | ~min(vec4<u32>(global0.a.d.x, u_input.a, u_input.a, global0.a.d.x), vec4<u32>(0u, 9181u, u_input.a, 0u))).a);
    global0 = Struct_4(global0.a);
    var var_5 = vec2<bool>(any(vec4<bool>(global0.a.b.c.x | all(vec3<bool>(true, global0.a.b.c.x, false)), true, true, var_0.c.x)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a, 1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1853f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1105f, var_2, global0.a.a), vec3<f32>(global0.a.a, -335f, -331f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, -728f) + vec3<f32>(var_2, global0.a.a, 1818f))))));
}

