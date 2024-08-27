struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_2;

var<private> global2: Struct_2;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: i32) -> vec4<i32> {
    global0 = vec3<u32>(~firstTrailingBit(u_input.c), 4294967295u, ~(~global0.x));
    let var_0 = Struct_2(vec4<i32>(11155i & ~(~u_input.d), 0i, -10126i, _wgslsmith_dot_vec2_i32(vec2<i32>(6407i, arg_0.x), reverseBits(firstLeadingBit(vec2<i32>(-9019i, arg_3))))), global2.c, global2.b);
    global0 = vec3<u32>(15565u, var_0.b.a.x, 0u);
    return var_0.a;
}

fn func_2() -> Struct_2 {
    global2 = Struct_2(_wgslsmith_add_vec4_i32(func_3(~vec3<i32>(0i, global1.a.x, global2.a.x), vec2<bool>(true, global1.b.c), Struct_1(global2.b.a, vec2<u32>(global0.x, 23775u), false), -1i) & (vec4<i32>(-24725i, global2.a.x, 45974i, global1.a.x) & ~global2.a), global1.a), global1.c, Struct_1(_wgslsmith_sub_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.e), vec2<u32>(global2.c.a.x, 27898u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(global0.yx, global2.c.b), global0.zx, ~global2.c.a)), countOneBits(firstTrailingBit(global2.b.a)) | select(global0.yz & vec2<u32>(1u, 28965u), global2.c.a, global2.b.c), false));
    let var_0 = -22830i;
    var var_1 = Struct_1(~global2.b.a, ~(~_wgslsmith_add_vec2_u32(vec2<u32>(1552u, global0.x), max(global2.c.a, global1.c.b))), global1.c.c && global2.b.c);
    var_1 = Struct_1(global2.c.b, _wgslsmith_mult_vec2_u32(global1.c.b, min(~vec2<u32>(0u, 0u), ~global0.zx) | ~(global0.zx << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)))), var_1.c);
    var var_2 = Struct_2(reverseBits(_wgslsmith_add_vec4_i32(global1.a | (global1.a << (vec4<u32>(u_input.c, var_1.b.x, 0u, global0.x) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(vec4<i32>(13828i, 27657i, global2.a.x, u_input.d), global2.a) | -global2.a)), global1.c, global2.c);
    return Struct_2(max(global1.a, -global1.a), Struct_1(global1.b.a, _wgslsmith_add_vec2_u32(vec2<u32>(global1.c.b.x, firstLeadingBit(2833u)), ~global1.b.b & ~global0.zy), any(vec4<bool>(true, true, true, true)) || false), global2.b);
}

fn func_1() -> vec3<f32> {
    var var_0 = func_2();
    var var_1 = Struct_2(vec4<i32>(global2.a.x, u_input.b, -52628i, select(func_3(reverseBits(vec3<i32>(4287i, global1.a.x, var_0.a.x)), vec2<bool>(var_0.c.c, global1.c.c), func_2().c, select(4781i, 2147483647i, global2.b.c)).x, -_wgslsmith_add_i32(-35301i, global2.a.x), all(select(vec4<bool>(var_0.b.c, global2.c.c, global1.b.c, global2.c.c), vec4<bool>(global1.c.c, true, global1.c.c, true), vec4<bool>(global1.c.c, false, false, global1.b.c))))), var_0.c, Struct_1(_wgslsmith_sub_vec2_u32(firstTrailingBit(global1.c.b), global2.b.b >> (global0.yy % vec2<u32>(32u))), select(vec2<u32>(~4633u, ~u_input.c), select(vec2<u32>(global1.c.a.x, global0.x), ~global1.c.b, global1.b.c), !any(vec4<bool>(global2.c.c, true, var_0.b.c, var_0.c.c))), (0u > u_input.c) && false));
    var var_2 = var_0.b;
    var var_3 = true;
    var_1 = Struct_2(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(30907i, var_0.a.x, 1i), vec3<i32>(14093i, u_input.d, -40826i)), var_0.a.x, _wgslsmith_mod_i32(global1.a.x, -var_1.a.x), -3142i), func_3(var_1.a.zxy, vec2<bool>(var_0.b.c, true), Struct_1(~vec2<u32>(57289u, var_0.c.b.x), ~global2.c.a, true), _wgslsmith_div_i32(8809i, -u_input.a.x))), func_2().c, Struct_1(var_2.b, ~firstLeadingBit(vec2<u32>(global0.x, 4294967295u)), all(vec3<bool>(all(vec3<bool>(true, false, true)), global1.c.c, false))));
    return vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-218f)) * _wgslsmith_f_op_f32(f32(-1f) * -618f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1464f)))), -367f)), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1446f, _wgslsmith_f_op_f32(1000f + -784f))))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = abs(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(global2.a.yxy, arg_0), -(~(global1.a.x | global1.a.x)), 16453i));
    global2 = Struct_2(vec4<i32>(arg_3.a.x, 2147483647i, _wgslsmith_div_i32(global1.a.x, _wgslsmith_dot_vec4_i32(func_3(arg_0, arg_1.xz, Struct_1(vec2<u32>(var_0.b.b.x, 97964u), global1.c.b, false), -1i), vec4<i32>(var_1, 54194i, arg_3.a.x, arg_0.x))), reverseBits(-_wgslsmith_add_i32(var_0.a.x, u_input.b))), Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(~1u, global0.x), var_0.c.a), global0.xx, false), Struct_1(~var_0.c.a, abs(~func_2().b.b), false));
    var var_2 = func_2().b;
    let var_3 = select(~277u, var_0.b.b.x, all(arg_1.xx));
    return var_0.b;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_sub_vec4_i32(-abs(vec4<i32>(9204i, 1i, global2.a.x, 0i)), arg_3.a) ^ -vec4<i32>(min(arg_1.x, arg_1.x), -34962i, arg_3.a.x, -28422i), func_4(global2.a.zxx << (select(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, arg_0.b.x), vec3<u32>(arg_2.b.x, 4294967295u, 1u)), max(vec3<u32>(1u, arg_3.c.a.x, 137u), vec3<u32>(global0.x, arg_0.b.x, global2.c.a.x)), arg_3.b.c & arg_3.b.c) % vec3<u32>(32u)), select(select(!vec3<bool>(arg_3.b.c, true, arg_2.c), vec3<bool>(arg_2.c, arg_3.b.c, true), !vec3<bool>(arg_3.c.c, global1.c.c, false)), !vec3<bool>(false, arg_0.c, false), !vec3<bool>(false, false, arg_0.c)), _wgslsmith_f_op_vec3_f32(func_1()), arg_3), Struct_1(vec2<u32>(1u, 20517u), ~_wgslsmith_clamp_vec2_u32(arg_3.b.a, abs(vec2<u32>(global0.x, 16704u)), ~vec2<u32>(0u, 4294967295u)), func_2().c.c));
    global1 = Struct_2(global2.a, global1.c, Struct_1(_wgslsmith_mult_vec2_u32(~select(vec2<u32>(1u, global1.c.a.x), arg_0.a, vec2<bool>(arg_0.c, false)), vec2<u32>(countOneBits(1u), ~4294967295u)), global1.c.b, all(select(vec4<bool>(true, global2.b.c, var_0.b.c, global1.b.c), vec4<bool>(global1.c.c, true, arg_0.c, global1.b.c), true)) || arg_2.c));
    var var_1 = _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(min(vec2<i32>(-62262i, arg_3.a.x), var_0.a.ww), -vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2147483647i), global2.a.zz), global2.a.x)), reverseBits(~global1.a.xx));
    global2 = arg_3;
    var_0 = Struct_2(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(var_0.a.x, select(var_1.x, arg_1.x, true)), arg_1.x), ~_wgslsmith_dot_vec3_i32(min(vec3<i32>(1i, global2.a.x, 2147483647i), var_0.a.xxx), global1.a.yzz), 0i, 18162i), global2.b, func_2().b);
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~global0.xz, abs(global0.zz) & global1.c.b, !(!global1.c.c));
    global1 = func_5(func_4(vec3<i32>(global2.a.x, abs(-global2.a.x), countOneBits(_wgslsmith_div_i32(1i, 39435i))), !select(vec3<bool>(false, var_0.c, true), vec3<bool>(global2.b.c, false, global2.c.c), vec3<bool>(true, true, true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, -183f, -481f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1()))), func_2()), _wgslsmith_add_vec4_i32(-func_2().a, ~global1.a | vec4<i32>(~0i, ~19501i, u_input.d, global2.a.x)), global2.c, Struct_2(global1.a, global1.c, Struct_1(vec2<u32>(38330u, ~global0.x), ~(~vec2<u32>(global2.c.a.x, global1.b.a.x)), true != select(true, var_0.c, false))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-682f * -1712f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(830f)))), false)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(708f, 147f))))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-716f)))))));
    let var_2 = func_4(u_input.a, vec3<bool>(true, true, true), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(865f * _wgslsmith_f_op_f32(f32(-1f) * -815f))), _wgslsmith_f_op_f32(ceil(-1215f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2950f))))), Struct_2(global2.a & global2.a, func_5(func_5(global2.c, reverseBits(global2.a), func_4(vec3<i32>(20165i, 0i, global2.a.x), vec3<bool>(true, false, true), vec3<f32>(1310f, 654f, 1267f), Struct_2(global2.a, global1.b, Struct_1(vec2<u32>(4294967295u, 0u), vec2<u32>(2167u, 17074u), true))), Struct_2(global1.a, Struct_1(vec2<u32>(global0.x, 0u), global1.b.a, global2.b.c), global1.c)).c, global1.a, global2.b, func_5(func_5(Struct_1(var_0.b, vec2<u32>(global2.b.b.x, 11214u), global1.c.c), global1.a, Struct_1(vec2<u32>(0u, 0u), vec2<u32>(global0.x, u_input.e), true), Struct_2(vec4<i32>(1i, 0i, -1i, global1.a.x), global2.b, global1.b)).b, max(vec4<i32>(global1.a.x, global2.a.x, -26862i, u_input.a.x), vec4<i32>(-1i, u_input.a.x, 2147483647i, global1.a.x)), Struct_1(global1.b.b, global1.b.b, global1.b.c), Struct_2(global1.a, Struct_1(global1.b.b, vec2<u32>(13450u, 20465u), global2.b.c), Struct_1(vec2<u32>(22374u, global2.b.a.x), var_0.a, true)))).b, global2.b));
    var var_3 = func_5(Struct_1(func_2().c.a, vec2<u32>(~var_0.b.x, 0u), var_0.c), global2.a, global1.c, Struct_2(select(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, global1.a.x, global1.a.x), u_input.a), ~(-15377i), -2147483647i, u_input.b), abs(-vec4<i32>(global1.a.x, 16022i, 0i, 2147483647i)), select(select(vec4<bool>(true, false, false, var_2.c), vec4<bool>(var_0.c, true, true, var_0.c), vec4<bool>(true, global1.b.c, var_2.c, global1.b.c)), select(vec4<bool>(true, var_2.c, var_2.c, false), vec4<bool>(global2.c.c, global1.c.c, true, true), vec4<bool>(var_0.c, var_2.c, var_2.c, var_0.c)), true)), global1.b, func_2().b));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

