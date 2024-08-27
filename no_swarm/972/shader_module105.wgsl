struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(55866u, 15961u));

var<private> global1: array<vec4<bool>, 23>;

var<private> global2: Struct_1;

var<private> global3: i32 = -38440i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: i32) -> vec2<u32> {
    return global2.a;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>) -> f32 {
    global2 = Struct_1(abs(vec2<u32>(~global2.a.x, global0.a.x)));
    var var_0 = Struct_2(arg_1, u_input.b, countOneBits(u_input.b) | arg_0, firstLeadingBit(~42501i));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1874f + 519f), _wgslsmith_f_op_f32(1531f * _wgslsmith_f_op_f32(f32(-1f) * -730f))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(min(537f, _wgslsmith_div_f32(var_1.x, var_1.x)))))));
    var_0 = Struct_2(var_0.a, ~firstLeadingBit(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d, u_input.b, arg_0, 1i), vec4<i32>(var_0.c, u_input.b, -2147483647i, arg_0))), min(arg_0, select(21726i, u_input.b, all(vec3<bool>(arg_2.x, true, false)))) ^ var_0.c, reverseBits(~(-6055i)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + -634f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -439f))))), _wgslsmith_f_op_f32(trunc(-1150f)));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>) -> vec2<u32> {
    global0 = Struct_1(firstLeadingBit(~(~(~global2.a))));
    global0 = Struct_1(vec2<u32>(4294967295u, 1u));
    global1 = array<vec4<bool>, 23>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -760f), -1834f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -190f)))) * _wgslsmith_f_op_f32(1151f - _wgslsmith_f_op_f32(509f * _wgslsmith_div_f32(1475f, 207f)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2807f)))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0))) - _wgslsmith_f_op_f32(func_4(0i, Struct_1(func_3(-2147483647i, Struct_1(global0.a), vec4<f32>(var_0, 727f, var_0, 253f), _wgslsmith_mod_i32(69214i, u_input.b))), arg_1.www)));
    return vec2<u32>(~global0.a.x, 1u | _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, 0u, 1u, u_input.a.x), _wgslsmith_sub_vec4_u32(min(vec4<u32>(arg_0, u_input.a.x, global2.a.x, arg_0), vec4<u32>(global0.a.x, global0.a.x, arg_0, u_input.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(global2.a.x, global0.a.x, global2.a.x, global0.a.x), vec4<u32>(0u, 4294967295u, u_input.a.x, 4294967295u)))));
}

fn func_1() -> Struct_2 {
    global0 = Struct_1(_wgslsmith_clamp_vec2_u32(global0.a, global0.a, func_2(abs(1u), vec4<bool>(true, false, true, false))) ^ ~vec2<u32>(global0.a.x, global2.a.x));
    var var_0 = vec2<i32>(14028i, 19377i);
    global0 = Struct_1(vec2<u32>(func_2(_wgslsmith_mult_u32(~global0.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1887u, global0.a.x), vec2<u32>(57539u, 4294967295u))), select(global1[_wgslsmith_index_u32(~16093u, 23u)], select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), false), true)).x, _wgslsmith_add_u32(~_wgslsmith_mod_u32(1u, global0.a.x), 5964u)));
    var var_1 = i32(-1i) * -2147483647i;
    var var_2 = _wgslsmith_div_f32(-1306f, 736f);
    return Struct_2(Struct_1(vec2<u32>(~4294967295u, u_input.a.x)), 1383i, abs(_wgslsmith_mod_i32(u_input.b, ~2147483647i)), u_input.b);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    var var_0 = ~(~_wgslsmith_add_u32(~(~u_input.a.x), abs(0u)));
    global0 = arg_2.a;
    global2 = arg_2.a;
    var var_1 = _wgslsmith_f_op_f32(-1f);
    var var_2 = arg_2;
    return arg_2.a;
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = ~_wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(arg_1.a.a.x, 33334u, 4294967295u) & u_input.a), func_5(func_1(), Struct_2(Struct_1(global2.a), u_input.b, arg_0, 2147483647i), func_1()).a.x);
    let var_1 = min(~(-30391i), arg_1.b) ^ _wgslsmith_mod_i32(0i, -2147483647i);
    let var_2 = Struct_2(arg_3, u_input.b, var_1 << (~(~(~80571u)) % 32u), i32(-1i) * -u_input.b);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1269f, 1653f, false)) - _wgslsmith_f_op_f32(func_4(6529i, Struct_1(arg_3.a), vec3<bool>(false, false, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1170f)), -775f))))));
    let var_4 = abs(abs(reverseBits(firstTrailingBit(vec3<i32>(5759i, arg_1.c, var_1)) | ~vec3<i32>(-1429i, arg_0, 1i))));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(-985i, Struct_2(func_5(func_1(), Struct_2(Struct_1(vec2<u32>(global2.a.x, 1u)), min(u_input.b, -2147483647i), ~u_input.b, u_input.b), Struct_2(Struct_1(global2.a), u_input.b, firstLeadingBit(u_input.b), ~13227i)), -(25367i >> (global2.a.x % 32u)), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 2147483647i, u_input.b), vec3<i32>(-1i, u_input.b, 2147483647i))) | -_wgslsmith_mod_i32(u_input.b, -36207i), 0i), ~vec3<u32>(global0.a.x, ~41711u, u_input.a.x), func_1().a);
    var var_1 = vec3<i32>(u_input.b, _wgslsmith_mod_i32(_wgslsmith_mod_i32(-1i << (global0.a.x % 32u), ~17324i), 0i) << (global2.a.x % 32u), u_input.b);
    let var_2 = Struct_2(Struct_1(_wgslsmith_add_vec2_u32(var_0.a, ~(~vec2<u32>(global2.a.x, 4294967295u)))), _wgslsmith_dot_vec4_i32(firstLeadingBit(~firstTrailingBit(vec4<i32>(var_1.x, -22579i, -5252i, 12317i))), vec4<i32>(-1i, 1i, _wgslsmith_clamp_i32(-1i, _wgslsmith_add_i32(22033i, -2147483647i), u_input.b), ~abs(-33558i))), 19605i >> (min(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), var_0.a)), 1u) % 32u), var_1.x);
    global0 = var_2.a;
    let var_3 = global1[_wgslsmith_index_u32(~global2.a.x | 0u, 23u)];
    let var_4 = func_6(var_2.c, var_2, _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a, _wgslsmith_add_vec3_u32(select(u_input.a, u_input.a, vec3<bool>(false, var_3.x, true)), vec3<u32>(1u, var_2.a.a.x, 1u))), ~(~select(u_input.a, vec3<u32>(53045u, 9535u, global2.a.x), var_3.xyx)), vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.a.x, var_2.a.a.x, 22131u, var_0.a.x), vec4<u32>(global0.a.x, u_input.a.x, var_2.a.a.x, var_0.a.x)), 1u, global2.a.x)), var_2.a);
    var var_5 = false;
    global1 = array<vec4<bool>, 23>();
    let var_6 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-383f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1472f, 863f))))), 175f, 1000f));
}

