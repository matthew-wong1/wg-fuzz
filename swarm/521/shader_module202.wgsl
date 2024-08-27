struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(10615u, 0u));

var<private> global1: array<u32, 30>;

var<private> global2: Struct_1 = Struct_1(vec2<u32>(64890u, 1u));

var<private> global3: vec4<i32>;

var<private> global4: Struct_2 = Struct_2(vec2<bool>(false, false));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: Struct_4, arg_1: i32, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1630f + -706f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1356f))))) - _wgslsmith_f_op_f32(-1f));
    var var_1 = abs(0u);
    var var_2 = global4.a.x;
    let var_3 = Struct_3(arg_2);
    var var_4 = false;
    return vec4<bool>(any(vec2<bool>(true, true)), true, var_0 != -187f, true);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: Struct_5) -> bool {
    var var_0 = Struct_4(Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.xxx, vec3<u32>(48723u, global1[_wgslsmith_index_u32(38966u, 30u)], arg_0.x)) | ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.a.x, 30u)], 30u)], _wgslsmith_dot_vec2_u32(~global2.a, min(vec2<u32>(6415u, global0.a.x), vec2<u32>(global2.a.x, u_input.d))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_2.a.zyy - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_1.a.zyy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(272f, 257f, arg_1.a.x))))))));
    let var_2 = Struct_3(Struct_1(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_0.x, global0.a.x), firstTrailingBit(global0.a), ~vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], u_input.d)), max(_wgslsmith_mult_vec2_u32(vec2<u32>(42035u, 0u), global2.a), ~vec2<u32>(26567u, 4294967295u)))));
    global0 = Struct_1(vec2<u32>(global2.a.x, ~36845u));
    let var_3 = 0u;
    return true;
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    let var_0 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -830f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-393f, _wgslsmith_f_op_f32(f32(-1f) * -982f))), _wgslsmith_f_op_f32(sign(-805f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-109f, 246f, false)))))), select(!select(vec4<bool>(global4.a.x, false, false, global4.a.x), vec4<bool>(false, global4.a.x, false, global4.a.x), true), select(vec4<bool>(true, true, true, true), func_2(Struct_4(arg_0), global3.x, arg_0), false), vec4<bool>(false, global4.a.x, global4.a.x, false)));
    global2 = Struct_1(vec2<u32>(~(~select(global0.a.x, global1[_wgslsmith_index_u32(global0.a.x, 30u)], false)), ~min(~u_input.a.x, ~4294967295u)));
    global4 = Struct_2(vec2<bool>(all(select(vec3<bool>(global4.a.x, global4.a.x, var_0.b.x), var_0.b.wxy, func_3(u_input.a.zwy, var_0, var_0))), !var_0.b.x));
    let var_1 = arg_0;
    global3 = firstLeadingBit(_wgslsmith_clamp_vec4_i32(abs(select(vec4<i32>(u_input.b.x, 19582i, 18872i, -1i) & vec4<i32>(0i, u_input.c.x, -7459i, u_input.b.x), firstLeadingBit(vec4<i32>(u_input.c.x, 1i, global3.x, u_input.b.x)), var_0.b)), -(-vec4<i32>(1i, 0i, global3.x, u_input.c.x) << (~u_input.a % vec4<u32>(32u))), vec4<i32>(global3.x << (~25242u % 32u), select(-2147483647i, u_input.c.x, false) << (max(1u, global1[_wgslsmith_index_u32(global2.a.x, 30u)]) % 32u), _wgslsmith_sub_i32(global3.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 0i, global3.x, u_input.c.x), vec4<i32>(-1i, u_input.c.x, 5620i, 37729i))), u_input.b.x)));
    return Struct_3(Struct_1(~u_input.a.xy));
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> f32 {
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(580f, 707f)) * _wgslsmith_f_op_f32(789f * 258f)))))));
}

fn func_5(arg_0: f32, arg_1: f32) -> vec4<bool> {
    global3 = max(vec4<i32>(firstTrailingBit(_wgslsmith_mult_i32(global3.x, 2147483647i >> (global2.a.x % 32u))), -(~(-54669i)), -2147483647i, _wgslsmith_add_i32(abs(2147483647i >> (global0.a.x % 32u)), -(~(-1i)))), -_wgslsmith_mod_vec4_i32(~firstTrailingBit(vec4<i32>(0i, u_input.c.x, -1i, u_input.c.x)), select(vec4<i32>(global3.x, u_input.c.x, -10667i, u_input.c.x), vec4<i32>(-2147483647i, u_input.b.x, 1i, -6348i), global4.a.x) | _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.c.x, u_input.b.x), vec4<i32>(0i, 24968i, u_input.c.x, 73836i))));
    var var_0 = _wgslsmith_mod_vec3_i32(-u_input.b, max(u_input.b, _wgslsmith_mod_vec3_i32(-(~global3.ywx), vec3<i32>(-1i, global3.x, -1i) | ~vec3<i32>(0i, -23450i, 36583i))));
    let var_1 = Struct_4(func_1(Struct_1(~(~global2.a))).a);
    global2 = var_1.a;
    var var_2 = arg_0;
    return !func_2(Struct_4(var_1.a), abs(reverseBits(countOneBits(global3.x))), Struct_1(~_wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 30u)], 4294967295u), vec2<u32>(4294967295u, u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(735f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1582f) + -603f), 442f, 333f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(126f, 233f, 515f, -797f) - vec4<f32>(1853f, -670f, 489f, -446f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(913f, -1404f, -151f, -1051f))))), func_5(1f, _wgslsmith_f_op_f32(func_4(func_1(Struct_1(global0.a)), ~(i32(-1i) * -1i)))));
    let var_1 = u_input.a.zy;
    var var_2 = Struct_4(Struct_1(min(vec2<u32>(global0.a.x, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), vec2<u32>(~var_1.x, 2339u))));
    let var_3 = Struct_4(func_1(var_2.a).a);
    var var_4 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(-1034f - var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_3(var_3.a), i32(-1i) * -2838i)) * var_0.a.x), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(843f - var_0.a.x)))), !(!var_0.b));
    var var_5 = var_0.b;
    let var_6 = -13493i;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec3_u32(~max(u_input.a.yzw, vec3<u32>(global2.a.x, global2.a.x, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, 0u, 14241u), _wgslsmith_mod_vec3_u32(u_input.a.zzw, u_input.a.xzy))), -11483i);
}

