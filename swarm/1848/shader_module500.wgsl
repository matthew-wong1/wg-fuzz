struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1812f, vec4<bool>(true, false, true, true), vec4<f32>(-1044f, -1359f, -271f, 477f));

var<private> global1: array<vec4<u32>, 19> = array<vec4<u32>, 19>(vec4<u32>(66077u, 23429u, 35051u, 0u), vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<u32>(1u, 107021u, 57453u, 30543u), vec4<u32>(4294967295u, 20749u, 9271u, 54333u), vec4<u32>(0u, 29675u, 0u, 617u), vec4<u32>(102566u, 1u, 15056u, 1u), vec4<u32>(1u, 28462u, 55443u, 4294967295u), vec4<u32>(1u, 70857u, 22693u, 53396u), vec4<u32>(47254u, 1u, 1u, 1u), vec4<u32>(4039u, 0u, 4294967295u, 0u), vec4<u32>(44960u, 1u, 6804u, 41016u), vec4<u32>(5489u, 4294967295u, 1u, 4294967295u), vec4<u32>(7739u, 4294967295u, 48484u, 58568u), vec4<u32>(1u, 47696u, 4294967295u, 36708u), vec4<u32>(23467u, 1u, 26703u, 52632u), vec4<u32>(1u, 12080u, 33785u, 4294967295u), vec4<u32>(1u, 1u, 0u, 4294967295u), vec4<u32>(1u, 4294967295u, 86047u, 37614u), vec4<u32>(4294967295u, 1u, 4912u, 18097u));

var<private> global2: array<Struct_1, 30>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: vec2<i32>) -> vec3<f32> {
    global1 = array<vec4<u32>, 19>();
    var var_0 = global0.c.zyz;
    var var_1 = arg_0.x;
    var_1 = firstTrailingBit(arg_0.x);
    var var_2 = true;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global0.c.zxz)));
}

fn func_4(arg_0: vec3<f32>) -> bool {
    global2 = array<Struct_1, 30>();
    global2 = array<Struct_1, 30>();
    global2 = array<Struct_1, 30>();
    let var_0 = max(1u, ~(~1u));
    global1 = array<vec4<u32>, 19>();
    return true;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: bool) -> f32 {
    var var_0 = vec2<u32>(~(4294967295u | min(33982u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 39238u), vec3<u32>(0u, 1u, 34029u)))), ~15148u);
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)), -832f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.c.x, arg_0.a)))) * 446f), !(_wgslsmith_mod_u32(var_0.x, _wgslsmith_div_u32(0u, var_0.x)) != var_0.x)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    global2 = array<Struct_1, 30>();
    global0 = arg_2.d;
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(global2[_wgslsmith_index_u32(arg_2.b, 30u)], func_4(_wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(0u, arg_2.c.x, arg_2.c.x), min(arg_0, arg_0), vec2<i32>(36073i, arg_0.x) ^ arg_0.xy))), true, any(select(select(vec3<bool>(arg_2.a.b.x, false, false), arg_2.a.b.xxw, arg_2.d.b.x), !vec3<bool>(false, arg_1.b.x, true), arg_1.b.wzw)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_2.a.a)), -333f, any(vec4<bool>(false, true, false, true))))))));
    let var_1 = true;
    let var_2 = arg_2;
    return arg_2.b;
}

fn func_6(arg_0: u32, arg_1: u32) -> Struct_2 {
    global0 = Struct_1(global0.c.x, !global0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(238f, -1716f, _wgslsmith_f_op_f32(sign(global0.c.x)), _wgslsmith_f_op_vec3_f32(func_3(min(vec3<u32>(0u, arg_0, arg_1), vec3<u32>(10043u, arg_1, arg_1)), abs(vec3<i32>(-2147483647i, 1i, u_input.a)), ~vec2<i32>(2800i, u_input.a))).x)));
    var var_0 = abs(~_wgslsmith_mult_u32(40921u ^ _wgslsmith_add_u32(arg_0, arg_1), 1u));
    return Struct_2(global2[_wgslsmith_index_u32((select(~arg_0, ~arg_0, true | global0.b.x) ^ ~arg_0) ^ ~(arg_1 << (reverseBits(arg_0) % 32u)), 30u)], arg_1, max(~(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, arg_1, 1u), vec3<u32>(arg_1, arg_0, 0u)) >> (~vec3<u32>(54838u, arg_0, arg_1) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(1u, arg_0, 5730u)), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 6039u, 15482u), vec3<u32>(arg_0, arg_1, 17019u))))), global2[_wgslsmith_index_u32(arg_1, 30u)]);
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = ~1u;
    var var_1 = func_6(max(0u, abs(~func_2(vec3<i32>(-2147483647i, 2147483647i, 72212i), Struct_1(global0.c.x, global0.b, global0.c), Struct_2(Struct_1(global0.c.x, global0.b, vec4<f32>(-1403f, global0.a, -942f, 1000f)), 1u, vec3<u32>(64014u, var_0, 17512u), Struct_1(global0.a, global0.b, vec4<f32>(global0.a, 279f, global0.a, -819f)))))), var_0);
    var var_2 = func_6(44987u, ~1u);
    global1 = array<vec4<u32>, 19>();
    let var_3 = 1u;
    return func_6(var_0, reverseBits(var_1.b)).a;
}

fn func_7(arg_0: Struct_1) -> StorageBuffer {
    global1 = array<vec4<u32>, 19>();
    var var_0 = global2[_wgslsmith_index_u32(58805u, 30u)];
    let var_1 = func_6(1u, 1u);
    global0 = global2[_wgslsmith_index_u32(4043u, 30u)];
    return StorageBuffer(~(~var_1.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_7(func_1(-1i));
}

