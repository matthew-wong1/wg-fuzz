struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(921f, -1209f), Struct_1(-963f, 1402f), Struct_1(2923f, 1000f), Struct_1(-1841f, 426f), Struct_1(734f, -1125f), Struct_1(-300f, -588f), Struct_1(240f, -760f), Struct_1(724f, -1238f), Struct_1(810f, -650f), Struct_1(745f, 735f), Struct_1(-829f, -561f), Struct_1(-606f, -1157f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<u32>) -> i32 {
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    var var_0 = any(!vec2<bool>(select(true, arg_0.x >= arg_0.x, true), true));
    var_0 = true;
    var var_1 = _wgslsmith_add_i32(_wgslsmith_mod_i32(1i, 1i), i32(-1i) * -1i);
    return 2147483647i;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = vec2<u32>(50919u, 31337u) >> (max((vec2<u32>(u_input.d, 112699u) << ((vec2<u32>(u_input.d, 63361u) & vec2<u32>(u_input.d, 65507u)) % vec2<u32>(32u))) << (min(reverseBits(vec2<u32>(4294967295u, 0u)), vec2<u32>(4294967295u, u_input.d)) % vec2<u32>(32u)), (~vec2<u32>(u_input.d, 4294967295u) | vec2<u32>(u_input.d, u_input.d)) | ~select(vec2<u32>(u_input.d, 0u), vec2<u32>(u_input.d, 21429u), vec2<bool>(false, true))) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1255f, arg_1.a, -1891f, arg_1.b))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b * -1000f) - 262f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(447f * 1586f) - arg_2.a), 748f, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(arg_2.b + arg_1.b)))));
    var var_2 = arg_1;
    var var_3 = Struct_2(select(vec2<bool>(false, true), !vec2<bool>(all(vec3<bool>(true, false, true)), true), _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, arg_0.x, -12717i), _wgslsmith_add_vec3_i32(vec3<i32>(58741i, u_input.e, u_input.a.x), vec3<i32>(arg_0.x, 22537i, arg_0.x))) < countOneBits(-15169i)), 3012u, abs(-(~vec3<i32>(-29442i, u_input.e, 0i))));
    let var_4 = -1000f;
    return !select(!(!select(vec2<bool>(false, var_3.a.x), var_3.a, var_3.a)), vec2<bool>(any(select(vec4<bool>(var_3.a.x, var_3.a.x, false, true), vec4<bool>(var_3.a.x, true, var_3.a.x, var_3.a.x), vec4<bool>(var_3.a.x, false, false, var_3.a.x))), _wgslsmith_mod_i32(arg_0.x, -1628i) != -7676i), vec2<bool>(true, true));
}

fn func_1(arg_0: u32) -> vec4<bool> {
    let var_0 = func_2(vec4<i32>(1i, 1i, _wgslsmith_mult_i32(u_input.b, _wgslsmith_mod_i32(u_input.a.x, -14540i)), u_input.b), _wgslsmith_mod_vec4_u32(firstLeadingBit((vec4<u32>(arg_0, 8375u, u_input.d, 91892u) & vec4<u32>(0u, 37449u, 26756u, u_input.d)) & (vec4<u32>(u_input.d, 1u, u_input.d, 1u) ^ vec4<u32>(78295u, arg_0, arg_0, 4294967295u))), vec4<u32>(~arg_0 << ((57503u >> (0u % 32u)) % 32u), arg_0, _wgslsmith_mult_u32(0u, abs(4441u)), countOneBits(_wgslsmith_mod_u32(u_input.d, u_input.d)))));
    let var_1 = !(!select(vec2<bool>(true, any(vec3<bool>(false, true, true))), select(func_3(u_input.a, Struct_1(361f, -674f), global0[_wgslsmith_index_u32(arg_0, 12u)]), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true)));
    global0 = array<Struct_1, 12>();
    var var_2 = global0[_wgslsmith_index_u32(1u, 12u)];
    var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1131f, _wgslsmith_f_op_f32(-var_2.b), true))), -186f);
    return vec4<bool>(all(select(!select(vec3<bool>(true, false, var_1.x), vec3<bool>(var_1.x, false, true), vec3<bool>(var_1.x, true, true)), vec3<bool>(!var_1.x, var_1.x || var_1.x, true), vec3<bool>(true, var_1.x, var_1.x))), var_1.x, true, func_2(~vec4<i32>(u_input.c, 59781i, 5529i, u_input.e) & abs(vec4<i32>(-1i, -6706i, var_0, var_0)), ~firstLeadingBit(vec4<u32>(5413u, 15083u, 4294967295u, 0u))) <= 6872i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<bool>(any(select(vec4<bool>(false, false, true, false), func_1(60717u), vec4<bool>(true, false, false, false))), true), 4294967295u, -_wgslsmith_clamp_vec3_i32(vec3<i32>(min(u_input.a.x, u_input.a.x), u_input.b, firstTrailingBit(2147483647i)), firstTrailingBit(vec3<i32>(1i, 51481i, -16092i)) & vec3<i32>(-3665i, -1i, 4680i), ~(vec3<i32>(31890i, u_input.c, -1i) & vec3<i32>(u_input.a.x, u_input.b, u_input.e))));
    let var_1 = reverseBits(~vec3<u32>(countOneBits(abs(0u)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 20764u, var_0.b, var_0.b), vec4<u32>(1u, 1u, u_input.d, u_input.d)), select(vec4<u32>(u_input.d, u_input.d, var_0.b, 68913u), vec4<u32>(u_input.d, 0u, u_input.d, 0u), var_0.a.x)), select(~var_0.b, ~1u, var_0.a.x)));
    var var_2 = !(!(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, var_0.a.x, var_0.a.x), var_0.a.x))));
    let var_3 = global0[_wgslsmith_index_u32(0u, 12u)];
    var_0 = Struct_2(vec2<bool>(false, true), ~abs(4294967295u >> (~var_0.b % 32u)), var_0.c);
    let var_4 = 1u;
    let var_5 = Struct_2(var_0.a, _wgslsmith_dot_vec2_u32(select(var_1.zy << (_wgslsmith_clamp_vec2_u32(var_1.yx, var_1.zx, var_1.zx) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_sub_u32(u_input.d, 0u), max(1u, var_1.x)), var_2.zz), abs(vec2<u32>(~1u, var_1.x))), var_0.c ^ ~vec3<i32>(min(2147483647i, var_0.c.x), -2147483647i, -28130i));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-_wgslsmith_dot_vec3_i32(var_5.c, var_5.c)) << (var_0.b % 32u), ((abs(41973i) >> (~u_input.d % 32u)) >> (1u % 32u)) | 2147483647i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b, var_3.a, 1253f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1000f * -826f), var_3.b, var_3.b) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.b, -1246f, 1485f)))));
}

