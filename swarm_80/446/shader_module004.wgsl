struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = Struct_2(Struct_1(arg_1.a, _wgslsmith_div_f32(-262f, -592f), min(abs(min(arg_1.c, arg_2.c)), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(arg_2.c, vec2<u32>(u_input.b, arg_1.c.x)), vec2<u32>(u_input.b, 1u)))), 1040f, vec2<bool>(true, arg_1.a.x));
    let var_1 = _wgslsmith_mult_i32(countOneBits(-9083i), u_input.c | -_wgslsmith_clamp_i32(-9015i, i32(-1i) * -2147483647i, -1i));
    var var_2 = ~arg_0;
    var_2 = ~(~max(arg_0, arg_0));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b - arg_1.b) - -1000f);
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b), var_0.a.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(402f, 527f), vec2<f32>(var_0.b, 400f), vec2<bool>(false, arg_2.a.x)))), vec2<f32>(var_0.b, _wgslsmith_f_op_f32(-arg_2.b))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_3)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1000f))), vec2<f32>(-934f, -301f), true)))));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>) -> f32 {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-634f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.b, arg_0.b)))), 152f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(u_input.b, Struct_1(vec3<bool>(false, arg_0.a.a.x, false), arg_0.b, arg_1), arg_0.a)))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(arg_0.a.b)), _wgslsmith_f_op_f32(var_0.x + 290f));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1011f, 852f) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(var_0.x - -325f), -687f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1079f, -131f) + vec2<f32>(arg_0.b, 493f)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(942f, arg_0.b) * vec2<f32>(389f, -253f))))) * vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.a.b)) - _wgslsmith_f_op_f32(-arg_0.b)))));
    let var_1 = arg_0;
    return var_0.x;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_i32(-1i, abs(~(arg_0.x ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.d, arg_0.x), vec3<i32>(arg_0.x, u_input.a.x, arg_0.x)))));
    let var_1 = vec3<u32>(u_input.b | 4294967295u, u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(48275u, u_input.b)) << (4294967295u % 32u)) >> (vec3<u32>(~(~u_input.b ^ ~u_input.b), 9098u, 33864u) % vec3<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1257f, _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(vec3<bool>(false, false, true), 522f, var_1.xx), 596f, vec2<bool>(false, true)), var_1.yz)), true))));
    var var_3 = -691f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(vec3<bool>(false, true, false), 179f, vec2<u32>(u_input.b, var_1.x)), 185f, vec2<bool>(false, false)), vec2<u32>(var_1.x, u_input.b))))), 1424f);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_2))))))), _wgslsmith_f_op_f32(select(696f, -159f, all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))))));
    return Struct_1(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !any(vec3<bool>(false, false, true))), var_2, var_1.zz);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<f32>) -> vec2<u32> {
    let var_0 = select(~1u, arg_2.a.c.x, !arg_2.a.a.x);
    let var_1 = max(vec4<u32>(~arg_2.a.c.x, var_0 << (49538u % 32u), arg_2.a.c.x, arg_2.a.c.x), _wgslsmith_mod_vec4_u32(~(vec4<u32>(0u, arg_2.a.c.x, var_0, var_0) ^ ~vec4<u32>(arg_1.a.c.x, 4294967295u, arg_2.a.c.x, arg_1.a.c.x)), firstTrailingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(17019u, 4294967295u, arg_2.a.c.x, var_0), vec4<u32>(u_input.b, var_0, 22938u, 1u)))));
    return max(var_1.wz, ~(~vec2<u32>(_wgslsmith_sub_u32(1u, var_1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), arg_1.a.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(-610f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -498f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2117f) * _wgslsmith_f_op_f32(sign(-384f)))) + -2028f)));
    let var_1 = _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-var_0));
    let var_2 = ~func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -1145f) - vec3<f32>(var_1, var_1, var_0))), Struct_2(func_1(vec2<i32>(-5727i, 1i)), var_1, vec2<bool>(true, false)), Struct_2(func_1(vec2<i32>(-4793i, -25878i)), -1229f, vec2<bool>(true, true)), vec2<f32>(_wgslsmith_f_op_f32(ceil(var_1)), _wgslsmith_f_op_f32(var_0 + var_1))) | _wgslsmith_sub_vec2_u32(~vec2<u32>(4056u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 45603u), vec2<u32>(u_input.b, u_input.b))), _wgslsmith_add_vec2_u32(reverseBits(~vec2<u32>(u_input.b, 33718u)), _wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(31332u, 4294967295u)), ~vec2<u32>(u_input.b, u_input.b))));
    var var_3 = func_1(max(~(~vec2<i32>(u_input.c, u_input.c)), u_input.a.zx));
    var_3 = Struct_1(!vec3<bool>((var_3.a.x & false) != false, var_3.a.x, var_3.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1123f)), ~var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.x | 23099u, _wgslsmith_add_vec4_u32(max(~vec4<u32>(1u, 10096u, u_input.b, 8532u), vec4<u32>(u_input.b, 17365u, u_input.b, 2538u)), select(~vec4<u32>(var_2.x, 13326u, var_2.x, 12278u), abs(vec4<u32>(var_3.c.x, 8742u, var_2.x, 1u)), !vec4<bool>(false, var_3.a.x, true, var_3.a.x))) ^ min(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, 35218u, var_3.c.x, 4294967295u), vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<u32>(u_input.b, 39796u, u_input.b, 12018u)), vec4<u32>(~u_input.b, abs(var_3.c.x), ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.c.x, u_input.b, var_2.x, var_2.x), vec4<u32>(u_input.b, var_2.x, 7897u, u_input.b)))), u_input.a);
}

