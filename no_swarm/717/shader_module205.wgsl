struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, 2147483647i);

var<private> global1: bool = false;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1007f + 1512f), _wgslsmith_f_op_f32(f32(-1f) * -308f))), _wgslsmith_f_op_f32(f32(-1f) * -317f)))));
    let var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), 1906f) * vec2<f32>(_wgslsmith_f_op_f32(-543f + -1096f), var_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0)))), Struct_2(Struct_1(!all(vec4<bool>(false, true, false, true)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_0)))), !all(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-395f, var_0.x, var_0.x)))))), vec3<u32>(_wgslsmith_mod_u32(~85425u, u_input.a.x), ~u_input.a.x, u_input.a.x)), ~(~_wgslsmith_div_u32(u_input.a.x, u_input.a.x)));
    global0 = -(-_wgslsmith_clamp_vec2_i32(-vec2<i32>(global0.x, global0.x), _wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(global0.x, global0.x)), firstLeadingBit(vec2<i32>(0i, global0.x))) ^ -select(-vec2<i32>(global0.x, global0.x), vec2<i32>(1i, -1i) << (var_1.b.d.yx % vec2<u32>(32u)), select(vec2<bool>(true, false), vec2<bool>(var_1.b.b, true), false)));
    global1 = true;
    var var_2 = var_1.b.a;
    return _wgslsmith_sub_i32(-(~_wgslsmith_div_i32(~global0.x, _wgslsmith_div_i32(30589i, 2147483647i))), -1i);
}

fn func_2(arg_0: i32) -> i32 {
    global0 = max(vec2<i32>(~func_3(), ~(-1i)), select(vec2<i32>(global0.x, arg_0), vec2<i32>(~arg_0, 14676i), vec2<bool>(true, true))) >> (vec2<u32>(~(~u_input.a.x ^ 6717u), ~u_input.a.x) % vec2<u32>(32u));
    var var_0 = any(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, true, any(vec4<bool>(false, true, true, false)), true), vec4<bool>(true, select(true, true, u_input.a.x == 0u), any(vec2<bool>(true, false)), !(-49983i < global0.x))));
    var var_1 = Struct_4(Struct_3(Struct_1(true, vec2<f32>(1f, 1f)), _wgslsmith_sub_i32(0i, max(-1977i, -3099i)), Struct_1(false, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(343f, 2786f))))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(false, true, false)), any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true)))));
    let var_2 = var_1.a.b;
    let var_3 = vec2<bool>(true, var_1.a.a.a);
    return -(abs(arg_0) >> (65678u % 32u));
}

fn func_1(arg_0: vec3<u32>) -> vec2<bool> {
    let var_0 = _wgslsmith_add_i32(min(func_2(global0.x), global0.x), global0.x) >> (_wgslsmith_dot_vec2_u32(~(~vec2<u32>(23942u, u_input.a.x) | vec2<u32>(u_input.a.x, 0u)), vec2<u32>(arg_0.x & u_input.a.x, u_input.a.x)) % 32u);
    global1 = max(countOneBits(_wgslsmith_dot_vec2_u32(arg_0.xy, select(vec2<u32>(arg_0.x, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x), false))), firstLeadingBit(abs(4294967295u))) > 0u;
    var var_1 = Struct_2(Struct_1(any(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(879f, -1036f) + vec2<f32>(-416f, 987f)) + vec2<f32>(420f, -886f)))), false, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(801f + 3227f)) * _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(f32(-1f) * -1724f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-162f, 707f, true))) - _wgslsmith_f_op_f32(-608f + -477f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(floor(106f))))), ~((countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, 66327u)) >> (vec3<u32>(u_input.a.x, 14605u, 1u) % vec3<u32>(32u))) & ~vec3<u32>(arg_0.x, u_input.a.x, u_input.a.x)));
    let var_2 = 4294967295u;
    let var_3 = Struct_2(Struct_1(true, var_1.c.xy), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.c)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1221f, 2919f, -411f)))))))), max(_wgslsmith_mult_vec3_u32(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 16295u, 1u), arg_0)), var_1.d), vec3<u32>((var_2 << (var_1.d.x % 32u)) << (4294967295u % 32u), ~44695u, _wgslsmith_div_u32(u_input.a.x, arg_0.x))));
    return select(vec2<bool>(true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_3.c.x)), _wgslsmith_f_op_f32(-var_1.a.b.x), true)) >= -241f), select(vec2<bool>(true, var_3.b), !(!vec2<bool>(var_1.a.a, true)), var_1.a.a), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1102f))) >= _wgslsmith_f_op_f32(ceil(791f))) | true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_1(reverseBits(firstTrailingBit(vec3<u32>(1u, 1u, 1u))));
    let var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-305f)) * 1354f)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-603f, -2079f) * vec2<f32>(815f, 132f))))), Struct_2(Struct_1(var_0.x, vec2<f32>(-2056f, _wgslsmith_f_op_f32(trunc(-1342f)))), true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1180f, -2376f, -565f) * vec3<f32>(-1321f, 572f, 1000f)))), vec3<f32>(-1883f, 947f, -358f)), max(select(vec3<u32>(u_input.a.x, 1u, 44772u), ~vec3<u32>(u_input.a.x, 0u, 4294967295u), !vec3<bool>(true, var_0.x, var_0.x)), _wgslsmith_add_vec3_u32(~vec3<u32>(1u, 4294967295u, u_input.a.x), ~vec3<u32>(u_input.a.x, u_input.a.x, 2732u)))), (u_input.a.x << (_wgslsmith_dot_vec2_u32(~u_input.a, max(vec2<u32>(0u, 0u), u_input.a)) % 32u)) << (4212u % 32u));
    let var_2 = var_1.b.a;
    let var_3 = _wgslsmith_f_op_f32(2202f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1111f, -1000f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.b.x * var_1.a.x)))), _wgslsmith_div_f32(-349f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-184f * 1000f) * var_2.b.x)))));
    let var_4 = global0.x;
    let var_5 = var_1;
    var var_6 = !var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer((var_1.b.d << (~vec3<u32>(var_1.c, var_5.c, u_input.a.x) % vec3<u32>(32u))) << (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)));
}

