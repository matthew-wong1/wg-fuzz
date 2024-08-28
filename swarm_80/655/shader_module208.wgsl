struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(76585u, 1u, 4294967295u, 4294967295u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = Struct_3(!(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(false, true), any(vec3<bool>(true, false, false)))));
    var var_1 = Struct_1(-u_input.d);
    var var_2 = !(!select(!var_0.a, select(vec2<bool>(var_0.a.x, true), vec2<bool>(false, var_0.a.x), vec2<bool>(var_0.a.x, true)), u_input.a.x < var_1.a));
    var_2 = var_0.a;
    let var_3 = Struct_2(Struct_1(_wgslsmith_add_i32(-1i, -6561i)), vec3<bool>(all(vec4<bool>(any(var_0.a), true, true, var_0.a.x)), !var_0.a.x || (~5380u != _wgslsmith_dot_vec3_u32(global0.xxw, vec3<u32>(global0.x, 50623u, u_input.b))), true), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(380f, 691f, 373f))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(620f, 745f, -621f))))))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(724f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(962f * var_3.c.x))))), var_3.c.x, any(vec2<bool>(~u_input.d > _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.a.a, u_input.d, -31647i, u_input.d), vec4<i32>(2147483647i, var_1.a, var_1.a, -88533i)), false))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: bool) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3()))));
    let var_1 = arg_2;
    var var_2 = abs(~(~vec4<u32>(u_input.c >> (4294967295u % 32u), ~u_input.b, 4294967295u, ~u_input.b)));
    let var_3 = Struct_3(vec2<bool>(any(vec2<bool>(arg_2, all(vec3<bool>(false, var_1, false)))), var_0 > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))));
    var var_4 = vec3<i32>(~(i32(-1i) * -49700i), -39247i, reverseBits(max(u_input.d, -12564i)));
    return !select(var_3.a, vec2<bool>(false, false), false);
}

fn func_1() -> bool {
    var var_0 = -abs(u_input.d);
    let var_1 = Struct_3(func_2(~(global0.xx | ~vec2<u32>(global0.x, global0.x)), vec4<i32>(u_input.a.x, -30956i, min(u_input.d, u_input.d), u_input.a.x) | _wgslsmith_div_vec4_i32(abs(vec4<i32>(-29796i, u_input.d, u_input.a.x, 4414i)), -vec4<i32>(u_input.d, u_input.d, -10450i, -2147483647i)), select(false, any(vec3<bool>(true, true, false)), false)));
    var var_2 = u_input.a;
    var var_3 = Struct_2(Struct_1(-2147483647i), vec3<bool>((true | all(vec3<bool>(false, false, false))) | !var_1.a.x, !(!(var_1.a.x | var_1.a.x)), any(vec2<bool>(any(vec2<bool>(false, true)), var_1.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-383f, -1000f, 499f), _wgslsmith_f_op_vec3_f32(vec3<f32>(808f, 2318f, -1104f) * vec3<f32>(-1913f, 922f, 336f)))) + vec3<f32>(-917f, 1f, _wgslsmith_f_op_f32(func_3()))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1116f), -376f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -412f)))));
    var var_4 = var_3.b;
    return any(!(!(!select(vec4<bool>(false, true, true, var_1.a.x), vec4<bool>(var_4.x, var_1.a.x, var_4.x, true), vec4<bool>(false, var_3.b.x, var_4.x, var_3.b.x)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = Struct_4(Struct_3(vec2<bool>(true, true)));
    var var_1 = firstTrailingBit(_wgslsmith_div_u32(select(u_input.c, reverseBits(u_input.c), false), 31284u));
    let var_2 = var_0.a;
    let var_3 = Struct_1(max(firstTrailingBit(u_input.a.x), reverseBits(u_input.d)));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1059f);
    return select(select(select(!vec4<bool>(true, true, var_0.a.a.x, arg_1), select(select(vec4<bool>(arg_1, false, var_2.a.x, var_2.a.x), vec4<bool>(true, false, true, arg_1), arg_1), vec4<bool>(var_2.a.x, false, arg_1, var_0.a.a.x), select(vec4<bool>(var_2.a.x, var_0.a.a.x, false, false), vec4<bool>(true, false, false, var_0.a.a.x), arg_1)), select(select(vec4<bool>(true, true, arg_1, true), vec4<bool>(false, true, false, true), vec4<bool>(true, var_0.a.a.x, true, false)), select(vec4<bool>(false, var_2.a.x, var_0.a.a.x, false), vec4<bool>(false, false, true, var_0.a.a.x), vec4<bool>(var_0.a.a.x, var_0.a.a.x, false, true)), select(vec4<bool>(arg_1, arg_1, var_0.a.a.x, var_0.a.a.x), vec4<bool>(true, var_2.a.x, true, arg_1), false))), vec4<bool>(false, any(select(vec2<bool>(false, false), var_0.a.a, var_2.a.x)), arg_1, false), vec4<bool>(true, true, all(vec4<bool>(true, var_0.a.a.x, arg_1, true)) && arg_1, !(!arg_1))), select(!select(!vec4<bool>(true, var_0.a.a.x, arg_1, true), !vec4<bool>(var_0.a.a.x, arg_1, var_0.a.a.x, false), select(vec4<bool>(true, true, var_2.a.x, false), vec4<bool>(var_2.a.x, false, var_0.a.a.x, arg_1), vec4<bool>(false, false, false, true))), !select(select(vec4<bool>(var_0.a.a.x, true, true, arg_1), vec4<bool>(var_0.a.a.x, var_2.a.x, var_2.a.x, true), var_2.a.x), vec4<bool>(var_2.a.x, false, false, false), var_0.a.a.x), var_2.a.x), !all(vec2<bool>(true, true)));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: u32) -> Struct_1 {
    global0 = vec4<u32>(8773u, global0.x & u_input.b, u_input.b, global0.x);
    global0 = ~_wgslsmith_div_vec4_u32(select(vec4<u32>(4294967295u, 1u, u_input.c, arg_3) >> (vec4<u32>(0u, u_input.b, arg_3, u_input.b) % vec4<u32>(32u)), ~(vec4<u32>(u_input.c, arg_0.x, arg_0.x, 6236u) & vec4<u32>(19678u, 15295u, 14269u, 10683u)), !arg_1), min(vec4<u32>(4294967295u, arg_0.x, arg_3, 2742u) | (vec4<u32>(20050u, 60329u, arg_0.x, arg_0.x) >> (vec4<u32>(48638u, arg_3, global0.x, 0u) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(global0.x, 19007u, 38205u, 17514u)), vec4<u32>(78282u, u_input.b, 1u, 0u) >> (vec4<u32>(arg_3, 63598u, arg_3, u_input.b) % vec4<u32>(32u)))));
    global0 = ~(~(~vec4<u32>(global0.x, u_input.c, arg_3, global0.x)) << (~abs(vec4<u32>(1u, 16732u, 14485u, global0.x)) % vec4<u32>(32u))) ^ ~vec4<u32>(~(~1u), 42877u, arg_3, arg_3);
    let var_0 = Struct_4(Struct_3(vec2<bool>(false && !arg_1.x, _wgslsmith_f_op_f32(floor(-308f)) <= _wgslsmith_f_op_f32(ceil(-2693f)))));
    global0 = ~select(~(~vec4<u32>(1u, 43978u, global0.x, 1384u)), ~vec4<u32>(~56110u, arg_0.x, 1u, arg_3), !select(vec4<bool>(false, false, var_0.a.a.x, false), arg_1, true));
    return Struct_1(-28432i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 203f, 235f, -150f), vec4<f32>(1896f, 306f, -935f, -778f), false)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1563f, -328f, -181f, 658f)))))))));
    let var_1 = func_5(global0.wz, !select(func_4(select(vec3<u32>(28919u, 4294967295u, 43426u), vec3<u32>(u_input.b, global0.x, global0.x), false), func_1(), Struct_1(u_input.a.x)), func_4(~global0.zxz, true, Struct_1(u_input.a.x)), ~u_input.a.x != (u_input.d & u_input.d)), vec3<bool>(true, select(false || func_4(vec3<u32>(4294967295u, 18898u, 1u), true, Struct_1(u_input.a.x)).x, true, all(func_4(global0.yzz, false, Struct_1(1i)).yxy)), ~reverseBits(46799u) > ~(~u_input.c)), 48686u);
    global0 = (~_wgslsmith_mult_vec4_u32(~vec4<u32>(global0.x, 1u, 54836u, global0.x), vec4<u32>(global0.x, 1u, 1u, 1u)) & (_wgslsmith_clamp_vec4_u32(max(vec4<u32>(u_input.b, global0.x, 1u, 59317u), vec4<u32>(20752u, global0.x, 4294967295u, global0.x)), vec4<u32>(1u, 2760u, u_input.c, 85697u) << (vec4<u32>(global0.x, global0.x, 28564u, 32996u) % vec4<u32>(32u)), reverseBits(vec4<u32>(4954u, u_input.b, u_input.b, u_input.b))) | ~firstLeadingBit(vec4<u32>(21639u, 1u, global0.x, global0.x)))) & ~(~(~vec4<u32>(u_input.b, global0.x, global0.x, u_input.c) >> (countOneBits(vec4<u32>(1u, 24744u, 59950u, global0.x)) % vec4<u32>(32u))));
    global0 = vec4<u32>(global0.x, countOneBits(u_input.b), u_input.b, select(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global0.x, u_input.b, global0.x, 1u)), ~abs(vec4<u32>(u_input.c, 1u, 91242u, 1u))), ~global0.x ^ ~_wgslsmith_dot_vec2_u32(global0.ww, global0.wy), select(func_2(global0.xz, ~vec4<i32>(-58254i, u_input.d, -154i, -45537i), func_1()).x, true, !all(vec4<bool>(true, true, true, true)))));
    var var_2 = Struct_4(Struct_3(vec2<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false)), func_4(vec3<u32>(u_input.c, 97057u, 4294967295u), all(vec4<bool>(true, true, true, false)), Struct_1(-40759i)).x)));
    var var_3 = var_1;
    let var_4 = Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-34771i, var_3.a, -1i, 20154i), ~vec4<i32>(-36113i, 28030i, -19000i, var_3.a), vec4<i32>(var_1.a, 2147483647i, var_1.a, -2147483647i)), vec4<i32>(0i, ~u_input.d, u_input.d, func_5(global0.yw, vec4<bool>(false, true, true, var_2.a.a.x), vec3<bool>(var_2.a.a.x, var_2.a.a.x, false), 4294967295u).a))), !vec3<bool>(false, !(var_2.a.a.x || true), true), _wgslsmith_f_op_vec3_f32(-var_0.ywx));
    let x = u_input.a;
    s_output = StorageBuffer(4520u);
}

