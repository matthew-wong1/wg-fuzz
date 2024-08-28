struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14> = array<i32, 14>(-14951i, -1i, 0i, 13028i, 10730i, -14714i, 16495i, -1i, 0i, i32(-2147483648), 2147483647i, -8466i, 2147483647i, 2147483647i);

var<private> global1: f32 = -841f;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_2(Struct_1(~_wgslsmith_add_u32(45459u, _wgslsmith_sub_u32(u_input.b.x, 20510u)), _wgslsmith_f_op_f32(trunc(-1000f)), select(_wgslsmith_mod_vec3_u32(u_input.c.zyw, vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)), ~(~vec3<u32>(38052u, 33362u, u_input.c.x)), true)), abs(vec3<i32>(select(~u_input.a, reverseBits(global0[_wgslsmith_index_u32(u_input.c.x, 14u)]), all(vec3<bool>(false, false, false))), min(-u_input.a, _wgslsmith_clamp_i32(2147483647i, u_input.a, u_input.a)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d, ~0u), 14u)])));
    global0 = array<i32, 14>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.a.b + -487f), var_0.a.b, all(vec3<bool>(false, false, true))))))));
    var var_2 = Struct_2(var_0.a, firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 10820i, var_0.b.x), vec3<i32>(-1i, 1i, 7505i)) & -var_0.b));
    global1 = -698f;
    return firstLeadingBit(_wgslsmith_mult_vec3_i32(~(-(vec3<i32>(-33918i, global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(var_0.a.c.x, 14u)]) | var_2.b)), abs(vec3<i32>(var_0.b.x, -19670i, var_0.b.x)) | _wgslsmith_add_vec3_i32(var_0.b, vec3<i32>(-48050i, var_2.b.x, var_2.b.x))));
}

fn func_2() -> vec3<i32> {
    let var_0 = u_input.a;
    let var_1 = false;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1365f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1257f - -1949f)))), -544f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(102f)), 1f)), 1169f))), -168f);
    global0 = array<i32, 14>();
    var var_3 = Struct_2(Struct_1(u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.x)))), vec3<u32>(18997u, ~0u, 1475u)), ~(((vec3<i32>(0i, global0[_wgslsmith_index_u32(4294967295u, 14u)], -1i) << (vec3<u32>(u_input.d, 1103u, u_input.b.x) % vec3<u32>(32u))) >> (vec3<u32>(17223u, 0u, 1u) % vec3<u32>(32u))) | _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 58660i, 0i), func_3())));
    return -_wgslsmith_sub_vec3_i32(select((vec3<i32>(global0[_wgslsmith_index_u32(1u, 14u)], -26612i, global0[_wgslsmith_index_u32(1876u, 14u)]) << (vec3<u32>(13581u, 4294967295u, 26929u) % vec3<u32>(32u))) | min(vec3<i32>(-5219i, var_0, -1i), vec3<i32>(-53441i, -2147483647i, 28781i)), var_3.b, vec3<bool>(!var_1, u_input.d <= u_input.b.x, !var_1)), var_3.b);
}

fn func_1() -> f32 {
    var var_0 = u_input.c.wxx;
    var var_1 = _wgslsmith_mult_vec3_i32((func_2() ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(var_0.x, 14u)], 28249i, -33536i), vec3<i32>(-2147483647i, 19917i, global0[_wgslsmith_index_u32(var_0.x, 14u)]), vec3<i32>(u_input.a, 0i, -23075i))) ^ reverseBits(-vec3<i32>(u_input.a, 1i, -6426i)), vec3<i32>(-(-1i >> (1u % 32u)), func_2().x, select(-62663i, 1i, true))) ^ vec3<i32>(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~u_input.c.x, 1u, ~4294967295u), 14u)], max(u_input.a, -1i), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(var_0.xy, var_0.xx), abs(0u)) >> (var_0.x % 32u), 14u)]);
    let var_2 = 1u ^ var_0.x;
    global1 = 312f;
    return 1273f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 14>();
    global0 = array<i32, 14>();
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))));
    let var_0 = ~(~(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.d, u_input.c.x), vec4<u32>(0u, 1u, 0u, 0u))));
    var var_1 = Struct_1(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -886f))))), u_input.c.zwx);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(1i));
}

