struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(1107f, vec2<u32>(53713u, 1u)), vec4<i32>(-1i, i32(-2147483648), 12578i, 9309i), 670f);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: i32, arg_3: vec4<bool>) -> vec4<u32> {
    let var_0 = -_wgslsmith_sub_i32(global0.b.x, i32(-1i) * -6894i);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-global0.c), vec2<u32>(global0.a.b.x, arg_0.x));
    var var_2 = global0.b.x;
    var var_3 = !arg_3.x;
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2162f + global0.c)), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(global0.a.b, vec2<u32>(arg_0.x, arg_1.x)), reverseBits(vec2<u32>(0u, 1u)))), countOneBits(vec4<i32>(_wgslsmith_div_i32(i32(-1i) * -1i, var_0), arg_2, 2147483647i, ~(-40730i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c * global0.c)));
    return vec4<u32>(1u << (1u % 32u), reverseBits(_wgslsmith_sub_u32(firstTrailingBit(4294967295u), var_1.b.x) << (_wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, arg_1.x, global0.a.b.x, arg_0.x), arg_0), max(arg_0, arg_0)) % 32u)), 19578u, abs(arg_1.x >> (1u % 32u)));
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = ~(~max(vec4<u32>(302u << (u_input.c % 32u), u_input.c >> (4294967295u % 32u), 4964u, global0.a.b.x), func_3(~vec4<u32>(11910u, 15761u, 7946u, 0u), vec2<u32>(global0.a.b.x, 1u) | vec2<u32>(global0.a.b.x, global0.a.b.x), 2147483647i, vec4<bool>(true, true, true, true))));
    var var_1 = Struct_2(global0.a, firstLeadingBit(((vec4<i32>(2147483647i, -2147483647i, global0.b.x, 29719i) << (vec4<u32>(0u, 1u, 74427u, var_0.x) % vec4<u32>(32u))) | vec4<i32>(0i, -1i, 1i, 40221i)) << (vec4<u32>(4294967295u, var_0.x ^ 61827u, global0.a.b.x >> (84422u % 32u), global0.a.b.x) % vec4<u32>(32u))), -474f);
    var var_2 = var_1.a;
    global0 = Struct_2(Struct_1(732f, var_2.b), ~min(global0.b, ~global0.b), global0.a.a);
    let var_3 = firstLeadingBit(~global0.b.zxx);
    return Struct_2(global0.a, ~(-(~vec4<i32>(var_3.x, var_3.x, var_3.x, global0.b.x))), _wgslsmith_f_op_f32(159f * _wgslsmith_f_op_f32(global0.c - arg_0)));
}

fn func_1(arg_0: Struct_2) -> bool {
    var var_0 = 4294967295u;
    global0 = arg_0;
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1469f, global0.c))), _wgslsmith_f_op_f32(-arg_0.c), all(select(vec2<bool>(true, false), vec2<bool>(false, false), true)))), global0.a.b), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.b.x, -2147483647i, _wgslsmith_add_i32(1i, arg_0.b.x >> (arg_0.a.b.x % 32u)), firstTrailingBit(countOneBits(global0.b.x))), _wgslsmith_mod_vec4_i32(min(arg_0.b, ~vec4<i32>(-13742i, 42893i, arg_0.b.x, global0.b.x)), arg_0.b | vec4<i32>(-2147483647i, global0.b.x, global0.b.x, global0.b.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(776f))), global0.a.a)));
    global0 = func_2(global0.a.a);
    global0 = arg_0;
    return (_wgslsmith_add_i32(global0.b.x, arg_0.b.x) ^ ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.x, arg_0.b.x), vec2<i32>(arg_0.b.x, global0.b.x))) == (i32(-1i) * -2147483647i);
}

fn func_4(arg_0: bool) -> bool {
    global0 = Struct_2(func_2(_wgslsmith_div_f32(-541f, _wgslsmith_f_op_f32(-1012f * _wgslsmith_div_f32(1066f, global0.c)))).a, vec4<i32>(i32(-1i) * -global0.b.x, ~global0.b.x, 61133i, _wgslsmith_dot_vec4_i32(-vec4<i32>(global0.b.x, 2147483647i, -2147483647i, global0.b.x), vec4<i32>(0i, global0.b.x, global0.b.x, -11773i))) << (vec4<u32>(11628u, _wgslsmith_dot_vec3_u32(~vec3<u32>(86031u, u_input.d, 1u), ~vec3<u32>(u_input.d, u_input.a, 1u)), ~_wgslsmith_sub_u32(3734u, u_input.b), func_3(vec4<u32>(global0.a.b.x, u_input.d, 1u, 1u) >> (vec4<u32>(u_input.a, global0.a.b.x, u_input.c, 1u) % vec4<u32>(32u)), vec2<u32>(u_input.d, 0u), -global0.b.x, select(vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(true, arg_0, false, arg_0))).x) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-1f));
    global0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-713f)) * _wgslsmith_f_op_f32(round(553f))));
    var var_0 = ~vec4<u32>(global0.a.b.x, firstTrailingBit(~global0.a.b.x), 4294967295u, u_input.b) >> (~firstLeadingBit(vec4<u32>(u_input.a ^ 1u, global0.a.b.x, u_input.b ^ 7189u, 68362u)) % vec4<u32>(32u));
    let var_1 = true;
    var var_2 = Struct_1(func_2(_wgslsmith_f_op_f32(func_2(867f).c - 378f)).a.a, vec2<u32>(_wgslsmith_dot_vec3_u32(~(~var_0.xyy), vec3<u32>(u_input.a & global0.a.b.x, 26217u, ~38999u)), ~_wgslsmith_add_u32(var_0.x >> (0u % 32u), _wgslsmith_sub_u32(41413u, 39725u))));
    return all(vec3<bool>(true, all(select(select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, var_1, false), var_1), vec3<bool>(true, true, true), arg_0)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(any(!vec3<bool>(func_1(Struct_2(Struct_1(global0.c, global0.a.b), global0.b, 224f)), false, 149f <= global0.a.a)));
    let var_1 = _wgslsmith_mult_i32(abs(global0.b.x), ~global0.b.x);
    let var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c - global0.c) + _wgslsmith_f_op_f32(global0.c + -790f))));
    global0 = var_2;
    var var_3 = ~firstLeadingBit(-vec4<i32>(28956i, 17902i, -3934i, 2147483647i)) | vec4<i32>(var_1, var_2.b.x, _wgslsmith_div_i32(-1i, -(global0.b.x & var_2.b.x)), global0.b.x);
    var_3 = select(reverseBits(~(-global0.b)), global0.b, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global0.c - _wgslsmith_div_f32(1245f, _wgslsmith_f_op_f32(f32(-1f) * -812f))), func_2(1000f).a.b);
}

