struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
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

var<private> global0: array<Struct_5, 1>;

var<private> global1: vec3<u32>;

var<private> global2: vec3<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_4) -> vec4<u32> {
    var var_0 = global2.yy;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(-var_0.x)), -753f, _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.x * var_0.x))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-629f, 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -361f)));
    var var_2 = arg_0;
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(global2.xz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.zx) * vec2<f32>(global2.x, var_1.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global2.zx))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -130f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), !(true && select(true, false, any(vec2<bool>(false, true))))));
    let var_3 = Struct_5(var_1.zxz, min(_wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(u_input.b, u_input.b), ~(vec4<u32>(0u, u_input.b.x, 104598u, global1.x) >> (vec4<u32>(81929u, 29572u, 86573u, 0u) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(abs(arg_0.a), u_input.b)), ~abs(vec4<u32>(var_2.a.x, var_2.a.x, 10081u, 12232u) >> (vec4<u32>(var_2.a.x, 4294967295u, var_2.a.x, 0u) % vec4<u32>(32u)))), Struct_4(~countOneBits(min(vec4<u32>(51977u, 4294967295u, 39673u, arg_0.a.x), vec4<u32>(global1.x, arg_0.a.x, arg_0.a.x, var_2.a.x)))));
    return abs(_wgslsmith_div_vec4_u32(arg_0.a, _wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(arg_0.a, var_2.a), ~_wgslsmith_mod_vec4_u32(vec4<u32>(18343u, 34748u, 1u, arg_0.a.x), var_3.c.a))));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1148f, _wgslsmith_f_op_f32(ceil(-918f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(global2.zy, global2.xz, vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(abs(global2.xy)), vec2<bool>(true, true))) + vec2<f32>(_wgslsmith_f_op_f32(min(global2.x, 215f)), _wgslsmith_f_op_f32(max(global2.x, global2.x))))));
    let var_1 = 0i;
    var var_2 = !any(vec3<bool>(true, !all(vec4<bool>(true, false, true, true)), true));
    var var_3 = Struct_4(~_wgslsmith_add_vec4_u32(~vec4<u32>(12562u, 1u, global1.x, 4294967295u), vec4<u32>(3247u, 20389u, u_input.c.x, u_input.b.x)) & vec4<u32>(abs(93948u), 1u & countOneBits(global1.x), ~(~0u), 4294967295u));
    let var_4 = max(firstTrailingBit(global1.x), global1.x);
    return _wgslsmith_f_op_f32(sign(var_0.x));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec2<f32>) -> bool {
    var var_0 = Struct_2(arg_1, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(firstTrailingBit(0i), arg_2.c), u_input.a.x, u_input.a.x));
    let var_1 = 0u;
    var var_2 = !vec2<bool>(!(!any(vec4<bool>(true, arg_1.a, false, false))), any(vec4<bool>(!arg_1.a, var_0.a.a, true, false)));
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.a.x, var_0.b, u_input.a.x, arg_2.c))) - _wgslsmith_div_f32(arg_3.x, -1659f))), arg_3.x));
    var var_3 = select(vec3<bool>(true, any(select(select(vec2<bool>(false, var_0.a.a), vec2<bool>(var_0.a.a, true), vec2<bool>(true, false)), !vec2<bool>(arg_1.a, var_2.x), vec2<bool>(false, var_2.x))), true), select(vec3<bool>(any(vec3<bool>(true, true, var_0.a.a)), !var_2.x, any(select(vec2<bool>(var_0.a.a, var_2.x), vec2<bool>(false, arg_1.a), vec2<bool>(var_2.x, false)))), select(vec3<bool>(true, true, true), !(!vec3<bool>(true, false, var_2.x)), vec3<bool>(true, true, true)), !vec3<bool>(true, any(vec2<bool>(true, var_2.x)), false)), select(vec3<bool>(select(arg_2.d <= -167f, true, true), var_0.a.a && (false & arg_1.a), false), select(vec3<bool>(true, true && var_2.x, !arg_1.a), vec3<bool>(u_input.a.x == arg_2.c, !var_0.a.a, any(vec4<bool>(var_2.x, true, false, var_2.x))), select(vec3<bool>(true, var_0.a.a, var_2.x), vec3<bool>(var_2.x, true, var_2.x), select(vec3<bool>(false, arg_1.a, false), vec3<bool>(false, true, arg_1.a), var_0.a.a))), vec3<bool>(any(vec4<bool>(true, false, false, true)), !all(vec4<bool>(arg_1.a, false, var_0.a.a, arg_1.a)), any(vec2<bool>(var_2.x, true)))));
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~34363u);
    let var_1 = u_input.b >> (func_1(Struct_4(firstTrailingBit(u_input.b))) % vec4<u32>(32u));
    let var_2 = u_input.a.x;
    global0 = array<Struct_5, 1>();
    let var_3 = global1.x;
    let var_4 = select(select(vec3<bool>(true, true, true), !vec3<bool>(any(vec2<bool>(false, false)), all(vec2<bool>(true, true)), any(vec3<bool>(false, false, false))), true), vec3<bool>(false, !(!func_2(Struct_4(var_1), Struct_1(false), Struct_3(var_1.x, u_input.c, -2147483647i, -234f), vec2<f32>(global2.x, -1000f))), true), !all(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))));
    var var_5 = vec3<f32>(-292f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global2.x)))))), global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(~u_input.a.x, _wgslsmith_add_i32(20155i, var_2), 0i, 1i))), -737f));
}

