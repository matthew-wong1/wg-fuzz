struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<bool>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(73302i, -1i, 31696i), vec2<f32>(1903f, 965f), vec2<bool>(true, true), false, 0u);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_4, arg_3: vec4<i32>) -> vec4<i32> {
    global0 = Struct_1(firstTrailingBit(abs(select(global0.a, vec3<i32>(-29701i, 13348i, 17909i), !vec3<bool>(arg_0, global0.c.x, false)))), global0.b, global0.c, true, ~min(_wgslsmith_mod_u32(arg_2.d.b.d.x, 1u), ~firstTrailingBit(global0.e)));
    global0 = Struct_1(arg_3.wyw, _wgslsmith_f_op_vec2_f32(max(global0.b, global0.b)), vec2<bool>(!(!arg_2.c) & arg_0, !(!arg_0)), !arg_0 | false, _wgslsmith_sub_u32(4294967295u, u_input.a));
    let var_0 = arg_2;
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(min(var_0.d.b.a, _wgslsmith_f_op_vec2_f32(min(var_0.d.b.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d.b.c, global0.b.x)))))), _wgslsmith_dot_vec2_i32(select(-vec2<i32>(-48703i, 46696i), -arg_3.yz, 13023i <= global0.a.x), _wgslsmith_clamp_vec2_i32(arg_3.xy, vec2<i32>(63524i, arg_3.x), arg_3.wy)) & -_wgslsmith_div_i32(max(0i, -3545i), arg_2.d.b.b), _wgslsmith_f_op_f32(-780f * _wgslsmith_f_op_f32(-var_0.d.b.e)), reverseBits(arg_2.d.b.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -280f)));
    let var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(-1i, ~2147483647i) | var_1.b, 1i), _wgslsmith_add_vec2_i32(global0.a.xx, arg_3.xw ^ arg_3.zz) ^ global0.a.zy);
    return _wgslsmith_div_vec4_i32(-(~select(vec4<i32>(global0.a.x, 0i, var_1.b, var_2.x), arg_3, vec4<bool>(true, true, false, true))) << (_wgslsmith_div_vec4_u32(~vec4<u32>(arg_2.b, u_input.a, 8511u, u_input.a) & _wgslsmith_add_vec4_u32(vec4<u32>(var_1.d.x, 36482u, var_1.d.x, 68642u), vec4<u32>(var_1.d.x, 1u, global0.e, u_input.a)), vec4<u32>(6494u << (var_0.b % 32u), ~1u, var_0.d.b.d.x, _wgslsmith_mod_u32(12934u, var_1.d.x))) % vec4<u32>(32u)), vec4<i32>(var_0.a, var_2.x, -_wgslsmith_dot_vec4_i32(arg_3, arg_3), ~(~var_2.x)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<i32>) -> bool {
    global0 = Struct_1(global0.a, global0.b, global0.c, true, arg_0.x & 11305u);
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.b.x, 534f), global0.b)), _wgslsmith_f_op_vec2_f32(abs(global0.b)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, global0.b.x))))), arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global0.b.x)), global0.b.x, true)) * global0.b.x), _wgslsmith_mult_vec3_u32(~(~(arg_0.wwy << (vec3<u32>(35892u, 67684u, 18553u) % vec3<u32>(32u)))), arg_0.zyz), 385f);
    var var_1 = vec3<i32>(func_3(true | global0.c.x, -1i, Struct_4(-54287i, 4294967295u << (u_input.a % 32u), global0.c.x, Struct_3(arg_1.x, Struct_2(var_0.a, 2147483647i, global0.b.x, arg_0.xxz, -152f))), arg_1).x, var_0.b, var_0.b) ^ arg_1.zxz;
    global0 = Struct_1(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_1.x, 1i), 0i), ~1i, global0.a.x), _wgslsmith_f_op_vec2_f32(-global0.b), select(!select(vec2<bool>(global0.c.x, global0.c.x), global0.c, global0.c.x), vec2<bool>(true, all(select(global0.c, global0.c, vec2<bool>(true, false)))), !global0.d), true, ~abs(_wgslsmith_div_u32(global0.e, 15995u) >> (var_0.d.x % 32u)));
    let var_2 = Struct_4(_wgslsmith_clamp_i32(~firstLeadingBit(-1i), 2147483647i, -14998i), _wgslsmith_mult_u32(arg_0.x >> ((~var_0.d.x >> (global0.e % 32u)) % 32u), _wgslsmith_mod_u32(0u, 0u << (var_0.d.x % 32u)) << (33730u % 32u)), any(!vec2<bool>(false, false && global0.c.x)), Struct_3(1i, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-401f, global0.b.x))), var_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(floor(global0.b.x))), ~(~vec3<u32>(5625u, 4294967295u, global0.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c, -1144f, global0.c.x))))));
    return true;
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: bool) -> vec3<i32> {
    let var_0 = -1i;
    let var_1 = vec4<u32>(~arg_2.x, _wgslsmith_add_u32(4600u, arg_1.x), ~min(u_input.a & ~40336u, 1u), ~global0.e);
    let var_2 = Struct_1(firstTrailingBit(vec3<i32>(var_0, _wgslsmith_sub_i32(abs(global0.a.x), 1i), firstTrailingBit(-86492i))), global0.b, vec2<bool>(all(global0.c), _wgslsmith_add_i32(~(-5220i), -7840i) < reverseBits(~global0.a.x)), func_4(vec4<u32>(~35002u, var_1.x, arg_1.x, var_1.x), ~func_3(arg_3, ~global0.a.x, Struct_4(var_0, arg_1.x, true, Struct_3(-41043i, Struct_2(vec2<f32>(-1688f, global0.b.x), arg_0, -1000f, var_1.wyz, 270f))), vec4<i32>(-2147483647i, -2147483647i, -1i, var_0))), ~_wgslsmith_mult_u32(14679u >> (0u % 32u), (u_input.a ^ 1u) | reverseBits(12983u)));
    global0 = Struct_1(vec3<i32>(i32(-1i) * -1i, min(global0.a.x ^ _wgslsmith_dot_vec2_i32(vec2<i32>(7589i, var_2.a.x), vec2<i32>(arg_0, 2147483647i)), abs(global0.a.x)), 26914i), var_2.b, !select(vec2<bool>(false, true), vec2<bool>(!var_2.c.x, true), true), all(var_2.c), arg_1.x);
    global0 = Struct_1(vec3<i32>(-abs(var_2.a.x), i32(-1i) * -arg_0, ~_wgslsmith_mod_i32(1i, var_0)) << (vec3<u32>(arg_1.x, ~43127u | global0.e, arg_2.x) % vec3<u32>(32u)), _wgslsmith_div_vec2_f32(var_2.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(var_2.b, vec2<f32>(-134f, global0.b.x), true)))) * _wgslsmith_f_op_vec2_f32(var_2.b - vec2<f32>(global0.b.x, global0.b.x)))), select(var_2.c, vec2<bool>(!(global0.c.x && global0.d), _wgslsmith_f_op_f32(ceil(var_2.b.x)) < _wgslsmith_f_op_f32(min(-518f, -184f))), select(!select(var_2.c, vec2<bool>(arg_3, true), var_2.c), select(var_2.c, !var_2.c, true), select(!var_2.c, vec2<bool>(arg_3, true), global0.c))), var_2.c.x, var_1.x);
    return var_2.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> vec2<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-global0.b), -(_wgslsmith_sub_i32(33885i, i32(-1i) * -11044i) ^ -abs(arg_0.a.x)), _wgslsmith_f_op_f32(-arg_3.x), vec3<u32>(20562u, 68855u, arg_2.e), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -878f))))));
    global0 = Struct_1(~vec3<i32>(-countOneBits(-6685i), -1i << (1u % 32u), arg_2.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b.x, arg_2.b.x) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.b.x, var_0.a.x))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b.x, 571f), arg_3.zx))))), !arg_0.c, arg_1.c.x, u_input.a);
    let var_1 = 49428i;
    var var_2 = _wgslsmith_div_i32(_wgslsmith_div_i32(-_wgslsmith_sub_i32(global0.a.x, _wgslsmith_clamp_i32(var_1, global0.a.x, arg_0.a.x)), -_wgslsmith_sub_i32(-1775i, _wgslsmith_div_i32(var_0.b, global0.a.x))), arg_2.a.x);
    let var_3 = vec3<bool>(arg_1.d, all(vec3<bool>(_wgslsmith_f_op_f32(-2699f + global0.b.x) >= _wgslsmith_f_op_f32(floor(406f)), false, global0.d)), all(vec2<bool>(!(!global0.c.x), true)));
    return global0.a.yx;
}

fn func_6(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_4 {
    let var_0 = Struct_3(_wgslsmith_sub_i32(countOneBits(1i), max(_wgslsmith_clamp_i32(-1i, -2147483647i, abs(arg_1.x)), max(i32(-1i) * -4475i, -arg_0.b))), arg_0);
    global0 = Struct_1(global0.a, global0.b, global0.c, false && global0.d, _wgslsmith_div_u32(min(62415u, _wgslsmith_div_u32(51197u, ~arg_0.d.x)), arg_0.d.x));
    global0 = Struct_1(countOneBits(_wgslsmith_div_vec3_i32(global0.a, global0.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1026f, -603f))))), global0.c, func_4(vec4<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, global0.e)), _wgslsmith_clamp_vec2_u32(var_0.b.d.yx, vec2<u32>(0u, var_0.b.d.x), var_0.b.d.yz)), 4294967295u, var_0.b.d.x, 10289u), ((vec4<i32>(global0.a.x, arg_1.x, 87798i, -10078i) & vec4<i32>(35692i, var_0.a, var_0.a, -5099i)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 35920u, 67045u, 1u), vec4<u32>(4294967295u, arg_0.d.x, 78655u, u_input.a)) % vec4<u32>(32u))) << ((vec4<u32>(0u, arg_0.d.x, 1u, var_0.b.d.x) >> (reverseBits(vec4<u32>(u_input.a, 1u, 62218u, arg_0.d.x)) % vec4<u32>(32u))) % vec4<u32>(32u))), min(max(min(u_input.a ^ arg_0.d.x, 55586u), ~_wgslsmith_mult_u32(68668u, 8056u)), ~_wgslsmith_add_u32(countOneBits(arg_0.d.x), firstLeadingBit(global0.e))));
    global0 = Struct_1(_wgslsmith_mult_vec3_i32(max(countOneBits(global0.a), vec3<i32>(var_0.b.b, global0.a.x, arg_0.b) & select(vec3<i32>(arg_1.x, var_0.b.b, 40089i), global0.a, true)), ~(-min(global0.a, vec3<i32>(1i, global0.a.x, -1616i)))), global0.b, select(!select(!global0.c, !vec2<bool>(global0.d, global0.d), !vec2<bool>(global0.c.x, global0.c.x)), vec2<bool>(true, !global0.c.x), global0.d), !(!any(select(vec3<bool>(false, global0.c.x, false), vec3<bool>(true, false, global0.d), global0.d))), _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(select(12904u, global0.e, false), u_input.a), var_0.b.d.x), 45317u));
    global0 = Struct_1(_wgslsmith_add_vec3_i32(global0.a, global0.a), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.b.a, vec2<f32>(var_0.b.a.x, -413f), true)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.b.a.x, var_0.b.a.x), arg_0.a)))))), vec2<bool>(global0.c.x, global0.c.x), all(vec4<bool>(!any(vec2<bool>(false, false)), !all(vec4<bool>(false, global0.c.x, global0.d, global0.c.x)), (var_0.b.b | global0.a.x) >= countOneBits(-5705i), global0.c.x)), var_0.b.d.x);
    return Struct_4(arg_1.x, ~4294967295u, global0.d, var_0);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> bool {
    let var_0 = func_6(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-783f, 1361f) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_3.a.x, 1014f))))), global0.a.x, _wgslsmith_f_op_f32(-1530f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), ~_wgslsmith_mod_vec3_u32(arg_3.d, _wgslsmith_clamp_vec3_u32(arg_3.d, arg_3.d, arg_3.d)), _wgslsmith_f_op_f32(f32(-1f) * -826f)), func_5(Struct_1(func_2(_wgslsmith_add_i32(arg_3.b, global0.a.x), vec2<u32>(20248u, global0.e), _wgslsmith_add_vec2_u32(arg_3.d.xy, arg_3.d.zz), arg_0), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(475f, 636f))))), vec2<bool>(!arg_1, select(false, arg_0, arg_0)), !(!arg_0), ~_wgslsmith_clamp_u32(arg_3.d.x, 45896u, u_input.a)), Struct_1(global0.a, global0.b, !global0.c, any(global0.c), arg_3.d.x), Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, arg_3.e), global0.b) * _wgslsmith_f_op_vec2_f32(-arg_3.a)), !select(global0.c, vec2<bool>(arg_1, true), false), any(vec2<bool>(true, arg_0)), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global0.e, arg_3.d.x, u_input.a, arg_3.d.x)), countOneBits(vec4<u32>(0u, 23128u, 1u, 4294967295u)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1289f, arg_2, arg_2), vec3<f32>(-417f, arg_2, arg_2))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1616f, -885f, arg_2))))))));
    return arg_0;
}

fn func_7(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = Struct_3(-2147483647i, arg_2.d.b);
    var var_1 = func_6(func_6(func_6(func_6(func_6(Struct_2(arg_1.xx, 0i, arg_2.d.b.a.x, vec3<u32>(arg_2.b, var_0.b.d.x, global0.e), arg_3.a.x), vec2<i32>(1i, arg_3.b)).d.b, -global0.a.yx).d.b, global0.a.xy ^ (vec2<i32>(arg_3.b, -258i) | vec2<i32>(global0.a.x, 14658i))).d.b, global0.a.xz).d.b, countOneBits(_wgslsmith_add_vec2_i32(global0.a.xz, -vec2<i32>(1i, arg_3.b))) | -((vec2<i32>(var_0.a, -290i) | global0.a.yy) >> (vec2<u32>(arg_3.d.x, arg_2.b) % vec2<u32>(32u)))).c;
    let var_2 = _wgslsmith_sub_i32(min(var_0.b.b, 2147483647i), i32(-1i) * -func_3(global0.c.x, var_0.b.b, arg_2, _wgslsmith_div_vec4_i32(vec4<i32>(17373i, var_0.a, global0.a.x, var_0.b.b), vec4<i32>(global0.a.x, global0.a.x, 1i, global0.a.x))).x);
    var var_3 = global0.d;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1673f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d.b.c) - var_0.b.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -955f), -373f);
    return vec4<bool>(global0.c.x, any(!select(vec3<bool>(false, true, true), select(vec3<bool>(true, arg_2.c, arg_2.c), vec3<bool>(false, true, global0.d), vec3<bool>(true, false, false)), !vec3<bool>(false, global0.d, global0.d))), !arg_2.c, global0.c.x | false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(~global0.e, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.b.x, global0.b.x, global0.b.x), vec3<f32>(global0.b.x, 850f, global0.b.x)) * vec3<f32>(-1346f, -1272f, global0.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.b.x, -1146f, -1033f))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(240f, 267f, global0.b.x)), vec3<f32>(global0.b.x, -1149f, 156f), true))), vec3<bool>(!global0.c.x | true, !(global0.b.x == global0.b.x), !func_1(false, global0.d, 867f, Struct_2(global0.b, global0.a.x, global0.b.x, vec3<u32>(31603u, global0.e, global0.e), 1254f))))), func_6(func_6(func_6(Struct_2(vec2<f32>(433f, -1385f), -19865i, global0.b.x, vec3<u32>(4294967295u, global0.e, u_input.a), 678f), _wgslsmith_div_vec2_i32(global0.a.yz, vec2<i32>(7894i, global0.a.x))).d.b, global0.a.xy).d.b, vec2<i32>(34985i, -global0.a.x)), func_6(func_6(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global0.b.x) + global0.b), global0.a.x, 1353f, vec3<u32>(u_input.a, 27781u, 21330u) | vec3<u32>(global0.e, u_input.a, global0.e), 768f), vec2<i32>(global0.a.x, _wgslsmith_sub_i32(global0.a.x, global0.a.x))).d.b, _wgslsmith_mult_vec2_i32(~(vec2<i32>(48157i, -1i) & global0.a.xx), _wgslsmith_sub_vec2_i32(global0.a.zz, global0.a.zx))).d.b);
    var var_1 = min(vec2<i32>(global0.a.x, func_5(Struct_1(select(global0.a, global0.a, var_0.x), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.b.x, global0.b.x))), vec2<bool>(var_0.x, var_0.x), true, abs(0u)), Struct_1(-vec3<i32>(global0.a.x, 34942i, global0.a.x), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.b.x, global0.b.x), vec2<f32>(global0.b.x, 242f))), var_0.zx, global0.d, _wgslsmith_mod_u32(global0.e, u_input.a)), Struct_1(~global0.a, vec2<f32>(global0.b.x, 775f), !vec2<bool>(var_0.x, global0.c.x), var_0.x, 32896u), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(169f, global0.b.x, global0.b.x) * vec3<f32>(global0.b.x, 734f, 1020f))))).x), global0.a.zz ^ global0.a.zz);
    let var_2 = Struct_2(global0.b, _wgslsmith_add_i32(~abs(~global0.a.x), func_5(Struct_1(global0.a, vec2<f32>(-942f, -498f), var_0.yy, false, 1u), Struct_1(vec3<i32>(global0.a.x, -2147483647i, 1i), vec2<f32>(global0.b.x, 1186f), vec2<bool>(false, false), true, global0.e), Struct_1(vec3<i32>(-34343i, 36302i, var_1.x), global0.b, global0.c, var_0.x, u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, global0.b.x, 1601f))).x << (0u % 32u)), global0.b.x, reverseBits(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(79334u, global0.e, 57106u), vec3<u32>(u_input.a, u_input.a, 1u) >> (vec3<u32>(global0.e, u_input.a, 18800u) % vec3<u32>(32u)), min(vec3<u32>(global0.e, 30748u, 0u), vec3<u32>(global0.e, 4294967295u, u_input.a))))), global0.b.x);
    let var_3 = vec2<u32>(17987u >> (global0.e % 32u), var_2.d.x);
    var_0 = vec4<bool>(true, all(vec4<bool>(false, false | !global0.d, !(global0.c.x & global0.d), 12880i == func_5(Struct_1(vec3<i32>(var_2.b, 22273i, 17844i), vec2<f32>(-869f, global0.b.x), vec2<bool>(global0.d, var_0.x), false, u_input.a), Struct_1(global0.a, global0.b, vec2<bool>(global0.d, true), global0.d, 0u), Struct_1(vec3<i32>(2147483647i, var_2.b, 1i), var_2.a, vec2<bool>(false, false), true, var_2.d.x), vec3<f32>(global0.b.x, -580f, -1000f)).x)), global0.d, false);
    var_1 = -select(_wgslsmith_add_vec2_i32(abs(min(vec2<i32>(0i, 1i), global0.a.xz)), firstTrailingBit(firstTrailingBit(vec2<i32>(34659i, -764i)))), vec2<i32>(~firstTrailingBit(-55820i), ~var_1.x), any(!func_7(0u, vec3<f32>(global0.b.x, 838f, 965f), Struct_4(29372i, var_2.d.x, var_0.x, Struct_3(var_1.x, var_2)), var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_2.a)))) * vec2<f32>(func_6(var_2, func_3(var_0.x, -2147483647i, Struct_4(var_2.b, var_2.d.x, var_0.x, Struct_3(0i, var_2)), vec4<i32>(var_2.b, var_1.x, 59581i, var_1.x)).xw).d.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(588f))))), select(vec4<i32>(-1i, -firstLeadingBit(0i), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.x, global0.a.x), vec2<i32>(1i, -2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(28142i, -5405i, 2147483647i, -28073i), vec4<i32>(var_2.b, var_1.x, -2147483647i, global0.a.x))), _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, global0.a.x, 2147483647i, var_2.b), vec4<i32>(global0.a.x, var_1.x, global0.a.x, var_2.b))), firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(global0.a.x, 1i, 0i, -2147483647i), vec4<i32>(691i, var_1.x, 24467i, var_2.b) << (vec4<u32>(global0.e, u_input.a, var_2.d.x, var_3.x) % vec4<u32>(32u)))), all(!vec4<bool>(false, var_0.x, global0.c.x, false))));
}

