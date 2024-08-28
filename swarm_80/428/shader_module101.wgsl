struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: Struct_1) -> bool {
    let var_0 = vec4<u32>(7307u, 1u, 40347u, reverseBits(arg_0.b.x));
    let var_1 = Struct_2(all(select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(all(vec4<bool>(true, false, true, true)), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))));
    return -abs(firstTrailingBit(~78867i)) >= _wgslsmith_div_i32(~u_input.b, min(_wgslsmith_mod_i32(arg_1.b.b << (1u % 32u), -1i | u_input.b), arg_3.a.x));
}

fn func_2(arg_0: u32) -> vec4<bool> {
    let var_0 = ~(-_wgslsmith_add_vec4_i32(~vec4<i32>(2147483647i, 11362i, u_input.b, u_input.b) | vec4<i32>(40388i, u_input.b, -1i, -1i), ~max(vec4<i32>(u_input.b, 24091i, 1i, -9084i), vec4<i32>(14421i, u_input.b, u_input.b, u_input.b))));
    let var_1 = Struct_3(var_0, Struct_1(var_0.xyx, ~abs(~(-43018i))), vec2<f32>(1f, 1022f));
    var var_2 = !vec3<bool>(select(false, all(vec2<bool>(false, false)), true) && any(vec3<bool>(true, true, true)), select(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 0u, arg_0), vec4<u32>(arg_0, 12913u, 4455u, 90404u)) > ~arg_0, true, func_3(Struct_4(vec3<u32>(1u, 51845u, 1u), vec2<u32>(arg_0, arg_0), vec2<f32>(var_1.c.x, var_1.c.x)), var_1, vec3<f32>(var_1.c.x, var_1.c.x, var_1.c.x), var_1.b) & any(vec2<bool>(false, true))), true);
    var_2 = select(!vec3<bool>(true, all(vec3<bool>(false, false, false)) | true, any(!vec3<bool>(var_2.x, var_2.x, var_2.x))), vec3<bool>(any(vec3<bool>(var_2.x, select(true, false, var_2.x), 0u < u_input.a)), !var_2.x, true), true);
    let var_3 = all(!select(vec4<bool>(var_2.x, false, any(vec2<bool>(true, true)), var_2.x != true), vec4<bool>(true, false, any(vec4<bool>(false, true, false, false)), any(vec3<bool>(false, var_2.x, false))), func_3(Struct_4(vec3<u32>(34585u, 5258u, 1u), vec2<u32>(9195u, arg_0), vec2<f32>(var_1.c.x, var_1.c.x)), var_1, vec3<f32>(-400f, -334f, var_1.c.x), Struct_1(vec3<i32>(-61396i, u_input.b, -18682i), 1i))));
    return vec4<bool>(true, !var_2.x, var_3, !select(var_2.x, !var_3, var_3));
}

fn func_1(arg_0: Struct_3) -> f32 {
    let var_0 = -14304i;
    var var_1 = select(vec4<u32>(firstTrailingBit(~_wgslsmith_mult_u32(12085u, 38056u)), 1u, 54014u, _wgslsmith_div_u32(1u, _wgslsmith_mod_u32(0u, ~u_input.a))), vec4<u32>(u_input.a, 84023u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(62954u, u_input.a, 22087u) << (vec3<u32>(4293u, 5273u, u_input.a) % vec3<u32>(32u)), vec3<u32>(u_input.a, 0u, 6607u)) % 32u), u_input.a, 0u), any(select(func_2(45247u >> (u_input.a % 32u)), vec4<bool>(true, true, true, any(vec2<bool>(false, false))), -1699f < _wgslsmith_f_op_f32(-arg_0.c.x))));
    var_1 = vec4<u32>(u_input.a, ~0u, ~(~(~559u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(33865u, 4294967295u, 56967u, 0u), ~vec4<u32>(1u, 0u, 63969u, var_1.x)) & _wgslsmith_mod_u32(abs(58005u), _wgslsmith_sub_u32(u_input.a, 4294967295u))) >> ((_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(80312u, var_1.x, 1u, 0u)) ^ (vec4<u32>(var_1.x, 1u, var_1.x, 30602u) ^ vec4<u32>(u_input.a, var_1.x, var_1.x, 4294967295u)), vec4<u32>(max(var_1.x, 42976u), u_input.a & 1u, var_1.x, 1u)) & max(_wgslsmith_div_vec4_u32(vec4<u32>(25223u, var_1.x, 10238u, 0u), ~vec4<u32>(u_input.a, 50102u, u_input.a, var_1.x)), firstLeadingBit(~vec4<u32>(4294967295u, 40343u, 1u, 4294967295u)))) % vec4<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, -948f, arg_0.c.x)))) - vec3<f32>(_wgslsmith_f_op_f32(abs(523f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(452f - arg_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1718f + 1112f) - -709f))));
    let var_3 = firstTrailingBit(~(~abs(vec4<u32>(0u, var_1.x, 4294967295u, var_1.x))) | vec4<u32>(~(var_1.x & u_input.a), 37611u, 4678u, ~max(1u, 4294967295u)));
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-442f - -500f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -338f))), -264f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(_wgslsmith_sub_vec4_i32(vec4<i32>(-max(-2147483647i, 1i), -_wgslsmith_mod_i32(u_input.b, 42208i), 0i, ~abs(11965i)), firstLeadingBit(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-18009i, u_input.b, -63708i, -3325i), vec4<i32>(u_input.b, 27837i, u_input.b, u_input.b))))), vec4<i32>(-1i) * -min(~vec4<i32>(u_input.b, -1i, u_input.b, 0i), max(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b))), !select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, true, true)))));
    let var_1 = Struct_1(-var_0.ywy, ~(-_wgslsmith_sub_i32(-1014i, -52827i)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(vec4<i32>(2147483647i, 20641i, 15192i, u_input.b), var_1, vec2<f32>(-804f, -201f)))), _wgslsmith_f_op_f32(select(-445f, _wgslsmith_f_op_f32(max(-201f, -452f)), true))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-665f, -1000f))))));
    var var_3 = _wgslsmith_clamp_vec4_u32(vec4<u32>(firstLeadingBit(u_input.a) << ((reverseBits(u_input.a) ^ _wgslsmith_clamp_u32(u_input.a, 44125u, 10796u)) % 32u), u_input.a, _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, 73970u, 0u)), ~(vec4<u32>(0u, 4294967295u, 1u, u_input.a) | vec4<u32>(u_input.a, 24255u, 23103u, 0u))), ~(~countOneBits(u_input.a))), vec4<u32>(u_input.a >> (countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(42450u, u_input.a), vec2<u32>(12078u, u_input.a))) % 32u), 0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(13198u, u_input.a, u_input.a), ~vec3<u32>(u_input.a, 1u, u_input.a)), 7875u), vec4<u32>(~(~u_input.a & 37558u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(2413u, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, 73982u, 0u) % vec3<u32>(32u)), ~vec3<u32>(1u, u_input.a, u_input.a)), 1u, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.yx, _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(abs(994f))));
}

