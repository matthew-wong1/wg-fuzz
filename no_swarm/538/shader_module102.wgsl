struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<bool>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_3 = Struct_3(vec3<f32>(-538f, 555f, -128f), false);

var<private> global2: Struct_2;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    global1 = Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_0.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-347f, arg_0.a.x, 395f)) + vec3<f32>(global2.a.x, -436f, -391f)) - arg_0.a), any(select(vec3<bool>(arg_1.c.x, false, global1.b), vec3<bool>(global1.b, global1.b, arg_1.c.x), u_input.b.x >= 4294967295u)))), arg_1.c.x);
    var var_0 = arg_1;
    return 4294967295u;
}

fn func_3() -> f32 {
    var var_0 = Struct_1(-1i ^ abs(~(-u_input.a)), firstLeadingBit(vec4<i32>(-1i) * -(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), select(!vec4<bool>(!global1.b, true, u_input.b.x > 98039u, global1.b), vec4<bool>(global1.b, true, global1.b, true), !select(!vec4<bool>(global1.b, global1.b, global1.b, false), !vec4<bool>(global1.b, false, true, global1.b), !vec4<bool>(true, global1.b, global1.b, false))), _wgslsmith_clamp_i32(i32(-1i) * -9855i, 16526i, countOneBits(-5073i)), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b.zx, max(u_input.b.xx, u_input.b.ww)) >> (_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), 1u) % 32u), 4294967295u, firstLeadingBit(reverseBits(_wgslsmith_dot_vec2_u32(u_input.b.ww, u_input.b.zx))), u_input.b.x));
    global2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, -621f, _wgslsmith_f_op_f32(floor(global1.a.x))) * global1.a)));
    let var_1 = !vec3<bool>(true, global1.b, all(!(!var_0.c.zyz)));
    var var_2 = var_0.e.x;
    var var_3 = _wgslsmith_add_u32(~(~_wgslsmith_dot_vec4_u32(u_input.b, var_0.e)) ^ u_input.b.x, _wgslsmith_add_u32(719u, select(~_wgslsmith_clamp_u32(var_0.e.x, var_0.e.x, 35752u), _wgslsmith_mod_u32(~u_input.b.x, 0u), true)));
    return -328f;
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: u32) -> vec2<bool> {
    let var_0 = u_input.a;
    var var_1 = Struct_1(2147483647i, _wgslsmith_add_vec4_i32(abs(firstTrailingBit(vec4<i32>(var_0, 19346i, u_input.a, var_0))), select(_wgslsmith_mod_vec4_i32(~vec4<i32>(60889i, -39285i, u_input.a, var_0), firstLeadingBit(vec4<i32>(var_0, -2147483647i, var_0, var_0))), min(~vec4<i32>(u_input.a, u_input.a, -1i, var_0), ~vec4<i32>(0i, var_0, var_0, var_0)), vec4<bool>(select(global1.b, global1.b, arg_0.x), global1.b, true, all(vec2<bool>(arg_0.x, true))))), select(!vec4<bool>(global1.b, global1.b | true, all(vec4<bool>(false, global1.b, true, global1.b)), global1.b), select(vec4<bool>(false, arg_1 > arg_1, !arg_0.x, !global1.b), vec4<bool>(true || arg_0.x, 28648u <= u_input.b.x, false, !global1.b), vec4<bool>(arg_0.x, -433f < arg_1, true, true && global1.b)), arg_0.x), _wgslsmith_div_i32(firstLeadingBit(~(var_0 >> (u_input.b.x % 32u))), _wgslsmith_mod_i32(max(1i | var_0, var_0), -u_input.a)), abs(firstLeadingBit(u_input.b)));
    let var_2 = Struct_1(var_0, var_1.b, select(!vec4<bool>(any(vec4<bool>(false, arg_0.x, true, false)), global1.b, any(vec4<bool>(var_1.c.x, true, var_1.c.x, true)), false), var_1.c, -_wgslsmith_mod_i32(var_1.d, u_input.a) == -2147483647i), 32833i, ~firstLeadingBit(vec4<u32>(abs(var_1.e.x), _wgslsmith_mod_u32(arg_2, u_input.b.x), _wgslsmith_mod_u32(u_input.b.x, var_1.e.x), _wgslsmith_mult_u32(arg_2, 1u))));
    global0 = !(global1.a.x != -607f) && any(vec2<bool>(arg_0.x && var_1.c.x, false));
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, global2.a.x, 2672f, global2.a.x), vec4<f32>(1784f, global1.a.x, global2.a.x, arg_1)), vec4<f32>(global2.a.x, global1.a.x, global2.a.x, global2.a.x))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(275f, global1.a.x, 758f, 1147f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, 1071f, global1.a.x, -290f), vec4<f32>(-1728f, global1.a.x, 1000f, global1.a.x)))) - vec4<f32>(_wgslsmith_f_op_f32(min(-1864f, global2.a.x)), arg_1, _wgslsmith_f_op_f32(f32(-1f) * -934f), _wgslsmith_div_f32(arg_1, -153f)))))));
    return var_2.c.wy;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = arg_1.x;
    var var_1 = vec4<bool>(false, global1.b, false, ((u_input.a << (~u_input.b.x % 32u)) == 2147483647i) != !any(!arg_0.xxz));
    var var_2 = abs(max(vec4<u32>(func_2(Struct_2(arg_2.a), Struct_1(-1i, vec4<i32>(-23340i, u_input.a, 2147483647i, u_input.a), vec4<bool>(arg_0.x, var_1.x, var_1.x, arg_0.x), 0i, vec4<u32>(1242u, u_input.b.x, 1u, u_input.b.x))), 4294967295u, u_input.b.x, _wgslsmith_dot_vec4_u32(u_input.b ^ u_input.b, vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x) << (u_input.b % vec4<u32>(32u)))), ~u_input.b));
    let var_3 = arg_0.x;
    var_2 = u_input.b;
    return !select(var_1.zx, var_1.wz, func_4(!var_1.wx, _wgslsmith_f_op_f32(func_3()), _wgslsmith_sub_u32(u_input.b.x | u_input.b.x, firstLeadingBit(u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b;
    global0 = all(select(select(func_1(!vec4<bool>(global1.b, false, global1.b, false), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, global2.a.x, global1.a.x, global2.a.x) * vec4<f32>(global1.a.x, global2.a.x, 1000f, global1.a.x)), Struct_2(vec3<f32>(global1.a.x, global1.a.x, -827f))), !func_1(vec4<bool>(global1.b, global1.b, true, global1.b), vec4<f32>(global2.a.x, global2.a.x, global2.a.x, global2.a.x), Struct_2(global2.a)), false), func_4(vec2<bool>(all(vec3<bool>(false, global1.b, global1.b)), true), global1.a.x, 0u), select(func_1(!vec4<bool>(true, false, global1.b, global1.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(173f, -687f, -1000f, global2.a.x)), Struct_2(vec3<f32>(2155f, -904f, -747f))), func_1(vec4<bool>(true, global1.b, true, true), _wgslsmith_div_vec4_f32(vec4<f32>(global2.a.x, global2.a.x, 1062f, -607f), vec4<f32>(global2.a.x, global1.a.x, 1324f, -386f)), Struct_2(vec3<f32>(650f, 1050f, global1.a.x))), vec2<bool>(!global1.b, true))));
    let var_1 = vec4<u32>(34111u, _wgslsmith_div_u32(reverseBits(28414u | u_input.b.x), firstTrailingBit(func_2(Struct_2(global2.a), Struct_1(u_input.a, vec4<i32>(-41815i, u_input.a, u_input.a, u_input.a), vec4<bool>(false, global1.b, global1.b, global1.b), 33628i, u_input.b)))) >> (func_2(Struct_2(global1.a), Struct_1(-18999i, -vec4<i32>(1i, u_input.a, u_input.a, 1i), select(vec4<bool>(global1.b, global1.b, global1.b, global1.b), vec4<bool>(global1.b, global1.b, false, true), global1.b), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 32983i)), abs(u_input.b))) % 32u), u_input.b.x, u_input.b.x);
    var var_2 = Struct_1(~(-1i), _wgslsmith_sub_vec4_i32(-(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, -59315i, -33695i), vec4<i32>(13606i, u_input.a, -2147483647i, -14330i))), firstTrailingBit(~vec4<i32>(-25649i, u_input.a, u_input.a, u_input.a))), select(vec4<bool>(all(vec2<bool>(false, false)) || false, any(vec2<bool>(global1.b, true)), !(!global1.b), true), !vec4<bool>(global1.b, !global1.b, global1.b, global1.b), global1.b), reverseBits(-(~u_input.a)), vec4<u32>(abs(32554u), u_input.b.x, var_1.x, 0u));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.a.x, 1341f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)));
    var var_4 = 4294967295u;
    var var_5 = var_2.e.xww;
    let var_6 = global2.a;
    var var_7 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_6.x, 1145f))) * global1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global1.a)) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global1.a, vec3<f32>(1000f, -328f, var_3)), _wgslsmith_div_vec3_f32(global1.a, global2.a))) * vec3<f32>(global2.a.x, var_6.x, _wgslsmith_f_op_f32(func_3()))));
}

