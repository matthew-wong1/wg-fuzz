struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    var var_0 = vec2<u32>(_wgslsmith_sub_u32(23684u, abs(max(~1u, u_input.a >> (u_input.b % 32u)))), ~17351u);
    var var_1 = abs(vec3<i32>(1i, _wgslsmith_clamp_i32(select(1i, -2147483647i, true), firstLeadingBit(~1i), 1i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 26522i), reverseBits(vec2<i32>(-28495i, 1i)))));
    var_0 = abs(select(vec2<u32>(_wgslsmith_sub_u32(~0u, max(49185u, 4294967295u)), firstLeadingBit(_wgslsmith_sub_u32(62229u, u_input.d))), min(vec2<u32>(~6579u, _wgslsmith_sub_u32(21031u, 1u)), countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, u_input.d), vec2<u32>(var_0.x, var_0.x)))), vec2<bool>(true, true)));
    var_0 = _wgslsmith_clamp_vec2_u32(firstTrailingBit(select(~vec2<u32>(3972u, var_0.x), ~(~vec2<u32>(u_input.c, 40768u)), vec2<bool>(true, false))), max(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 44324u), vec2<u32>(var_0.x, 0u)), firstTrailingBit(vec2<u32>(var_0.x, 61363u))), max(~vec2<u32>(19498u, 18425u), vec2<u32>(u_input.d, 13229u))), reverseBits(~vec2<u32>(4294967295u, 0u) & ~vec2<u32>(var_0.x, u_input.d))), ~abs(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, var_0.x), ~vec2<u32>(u_input.d, 1u))));
    var_0 = abs(abs(_wgslsmith_sub_vec2_u32(~vec2<u32>(var_0.x, 0u), ~vec2<u32>(4294967295u, u_input.d))) ^ vec2<u32>(_wgslsmith_sub_u32(28674u, u_input.c), select(~u_input.a, _wgslsmith_clamp_u32(1u, 28647u, 0u), true)));
    return min(~(_wgslsmith_mod_i32(var_1.x, firstLeadingBit(0i)) << (~(~0u) % 32u)), -(~57380i));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(floor(-352f)))))));
    let var_1 = ~abs(4721u);
    var var_2 = func_3();
    let var_3 = ~_wgslsmith_mod_vec2_i32(vec2<i32>(30947i, 24191i), vec2<i32>(-_wgslsmith_dot_vec4_i32(arg_1, arg_1), i32(-1i) * -2147483647i));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) * _wgslsmith_f_op_f32(-992f + -566f)))))), _wgslsmith_f_op_f32(min(-1453f, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_0.x))))))));
    return Struct_1(!any(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, false, true), true)), any(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-748f, 1000f, var_0.x, -994f))))), 10150u);
}

fn func_1(arg_0: vec3<u32>) -> vec4<u32> {
    var var_0 = 1i;
    let var_1 = func_2(_wgslsmith_sub_i32(-64751i, 30134i) >> (0u % 32u), vec4<i32>(1i, 1i, 1i, 1i));
    var_0 = _wgslsmith_div_i32(abs(~_wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, 0i), vec2<i32>(-11695i, -44572i))), ~((~(-2147483647i) << (firstLeadingBit(u_input.c) % 32u)) & _wgslsmith_mult_i32(-69412i, _wgslsmith_dot_vec2_i32(vec2<i32>(24101i, 1i), vec2<i32>(-28373i, -2147483647i)))));
    let var_2 = Struct_3(func_2(1i, -vec4<i32>(select(-53069i, -1i, var_1.a), _wgslsmith_mult_i32(-6662i, -13493i), ~(-4279i), -1i)), var_1, 855f, _wgslsmith_mult_vec2_u32(abs(arg_0.yz), countOneBits(min(vec2<u32>(var_1.d, u_input.d) ^ arg_0.zy, vec2<u32>(var_1.d, 8148u)))), var_1);
    var_0 = ~1i;
    return vec4<u32>(1135u, var_2.a.d, 29325u, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.d, arg_0.x, 4294967295u) << (arg_0 % vec3<u32>(32u)), arg_0) & min(77930u, _wgslsmith_mod_u32(select(82694u, var_1.d, true), arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(~firstLeadingBit(vec3<u32>(u_input.b, 0u, u_input.a)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.a), max(vec3<u32>(u_input.d, 42720u, u_input.d), vec3<u32>(u_input.c, u_input.d, 7468u)), ~vec3<u32>(10085u, 1u, 29567u))), (vec3<u32>(u_input.a, 9345u, 38959u) | select(vec3<u32>(u_input.b, 58012u, u_input.d), vec3<u32>(u_input.b, u_input.a, 0u), vec3<bool>(false, false, true))) >> (vec3<u32>(u_input.d ^ 4294967295u, reverseBits(u_input.d), ~49456u) % vec3<u32>(32u))), ~countOneBits(firstLeadingBit(vec3<u32>(u_input.d, u_input.d, u_input.d))) << (countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.b, 0u) & vec3<u32>(58219u, 43497u, 42896u), _wgslsmith_add_vec3_u32(vec3<u32>(43479u, 49685u, u_input.d), vec3<u32>(u_input.a, 1u, u_input.b)))) % vec3<u32>(32u)));
    var var_1 = ~firstTrailingBit(vec4<u32>(firstLeadingBit(u_input.a), 0u, _wgslsmith_clamp_u32(0u, u_input.a, u_input.a) | (u_input.b | u_input.c), _wgslsmith_mult_u32(var_0.x, u_input.a & u_input.a)));
    var_1 = vec4<u32>(_wgslsmith_div_u32(~(~u_input.d), 4294967295u), 1u, abs(var_1.x), u_input.a) << (~func_1(reverseBits(vec3<u32>(6068u, 98253u, var_0.x))) % vec4<u32>(32u));
    let var_2 = true;
    var var_3 = -min(-vec2<i32>(1i, 1i), -select(vec2<i32>(-2147483647i, 14709i), vec2<i32>(31918i, 7509i), vec2<bool>(false, false)) >> (var_0.zy % vec2<u32>(32u)));
    var_1 = func_1(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1562u, 6885u, _wgslsmith_mult_u32(u_input.a, var_0.x), 21502u), func_1(var_1.wwx)), u_input.a, u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1731f, -808f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(697f, -1000f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-810f, -216f) - vec2<f32>(-1260f, 1934f))), !all(vec2<bool>(var_2, true))))));
}

