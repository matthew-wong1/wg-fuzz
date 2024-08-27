struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: vec3<u32> = vec3<u32>(0u, 0u, 88325u);

var<private> global2: f32 = -1000f;

var<private> global3: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec3<f32>(-1359f, -146f, -540f)), Struct_1(vec3<f32>(293f, -1153f, 1152f)), Struct_1(vec3<f32>(-209f, -291f, -582f)), Struct_1(vec3<f32>(1690f, -2073f, -875f)), Struct_1(vec3<f32>(-634f, -1314f, 289f)), Struct_1(vec3<f32>(-1754f, 1710f, -798f)), Struct_1(vec3<f32>(191f, -256f, 1000f)), Struct_1(vec3<f32>(435f, -1858f, -792f)), Struct_1(vec3<f32>(-2739f, -674f, 2077f)), Struct_1(vec3<f32>(-465f, 109f, 270f)), Struct_1(vec3<f32>(1197f, -1691f, -1000f)), Struct_1(vec3<f32>(658f, -510f, -875f)), Struct_1(vec3<f32>(1322f, 496f, 1139f)), Struct_1(vec3<f32>(-1003f, 774f, 717f)), Struct_1(vec3<f32>(-437f, -995f, -360f)), Struct_1(vec3<f32>(640f, -489f, -164f)), Struct_1(vec3<f32>(-1021f, -754f, 1051f)), Struct_1(vec3<f32>(2184f, 413f, -1536f)), Struct_1(vec3<f32>(-1327f, -332f, -145f)), Struct_1(vec3<f32>(602f, 790f, -460f)), Struct_1(vec3<f32>(-350f, 965f, -777f)));

var<private> global4: array<Struct_1, 14>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = u_input.a.x;
    global3 = array<Struct_1, 21>();
    global0 = array<Struct_1, 29>();
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x))), arg_0.a.x));
    global0 = array<Struct_1, 29>();
    return var_1.a.x;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32) -> vec2<bool> {
    global1 = vec3<u32>(19559u, 30453u, 35092u);
    global0 = array<Struct_1, 29>();
    let var_0 = false || (countOneBits(_wgslsmith_sub_i32(1i, u_input.a.x & u_input.c.x)) <= _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.c.x, 24723i), reverseBits(~(-9008i))));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-364f * arg_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1007f))), arg_2));
    global1 = _wgslsmith_div_vec3_u32(vec3<u32>(reverseBits(~u_input.b), arg_0.x, firstTrailingBit(global1.x)), ~select(max(arg_0.zzx, _wgslsmith_mult_vec3_u32(vec3<u32>(0u, global1.x, arg_0.x), arg_0.yxz)), ~arg_0.wzy, select(vec3<bool>(true, true, false), vec3<bool>(var_0, var_0, var_0), !vec3<bool>(var_0, true, var_0))));
    return !vec2<bool>(arg_0.x >= arg_0.x, !(!(1u != arg_0.x)));
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: bool) -> u32 {
    var var_0 = vec4<bool>(false, !arg_1.x, !all(vec3<bool>(any(arg_1), true == arg_1.x, !arg_1.x)), !any(!vec2<bool>(arg_2, arg_2)));
    var var_1 = var_0.xww;
    let var_2 = var_0.ywx;
    var var_3 = global1.yx;
    let var_4 = ~max(-(vec4<i32>(-1i) * -vec4<i32>(-1i, u_input.a.x, u_input.c.x, u_input.a.x)), -_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 10111i, -2147483647i, -10686i) | vec4<i32>(43770i, 3304i, u_input.a.x, -17925i), reverseBits(vec4<i32>(52285i, u_input.c.x, u_input.a.x, -1i))));
    return abs(1u);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<i32>) -> f32 {
    global1 = ~vec3<u32>(_wgslsmith_add_u32(global1.x, 1u), global1.x, global1.x);
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(vec3<f32>(-1466f, 1448f, -1276f))))), select(select(vec2<bool>(true, true), func_3(vec4<u32>(18291u, 20200u, u_input.b, global1.x), global3[_wgslsmith_index_u32(global1.x, 21u)], -335f), vec2<bool>(true, false)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), false)), true), true), u_input.b), 21u)];
    var var_1 = _wgslsmith_div_f32(664f, 357f);
    var var_2 = global4[_wgslsmith_index_u32(global1.x, 14u)];
    var var_3 = vec3<i32>(_wgslsmith_dot_vec3_i32(arg_0.wyz, arg_0.wzx & _wgslsmith_div_vec3_i32(arg_0.yww, _wgslsmith_add_vec3_i32(arg_0.xwz, arg_0.wwz))), u_input.c.x << (_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(global1.xz, global1.yx), countOneBits(abs(vec2<u32>(52526u, 44890u)))) % 32u), arg_0.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1311f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!vec4<bool>(true, all(vec4<bool>(false, true, false, false)), all(vec2<bool>(false, true)), true)));
    var var_1 = ~u_input.a.x >= -2147483647i;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-325f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1578f * -1850f) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1904f)), -595f)) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(683f * _wgslsmith_f_op_f32(sign(2384f)))), 1626f, -178f, _wgslsmith_f_op_f32(-957f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1391f)) + -870f))));
    var var_3 = _wgslsmith_mult_i32(_wgslsmith_mult_i32((-31251i ^ -u_input.a.x) >> (u_input.b % 32u), _wgslsmith_sub_i32(-38866i, u_input.c.x)), 0i);
    let var_4 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_f32(abs(-2654f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_2.wzz, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.x, 1160f, var_2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(479f, 299f, var_2.x))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_2.x)), 937f, var_2.x) * vec3<f32>(_wgslsmith_f_op_f32(func_1(vec4<i32>(u_input.a.x, -47788i, -4824i, u_input.a.x), u_input.a)), var_2.x, _wgslsmith_div_f32(-531f, var_2.x)))));
}

