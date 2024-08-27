struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: array<vec2<i32>, 23>;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<u32>(17463u, 38667u, 32651u, 4294967295u), vec3<i32>(36310i, 1i, 64927i), 1i, 1i), -33492i, Struct_1(vec4<u32>(4294967295u, 47586u, 1u, 1287u), vec3<i32>(-37822i, -57386i, -20586i), 1i, i32(-2147483648)));

var<private> global3: bool = true;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> vec3<i32> {
    var var_0 = ~24359u;
    global1 = array<vec2<i32>, 23>();
    let var_1 = global2.c;
    let var_2 = global2.c;
    global0 = array<Struct_2, 27>();
    return var_1.b;
}

fn func_3() -> i32 {
    var var_0 = ~_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(~global2.c.a.zy, _wgslsmith_sub_vec2_u32(global2.c.a.zz, _wgslsmith_sub_vec2_u32(global2.a.a.yy, vec2<u32>(global2.a.a.x, 0u)))), _wgslsmith_add_vec2_u32(vec2<u32>(global2.c.a.x, 31996u), global2.c.a.xy) & _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.c), ~vec2<u32>(1u, 51720u)));
    let var_1 = global0[_wgslsmith_index_u32(var_0.x, 27u)];
    var var_2 = Struct_2(global2.a, 0i, Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(var_1.a.a, vec4<u32>(var_1.c.a.x, 45495u, global2.a.a.x, 24089u)), ~(~vec4<u32>(u_input.c, global2.a.a.x, var_0.x, 1u))), var_1.a.b, reverseBits(_wgslsmith_div_i32(-2147483647i, firstTrailingBit(var_1.c.b.x))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(global2.a.d, var_1.a.b.x), _wgslsmith_sub_i32(-18097i, u_input.b)) | var_1.a.c));
    global2 = Struct_2(var_1.a, _wgslsmith_sub_i32(-(~(-var_1.b)), countOneBits(_wgslsmith_dot_vec4_i32(select(vec4<i32>(var_2.a.d, u_input.b, 0i, var_1.b), vec4<i32>(u_input.b, u_input.b, u_input.b, var_1.c.d), true), ~vec4<i32>(11359i, -2147483647i, var_1.c.d, 35303i)))), global2.a);
    let var_3 = select(select(vec4<bool>(!select(true, true, false), false, any(vec2<bool>(false, true)), any(select(vec2<bool>(false, true), vec2<bool>(false, true), false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), all(vec3<bool>(true, true, true))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(any(vec2<bool>(true, true)), true, false, true))), vec4<bool>(!(_wgslsmith_f_op_f32(377f * -363f) != _wgslsmith_f_op_f32(select(-2291f, 194f, false))), true | all(vec3<bool>(false, false, false)), true, false), vec4<bool>(true, !(false && (0u >= u_input.a)), !select(true, true, false) | true, false && all(vec4<bool>(false, true, true, true))));
    return -_wgslsmith_dot_vec2_i32(select(_wgslsmith_mod_vec2_i32(~vec2<i32>(var_1.c.c, var_1.b), vec2<i32>(var_2.a.c, -45581i)), -(~vec2<i32>(16557i, 1i)), false), vec2<i32>(select(-13584i, -7926i, var_3.x), 1i) << (abs(_wgslsmith_mult_vec2_u32(var_1.c.a.wz, vec2<u32>(var_0.x, 86269u))) % vec2<u32>(32u)));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> vec3<bool> {
    global1 = array<vec2<i32>, 23>();
    var var_0 = vec2<bool>(true, all(vec2<bool>(false, true)));
    var var_1 = Struct_1(global2.c.a, _wgslsmith_clamp_vec3_i32(global2.a.b, min(_wgslsmith_clamp_vec3_i32(vec3<i32>(global2.a.d, 17390i, arg_0), func_2(global0[_wgslsmith_index_u32(50346u, 27u)], 757f), _wgslsmith_add_vec3_i32(global2.c.b, vec3<i32>(-2147483647i, 2147483647i, -37147i))), global2.a.b), ~global2.a.b), -1i, global2.b);
    var var_2 = func_3();
    global1 = array<vec2<i32>, 23>();
    return vec3<bool>(true, all(vec4<bool>(!var_0.x, false, var_0.x, true)) | var_0.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(286f, -1468f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1586f, -583f)) - vec2<f32>(-1158f, 1000f)) + vec2<f32>(_wgslsmith_div_f32(-360f, -1839f), _wgslsmith_f_op_f32(round(1262f))))), all(select(select(func_1(u_input.b, global2.a.a), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), 2147483647i != (u_input.b << (global2.c.a.x % 32u))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-366f, var_0.x))) + var_0.x) + _wgslsmith_f_op_f32(-var_0.x));
    global3 = all(vec2<bool>(true, true));
    var var_2 = global2.c;
    let var_3 = _wgslsmith_f_op_f32(abs(var_1));
    let var_4 = select(select(_wgslsmith_clamp_u32(~countOneBits(global2.c.a.x), firstTrailingBit(_wgslsmith_div_u32(0u, u_input.a)), _wgslsmith_clamp_u32(1u, u_input.a >> (4294967295u % 32u), min(20586u, u_input.a))), ~(~countOneBits(4294967295u)), any(vec4<bool>(true, true, true, true))), _wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.a, global2.a.a.x) | vec2<u32>(122162u, 27945u)), var_2.a.zy) & 4294967295u, true);
    global0 = array<Struct_2, 27>();
    let var_5 = abs(_wgslsmith_sub_i32(global2.b ^ ~(-36294i), -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(max(abs(vec3<u32>(reverseBits(1832u), 40266u, ~u_input.a)), vec3<u32>(max(u_input.c, 0u), 0u, ~(global2.a.a.x << (var_2.a.x % 32u)))), _wgslsmith_mod_u32(0u, u_input.c));
}

