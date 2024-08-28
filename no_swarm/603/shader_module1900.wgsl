struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8>;

var<private> global1: f32 = 1525f;

var<private> global2: Struct_4;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> bool {
    global0 = array<i32, 8>();
    var var_0 = Struct_4(Struct_1(~global2.c.b.a.a, -select(-global2.a.b, global2.c.b.a.b, vec3<bool>(true, true, true)), -_wgslsmith_mult_vec2_i32(-global2.c.b.a.b.yz, -vec2<i32>(u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.a.d.x, global2.b.a.d.x, global2.c.b.a.d.x) * vec3<f32>(2805f, global2.a.d.x, global2.a.d.x))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(global2.c.b.a.d, vec3<f32>(224f, global2.b.a.d.x, global2.a.d.x)), vec3<f32>(global2.a.d.x, -1243f, global2.a.d.x)))))), global2.b, Struct_3(~global2.b.a.a.x & ~_wgslsmith_mod_u32(0u, 59117u), Struct_2(Struct_1(firstTrailingBit(global2.b.a.a), vec3<i32>(global0[_wgslsmith_index_u32(1u, 8u)], global2.c.b.b.x, u_input.a), vec2<i32>(global2.c.b.a.b.x, 0i), _wgslsmith_f_op_vec3_f32(global2.c.b.a.d * vec3<f32>(global2.b.a.d.x, global2.c.b.a.d.x, -1000f))), _wgslsmith_mod_vec4_i32(vec4<i32>(-21879i, global2.b.b.x, global0[_wgslsmith_index_u32(global2.c.b.a.a.x, 8u)], 56536i), ~vec4<i32>(global2.c.b.b.x, global2.c.b.b.x, -13693i, -7885i)), abs(global2.c.b.a.c))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1632f)))), -590f));
    var_0 = Struct_4(var_0.b.a, Struct_2(var_0.a, reverseBits(~var_0.b.b), vec2<i32>(max(-global2.a.b.x, reverseBits(global2.a.c.x)), abs(_wgslsmith_dot_vec4_i32(global2.c.b.b, global2.c.b.b)))), Struct_3(4294967295u, Struct_2(Struct_1(_wgslsmith_sub_vec3_u32(var_0.b.a.a, var_0.b.a.a), global2.b.a.b, _wgslsmith_clamp_vec2_i32(global2.c.b.b.wz, vec2<i32>(0i, 1i), var_0.b.c), var_0.b.a.d), -(global2.b.b >> (vec4<u32>(var_0.b.a.a.x, 33667u, global2.a.a.x, 4294967295u) % vec4<u32>(32u))), vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], _wgslsmith_sub_i32(var_0.c.b.c.x, var_0.a.b.x)))));
    global1 = 942f;
    return all(vec2<bool>(~_wgslsmith_mod_i32(91683i, u_input.a) <= 2147483647i, any(vec4<bool>(true, false, true, true)) == false));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<bool>) -> u32 {
    var var_0 = vec3<bool>(all(arg_1.zw), all(vec4<bool>(false, false, func_3(), arg_1.x)), all(!select(vec2<bool>(false, false), vec2<bool>(true, arg_1.x), false)) && arg_1.x);
    global2 = Struct_4(Struct_1(~(~_wgslsmith_sub_vec3_u32(global2.a.a, global2.c.b.a.a)), vec3<i32>(46116i, -_wgslsmith_dot_vec2_i32(global2.a.b.xz, global2.c.b.c), global2.c.b.a.b.x), vec2<i32>(-1982i, 2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.d.x, -153f, global2.c.b.a.d.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(254f, global2.c.b.a.d.x, -276f))))), global2.b, global2.c);
    var_0 = arg_1.xxx;
    return ~1u;
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> f32 {
    let var_0 = ~(~global2.b.a.a.x) >> ((0u | func_2(vec4<f32>(_wgslsmith_f_op_f32(abs(882f)), arg_1.x, arg_1.x, -824f), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), select(false, false, true)))) % 32u);
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -134f);
    var var_1 = vec3<f32>(-639f, arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.b.a.d.x, 178f)) * 271f));
    let var_2 = _wgslsmith_dot_vec4_i32(select(-global2.b.b, vec4<i32>(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(global2.b.a.a.x, 8u)] | -29357i, global0[_wgslsmith_index_u32(abs(59306u), 8u)], global0[_wgslsmith_index_u32(21072u, 8u)] | 10908i), 2147483647i, abs(-15775i), 22748i), !select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), any(vec3<bool>(false, true, false)))), ~_wgslsmith_mod_vec4_i32(max(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 10484i, u_input.a, 35410i), vec4<i32>(1i, global0[_wgslsmith_index_u32(1305u, 8u)], u_input.a, global2.b.c.x)), -vec4<i32>(u_input.a, -38173i, -2147483647i, u_input.a)), ~vec4<i32>(global0[_wgslsmith_index_u32(global2.b.a.a.x, 8u)], global2.a.b.x, global2.c.b.c.x, -2147483647i) ^ global2.b.b));
    let var_3 = var_2;
    return _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.b.a.d.x), 1000f))) * var_1.x));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: i32) -> StorageBuffer {
    global0 = array<i32, 8>();
    let var_0 = Struct_4(Struct_1(~(~vec3<u32>(arg_0.x, arg_0.x, 1779u)), _wgslsmith_mult_vec3_i32(global2.c.b.b.wyy, global2.b.a.b), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(global2.a.c, vec2<i32>(u_input.a, -70467i)), _wgslsmith_add_i32(u_input.a, -1i)), global2.c.b.b.zw), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global2.b.a.d)) + _wgslsmith_f_op_vec3_f32(floor(global2.b.a.d)))), Struct_2(Struct_1(~select(vec3<u32>(0u, 63695u, global2.a.a.x), arg_0.wyz, true), vec3<i32>(-10261i, global2.a.c.x, _wgslsmith_mult_i32(26821i, arg_2)), vec2<i32>(1i, global2.b.c.x) >> (firstTrailingBit(vec2<u32>(3694u, 4294967295u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.a.d.x, arg_1, arg_1))))), select(~(vec4<i32>(global2.c.b.a.b.x, arg_2, -63052i, global2.c.b.a.c.x) & global2.b.b), ~(-global2.b.b), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true)), all(vec4<bool>(false, true, false, false)))), _wgslsmith_clamp_vec2_i32(-global2.b.a.b.yy, abs(global2.b.b.zw << (arg_0.zz % vec2<u32>(32u))), global2.a.c)), global2.c);
    let var_1 = arg_0.x & _wgslsmith_div_u32(7306u, countOneBits(_wgslsmith_mult_u32(~arg_0.x, func_2(vec4<f32>(-1402f, -1264f, arg_1, 2068f), vec4<bool>(false, true, false, true)))));
    var var_2 = global2.c.b;
    global2 = Struct_4(var_2.a, Struct_2(Struct_1(_wgslsmith_sub_vec3_u32(~arg_0.yyx, reverseBits(vec3<u32>(var_2.a.a.x, var_0.b.a.a.x, 0u))), vec3<i32>(~arg_2, ~var_0.c.b.b.x, -17669i), -var_2.a.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.a.d))), vec4<i32>(_wgslsmith_mod_i32(u_input.a, -28345i), -global0[_wgslsmith_index_u32(0u, 8u)], var_2.a.b.x, -28598i), vec2<i32>(~(~(-2147483647i)), -abs(var_0.b.a.b.x))), Struct_3(var_1, var_0.c.b));
    return StorageBuffer(1468i, var_2.c.x, _wgslsmith_f_op_vec3_f32(sign(global2.c.b.a.d)), ~_wgslsmith_clamp_vec2_u32(var_0.a.a.zx, var_2.a.a.xx, ~(~var_0.c.b.a.a.zy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.d.x * -2031f) - _wgslsmith_div_f32(-262f, global2.b.a.d.x))) * global2.b.a.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.b.a.a;
    let x = u_input.a;
    s_output = func_4(~vec4<u32>(1u, _wgslsmith_div_u32(0u, var_0.x), global2.c.a ^ var_0.x, global2.c.a) << (_wgslsmith_add_vec4_u32(~(vec4<u32>(var_0.x, var_0.x, global2.a.a.x, global2.c.a) ^ vec4<u32>(var_0.x, 16873u, 4294967295u, 0u)), abs(~vec4<u32>(44148u, 0u, global2.a.a.x, 59108u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.a.d.x) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(1000f + -633f), vec4<f32>(319f, global2.b.a.d.x, global2.c.b.a.d.x, global2.c.b.a.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.a.d.x + global2.c.b.a.d.x)), true != (global2.b.a.d.x <= global2.a.d.x)))), ~0i);
}

