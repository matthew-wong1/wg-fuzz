struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
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

var<private> global0: array<Struct_3, 6>;

var<private> global1: array<vec2<u32>, 9>;

var<private> global2: array<f32, 18> = array<f32, 18>(-713f, 171f, 827f, -529f, 1287f, -391f, 1779f, 2354f, 105f, -741f, 148f, -959f, -1406f, 706f, -764f, 881f, 386f, 626f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> u32 {
    let var_0 = 3971i;
    global1 = array<vec2<u32>, 9>();
    global0 = array<Struct_3, 6>();
    var var_1 = !select(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false))), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), !all(vec2<bool>(true, true)) == (true || all(vec2<bool>(true, false))));
    var var_2 = vec3<i32>(~_wgslsmith_div_i32(_wgslsmith_add_i32(var_0, 25959i), -(u_input.a ^ 67330i)), _wgslsmith_div_i32(var_0, min(_wgslsmith_div_i32(u_input.a, select(-36081i, var_0, false)), u_input.a)), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a, -1240i), -vec3<i32>(-2147483647i, u_input.a, u_input.a)) | 20901i));
    return _wgslsmith_clamp_u32(max(u_input.b, u_input.b), u_input.b, u_input.b);
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    var var_0 = ~u_input.a;
    let var_1 = vec3<u32>(0u, firstLeadingBit(~(~u_input.b)), ~u_input.b) >> (_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(func_3(), ~4294967295u, reverseBits(u_input.b))), vec3<u32>(44332u, _wgslsmith_sub_u32(1u, u_input.b), abs(u_input.b)) >> (~max(vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(83959u, 4294967295u, u_input.b)) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_2 = all(vec4<bool>(~var_1.x > _wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, var_1.x), 4294967295u, 4294967295u), abs(_wgslsmith_div_u32(0u, 109870u)) >= var_1.x, all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), false));
    let var_3 = arg_0;
    global2 = array<f32, 18>();
    return 345f;
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: vec4<u32>, arg_3: vec3<bool>) -> i32 {
    var var_0 = any(arg_3.zx);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(select(33772u, 1u, false), 18u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<f32>(1565f, global2[_wgslsmith_index_u32(1u, 18u)], -697f))) - global2[_wgslsmith_index_u32(71805u, 18u)])))), -1000f);
    var var_2 = ~_wgslsmith_dot_vec2_u32(arg_2.xw, arg_2.yx) > _wgslsmith_mod_u32(44432u, 1u << (arg_2.x % 32u));
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.a.x, arg_2.x), 18u)];
    var_3 = _wgslsmith_f_op_f32(ceil(-1157f));
    return firstLeadingBit(_wgslsmith_clamp_i32(-_wgslsmith_mult_i32(-arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 22207i, 26687i), vec3<i32>(7622i, arg_1, u_input.a))), _wgslsmith_div_i32(i32(-1i) * -6243i, 29413i), firstLeadingBit(_wgslsmith_div_i32(35258i, -1i)) | ~firstLeadingBit(u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-_wgslsmith_mod_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, 0i), vec4<i32>(u_input.a, u_input.a, -544i, 11663i)), vec4<i32>(_wgslsmith_div_i32(u_input.a, u_input.a), func_1(global0[_wgslsmith_index_u32(50722u, 6u)], u_input.a, vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec3<bool>(true, false, true)), -8871i, i32(-1i) * -19179i)));
    var var_1 = _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~(~u_input.b), 18u)] + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -557f))));
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(725f, global2[_wgslsmith_index_u32(u_input.b, 18u)], global2[_wgslsmith_index_u32(u_input.b, 18u)], -189f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.b, 18u)], -817f, -347f, -2034f) * vec4<f32>(1699f, global2[_wgslsmith_index_u32(84053u, 18u)], 775f, 123f))))), vec4<f32>(_wgslsmith_f_op_f32(-1172f - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~u_input.b, 18u)])), -970f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -420f), _wgslsmith_f_op_f32(1042f - -992f)))), global2[_wgslsmith_index_u32(~u_input.b, 18u)])));
    global2 = array<f32, 18>();
    global0 = array<Struct_3, 6>();
    var var_3 = ~vec3<u32>(~(~firstLeadingBit(1u)), 10570u, _wgslsmith_mod_u32(u_input.b, countOneBits(~2132u)));
    var_3 = abs(vec3<u32>(select(u_input.b, firstTrailingBit(u_input.b), all(vec3<bool>(false, false, false))), var_3.x, 59340u));
    let var_4 = !(!vec2<bool>(false, any(vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-u_input.a));
}

