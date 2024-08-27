struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> vec4<i32> {
    let var_0 = ~(~(~4173u));
    var var_1 = Struct_1(-firstTrailingBit(~_wgslsmith_mult_i32(-1i, 8946i)), ~vec2<u32>(_wgslsmith_sub_u32(u_input.b, min(var_0, 1u)), 1u));
    let var_2 = ~(~u_input.b);
    var var_3 = Struct_4(Struct_2(~(~(-41771i))), Struct_2(u_input.c), 0u, Struct_1(select(_wgslsmith_mod_i32(-58345i, u_input.c), ~1i, true) | ~select(var_1.a, var_1.a, true), vec2<u32>(min(~33116u, firstLeadingBit(var_1.b.x)), 4294967295u)));
    var_1 = Struct_1(-1i, vec2<u32>(0u, firstLeadingBit(~u_input.b << ((var_3.d.b.x << (56947u % 32u)) % 32u))));
    return vec4<i32>(-2147483647i, -33790i, _wgslsmith_mod_i32(u_input.a, select(~22173i, _wgslsmith_mult_i32(var_3.a.a << (u_input.b % 32u), ~u_input.a), true)), var_3.b.a);
}

fn func_3(arg_0: bool) -> vec2<u32> {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(15982u, 1u, 23785u, abs(firstTrailingBit(u_input.b))), vec4<u32>(u_input.b, select(u_input.b | ~u_input.b, u_input.b, true), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.b, 0u, u_input.b) << (vec4<u32>(4294967295u, u_input.b, u_input.b, 43408u) % vec4<u32>(32u)), reverseBits(vec4<u32>(u_input.b, 22877u, 0u, 32276u)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, u_input.b), vec4<u32>(4294967295u, 0u, u_input.b, 22542u))), vec4<u32>(u_input.b, 13700u, 35878u, u_input.b) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, 31275u), vec4<u32>(4294967295u, u_input.b, u_input.b, 21892u))), ~0u));
    var_0 = ~reverseBits(select(0u, ~0u, all(vec4<bool>(false, false, arg_0, false))) ^ ~(~26315u));
    let var_1 = !(!select(!(!vec3<bool>(false, arg_0, arg_0)), select(select(vec3<bool>(false, false, true), vec3<bool>(arg_0, false, true), vec3<bool>(arg_0, true, true)), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), arg_0), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(false, arg_0, arg_0), arg_0)), true));
    var var_2 = Struct_4(Struct_2(-25267i), Struct_2(-2147483647i), countOneBits(reverseBits(abs(u_input.b))), Struct_1(7171i, select(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.b, 37420u))), ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 8675u)), var_1.xx)));
    var_2 = Struct_4(Struct_2(var_2.b.a), Struct_2(-2147483647i), firstLeadingBit(~1u), var_2.d);
    return max(vec2<u32>(abs(u_input.b), _wgslsmith_sub_u32(var_2.d.b.x, 937u) | countOneBits(var_2.d.b.x)) | max(vec2<u32>(u_input.b & 1u, var_2.d.b.x), _wgslsmith_div_vec2_u32(min(var_2.d.b, vec2<u32>(u_input.b, 1u)), vec2<u32>(28522u, 1u))), _wgslsmith_add_vec2_u32(var_2.d.b, _wgslsmith_div_vec2_u32(var_2.d.b, var_2.d.b | countOneBits(var_2.d.b))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: f32) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, 2700i, arg_0.a, -2147483647i), vec4<i32>(u_input.a, 4596i, -892i, -2147483647i)), vec4<i32>(-2147483647i, -1i, arg_0.a, -2147483647i)), func_2() & _wgslsmith_add_vec4_i32(vec4<i32>(0i, arg_0.a, 6719i, 2147483647i), vec4<i32>(u_input.c, arg_0.a, u_input.c, 2147483647i))) << (4294967295u % 32u), _wgslsmith_sub_vec2_u32(~select(_wgslsmith_add_vec2_u32(arg_1, vec2<u32>(4294967295u, arg_1.x)), func_3(false), vec2<bool>(false, true)), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b, 9633u), min(vec2<u32>(u_input.b, u_input.b) >> (arg_1 % vec2<u32>(32u)), firstTrailingBit(vec2<u32>(0u, u_input.b))))));
    var var_1 = arg_1.x;
    var_1 = arg_1.x;
    var var_2 = ~(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(var_0.b.x, var_0.b.x, var_0.b.x, u_input.b) >> (vec4<u32>(4294967295u, var_0.b.x, 4294967295u, 32300u) % vec4<u32>(32u))), ~reverseBits(vec4<u32>(1u, 4294967295u, u_input.b, u_input.b))) ^ min(min(vec4<u32>(4294967295u, 53858u, 22999u, 32726u) << (vec4<u32>(arg_1.x, 55737u, u_input.b, arg_1.x) % vec4<u32>(32u)), vec4<u32>(u_input.b, 0u, 4294967295u, arg_1.x)), vec4<u32>(~u_input.b, countOneBits(4294967295u), var_0.b.x, ~4403u)));
    let var_3 = _wgslsmith_f_op_f32(-1f);
    return Struct_2(_wgslsmith_div_i32(-(~func_2().x), var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_2(-u_input.c), firstLeadingBit(_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b, 58335u) << (vec2<u32>(u_input.b, 61119u) % vec2<u32>(32u))), vec2<u32>(u_input.b, ~u_input.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-343f + 1236f) + _wgslsmith_f_op_f32(631f + 966f))), _wgslsmith_f_op_f32(floor(-838f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_mult_i32(-firstLeadingBit(20576i), -1i), u_input.c), vec2<u32>(0u, abs(abs(reverseBits(0u)))), 1000f, -_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, var_0.a), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 7123i), vec2<i32>(-2147483647i, -2147483647i))), -(~18128i)), 45971u);
}

