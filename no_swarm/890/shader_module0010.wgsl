struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<i32>,
    c: Struct_4,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-771f, 395f, 711f, -847f);

var<private> global1: f32 = -972f;

var<private> global2: f32 = 232f;

var<private> global3: vec2<bool>;

var<private> global4: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<i32>(-1i, 1i, 45515i), vec3<bool>(true, false, false), vec2<f32>(150f, -155f), 4128i), Struct_1(vec3<i32>(8479i, 2147483647i, 2147483647i), vec3<bool>(true, false, true), vec2<f32>(223f, -660f), 2147483647i), Struct_1(vec3<i32>(-1i, 7651i, 58502i), vec3<bool>(true, true, false), vec2<f32>(-790f, 928f), 1i), Struct_1(vec3<i32>(-1i, 1i, 2147483647i), vec3<bool>(false, true, true), vec2<f32>(749f, -644f), i32(-2147483648)), Struct_1(vec3<i32>(9554i, 0i, -1i), vec3<bool>(true, false, true), vec2<f32>(1365f, -1217f), 34929i), Struct_1(vec3<i32>(-25922i, 2147483647i, 2147483647i), vec3<bool>(false, true, true), vec2<f32>(-1000f, 210f), -5817i), Struct_1(vec3<i32>(0i, -1i, 1i), vec3<bool>(true, false, true), vec2<f32>(-131f, 298f), -13734i), Struct_1(vec3<i32>(-22664i, 1i, 66863i), vec3<bool>(true, false, true), vec2<f32>(2935f, 1798f), -40516i));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4) -> f32 {
    global3 = select(!vec2<bool>(true, any(vec2<bool>(true, global3.x)) | false), vec2<bool>(select(true, true, global3.x), all(select(select(vec3<bool>(global3.x, true, false), vec3<bool>(true, global3.x, global3.x), vec3<bool>(false, global3.x, global3.x)), !vec3<bool>(global3.x, global3.x, true), arg_0.a > 2147483647i))), select(select(!(!vec2<bool>(false, global3.x)), vec2<bool>(!global3.x, true), global3.x), select(vec2<bool>(false, global3.x), select(select(vec2<bool>(false, false), vec2<bool>(true, global3.x), global3.x), !vec2<bool>(false, global3.x), all(vec3<bool>(false, false, false))), true), !vec2<bool>(u_input.d == u_input.c, !global3.x)));
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-517f)) + 916f)));
    var var_0 = global3.x;
    var var_1 = true;
    var var_2 = Struct_2(!any(vec4<bool>(any(vec4<bool>(global3.x, global3.x, global3.x, false)), global3.x, any(vec3<bool>(global3.x, false, global3.x)), all(vec4<bool>(global3.x, global3.x, global3.x, global3.x)))), vec2<bool>(global3.x, _wgslsmith_f_op_f32(max(global0.x, 480f)) <= global0.x));
    return _wgslsmith_f_op_f32(max(global0.x, 1255f));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: vec3<bool>) -> f32 {
    global3 = !(!arg_2.xx);
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(select(-682f, global0.x, false))), _wgslsmith_div_f32(-754f, _wgslsmith_f_op_f32(f32(-1f) * -2120f)), _wgslsmith_f_op_f32(func_3(Struct_4(arg_1))), _wgslsmith_f_op_f32(round(global0.x))));
    let var_0 = Struct_5(Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, arg_1, arg_1, -27948i) << ((arg_0.a >> (vec4<u32>(u_input.c, 85696u, 44359u, 15145u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(arg_1, arg_1, arg_1, arg_1) ^ vec4<i32>(arg_1, 2147483647i, -24312i, 65634i))), max(firstLeadingBit(vec2<i32>(arg_1, arg_1) & vec2<i32>(2147483647i, 2147483647i)), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-8085i, arg_1), vec2<i32>(1i, arg_1)), vec2<i32>(6224i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, -13788i, 29702i, -2147483647i), vec4<i32>(arg_1, -17755i, arg_1, arg_1))))), Struct_4(17075i), Struct_1(vec3<i32>(arg_1, firstLeadingBit(arg_1), -67720i) ^ vec3<i32>(arg_1 | 12588i, 1431i, 0i), !select(arg_2, vec3<bool>(arg_2.x, arg_2.x, arg_2.x), !arg_2), global0.xz, arg_1));
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_1 = 0i;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-923f, global0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1211f - -1082f))))));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: f32, arg_3: f32) -> Struct_4 {
    var var_0 = -2147483647i;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_3, -1100f)))))), 260f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1032f)) - arg_2), arg_3);
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(u_input.b), 0i, vec3<bool>(global3.x, true, global3.x))) - _wgslsmith_f_op_f32(abs(arg_3))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(arg_2))))), -1347f))));
    global4 = array<Struct_1, 8>();
    var var_1 = _wgslsmith_mod_i32(arg_1, -2147483647i);
    return Struct_4(_wgslsmith_mod_i32(arg_1, arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~(~select(u_input.c, ~10991u, !global3.x)), _wgslsmith_mod_i32(-1i | (min(1i, 4813i) << (_wgslsmith_mult_u32(u_input.d, u_input.c) % 32u)), ~_wgslsmith_add_i32(i32(-1i) * -2147483647i, min(-2147483647i, 63572i))), 1127f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global0.x, global0.x)), _wgslsmith_f_op_f32(ceil(945f))))))));
    let var_1 = 4294967295u;
    global3 = vec2<bool>(true, false);
    let var_2 = reverseBits(max(u_input.d, ~(~(~4294967295u))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global0.x, 204f), global0.x, _wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(-global0.x)));
    let var_4 = _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3.x)) * _wgslsmith_f_op_f32(764f + var_3.x))))) >= -322f;
    let var_5 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-3005f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(421f))), _wgslsmith_f_op_f32(1473f - _wgslsmith_f_op_f32(-274f - -1687f)))), 495f, -756f) - vec4<f32>(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-749f * global0.x)) + -1221f), global0.x, _wgslsmith_f_op_f32(func_3(func_1(u_input.a, 1i, _wgslsmith_f_op_f32(max(-1536f, -1000f)), _wgslsmith_f_op_f32(global0.x * global0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(firstTrailingBit(min(vec4<i32>(-1i, var_0.a, 8514i, 1i), vec4<i32>(var_0.a, var_0.a, var_0.a, var_0.a)) ^ (vec4<i32>(1i, var_0.a, var_0.a, var_0.a) ^ vec4<i32>(-1i, var_0.a, 0i, -1i))), ~(-reverseBits(vec4<i32>(var_0.a, 15049i, 2147483647i, -34213i))), !(!(!vec4<bool>(true, global3.x, var_4, false)))), var_0.a, 4294967295u, select(_wgslsmith_clamp_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a, -50290i, var_0.a, var_0.a), vec4<i32>(var_0.a, var_0.a, -1i, var_0.a), vec4<i32>(var_0.a, var_0.a, -34851i, var_0.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<i32>(-22668i, 20310i, 0i, var_0.a)), all(vec3<bool>(var_4, var_4, var_4))), ~countOneBits(vec4<i32>(var_0.a, 34251i, var_0.a, var_0.a)), -vec4<i32>(var_0.a, var_0.a, 0i, 11842i)), abs(~(-vec4<i32>(var_0.a, var_0.a, 2147483647i, 42709i))), _wgslsmith_mod_i32(var_0.a, -var_0.a) != (var_0.a ^ -2147483647i)));
}

