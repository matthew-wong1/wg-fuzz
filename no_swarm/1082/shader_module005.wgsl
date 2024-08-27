struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 21>;

var<private> global1: array<vec4<f32>, 23>;

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

var<private> global3: array<vec3<bool>, 31>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> vec3<u32> {
    return ~(~arg_1.a);
}

fn func_3() -> vec2<bool> {
    global1 = array<vec4<f32>, 23>();
    let var_0 = global2.x | true;
    global1 = array<vec4<f32>, 23>();
    var var_1 = any(!select(select(!vec4<bool>(global2.x, true, true, true), vec4<bool>(true, global2.x, global2.x, var_0), false), select(vec4<bool>(true, var_0, var_0, true), select(vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(true, var_0, false, false), vec4<bool>(true, var_0, global2.x, true)), select(vec4<bool>(true, true, false, global2.x), vec4<bool>(true, false, var_0, var_0), true)), vec4<bool>(var_0, global2.x & true, true, !var_0)));
    global3 = array<vec3<bool>, 31>();
    return global2.zx;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(~(select(u_input.b, func_2(Struct_1(vec2<f32>(649f, -921f), global2.zx), Struct_2(u_input.b, Struct_1(vec2<f32>(-348f, 324f), vec2<bool>(global2.x, global2.x)))), true) | u_input.b), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1042f, -564f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -463f) - vec2<f32>(1610f, 1470f))), func_3())), select(global2.zz, vec2<bool>(true, select(false, global2.x, global2.x)), vec2<bool>(global2.x, any(vec3<bool>(global2.x, global2.x, true))))));
    global3 = array<vec3<bool>, 31>();
    let var_1 = Struct_1(var_0.b.a, global2.yy);
    let var_2 = -select(1i, 52977i, true);
    global3 = array<vec3<bool>, 31>();
    return Struct_1(vec2<f32>(var_0.b.a.x, var_0.b.a.x), vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(582f))) >= var_0.b.a.x, false || (true && global2.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(~u_input.b.x, u_input.b.x), 57139u), firstTrailingBit(~u_input.a.x), _wgslsmith_clamp_u32(select(34627u, max(67562u, 3276u), 1u == u_input.b.x), _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b.x, u_input.a.x), _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(1u, 4294967295u, u_input.b.x))), 0u), 64481u) & vec4<u32>(_wgslsmith_add_u32(29504u, 0u), min(_wgslsmith_dot_vec2_u32(u_input.a, firstLeadingBit(vec2<u32>(4294967295u, u_input.b.x))), _wgslsmith_clamp_u32(u_input.b.x, countOneBits(0u), u_input.b.x)), u_input.a.x, ~u_input.a.x);
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.a.x)) * -1249f))), !select(global2.xy, vec2<bool>(!global2.x, func_3().x), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(firstTrailingBit(u_input.b << (~u_input.b % vec3<u32>(32u))), func_4(func_1(), func_1()));
    var var_1 = -214f;
    var var_2 = Struct_2(u_input.b, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.b.a.x, var_0.b.a.x)))), select(func_1().b, select(select(var_0.b.b, vec2<bool>(global2.x, true), true), func_1().b, func_3()), true)));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1279f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.b.a.x + var_0.b.a.x))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.a.x + var_0.b.a.x)))), var_0.b.a.x), vec4<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1591f - 2234f), _wgslsmith_f_op_f32(-var_0.b.a.x))) * -165f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-193f, -954f))))), true));
    var var_4 = Struct_2(u_input.b, Struct_1(var_2.b.a, vec2<bool>(func_1().b.x, var_0.b.b.x)));
    let var_5 = vec3<i32>(-1i << (u_input.a.x % 32u), ~_wgslsmith_mult_i32(1i, -1i), min(_wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 12205i), vec2<i32>(0i, -1i)), i32(-1i) * -29398i), countOneBits(i32(-1i) * -1i)), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(var_4.b.a.x, 157f), var_4.b.a))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.a)) - vec2<f32>(-2744f, _wgslsmith_f_op_f32(select(-682f, var_3.x, false))))), var_2.a.x);
}

