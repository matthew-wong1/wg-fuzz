struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_2) -> bool {
    return true;
}

fn func_3(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: i32) -> f32 {
    var var_0 = Struct_2(select(vec2<bool>(true, true), vec2<bool>(!any(vec3<bool>(true, true, true)), true || select(true, true, true)), select(!select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), any(vec2<bool>(true, true)))));
    var var_1 = ~(~firstTrailingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, -21841i)), vec2<i32>(arg_3, 0i))));
    let var_2 = ~(~arg_0.b);
    var var_3 = false;
    var var_4 = var_2;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(787f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-194f + 1000f), _wgslsmith_div_f32(arg_0.a.x, -1506f), var_0.a.x)) * 311f)));
}

fn func_2() -> f32 {
    let var_0 = ~(u_input.c.x ^ 20872i);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(528f)))), vec3<bool>(false, any(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), select(func_1(Struct_2(vec2<bool>(false, false))), true, func_1(Struct_2(vec2<bool>(true, false))))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(func_3(Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, 273f))), u_input.b), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, 1490f, 2170f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -881f, -1317f, -258f))))), -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(142f * -889f)));
    var var_3 = !(true && !(_wgslsmith_f_op_f32(-var_1.a) != 671f));
    let var_4 = any(var_1.b.xy);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(-var_1.a)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = abs(~u_input.c << (arg_0.zz % vec2<u32>(32u)));
    var var_1 = Struct_3(u_input.a, Struct_1(arg_2.x, vec3<bool>(true, true, any(vec3<bool>(true, false, false)))), min(arg_0.x, ~(~13012u & arg_0.x)), min(~(~u_input.a), 15999u) << (u_input.a % 32u), vec4<bool>(true, true, false, all(vec3<bool>(true, true, true))));
    var_1 = Struct_3(~(~arg_0.x), Struct_1(_wgslsmith_f_op_f32(step(var_1.b.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b.a))))), select(!select(vec3<bool>(false, var_1.b.b.x, var_1.b.b.x), var_1.b.b, vec3<bool>(false, var_1.e.x, true)), vec3<bool>(true, 227f <= arg_2.x, var_1.e.x == var_1.b.b.x), var_1.e.x)), var_1.d, 110703u, var_1.e);
    var_1 = Struct_3(var_1.d, var_1.b, (~(~0u) & arg_0.x) << (4294967295u % 32u), 0u, var_1.e);
    var_1 = Struct_3(~_wgslsmith_div_u32(~_wgslsmith_mult_u32(25338u, arg_0.x), _wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, arg_0.x), u_input.a)), Struct_1(224f, !(!select(vec3<bool>(true, true, var_1.e.x), var_1.b.b, false))), var_1.a << (~var_1.c % 32u), ~(~(arg_0.x >> (var_1.c % 32u))), vec4<bool>(true, var_1.e.x, true, !(!var_1.e.x)));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_4(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a, 4294967295u, 29652u) & vec4<u32>(u_input.b, u_input.b, u_input.a, 34139u), ~vec4<u32>(u_input.a, u_input.a, 0u, 45629u)), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(49510u, u_input.a, 4294967295u, u_input.a), vec4<u32>(9649u, u_input.b, 1u, 80133u), vec4<u32>(1u, 100617u, 4294967295u, u_input.b)), min(vec4<u32>(23198u, u_input.b, u_input.a, u_input.b), vec4<u32>(u_input.a, u_input.a, u_input.b, u_input.a)), func_1(Struct_2(vec2<bool>(false, true))))), vec3<i32>(0i, -(u_input.c.x & u_input.c.x), u_input.c.x), vec2<f32>(_wgslsmith_f_op_f32(func_2()), -1571f)), select(firstTrailingBit(vec2<u32>(1u, 1u)), ~vec2<u32>(u_input.a, u_input.a) << (firstLeadingBit(vec2<u32>(4294967295u, 5344u)) % vec2<u32>(32u)), vec2<bool>(func_4(vec4<u32>(u_input.b, u_input.b, u_input.a, 1u), vec3<i32>(-1i, -1i, u_input.c.x), vec2<f32>(441f, 2192f)).b.x, true)) & _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b, u_input.b), max(abs(vec2<u32>(19767u, u_input.a)), firstTrailingBit(vec2<u32>(23339u, u_input.b)))));
    var_0 = Struct_4(var_0.a, ~(~(var_0.b ^ ~vec2<u32>(30654u, u_input.b))));
    var var_1 = countOneBits(~reverseBits(vec2<u32>(0u, 29229u))) | reverseBits(_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(0u, 0u)), vec2<u32>(var_0.b.x & 4294967295u, _wgslsmith_div_u32(var_0.b.x, u_input.b))));
    let var_2 = 0u;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a, 771f, -788f, var_0.a.a) * vec4<f32>(527f, -165f, var_0.a.a, -1387f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.zw, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, -38552i, u_input.c.x), vec4<i32>(u_input.c.x, -1i, u_input.c.x, u_input.c.x) >> (vec4<u32>(u_input.b, var_2, 4294967295u, 27795u) % vec4<u32>(32u)))) << (var_0.b.x % 32u), u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1004f + _wgslsmith_f_op_f32(trunc(585f))) * var_0.a.a) - var_3.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(850f, var_3.x) * -982f), var_3.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, -415f)) + _wgslsmith_div_f32(-1287f, -1000f)), func_4(vec4<u32>(0u, var_1.x, var_1.x, 3027u), ~vec3<i32>(u_input.c.x, u_input.c.x, -1i), vec2<f32>(-155f, -1097f)).a)), -306f));
}

