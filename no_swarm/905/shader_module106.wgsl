struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, -1i, -4482i, 11605i);

var<private> global1: vec4<f32>;

var<private> global2: vec4<i32> = vec4<i32>(1i, 0i, 1i, 2147483647i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = vec4<i32>(12070i, _wgslsmith_add_i32(firstLeadingBit(10681i), min(arg_1.c.x, _wgslsmith_sub_i32(35427i & global0.x, _wgslsmith_add_i32(arg_2.c.x, arg_1.c.x)))), arg_1.c.x, abs(-(_wgslsmith_mult_i32(arg_2.c.x, arg_2.c.x) & -arg_2.c.x)));
    var var_1 = arg_1.b;
    global0 = select(-(~(~vec4<i32>(0i, 54863i, arg_2.c.x, 17388i))), firstTrailingBit(vec4<i32>(arg_2.c.x, i32(-1i) * -var_0.x, ~(-global0.x), abs(arg_1.c.x))), select(vec4<bool>(false, arg_1.a, true, false), !select(!vec4<bool>(arg_2.d.x, true, arg_1.d.x, arg_2.a), select(vec4<bool>(arg_1.a, arg_1.d.x, arg_0.d.x, arg_1.d.x), vec4<bool>(true, true, arg_1.a, arg_1.a), true), true), any(select(select(arg_1.d, vec2<bool>(arg_2.a, true), vec2<bool>(arg_2.a, false)), arg_2.d, arg_1.d.x))));
    var var_2 = arg_2;
    global1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, global1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(-253f, arg_1.b), 1267f))), 1470f)));
    return (_wgslsmith_f_op_f32(-425f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-2037f + arg_0.b)))) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(232f))))))) & var_2.a;
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<bool>) -> f32 {
    let var_0 = global1.xwx;
    global0 = firstLeadingBit(~vec4<i32>(global0.x, ~1i, 2147483647i, -(i32(-1i) * -14711i)));
    let var_1 = arg_2.x;
    let var_2 = !(!select(select(select(vec4<bool>(false, arg_2.x, var_1, var_1), vec4<bool>(var_1, arg_2.x, var_1, true), vec4<bool>(true, false, var_1, true)), select(vec4<bool>(arg_2.x, false, var_1, false), vec4<bool>(false, true, arg_2.x, false), var_1), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true)), vec4<bool>(!var_1, !arg_2.x, func_3(Struct_1(true, -321f, vec2<i32>(1i, global2.x), arg_2), Struct_1(false, global1.x, global0.zx, arg_2), Struct_1(var_1, 849f, global2.yx, vec2<bool>(true, var_1))), true), !var_1 || !var_1));
    var var_3 = Struct_1(all(!var_2.zz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(556f - var_0.x))))) - 1681f), global2.xx, vec2<bool>(func_3(Struct_1(arg_2.x, -239f, min(global2.zw, global2.zz), var_2.wz), Struct_1(all(vec3<bool>(false, arg_2.x, true)), _wgslsmith_div_f32(global1.x, var_0.x), _wgslsmith_add_vec2_i32(global0.wx, global0.xy), vec2<bool>(false, false)), Struct_1(false, -251f, vec2<i32>(global0.x, 0i), select(vec2<bool>(var_1, false), vec2<bool>(var_1, true), true))), var_1));
    return _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(840f * _wgslsmith_f_op_f32(var_0.x - var_0.x)), any(var_2.xxw)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<bool>) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_2(global0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_0.zy)) + _wgslsmith_f_op_vec2_f32(-global1.xz)), vec2<bool>(any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), arg_1.x))) == 535f, arg_0.x, select(_wgslsmith_mult_vec2_i32(global0.yw << (vec2<u32>(17273u, 25975u) % vec2<u32>(32u)), ~vec2<i32>(0i, 36499i)), -global0.yx ^ global2.xz, arg_1.x), vec2<bool>(!(global1.x >= global1.x), arg_1.x));
    var_0 = Struct_1(true, -1062f, global2.xy, select(!(!select(vec2<bool>(arg_1.x, false), var_0.d, arg_1.yz)), vec2<bool>(!(!var_0.d.x), all(arg_1) || var_0.a), true));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -691f, _wgslsmith_div_f32(var_0.b, -135f), global1.x))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-484f - 875f))), var_0.b, _wgslsmith_f_op_f32(784f - arg_0.x), global1.x));
    var var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(min(vec4<i32>(global2.x, 0i, -25600i, -24107i), vec4<i32>(var_0.c.x, global2.x, global0.x, -2147483647i)), (vec4<i32>(-5049i, global0.x, global0.x, global2.x) & vec4<i32>(global0.x, 2191i, 2147483647i, global2.x)) | reverseBits(vec4<i32>(global0.x, global2.x, -2147483647i, 20308i)), select(~vec4<i32>(global2.x, global2.x, 0i, -41020i), max(vec4<i32>(var_0.c.x, -1i, 0i, var_0.c.x), vec4<i32>(var_0.c.x, 45215i, 7230i, var_0.c.x)), !vec4<bool>(var_0.a, true, false, var_0.d.x))), firstTrailingBit(-firstTrailingBit(vec4<i32>(30387i, global2.x, 29363i, global0.x)))), vec4<i32>(abs(~(~2147483647i)), _wgslsmith_mod_i32(_wgslsmith_add_i32(var_0.c.x, global2.x ^ 0i), 1i >> (_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 40913u, u_input.a.x, u_input.a.x)) % 32u)), global2.x << (_wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 4294967295u), u_input.a)) % 32u), global0.x));
    global2 = -((vec4<i32>(-1i) * -vec4<i32>(global0.x, -2147483647i, var_0.c.x, 0i)) ^ vec4<i32>(-36431i, 1i, -7558i, max(var_0.c.x | 2147483647i, _wgslsmith_mod_i32(-2147483647i, 1i))));
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(global2.x, max(-1i, 24067i));
    global2 = _wgslsmith_sub_vec4_i32(firstLeadingBit(-vec4<i32>(var_0.x, -1i, 2147483647i, -2147483647i)) | vec4<i32>(-(~global0.x), global0.x, 0i, -var_0.x), vec4<i32>(firstLeadingBit(reverseBits(_wgslsmith_clamp_i32(var_0.x, var_0.x, -1i))), _wgslsmith_div_i32(0i, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.x, var_0.x, global2.x, var_0.x), -vec4<i32>(var_0.x, global2.x, global0.x, var_0.x))), _wgslsmith_clamp_i32(-28941i, 31411i, max(1i, var_0.x) >> (~u_input.a.x % 32u)), -var_0.x));
    let var_1 = abs(3993u);
    let var_2 = vec4<f32>(global1.x, -1401f, -1416f, _wgslsmith_div_f32(301f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(252f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.x)))))));
    let var_3 = Struct_1((-2147483647i ^ var_0.x) > 34045i, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_mod_vec2_i32(~select(var_0, global0.wy, vec2<bool>(true, true)), countOneBits(vec2<i32>(-2147483647i, firstLeadingBit(global2.x)))), vec2<bool>(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) * var_2.yyx)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), var_1 == 30961u)), !(!func_3(Struct_1(false, 1030f, vec2<i32>(global2.x, -48366i), vec2<bool>(true, false)), Struct_1(true, 1000f, var_0, vec2<bool>(false, false)), Struct_1(false, 830f, global0.xx, vec2<bool>(true, false))))));
    let var_4 = all(!(!select(vec4<bool>(false, var_3.d.x, false, var_3.d.x), vec4<bool>(var_3.d.x, var_3.d.x, false, true), all(vec4<bool>(true, true, var_3.d.x, var_3.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(abs(_wgslsmith_sub_vec4_u32(u_input.a, u_input.a)), u_input.a), _wgslsmith_clamp_vec4_u32(u_input.a, min(~vec4<u32>(u_input.a.x, var_1, var_1, 16445u), select(vec4<u32>(53607u, 4294967295u, 1u, var_1), u_input.a, var_4)), u_input.a)));
}

