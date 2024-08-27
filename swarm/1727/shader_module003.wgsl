struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
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

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2) -> vec4<i32> {
    return firstLeadingBit(vec4<i32>(~21328i, arg_1.b, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c.c.x, arg_1.b), vec2<i32>(1i, arg_1.b)), -3944i));
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    var var_0 = Struct_2(~(~select(firstTrailingBit(u_input.a), u_input.a, select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)))), -1i, Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(arg_0.xz)), _wgslsmith_div_vec2_f32(vec2<f32>(-220f, 831f), arg_0.zy), false)))), min(~0u, u_input.a.x | u_input.a.x) | u_input.a.x, func_3(u_input.a.zz, Struct_2(vec3<u32>(87332u, u_input.b, u_input.c), ~(-1i), Struct_1(vec2<f32>(arg_0.x, arg_0.x), 50962u, vec4<i32>(1i, -1i, 43546i, 1i))))));
    let var_1 = -var_0.c.c.ywy;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -291f);
    var var_3 = Struct_3(min(vec3<i32>(min(0i, ~var_0.c.c.x), ~var_0.b, 1i), vec3<i32>(firstTrailingBit(-16586i), var_0.c.c.x, ~(-var_0.c.c.x))), !select(all(vec4<bool>(true, false, false, false)), false, true) && any(vec4<bool>(true, all(vec3<bool>(false, false, true)), arg_0.x > var_2, true)), 774f, abs(~_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(15654u, u_input.a.x, var_0.a.x, u_input.d)), ~vec4<u32>(4294967295u, u_input.b, 26052u, 1u))));
    var_0 = Struct_2(vec3<u32>(~(_wgslsmith_clamp_u32(var_3.d.x, var_3.d.x, 0u) & _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(0u, 1u, 1u))), ~0u, ~1u), -_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(max(var_0.c.c, vec4<i32>(16215i, var_1.x, 2147483647i, var_3.a.x)), vec4<i32>(var_3.a.x, var_0.b, -44422i, -2147483647i)), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, 17601i, var_3.a.x, var_0.b), vec4<i32>(-63431i, 1i, -15266i, var_0.c.c.x)), ~vec4<i32>(-2147483647i, 751i, -1i, 26959i))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(var_0.c.a.x - _wgslsmith_f_op_f32(-arg_0.x)), -535f), 50124u, var_0.c.c));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.c.a.x), _wgslsmith_f_op_f32(f32(-1f) * -193f))), _wgslsmith_f_op_f32(min(var_3.c, _wgslsmith_f_op_f32(step(var_3.c, _wgslsmith_f_op_f32(arg_0.x * arg_0.x))))))));
}

fn func_1() -> vec4<f32> {
    return vec4<f32>(_wgslsmith_f_op_f32(-535f + _wgslsmith_f_op_f32(sign(-1530f))), _wgslsmith_f_op_f32(-850f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-256f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(163f)), _wgslsmith_f_op_f32(trunc(-1545f))))), 1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<f32>(-1541f, -1395f, -732f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_1());
    var var_1 = u_input.a.x;
    var_1 = ~206u;
    var var_2 = Struct_2(min(~_wgslsmith_add_vec3_u32(u_input.a, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.a.x, 0u), vec3<u32>(8307u, 4294967295u, u_input.a.x))), abs(~u_input.a)), 46688i, Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-959f + var_0.x)), var_0.zx, true)), 38474u, -vec4<i32>(2147483647i, ~2147483647i, 2147483647i, -9323i)));
    var_1 = firstLeadingBit(abs(_wgslsmith_add_u32(~abs(u_input.a.x), select(1u, abs(u_input.c), true))));
    var var_3 = select(~(~(~vec4<u32>(u_input.c, 52351u, 4294967295u, 27405u))), ~firstLeadingBit(~vec4<u32>(var_2.a.x, 1u, u_input.c, 50444u)), var_2.c.b != reverseBits(reverseBits(var_2.a.x << (0u % 32u))));
    let var_4 = !(4294967295u > var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(select(-2033f, _wgslsmith_f_op_f32(max(1614f, var_2.c.a.x)), var_2.c.c.x > 2147483647i)))))));
}

