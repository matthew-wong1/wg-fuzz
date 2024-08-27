struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: u32;

var<private> global2: Struct_1 = Struct_1(-631f, true, vec4<u32>(0u, 34807u, 1u, 144801u));

var<private> global3: f32 = -1463f;

var<private> global4: u32 = 37650u;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>) -> vec4<u32> {
    return max(global2.c, ~(vec4<u32>(_wgslsmith_sub_u32(1u, u_input.a.x), abs(u_input.a.x), 1u, arg_0.x) >> (~global2.c % vec4<u32>(32u))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = -1i;
    let var_1 = firstTrailingBit(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.a) >> (~vec2<u32>(1u, 58331u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0, arg_0), u_input.a, vec2<u32>(48273u, u_input.a.x)) | ~u_input.a), ~select(firstTrailingBit(u_input.a), select(vec2<u32>(1u, 3648u), vec2<u32>(14280u, 1u), vec2<bool>(true, false)), select(vec2<bool>(global2.b, global2.b), vec2<bool>(false, true), vec2<bool>(false, global2.b)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a, global2.a) - global2.a), true, ~(~select(vec4<u32>(0u, 64614u, 43337u, 0u) << (vec4<u32>(var_1.x, var_1.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), func_3(vec4<u32>(u_input.a.x, 4294967295u, var_1.x, 6655u)), global2.b)));
    return Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2279f)))))), any(select(vec2<bool>(true, var_2.a <= var_2.a), select(select(vec2<bool>(var_2.b, var_2.b), vec2<bool>(var_2.b, true), vec2<bool>(global2.b, true)), vec2<bool>(true, true), select(var_2.b, var_2.b, var_2.b)), select(!vec2<bool>(global2.b, true), vec2<bool>(true, var_2.b), false))), ~(~var_2.c | vec4<u32>(u_input.a.x, 4294967295u, ~122829u, ~global2.c.x)));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec2<u32>, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f + global2.a), _wgslsmith_f_op_f32(global2.a * -1000f)))) - vec2<f32>(-803f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.a, global2.a))))));
    let var_1 = func_2(~_wgslsmith_div_u32(_wgslsmith_clamp_u32(~global2.c.x, reverseBits(94137u), ~42623u), 90044u));
    global4 = 1u;
    global2 = var_1;
    global4 = firstLeadingBit(firstTrailingBit(~var_1.c.x));
    return Struct_2(vec3<i32>(arg_1, 12001i, _wgslsmith_clamp_i32(-1022i, arg_1, -29030i)), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-global2.a), var_1.a), Struct_1(global2.a, false, select(arg_3, vec4<u32>(firstTrailingBit(u_input.a.x), _wgslsmith_mod_u32(0u, u_input.a.x), min(global2.c.x, 88286u), _wgslsmith_div_u32(0u, 4063u)), vec4<bool>(any(vec4<bool>(var_1.b, false, true, true)), !global2.b, true, all(vec2<bool>(arg_0, false))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_1 {
    global3 = global2.a;
    global2 = func_1(arg_2.c.b, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(0i & _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global0.x), vec2<i32>(arg_2.a.x, -12115i)), abs(0i)), max(_wgslsmith_dot_vec2_i32(arg_2.a.xy, global0.xy) ^ _wgslsmith_add_i32(-1i, -20952i), abs(-arg_0.a.x)), ~arg_2.a.x), vec2<u32>(~1u, func_1(!(arg_2.c.b | true), global0.x, firstTrailingBit(firstLeadingBit(global2.c.yx)), select(global2.c, ~vec4<u32>(arg_2.c.c.x, arg_2.c.c.x, 1316u, u_input.a.x), !vec4<bool>(arg_2.c.b, false, arg_0.c.b, arg_0.c.b))).c.c.x), global2.c).c;
    var var_0 = Struct_2(vec3<i32>(-22865i, arg_2.a.x, firstTrailingBit(_wgslsmith_sub_i32(global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2.b.x, arg_2.b.x, global2.a), arg_0.b)), arg_0.b)))), arg_0.c);
    global2 = func_2(_wgslsmith_div_u32(abs(abs(~global2.c.x)), var_0.c.c.x));
    let var_1 = func_2(_wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, func_2(0u).c.x ^ (1u >> (global2.c.x % 32u))), arg_2.c.c.x));
    return Struct_1(global2.a, true, vec4<u32>(func_2(arg_2.c.c.x & _wgslsmith_clamp_u32(65578u, global2.c.x, arg_0.c.c.x)).c.x, 1u, ~reverseBits(4294967295u), firstTrailingBit(~0u)));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> i32 {
    let var_0 = vec4<i32>(-1i) * -(~(-vec4<i32>(2147483647i, -17184i, -2147483647i, global0.x) | firstTrailingBit(vec4<i32>(27263i, 1i, arg_2.x, 7733i))));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a.x;
    var var_0 = Struct_2(vec3<i32>(func_5(global2.c.x, Struct_1(-581f, false || global2.b, vec4<u32>(global2.c.x, u_input.a.x, global2.c.x, 4294967295u)), -(global0.xy ^ vec2<i32>(global0.x, -18794i)), func_4(func_1(false, -6498i, vec2<u32>(4294967295u, 1u), vec4<u32>(35932u, 81830u, 12070u, 8530u)), countOneBits(global2.c), func_1(false, global0.x, vec2<u32>(global2.c.x, u_input.a.x), vec4<u32>(69308u, 1393u, 29716u, global2.c.x)))), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-1i, 1i, -26993i, -9758i)) ^ firstTrailingBit(vec4<i32>(global0.x, -21114i, 1i, global0.x)), vec4<i32>(-1i) * -vec4<i32>(global0.x, global0.x, -2147483647i, global0.x)), global0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, -169f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-605f + global2.a)))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(global2.a, global2.a), _wgslsmith_f_op_f32(global2.a - -738f), _wgslsmith_f_op_f32(-global2.a)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(755f, global2.a, global2.a)))), select(vec3<bool>(global2.b, global2.b, false), vec3<bool>(global2.b, global2.b, global2.b), select(vec3<bool>(global2.b, global2.b, global2.b), vec3<bool>(global2.b, global2.b, global2.b), false))))), Struct_1(825f, false, abs(vec4<u32>(~u_input.a.x, min(global2.c.x, u_input.a.x), 1u, countOneBits(u_input.a.x)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a, _wgslsmith_f_op_f32(sign(var_0.c.a)), -383f, var_0.b.x)))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-971f, _wgslsmith_f_op_f32(round(-108f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(423f, -220f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - var_1.x)))));
    var var_2 = Struct_2(var_0.a, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.zwz, _wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.x, global2.a, var_0.b.x), var_0.b), vec3<bool>(global2.b, var_0.c.b, false))) - _wgslsmith_f_op_vec3_f32(var_0.b * _wgslsmith_f_op_vec3_f32(round(var_1.wwx)))))), func_1(global2.b, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~global0.zz, var_0.a.xz), ~(~(-2147483647i)), var_0.a.x), ~firstLeadingBit(u_input.a), global2.c).c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -699f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b.x)) + -373f)))));
}

