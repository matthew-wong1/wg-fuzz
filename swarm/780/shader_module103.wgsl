struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: bool,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
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

var<private> global0: vec4<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec4<bool>, arg_3: vec4<f32>) -> vec2<i32> {
    var var_0 = select(select(global0.zyz, !select(arg_2.ywy, select(vec3<bool>(arg_2.x, global0.x, true), arg_2.xww, arg_2.x), global0.x), arg_2.x), global0.wwz, true);
    global0 = vec4<bool>(all(vec2<bool>((i32(-1i) * -40906i) < arg_0, global0.x)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, arg_0), u_input.b.wz) == -2147483647i, select(!any(var_0.xx), all(vec3<bool>(true, false, var_0.x)) || any(!vec3<bool>(false, true, var_0.x)), global0.x), true);
    global0 = arg_2;
    var_0 = select(!vec3<bool>(true, true, !(arg_3.x < arg_3.x)), select(select(!global0.xyy, !(!global0.wyw), !arg_2.ywx), global0.zxz, global0.x), vec3<bool>(all(select(!var_0.yz, select(vec2<bool>(true, var_0.x), var_0.xx, vec2<bool>(true, var_0.x)), select(var_0.yx, arg_2.xy, arg_2.xy))), !all(select(vec4<bool>(global0.x, true, true, false), arg_2, var_0.x)), ~(~(-37510i)) == u_input.b.x));
    global0 = arg_2;
    return max(u_input.b.xw, select(vec2<i32>(_wgslsmith_clamp_i32(-3377i, 0i, -79073i), abs(arg_0)) & _wgslsmith_div_vec2_i32(vec2<i32>(-21305i, arg_0), u_input.b.yz), vec2<i32>(_wgslsmith_mult_i32(u_input.b.x, arg_0 ^ 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-12974i, u_input.b.x, arg_0, 1i), vec4<i32>(0i, 27459i, 32990i, 0i) >> (vec4<u32>(u_input.c, 45645u, 1u, u_input.a) % vec4<u32>(32u)))), !all(arg_2.zw) | arg_2.x));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: vec4<bool>) -> bool {
    var var_0 = vec3<i32>(u_input.b.x, u_input.b.x << (~(arg_1.x >> ((u_input.c ^ u_input.c) % 32u)) % 32u), u_input.b.x);
    global0 = vec4<bool>(any(global0.yww), false, global0.x, arg_2.x & !all(vec3<bool>(false, global0.x, true)));
    var var_1 = Struct_3(1i, -func_3(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -471f)), vec4<bool>(any(global0.zw), global0.x, false, arg_2.x), vec4<f32>(_wgslsmith_div_f32(285f, arg_0.x), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x), arg_0.x)), 585f, any(!vec2<bool>(any(vec2<bool>(false, false)), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-438f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-1058f * 655f)))));
    let var_2 = arg_1 | (arg_1 >> (vec2<u32>(_wgslsmith_sub_u32(arg_1.x, abs(arg_1.x)), _wgslsmith_div_u32(arg_1.x, 24548u)) % vec2<u32>(32u)));
    var_0 = u_input.b.xwy;
    return true;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: f32) -> Struct_2 {
    global0 = !vec4<bool>(true, global0.x, global0.x, !func_2(vec3<f32>(103f, 435f, arg_0), vec2<u32>(1u, 1u), vec4<bool>(global0.x, false, true, true)) == (min(0i, -12707i) == ~u_input.b.x));
    global0 = !vec4<bool>(any(!select(global0.wy, vec2<bool>(global0.x, global0.x), global0.x)), global0.x, all(!vec3<bool>(true, global0.x, global0.x)), !(!global0.x));
    let var_0 = vec2<i32>(~_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(~u_input.b.wz, _wgslsmith_add_vec2_i32(u_input.b.xy, u_input.b.zy)), u_input.b.xx), -(i32(-1i) * -u_input.b.x));
    let var_1 = -502f;
    global0 = select(select(!vec4<bool>(any(global0.zy), global0.x, global0.x, select(true, global0.x, global0.x)), select(!vec4<bool>(global0.x, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, !global0.x, all(vec4<bool>(global0.x, global0.x, true, false)), true)), false), !vec4<bool>(true, false, all(global0.xyy), global0.x), vec4<bool>(global0.x, global0.x, ~(-7260i) < u_input.b.x, !(-1198f != _wgslsmith_f_op_f32(arg_2 + -1000f))));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1386f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-154f, arg_1))))))), Struct_1(_wgslsmith_mod_u32(u_input.a, _wgslsmith_sub_u32(countOneBits(15917u), u_input.c))), countOneBits(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(4294967295u, 2520u)), min(vec2<u32>(u_input.c, 27223u), vec2<u32>(u_input.a, 52703u)))) << ((vec2<u32>(_wgslsmith_mod_u32(u_input.c, 4294967295u), u_input.c ^ 0u) >> (~firstLeadingBit(vec2<u32>(54422u, 106578u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-541f, 1641f, -1267f);
    let var_1 = Struct_3(~_wgslsmith_dot_vec2_i32(~u_input.b.ww, _wgslsmith_mult_vec2_i32(min(vec2<i32>(10528i, u_input.b.x), vec2<i32>(-32897i, u_input.b.x)), u_input.b.xz)), vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, _wgslsmith_mult_i32(0i, u_input.b.x), -11987i), vec3<i32>(reverseBits(u_input.b.x), -1i, _wgslsmith_add_i32(-20481i, 2147483647i)))), _wgslsmith_f_op_f32(-var_0.a), global0.x, var_0.a);
    let var_2 = var_1;
    global0 = !(!(!(!(!vec4<bool>(false, false, true, var_1.d)))));
    var var_3 = Struct_4(var_0.b, var_1.d, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, var_1.c, var_0.a, -104f)) - _wgslsmith_div_vec4_f32(vec4<f32>(var_2.c, -1000f, -704f, 886f), vec4<f32>(var_0.a, var_0.a, var_1.e, 1657f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.e, var_0.a, var_0.a, var_0.a))))), vec4<f32>(var_0.a, 1010f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1015f - var_2.c)), -1003f))));
    var_3 = Struct_4(Struct_1(u_input.a), true, var_3.c);
    global0 = select(select(vec4<bool>(!(false & global0.x), all(select(vec3<bool>(var_1.d, false, true), vec3<bool>(global0.x, var_2.d, global0.x), vec3<bool>(false, var_3.b, false))), true, false), vec4<bool>(var_1.d, false || all(global0.zyx), var_3.b, true), !(1i <= var_1.a)), select(!select(!vec4<bool>(true, var_2.d, false, true), vec4<bool>(false, false, global0.x, false), vec4<bool>(true, true, false, false)), !vec4<bool>(true, any(global0.yw), true, false), vec4<bool>(all(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(var_3.b, true, true), var_3.b)), !global0.x, true, all(vec4<bool>(var_3.b, false, var_3.b, var_1.d)))), false);
    global0 = !vec4<bool>(false, false, u_input.b.x != func_3(~(-25486i), _wgslsmith_f_op_f32(-var_3.c.x), vec4<bool>(var_3.b, global0.x, false, false), var_3.c).x, true);
    global0 = select(!select(!vec4<bool>(var_1.d, var_3.b, var_3.b, false), !select(vec4<bool>(global0.x, var_3.b, global0.x, false), vec4<bool>(false, global0.x, true, var_3.b), var_2.d), select(!vec4<bool>(false, true, var_1.d, true), select(vec4<bool>(global0.x, var_1.d, true, var_3.b), vec4<bool>(true, global0.x, var_2.d, var_1.d), true), vec4<bool>(true, global0.x, var_2.d, true))), !vec4<bool>(true, var_3.b, any(!global0.ww), false), select(vec4<bool>(true, !all(vec3<bool>(true, true, false)), true, var_1.d || true), select(!(!vec4<bool>(var_2.d, global0.x, false, false)), vec4<bool>(select(true, false, true), var_2.d, -47867i < var_1.b.x, false), !all(vec4<bool>(var_2.d, false, var_3.b, false))), !vec4<bool>(false, true, global0.x, var_3.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(910f, 771f, var_2.e)) * var_3.c.wwy)));
}

