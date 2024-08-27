struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(19234i, i32(-2147483648), 0i, 0i), -853f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32) -> f32 {
    let var_0 = arg_2;
    let var_1 = all(vec3<bool>(true, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(866f, -631f), global0.b)) != global0.b, select(true, true, firstTrailingBit(0i) < abs(u_input.c.x))));
    let var_2 = arg_1;
    global0 = Struct_1(_wgslsmith_sub_vec4_i32(~vec4<i32>(2147483647i, -1i, 31047i, var_2.a.x), _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(-2147483647i, 51780i, -27697i, 2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-34240i, 1i, var_2.a.x, global0.a.x), global0.a))) & vec4<i32>(~countOneBits(-44526i), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(33616i, -1i), var_2.a.x | -374i, arg_1.a.x), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 2147483647i, var_2.a.x, arg_1.a.x), vec4<i32>(global0.a.x, -10862i, arg_1.a.x, var_2.a.x)), vec4<i32>(var_2.a.x, u_input.d, arg_1.a.x, global0.a.x)), _wgslsmith_div_i32(arg_1.a.x, u_input.c.x) & select(var_2.a.x, var_2.a.x, true)), arg_2);
    var var_3 = arg_2;
    return _wgslsmith_f_op_f32(-arg_1.b);
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(-u_input.c, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b - global0.b))))));
    var var_1 = ~u_input.d;
    let var_2 = var_0;
    var_1 = -24772i;
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + _wgslsmith_f_op_f32(func_3(vec4<u32>(u_input.a, arg_0.x, u_input.a, u_input.a), Struct_1(var_2.a, var_0.b), 361f)))) * -510f), _wgslsmith_f_op_f32(-var_0.b)));
    return Struct_1(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(var_2.b - 929f))) - 647f));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> bool {
    global0 = func_2(_wgslsmith_clamp_vec2_u32(select(~vec2<u32>(21465u, u_input.b), abs(vec2<u32>(0u, 4294967295u)), arg_0) ^ ~(vec2<u32>(u_input.b, u_input.b) & vec2<u32>(4294967295u, 0u)), ~(~vec2<u32>(u_input.a, u_input.b)), vec2<u32>(u_input.b, 55704u)));
    let var_0 = _wgslsmith_add_i32(-min(~arg_2.a.x, _wgslsmith_div_i32(arg_2.a.x, arg_2.a.x)), u_input.d) >> (1u % 32u);
    var var_1 = vec2<bool>(arg_0 | !(any(vec4<bool>(false, arg_0, true, false)) | true), false);
    var_1 = !select(!(!(!vec2<bool>(false, var_1.x))), vec2<bool>(true, true), !select(!vec2<bool>(arg_0, true), !vec2<bool>(arg_0, var_1.x), arg_0 == false));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, global0.b, global0.b, global0.b))) - vec4<f32>(_wgslsmith_div_f32(846f, -100f), 846f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1109f)))));
    return false;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = arg_0.a.zw;
    var_0 = _wgslsmith_mod_vec2_i32(~vec2<i32>(_wgslsmith_dot_vec3_i32(~u_input.c.xzy, vec3<i32>(6364i, global0.a.x, global0.a.x)), _wgslsmith_add_i32(3119i, var_0.x ^ -2147483647i)), -global0.a.zx);
    var_0 = vec2<i32>(-32878i, arg_0.a.x);
    let var_1 = select(~arg_0.a.yyz, ~reverseBits(arg_0.a.zww), !(!arg_1));
    var var_2 = func_4(true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-106f)))), func_2(select(firstTrailingBit(~vec2<u32>(19128u, 1u)), min(vec2<u32>(0u, 86725u), ~vec2<u32>(350u, 36343u)), arg_1.x)));
    return func_2(vec2<u32>(4294967295u, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(Struct_1(global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(329f)), global0.b)), vec3<bool>(true, true, true));
    var var_0 = func_1(func_1(func_1(func_2(abs(vec2<u32>(4294967295u, 9779u))), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), vec3<bool>(any(vec2<bool>(true, true)), true, true));
    var var_1 = Struct_1(u_input.c, -715f);
    var var_2 = u_input.c.x;
    var_0 = Struct_1(vec4<i32>(21293i, i32(-1i) * -1i, ~(-var_1.a.x), var_0.a.x & ~(-var_1.a.x)), _wgslsmith_f_op_f32(func_3(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(21920u, 7389u, 65575u, 43171u), vec4<u32>(u_input.a, u_input.a, 79726u, 4294967295u)) | vec4<u32>(u_input.a, 43u, u_input.b, u_input.b)), func_1(Struct_1(var_0.a, _wgslsmith_f_op_f32(var_1.b - global0.b)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-968f * -338f), _wgslsmith_f_op_f32(step(var_0.b, var_0.b))))))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(263f * _wgslsmith_div_f32(_wgslsmith_div_f32(func_1(Struct_1(vec4<i32>(22494i, 15093i, 31259i, global0.a.x), var_0.b), vec3<bool>(false, true, false)).b, _wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(f32(-1f) * -971f))), 1188f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.ww, _wgslsmith_add_i32(_wgslsmith_add_i32(var_0.a.x, -27829i), var_0.a.x), u_input.d, -_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c.x, u_input.d), vec2<i32>(-9216i, -2362i)), vec2<i32>(var_1.a.x, 0i), var_1.a.wz), (var_0.a.wz >> (vec2<u32>(u_input.a, u_input.b) % vec2<u32>(32u))) << (vec2<u32>(u_input.a, 63307u) % vec2<u32>(32u))));
}

