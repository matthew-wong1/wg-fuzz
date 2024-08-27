struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 13>;

var<private> global2: array<Struct_1, 8>;

var<private> global3: array<bool, 6>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: u32) -> f32 {
    global2 = array<Struct_1, 8>();
    global0 = arg_1.a.a;
    let var_0 = 4294967295u;
    var var_1 = global2[_wgslsmith_index_u32(arg_2, 8u)];
    var var_2 = ~vec4<u32>(58289u, u_input.a.x, var_0, ~39266u);
    return _wgslsmith_f_op_f32(ceil(812f));
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-206f - 1644f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1025f)) - _wgslsmith_f_op_f32(f32(-1f) * -487f))));
    global0 = _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(10657u, Struct_2(Struct_1(-1995f, u_input.a, -2147483647i), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 6u)], false, true), vec3<bool>(true, false, global3[_wgslsmith_index_u32(u_input.a.x, 6u)]), global2[_wgslsmith_index_u32(u_input.a.x, 8u)]), 1u))))), false));
    let var_0 = _wgslsmith_div_i32(1i, _wgslsmith_mod_i32(countOneBits(firstTrailingBit(~arg_0.x)), 0i));
    let var_1 = vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), ~u_input.a.x & ~6538u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 12432u, 1u), vec4<u32>(70357u, 17381u, 4294967295u, 0u), vec4<u32>(0u, u_input.a.x, 88111u, u_input.a.x))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 28141u, 29202u), vec4<u32>(u_input.a.x, u_input.a.x, 20936u, 1u))), vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, 1u), u_input.a.x, u_input.a.x, max(33111u, u_input.a.x)) ^ countOneBits(vec4<u32>(0u, 0u, u_input.a.x, u_input.a.x))), u_input.a.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(-554f - 801f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(155f, -236f)) + vec2<f32>(-325f, -1318f))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1810f, -922f), vec2<f32>(-1095f, 784f)))), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 549f), vec2<f32>(488f, -813f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(996f, -1117f) * vec2<f32>(-148f, 972f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1349f, 824f) - vec2<f32>(590f, 625f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(639f, -691f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-2600f, 148f) * vec2<f32>(127f, 318f))))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1306f, 1216f), vec2<f32>(331f, -1304f)))))));
    return 4870u;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: f32) -> u32 {
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(~abs(func_2(arg_2.yy) >> (3824u % 32u)), 8u)], select(vec3<bool>(true, !all(vec2<bool>(arg_0, arg_0)), global3[_wgslsmith_index_u32(12243u, 6u)]), !select(select(vec3<bool>(global3[_wgslsmith_index_u32(arg_1.b.x, 6u)], arg_0, true), vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, true, arg_0)), select(vec3<bool>(arg_0, false, global3[_wgslsmith_index_u32(70948u, 6u)]), vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, false, true)), !vec3<bool>(arg_0, global3[_wgslsmith_index_u32(arg_1.b.x, 6u)], false)), !((38981u << (u_input.a.x % 32u)) >= arg_1.b.x)), !vec3<bool>(true, any(!vec4<bool>(true, true, global3[_wgslsmith_index_u32(arg_1.b.x, 6u)], arg_0)), any(select(vec2<bool>(arg_0, arg_0), vec2<bool>(global3[_wgslsmith_index_u32(1u, 6u)], false), arg_0))), arg_1);
    let var_1 = global2[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(4294967295u, arg_1.b.x)), 8u)];
    let var_2 = max(~(~(~14602u) | ((arg_1.b.x ^ 0u) << (arg_1.b.x % 32u))), _wgslsmith_sub_u32(14509u >> (_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a.x, var_0.a.b.x), 1u) % 32u), 11486u));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(max(-1372f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.a) - 128f))), ~(~vec2<u32>(abs(u_input.a.x), var_1.b.x)), _wgslsmith_mod_i32(-1i, -1i));
    var_3 = global1[_wgslsmith_index_u32(58055u, 13u)];
    return ~18453u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = ~select(u_input.a.x, ~(~1u & func_1(global3[_wgslsmith_index_u32(u_input.a.x, 6u)], global2[_wgslsmith_index_u32(u_input.a.x, 8u)], vec3<i32>(35475i, 1i, 0i), 205f)), all(select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 6u)], global3[_wgslsmith_index_u32(29382u, 6u)], global3[_wgslsmith_index_u32(0u, 6u)], true), select(vec4<bool>(global3[_wgslsmith_index_u32(3877u, 6u)], false, true, false), vec4<bool>(true, global3[_wgslsmith_index_u32(28289u, 6u)], false, global3[_wgslsmith_index_u32(u_input.a.x, 6u)]), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 6u)], global3[_wgslsmith_index_u32(u_input.a.x, 6u)], false, true)), vec4<bool>(true, global3[_wgslsmith_index_u32(30908u, 6u)], global3[_wgslsmith_index_u32(13724u, 6u)], false))));
    var var_2 = Struct_3(Struct_2(global1[_wgslsmith_index_u32(1u, 13u)], !vec3<bool>(global3[_wgslsmith_index_u32(reverseBits(25549u), 6u)], false, all(vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x, 6u)], global3[_wgslsmith_index_u32(u_input.a.x, 6u)]))), vec3<bool>(true, true, firstTrailingBit(u_input.a.x) <= 1u), global2[_wgslsmith_index_u32(36080u, 8u)]));
    var_1 = ~(1u | func_1(true, Struct_1(_wgslsmith_f_op_f32(abs(var_2.a.a.a)), var_2.a.d.b, var_2.a.d.c), vec3<i32>(var_2.a.a.c, var_2.a.a.c, -39000i) | vec3<i32>(var_2.a.d.c, var_2.a.d.c, var_2.a.a.c), -159f));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1410f, _wgslsmith_f_op_f32(var_2.a.d.a + -484f), _wgslsmith_f_op_f32(-var_2.a.d.a)), vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.d.a), var_2.a.a.a, 1261f))), vec3<f32>(-408f, _wgslsmith_f_op_f32(var_2.a.d.a + _wgslsmith_f_op_f32(-var_2.a.d.a)), var_2.a.a.a), !global3[_wgslsmith_index_u32(~4294967295u, 6u)])));
    var_0 = true;
    var_1 = _wgslsmith_mod_u32(~u_input.a.x, var_2.a.d.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(_wgslsmith_mod_i32(var_2.a.a.c, var_2.a.d.c) << (countOneBits(u_input.a.x) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.x))))), var_2.a.a.c, -vec2<i32>((var_2.a.d.c << (57575u % 32u)) << (1u % 32u), -3978i));
}

