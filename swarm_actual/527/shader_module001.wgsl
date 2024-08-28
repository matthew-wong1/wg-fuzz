struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: vec4<u32>,
    d: Struct_3,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> Struct_4 {
    return Struct_4(Struct_2(Struct_1(vec2<i32>(1i, arg_0.x))));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec3<u32>) -> f32 {
    var var_0 = u_input.a.zz;
    global0 = !arg_1;
    var_0 = u_input.a.zw;
    var var_1 = arg_2.zx;
    let var_2 = arg_0;
    return _wgslsmith_f_op_f32(114f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1841f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2330f, 1816f, arg_1)) - _wgslsmith_f_op_f32(1931f - -625f))))));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: Struct_4) -> Struct_4 {
    var var_0 = vec4<u32>(_wgslsmith_sub_u32(1u, 1u), 0u, 0u, firstLeadingBit(0u));
    let var_1 = _wgslsmith_f_op_f32(-arg_0);
    var var_2 = _wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(u_input.c, arg_1.b, arg_1.b, 23243i)), u_input.a), u_input.a);
    let var_3 = arg_2.a.a;
    return arg_2;
}

fn func_4(arg_0: Struct_4, arg_1: bool) -> u32 {
    let var_0 = ~0i;
    global0 = !(!(arg_1 & ((arg_1 != arg_1) || true)));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(600f))));
    var var_2 = vec4<u32>(55055u, 4294967295u, 97596u, ~_wgslsmith_mult_u32(1u, ~1u));
    var_2 = select((~abs(vec4<u32>(var_2.x, var_2.x, var_2.x, 60747u)) & _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, 0u, 21839u, 80039u), vec4<u32>(var_2.x, 4458u, var_2.x, 1u)), ~vec4<u32>(4370u, 3278u, 1u, var_2.x))) >> (~vec4<u32>(var_2.x, countOneBits(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(15908u, 4294967295u, var_2.x, 0u), vec4<u32>(7289u, 19875u, 0u, 60703u)), var_2.x >> (var_2.x % 32u)) % vec4<u32>(32u)), ~(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(var_2.x, 0u, var_2.x, var_2.x), vec4<u32>(38987u, 8529u, 0u, 0u))) >> (~(vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x) & vec4<u32>(0u, var_2.x, 4294967295u, 140201u)) % vec4<u32>(32u))), !select(select(vec4<bool>(true, arg_1, false, arg_1), select(vec4<bool>(false, false, true, arg_1), vec4<bool>(arg_1, false, arg_1, false), arg_1), select(vec4<bool>(true, false, arg_1, true), vec4<bool>(arg_1, arg_1, arg_1, arg_1), false)), !(!vec4<bool>(false, false, false, arg_1)), !select(vec4<bool>(arg_1, false, false, arg_1), vec4<bool>(true, arg_1, false, arg_1), vec4<bool>(arg_1, false, arg_1, false))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a.zw);
    global0 = !(!all(vec2<bool>(true, true)));
    var var_1 = Struct_5(func_1(u_input.a.zz ^ _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, var_0.a.x), u_input.a.xx ^ vec2<i32>(0i, u_input.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -696f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-951f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1507f), _wgslsmith_f_op_f32(func_2(54088u, false, vec3<u32>(4984u, 4294967295u, 1u)))), _wgslsmith_f_op_f32(f32(-1f) * -1091f))), vec4<u32>(1u, 4294967295u, _wgslsmith_add_u32(~abs(82991u), 1u), ~func_4(func_3(-248f, Struct_3(vec3<bool>(true, true, true), u_input.a.x), Struct_4(Struct_2(var_0))), true)), Struct_3(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), all(vec3<bool>(false, true, false))), abs(abs(2611i)) ^ _wgslsmith_sub_i32(40769i, var_0.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-2059f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -689f) + _wgslsmith_f_op_f32(-680f + 961f)))))));
    let var_2 = var_1.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<u32>(~_wgslsmith_sub_u32(var_1.c.x, var_1.c.x), reverseBits(_wgslsmith_add_u32(77441u, 0u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(26075u, var_1.c.x), vec2<u32>(0u, var_1.c.x)))), var_0.a.x, select(u_input.a, _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_0.a.x, -16954i, -2147483647i, var_2.a.a.x), vec4<i32>(u_input.a.x, countOneBits(0i), firstTrailingBit(var_1.a.a.a.a.x), u_input.b << (1153u % 32u))), vec4<bool>(true, true, any(select(vec4<bool>(false, false, var_1.d.a.x, var_1.d.a.x), vec4<bool>(var_1.d.a.x, true, false, true), false)), var_1.d.a.x)), var_0.a);
}

