struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
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

var<private> global1: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(2147483647i), Struct_4(-10420i), Struct_4(-1i), Struct_4(-1407i), Struct_4(1i), Struct_4(-21643i), Struct_4(34705i), Struct_4(-1i), Struct_4(18513i), Struct_4(-44717i), Struct_4(1i), Struct_4(-14962i), Struct_4(-1i), Struct_4(-59668i));

var<private> global2: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> vec2<bool> {
    return !vec2<bool>(true, global0.x);
}

fn func_3(arg_0: vec4<bool>, arg_1: i32) -> bool {
    var var_0 = Struct_1(vec4<bool>(arg_0.x, true, !arg_0.x, global0.x && true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(835f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-872f + -925f), _wgslsmith_f_op_f32(select(185f, -278f, global0.x))))), countOneBits(arg_1));
    let var_1 = Struct_1(vec4<bool>(false, true, true, arg_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b))))), -(~_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(var_0.c, u_input.c.x, arg_1)), 48163i >> (0u % 32u), ~var_0.c)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -384f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-233f, -2013f)), var_1.b))), var_1.b));
    let var_3 = select(select(vec3<bool>(arg_0.x, var_1.a.x, false), select(vec3<bool>(arg_0.x, !global0.x, arg_0.x || var_1.a.x), vec3<bool>(func_2().x, false, true), select(!arg_0.wyx, var_1.a.zzx, select(arg_0.xwz, vec3<bool>(global0.x, var_1.a.x, false), true))), all(vec4<bool>(true, any(vec2<bool>(false, var_1.a.x)), !var_1.a.x, !var_0.a.x))), vec3<bool>(true, !any(!vec2<bool>(var_1.a.x, var_1.a.x)), (u_input.a.x & u_input.d.x) <= _wgslsmith_dot_vec2_u32(u_input.b & vec2<u32>(118575u, 71453u), u_input.a)), var_0.a.x);
    let var_4 = Struct_4(var_1.c);
    return all(select(!var_1.a.ywy, select(arg_0.wxy, var_1.a.xyw, !var_3), select(select(var_1.a.yxw, select(arg_0.wzz, vec3<bool>(var_3.x, var_1.a.x, false), var_1.a.x), global0.x), !select(arg_0.zzy, var_1.a.zxy, false), !vec3<bool>(false, true, global0.x))));
}

fn func_1() -> i32 {
    global0 = vec2<bool>(any(!select(select(vec2<bool>(global0.x, false), vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x)), select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true), vec2<bool>(global0.x, true)), func_2())), func_3(select(vec4<bool>(false | global0.x, all(vec4<bool>(global0.x, true, global0.x, global0.x)), global0.x, true), !select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), global0.x), select(vec4<bool>(false, true, false, global0.x), !vec4<bool>(global0.x, global0.x, global0.x, true), global0.x)), u_input.c.x));
    global0 = !vec2<bool>(!any(!vec4<bool>(global0.x, false, true, true)), any(!(!vec2<bool>(false, global0.x))));
    global0 = vec2<bool>(((2147483647i | u_input.c.x) < _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, 10515i, u_input.c.x)), abs(vec3<i32>(u_input.c.x, 40769i, -14877i)))) | ((u_input.a.x & u_input.d.x) <= ~_wgslsmith_dot_vec3_u32(u_input.d.zyx, vec3<u32>(u_input.d.x, u_input.d.x, u_input.b.x))), true);
    var var_0 = Struct_1(!(!select(select(vec4<bool>(true, true, true, global0.x), vec4<bool>(global0.x, true, global0.x, true), true), !vec4<bool>(global0.x, global0.x, global0.x, global0.x), !vec4<bool>(false, false, global0.x, global0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1758f)), -508f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(112f - -460f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1653f, 113f), _wgslsmith_f_op_f32(ceil(611f))))))), -countOneBits(_wgslsmith_div_i32(u_input.c.x, countOneBits(-2147483647i))));
    global0 = func_2();
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -5488i;
    let var_1 = Struct_1(select(select(vec4<bool>(all(vec4<bool>(true, false, global0.x, global0.x)), true, false, false), vec4<bool>(!global0.x, true, false, true), !vec4<bool>(global0.x, global0.x, false, true)), vec4<bool>(_wgslsmith_add_i32(u_input.c.x, -1i) > _wgslsmith_mod_i32(u_input.c.x, -1i), !all(vec3<bool>(false, global0.x, global0.x)), !global0.x, true), select(select(!vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, false, false, true), select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), true)), select(select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, false, true), global0.x), !vec4<bool>(global0.x, global0.x, true, global0.x), !global0.x), true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1149f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -786f))) + -1742f), ~_wgslsmith_clamp_i32(func_1(), func_1(), u_input.c.x));
    global1 = array<Struct_4, 14>();
    let var_2 = -41333i;
    var var_3 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(-289f);
}

