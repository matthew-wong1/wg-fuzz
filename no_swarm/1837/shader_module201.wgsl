struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(Struct_2(Struct_1(56612u, vec3<f32>(-310f, 637f, -457f)), 33621u), Struct_2(Struct_1(0u, vec3<f32>(-1438f, 213f, -1790f)), 0u)), Struct_4(Struct_2(Struct_1(5529u, vec3<f32>(919f, 203f, 1192f)), 0u), Struct_2(Struct_1(71117u, vec3<f32>(869f, -1571f, 378f)), 13684u)));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    global0 = array<Struct_4, 2>();
    let var_0 = global0[_wgslsmith_index_u32(~(~(~u_input.b.x)) << (u_input.b.x % 32u), 2u)];
    let var_1 = Struct_1(~reverseBits(1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_0.a.a.b, arg_0.a.b))));
    let var_2 = -u_input.d.x;
    let var_3 = ~min(u_input.d.x, -1i) != ~var_2;
    return _wgslsmith_div_vec4_u32(firstLeadingBit(~vec4<u32>(var_0.a.b, ~var_1.a, 0u, _wgslsmith_mod_u32(25348u, var_0.b.b))), u_input.b);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = ~u_input.d.x;
    var var_1 = arg_0.a.a;
    let var_2 = global0[_wgslsmith_index_u32(u_input.b.x, 2u)];
    let var_3 = Struct_3(_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(~u_input.c.x, ~0u), 4294967295u), abs(arg_0.a.a)), all(vec4<bool>(all(vec3<bool>(true, false, true)), true, false, true)), var_2.a.a);
    var_1 = arg_0.b;
    return Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, _wgslsmith_div_u32(_wgslsmith_add_u32(arg_0.b, 0u), arg_1.b), 4294967295u, 0u), func_3(Struct_2(var_2.a.a, 0u))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.a.b.x, _wgslsmith_div_f32(-1000f, 1187f), var_2.b.a.b.x), _wgslsmith_f_op_vec3_f32(-arg_1.a.b))));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2, arg_3: Struct_4) -> vec2<bool> {
    var var_0 = _wgslsmith_clamp_i32(u_input.d.x, -u_input.a.x, 27045i);
    var_0 = -2147483647i << ((func_3(Struct_2(arg_2.a, abs(4294967295u))).x & ~(~(~4294967295u))) % 32u);
    var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.a.b.x));
    var var_2 = _wgslsmith_clamp_vec2_u32(select(u_input.c, u_input.b.wx, _wgslsmith_f_op_f32(arg_0.c.b.x - _wgslsmith_div_f32(var_1, -1000f)) > _wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(round(arg_3.b.a.b.x))))), ~u_input.c, ~u_input.c);
    return vec2<bool>(arg_0.b, any(!select(vec3<bool>(false, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, true, arg_0.b), arg_0.b)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_3) -> Struct_1 {
    global0 = array<Struct_4, 2>();
    var var_0 = arg_3.c.b.x;
    var var_1 = vec2<u32>(55456u, _wgslsmith_sub_u32(_wgslsmith_add_u32(countOneBits(1u), 41433u), 1u));
    var var_2 = arg_3;
    var var_3 = !select(!vec2<bool>(var_2.b, any(vec4<bool>(false, arg_1.x, false, true))), func_4(arg_3, u_input.a.x, Struct_2(func_2(Struct_2(var_2.c, 4294967295u), Struct_2(Struct_1(var_2.c.a, vec3<f32>(var_2.c.b.x, arg_3.c.b.x, arg_3.c.b.x)), 4294967295u), var_2.c.b, vec3<f32>(1044f, var_2.c.b.x, arg_3.c.b.x)), ~var_1.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.zwy, vec3<u32>(26920u, arg_0.x, 4294967295u) >> (vec3<u32>(72957u, 4294967295u, arg_0.x) % vec3<u32>(32u))), 2u)]), true);
    return Struct_1(1u, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2271f), var_2.c.b.x, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(1966f - var_2.c.b.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_3.c.b, vec3<f32>(var_2.c.b.x, arg_3.c.b.x, -634f))))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(arg_1.b.x));
    global0 = array<Struct_4, 2>();
    global0 = array<Struct_4, 2>();
    global0 = array<Struct_4, 2>();
    var var_1 = func_1(abs(_wgslsmith_clamp_vec2_u32(u_input.c, vec2<u32>(4294967295u, func_3(arg_2).x), u_input.b.wy << (u_input.b.yz % vec2<u32>(32u)))), select(vec3<bool>(func_4(Struct_3(52u, false, arg_1), -2147483647i >> (arg_1.a % 32u), Struct_2(arg_1, 0u), global0[_wgslsmith_index_u32(55125u, 2u)]).x, true, false), vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), all(vec3<bool>(false, false, true))), vec3<bool>(false, true, any(vec4<bool>(true, true, false, true))), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false))), any(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)), true)), Struct_3(_wgslsmith_sub_u32(arg_1.a ^ arg_2.a.a, abs(arg_2.b)) << ((1u >> (func_3(arg_2).x % 32u)) % 32u), arg_0.x >= -firstTrailingBit(arg_0.x), func_2(Struct_2(Struct_1(8447u, arg_1.b), ~u_input.b.x), arg_2, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-155f, var_0, -833f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-505f, 199f, -131f) + vec3<f32>(-731f, arg_2.a.b.x, arg_2.a.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, arg_2.a.b.x, var_0), arg_1.b) + vec3<f32>(-390f, 726f, -156f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -210f))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(func_5(~u_input.a, func_1(u_input.c, vec3<bool>(true, true, true), true, Struct_3(0u, false, Struct_1(u_input.b.x, vec3<f32>(1181f, 184f, -1000f)))), Struct_2(Struct_1(u_input.c.x, vec3<f32>(-801f, 1725f, -419f)), u_input.b.x)))), 728f)));
    let var_1 = func_2(Struct_2(Struct_1(4294967295u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1535f, var_0.x, var_0.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(368f, -1143f, -1528f) + vec3<f32>(var_0.x, -201f, var_0.x)))), abs(u_input.b.x)), Struct_2(Struct_1(max(u_input.c.x, _wgslsmith_add_u32(u_input.b.x, u_input.c.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -1000f) + vec3<f32>(297f, var_0.x, var_0.x))))), 54758u), _wgslsmith_f_op_vec3_f32(-func_2(Struct_2(func_2(Struct_2(Struct_1(u_input.b.x, vec3<f32>(var_0.x, 430f, 676f)), u_input.b.x), Struct_2(Struct_1(u_input.b.x, vec3<f32>(var_0.x, -952f, var_0.x)), u_input.b.x), vec3<f32>(var_0.x, -529f, var_0.x), vec3<f32>(var_0.x, 544f, 327f)), u_input.c.x), Struct_2(Struct_1(u_input.c.x, vec3<f32>(701f, var_0.x, var_0.x)), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x)), func_2(Struct_2(Struct_1(u_input.c.x, vec3<f32>(-1109f, var_0.x, 1596f)), u_input.b.x), Struct_2(Struct_1(104354u, vec3<f32>(var_0.x, -1295f, -1090f)), u_input.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(1770f, var_0.x, var_0.x) * vec3<f32>(460f, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(344f, -430f, -404f) - vec3<f32>(var_0.x, 792f, -963f))).b, vec3<f32>(_wgslsmith_f_op_f32(min(var_0.x, 169f)), _wgslsmith_f_op_f32(-var_0.x), -1000f)).b), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1027f, 2549f, -386f) * vec3<f32>(var_0.x, 1140f, var_0.x)))))), vec3<f32>(1482f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) * _wgslsmith_f_op_f32(-var_0.x))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1.b, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(var_0.x - -402f), _wgslsmith_div_f32(var_0.x, 949f), var_1.b.x), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_1.b * vec3<f32>(-1064f, 758f, var_1.b.x)))))), all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true))))));
    let var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a, ~u_input.c.x, var_1.a, _wgslsmith_dot_vec3_u32(~u_input.b.xxy, abs(u_input.b.zxw))), _wgslsmith_add_vec4_u32(~(~(~vec4<u32>(37937u, 1u, var_1.a, 4294967295u))), ~firstLeadingBit(max(u_input.b, vec4<u32>(0u, u_input.b.x, u_input.c.x, 1u)))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(-850f, var_1.b.x)), true)), _wgslsmith_f_op_f32(func_5(~u_input.a, Struct_1(4294967295u, vec3<f32>(-1358f, -545f, var_1.b.x)), Struct_2(Struct_1(4294967295u, var_1.b), 24152u)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x))))), var_0.x, -475f);
    let x = u_input.a;
    s_output = StorageBuffer(-18966i, 1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-369f - -498f), var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, 1000f, 935f, var_0.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, var_0.x, 1765f, var_1.b.x) * vec4<f32>(var_0.x, var_0.x, var_1.b.x, 1000f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-397f, var_0.x, 1000f, 859f), vec4<f32>(791f, var_1.b.x, 1214f, var_0.x))), false)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)) - vec4<f32>(var_1.b.x, var_0.x, 873f, var_0.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1254f, 1329f, -1173f, 671f)))))));
}

