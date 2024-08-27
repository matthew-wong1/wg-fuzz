struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6>;

var<private> global1: Struct_1;

var<private> global2: vec4<u32>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_1 {
    return Struct_1(26506u, ~(1i ^ global1.b));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(420f)), _wgslsmith_f_op_f32(sign(442f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1481f * -728f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(341f, 1101f, -2452f) - vec3<f32>(191f, 1892f, -495f)))))), !(!vec3<bool>(false, any(vec3<bool>(true, true, false)), true))));
    var var_1 = arg_0;
    var var_2 = (abs(~vec3<u32>(global0[_wgslsmith_index_u32(var_1.a, 6u)], global2.x, 70780u) ^ u_input.a.yyy) << (max(vec3<u32>(~global0[_wgslsmith_index_u32(53074u, 6u)], 13428u, global1.a | 0u), firstLeadingBit(~global2.xyz)) % vec3<u32>(32u))) ^ (u_input.a.zwy >> (global2.yzw % vec3<u32>(32u)));
    var_2 = vec3<u32>(global0[_wgslsmith_index_u32(global2.x, 6u)], ~var_1.a, ~(~min(4294967295u, var_1.a)) << (4294967295u % 32u));
    var var_3 = _wgslsmith_f_op_f32(ceil(var_0.x));
    return select(all(vec4<bool>(global1.b != -68816i, true, -359f <= _wgslsmith_f_op_f32(-var_0.x), ~arg_0.b > _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_1.b, -1i), vec3<i32>(var_1.b, -36817i, -12158i)))), true, false);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_2 {
    global1 = Struct_1(u_input.a.x, 10309i);
    let var_0 = ~_wgslsmith_mult_u32(abs(~1u), u_input.a.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_3.c.x - -982f)))));
    let var_2 = func_3(func_1(~37871u, arg_3, vec4<bool>(arg_2.x & false, 857f <= arg_3.c.x, false, all(vec4<bool>(true, false, false, arg_3.a.x))), arg_3)) || arg_3.a.x;
    global0 = array<u32, 6>();
    return Struct_2(select(arg_3.a, vec3<bool>(true, func_3(Struct_1(global0[_wgslsmith_index_u32(49025u, 6u)], -1i)), !(arg_3.c.x > 1385f)), arg_3.a.x), ~vec3<u32>(17206u, _wgslsmith_add_u32(global2.x, arg_0.a), ~var_0), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2022f, arg_3.c.x))))) * arg_3.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_3.c.x, 180f), vec2<f32>(1f, 1f), !arg_2))))));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec2<f32>) -> bool {
    global2 = select(_wgslsmith_div_vec4_u32(u_input.a, ~u_input.a), select(~u_input.a, ~vec4<u32>(arg_2.b.x, arg_2.b.x, 0u, 1u), vec4<bool>(false, arg_1.x, arg_1.x, true)) & _wgslsmith_sub_vec4_u32(~u_input.a, u_input.a << (u_input.a % vec4<u32>(32u))), !select(!vec4<bool>(true, false, true, arg_1.x), select(vec4<bool>(arg_1.x, true, true, arg_1.x), vec4<bool>(arg_1.x, arg_2.a.x, arg_2.a.x, arg_2.a.x), vec4<bool>(false, arg_1.x, arg_2.a.x, true)), vec4<bool>(true, true, true, true))) >> ((_wgslsmith_sub_vec4_u32(~countOneBits(u_input.a), ~vec4<u32>(u_input.a.x, 4294967295u, 40894u, 45433u)) << (vec4<u32>(4294967295u, 4294967295u, global2.x, 11818u) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_0 = _wgslsmith_sub_i32(reverseBits(global1.b), _wgslsmith_add_i32(26488i, _wgslsmith_dot_vec2_i32(-(vec2<i32>(global1.b, -32350i) | vec2<i32>(global1.b, -5833i)), -_wgslsmith_div_vec2_i32(vec2<i32>(global1.b, 43391i), vec2<i32>(-18611i, global1.b)))));
    global0 = array<u32, 6>();
    var var_1 = 2147483647i;
    var var_2 = Struct_2(vec3<bool>(all(vec4<bool>(true, true, arg_1.x | arg_2.a.x, !arg_1.x)), true, arg_1.x & false), ~_wgslsmith_add_vec3_u32(vec3<u32>(~81918u, 56265u, abs(u_input.a.x)), ~u_input.a.xyw), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_2.c.x)), arg_2.c.x, func_3(Struct_1(u_input.a.x, var_0)))))));
    return true | all(select(!select(vec2<bool>(false, true), vec2<bool>(arg_2.a.x, false), var_2.a.x), var_2.a.xz, vec2<bool>(arg_2.a.x, all(arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 6>();
    let var_0 = -vec3<i32>(~firstTrailingBit(global1.b), -global1.b, abs(_wgslsmith_mod_i32(-36866i, -1i)) << (1u % 32u));
    global0 = array<u32, 6>();
    var var_1 = 680f;
    let var_2 = select(vec4<bool>(!any(vec4<bool>(true, false, true, true)), true, global1.a < 1039u, false), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), 52214u > u_input.a.x), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, false, false)), vec4<bool>(all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false))), any(vec3<bool>(true, true, true)), select(true, false, true), true), vec4<bool>(global2.x < ~27915u, all(vec3<bool>(false, true, true)), false, true)), true);
    var var_3 = select(true, true, select(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1144f - 1000f) + -1030f) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1309f + -1000f), _wgslsmith_f_op_f32(sign(-447f)), !var_2.x)), func_4(-189f, vec3<bool>(select(false, false, false), all(var_2.yx), false), func_2(func_1(1u, Struct_2(var_2.wzy, vec3<u32>(0u, global0[_wgslsmith_index_u32(global1.a, 6u)], 45098u), vec2<f32>(-1306f, 1117f)), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), Struct_2(var_2.xxx, vec3<u32>(1u, global1.a, 1332u), vec2<f32>(710f, 235f))), vec4<i32>(37101i, global1.b, var_0.x, var_0.x), !vec2<bool>(false, var_2.x), Struct_2(vec3<bool>(var_2.x, var_2.x, false), u_input.a.zxz, vec2<f32>(-157f, -351f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1304f, 1103f) + vec2<f32>(691f, 436f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(995f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-335f * -698f)), 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(708f - -584f), _wgslsmith_f_op_f32(f32(-1f) * -235f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1043f, 1000f, 286f) - vec4<f32>(956f, 1641f, 575f, -331f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(106f, -450f, 970f, 1327f)))))))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-154f)) * _wgslsmith_div_f32(1693f, 542f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-373f, 731f)))), var_2.x)), -1716f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -521f) + _wgslsmith_f_op_f32(-973f + 1042f))))), _wgslsmith_div_u32(~44807u, select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global2.yzx, ~vec3<u32>(global1.a, global0[_wgslsmith_index_u32(global1.a, 6u)], global2.x)), 6u)], _wgslsmith_dot_vec2_u32(~global2.ww, _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(global0[_wgslsmith_index_u32(2836u, 6u)], 4294967295u))), true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1121f, -812f)), _wgslsmith_add_vec4_u32(abs(u_input.a), ~firstLeadingBit(select(u_input.a, u_input.a, var_2.x))));
}

