struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 3>;

var<private> global1: vec3<i32> = vec3<i32>(5445i, 2147483647i, -397i);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec3<bool> {
    var var_0 = select(vec4<u32>(~4294967295u, ~(~1u) & u_input.d.x, _wgslsmith_add_u32(~firstLeadingBit(0u), ~u_input.c), u_input.c), ~firstLeadingBit(_wgslsmith_mult_vec4_u32(reverseBits(u_input.d), ~u_input.d)), select(vec4<bool>(global1.x < 0i, all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), false)), any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), false)), false), vec4<bool>(true, true, true, true), _wgslsmith_add_u32(4294967295u, u_input.d.x << (57777u % 32u)) != 32859u));
    global0 = array<vec2<u32>, 3>();
    var_0 = select(~(~select(vec4<u32>(u_input.d.x, var_0.x, 67991u, 0u), vec4<u32>(u_input.d.x, 4294967295u, 4365u, 4294967295u), true)), _wgslsmith_sub_vec4_u32(min(reverseBits(u_input.d), vec4<u32>(var_0.x, 16329u, 0u, u_input.d.x)), reverseBits(u_input.d) >> (~vec4<u32>(var_0.x, 1u, 1u, u_input.d.x) % vec4<u32>(32u))), !any(vec2<bool>(true, true))) | vec4<u32>(0u, 8744u, ~(~var_0.x), abs(57228u));
    let var_1 = vec4<i32>(-1i) * -(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 10572i, global1.x, -2147483647i), vec4<i32>(u_input.a.x, global1.x, -94728i, 0i)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(step(-109f, 596f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2296f))), -102f)) * 766f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-430f - _wgslsmith_f_op_f32(767f + -1760f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-114f + 777f)))));
    return select(select(vec3<bool>(true, abs(global1.x) <= 0i, false), vec3<bool>(u_input.c < 30364u, ~u_input.d.x <= firstLeadingBit(0u), false), vec3<bool>(true, true, true)), !(!vec3<bool>(all(vec4<bool>(false, false, true, true)), false, true)), !vec3<bool>(all(vec2<bool>(true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), any(vec4<bool>(false, false, false, false))));
}

fn func_4(arg_0: bool) -> i32 {
    let var_0 = !func_3().yz;
    var var_1 = Struct_2(!select(vec4<bool>(true, arg_0, arg_0, !arg_0), select(!vec4<bool>(arg_0, false, arg_0, var_0.x), select(vec4<bool>(false, false, true, false), vec4<bool>(arg_0, arg_0, true, true), false), u_input.c == u_input.c), !vec4<bool>(arg_0, true, var_0.x, var_0.x)), ~u_input.d.xzw, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1206f, 1050f, 1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1333f, 1000f, -1181f) * vec3<f32>(-1000f, 1408f, -509f)), arg_0)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1069f, 1730f, 328f)), vec3<f32>(-1478f, 564f, 384f)))), -1000f), -global1.xz);
    let var_2 = Struct_3(798f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -601f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_1.c.a.x))))), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(var_1.b.x, u_input.d.x, var_1.b.x), var_1.b), var_1.b, all(var_1.a)), u_input.d.xxw), 1u), Struct_2(!vec4<bool>(!var_1.a.x, -1013f <= var_1.c.a.x, false, arg_0), vec3<u32>(firstLeadingBit(u_input.c), _wgslsmith_clamp_u32(0u, u_input.c, reverseBits(31017u)), ~(~var_1.b.x)), Struct_1(_wgslsmith_f_op_vec3_f32(var_1.c.a - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.b, var_1.c.a.x, var_1.c.a.x) * var_1.c.a)), _wgslsmith_div_f32(var_1.c.a.x, _wgslsmith_f_op_f32(abs(-1048f)))), firstLeadingBit(u_input.a)), abs(var_1.b.x));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-740f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(291f))))), var_2.c.c.b, _wgslsmith_f_op_f32(-var_1.c.b)));
    var var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -313f) + var_1.c.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -900f)), var_2.c.a.x)) >= var_2.c.c.a.x;
    return -_wgslsmith_mult_i32(var_1.d.x, 17030i);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: vec3<f32>) -> f32 {
    global0 = array<vec2<u32>, 3>();
    var var_0 = _wgslsmith_div_i32(u_input.b, -(global1.x ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, global1.x, 2147483647i), vec3<i32>(global1.x, u_input.a.x, u_input.b) >> (u_input.d.yyx % vec3<u32>(32u)))));
    global0 = array<vec2<u32>, 3>();
    var_0 = func_4(any(select(vec3<bool>(true, true, -2147483647i < u_input.b), func_3(), vec3<bool>(true, true, true))));
    var_0 = _wgslsmith_dot_vec2_i32(u_input.a, abs(~_wgslsmith_clamp_vec2_i32(reverseBits(u_input.a), abs(global1.zy), firstTrailingBit(u_input.a))));
    return arg_3.x;
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(min(992f, arg_1.c.c.a.x));
    var var_1 = arg_1.c.a;
    return Struct_2(select(vec4<bool>(arg_0 < arg_0, ~103481u <= ~u_input.c, !arg_1.a, true), select(vec4<bool>(true & arg_1.a, true, true, all(var_1.yz)), !arg_1.c.a, all(func_3().yx)), false), u_input.d.ywy, arg_1.c.c, u_input.a);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(-global1.zx, u_input.a & _wgslsmith_mod_vec2_i32(u_input.a, select(global1.zz, global1.zz, vec2<bool>(true, false)))), global1.zx);
    let var_1 = Struct_3(true, _wgslsmith_sub_u32(select(~0u << (~4294967295u % 32u), u_input.c, all(vec2<bool>(true, true))), u_input.c), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-216f)) * _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1128f, -1521f, -1407f, -358f)), global0[_wgslsmith_index_u32(52244u, 3u)] ^ u_input.d.xx, Struct_4(Struct_1(vec3<f32>(-437f, 571f, -974f), -568f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(981f, -1142f, 204f) * vec3<f32>(-1000f, 160f, -585f))))), Struct_3(false, (u_input.c >> (u_input.c % 32u)) ^ ~4294967295u, Struct_2(vec4<bool>(false, false, true, true), vec3<u32>(55521u, 0u, u_input.c), Struct_1(vec3<f32>(1494f, -118f, -1000f), 1630f), vec2<i32>(2147483647i, -1i)), 44192u)), 1u);
    var var_2 = ~min(~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, 0i, var_0.x), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, var_0.x, 0i), vec3<i32>(-2147483647i, global1.x, 1i)), min(vec3<i32>(1i, global1.x, -7098i), vec3<i32>(global1.x, 1i, 14420i))), _wgslsmith_mod_vec3_i32(vec3<i32>(func_4(var_1.c.a.x), -2147483647i, 1i), abs(vec3<i32>(var_1.c.d.x, -1i, var_1.c.d.x))));
    let var_3 = global1.x;
    return func_5(_wgslsmith_f_op_f32(f32(-1f) * -1553f), Struct_3(~var_1.c.b.x == var_1.b, 1u, func_5(_wgslsmith_f_op_f32(-741f - var_1.c.c.a.x), Struct_3(true, _wgslsmith_mult_u32(13755u, 22089u), func_5(var_1.c.c.a.x, Struct_3(true, 4294967295u, Struct_2(vec4<bool>(true, false, true, true), vec3<u32>(0u, 99641u, 35316u), Struct_1(vec3<f32>(var_1.c.c.b, var_1.c.c.b, 555f), var_1.c.c.a.x), u_input.a), 0u)), var_1.d)), u_input.c)).c;
}

fn func_6(arg_0: Struct_4) -> u32 {
    var var_0 = vec4<bool>(false, func_3().x & (!(u_input.d.x == 8777u) || any(func_3().zz)), all(vec2<bool>(all(vec2<bool>(true, true)) & true, true)), false);
    let var_1 = abs(vec3<u32>(u_input.c, _wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 3067u), ~vec2<u32>(24786u, u_input.d.x))), 4294967295u));
    let var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_add_u32(u_input.d.x, _wgslsmith_div_u32(96505u, 4294967295u)), u_input.c << (func_5(arg_0.a.b, Struct_3(true, u_input.d.x, Struct_2(vec4<bool>(var_0.x, true, var_0.x, var_0.x), u_input.d.zzz, Struct_1(vec3<f32>(arg_0.a.b, arg_0.a.b, -2095f), arg_0.a.b), vec2<i32>(-1i, -43638i)), 4294967295u)).b.x % 32u), (var_1.x >> (0u % 32u)) & _wgslsmith_mod_u32(4294967295u, 4294967295u), _wgslsmith_sub_u32(u_input.c, 18004u)), ~vec4<u32>(abs(var_1.x), ~_wgslsmith_div_u32(var_1.x, var_1.x), 20871u, 44100u));
    let var_3 = 25135u;
    let var_4 = Struct_5(func_5(_wgslsmith_f_op_f32(abs(arg_0.a.a.x)), Struct_3(!var_0.x, var_2 >> (~var_3 % 32u), Struct_2(!vec4<bool>(var_0.x, var_0.x, true, true), _wgslsmith_clamp_vec3_u32(vec3<u32>(83234u, u_input.c, 4294967295u), var_1, vec3<u32>(var_2, u_input.c, 41194u)), arg_0.a, _wgslsmith_mult_vec2_i32(u_input.a, global1.yy)), select(1u, 4294967295u, false) & var_2)), Struct_3(true, ~(~(~var_3)), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(516f, 808f))), Struct_3(var_1.x <= 21451u, ~var_3, Struct_2(vec4<bool>(true, false, false, var_0.x), var_1, arg_0.a, u_input.a), var_1.x)), u_input.c << (var_1.x % 32u)));
    return 4559u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(true, ~func_6(Struct_4(func_1())), Struct_2(vec4<bool>(any(vec2<bool>(true, true)), -7159i > _wgslsmith_clamp_i32(-4508i, u_input.a.x, -10501i), true, all(select(vec2<bool>(true, true), vec2<bool>(false, false), true))), u_input.d.zwz, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-997f, 634f, 2616f))), 186f), (~global1.zz & -u_input.a) | -vec2<i32>(u_input.a.x, global1.x)), _wgslsmith_mod_u32(u_input.d.x, _wgslsmith_dot_vec4_u32(u_input.d, u_input.d)));
    global0 = array<vec2<u32>, 3>();
    let var_1 = Struct_5(var_0.c, Struct_3(!(98005u >= u_input.d.x), abs(1u), var_0.c, reverseBits(u_input.c) | ~_wgslsmith_clamp_u32(41786u, 27710u, 4294967295u)));
    let var_2 = vec2<bool>(var_1.a.a.x, any(select(select(vec4<bool>(var_0.c.a.x, var_1.a.a.x, var_1.b.a, var_0.a), var_0.c.a, var_1.a.a.x), !vec4<bool>(var_0.c.a.x, false, var_0.c.a.x, var_0.a), true || !var_1.a.a.x)));
    var var_3 = Struct_4(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_0.c.c.a)), vec3<f32>(var_1.b.c.c.b, -1067f, var_1.b.c.c.b)), var_0.c.c.b));
    var var_4 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(var_1.b.c.c.a * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.c.a.x, -240f, var_3.a.b) + vec3<f32>(var_1.a.c.b, var_3.a.b, -1092f)), func_5(743f, var_0).c.a)), var_1.a.c.b));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

