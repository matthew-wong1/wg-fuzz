struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: Struct_2,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_3 = Struct_3(vec2<i32>(2147483647i, 49822i), 18869u, Struct_2(Struct_1(-1i, vec2<i32>(2147483647i, 2147483647i), 6533u)), vec4<f32>(-198f, 140f, -1000f, -185f), vec4<f32>(-706f, 286f, -965f, 702f));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3) -> f32 {
    global0 = !select(select(select(!vec2<bool>(global0.x, global0.x), select(vec2<bool>(global0.x, false), vec2<bool>(false, false), vec2<bool>(false, true)), false), vec2<bool>(global0.x, any(vec4<bool>(true, global0.x, false, true))), global0.x), !select(vec2<bool>(true, global0.x), vec2<bool>(true, true), true), select(!select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x), global0.x), !select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), global0.x), !vec2<bool>(global0.x, true)));
    let var_0 = 1000f;
    let var_1 = arg_1.e.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x));
    var var_3 = Struct_4(_wgslsmith_dot_vec4_u32(~abs(u_input.d), ~(~u_input.d | vec4<u32>(1u, u_input.b, global1.c.a.c, global1.b))), arg_0.b);
    return 703f;
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = Struct_5(global1.c.a);
    global1 = Struct_3(~(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 1288i, var_0.a.a, -2147483647i), vec4<i32>(u_input.c, global1.a.x, var_0.a.a, var_0.a.b.x)), ~0i) << (_wgslsmith_clamp_vec2_u32(select(vec2<u32>(var_0.a.c, u_input.a.x), vec2<u32>(u_input.b, 52559u), vec2<bool>(false, false)), abs(u_input.a), vec2<u32>(4294967295u, u_input.d.x)) % vec2<u32>(32u))), ~u_input.a.x, Struct_2(Struct_1(_wgslsmith_mod_i32(firstTrailingBit(-1i), -arg_0), vec2<i32>(arg_0, 0i) & abs(global1.c.a.b), u_input.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_4(48442u, global1.c), Struct_3(vec2<i32>(arg_0, 40366i), 3860u, Struct_2(global1.c.a), vec4<f32>(global1.d.x, 546f, 260f, global1.e.x), global1.e))), 1260f, _wgslsmith_f_op_f32(f32(-1f) * -833f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.e.x))))), vec4<f32>(global1.e.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(Struct_4(0u, global1.c), Struct_3(global1.a, global1.b, global1.c, vec4<f32>(global1.e.x, global1.d.x, global1.e.x, global1.d.x), vec4<f32>(global1.d.x, global1.e.x, global1.d.x, global1.d.x)))))), 1607f, _wgslsmith_f_op_f32(exp2(global1.d.x))));
    let var_1 = countOneBits(-1i << (_wgslsmith_add_u32(global1.c.a.c << (13044u % 32u), ~11808u | countOneBits(u_input.d.x)) % 32u));
    return true;
}

fn func_1(arg_0: i32) -> Struct_1 {
    global0 = vec2<bool>(global0.x, func_2(-u_input.c));
    var var_0 = Struct_3(vec2<i32>(~25101i, _wgslsmith_clamp_i32(-_wgslsmith_mod_i32(u_input.c, u_input.c), ~(~arg_0), _wgslsmith_sub_i32(8619i, ~u_input.c))), _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(1u, global1.c.a.c), u_input.b), _wgslsmith_dot_vec4_u32(~vec4<u32>(67629u, u_input.b, 19202u, global1.c.a.c), ~(u_input.d ^ u_input.d))), Struct_2(global1.c.a), global1.e, _wgslsmith_f_op_vec4_f32(select(global1.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.d) * _wgslsmith_f_op_vec4_f32(-global1.d))), select(vec4<bool>(false, true, !global0.x, true), !(!vec4<bool>(true, true, true, global0.x)), false))));
    var var_1 = Struct_3(var_0.c.a.b, reverseBits(u_input.d.x), Struct_2(var_0.c.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d), vec4<f32>(_wgslsmith_f_op_f32(-824f * global1.d.x), _wgslsmith_div_f32(var_0.e.x, global1.e.x), var_0.d.x, global1.e.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x)), _wgslsmith_f_op_f32(-2220f - var_0.e.x), _wgslsmith_f_op_f32(func_3(Struct_4(1u, Struct_2(Struct_1(-1i, global1.a, u_input.d.x))), Struct_3(vec2<i32>(-2147483647i, -5203i), _wgslsmith_dot_vec2_u32(vec2<u32>(31189u, 1u), u_input.d.wx), Struct_2(var_0.c.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-261f, 670f, global1.d.x, global1.e.x)), _wgslsmith_div_vec4_f32(var_0.d, vec4<f32>(752f, 468f, global1.e.x, 1000f))))), 465f));
    global1 = Struct_3(max(~(~(-global1.c.a.b)), -(~global1.c.a.b)), ~countOneBits(reverseBits(1u)), Struct_2(Struct_1(16616i, global1.c.a.b, ~_wgslsmith_div_u32(0u, var_0.b))), var_1.d, global1.e);
    var_1 = Struct_3(global1.a, 27977u, var_0.c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(global1.d, vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.e.x)), 239f, 1f, global1.e.x), select(vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(false, global0.x, true, true), global0.x))), var_0.e, _wgslsmith_dot_vec2_u32(select(u_input.d.yw, vec2<u32>(var_0.b, 4294967295u), true), min(u_input.a, vec2<u32>(29589u, 61307u))) >= 1u)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d) - vec4<f32>(global1.e.x, 1140f, var_1.e.x, var_0.d.x))))));
    return Struct_1(_wgslsmith_div_i32(countOneBits(1i), 1i), min(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(global1.c.a.b.x, global1.c.a.a)), global1.c.a.c);
}

fn func_4(arg_0: bool, arg_1: Struct_5, arg_2: Struct_2, arg_3: u32) -> Struct_3 {
    let var_0 = Struct_2(func_1(_wgslsmith_mod_i32(arg_1.a.b.x, -14i)));
    global0 = !vec2<bool>(true, !(!(arg_0 || global0.x)));
    var var_1 = global0.x;
    var_1 = any(!(!(!vec3<bool>(false, true, arg_0))));
    global0 = select(select(!(!(!vec2<bool>(global0.x, global0.x))), select(vec2<bool>(false, any(vec4<bool>(true, false, false, arg_0))), !vec2<bool>(global0.x, global0.x), select(!vec2<bool>(false, global0.x), select(vec2<bool>(global0.x, arg_0), vec2<bool>(true, false), global0.x), vec2<bool>(arg_0, arg_0))), 1i > _wgslsmith_add_i32(arg_2.a.a, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.x, arg_2.a.a), var_0.a.b))), select(vec2<bool>(any(!vec2<bool>(true, global0.x)), any(select(vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(arg_0, true, global0.x, true), vec4<bool>(global0.x, true, false, global0.x)))), select(select(select(vec2<bool>(true, false), vec2<bool>(arg_0, true), vec2<bool>(true, false)), vec2<bool>(true, true), -2147483647i < global1.c.a.a), !vec2<bool>(arg_0, arg_0), select(!vec2<bool>(true, global0.x), !vec2<bool>(arg_0, true), vec2<bool>(global0.x, true))), !global0.x), true);
    return Struct_3(vec2<i32>(global1.c.a.b.x, -_wgslsmith_sub_i32(2444i, var_0.a.b.x)), _wgslsmith_mult_u32(~(arg_1.a.c | max(arg_1.a.c, 42839u)), _wgslsmith_add_u32(arg_1.a.c, (49911u << (var_0.a.c % 32u)) ^ arg_3)), global1.c, _wgslsmith_f_op_vec4_f32(abs(global1.d)), _wgslsmith_f_op_vec4_f32(-global1.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.d;
    let var_1 = func_4(global0.x, Struct_5(func_1(countOneBits(global1.c.a.a))), Struct_2(func_1(u_input.c)), global1.b);
    var var_2 = var_0.xx;
    let var_3 = vec3<bool>(select(var_1.c.a.a <= abs(global1.a.x), !(!all(vec3<bool>(global0.x, global0.x, global0.x))), !(!any(vec2<bool>(global0.x, true)))), !(!any(vec2<bool>(true, false))), true && func_2(var_1.c.a.b.x));
    global0 = vec2<bool>(false, ~(~1u) == _wgslsmith_add_u32(abs(u_input.d.x) << (abs(46743u) % 32u), var_2.x));
    var var_4 = all(var_3.xx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(var_1.e.x, var_1.d.x, var_3.x | global0.x)));
}

