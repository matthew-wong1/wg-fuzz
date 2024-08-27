struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_1(~u_input.c, reverseBits(u_input.e.x));
    var var_1 = Struct_5(Struct_4(vec3<u32>(~4294967295u, var_0.a.x, _wgslsmith_mod_u32(global0.a.x >> (global0.a.x % 32u), _wgslsmith_mod_u32(4294967295u, u_input.c.x))), global0.b), Struct_4(u_input.c, -587f));
    let var_2 = vec2<u32>(1u >> ((firstTrailingBit(0u) ^ ~(~global0.a.x)) % 32u), 6227u);
    let var_3 = ~firstLeadingBit(_wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_sub_i32(u_input.e.x, u_input.d), u_input.b, 32966i >> (1u % 32u), u_input.a.x)));
    var var_4 = ~(firstTrailingBit(~vec2<u32>(global0.a.x, 0u)) | select(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.a.a.x, 89748u), ~vec2<u32>(var_0.a.x, u_input.c.x), vec2<u32>(1u, var_0.a.x) | var_2), vec2<u32>(abs(global0.a.x), var_1.a.a.x), vec2<bool>(global0.b < -393f, all(vec2<bool>(true, true)))));
    return !select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, true, false, true)), any(vec3<bool>(false, true, true)))), select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), true), vec2<bool>(true, true)), vec2<bool>(select(true, true, true), _wgslsmith_f_op_f32(-global0.b) > _wgslsmith_f_op_f32(exp2(var_1.b.b))));
}

fn func_4(arg_0: bool, arg_1: Struct_5, arg_2: vec2<i32>, arg_3: Struct_3) -> vec2<f32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -516f) - global0.b))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(945f, arg_1.a.b)), _wgslsmith_f_op_f32(-arg_3.a)))), arg_3.a, arg_0)), -1155f);
    var var_1 = Struct_5(Struct_4(u_input.c, _wgslsmith_f_op_f32(-arg_1.b.b)), arg_1.b);
    let var_2 = !vec2<bool>(all(func_3()), false);
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, -1959f, arg_1.a.b))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(803f, var_1.b.b, 1778f) + vec3<f32>(arg_1.b.b, arg_1.a.b, global0.b)))), vec3<f32>(arg_1.b.b, global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b.x - var_1.b.b) + var_1.b.b))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.b, _wgslsmith_f_op_f32(sign(var_1.b.b)), _wgslsmith_f_op_f32(global0.b * var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-183f, global0.b, -834f), vec3<f32>(-1977f, 461f, -604f)), vec3<f32>(var_0.x, var_1.a.b, arg_1.a.b)))))));
    var var_3 = arg_1;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.b, global0.b)))) * vec2<f32>(1499f, arg_1.a.b));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: vec4<i32>, arg_3: bool) -> f32 {
    let var_0 = Struct_1(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.c, firstLeadingBit(vec3<u32>(24461u, 51957u, global0.a.x)), ~abs(vec3<u32>(global0.a.x, 1u, u_input.c.x))), _wgslsmith_clamp_vec3_u32(u_input.c, vec3<u32>(4294967295u, u_input.c.x, 1u), ~max(u_input.c, u_input.c))), u_input.b);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -626f), _wgslsmith_f_op_f32(floor(global0.b)));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(127f, global0.b));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(747f, global0.b))))))), _wgslsmith_f_op_vec2_f32(func_4(all(func_3()), Struct_5(Struct_4(max(vec3<u32>(var_0.a.x, var_0.a.x, global0.a.x), var_0.a), global0.b), Struct_4(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, 1u, 0u), vec3<u32>(u_input.c.x, 1u, 48859u)), 667f)), min(vec2<i32>(arg_1 | arg_1, _wgslsmith_sub_i32(u_input.a.x, arg_0.x)), abs(max(vec2<i32>(0i, arg_1), arg_0.xx))), Struct_3(946f, vec2<f32>(_wgslsmith_f_op_f32(step(global0.b, -128f)), _wgslsmith_f_op_f32(-global0.b))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.b, _wgslsmith_f_op_f32(var_2.a * -497f), _wgslsmith_f_op_f32(var_2.a + var_1.x)))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(step(-557f, var_1.x)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_1.x);
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_5 {
    global0 = Struct_2(~(~global0.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(sign(128f))) - _wgslsmith_f_op_f32(func_2(~(-vec4<i32>(u_input.e.x, 98897i, -14845i, u_input.a.x)), -49127i, ~reverseBits(u_input.a), any(!vec4<bool>(false, arg_1, arg_1, arg_1))))));
    let var_0 = Struct_4(~vec3<u32>(arg_0.a.x, firstLeadingBit(u_input.c.x), u_input.c.x) & _wgslsmith_div_vec3_u32(arg_0.a, vec3<u32>(arg_0.a.x, ~arg_0.a.x, _wgslsmith_dot_vec2_u32(arg_0.a.zx, global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(-1954f - -2516f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -876f))))));
    return Struct_5(var_0, Struct_4(var_0.a, -275f));
}

fn func_5(arg_0: i32, arg_1: Struct_5, arg_2: i32, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = Struct_1(select(~_wgslsmith_mult_vec3_u32(arg_3.a ^ vec3<u32>(23729u, 85940u, u_input.c.x), arg_3.a >> (vec3<u32>(14496u, arg_3.a.x, 0u) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(73799u, arg_1.b.a.x, 46145u), vec3<u32>(1532u, arg_1.a.a.x, 4294967295u)), u_input.c), _wgslsmith_mod_vec3_u32(~vec3<u32>(arg_3.a.x, 1u, 17278u), vec3<u32>(global0.a.x, 0u, arg_3.a.x))), select(vec3<bool>(false, true, any(vec3<bool>(true, false, true))), vec3<bool>(true, true, true), all(vec2<bool>(true, true)))), arg_2 ^ arg_0);
    var var_1 = true;
    let var_2 = select(vec4<bool>(true, true, true, true), !(!vec4<bool>(all(vec2<bool>(false, true)), false, true, true)), all(vec2<bool>(true, true)));
    var var_3 = Struct_4(~_wgslsmith_sub_vec3_u32(var_0.a, ~(~vec3<u32>(0u, 50284u, arg_3.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), -765f));
    var_0 = Struct_1(~vec3<u32>(~global0.a.x, ~var_3.a.x, 1u), arg_2);
    return arg_1.a.a.yz;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(~firstTrailingBit(~vec2<u32>(35607u, 24929u)) >> (func_5(_wgslsmith_clamp_i32(-6815i, u_input.a.x << (116u % 32u), -u_input.a.x), func_1(Struct_1(u_input.c, u_input.e.x), true), ~abs(u_input.a.x), Struct_1(u_input.c, u_input.e.x)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(global0.b - _wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + _wgslsmith_f_op_f32(global0.b + -711f)))));
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.b)) * _wgslsmith_f_op_f32(step(global0.b, global0.b))), _wgslsmith_f_op_f32(f32(-1f) * -2036f))) * global0.b), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(420f, func_1(Struct_1(vec3<u32>(global0.a.x, global0.a.x, global0.a.x), -1i), true).a.b) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1064f, 860f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1000f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, -1238f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(344f, 497f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global0.b))), all(vec4<bool>(true, true, true, true)))))));
    var var_1 = Struct_1(~_wgslsmith_clamp_vec3_u32(~u_input.c, u_input.c, u_input.c), -1i);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.b.x)) + _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(global0.b + -1070f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(-var_0.b.x)))), _wgslsmith_f_op_vec2_f32(select(var_0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.b))), vec2<bool>(true, true))));
    let var_3 = Struct_1(var_1.a, abs(~(-abs(var_1.b))));
    var var_4 = Struct_4(~abs(_wgslsmith_add_vec3_u32(min(var_1.a, var_3.a), vec3<u32>(global0.a.x, global0.a.x, 1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(var_3, all(vec3<bool>(false, true, false))).b.b - var_2.b.x) + _wgslsmith_f_op_f32(-437f + func_1(var_3, true).b.b)));
    global0 = Struct_2(~vec2<u32>(u_input.c.x, 50935u) | min(max(var_4.a.xz, vec2<u32>(global0.a.x, 1u) | vec2<u32>(77783u, global0.a.x)), u_input.c.yx), _wgslsmith_f_op_f32(f32(-1f) * -1228f));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.e.x), _wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)) * 1955f)), vec4<u32>(~(~global0.a.x), var_1.a.x, ~abs(abs(global0.a.x)), u_input.c.x));
}

