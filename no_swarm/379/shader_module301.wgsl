struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: i32) -> vec2<bool> {
    global0 = Struct_3(Struct_2(_wgslsmith_mod_u32(~1u, u_input.a.x >> (~1u % 32u)), select(vec2<bool>(arg_1 > global0.a.e.c, true), !global0.a.b, select(!vec2<bool>(true, global0.a.c.x), !global0.a.b, select(global0.a.c, global0.a.d.wz, global0.a.c))), select(!(!vec2<bool>(global0.a.b.x, global0.a.d.x)), select(global0.a.d.yy, !vec2<bool>(global0.a.b.x, global0.a.c.x), any(vec4<bool>(false, global0.a.c.x, global0.a.b.x, global0.a.c.x))), true), vec4<bool>(!any(global0.a.d.yxw), all(!vec4<bool>(global0.a.c.x, global0.a.b.x, global0.a.c.x, global0.a.c.x)), all(select(global0.a.d, global0.a.d, true)), global0.a.c.x & (global0.a.d.x & true)), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, global0.a.e.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, global0.b.a.x, global0.a.e.a.x))), ~(-vec4<i32>(arg_1, arg_1, -3290i, 0i)), 33809i)), global0.a.e);
    var var_0 = _wgslsmith_mult_vec4_i32(-reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, -12167i, global0.a.e.b.x, arg_1), vec4<i32>(0i, 1i, global0.b.c, arg_1))), global0.a.e.b) << (_wgslsmith_add_vec4_u32(firstLeadingBit(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(0u, u_input.a.x, u_input.a.x, 4294967295u)), reverseBits(vec4<u32>(global0.a.a, 0u, 4294967295u, 59040u)))), ~vec4<u32>(global0.a.a, u_input.c.x, _wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(1u, u_input.b)), u_input.a.x)) % vec4<u32>(32u));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), global0.a.e.a.x);
    let var_2 = global0.a.e;
    var var_3 = -321f;
    return !select(!global0.a.c, global0.a.b, ~firstLeadingBit(var_2.b.x) <= global0.b.b.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: vec2<u32>, arg_3: bool) -> Struct_2 {
    var var_0 = Struct_2(1u, global0.a.b, vec2<bool>(any(select(global0.a.d, !vec4<bool>(true, true, false, arg_3), !global0.a.d)), all(vec4<bool>(false, global0.a.c.x == arg_3, true, any(vec4<bool>(false, global0.a.c.x, arg_3, arg_3))))), global0.a.d, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a.e.a - vec3<f32>(global0.a.e.a.x, -785f, -1000f)))), firstTrailingBit(global0.a.e.b), ~(-arg_0.x) >> (49744u % 32u)));
    global0 = Struct_3(Struct_2(_wgslsmith_sub_u32(arg_2.x, arg_2.x & u_input.a.x), !(!var_0.b), select(var_0.d.wy, select(func_3(vec4<f32>(global0.b.a.x, arg_1, arg_1, global0.a.e.a.x), -68159i), vec2<bool>(global0.a.b.x, var_0.c.x), vec2<bool>(var_0.d.x, arg_3)), var_0.c), !select(global0.a.d, !vec4<bool>(true, true, global0.a.b.x, global0.a.b.x), var_0.b.x), Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.a.x, var_0.e.a.x, 160f)), global0.a.e.a)), ~vec4<i32>(var_0.e.b.x, 1i, var_0.e.c, var_0.e.b.x), var_0.e.c << (u_input.c.x % 32u))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(var_0.e.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1493f - 472f) + -1204f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(278f, var_0.e.a.x)) * _wgslsmith_f_op_f32(f32(-1f) * -696f))), vec4<i32>(-(~49858i), -(~(-1i)), -2147483647i, global0.b.c), _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(-16567i, -4275i), max(arg_0.x, -1i)), ~(var_0.e.b.x << (global0.a.a % 32u)), arg_0.x)));
    var var_1 = abs(select(var_0.e.b.yw, abs(vec2<i32>(global0.a.e.c, -1i)), any(global0.a.d.wzw))) ^ vec2<i32>(0i ^ ~(var_0.e.b.x & var_0.e.b.x), var_0.e.b.x);
    let var_2 = _wgslsmith_add_i32(max(var_0.e.c, ~arg_0.x), -1i);
    var var_3 = Struct_3(Struct_2(1032u, func_3(vec4<f32>(arg_1, -990f, 260f, _wgslsmith_f_op_f32(-global0.b.a.x)), _wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.e.c, 5196i), _wgslsmith_mult_vec2_i32(vec2<i32>(var_1.x, -55441i), vec2<i32>(-119i, -7503i)))), !var_0.c, !var_0.d, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.e.a, vec3<f32>(-1000f, 1195f, global0.a.e.a.x), vec3<bool>(arg_3, false, false)))), vec4<i32>(-46190i, -1i, var_2, var_0.e.c) & firstTrailingBit(var_0.e.b), -abs(var_1.x))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0.a.e.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(330f, 143f, global0.b.a.x)), !global0.a.b.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_0.e.a)))), max(-_wgslsmith_add_vec4_i32(global0.a.e.b, global0.b.b), global0.a.e.b & (vec4<i32>(global0.b.b.x, 10847i, 70816i, var_1.x) & global0.b.b)), ~(var_2 << (1u % 32u)) << (_wgslsmith_sub_u32(global0.a.a >> (0u % 32u), arg_2.x) % 32u)));
    return Struct_2(~0u, vec2<bool>(arg_3, !func_3(vec4<f32>(global0.a.e.a.x, var_0.e.a.x, 488f, arg_1), -50022i).x && func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.e.a.x, global0.b.a.x, var_0.e.a.x, -168f), vec4<f32>(global0.b.a.x, global0.b.a.x, var_0.e.a.x, 476f), global0.a.c.x)), firstTrailingBit(-1i)).x), var_0.b, !var_0.d, Struct_1(_wgslsmith_f_op_vec3_f32(select(global0.a.e.a, vec3<f32>(_wgslsmith_f_op_f32(arg_1 + 439f), -694f, arg_1), !var_0.d.wxz)), ~(-var_3.b.b), ~(countOneBits(global0.b.b.x) >> (reverseBits(u_input.a.x) % 32u))));
}

fn func_1(arg_0: vec4<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(308f)))));
    global0 = Struct_3(Struct_2(_wgslsmith_add_u32(_wgslsmith_mult_u32(global0.a.a >> (u_input.a.x % 32u), ~34376u), 19401u), !(!(!global0.a.b)), vec2<bool>(!global0.a.b.x & global0.a.c.x, true), select(global0.a.d, global0.a.d, false), global0.b), global0.b);
    var_0 = _wgslsmith_f_op_f32(-global0.b.a.x);
    let var_1 = u_input.c.x;
    var var_2 = Struct_4(vec2<bool>(any(!(!vec2<bool>(global0.a.c.x, false))), any(!global0.a.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x))));
    return Struct_3(func_2(vec2<i32>(-max(global0.a.e.b.x, -7673i), -(global0.a.e.c >> (var_1 % 32u))), _wgslsmith_f_op_f32(-arg_0.x), ~_wgslsmith_mult_vec2_u32(u_input.a.zx, abs(vec2<u32>(var_1, 0u))), true), global0.b);
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_3) -> i32 {
    let var_0 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(~u_input.a.yy & ~vec2<u32>(global0.a.a, 12735u), _wgslsmith_mult_vec2_u32(~u_input.a.xz, ~vec2<u32>(0u, 119823u))), func_2(~firstTrailingBit(vec2<i32>(arg_0.x, 2147483647i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.a.e.a.x * -394f))), _wgslsmith_mult_vec2_u32(u_input.a.xy, vec2<u32>(u_input.b, arg_2.a.a)), arg_2.a.c.x).a);
    let var_1 = arg_2;
    var var_2 = select(((vec4<i32>(1i, -1i, var_1.b.c, arg_0.x) & arg_2.a.e.b) & (arg_2.b.b >> (vec4<u32>(33657u, 4323u, var_0.x, 17380u) % vec4<u32>(32u)))) >> (~countOneBits(vec4<u32>(arg_2.a.a, var_0.x, global0.a.a, global0.a.a)) % vec4<u32>(32u)), ~min(abs(global0.a.e.b), max(var_1.b.b, vec4<i32>(-1i, global0.b.b.x, global0.b.c, 27959i))), select(!vec4<bool>(false, global0.a.c.x, global0.a.c.x, global0.a.d.x), !vec4<bool>(false, false, arg_2.a.b.x, true), false)) >> (~(~firstTrailingBit(vec4<u32>(var_1.a.a, 0u, 4294967295u, 42974u))) % vec4<u32>(32u));
    return max(_wgslsmith_div_i32(firstTrailingBit(arg_0.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(791u, arg_2.a.a), vec2<u32>(0u, global0.a.a)) % 32u)), -global0.a.e.c), countOneBits(_wgslsmith_sub_i32(-abs(26707i), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, var_2.x, -1i, 2147483647i), arg_2.b.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a.e.c;
    var_0 = global0.b.c;
    var_0 = i32(-1i) * -func_4(_wgslsmith_add_vec2_i32(global0.a.e.b.yw, global0.b.b.wz), true, func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.a.x, global0.a.e.a.x, 645f, 865f))));
    var var_1 = func_3(_wgslsmith_div_vec4_f32(vec4<f32>(global0.a.e.a.x, -369f, _wgslsmith_f_op_f32(f32(-1f) * -1016f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a.e.a.x), _wgslsmith_div_f32(-140f, global0.a.e.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.a.x * global0.a.e.a.x) + -595f), _wgslsmith_f_op_f32(trunc(global0.a.e.a.x)), 1974f, 257f)), global0.b.b.x);
    var var_2 = _wgslsmith_mod_u32(min(0u, ~u_input.a.x), ~97460u);
    var var_3 = Struct_3(global0.a, func_2(select(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(global0.b.b.yw, vec2<i32>(74129i, -44200i)), countOneBits(global0.b.b.zz)), -_wgslsmith_mult_vec2_i32(vec2<i32>(global0.b.b.x, 1i), vec2<i32>(-26204i, -19240i)), select(!global0.a.b, func_2(global0.b.b.zw, global0.a.e.a.x, vec2<u32>(u_input.b, 51688u), var_1.x).c, vec2<bool>(var_1.x, var_1.x))), global0.a.e.a.x, max(~(~vec2<u32>(1u, global0.a.a)), ~select(u_input.a.xy, u_input.c.xz, global0.a.c)), true).e);
    let var_4 = global0.a.e;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mod_u32(35376u, 1u ^ ~global0.a.a), _wgslsmith_clamp_u32(~abs(global0.a.a), 4294967295u, 1u)));
}

