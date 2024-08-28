struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(47959i, vec4<bool>(true, true, true, true), 28246u);

var<private> global1: array<i32, 18>;

var<private> global2: vec3<f32>;

var<private> global3: Struct_2 = Struct_2(Struct_1(-1i, vec4<bool>(false, true, false, true), 42417u), Struct_1(782i, vec4<bool>(false, false, true, false), 1u), 849f, vec2<u32>(4294967295u, 1u));

var<private> global4: array<vec2<u32>, 9>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, -333f, global3.c), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3.c, -2077f, 186f)))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2719f, global3.c, global3.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1493f, 1229f, global3.c), vec3<f32>(global3.c, global2.x, global2.x), false)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1090f, -1239f, global3.c) + vec3<f32>(-122f, global3.c, global2.x)))))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2414f), _wgslsmith_f_op_f32(-global2.x)), 554f, 535f));
    var var_0 = Struct_1(i32(-1i) * -1i, vec4<bool>(global3.b.b.x, false && global3.a.b.x, !(all(global0.b.zw) & global3.b.b.x), !select(global3.a.b.x || true, true, global0.b.x & false)), ~(_wgslsmith_mult_u32(_wgslsmith_div_u32(global0.c, 94011u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global3.a.c, 0u), vec3<u32>(global0.c, u_input.b, 1u))) >> (1u % 32u)));
    let var_1 = -20921i;
    global0 = global3.b;
    global2 = vec3<f32>(_wgslsmith_div_f32(global3.c, global3.c), 314f, global2.x);
    return ~(~(~global0.c));
}

fn func_2() -> i32 {
    global3 = Struct_2(global3.b, global3.a, global3.c, global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_3(), global3.d.x), 9u)]);
    let var_0 = global3.a;
    global1 = array<i32, 18>();
    global0 = global3.b;
    global2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-447f, _wgslsmith_f_op_f32(-263f + global2.x), _wgslsmith_div_f32(-772f, 1587f))), vec3<f32>(_wgslsmith_f_op_f32(129f - _wgslsmith_f_op_f32(-1740f + -1881f)), 889f, -174f))), vec3<f32>(global2.x, -1183f, 1f)));
    return _wgslsmith_dot_vec2_i32(~(-abs(vec2<i32>(u_input.a, 644i) & vec2<i32>(17799i, 20690i))), _wgslsmith_clamp_vec2_i32(-vec2<i32>(30453i, u_input.a), countOneBits(vec2<i32>(u_input.a, -2147483647i)), firstTrailingBit(vec2<i32>(u_input.a, -2147483647i)) | max(vec2<i32>(var_0.a, 4740i), vec2<i32>(3295i, u_input.a))) ^ _wgslsmith_clamp_vec2_i32(~(~vec2<i32>(-18499i, global1[_wgslsmith_index_u32(139876u, 18u)])), firstLeadingBit(vec2<i32>(52512i, u_input.a) | vec2<i32>(-27531i, global1[_wgslsmith_index_u32(var_0.c, 18u)])), -(vec2<i32>(var_0.a, -2147483647i) >> (global3.d % vec2<u32>(32u)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> Struct_2 {
    let var_0 = global0.b.yzy;
    var var_1 = func_2();
    return Struct_2(Struct_1(global3.b.a, vec4<bool>(all(vec3<bool>(false, var_0.x, false)), global3.a.b.x, arg_0.x, false), select(~20254u, global0.c, all(!global0.b.wxy))), global3.b, global2.x, ~select(firstLeadingBit(~vec2<u32>(u_input.b, 12664u)), global3.d, arg_0.x));
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, arg_0.c, _wgslsmith_div_f32(arg_0.c, 159f)) * vec3<f32>(arg_0.c, global2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.c)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -40999i;
    global2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_4(func_1(global0.b.xz, 63968u), global3.d.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -820f, global2.x))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 541f, global2.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(505f, global3.c, global2.x))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-393f, global2.x, global3.c), vec3<f32>(1163f, 789f, -486f)))))));
    var var_1 = min(abs(-(vec2<i32>(1i, 1i) & vec2<i32>(u_input.a, 14724i))), select((_wgslsmith_sub_vec2_i32(vec2<i32>(var_0, global1[_wgslsmith_index_u32(35854u, 18u)]), vec2<i32>(var_0, -41528i)) & vec2<i32>(global0.a, u_input.a)) >> (~vec2<u32>(global0.c, global0.c) % vec2<u32>(32u)), ~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.a.a, 30618i, global0.a, u_input.a), vec4<i32>(global3.b.a, global3.b.a, 1i, 10293i)), _wgslsmith_sub_i32(var_0, 2147483647i)), !any(global0.b.zxy)));
    var var_2 = Struct_2(global3.a, func_1(vec2<bool>(!any(vec4<bool>(true, global3.b.b.x, false, true)), select(global0.b.x & global3.b.b.x, all(global0.b.zy), global0.b.x)), firstLeadingBit(1u)).a, 613f, abs(vec2<u32>(_wgslsmith_div_u32(u_input.c.x, 6715u) | _wgslsmith_clamp_u32(u_input.b, u_input.b, global0.c), _wgslsmith_sub_u32(global3.b.c, _wgslsmith_mod_u32(u_input.b, global3.d.x)))));
    var var_3 = var_2.a;
    var var_4 = global3.a;
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(var_4.c, 4294967295u) ^ global3.d) ^ u_input.c.x);
}

