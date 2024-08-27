struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(-105879i, 92935u, -1057f, 27273i, false), vec2<i32>(-1i, 9427i)), Struct_2(Struct_1(-75483i, 27416u, 232f, -17679i, true), vec2<i32>(28549i, -3356i)), Struct_2(Struct_1(0i, 77310u, -399f, i32(-2147483648), true), vec2<i32>(-1i, -1494i)), Struct_2(Struct_1(-1822i, 4294967295u, -279f, -28875i, true), vec2<i32>(-1i, 2147483647i)), Struct_2(Struct_1(1i, 18147u, 211f, -19535i, true), vec2<i32>(1i, -37707i)), Struct_2(Struct_1(2147483647i, 0u, -232f, 1996i, false), vec2<i32>(0i, 1i)), Struct_2(Struct_1(-39586i, 2035u, 2879f, 2147483647i, false), vec2<i32>(2147483647i, 2147483647i)), Struct_2(Struct_1(23033i, 2029u, -741f, -11060i, false), vec2<i32>(2147483647i, 9995i)), Struct_2(Struct_1(1i, 1u, -135f, -1i, true), vec2<i32>(18513i, 11460i)), Struct_2(Struct_1(-520i, 1u, 1000f, -10854i, false), vec2<i32>(-45120i, 2147483647i)), Struct_2(Struct_1(41707i, 4294967295u, 876f, 24850i, false), vec2<i32>(12137i, 1i)), Struct_2(Struct_1(-21244i, 25169u, 112f, 56272i, true), vec2<i32>(47581i, 0i)), Struct_2(Struct_1(-1i, 1u, -1536f, 43217i, false), vec2<i32>(0i, 2147483647i)), Struct_2(Struct_1(8341i, 51244u, 970f, 24416i, false), vec2<i32>(-16081i, 6905i)), Struct_2(Struct_1(28327i, 44260u, -1504f, 1i, true), vec2<i32>(-4147i, -1i)), Struct_2(Struct_1(1990i, 25260u, -1000f, -9032i, false), vec2<i32>(456i, 1i)), Struct_2(Struct_1(-1436i, 0u, -1932f, -1i, false), vec2<i32>(2147483647i, 0i)));

var<private> global3: f32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: i32) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(~2379u, 17u)];
    let var_1 = ~_wgslsmith_mult_u32(var_0.a.b, ~var_0.a.b);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1897f, global1.c)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2123f) - global1.c))), _wgslsmith_f_op_f32(sign(-100f)));
    global1 = Struct_1(abs(global1.d), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-774f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.c, global1.c), _wgslsmith_f_op_f32(max(var_0.a.c, global1.c)))), any(vec4<bool>(true, true, true, true))))), 0i, select(false, any(select(select(vec3<bool>(false, false, false), vec3<bool>(arg_0, true, arg_0), true), vec3<bool>(true, global1.e, false), vec3<bool>(true, false, arg_0))), all(select(!vec2<bool>(true, arg_0), select(vec2<bool>(global1.e, true), vec2<bool>(var_0.a.e, var_0.a.e), false), vec2<bool>(var_0.a.e, arg_0)))));
    global0 = array<i32, 14>();
    return 4294967295u;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: bool, arg_3: u32) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(~(arg_0.x << (~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 107839u, 4294967295u, 4294967295u), vec4<u32>(arg_3, 43647u, 15508u, arg_3))) % 32u)), 17u)];
    var var_1 = global2[_wgslsmith_index_u32(~reverseBits(func_3(true, _wgslsmith_div_i32(-1i << (arg_0.x % 32u), -global0[_wgslsmith_index_u32(arg_0.x, 14u)]))), 17u)];
    var var_2 = _wgslsmith_f_op_f32(var_1.a.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.x, var_1.a.c), _wgslsmith_f_op_f32(ceil(1134f)), select(var_1.a.e, var_1.a.e, var_1.a.e))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(511f, var_1.a.c))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c))));
    return var_0.a;
}

fn func_1() -> f32 {
    var var_0 = -668f;
    var var_1 = func_2(vec3<u32>(abs(1u), global1.b, _wgslsmith_div_u32(~(~global1.b), 4294967295u)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.c, _wgslsmith_f_op_f32(max(-1447f, -1039f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-240f, global1.c)))), !(!(!global1.e)))), global1.e, ~(1u >> (global1.b % 32u)));
    var var_2 = abs(~u_input.b.ww);
    let var_3 = Struct_2(Struct_1(u_input.b.x, 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)) * -2198f), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b.x, -6453i, 2147483647i, global0[_wgslsmith_index_u32(58247u, 14u)])) >> (~vec4<u32>(global1.b, 0u, 82047u, global1.b) % vec4<u32>(32u)), u_input.b), var_1.e), ~_wgslsmith_sub_vec2_i32(~(~u_input.b.yw), _wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(global1.b, 14u)], var_2.x), vec2<i32>(-3187i, var_1.a))));
    var var_4 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, var_3.a.c)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1347f, var_1.c)), vec2<f32>(global1.c, 847f), vec2<bool>(true, true)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.a.c, -1135f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c + -1844f) + _wgslsmith_f_op_f32(step(382f, 2867f)))))));
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-global1.c);
    global3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))))));
    let var_1 = u_input.b.zy;
    var var_2 = func_2(abs(max(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.b, 0u, 1u) >> (vec3<u32>(38149u, 44395u, global1.b) % vec3<u32>(32u)), vec3<u32>(20257u, 9044u, global1.b)), abs(~vec3<u32>(1u, 4294967295u, global1.b)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c, 1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1184f)), func_2(countOneBits(vec3<u32>(34839u, global1.b, ~global1.b)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -738f), global1.c))), global1.e && !global1.e, firstTrailingBit(max(global1.b, firstLeadingBit(global1.b)))).e, ~global1.b);
    let var_3 = true;
    var var_4 = ~2793i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.c))), 2147483647i, global1.a & -2147483647i);
}

