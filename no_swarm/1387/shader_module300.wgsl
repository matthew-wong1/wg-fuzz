struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: u32 = 8663u;

var<private> global2: Struct_1 = Struct_1(vec2<f32>(611f, 226f), vec4<f32>(-2280f, 446f, 1997f, 2075f));

var<private> global3: vec3<i32> = vec3<i32>(i32(-2147483648), 2147483647i, 19120i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> vec2<u32> {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 17u)];
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x + global2.a.x), -1070f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_0.b.x))))), _wgslsmith_f_op_f32(f32(-1f) * -604f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x + global2.a.x) - _wgslsmith_f_op_f32(round(global2.a.x))))), 1000f));
    let var_2 = global0[_wgslsmith_index_u32(1u, 17u)];
    global0 = array<Struct_1, 17>();
    let var_3 = var_1;
    return min(vec2<u32>(1u & (select(u_input.c.x, 27952u, false) & 4294967295u), u_input.a), u_input.c.yx);
}

fn func_4(arg_0: vec2<u32>, arg_1: i32) -> vec3<i32> {
    var var_0 = ~(~(~vec3<u32>(1u, 4294967295u & arg_0.x, select(u_input.c.x, arg_0.x, true))));
    return vec3<i32>(2147483647i, -2147483647i, u_input.b.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: f32, arg_3: vec2<f32>) -> u32 {
    global3 = (u_input.b.www | u_input.b.wxw) ^ (func_4(_wgslsmith_mult_vec2_u32(firstLeadingBit(u_input.c.yx), func_3()), ~1i) ^ u_input.b.wxx);
    global2 = global0[_wgslsmith_index_u32(~u_input.a << (~(countOneBits(min(0u, 1u)) >> (~u_input.c.x % 32u)) % 32u), 17u)];
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global2.b.yww))));
    var var_1 = -global3.x;
    let var_2 = global0[_wgslsmith_index_u32(reverseBits(u_input.a), 17u)];
    return _wgslsmith_mod_u32(4294967295u, countOneBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(51739u, 62562u, u_input.a, 60779u) & vec4<u32>(u_input.c.x, 0u, 24880u, u_input.c.x), vec4<u32>(0u, u_input.a, 0u, 1u)), u_input.a)));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global0 = array<Struct_1, 17>();
    var var_0 = Struct_1(arg_0.zy, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(floor(269f)), _wgslsmith_f_op_f32(-1337f - global2.a.x), _wgslsmith_f_op_f32(-766f * -763f), 510f), arg_0)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_1.b.x)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -194f), _wgslsmith_f_op_f32(select(-835f, 657f, false))))), vec4<bool>(true, true, select(4294967295u > u_input.c.x, all(vec3<bool>(false, false, true)), any(vec2<bool>(false, false))), true))));
    let var_1 = arg_1;
    var var_2 = ~u_input.b.x;
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(40792u, u_input.a, u_input.c.x, 9483u)), ~(~select(vec4<u32>(u_input.a, 21515u, 4294967295u, 0u), vec4<u32>(u_input.a, 115209u, 104002u, arg_2), false))), 1u), 17u)];
    return var_1;
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(526f, -995f, global2.a.x, 454f) + vec4<f32>(global2.a.x, global2.b.x, -349f, global2.b.x))))), global0[_wgslsmith_index_u32(~(arg_0 | firstTrailingBit(99338u)), 17u)], func_2(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true)), _wgslsmith_f_op_f32(abs(433f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.b.x)))), vec2<f32>(global2.b.x, 886f)));
    global3 = -_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(global3.x, 2310i), 2147483647i, ~u_input.b.x), u_input.b.yzy) >> (min(~u_input.c << (~u_input.c % vec3<u32>(32u)), ~(vec3<u32>(27211u, 0u, arg_0) >> (max(vec3<u32>(arg_0, 1u, u_input.c.x), u_input.c) % vec3<u32>(32u)))) % vec3<u32>(32u));
    global2 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.a.x, var_0.a.x, global2.a.x, _wgslsmith_f_op_f32(-1090f * global2.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-149f, 321f, -1302f, 976f) - _wgslsmith_f_op_vec4_f32(-var_0.b))))), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.b) - vec4<f32>(-544f, -1851f, 1000f, -204f))), Struct_1(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b))), ~arg_0), ~u_input.a);
    var var_1 = _wgslsmith_add_u32(_wgslsmith_add_u32(abs(select(~0u, _wgslsmith_add_u32(u_input.c.x, 4294967295u), true)), ~u_input.a), 4294967295u);
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.a.x, global2.b.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(1210f, global2.a.x) + vec2<f32>(-1751f, var_0.a.x)), true)) + vec2<f32>(var_0.a.x, var_0.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-616f, -1469f, var_0.a.x, 634f)))) - func_5(vec4<f32>(var_0.b.x, global2.b.x, 264f, global2.a.x), global0[_wgslsmith_index_u32(arg_0, 17u)], 37759u).b) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-684f, 126f, 488f, global2.a.x)), vec4<f32>(733f, global2.b.x, -378f, 700f))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global2.b * global2.b))))));
    return 26060u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 327f;
    var var_1 = global0[_wgslsmith_index_u32(~31874u, 17u)];
    var var_2 = !vec2<bool>(!any(vec3<bool>(true, true, true)), 0u > ~u_input.c.x);
    let var_3 = _wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(_wgslsmith_mod_u32((54507u & u_input.c.x) | u_input.c.x, abs(_wgslsmith_add_u32(u_input.a, u_input.c.x))), func_1(min(u_input.c.x, 36539u) & 0u)), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(global3.zy, var_3, global2.a.x);
}

