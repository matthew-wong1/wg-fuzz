struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

var<private> global1: array<vec4<i32>, 21>;

var<private> global2: vec3<bool>;

var<private> global3: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(29042i, Struct_1(-506f, vec4<u32>(20474u, 62022u, 4294967295u, 64227u)), Struct_1(-1000f, vec4<u32>(0u, 21441u, 4294967295u, 1u))), Struct_2(-1i, Struct_1(609f, vec4<u32>(38946u, 1u, 4294967295u, 4294967295u)), Struct_1(1093f, vec4<u32>(4294967295u, 55128u, 1u, 19988u))), Struct_2(-73706i, Struct_1(-2230f, vec4<u32>(30797u, 4294967295u, 1u, 11479u)), Struct_1(668f, vec4<u32>(26448u, 0u, 1u, 0u))));

var<private> global4: array<vec4<i32>, 4>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec2<bool>) -> f32 {
    let var_0 = u_input.c.zyw;
    let var_1 = select(vec3<bool>(false, arg_2.x, arg_2.x), vec3<bool>(!arg_2.x, (i32(-1i) * -var_0.x) <= 1i, arg_2.x), all(vec2<bool>(global2.x, false)));
    var var_2 = select(var_0, vec3<i32>(-_wgslsmith_sub_i32(~(-2147483647i), _wgslsmith_mod_i32(2147483647i, 45042i)), -u_input.b, _wgslsmith_mod_i32(-abs(var_0.x), -24898i)), vec3<bool>(true, global2.x, arg_2.x));
    var var_3 = arg_2.x != global2.x;
    global0 = array<Struct_2, 1>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1464f, _wgslsmith_f_op_f32(arg_1.c.a + arg_1.c.a))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(250f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-730f, arg_1.b.a)), _wgslsmith_f_op_f32(-arg_1.b.a))))));
}

fn func_2() -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-614f, -133f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1614f, -1559f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(step(-2391f, -785f)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, u_input.a.x), 1u)], global2.zx)))));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1830f), var_0.x)))), min(~countOneBits(abs(vec4<u32>(1u, u_input.a.x, 128059u, u_input.a.x))), _wgslsmith_mod_vec4_u32((vec4<u32>(4294967295u, 0u, 67398u, u_input.a.x) | vec4<u32>(59155u, 0u, 1u, 0u)) ^ ~vec4<u32>(67939u, u_input.a.x, 0u, 14397u), _wgslsmith_sub_vec4_u32(~vec4<u32>(11565u, 11362u, u_input.a.x, 77263u), vec4<u32>(u_input.a.x, 32629u, u_input.a.x, u_input.a.x)))));
    return global0[_wgslsmith_index_u32(0u, 1u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    let var_0 = vec4<bool>(global2.x, global2.x, select(!global2.x, any(vec4<bool>(all(vec4<bool>(false, global2.x, global2.x, global2.x)), !global2.x, global2.x, !global2.x)), global2.x), all(select(vec3<bool>(any(vec4<bool>(true, true, global2.x, global2.x)), select(global2.x, false, global2.x), global2.x), vec3<bool>(global2.x | false, all(vec4<bool>(global2.x, true, false, true)), global2.x), true)));
    global4 = array<vec4<i32>, 4>();
    global2 = vec3<bool>(var_0.x, all(global2.yx), global2.x);
    var var_1 = -arg_0.a;
    var var_2 = u_input.c.x;
    return Struct_1(_wgslsmith_f_op_f32(-1493f - 685f), vec4<u32>(abs(countOneBits(select(38029u, arg_1.c.b.x, var_0.x))), ~(~(arg_0.c.b.x << (1u % 32u))), abs(~(u_input.a.x | 0u)), arg_1.c.b.x ^ _wgslsmith_clamp_u32(arg_1.c.b.x, _wgslsmith_clamp_u32(1u, 4294967295u, 26210u), ~1u)));
}

fn func_1() -> f32 {
    global1 = array<vec4<i32>, 21>();
    var var_0 = Struct_2(_wgslsmith_add_i32(~u_input.c.x, select(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 33682i, -4070i), u_input.c.wwz), abs(_wgslsmith_add_i32(-1i, u_input.b)), 1i <= max(u_input.c.x, u_input.b))), func_4(global3[_wgslsmith_index_u32(u_input.a.x, 3u)], func_2(), _wgslsmith_f_op_f32(func_2().c.a + _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(select(462f, -904f, false)), func_2(), !vec2<bool>(global2.x, false))))), func_2().b);
    var var_1 = countOneBits(u_input.c);
    global3 = array<Struct_2, 3>();
    global4 = array<vec4<i32>, 4>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2().b.a * var_0.c.a))));
}

fn func_5(arg_0: vec3<f32>, arg_1: f32) -> Struct_1 {
    let var_0 = func_4(Struct_2(-71154i, func_2().b, func_2().b), func_2(), _wgslsmith_f_op_f32(-arg_0.x));
    let var_1 = !vec4<bool>(abs(u_input.a.x) > u_input.a.x, _wgslsmith_add_i32(1i, 1i) <= ~u_input.b, false, false);
    global3 = array<Struct_2, 3>();
    var var_2 = Struct_2(u_input.b, func_4(global0[_wgslsmith_index_u32(u_input.a.x << (52073u % 32u), 1u)], Struct_2(-(~0i), Struct_1(_wgslsmith_f_op_f32(floor(arg_0.x)), vec4<u32>(u_input.a.x, 51742u, 4294967295u, 49820u) | vec4<u32>(var_0.b.x, u_input.a.x, 36964u, u_input.a.x)), var_0), -723f), Struct_1(716f, ~(var_0.b << (var_0.b % vec4<u32>(32u))) & vec4<u32>(var_0.b.x << (var_0.b.x % 32u), 64729u, ~4294967295u, _wgslsmith_mod_u32(16692u, var_0.b.x))));
    let var_3 = var_1.x & false;
    return func_2().c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-276f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(761f, 421f) * _wgslsmith_f_op_f32(func_1())), -748f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1083f + -683f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1565f, 1071f)) - _wgslsmith_f_op_f32(558f - 1029f))), _wgslsmith_f_op_f32(f32(-1f) * -1158f)));
    global4 = array<vec4<i32>, 4>();
    let var_1 = Struct_3(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-202f, -1152f, 380f), vec3<f32>(-718f, var_0.a, var_0.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(2511f, -1169f, 266f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-444f, -1903f, -1000f) + vec3<f32>(1833f, 341f, -1672f)))), _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -783f)), _wgslsmith_f_op_f32(var_0.a - 997f), global2.x))), Struct_1(_wgslsmith_f_op_f32(-func_4(func_2(), func_2(), _wgslsmith_f_op_f32(var_0.a * var_0.a)).a), var_0.b));
    var var_2 = var_1.c.b.yzx;
    global2 = vec3<bool>(false, true, global2.x);
    var var_3 = Struct_3(var_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(func_2().c.a, _wgslsmith_f_op_f32(round(-342f))) + _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(-1000f - var_0.a))))), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(-firstLeadingBit(2147483647i))));
}

