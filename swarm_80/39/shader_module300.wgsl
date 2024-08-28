struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(890f, -2535f, -1089f, 1260f), vec4<f32>(1635f, -313f, -1000f, 1354f), vec4<f32>(-489f, 1569f, 1021f, 377f), vec4<f32>(719f, -404f, -751f, 926f), vec4<f32>(205f, -441f, -1000f, 466f), vec4<f32>(1275f, 489f, 890f, -724f), vec4<f32>(1897f, -362f, 517f, -1582f), vec4<f32>(-720f, 2184f, 296f, 314f));

var<private> global1: Struct_1 = Struct_1(vec4<u32>(1u, 0u, 48740u, 4294967295u));

var<private> global2: array<Struct_1, 27>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32((_wgslsmith_dot_vec4_u32(~(global1.a >> (global1.a % vec4<u32>(32u))), firstTrailingBit(global1.a) & global1.a) << (global1.a.x % 32u)) ^ u_input.c.x, 27u)];
    global2 = array<Struct_1, 27>();
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(global0[_wgslsmith_index_u32(56550u, 8u)], vec4<f32>(1305f, 898f, -350f, arg_0), false)))) - _wgslsmith_f_op_vec4_f32(-arg_1)), vec4<f32>(367f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1238f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x + arg_0), _wgslsmith_f_op_f32(floor(arg_1.x))), arg_0)), _wgslsmith_f_op_vec4_f32(max(arg_1, _wgslsmith_f_op_vec4_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~70527u, countOneBits(40145u)), 8u)])))));
    global1 = global2[_wgslsmith_index_u32(~max(1975u, var_0.a.x), 27u)];
    global1 = global2[_wgslsmith_index_u32(u_input.c.x, 27u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1559f))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1215f, -698f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 153f, arg_0.x, arg_0.x) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(375f, 431f, arg_0.x, 284f), arg_0, vec4<bool>(true, true, false, true)))) * global0[_wgslsmith_index_u32(u_input.c.x, 8u)]) + arg_0)));
    var var_1 = Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(global1.a, ~(~global1.a)), global1.a.x, min(~(~u_input.c.x), ~firstTrailingBit(u_input.c.x)), firstLeadingBit(countOneBits(max(arg_1, arg_1)))));
    return u_input.a;
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    var var_0 = min(firstLeadingBit(vec4<i32>(_wgslsmith_mod_i32(~u_input.b, u_input.b), -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-36879i, 2147483647i, 55199i), -vec3<i32>(u_input.d, -72021i, u_input.b)), 1i)), -select(countOneBits(vec4<i32>(u_input.b, -46159i, 2147483647i, -2147483647i) >> (vec4<u32>(0u, 9044u, 1u, u_input.c.x) % vec4<u32>(32u))), ~(vec4<i32>(u_input.b, 55855i, u_input.d, u_input.d) & vec4<i32>(1i, u_input.d, u_input.b, 35623i)), !all(vec2<bool>(false, true))));
    let var_1 = Struct_1(countOneBits(global1.a));
    var var_2 = Struct_1(_wgslsmith_sub_vec4_u32(var_1.a & firstLeadingBit(global1.a), vec4<u32>(var_1.a.x, ~_wgslsmith_mult_u32(0u, 15752u), ~_wgslsmith_mod_u32(global1.a.x, 42980u), 4294967295u)));
    var var_3 = ~(~abs(vec4<i32>(-1i, -1i, u_input.a, -18933i) ^ vec4<i32>(u_input.d, u_input.b, u_input.b, u_input.b)));
    let var_4 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(min(firstTrailingBit(var_2.a.x), _wgslsmith_dot_vec3_u32(global1.a.yzz, global1.a.yzy)), 44438u), global1.a.zw, vec2<u32>(_wgslsmith_add_u32(1u, u_input.c.x), 1u));
    return -1311f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 8>();
    var var_0 = Struct_1(firstLeadingBit(~abs(~global1.a)));
    global2 = array<Struct_1, 27>();
    global0 = array<vec4<f32>, 8>();
    var var_1 = _wgslsmith_mult_i32(min(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.b, 2147483647i, -2147483647i, ~41378i), vec4<i32>(-47668i, u_input.b, func_1(vec4<f32>(874f, -270f, 591f, 233f), 46136u), 21780i))), i32(-1i) * -1881i);
    global0 = array<vec4<f32>, 8>();
    let var_2 = 7597i;
    let var_3 = _wgslsmith_f_op_f32(-1264f * -320f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(var_3)), 1085f, _wgslsmith_f_op_f32(func_3(vec3<f32>(var_3, 460f, -1630f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-825f, 589f, -403f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2726f, var_3, var_3)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) * -924f))), ~(_wgslsmith_mod_u32(~global1.a.x, _wgslsmith_div_u32(0u, 31993u)) ^ 1u), _wgslsmith_mod_vec3_u32(~select(firstLeadingBit(vec3<u32>(var_0.a.x, u_input.c.x, 4294967295u)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.x, 4294967295u, var_0.a.x), u_input.c), vec3<bool>(true, true, false)), ~(~(vec3<u32>(global1.a.x, var_0.a.x, u_input.c.x) ^ var_0.a.xyz))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, var_3) + vec2<f32>(var_3, -1000f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_3, 246f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, -1131f))));
}

