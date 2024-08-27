struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<u32> = vec4<u32>(5775u, 66370u, 1792u, 1u);

var<private> global2: f32;

var<private> global3: vec4<i32> = vec4<i32>(28853i, -1760i, -7905i, i32(-2147483648));

var<private> global4: array<i32, 16> = array<i32, 16>(35298i, -7277i, i32(-2147483648), 0i, 0i, i32(-2147483648), 58031i, 0i, 53783i, -26108i, 1i, -1i, 11313i, -36994i, -7064i, -54662i);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> vec2<f32> {
    var var_0 = firstTrailingBit(global1.yx) << (vec2<u32>(arg_0.c.x, select(~1u, (global1.x << (1u % 32u)) >> (select(4294967295u, 1u, false) % 32u), false)) % vec2<u32>(32u));
    var var_1 = arg_0.a;
    var var_2 = vec2<i32>(_wgslsmith_mult_i32(0i, 1i << (~arg_0.c.x % 32u)) << (u_input.c % 32u), firstLeadingBit(16038i));
    var var_3 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-arg_0.d.b.x));
    var_1 = !(!(global0.c.x < -1i));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(328f + _wgslsmith_f_op_f32(-global0.b.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1611f + _wgslsmith_f_op_f32(abs(global0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x * global0.b.x)))));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: bool, arg_3: vec3<bool>) -> u32 {
    var var_0 = Struct_2(true, Struct_1(0u, _wgslsmith_f_op_vec2_f32(-global0.b), -global0.c), global1.xyx, Struct_1(global1.x, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(arg_0, Struct_1(global0.a, global0.b, arg_1), vec3<u32>(121891u, u_input.c, global0.a), Struct_1(0u, global0.b, vec2<i32>(-2147483647i, -12233i)), global0.c.x))) + global0.b))), vec2<i32>(~global4[_wgslsmith_index_u32(4294967295u, 16u)], -1i >> (global0.a % 32u)) >> (global1.wz % vec2<u32>(32u))), _wgslsmith_mod_i32(1i, -23509i) << (u_input.c % 32u));
    return global0.a;
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = Struct_1(_wgslsmith_sub_u32(func_2(false, _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.c.x, 27446i), ~vec2<i32>(global4[_wgslsmith_index_u32(65110u, 16u)], arg_0), ~global0.c), any(vec2<bool>(false, true)) | any(vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), global0.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1100f + global0.b.x))), -1557f) * vec2<f32>(_wgslsmith_f_op_f32(316f + _wgslsmith_f_op_f32(f32(-1f) * -883f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), -726f))), -_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, global3.x), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, -50168i), max(global3.zx, vec2<i32>(-14435i, u_input.b)))));
    var var_1 = vec4<i32>(~0i, abs(global0.c.x), 12039i, ~_wgslsmith_mod_i32((i32(-1i) * -6093i) << (global0.a % 32u), -3806i));
    var var_2 = Struct_2(false, var_0, ~(~_wgslsmith_clamp_vec3_u32(global1.zyz, vec3<u32>(33622u, 4294967295u, var_0.a) | vec3<u32>(global0.a, global1.x, var_0.a), global1.xxw)), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, reverseBits(global0.a)), ~global1.zy), global0.b, vec2<i32>(0i, firstTrailingBit(global4[_wgslsmith_index_u32(var_0.a | 4294967295u, 16u)]))), _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 1716i, 16433i, 2147483647i), vec4<i32>(var_1.x, -2147483647i, -31939i, -50879i)), vec4<i32>(-14177i, u_input.a, -30261i, var_1.x) | max(vec4<i32>(-2147483647i, global3.x, 13471i, u_input.b), vec4<i32>(var_1.x, 2147483647i, global0.c.x, 2147483647i))), -(~(~(-6555i)))));
    global4 = array<i32, 16>();
    var_1 = vec4<i32>(arg_0, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, var_1.x, var_1.x), var_1.zxy), vec3<i32>(var_2.d.c.x, global3.x, -11622i)), vec3<i32>(firstLeadingBit(u_input.a), 10278i, -1i)) | ~64758i, 3199i, -min(arg_0, 2147483647i));
    return all(vec3<bool>(all(vec3<bool>(all(vec3<bool>(false, var_2.a, var_2.a)), all(vec2<bool>(var_2.a, true)), true)), var_2.a, ~reverseBits(var_0.a) > countOneBits(global0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(u_input.c);
    let var_1 = vec4<bool>(true, false, func_1(firstLeadingBit(1i)) & false, false);
    let var_2 = vec2<i32>(_wgslsmith_mult_i32(0i, 37317i), ~(-1i));
    global1 = select(select(firstLeadingBit(vec4<u32>(global0.a, ~4294967295u, 48162u, 4294967295u)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(var_0, u_input.c, 0u, 37078u) >> (vec4<u32>(4294967295u, 9402u, u_input.c, 0u) % vec4<u32>(32u)), vec4<u32>(1u, 4294967295u, global0.a, global0.a))), true), vec4<u32>(global0.a, 4294967295u, (select(u_input.c, 7341u, var_1.x) >> (max(u_input.c, 12871u) % 32u)) << (~4294967295u % 32u), global0.a), _wgslsmith_mod_i32(global3.x, 2147483647i) < countOneBits(-2147483647i));
    var var_3 = Struct_2(1598i == -firstTrailingBit(global3.x), Struct_1(~_wgslsmith_mod_u32(~var_0, min(63266u, global1.x)), global0.b, max(-vec2<i32>(-1i, -3917i), vec2<i32>(-51886i, var_2.x))), _wgslsmith_mult_vec3_u32(~global1.yyy, ~global1.yww), Struct_1(1u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(249f, 1000f)), vec2<i32>(~(-6851i), _wgslsmith_mult_i32(var_2.x, 2147483647i) & u_input.a)), firstTrailingBit(48611i));
    let var_4 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b.b.x, 283f, global0.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(532f, var_3.d.b.x, global0.b.x) * vec3<f32>(var_3.b.b.x, global0.b.x, 1045f)))))), vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(step(262f, var_3.b.b.x)), var_3.b.b.x)));
    let var_5 = var_1.x;
    var_3 = Struct_2(var_5, var_3.d, vec3<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(global1.xz), _wgslsmith_clamp_vec2_u32(~var_3.c.zy, min(vec2<u32>(global0.a, 4294967295u), vec2<u32>(var_3.b.a, 7461u)), var_3.c.yx & var_3.c.xx)), min(abs(u_input.c & 0u), 4294967295u), countOneBits(~global0.a)), var_3.b, -_wgslsmith_add_i32(u_input.b, select(u_input.b, global0.c.x, true) & _wgslsmith_dot_vec3_i32(global3.wzw, global3.wxz)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~4294967295u, ~u_input.c, ~1u));
}

