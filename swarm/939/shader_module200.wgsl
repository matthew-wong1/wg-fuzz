struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_1;

var<private> global2: vec4<bool>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    global0 = max(~countOneBits((vec2<i32>(global0.x, global1.b) ^ vec2<i32>(global0.x, global0.x)) >> (vec2<u32>(33633u, u_input.a) % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(~(-vec2<i32>(-2147483647i, global0.x)), (vec2<i32>(global0.x, 1i) << (vec2<u32>(u_input.a, 52910u) % vec2<u32>(32u))) & _wgslsmith_mod_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(global1.b, -1i))), ~countOneBits(vec2<i32>(global0.x, global0.x))));
    global0 = -(~(~select(_wgslsmith_mod_vec2_i32(vec2<i32>(8810i, -47964i), vec2<i32>(global1.b, global0.x)), ~vec2<i32>(global0.x, -44299i), select(global2.zz, global2.zz, false))));
    let var_0 = Struct_1(-5180i, global1.b, select(~(~max(global1.c, global1.c)), vec2<u32>(0u, _wgslsmith_mod_u32(4294967295u, 1u)) ^ global1.c, global2.x), global1.e.wxx, global1.e);
    var var_1 = Struct_1(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(global1.b, 1i, -1i, -1i) ^ vec4<i32>(global1.b, 2147483647i, var_0.a, global1.b), ~vec4<i32>(11041i, -4124i, 0i, var_0.a)), i32(-1i) * -81416i), ~(-1i), abs(vec2<u32>(var_0.c.x, var_0.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-222f, var_0.d.x, -203f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.e), vec4<f32>(_wgslsmith_f_op_f32(step(996f, global1.e.x)), global1.d.x, 1000f, global1.e.x)))));
    global2 = select(!select(!select(vec4<bool>(global2.x, global2.x, true, global2.x), vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(global2.x, true, global2.x, global2.x)), select(vec4<bool>(true, global2.x, true, global2.x), vec4<bool>(global2.x, global2.x, global2.x, global2.x), global2.x), global1.c.x >= 22519u), select(vec4<bool>(global2.x, !global2.x, false, true), vec4<bool>(_wgslsmith_mult_i32(-1i, global1.a) >= 2147483647i, false, !global2.x, !select(true, false, global2.x)), select(vec4<bool>(true, true, !global2.x, any(vec2<bool>(true, global2.x))), vec4<bool>(global2.x, all(global2.wxy), false, all(global2.wy)), select(vec4<bool>(true, global2.x, global2.x, global2.x), select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(global2.x, global2.x, false, true), vec4<bool>(false, true, false, global2.x)), select(vec4<bool>(true, global2.x, true, global2.x), vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(global2.x, global2.x, global2.x, global2.x))))), true & (-(~(-2147483647i)) >= (_wgslsmith_mult_i32(-39211i, var_1.a) & -global0.x)));
    return 0u;
}

fn func_2() -> Struct_1 {
    var var_0 = reverseBits(_wgslsmith_add_i32(_wgslsmith_div_i32(~0i, global0.x), 2147483647i << (_wgslsmith_mult_u32(~54658u, func_3()) % 32u)));
    return Struct_1(-17711i, 49344i, global1.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global1.e.wxy, _wgslsmith_f_op_vec3_f32(global1.d + global1.d))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.d) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.e.x, 1316f, 491f), global1.e.zyw, global2.wzz)) + global1.e.ywx))), _wgslsmith_div_vec4_f32(vec4<f32>(global1.d.x, _wgslsmith_f_op_f32(874f * 852f), _wgslsmith_f_op_f32(ceil(-1235f)), _wgslsmith_f_op_f32(global1.d.x * _wgslsmith_f_op_f32(-global1.d.x))), vec4<f32>(_wgslsmith_f_op_f32(global1.e.x + global1.e.x), _wgslsmith_f_op_f32(102f * _wgslsmith_f_op_f32(sign(-791f))), 279f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d.x - -1753f) * global1.e.x))));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> i32 {
    let var_0 = global1.d;
    global2 = vec4<bool>(global2.x, !((global2.x || true) | (u_input.a > u_input.a)), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e.x)) < var_0.x), !any(vec2<bool>(true, true)));
    var var_1 = func_2();
    let var_2 = arg_1;
    global1 = func_2();
    return -32936i;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mod_i32(global1.a, _wgslsmith_mod_i32(1i, global1.b)), _wgslsmith_mult_i32(min(_wgslsmith_div_i32(~global0.x, select(global0.x, global1.a, global2.x)), func_4(all(vec2<bool>(true, true)), func_2())), ~(-48017i)), vec2<u32>(func_2().c.x, u_input.a) | ~global1.c, global1.e.xxz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1.e, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global1.e * vec4<f32>(237f, -679f, 1813f, -1000f)))))));
    global1 = var_0;
    global0 = ~firstTrailingBit(vec2<i32>(~global1.b, 43409i));
    var var_1 = var_0.b;
    global2 = select(vec4<bool>(!(global2.x && global2.x), global2.x, false, global2.x), !(!select(!vec4<bool>(true, global2.x, true, false), !vec4<bool>(false, false, true, global2.x), !vec4<bool>(global2.x, false, false, global2.x))), all(!(!select(vec3<bool>(global2.x, false, global2.x), global2.yxx, vec3<bool>(global2.x, true, true)))));
    return Struct_1(var_0.a, abs(2147483647i), vec2<u32>(~(~61265u), reverseBits(0u)), global1.e.xxy, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global1.e)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.e) * var_0.e) - vec4<f32>(var_0.e.x, _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(sign(var_0.e.x)), -1165f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    global1 = func_2();
    let var_0 = Struct_1(-2147483647i, -2147483647i, ~((max(vec2<u32>(1u, 4294967295u), vec2<u32>(21207u, global1.c.x)) >> (~vec2<u32>(1u, global1.c.x) % vec2<u32>(32u))) & reverseBits(reverseBits(vec2<u32>(u_input.a, 1u)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -921f), -1236f, _wgslsmith_f_op_f32(step(global1.d.x, -1152f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.e.x, global1.e.x, 1000f, -411f) + vec4<f32>(global1.d.x, 456f, -779f, 1000f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e.x, -940f, global1.d.x, global1.e.x)) - global1.e)));
    let var_1 = any(!select(select(!global2.xwx, vec3<bool>(global2.x, global2.x, false), false), select(select(vec3<bool>(global2.x, true, true), global2.zxx, vec3<bool>(global2.x, global2.x, true)), !vec3<bool>(global2.x, global2.x, false), global2.x), select(!vec3<bool>(true, global2.x, global2.x), global2.xyw, !vec3<bool>(false, true, global2.x))));
    let var_2 = var_0;
    global0 = _wgslsmith_mult_vec2_i32(~(vec2<i32>(global0.x, global0.x) << (max(vec2<u32>(0u, 46715u), vec2<u32>(1627u, var_2.c.x)) % vec2<u32>(32u))) << (countOneBits(vec2<u32>(0u, 20634u)) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(~max(vec2<i32>(var_2.b, global0.x) >> (global1.c % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(global0.x, var_2.b), vec2<i32>(2147483647i, var_0.a))), vec2<i32>(abs(0i), 29127i)));
    global1 = Struct_1(_wgslsmith_div_i32(-27919i, _wgslsmith_mod_i32(func_1().a, _wgslsmith_sub_i32(-2147483647i, 1i))), -10834i, abs(abs(abs(~vec2<u32>(0u, global1.c.x)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.e.x, -1267f, _wgslsmith_f_op_f32(var_2.d.x * var_2.e.x)))))), vec4<f32>(_wgslsmith_f_op_f32(-1227f - _wgslsmith_f_op_f32(min(-1406f, -178f))), 342f, -2375f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-302f * var_2.d.x), 1f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.zy, _wgslsmith_f_op_vec3_f32(-global1.d), var_0.c.x);
}

