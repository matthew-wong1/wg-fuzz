struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-524f, 1000f, -1000f, 386f);

var<private> global1: bool;

var<private> global2: Struct_1;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_2(select(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, global2.c.x), vec3<bool>(false, false, global2.c.x), true), !global2.c.x | global2.c.x), select(!(!vec3<bool>(global2.c.x, true, global2.c.x)), vec3<bool>(!global2.c.x, global2.c.x, true), vec3<bool>(true, true, !global2.c.x)), true));
    global2 = Struct_1(_wgslsmith_div_vec2_u32(~select(global2.b.ww, _wgslsmith_div_vec2_u32(vec2<u32>(1u, 22566u), vec2<u32>(u_input.b.x, global2.b.x)), all(vec3<bool>(true, false, var_0.a.x))), ~reverseBits(~vec2<u32>(6614u, 1u))), vec4<u32>(0u, 96102u, _wgslsmith_mult_u32(~1u, ~u_input.c) ^ 4294967295u, reverseBits(~u_input.b.x)), !select(!select(var_0.a.xz, var_0.a.xz, global2.c), select(var_0.a.zy, global2.c, var_0.a.xx), select(var_0.a.xy, !vec2<bool>(global2.c.x, false), vec2<bool>(true, true))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(53834u, global2.b.x, 36355u, u_input.b.x), _wgslsmith_mult_vec4_u32(u_input.b, global2.d)), 4294967295u, firstTrailingBit(_wgslsmith_sub_u32(global2.b.x, global2.a.x)), 29405u) >> (vec4<u32>(_wgslsmith_add_u32(~24336u, u_input.c ^ 1u), u_input.c, _wgslsmith_sub_u32(~global2.b.x, u_input.c), 30495u) % vec4<u32>(32u)));
    var var_1 = Struct_1((vec2<u32>(_wgslsmith_clamp_u32(u_input.b.x, 0u, 57926u), _wgslsmith_sub_u32(global2.b.x, global2.b.x)) << (select(firstTrailingBit(global2.b.xx), u_input.b.xy, select(var_0.a.zz, var_0.a.xy, var_0.a.xz)) % vec2<u32>(32u))) << (vec2<u32>(1u, global2.a.x) % vec2<u32>(32u)), ~select(vec4<u32>(u_input.b.x, ~28865u, 4294967295u, global2.b.x), ~u_input.b, all(vec4<bool>(var_0.a.x, true, false, global2.c.x)) | (global0.x >= global0.x)), vec2<bool>(true && var_0.a.x, all(vec3<bool>(true, !global2.c.x, any(vec4<bool>(global2.c.x, false, var_0.a.x, false))))), global2.b);
    let var_2 = _wgslsmith_mult_vec4_u32(select(~u_input.b, vec4<u32>(~u_input.b.x, _wgslsmith_mod_u32(1u, firstLeadingBit(28830u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.a.x, 43510u), firstTrailingBit(vec2<u32>(4294967295u, global2.d.x))), var_1.b.x), vec4<bool>(var_1.c.x, any(vec3<bool>(var_1.c.x, var_0.a.x, true)), (-2147483647i != u_input.d) & var_1.c.x, false)), vec4<u32>(0u, ~(~15333u), ~global2.a.x, ~(~_wgslsmith_clamp_u32(var_1.d.x, 34066u, var_1.a.x))));
    var var_3 = ~_wgslsmith_mod_vec3_u32(global2.d.xwy, _wgslsmith_sub_vec3_u32(firstLeadingBit(~var_2.yyw), _wgslsmith_mod_vec3_u32(var_2.xyy, reverseBits(u_input.b.wxy))));
    return _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(var_3.yz, firstLeadingBit(~(global2.a >> (vec2<u32>(23892u, global2.b.x) % vec2<u32>(32u))))), vec2<u32>(countOneBits(global2.d.x), u_input.b.x));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_1(~func_3(), vec4<u32>(0u, _wgslsmith_mult_u32(select(firstTrailingBit(u_input.c), ~9779u, all(arg_1.c)), global2.d.x), 13111u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~global2.b, ~vec4<u32>(arg_1.d.x, u_input.c, global2.d.x, arg_1.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(13080u, global2.d.x, 1u, arg_1.b.x), arg_1.b))), !select(select(vec2<bool>(false, false), arg_2, true), arg_1.c, global2.c.x), reverseBits(global2.b << (global2.b % vec4<u32>(32u))));
    global1 = !arg_2.x;
    var var_1 = arg_1;
    let var_2 = -2147483647i;
    var var_3 = (21864u < var_1.a.x) | true;
    return arg_1;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_1(vec2<u32>(~1u, firstTrailingBit(~_wgslsmith_mult_u32(4294967295u, global2.d.x))), ~vec4<u32>(global2.d.x, u_input.b.x, 40384u, ~(u_input.c << (0u % 32u))), !select(vec2<bool>(!global2.c.x, u_input.e > u_input.e), select(vec2<bool>(global2.c.x, global2.c.x), global2.c, select(global2.c, vec2<bool>(global2.c.x, global2.c.x), false)), all(vec3<bool>(true, global2.c.x, global2.c.x))), ~vec4<u32>(~(~global2.d.x), select(23998u, _wgslsmith_dot_vec2_u32(u_input.b.ww, vec2<u32>(45350u, 1u)), global2.c.x), ~u_input.c, ~8615u));
    var_0 = func_2(vec4<i32>((~(-1i) | u_input.d) | 0i, u_input.e, _wgslsmith_sub_i32(select(_wgslsmith_div_i32(u_input.a.x, u_input.e), ~u_input.a.x, var_0.c.x), _wgslsmith_mod_i32(u_input.e, u_input.a.x) & 32287i), firstLeadingBit(u_input.e)), Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(~1u, _wgslsmith_sub_u32(var_0.a.x, var_0.a.x))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.x, u_input.c, global2.b.x, var_0.b.x), abs(u_input.b)), vec2<bool>(true, !all(vec3<bool>(true, global2.c.x, var_0.c.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(~35591u, _wgslsmith_div_u32(global2.a.x, 4294967295u), 24615u << (global2.d.x % 32u), _wgslsmith_clamp_u32(45200u, var_0.b.x, 5200u)), var_0.b)), select(var_0.c, !select(vec2<bool>(true, false), !vec2<bool>(global2.c.x, global2.c.x), true), !global2.c));
    let var_1 = -2147483647i;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-754f, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-825f * -1250f)), -1000f, -246f)));
    var var_2 = !var_0.c.x;
    return func_2(_wgslsmith_add_vec4_i32(select(-(~vec4<i32>(-1i, var_1, 1i, 36101i)), _wgslsmith_add_vec4_i32(abs(vec4<i32>(29002i, 29904i, u_input.e, 85192i)), firstTrailingBit(u_input.a)), vec4<bool>(!global2.c.x, true, true, global2.c.x)), u_input.a), Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(var_0.a, vec2<u32>(u_input.c, var_0.a.x)), 14118u) >> (_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(0u, global2.d.x)), ~var_0.a) % vec2<u32>(32u)), _wgslsmith_mult_vec4_u32(~(~var_0.d), vec4<u32>(firstTrailingBit(18262u), max(1u, 0u), _wgslsmith_mod_u32(5660u, 21335u), abs(0u))), !vec2<bool>(true, global2.c.x), global2.d), select(!global2.c, select(!vec2<bool>(global2.c.x, global2.c.x), !global2.c, !(!vec2<bool>(global2.c.x, var_0.c.x))), var_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec2_f32(-global0.xw));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(sign(1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(112f))))) * -863f), 176f);
    global0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1 * vec4<f32>(184f, 879f, -273f, global0.x)) * vec4<f32>(_wgslsmith_f_op_f32(1437f + -153f), _wgslsmith_f_op_f32(-global0.x), var_1.x, var_1.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1, var_1)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -440f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 352f)))));
    let var_3 = global2.d.x;
    let var_4 = var_0.a.x;
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(sign(var_1.x))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1072f, var_1.x) + vec2<f32>(396f, 259f)))));
    let var_6 = 51730i;
    var var_7 = Struct_1(vec2<u32>(select(1u & global2.a.x, ~global2.b.x, !global2.c.x) >> (4294967295u % 32u), countOneBits((47401u << (var_0.d.x % 32u)) & 4294967295u)), u_input.b, global2.c, max(~(~var_0.d >> (vec4<u32>(0u, var_0.d.x, global2.a.x, var_0.b.x) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(firstLeadingBit(~global2.b), _wgslsmith_mod_vec4_u32(~vec4<u32>(global2.d.x, u_input.b.x, 11423u, 1u), vec4<u32>(global2.d.x, 57602u, var_0.d.x, 0u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_mult_u32(0u, 1u) ^ _wgslsmith_clamp_u32(~var_7.b.x, _wgslsmith_dot_vec2_u32(u_input.b.xw, var_0.a), var_7.b.x), u_input.b.x, func_1(_wgslsmith_f_op_vec2_f32(var_1.wz * var_1.xy)).a.x, func_3().x), abs(vec3<u32>(func_1(var_5).b.x, ~20568u, 0u)));
}

