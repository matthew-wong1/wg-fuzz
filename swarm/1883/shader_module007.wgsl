struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> vec4<bool> {
    global0 = array<Struct_1, 9>();
    let var_0 = u_input.b;
    var var_1 = ~select(~(~(~3487u)), ~1u, select(arg_0, false, any(vec2<bool>(arg_0, arg_0))));
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    return vec4<bool>(837f < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-196f, _wgslsmith_f_op_f32(-878f + 1038f))))), arg_0, !arg_0, arg_0);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>) -> Struct_1 {
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    let var_0 = Struct_1(-abs(-u_input.b), select(vec4<i32>(-arg_1.x, -(~arg_1.x), -arg_1.x, -18173i), vec4<i32>(-1i) * -vec4<i32>(478i, 0i, 85872i, arg_1.x), select(vec4<bool>(true, true, true, true), !func_2(true, Struct_2(u_input.b.zyw, u_input.b.x, 14986i, Struct_1(vec4<i32>(1i, u_input.c.x, u_input.c.x, u_input.a), vec4<i32>(arg_1.x, 47666i, u_input.a, 0i))), Struct_2(arg_1.zwz, u_input.b.x, 0i, Struct_1(arg_1, arg_1))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), true), false))));
    global0 = array<Struct_1, 9>();
    return global0[_wgslsmith_index_u32(1u, 9u)];
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = Struct_2(firstTrailingBit(arg_3.a.xzx), ~17205i, _wgslsmith_dot_vec3_i32(u_input.b.yyw, ~(reverseBits(arg_3.b.xyy) << (abs(vec3<u32>(4294967295u, 0u, 0u)) % vec3<u32>(32u)))), arg_3);
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-660f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(129f + 1000f) + -364f))))));
    let var_2 = vec3<u32>(1u, 1u, 1u);
    let var_3 = true;
    global0 = array<Struct_1, 9>();
    return _wgslsmith_add_vec4_i32(max(vec4<i32>(countOneBits(-1i), 1i, -2904i, _wgslsmith_div_i32(10930i >> (var_2.x % 32u), 1i)), abs(vec4<i32>(_wgslsmith_sub_i32(arg_1, -27463i), i32(-1i) * -2147483647i, -arg_1, ~arg_1))), var_0.d.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 9>();
    let var_0 = vec2<i32>(-1i, u_input.a);
    let var_1 = var_0.x;
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    var var_2 = ~vec4<i32>(0i, max(_wgslsmith_clamp_i32(u_input.a, var_0.x, 12486i) >> (~63600u % 32u), -7999i), _wgslsmith_dot_vec3_i32(-u_input.b.zxz, _wgslsmith_add_vec3_i32(u_input.b.zwz, vec3<i32>(u_input.a, 4960i, var_0.x))) & _wgslsmith_dot_vec4_i32(~vec4<i32>(-4115i, var_1, u_input.c.x, 0i), -u_input.b), var_0.x);
    let var_3 = Struct_1(u_input.b, func_3(vec2<i32>(83678i, ~(-var_1)), -u_input.a, func_1(~vec2<u32>(1u, 1u), ~(~vec4<i32>(var_0.x, 0i, 8662i, -2147483647i))), func_1(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(27867u, 0u), vec2<u32>(4294967295u, 17237u), vec2<u32>(11221u, 18051u)), vec2<u32>(1u, 1u)), vec4<i32>(-var_0.x, _wgslsmith_clamp_i32(var_1, 2147483647i, -1i), -5179i, ~15136i))));
    var var_4 = var_3.a;
    var_2 = func_1(~(~(~vec2<u32>(1u, 86361u))), vec4<i32>(reverseBits(var_3.a.x), var_1, var_4.x, var_2.x) >> (firstTrailingBit(vec4<u32>(5117u, 4294967295u, 0u, 7495u)) % vec4<u32>(32u))).b >> (~firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(-_wgslsmith_mult_i32(-55024i, var_1), abs(reverseBits(0i)), _wgslsmith_mult_i32(~0i, 0i)), ~1u, var_2.x & var_4.x, firstLeadingBit(~(~vec3<u32>(1u, 4294967295u, 4294967295u))));
}

