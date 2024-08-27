struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<i32>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>, arg_3: bool) -> f32 {
    global0 = arg_0;
    var var_0 = arg_0.a.x;
    global0 = arg_0;
    var var_1 = global1.x;
    let var_2 = reverseBits(arg_2.x >> (~_wgslsmith_mod_u32(4294967295u, u_input.c.x) % 32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + global0.a.x));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-arg_1.a.zzw);
    var var_1 = arg_1;
    var var_2 = arg_1;
    let var_3 = _wgslsmith_sub_vec4_u32(select(firstTrailingBit(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.a, u_input.c.x, u_input.b, u_input.b)), vec4<u32>(4294967295u, u_input.a, u_input.b, u_input.a))), ~_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(u_input.b, 5867u, 74237u, u_input.c.x)), select(vec4<u32>(u_input.a, u_input.b, 7695u, u_input.c.x), vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u), vec4<bool>(false, false, true, false))), false), max(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(22322u, u_input.a, u_input.c.x, u_input.b) << (vec4<u32>(u_input.b, u_input.c.x, 4294967295u, u_input.a) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 55699u, 8997u, 0u), countOneBits(vec4<u32>(56714u, 0u, 4294967295u, u_input.c.x))), select(vec4<u32>(0u, 1u, u_input.c.x, u_input.c.x), ~vec4<u32>(8584u, u_input.a, 1u, u_input.b), true)), vec4<u32>(abs(max(75995u, u_input.b)), 1u ^ ~u_input.b, ~u_input.c.x, u_input.c.x)));
    return _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(~(-vec2<i32>(-35118i, 7901i)), u_input.d), ~_wgslsmith_add_vec2_i32(-vec2<i32>(u_input.d.x, -1i), ~_wgslsmith_clamp_vec2_i32(u_input.d, vec2<i32>(u_input.e, arg_0), u_input.d)));
}

fn func_1() -> i32 {
    let var_0 = !(!(_wgslsmith_f_op_f32(trunc(global0.a.x)) >= _wgslsmith_f_op_f32(abs(-1221f))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<f32>(632f, 589f, 312f, 676f)), global1.x | global1.x, ~u_input.c, var_0 == false)) - -2050f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + 889f))) + _wgslsmith_f_op_vec3_f32(global0.a.wwy - global0.a.xzw));
    global1 = min(-(~vec2<i32>(global1.x, -2147483647i)), abs(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, global1.x), vec3<i32>(global1.x, u_input.e, -1i)), ~global1.x))) | vec2<i32>(~_wgslsmith_add_i32(func_3(global1.x, Struct_1(global0.a), 1493i), u_input.e & -67700i), global1.x);
    var var_2 = var_0;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(1470f - 1316f), _wgslsmith_f_op_f32(f32(-1f) * -599f), global0.a.x) - vec4<f32>(_wgslsmith_f_op_f32(global0.a.x * var_1.x), global0.a.x, -742f, _wgslsmith_f_op_f32(step(-712f, var_1.x)))), global0.a)));
    return -64348i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_add_vec2_i32(abs(vec2<i32>(func_1(), abs(global1.x))), vec2<i32>((global1.x >> (257u % 32u)) | (global1.x >> (1u % 32u)), 0i)) ^ vec2<i32>(global1.x, countOneBits(-31629i));
    global1 = reverseBits(u_input.d);
    let var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1694f, 1011f, global0.a.x, 690f))), global0.a));
    let var_1 = _wgslsmith_sub_u32(u_input.b, ~(~_wgslsmith_mod_u32(u_input.a, reverseBits(48562u))));
    let var_2 = select(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(-u_input.e, _wgslsmith_add_i32(u_input.d.x, global1.x), 1i, -4146i), vec4<i32>(0i << (var_1 % 32u), -24870i, _wgslsmith_sub_i32(-68020i, -1i), -1i)), select(~reverseBits(vec4<i32>(0i, 0i, u_input.e, 22141i)), vec4<i32>(u_input.d.x, select(-2147483647i, global1.x, false), i32(-1i) * -9013i, 1i | u_input.d.x), any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)))), max(-vec4<i32>(u_input.e, -45474i, u_input.e, -17858i), _wgslsmith_mod_vec4_i32(~vec4<i32>(1i, 53381i, 0i, global1.x), min(vec4<i32>(-1i, 0i, global1.x, global1.x), vec4<i32>(-26358i, global1.x, -19118i, 13004i))))), select(_wgslsmith_clamp_vec4_i32(~vec4<i32>(global1.x, 74756i, u_input.e, global1.x), vec4<i32>(5692i, global1.x, global1.x, -1374i) << (vec4<u32>(74159u, u_input.b, u_input.b, u_input.c.x) % vec4<u32>(32u)), max(vec4<i32>(global1.x, global1.x, -15914i, 2147483647i), vec4<i32>(-12492i, u_input.d.x, global1.x, 40448i))) << (vec4<u32>(var_1, 1u, _wgslsmith_mult_u32(var_1, var_1), ~1u) % vec4<u32>(32u)), vec4<i32>(-u_input.e, _wgslsmith_clamp_i32(0i, global1.x, 1i), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.d.x, 1i, -883i, u_input.d.x), -vec4<i32>(2147483647i, 54922i, -43767i, u_input.d.x)), _wgslsmith_add_i32(-global1.x, 2147483647i ^ u_input.d.x)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(false, true, false))), select(!vec4<bool>(false, any(vec2<bool>(false, false)), true, any(vec3<bool>(false, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(round(-1474f)) == _wgslsmith_f_op_f32(-global0.a.x)), select(vec4<bool>(true, true, true, 4294967295u >= var_1), vec4<bool>(u_input.b != u_input.a, true, false, true), vec4<bool>(true, true, true, true))));
    global0 = var_0;
    global1 = vec2<i32>(global1.x, u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(min(~vec3<i32>(global1.x, -2147483647i, 1i), var_2.xww), ~var_2.wzz, -_wgslsmith_clamp_vec3_i32(var_2.zzx, var_2.wyx, var_2.yzy)) & ~var_2.xxy, min(var_2.x, _wgslsmith_div_i32(-2147483647i & var_2.x, ~27531i)) & var_2.x, ~(-(i32(-1i) * -2147483647i)));
}

