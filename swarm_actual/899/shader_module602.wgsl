struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1() -> bool {
    var var_0 = vec2<i32>(2147483647i, i32(-1i) * -32121i);
    let var_1 = Struct_1(abs(u_input.b), _wgslsmith_div_i32(u_input.d.x, ~(-u_input.d.x)), ~_wgslsmith_mod_vec3_u32(max(vec3<u32>(u_input.a, u_input.a, 42278u), vec3<u32>(27932u, 39271u, 0u)), select(vec3<u32>(u_input.a, u_input.a, 44321u), vec3<u32>(u_input.a, 1u, 75278u), vec3<bool>(false, false, false))) ^ min(countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a, 17938u), vec3<u32>(u_input.a, 1u, 0u))), ~vec3<u32>(u_input.b.x, 1u, 58406u) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 8304u, u_input.a), vec3<u32>(u_input.b.x, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, 25521u))));
    var var_2 = _wgslsmith_mod_vec3_u32(var_1.c, var_1.c);
    var var_3 = var_1.a.x < reverseBits(4294967295u);
    var var_4 = var_1;
    return 57009i >= ~(~(-max(var_4.b, var_0.x)));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> u32 {
    var var_0 = _wgslsmith_dot_vec2_u32(u_input.b, min(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, abs(17973u)), arg_0.c.zz | vec2<u32>(u_input.b.x, arg_0.a.x)), ~abs(~vec2<u32>(u_input.a, u_input.b.x))));
    var_0 = ~4294967295u;
    return arg_0.c.x | min(arg_0.a.x, abs(arg_0.a.x) >> (2534u % 32u));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = arg_0;
    let var_1 = var_0;
    let var_2 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_1.c.x), reverseBits(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(34808u, 58612u), vec2<u32>(var_1.a.x, var_0.c.x)), 38146u))), 1i, _wgslsmith_div_vec3_u32(vec3<u32>(var_1.c.x, firstTrailingBit(firstLeadingBit(1u)), 1u), var_0.c));
    let var_3 = _wgslsmith_mod_vec2_u32(var_0.c.yx, u_input.b) ^ ~(~firstLeadingBit(countOneBits(vec2<u32>(0u, 1u))));
    var var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(948f, -1377f, true)))))));
    return ~max(reverseBits(firstTrailingBit(vec4<u32>(40012u, 4294967295u, var_3.x, 4294967295u) << (vec4<u32>(var_3.x, arg_0.c.x, u_input.b.x, var_0.c.x) % vec4<u32>(32u)))), ~vec4<u32>(var_3.x, countOneBits(1u), 4294967295u, 79753u & var_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec4<bool>(false, func_1(), ~4294967295u >= _wgslsmith_add_u32(u_input.b.x, u_input.a), true));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-484f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-619f)))))), -1524f, 1493f, 185f);
    var var_2 = Struct_1(countOneBits(vec2<u32>(u_input.a >> ((0u & u_input.a) % 32u), func_2(Struct_1(u_input.b, u_input.c, vec3<u32>(76876u, 0u, u_input.b.x)), var_0.x) & 0u)), 2147483647i, ~abs(~vec3<u32>(12601u, u_input.a, u_input.b.x) >> (~vec3<u32>(26128u, 38656u, u_input.a) % vec3<u32>(32u))));
    let var_3 = reverseBits(func_3(Struct_1(u_input.b ^ vec2<u32>(10923u, 18910u), -1i, var_2.c)) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_2.c.x, var_2.a.x, 34962u, 0u), firstLeadingBit(vec4<u32>(var_2.a.x, u_input.a, var_2.c.x, var_2.a.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(var_2.a.x, 4294967295u, u_input.a, 1u), vec4<u32>(u_input.b.x, 50792u, 95183u, u_input.a) << (vec4<u32>(var_2.c.x, 1u, 4294967295u, u_input.b.x) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    var_2 = Struct_1(select(abs(var_3.yy), max(var_3.ww, ~(vec2<u32>(u_input.b.x, 4294967295u) ^ u_input.b)), false), -1i, _wgslsmith_add_vec3_u32(reverseBits(firstTrailingBit(vec3<u32>(97592u, 4294967295u, 32840u))), var_3.www));
    let var_4 = Struct_1(reverseBits(~vec2<u32>(_wgslsmith_add_u32(var_2.c.x, 76598u), u_input.a)), -(~(-(~41804i))), ~vec3<u32>(_wgslsmith_add_u32(0u, ~6518u), _wgslsmith_mod_u32(1u, 47780u), u_input.a >> (u_input.a % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-(var_2.b >> (firstTrailingBit(var_4.c.x) % 32u)), _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(exp2(var_1.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x))))), var_1.wyw, _wgslsmith_mod_u32(~1u, _wgslsmith_mod_u32(~_wgslsmith_mod_u32(1u, var_4.a.x), min(var_3.x, _wgslsmith_div_u32(var_2.c.x, 4294967295u)))), 1000f);
}

