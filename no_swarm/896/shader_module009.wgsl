struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: i32,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_3,
    d: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(17028u, 977f), Struct_2(1u, -551f), Struct_2(4294967295u, -379f), Struct_2(1u, -620f), Struct_2(0u, 949f), Struct_2(4294967295u, -1447f), Struct_2(49496u, -611f), Struct_2(4294967295u, -1210f), Struct_2(78263u, 532f), Struct_2(14828u, 608f), Struct_2(1u, -1000f), Struct_2(17569u, 1220f), Struct_2(0u, 1138f), Struct_2(4294967295u, -756f), Struct_2(91671u, 882f), Struct_2(1u, 1000f), Struct_2(0u, -786f), Struct_2(0u, -519f), Struct_2(0u, -350f), Struct_2(45798u, -550f), Struct_2(16678u, 129f), Struct_2(1u, 1000f), Struct_2(4294967295u, -1145f), Struct_2(32047u, -425f), Struct_2(59427u, 665f), Struct_2(20168u, 572f), Struct_2(0u, -440f), Struct_2(37184u, 1000f));

var<private> global1: array<vec3<i32>, 8>;

var<private> global2: Struct_2;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<f32> {
    let var_0 = Struct_4(Struct_1(-776f, vec4<bool>(true, true, false, true)), vec3<f32>(_wgslsmith_f_op_f32(136f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.b)) * global2.b)), _wgslsmith_f_op_f32(167f - _wgslsmith_f_op_f32(f32(-1f) * -878f)), global2.b), Struct_3(~max(0u, global2.a), 1563f, u_input.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, global2.b)))), vec4<bool>(true, true, true, true)), -285f);
    let var_1 = countOneBits(_wgslsmith_div_i32(_wgslsmith_sub_i32(2147483647i, var_0.c.c) ^ max(u_input.b.x, 10305i), u_input.d.x) << (u_input.a % 32u));
    var var_2 = vec3<u32>(~firstTrailingBit(_wgslsmith_sub_u32(1656u, 1u)) & max(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, var_0.c.a, 2780u, global2.a), select(vec4<u32>(4294967295u, var_0.c.a, 1u, 19486u), vec4<u32>(76037u, u_input.a, 35423u, global2.a), var_0.a.b.x)), 0u | abs(u_input.a)), select(var_0.c.a, _wgslsmith_add_u32(var_0.c.a, u_input.a) << (1205u % 32u), all(var_0.a.b.zzz)), 1u);
    global2 = global0[_wgslsmith_index_u32(1u, 28u)];
    global0 = array<Struct_2, 28>();
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(var_0.d + 1221f)), var_0.b.xy) - var_0.b.xx)));
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2195f, global2.b) - vec2<f32>(427f, -1118f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(224f, global2.b) + _wgslsmith_f_op_vec2_f32(func_3()))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(700f, global2.b)))));
    var var_1 = (firstLeadingBit(vec3<u32>(global2.a, arg_0.x, 1u) | _wgslsmith_add_vec3_u32(vec3<u32>(0u, 88079u, 4294967295u), vec3<u32>(82837u, global2.a, 1u))) << (~vec3<u32>(global2.a, arg_0.x >> (21824u % 32u), abs(0u)) % vec3<u32>(32u))) | (vec3<u32>(abs(4294967295u), reverseBits(_wgslsmith_mult_u32(4294967295u, global2.a)), ~_wgslsmith_mod_u32(4294967295u, u_input.a)) << (~firstLeadingBit(vec3<u32>(54020u, 48166u, 1u)) % vec3<u32>(32u)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b)), select(select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true)), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, select(true, false, false), true, -1i < u_input.c.x)), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), true)));
    var var_3 = Struct_5(Struct_3(~var_1.x, var_0.x, 0i, _wgslsmith_f_op_vec2_f32(func_3()), var_2.b), abs(var_1.yx), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_2.a, 1607f) + vec3<f32>(752f, 1256f, global2.b))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.b, -1878f, global2.b)))))));
    var var_4 = var_3.a;
    return global0[_wgslsmith_index_u32(var_3.a.a | var_1.x, 28u)];
}

fn func_1() -> Struct_4 {
    global2 = func_2(select(~min(vec2<u32>(global2.a, global2.a) << (vec2<u32>(9831u, global2.a) % vec2<u32>(32u)), vec2<u32>(1u, 1u)), min(vec2<u32>(15171u, abs(u_input.a)), vec2<u32>(global2.a, 1u)), !(!select(true, false, true))));
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(~global2.a, 1u, global2.a)), ~(((vec3<u32>(u_input.a, global2.a, u_input.a) & vec3<u32>(0u, 131638u, 0u)) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 1u, 25560u), vec3<u32>(7899u, 4294967295u, 27179u)) % vec3<u32>(32u))) & _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, global2.a, u_input.a)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 8322u, global2.a), vec3<u32>(1u, u_input.a, 3126u))))), 8u)];
    global0 = array<Struct_2, 28>();
    let var_1 = select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), !(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, false)), vec2<bool>(false, true), vec2<bool>(u_input.a != 30608u, var_0.x < var_0.x))), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(true, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false))));
    global0 = array<Struct_2, 28>();
    return Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.b)))), !(!vec4<bool>(false, var_1.x, var_1.x, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.b, global2.b, global2.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, global2.b, -1192f) - vec3<f32>(global2.b, 370f, 771f)))))), Struct_3(_wgslsmith_mult_u32(~u_input.a, global2.a), global2.b, 0i, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b, global2.b) * vec2<f32>(-255f, -566f))))), !select(select(vec4<bool>(true, true, var_1.x, true), vec4<bool>(var_1.x, true, var_1.x, var_1.x), false), !vec4<bool>(var_1.x, true, var_1.x, var_1.x), !vec4<bool>(var_1.x, var_1.x, true, var_1.x))), _wgslsmith_f_op_f32(ceil(global2.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(-29184i, ~firstLeadingBit(select(u_input.b.x, 1712i, false))), ~(-(~vec2<i32>(1i, 34103i))) >> ((abs(vec2<u32>(global2.a, u_input.a)) >> (~(~vec2<u32>(u_input.a, global2.a)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_1 = func_1();
    var var_2 = Struct_3(var_1.c.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -226f))), _wgslsmith_sub_i32(var_1.c.c, -(~(-2147483647i))) & -10734i, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a.a))), _wgslsmith_f_op_f32(-2649f + -167f)), _wgslsmith_f_op_vec2_f32(var_1.c.d * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_3()))))), var_1.c.e);
    global2 = func_2(max(~vec2<u32>(global2.a, var_1.c.a), ~reverseBits(vec2<u32>(20342u, 4294967295u))));
    var var_3 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(95339u, ~(~(~firstTrailingBit(vec2<u32>(0u, u_input.a)))));
}

