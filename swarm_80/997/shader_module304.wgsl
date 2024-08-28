struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1i, -18859i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: Struct_2) -> vec3<u32> {
    global0 = select(vec2<i32>(max(1i, -firstLeadingBit(48349i)), abs(-u_input.d.x) << (29970u % 32u)), u_input.d.xx, true);
    global0 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.d, u_input.d) >> (countOneBits(arg_1.x) % 32u), -(~global0.x)), i32(-1i) * -1i);
    global0 = vec2<i32>(1i, firstTrailingBit(-12555i));
    global0 = -select(u_input.c, vec2<i32>(-1i, global0.x), (u_input.c.x >= u_input.d.x) && true);
    let var_0 = vec4<i32>(-global0.x, u_input.c.x, abs(1i), -25164i | _wgslsmith_dot_vec4_i32(~vec4<i32>(global0.x, u_input.d.x, -2147483647i, global0.x) & (vec4<i32>(u_input.d.x, -15088i, 5836i, 0i) ^ vec4<i32>(global0.x, -2147483647i, u_input.c.x, 0i)), ~vec4<i32>(global0.x, global0.x, -2147483647i, -1i) >> (u_input.b % vec4<u32>(32u))));
    return vec3<u32>(1u, arg_1.x, 1u) | (max(~(~vec3<u32>(23207u, 0u, arg_3.a)), ~(vec3<u32>(27227u, u_input.a.x, 1u) & vec3<u32>(arg_3.a, 51258u, 18282u))) & firstTrailingBit(reverseBits(u_input.a ^ vec3<u32>(4294967295u, u_input.a.x, 55584u))));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>) -> u32 {
    global0 = u_input.d.zy;
    global0 = select(-select(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d.x, 2147483647i), vec2<i32>(global0.x, 2147483647i)) >> ((vec2<u32>(1u, 4294967295u) | vec2<u32>(u_input.a.x, u_input.a.x)) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.x, global0.x), vec2<i32>(global0.x, -51097i)), arg_1.xw), !select(vec2<bool>(true, true), vec2<bool>(false, false), false)), _wgslsmith_add_vec2_i32(~_wgslsmith_mult_vec2_i32(select(vec2<i32>(-40223i, -2147483647i), vec2<i32>(-2147483647i, global0.x), vec2<bool>(false, true)), firstTrailingBit(vec2<i32>(arg_1.x, 1i))), vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(-global0.x, ~16449i, abs(24288i)))), false);
    let var_0 = ~(~firstLeadingBit(-25803i));
    var var_1 = Struct_1(min(_wgslsmith_mult_vec3_u32(~firstLeadingBit(u_input.b.zxz), ~func_3(arg_0, vec2<u32>(u_input.b.x, 0u), Struct_3(true), Struct_2(u_input.b.x))), _wgslsmith_mod_vec3_u32(firstLeadingBit(~vec3<u32>(u_input.b.x, 12861u, 4294967295u)), ~_wgslsmith_clamp_vec3_u32(u_input.b.yyw, vec3<u32>(2640u, u_input.a.x, u_input.a.x), u_input.b.wyx))));
    var var_2 = Struct_2(firstTrailingBit(~firstLeadingBit(47068u)) | 107738u);
    return ~abs(4294967295u);
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> Struct_1 {
    var var_0 = u_input.a.x;
    var var_1 = true;
    let var_2 = 1i;
    let var_3 = _wgslsmith_sub_u32(21582u, _wgslsmith_mult_u32(~(~u_input.a.x), ~_wgslsmith_mod_u32(u_input.b.x, 66277u) | u_input.a.x));
    var var_4 = 4294967295u;
    return Struct_1(vec3<u32>(func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(546f, 1000f))), vec4<i32>(-4783i, arg_0.x, firstTrailingBit(var_2), 1i)), _wgslsmith_sub_u32(var_3, _wgslsmith_mult_u32(arg_1, firstLeadingBit(0u))), 4294967295u));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>) -> bool {
    var var_0 = Struct_3(true);
    var_0 = Struct_3(any(select(select(select(vec4<bool>(var_0.a, var_0.a, false, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), var_0.a), !vec4<bool>(true, true, var_0.a, true), vec4<bool>(false, var_0.a, var_0.a, var_0.a)), select(select(vec4<bool>(var_0.a, var_0.a, true, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), var_0.a), select(vec4<bool>(true, var_0.a, false, var_0.a), vec4<bool>(var_0.a, var_0.a, false, var_0.a), vec4<bool>(false, false, var_0.a, false)), select(vec4<bool>(false, var_0.a, false, true), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, false, var_0.a))), abs(0u) <= u_input.a.x)));
    let var_1 = 1000f;
    var_0 = Struct_3(true);
    var var_2 = all(select(select(vec3<bool>(!var_0.a, var_0.a, false), !(!vec3<bool>(var_0.a, false, false)), var_0.a), !select(select(vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(false, true, var_0.a)), !vec3<bool>(false, var_0.a, false), false), var_0.a));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.c;
    let var_0 = func_4(_wgslsmith_dot_vec3_i32(-vec3<i32>(_wgslsmith_mult_i32(1i, global0.x), global0.x, abs(global0.x)), select(reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(global0.x, 25486i, 0i), u_input.d)), u_input.d, all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), true)))), func_1(min(_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(u_input.c.x, 1i, 2147483647i)), vec3<i32>(31472i, u_input.d.x, 2865i)), abs(u_input.d)), u_input.a.x), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(136f + _wgslsmith_div_f32(1349f, 363f)))), _wgslsmith_div_f32(1100f, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -624f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2053f, 114f) + 3298f) + 886f)));
    let var_1 = func_1(firstTrailingBit(-(~u_input.d)), ~(4294967295u ^ u_input.b.x) | u_input.b.x);
    var var_2 = _wgslsmith_f_op_f32(trunc(1f));
    var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1431f))))))), _wgslsmith_f_op_f32(-1036f - 1f)));
    let var_3 = Struct_1(~(~u_input.b.xwz));
    let x = u_input.a;
    s_output = StorageBuffer(min(var_3.a.x, firstLeadingBit(~(var_1.a.x ^ 0u))), ~(~u_input.d), 3044i);
}

