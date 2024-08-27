struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec4<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    global0 = vec3<bool>(any(!select(!vec2<bool>(global0.x, arg_0.c.x), vec2<bool>(true, arg_0.b), false)), 2841u >= u_input.a, true);
    global0 = !(!(!select(vec3<bool>(true, global0.x, arg_0.c.x), vec3<bool>(false, arg_0.c.x, global0.x), vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x))));
    global1 = vec4<i32>(-1i) * -(~abs(select(vec4<i32>(56716i, -1i, 9892i, -1i), vec4<i32>(global1.x, -2147483647i, global1.x, global1.x), vec4<bool>(true, true, false, global0.x))));
    let var_0 = true;
    global0 = select(select(select(!select(vec3<bool>(false, false, var_0), vec3<bool>(var_0, arg_0.b, global0.x), arg_0.b), select(!vec3<bool>(true, var_0, false), select(vec3<bool>(var_0, false, true), vec3<bool>(false, var_0, false), true), var_0 || false), select(select(vec3<bool>(global0.x, global0.x, var_0), vec3<bool>(global0.x, false, global0.x), true), vec3<bool>(true, true, true), any(vec3<bool>(arg_0.c.x, arg_0.b, arg_0.b)))), vec3<bool>(any(!arg_0.c), any(vec3<bool>(false, true, var_0)), false), all(vec2<bool>(false, global0.x))), vec3<bool>(!(!var_0), (-352f >= _wgslsmith_f_op_f32(1488f - arg_0.d.x)) | !all(vec3<bool>(true, var_0, true)), all(select(global0.xy, select(vec2<bool>(global0.x, true), vec2<bool>(true, false), false), -263f != arg_0.d.x))), false);
    return select(arg_0.c, arg_0.c, arg_0.b);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(~_wgslsmith_dot_vec4_i32(~(vec4<i32>(global1.x, -1i, 2147483647i, 0i) | vec4<i32>(-19112i, 1i, global1.x, global1.x)), vec4<i32>(2147483647i, global1.x, global1.x, global1.x)), global1.x);
    var var_1 = Struct_1(~abs(max(u_input.c.x, ~42607u)), false, vec2<bool>(global0.x, true), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(797f, 1110f) - vec2<f32>(-1055f, -947f))))))));
    let var_2 = ~3573u;
    global0 = !(!vec3<bool>(var_1.d.x != var_1.d.x, false == !global0.x, any(!var_1.c)));
    let var_3 = true != !all(select(vec2<bool>(true, global0.x), vec2<bool>(true, true), global0.x));
    return Struct_1(~_wgslsmith_div_u32(~30926u, var_2) << (u_input.c.x % 32u), !var_1.b, select(select(vec2<bool>(global0.x & var_3, false), func_3(Struct_1(0u, global0.x, var_1.c, var_1.d)), !vec2<bool>(var_3, true)), !vec2<bool>(var_3, true), select(func_3(Struct_1(44279u, false, vec2<bool>(var_3, var_1.c.x), var_1.d)), vec2<bool>(false, global0.x || true), false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.d + var_1.d) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.x, var_1.d.x))))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    var var_1 = any(vec4<bool>(all(vec4<bool>(true, true, true, true)), false, true, false));
    var var_2 = -global1.zz << (u_input.c.wz % vec2<u32>(32u));
    return Struct_1(~abs(u_input.a), all(select(var_0.c, vec2<bool>(all(vec4<bool>(false, false, var_0.b, false)), global0.x), vec2<bool>(true, var_0.c.x))), vec2<bool>(any(var_0.c), any(vec2<bool>(true, u_input.b.x < u_input.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, 644f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, var_0.d.x) - vec2<f32>(var_0.d.x, var_0.d.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = arg_0.d;
    var var_1 = -2147483647i;
    var var_2 = arg_1.x;
    global0 = select(!vec3<bool>(true & all(arg_0.c), -250f >= _wgslsmith_f_op_f32(floor(arg_3.d.x)), true), !select(vec3<bool>(arg_0.c.x, !arg_3.c.x, true), vec3<bool>(arg_3.c.x, all(vec3<bool>(false, arg_0.c.x, arg_0.b)), true), _wgslsmith_f_op_f32(641f + arg_3.d.x) > _wgslsmith_f_op_f32(f32(-1f) * -456f)), select(!vec3<bool>(arg_2 < arg_2, !arg_3.c.x, true), !select(vec3<bool>(true, arg_0.b, arg_3.c.x), select(vec3<bool>(false, arg_3.b, false), vec3<bool>(false, true, true), arg_0.b), vec3<bool>(true, false, true)), true));
    var var_3 = min(global1.x, global1.x);
    return arg_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -357f >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1915f), -1426f, true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-479f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1557f + 2068f)), true))));
    var_0 = global0.x;
    let var_1 = Struct_1(_wgslsmith_div_u32(u_input.c.x, ~(u_input.a ^ 6357u) | ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 0u), u_input.b)), all(vec4<bool>(true, true, true, global0.x)), func_4(func_1(), countOneBits(_wgslsmith_add_vec3_u32(~u_input.c.ywx, ~vec3<u32>(4294967295u, 0u, u_input.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-904f + -712f))), Struct_1(u_input.a, !global0.x, !select(global0.xz, vec2<bool>(global0.x, false), vec2<bool>(false, true)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(552f, -916f)))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-1000f + -466f), 1975f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-232f, 428f) - _wgslsmith_div_vec2_f32(vec2<f32>(-189f, 1146f), vec2<f32>(-1451f, -434f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1983f, 1483f))))))), global0.zz)));
    var var_2 = Struct_1(0u, (abs(_wgslsmith_add_u32(var_1.a, 1u)) >> (4294967295u % 32u)) <= var_1.a, func_1().c, var_1.d);
    global1 = abs(vec4<i32>(~_wgslsmith_add_i32(global1.x, firstTrailingBit(global1.x)), select(-2095i, firstTrailingBit(-903i), true), -1i, -global1.x));
    let var_3 = !vec3<bool>(!var_2.c.x, all(!select(vec4<bool>(var_2.b, var_1.c.x, true, true), vec4<bool>(global0.x, false, var_2.b, var_2.b), true)), !(var_2.c.x | !global0.x));
    let var_4 = select(vec4<bool>(any(select(!vec4<bool>(var_1.c.x, global0.x, global0.x, var_3.x), select(vec4<bool>(var_1.c.x, true, var_3.x, true), vec4<bool>(true, var_3.x, false, var_1.c.x), vec4<bool>(true, var_3.x, false, var_1.b)), !vec4<bool>(var_2.b, true, var_2.b, true))), true, !all(var_3) || !var_1.c.x, func_3(Struct_1(countOneBits(0u), false, var_3.xy, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1290f, 1519f))))).x), !(!vec4<bool>(any(vec2<bool>(global0.x, false)), global1.x < global1.x, false, true)), !select(!select(vec4<bool>(var_1.b, var_3.x, var_1.b, true), vec4<bool>(global0.x, var_1.b, global0.x, true), vec4<bool>(false, true, true, global0.x)), !select(vec4<bool>(global0.x, var_1.b, false, false), vec4<bool>(global0.x, var_1.c.x, true, var_2.c.x), true), !select(vec4<bool>(false, true, false, true), vec4<bool>(global0.x, true, false, true), true)));
    global0 = !var_3;
    let var_5 = var_1.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<i32>(global1.x, max(-global1.x, global1.x), select(~0i, global1.x | -36827i, all(vec4<bool>(var_1.b, false, var_4.x, var_1.b))))), _wgslsmith_mult_vec3_i32(select(vec3<i32>(-1787i, global1.x, global1.x), vec3<i32>(global1.x, global1.x, -23695i) << (vec3<u32>(0u, u_input.b.x, var_1.a) % vec3<u32>(32u)), var_4.yxz), vec3<i32>(global1.x, -global1.x, ~(-75696i))) >> (select(u_input.c.www, u_input.c.xxw >> (~vec3<u32>(var_2.a, 8097u, 4294967295u) % vec3<u32>(32u)), var_4.zyz) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-var_1.d.x));
}

