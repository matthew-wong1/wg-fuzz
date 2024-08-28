struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<u32>(1u, 0u), false, vec3<f32>(548f, -1043f, 1366f)), Struct_1(vec2<u32>(1u, 4294967295u), false, vec3<f32>(1053f, -777f, 1000f)), -31267i, vec3<i32>(0i, 60417i, i32(-2147483648)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec2<u32>) -> i32 {
    global0 = Struct_2(global0.a, Struct_1(reverseBits(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a, arg_1), ~4294967295u)), !global0.b.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(global0.b.c)), global0.b.c)) * global0.b.c)), _wgslsmith_add_i32(_wgslsmith_mod_i32(firstLeadingBit(-10435i), max(arg_0, 0i)), ~0i >> ((4294967295u | u_input.a.x) % 32u)) | ~_wgslsmith_add_i32(u_input.d.x, ~u_input.c.x), ~vec3<i32>(_wgslsmith_clamp_i32(1i, 20028i, abs(49426i)), _wgslsmith_sub_i32(firstTrailingBit(-17509i), _wgslsmith_sub_i32(46785i, -1i)), global0.d.x));
    var var_0 = Struct_3(Struct_2(Struct_1(max(vec2<u32>(0u, 0u), reverseBits(vec2<u32>(1u, arg_1.x))), all(select(vec2<bool>(global0.a.b, true), vec2<bool>(global0.b.b, global0.a.b), global0.b.b)), vec3<f32>(-516f, _wgslsmith_f_op_f32(-global0.a.c.x), 1000f)), global0.b, ~_wgslsmith_sub_i32(global0.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-7937i, -89574i, u_input.e), global0.d)), vec3<i32>(max(~0i, 0i), ~firstLeadingBit(u_input.e), _wgslsmith_div_i32(_wgslsmith_add_i32(arg_0, 51582i), abs(u_input.d.x)))), global0.a.c.x, 2676f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.c.x * -747f)), -238f, _wgslsmith_f_op_f32(-global0.a.c.x), 872f)));
    let var_1 = global0.b.c.x;
    var var_2 = Struct_3(var_0.a, -1074f, _wgslsmith_f_op_f32(-global0.a.c.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-622f * global0.b.c.x), 445f, _wgslsmith_f_op_f32(round(global0.a.c.x)), -273f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_0.d, var_0.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(var_0.d, var_0.d), _wgslsmith_f_op_vec4_f32(var_0.d - var_0.d), vec4<bool>(true, true, true, true))))));
    var var_3 = var_2.a.a.a.x;
    return var_0.a.c;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    global0 = Struct_2(Struct_1(arg_0.a, false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.c.x - 2517f), _wgslsmith_f_op_f32(-1000f * arg_0.c.x), _wgslsmith_f_op_f32(global0.b.c.x + 399f)))), arg_0, _wgslsmith_div_i32(u_input.e, reverseBits(countOneBits(i32(-1i) * -26599i))), global0.d);
    var var_0 = true;
    let var_1 = ~(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(15263u, global0.a.a.x, 4294967295u), vec3<u32>(arg_0.a.x, arg_0.a.x, 1u)) >> (~vec3<u32>(4294967295u, u_input.a.x, 37398u) % vec3<u32>(32u))) & _wgslsmith_div_vec3_u32(vec3<u32>(0u, reverseBits(1u), _wgslsmith_sub_u32(arg_0.a.x, 60313u)), ~(~vec3<u32>(arg_0.a.x, u_input.a.x, global0.a.a.x))));
    let var_2 = Struct_1(~_wgslsmith_clamp_vec2_u32(global0.b.a ^ firstTrailingBit(vec2<u32>(u_input.a.x, var_1.x)), ~max(arg_0.a, vec2<u32>(arg_0.a.x, arg_0.a.x)), ~abs(global0.b.a)), !(u_input.a.x <= (reverseBits(49715u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(4031u, 0u, 0u, u_input.a.x), vec4<u32>(u_input.a.x, 22566u, arg_0.a.x, 9544u)) % 32u))), _wgslsmith_f_op_vec3_f32(global0.b.c + arg_0.c));
    let var_3 = ~vec4<i32>(u_input.c.x, func_3(-1i & u_input.b.x, arg_0.a), _wgslsmith_dot_vec2_i32(-u_input.b, vec2<i32>(-11187i, global0.d.x)), 2147483647i) << ((vec4<u32>(select(_wgslsmith_mod_u32(13036u, 1u), 1u, select(true, arg_0.b, arg_0.b)), ~50458u ^ abs(arg_0.a.x), _wgslsmith_sub_u32(arg_0.a.x, _wgslsmith_mod_u32(arg_0.a.x, 0u)), var_2.a.x & 1u) >> (~vec4<u32>(~1u, var_1.x, var_2.a.x << (var_2.a.x % 32u), 1u) % vec4<u32>(32u))) % vec4<u32>(32u));
    return Struct_2(Struct_1(min(arg_0.a, min(~vec2<u32>(62276u, var_1.x), u_input.a)), select(true, any(vec4<bool>(global0.b.b, true, arg_0.b, false)), 320f != global0.a.c.x), arg_0.c), Struct_1(reverseBits(vec2<u32>(u_input.a.x, 3486u) | global0.b.a) >> (abs(_wgslsmith_add_vec2_u32(var_2.a, global0.a.a)) % vec2<u32>(32u)), any(vec2<bool>(arg_0.b, select(arg_0.b, arg_0.b, global0.a.b))), var_2.c), ~0i, var_3.yyw);
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: vec4<f32>) -> Struct_1 {
    global0 = func_2(Struct_1(_wgslsmith_clamp_vec2_u32(~(global0.a.a << (vec2<u32>(arg_0, u_input.a.x) % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(vec2<u32>(global0.a.a.x, 1u), ~u_input.a), u_input.a), global0.b.b, global0.b.c));
    global0 = func_2(Struct_1(global0.b.a, all(vec3<bool>(global0.b.b, true, !global0.b.b)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_3.wyx * arg_3.wzx) + arg_3.wyy)))));
    let var_0 = select(!vec4<bool>(false, true, !global0.a.b, true), vec4<bool>(true, false, false, any(select(vec4<bool>(global0.b.b, global0.a.b, global0.a.b, global0.b.b), vec4<bool>(true, global0.b.b, false, global0.a.b), global0.a.b)) == any(vec3<bool>(false, false, false))), vec4<bool>(0u != _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0, arg_0), _wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(42173u, 5357u))), any(!(!vec4<bool>(false, global0.b.b, false, global0.b.b))), (u_input.e != _wgslsmith_dot_vec3_i32(vec3<i32>(global0.c, -16761i, -57082i), global0.d)) & global0.a.b, !all(select(vec3<bool>(global0.b.b, true, true), vec3<bool>(global0.b.b, global0.b.b, true), vec3<bool>(global0.a.b, false, false)))));
    global0 = Struct_2(global0.b, global0.b, 1i, arg_1.zwz ^ arg_1.yyz);
    var var_1 = !var_0.xyw;
    return Struct_1(firstTrailingBit(global0.a.a), !global0.a.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(2326f)), _wgslsmith_f_op_f32(global0.b.c.x - arg_3.x), _wgslsmith_f_op_f32(f32(-1f) * -1038f))) + _wgslsmith_f_op_vec3_f32(global0.b.c + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1182f, -725f, 1143f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(Struct_1(~u_input.a >> (~u_input.a % vec2<u32>(32u)), true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b.c), _wgslsmith_f_op_vec3_f32(global0.a.c * vec3<f32>(global0.a.c.x, 2317f, global0.a.c.x)))), func_1(~(~u_input.a.x), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.e, -57283i, 36436i), vec4<i32>(global0.d.x, 2147483647i, u_input.c.x, u_input.d.x)), ~vec4<i32>(1i, 0i, u_input.b.x, global0.c)), _wgslsmith_add_vec4_i32(-vec4<i32>(1i, -29333i, u_input.c.x, u_input.b.x), -vec4<i32>(1i, u_input.e, -1i, -16326i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-822f, 1592f, global0.a.c.x, -901f), vec4<f32>(-1654f, 757f, global0.a.c.x, 627f)))), global0.c, select(reverseBits(firstTrailingBit(global0.d)), -firstTrailingBit(u_input.c), true)), 643f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-685f - 2008f), _wgslsmith_f_op_f32(func_2(func_2(Struct_1(global0.a.a, global0.a.b, global0.a.c)).a).a.c.x - global0.b.c.x)), vec4<f32>(_wgslsmith_f_op_f32(240f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -572f))), 114f, global0.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(345f)) * global0.a.c.x) - global0.a.c.x)));
    let var_1 = Struct_3(func_2(Struct_1(~vec2<u32>(33148u, 3558u), var_0.a.b.b, vec3<f32>(-425f, _wgslsmith_f_op_f32(max(405f, global0.a.c.x)), var_0.a.b.c.x))), _wgslsmith_f_op_f32(min(1576f, -190f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + var_0.d.x)), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.b.c.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_0.c)), global0.a.c.x, any(select(vec2<bool>(true, var_0.a.a.b), vec2<bool>(var_0.a.b.b, var_0.a.b.b), vec2<bool>(global0.b.b, false))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1443f * _wgslsmith_f_op_f32(max(var_0.b, 602f))))), global0.b.c.x));
    global0 = Struct_2(Struct_1(~vec2<u32>(global0.a.a.x, 4294967295u), var_1.a.a.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, global0.b.c.x, global0.a.c.x) + _wgslsmith_f_op_vec3_f32(-var_0.a.b.c)))), func_1(~50472u >> (var_1.a.b.a.x % 32u), -vec4<i32>(0i, _wgslsmith_mult_i32(var_0.a.c, -1i), -26823i, var_1.a.c), max(vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.a.d, global0.d), min(var_0.a.c, -18330i), 0i << (global0.a.a.x % 32u), global0.c), abs(select(vec4<i32>(global0.c, 2147483647i, -1i, var_0.a.c), vec4<i32>(var_0.a.d.x, var_1.a.d.x, 42600i, -1i), false))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -855f)), _wgslsmith_f_op_f32(round(func_1(46674u, vec4<i32>(global0.c, -2147483647i, var_0.a.c, 2147483647i), vec4<i32>(u_input.b.x, var_0.a.c, global0.d.x, 47329i), var_0.d).c.x)), global0.b.c.x, 691f)), _wgslsmith_mod_i32(var_0.a.d.x, var_1.a.c), -(~(~vec3<i32>(2147483647i, -1i, 25420i) << ((vec3<u32>(u_input.a.x, 1u, var_1.a.b.a.x) ^ vec3<u32>(32230u, 0u, 25152u)) % vec3<u32>(32u)))));
    var var_2 = var_1.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(63664u, global0.b.a.x, var_0.a.a.a.x, u_input.a.x) | ~vec4<u32>(35393u, u_input.a.x, 4294967295u, 4294967295u)));
}

