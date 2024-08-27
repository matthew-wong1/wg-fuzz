struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2;

var<private> global2: vec4<i32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = reverseBits(global2.yyx);
    var var_1 = _wgslsmith_div_vec3_f32(global1.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global1.a.a)), _wgslsmith_div_vec3_f32(vec3<f32>(global1.a.a.x, -463f, -217f), vec3<f32>(219f, global1.a.a.x, arg_0.a.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.a.x, arg_0.a.x, arg_0.a.x)) + _wgslsmith_f_op_vec3_f32(max(global1.a.a, vec3<f32>(1055f, global1.a.a.x, arg_0.a.x)))))));
    var var_2 = abs(~vec3<u32>(~_wgslsmith_add_u32(0u, 18985u), ~firstLeadingBit(18078u), ~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a)));
    let var_3 = Struct_2(Struct_1(global1.a.a, !global1.a.d.x & false, firstLeadingBit(-(~global2.zy)), global1.a.d));
    var var_4 = var_3.a;
    return global1.a;
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec4<u32>) -> i32 {
    global2 = firstLeadingBit(select(~vec4<i32>(global2.x, global1.a.c.x, ~0i, 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-global2.x, 1i, 7401i << (arg_2.x % 32u), -1i), firstTrailingBit(firstTrailingBit(vec4<i32>(global2.x, 2147483647i, 0i, -1i))), _wgslsmith_mult_vec4_i32(vec4<i32>(global1.a.c.x, -2147483647i, global1.a.c.x, global2.x), vec4<i32>(global1.a.c.x, -16499i, -26632i, global1.a.c.x))), select(vec4<bool>(false, true, !global1.a.d.x, true), vec4<bool>(arg_1, false, arg_1, true), select(!vec4<bool>(true, arg_1, false, false), !vec4<bool>(false, global1.a.b, global1.a.b, global1.a.d.x), select(vec4<bool>(arg_1, global1.a.b, global1.a.d.x, false), vec4<bool>(global1.a.d.x, global1.a.d.x, false, arg_1), vec4<bool>(arg_1, global1.a.d.x, true, false))))));
    let var_0 = func_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global1.a.a)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.a.a))), !select(select(false, false, arg_1), false, true), vec2<i32>(~(~(-63466i)), _wgslsmith_mult_i32(-1i, global2.x)), global1.a.d));
    let var_1 = global1.a.d.yz;
    var var_2 = ~1u;
    var_2 = countOneBits(~u_input.a.x);
    return global1.a.c.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: i32) -> Struct_2 {
    let var_0 = select(!select(!select(global1.a.d, vec3<bool>(false, true, false), global1.a.b), select(select(vec3<bool>(false, global1.a.d.x, true), vec3<bool>(arg_1, false, true), arg_1), vec3<bool>(global1.a.d.x, true, false), !global1.a.d), select(vec3<bool>(false, false, global1.a.b), vec3<bool>(arg_1, false, arg_1), global1.a.d)), global1.a.d, !select(!(!vec3<bool>(global1.a.b, arg_1, arg_1)), global1.a.d, select(true, arg_0.x <= arg_0.x, global1.a.b)));
    global1 = Struct_2(func_2(global1.a));
    let var_1 = 1u;
    let var_2 = vec3<i32>(~func_3(_wgslsmith_f_op_f32(-772f + global1.a.a.x), _wgslsmith_mod_i32(global2.x, 42655i) <= -17538i, max(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, var_1, 4294967295u, 1u), vec4<u32>(23674u, 0u, u_input.a.x, 46439u)), firstLeadingBit(vec4<u32>(var_1, var_1, 15904u, arg_0.x)))), -_wgslsmith_add_i32(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, global2.x, -2147483647i, global1.a.c.x), vec4<i32>(global1.a.c.x, global1.a.c.x, arg_2, -10557i))), global2.x), -28931i);
    global2 = vec4<i32>(-22381i, global2.x, firstLeadingBit(_wgslsmith_dot_vec3_i32(select(-global2.zxy, select(vec3<i32>(-2147483647i, -35178i, global1.a.c.x), vec3<i32>(var_2.x, global1.a.c.x, -4175i), false), all(vec2<bool>(false, var_0.x))), global2.yyy)), min(-_wgslsmith_dot_vec4_i32(vec4<i32>(9745i, -2147483647i, 47597i, -70724i), vec4<i32>(-1i, arg_2, 2147483647i, -3687i)), _wgslsmith_mod_i32(-22530i, -1i)));
    return Struct_2(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.a.x, global1.a.a.x, -802f)), true, countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(global2.x, 53321i), global2.xx, global1.a.c)), var_0)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> bool {
    var var_0 = func_1(vec3<u32>(arg_3, arg_3, ~89815u ^ ~u_input.a.x), false | all(vec2<bool>(true, true)), arg_1.a.c.x);
    var var_1 = global1.a;
    var var_2 = ~(-_wgslsmith_mod_i32(-51602i, var_0.a.c.x) << (arg_3 % 32u));
    var var_3 = 0i;
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(arg_2.a.x, _wgslsmith_f_op_f32(-238f - global1.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.a.a.x)) * -899f), 1278f))), global1.a.b, ~(vec2<i32>(-1i) * -select(var_1.c, vec2<i32>(arg_1.a.c.x, arg_1.a.c.x), var_0.a.d.zx)), !func_2(Struct_1(vec3<f32>(1f, 1f, 1f), var_1.d.x & var_0.a.d.x, ~arg_2.c, !var_0.a.d)).d);
    return !all(!select(!vec3<bool>(arg_2.b, false, global1.a.d.x), func_1(vec3<u32>(arg_3, 1u, 79222u), var_1.d.x, -1i).a.d, select(vec3<bool>(false, arg_1.a.d.x, arg_1.a.d.x), vec3<bool>(false, var_0.a.d.x, false), arg_1.a.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(select(select(!global1.a.d.zx, global1.a.d.xz, global1.a.d.zx), !(!vec2<bool>(global1.a.b, global1.a.d.x)), !(false & global1.a.b)), global1.a.d.xy, true | func_4(vec2<u32>(u_input.a.x, 0u), func_1(vec3<u32>(1u, 0u, u_input.a.x), global1.a.b, global2.x), Struct_1(vec3<f32>(-1975f, 530f, -389f), global1.a.d.x, global1.a.c, global1.a.d), _wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.a.xy))));
    let var_1 = func_1(~(~select(abs(u_input.a), min(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, u_input.a.x, 0u)), global1.a.d.x)), select(global1.a.d.x, !func_2(global1.a).b, firstTrailingBit(1i) > _wgslsmith_add_i32(19147i, global2.x)), -(~_wgslsmith_mult_i32(global1.a.c.x, global1.a.c.x)) & (i32(-1i) * -global1.a.c.x));
    var var_2 = func_1(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) >> (vec3<u32>(u_input.a.x, 95553u, u_input.a.x) % vec3<u32>(32u)), u_input.a)), false, _wgslsmith_add_i32(-func_1(u_input.a, global1.a.d.x || true, global1.a.c.x).a.c.x, global1.a.c.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(9647u, 4294967295u, u_input.a.x, 72346u), vec4<u32>(29141u, u_input.a.x, 4294967295u, u_input.a.x)) % 32u)));
    var_0 = any(select(var_1.a.d.xx, select(select(var_2.a.d.yz, select(vec2<bool>(false, false), vec2<bool>(var_1.a.b, true), true), vec2<bool>(true, true)), !var_1.a.d.zx, vec2<bool>(var_2.a.c.x < -1i, true)), select(!(!vec2<bool>(var_1.a.d.x, false)), !var_2.a.d.yx, var_1.a.b)));
    var var_3 = func_1(~vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x | u_input.a.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 1u), vec4<u32>(0u, u_input.a.x, 4294967295u, 101176u)), u_input.a.x), !(!(u_input.a.x != countOneBits(3733u))), var_1.a.c.x);
    let var_4 = ~(~(~select(1u, abs(1799u), global1.a.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32((u_input.a.zy & ~vec2<u32>(4294967295u, var_4)) | _wgslsmith_div_vec2_u32(u_input.a.xz, ~vec2<u32>(40697u, 48846u)), u_input.a.yy ^ min(_wgslsmith_mod_vec2_u32(u_input.a.zz, u_input.a.zx), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_4), vec2<u32>(1u, 1u)))), vec4<i32>(var_1.a.c.x, -1i, select(-1i, _wgslsmith_div_i32(_wgslsmith_mult_i32(1i, var_3.a.c.x), ~global1.a.c.x), !(true | global1.a.b)), abs(func_3(196f, true, vec4<u32>(4294967295u, 52442u, 0u, u_input.a.x)) | _wgslsmith_dot_vec3_i32(global2.wzz, vec3<i32>(-8035i, 2147483647i, 46903i)))), _wgslsmith_mult_i32(1i, -19588i));
}

