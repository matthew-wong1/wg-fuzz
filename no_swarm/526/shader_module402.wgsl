struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<bool>(true, true, false, true)), Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, false, false, true)), Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, false, false, true)), Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, true, false, false)));

var<private> global1: array<Struct_2, 7>;

var<private> global2: array<i32, 27> = array<i32, 27>(i32(-2147483648), 3264i, -1i, -36922i, 35425i, -5914i, i32(-2147483648), -36830i, -27078i, 45636i, 0i, 53764i, 1i, 1i, 1i, 56026i, -1i, -1i, 0i, -15756i, 9327i, 1i, 2147483647i, 2147483647i, 2147483647i, i32(-2147483648), -37852i);

var<private> global3: Struct_2 = Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<bool>(false, true, false, true)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(false, true, false, false)), Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, false, true, false)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(false, true, true, false)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>) -> f32 {
    var var_0 = Struct_4(Struct_2(global0.a, Struct_1(select(select(global0.a.b.zyx, global0.b.b.zwz, vec3<bool>(global3.b.a.x, arg_0.c.b.b.x, global3.c.a.x)), global0.b.b.wwz, !vec3<bool>(arg_0.c.d.a.x, arg_0.c.a.a.x, false)), vec4<bool>(true, any(vec2<bool>(global0.c.a.x, global0.c.b.x)), !arg_0.c.c.b.x, true)), arg_0.c.a, Struct_1(global0.b.a, !global0.b.b)), Struct_2(Struct_1(global3.b.a, !select(vec4<bool>(global3.d.a.x, global3.d.b.x, arg_1.x, arg_1.x), global0.c.b, global0.c.b)), global0.d, global0.a, global3.d));
    global0 = var_0.a;
    global2 = array<i32, 27>();
    let var_1 = !vec4<bool>(!(any(vec3<bool>(true, false, var_0.a.c.a.x)) | global0.a.a.x), global0.b.a.x, true, arg_0.c.c.b.x);
    var var_2 = u_input.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -844f))), -159f)) * _wgslsmith_f_op_f32(-arg_0.b));
}

fn func_2() -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(-1360f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-3998f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_3(45521u, -1330f, Struct_2(global3.b, global3.a, global0.b, Struct_1(global0.b.a, global3.c.b))), !global0.a.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1598f))))));
    global1 = array<Struct_2, 7>();
    let var_1 = Struct_1(select(vec3<bool>(global0.d.b.x, false | (global3.d.b.x == global0.b.b.x), !(global3.a.b.x && global3.c.b.x)), !vec3<bool>(global0.b.b.x, true, true), true), !global3.a.b);
    global3 = Struct_2(var_1, Struct_1(global3.b.a, vec4<bool>(_wgslsmith_f_op_f32(step(var_0.x, -486f)) < _wgslsmith_div_f32(-706f, 1170f), var_1.a.x, global0.a.b.x, all(vec4<bool>(global3.c.a.x, global0.d.a.x, var_1.b.x, global0.d.a.x)))), Struct_1(select(vec3<bool>(global0.b.b.x, all(global3.c.a.yy), any(global0.c.b)), select(vec3<bool>(true, global0.a.b.x, true), global3.d.b.ywy, true), _wgslsmith_f_op_f32(-var_0.x) > _wgslsmith_f_op_f32(var_0.x + -786f)), !vec4<bool>(!global3.b.b.x, global3.a.b.x || global3.a.b.x, global0.c.b.x, select(global0.c.b.x, global0.d.a.x, false))), Struct_1(var_1.a, !vec4<bool>(true, all(vec4<bool>(global3.d.a.x, true, var_1.b.x, global0.a.b.x)), all(vec4<bool>(false, false, global3.d.a.x, true)), false)));
    var var_2 = vec4<u32>(~(~_wgslsmith_clamp_u32(select(67245u, 4294967295u, var_1.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 30483u), vec2<u32>(4237u, 26743u)), _wgslsmith_mult_u32(1u, 4294967295u))), abs(~min(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(47878u, 20966u, 1u, 19202u), vec4<u32>(4294967295u, 6856u, 30665u, 24117u)))), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~1u, ~52505u, min(4294967295u, 31974u)), _wgslsmith_sub_u32(firstLeadingBit(1u), countOneBits(1u))) ^ 0u, 28243u);
    return Struct_2(global3.a, Struct_1(global0.d.a, vec4<bool>(any(global0.b.b), var_1.a.x, _wgslsmith_f_op_f32(-var_0.x) >= var_0.x, all(vec4<bool>(false, true, true, true)))), Struct_1(!(!select(vec3<bool>(true, global3.b.a.x, var_1.b.x), global0.c.a, var_1.b.wyz)), global3.c.b), Struct_1(select(var_1.b.www, vec3<bool>(true, true, true), global0.b.b.x | false), !select(vec4<bool>(false, false, true, true), vec4<bool>(var_1.a.x, false, global0.d.a.x, true), var_1.b.x)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = firstTrailingBit(select(~select(vec2<i32>(u_input.a, global2[_wgslsmith_index_u32(27538u, 27u)]) & vec2<i32>(global2[_wgslsmith_index_u32(31138u, 27u)], 0i), countOneBits(vec2<i32>(14793i, arg_0)), !global0.d.a.zz), ~min(vec2<i32>(-8858i, u_input.a) & vec2<i32>(arg_0, 1i), ~vec2<i32>(u_input.a, -29698i)), !(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(102412u, 0u, 0u)) <= 4294967295u)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(784f + -171f)) - -369f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1346f * 539f) * _wgslsmith_f_op_f32(sign(-780f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)))))) * -683f);
    let var_2 = 76541u;
    let var_3 = func_2();
    let var_4 = global3.d.b.xy;
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1869u;
    var var_1 = ~16490u;
    let var_2 = 4294967295u;
    let var_3 = 1f;
    let var_4 = _wgslsmith_f_op_f32(sign(var_3));
    let var_5 = !global0.d.b;
    global0 = Struct_2(func_1(-countOneBits(global2[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 27u)])), Struct_1(!(!select(vec3<bool>(global0.c.a.x, true, global3.b.a.x), vec3<bool>(false, global3.d.b.x, var_5.x), var_5.xxx)), vec4<bool>(true, true, true, func_1(global2[_wgslsmith_index_u32(59449u, 27u)]).a.x)), global3.d, global0.d);
    global1 = array<Struct_2, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(abs(-vec3<i32>(1i, global2[_wgslsmith_index_u32(10903u, 27u)], -50348i) << (firstLeadingBit(vec3<u32>(4294967295u, 1u, var_2)) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(global2[_wgslsmith_index_u32(1u, 27u)], u_input.a, 0i), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 62981i, u_input.a), abs(vec3<i32>(u_input.a, global2[_wgslsmith_index_u32(22710u, 27u)], 1i))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, 1017f, _wgslsmith_div_f32(var_3, var_4)) * vec3<f32>(_wgslsmith_f_op_f32(abs(-925f)), _wgslsmith_f_op_f32(f32(-1f) * -848f), _wgslsmith_f_op_f32(select(-586f, var_4, false))))), -16764i << (var_2 % 32u));
}

