struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: Struct_2,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(4294967295u, vec2<f32>(639f, -1122f), 39357u, 64289u, vec4<f32>(1000f, 828f, 1567f, -1265f)), 29236i, Struct_2(Struct_1(4294967295u, vec2<f32>(1000f, 1192f), 0u, 8789u, vec4<f32>(1000f, -1010f, -1464f, -402f))), Struct_2(Struct_1(1u, vec2<f32>(1164f, -924f), 99716u, 88542u, vec4<f32>(767f, 1084f, 270f, 346f))), vec4<u32>(0u, 4294967295u, 4294967295u, 15869u));

var<private> global1: array<Struct_1, 10>;

var<private> global2: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(4294967295u, 40417u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(110315u, 56387u), vec2<u32>(21445u, 0u), vec2<u32>(49223u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(8967u, 0u), vec2<u32>(26768u, 0u), vec2<u32>(69130u, 55894u), vec2<u32>(63549u, 0u), vec2<u32>(37141u, 37516u), vec2<u32>(0u, 86472u), vec2<u32>(0u, 1u), vec2<u32>(36635u, 17926u), vec2<u32>(6885u, 4115u), vec2<u32>(0u, 1u), vec2<u32>(0u, 0u), vec2<u32>(0u, 1u), vec2<u32>(53782u, 4801u), vec2<u32>(1u, 4294967295u));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: i32) -> u32 {
    var var_0 = true;
    let var_1 = global0.c;
    var_0 = true;
    let var_2 = Struct_3(Struct_1(0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.b.x, -101f))), _wgslsmith_sub_u32(~(~u_input.a.x), var_1.a.c), global0.a.a, var_1.a.e), -1i, Struct_2(var_1.a), Struct_2(var_1.a), vec4<u32>(~(~global0.e.x), 38712u, global0.d.a.d, var_1.a.a));
    var var_3 = 993f;
    return 1u;
}

fn func_2(arg_0: u32) -> vec3<bool> {
    let var_0 = vec3<u32>(33070u, ~abs(4294967295u), ~func_3(vec3<u32>(u_input.a.x, 1u, arg_0), _wgslsmith_clamp_i32(-global0.b, 1i, _wgslsmith_sub_i32(global0.b, 0i))));
    let var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(421f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1578f))) * _wgslsmith_f_op_f32(select(global0.d.a.b.x, global0.a.b.x, true)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1531f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(614f, global0.d.a.e.x) + global0.d.a.b.x))));
    global0 = Struct_3(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.d.a.c, arg_0 ^ global0.c.a.d, ~1u, u_input.a.x), vec4<u32>(4294967295u, ~arg_0, 4294967295u, u_input.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.b) * vec2<f32>(_wgslsmith_f_op_f32(step(global0.a.e.x, global0.a.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -1402f))), select(global0.d.a.c, countOneBits(abs(51237u)), false), firstLeadingBit(~(~1u)), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.a.b.x) - _wgslsmith_f_op_f32(global0.d.a.e.x * 1126f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.e.x * -705f)), global0.a.b.x)), -11005i, Struct_2(Struct_1(global0.d.a.a, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.d.a.e.x, -402f))), ~23579u, _wgslsmith_mult_u32(0u, var_0.x) & global0.e.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.a.e.x, 1589f, -1642f, -690f)))), global0.d, ~(~_wgslsmith_add_vec4_u32(~global0.e, global0.e)));
    let var_2 = global0.d.a;
    let var_3 = Struct_1(var_0.x, var_1, _wgslsmith_dot_vec2_u32(vec2<u32>(select(1u & var_2.a, ~0u, all(vec2<bool>(true, true))), 0u), var_0.zz), 75024u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.x + -475f), _wgslsmith_f_op_f32(ceil(var_2.e.x)), _wgslsmith_f_op_f32(var_2.e.x + global0.d.a.b.x), _wgslsmith_f_op_f32(floor(global0.a.e.x)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -914f) - -311f), _wgslsmith_div_f32(_wgslsmith_div_f32(var_2.b.x, global0.d.a.e.x), _wgslsmith_f_op_f32(f32(-1f) * -683f)), -594f, global0.d.a.e.x)));
    return !select(vec3<bool>(select(true, true, true), true == all(vec2<bool>(false, true)), any(vec4<bool>(true, false, false, true)) || true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(false, var_1.x < var_1.x, true)), vec3<bool>(false, true, any(vec2<bool>(true, true))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: f32, arg_3: u32) -> Struct_3 {
    var var_0 = !select(vec3<bool>((u_input.a.x <= 0u) != true, !all(vec2<bool>(arg_1.x, true)), _wgslsmith_div_u32(global0.e.x, 80187u) <= ~0u), !(!select(arg_1, vec3<bool>(arg_1.x, false, arg_1.x), arg_1.x)), any(!vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x)));
    var var_1 = ~_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(global0.e, global0.e), global0.e);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-335f)), _wgslsmith_f_op_f32(f32(-1f) * -2433f), var_0.x)) * 1107f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.a.b.x + -1143f)))) * -1330f), arg_2, _wgslsmith_f_op_f32(round(-452f)));
    let var_3 = Struct_3(Struct_1(0u, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, var_2.x)))), abs(min(global0.c.a.c, global0.d.a.a)), global0.c.a.c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, var_2.x, 336f, arg_2))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(542f, -1211f, var_2.x, -1437f) + vec4<f32>(arg_2, global0.c.a.e.x, -330f, arg_0.x)))), arg_1.x))), _wgslsmith_mult_i32(-30667i, _wgslsmith_mod_i32(12346i, 1i)) | global0.b, global0.c, global0.d, global0.e);
    let var_4 = vec2<i32>(~(~(~79796i)), 6293i);
    return var_3;
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = true;
    global0 = func_4(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1057f), 1000f), global0.d.a.e.x), !(!select(select(vec3<bool>(false, true, var_0), vec3<bool>(var_0, true, true), vec3<bool>(var_0, var_0, var_0)), func_2(u_input.a.x), var_0 || var_0)), 721f, u_input.a.x);
    let var_1 = vec4<bool>(var_0 || true, any(!vec2<bool>(var_0, false)), !any(!vec4<bool>(true, var_0, true, var_0)), var_0 && !func_2(func_4(global0.a.b, vec3<bool>(var_0, true, false), arg_0.e.x, arg_0.c).a.c).x);
    let var_2 = select(-firstLeadingBit(vec2<i32>(1i, 1i)), _wgslsmith_sub_vec2_i32(~vec2<i32>(1i, 25002i), vec2<i32>(27874i, min(global0.b, -1i) & ~global0.b)), true);
    var var_3 = -reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(var_2.x, global0.b), -global0.b, var_2.x, _wgslsmith_mult_i32(global0.b, 0i)), vec4<i32>(var_2.x, var_2.x, ~2147483647i, 26863i | var_2.x)));
    return _wgslsmith_f_op_f32(max(global0.d.a.e.x, 335f));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = vec3<f32>(func_4(arg_0.a.e.wy, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(true, false, false)), any(vec2<bool>(false, false)), false)), _wgslsmith_f_op_f32(abs(global0.a.b.x)), select(4294967295u, abs(global0.a.d), true)).c.a.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) - _wgslsmith_f_op_f32(-arg_1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.e.x))), 159f), arg_1.x);
    var var_1 = func_2(4294967295u).x;
    var_1 = false;
    let var_2 = 4294967295u;
    let var_3 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a.b + vec2<f32>(var_0.x, global0.d.a.e.x)))))), select(vec3<bool>(true, true, any(select(vec2<bool>(true, false), vec2<bool>(true, false), false))), vec3<bool>(true, true, true), !func_2(~arg_2.c).x), 1103f, u_input.a.x).c.a;
    return StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.e.x * global0.d.a.b.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1066f, _wgslsmith_div_f32(905f, 548f))))), global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(2505f, -1260f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(934f, -668f)) * _wgslsmith_f_op_vec2_f32(global0.c.a.b + vec2<f32>(225f, -1622f)))), _wgslsmith_clamp_u32(~(global0.d.a.c >> (u_input.a.x % 32u)), u_input.a.x, 15629u), 1u, global0.a.e));
    let var_1 = -21271i;
    let var_2 = global0.e;
    global2 = array<vec2<u32>, 22>();
    let x = u_input.a;
    s_output = func_5(global0.c, vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.e.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a.e.x), _wgslsmith_div_f32(global0.d.a.e.x, _wgslsmith_f_op_f32(select(1260f, -1121f, false)))))), Struct_1(firstLeadingBit(abs(7819u)) >> (1u % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.c.a.b * _wgslsmith_f_op_vec2_f32(step(global0.c.a.e.zz, global0.d.a.e.yw))) - global0.d.a.e.yy), var_2.x, var_0.a.c, vec4<f32>(_wgslsmith_f_op_f32(func_1(var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a.b.x, global0.a.e.x, true)) * 149f), _wgslsmith_f_op_f32(max(var_0.a.b.x, _wgslsmith_f_op_f32(-var_0.a.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1279f + 856f) + 250f))));
}

