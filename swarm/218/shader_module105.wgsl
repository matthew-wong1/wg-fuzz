struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, true, true), false, 672f);

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: f32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = Struct_1(!(!(!select(vec3<bool>(global0.a.x, true, global1.b), vec3<bool>(global2.b, true, false), global0.a))), !(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 22341u, 0u), abs(u_input.a.zzy)) > max(_wgslsmith_add_u32(u_input.d.x, 0u), ~u_input.d.x)), 416f);
    var var_1 = Struct_1(vec3<bool>(global1.a.x, u_input.c >= _wgslsmith_dot_vec2_i32(~vec2<i32>(-80716i, u_input.b.x), countOneBits(u_input.b.xx)), any(!select(vec4<bool>(global2.b, arg_0.b, false, false), vec4<bool>(global2.a.x, global0.b, false, false), vec4<bool>(var_0.a.x, var_0.b, global2.b, global0.b)))), true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(455f + var_0.c) + _wgslsmith_div_f32(-396f, var_0.c))))));
    global1 = var_0;
    var var_2 = global2.b;
    global1 = arg_0;
    return global0.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: f32) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1 * arg_0.c))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

fn func_2() -> Struct_1 {
    global2 = Struct_1(global0.a, true, _wgslsmith_f_op_f32(func_4(Struct_1(!(!vec3<bool>(true, true, global2.b)), func_3(Struct_1(global2.a, true, global1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c - -509f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global0.c)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1448f, -2029f) + global0.c)), 92449u, _wgslsmith_f_op_f32(-global1.c))));
    var var_0 = reverseBits((u_input.d >> (abs(vec4<u32>(u_input.d.x, 1u, 0u, u_input.a.x)) % vec4<u32>(32u))) ^ u_input.a) & u_input.d;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1225f, global1.c, -269f)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.c, _wgslsmith_f_op_f32(-1438f - global0.c), _wgslsmith_div_f32(-852f, -149f)))), global0.a)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(769f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.c))), _wgslsmith_f_op_f32(-global0.c)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(100f, global1.c, global1.c) - vec3<f32>(global2.c, global2.c, global1.c)) * vec3<f32>(-1320f, 667f, -770f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, -107f, global0.c) * vec3<f32>(global0.c, -1673f, global1.c))))));
    var var_2 = ~((63970u << (u_input.d.x % 32u)) >> (var_0.x % 32u));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-122f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(-var_1.x)) * 619f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1146f * -565f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) * 639f))));
    return Struct_1(global0.a, global2.b, _wgslsmith_f_op_f32(exp2(global2.c)));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: bool) -> Struct_1 {
    global0 = Struct_1(global1.a, false, 589f);
    let var_0 = func_2();
    global3 = _wgslsmith_f_op_f32(max(317f, 374f));
    let var_1 = true || !((~5524i << (u_input.a.x % 32u)) <= -_wgslsmith_sub_i32(arg_0.x, -1i));
    let var_2 = func_2();
    return Struct_1(global1.a, false, 1183f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~(-vec3<i32>(23048i, ~u_input.c, u_input.b.x)), global1.c, !any(!global2.a.yz) | false);
    var var_1 = Struct_1(select(vec3<bool>(func_1(u_input.b, -1652f, any(vec4<bool>(true, true, global2.a.x, false))).a.x, true, (-20240i | u_input.c) == u_input.b.x), vec3<bool>(global0.b, !(global2.b & true), global2.a.x), false), global2.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(func_4(Struct_1(!vec3<bool>(global2.b, global0.b, global0.a.x), global2.b, _wgslsmith_f_op_f32(global0.c + global1.c)), _wgslsmith_f_op_f32(-global0.c), 21384u, global1.c)))));
    let var_2 = func_1(abs(u_input.b << (u_input.d.xyy % vec3<u32>(32u))), _wgslsmith_f_op_f32(var_1.c - -1063f), !func_1(abs(u_input.b), _wgslsmith_f_op_f32(var_1.c - 174f), any(vec2<bool>(false, var_1.b))).a.x).b || all(vec3<bool>(u_input.d.x >= _wgslsmith_clamp_u32(u_input.d.x, u_input.a.x, u_input.a.x), !(var_0.b || false), var_1.b));
    global1 = Struct_1(select(vec3<bool>(var_1.c <= 1f, (-2147483647i ^ u_input.c) > 0i, true), var_1.a, !vec3<bool>(any(vec4<bool>(true, global1.a.x, global1.a.x, false)), global1.a.x && global2.b, global0.a.x & global2.a.x)), true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_1.c, var_1.c)), _wgslsmith_f_op_f32(func_2().c - var_1.c))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(783f, 1000f, -1294f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, -262f, 282f)))));
    let var_4 = func_2();
    let var_5 = global2.c;
    let var_6 = vec2<i32>(_wgslsmith_add_i32(((u_input.c << (u_input.d.x % 32u)) & ~u_input.b.x) | -1i, u_input.b.x), ~_wgslsmith_mult_i32(firstLeadingBit(~u_input.b.x), u_input.c));
    global0 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c * global2.c) - 1827f))), _wgslsmith_f_op_f32(f32(-1f) * -225f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(190f, -950f)), 385f), 43498u, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.a.x, 0u, 0u), select(vec4<u32>(4294967295u, 52349u, 6632u, 0u), u_input.d, var_2)), reverseBits(firstTrailingBit(0u))) | (_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(24572u, 1u), vec2<u32>(u_input.d.x, u_input.a.x)), ~u_input.a.zx) & countOneBits(vec2<u32>(4294967295u, u_input.d.x))));
}

