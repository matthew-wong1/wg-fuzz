struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 3> = array<vec4<u32>, 3>(vec4<u32>(25773u, 4294967295u, 16087u, 1u), vec4<u32>(91699u, 4294967295u, 45581u, 42170u), vec4<u32>(24100u, 1u, 444u, 90187u));

var<private> global1: f32 = 1507f;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: vec4<bool>) -> vec3<i32> {
    var var_0 = arg_2.x;
    var var_1 = Struct_1(_wgslsmith_sub_vec2_i32(u_input.c, _wgslsmith_add_vec2_i32(countOneBits(u_input.c) << (reverseBits(arg_0.xz) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(~u_input.c, u_input.c | vec2<i32>(1i, -32923i)))), vec3<i32>(min(47616i, u_input.c.x), _wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(u_input.c, vec2<i32>(u_input.d, u_input.a)), _wgslsmith_sub_vec2_i32(~u_input.c, u_input.c)), u_input.c.x));
    var var_2 = Struct_1(firstLeadingBit(var_1.b.xz), vec3<i32>(u_input.a, var_1.b.x, -44937i));
    let var_3 = vec4<i32>(i32(-1i) * -1i, u_input.c.x, -2147483647i, -var_2.a.x);
    let var_4 = Struct_2(Struct_1(vec2<i32>(49050i, -_wgslsmith_dot_vec4_i32(var_3, var_3)), abs(-(vec3<i32>(u_input.a, var_1.a.x, 0i) >> (vec3<u32>(1u, 24537u, 4294967295u) % vec3<u32>(32u))))));
    return -vec3<i32>(_wgslsmith_mod_i32(-2147483647i, abs(u_input.c.x)), firstLeadingBit(-37239i << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(arg_0.x, 0u)) % 32u)), countOneBits(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(var_3, var_3), abs(36440i))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(u_input.c, -(~func_3(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<bool>(false, false, false), vec4<bool>(true, true, false, false)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -966f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), 2110f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)))));
    global0 = array<vec4<u32>, 3>();
    global1 = -278f;
    let var_2 = _wgslsmith_f_op_f32(trunc(1866f));
    return var_0.a;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = u_input.b;
    global1 = -711f;
    let var_1 = (min(max(arg_2.b.x, max(1i, u_input.d)), ~0i) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.b, 4294967295u, u_input.b), firstTrailingBit(vec4<u32>(1u, 1u, u_input.b, u_input.b)) << (global0[_wgslsmith_index_u32(97248u, 3u)] % vec4<u32>(32u))) % 32u)) <= _wgslsmith_add_i32(0i, reverseBits(35154i));
    let var_2 = Struct_2(Struct_1(vec2<i32>(u_input.c.x, arg_2.b.x), select(~(~vec3<i32>(arg_2.a.x, 2147483647i, arg_2.b.x)), arg_2.b | arg_2.b, !var_1)));
    var var_3 = 33314u;
    return _wgslsmith_mod_vec3_u32(~vec3<u32>(0u | u_input.b, 1u, ~46045u), vec3<u32>(_wgslsmith_mod_u32(67668u, 4294967295u), 10228u, min(_wgslsmith_dot_vec2_u32(vec2<u32>(4695u, u_input.b), vec2<u32>(u_input.b, u_input.b)), reverseBits(28000u)))) >> (~_wgslsmith_clamp_vec3_u32(reverseBits(reverseBits(vec3<u32>(u_input.b, 27856u, u_input.b))), _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(u_input.b, u_input.b, u_input.b)), ~vec3<u32>(u_input.b, 4294967295u, u_input.b)), ~abs(vec3<u32>(1u, 15477u, u_input.b))) % vec3<u32>(32u));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: i32, arg_3: vec3<i32>) -> StorageBuffer {
    global0 = array<vec4<u32>, 3>();
    var var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 1u, arg_1.x), func_4(vec2<bool>(true, false), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, arg_3.x), vec3<i32>(arg_2, arg_2, -1i)) | countOneBits(2147483647i), func_2(-132f))) | select(vec3<u32>(firstTrailingBit(~arg_1.x), _wgslsmith_clamp_u32(~4294967295u, firstTrailingBit(0u), ~17290u), abs(~u_input.b)), vec3<u32>(arg_1.x, firstLeadingBit(_wgslsmith_sub_u32(arg_1.x, u_input.b)), ~0u), vec3<bool>(true, true, true));
    var var_1 = !select(select(vec3<bool>(true, any(vec4<bool>(true, false, false, true)), all(vec3<bool>(true, false, true))), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), true), select(select(false, false, true), 0u > var_0.x, all(vec4<bool>(false, true, true, false)))), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), !any(vec3<bool>(true, true, false))));
    var_0 = ~max(arg_1, arg_1);
    let var_2 = vec3<bool>(!var_1.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(u_input.d, 26180i, arg_2)), reverseBits(arg_3)), vec3<i32>(-4925i, arg_3.x, 29551i)) <= _wgslsmith_mod_i32(select(20452i, arg_3.x ^ -2147483647i, false), -1i), false);
    return StorageBuffer(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(sign(-608f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 3>();
    global1 = -1000f;
    let x = u_input.a;
    s_output = func_1(vec4<f32>(1508f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-799f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1779f - _wgslsmith_f_op_f32(469f - 1545f)) + _wgslsmith_f_op_f32(f32(-1f) * -3481f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(199f)) + _wgslsmith_f_op_f32(select(-736f, -1225f, true)))))), ~vec3<u32>(47153u, ~u_input.b, 4294967295u), u_input.c.x, abs(~(~_wgslsmith_add_vec3_i32(vec3<i32>(-12133i, -1i, u_input.a), vec3<i32>(2147483647i, 1i, -4465i)))));
}

