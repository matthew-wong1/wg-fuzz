struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_3,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27> = array<bool, 27>(true, false, false, true, false, true, false, true, true, true, false, true, false, false, false, false, true, true, false, false, false, false, false, true, true, true, true);

var<private> global1: array<bool, 12> = array<bool, 12>(false, true, false, false, false, false, false, false, false, true, false, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: i32) -> vec2<u32> {
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    let var_0 = 2147483647i;
    let var_1 = Struct_3(~(~min(vec2<u32>(2962u, 0u), select(vec2<u32>(1u, u_input.c), vec2<u32>(u_input.c, 0u), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(u_input.b, 27u)])))), Struct_1(u_input.d.xx));
    var var_2 = u_input.d;
    return ~vec2<u32>(max(0u, u_input.c), min(u_input.c, ~1u));
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_mult_vec3_i32((vec3<i32>(-1i) * -vec3<i32>(u_input.d.x, u_input.d.x, 0i)) ^ -vec3<i32>(~(-58754i), u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -79749i, u_input.d.x), u_input.d)), _wgslsmith_sub_vec3_i32(~u_input.d, vec3<i32>(u_input.a, -firstLeadingBit(-37172i), u_input.a)));
    global0 = array<bool, 27>();
    var var_1 = max(u_input.b, _wgslsmith_mult_u32(u_input.c, (~u_input.b & ~u_input.b) | (u_input.c & ~u_input.b)));
    var var_2 = firstTrailingBit(var_0.x);
    let var_3 = Struct_1(u_input.d.yy);
    return Struct_4(abs(0u), Struct_3(~abs(~vec2<u32>(u_input.b, 11355u)), Struct_1(_wgslsmith_mod_vec2_i32(u_input.d.yy, select(vec2<i32>(u_input.d.x, -42568i), u_input.d.yy, vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 27u)], false))))), Struct_3(_wgslsmith_add_vec2_u32(func_3(-1000f, u_input.a, var_0.x) ^ select(vec2<u32>(8430u, 0u), vec2<u32>(1u, u_input.b), true), ~min(vec2<u32>(42169u, 12196u), vec2<u32>(u_input.c, 4294967295u))), Struct_1(vec2<i32>(_wgslsmith_mult_i32(var_0.x, -2147483647i), -var_3.a.x))), vec2<f32>(_wgslsmith_div_f32(993f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -172f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2429f - 584f))))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: vec2<f32>) -> vec2<bool> {
    let var_0 = abs(select(vec2<u32>(17517u, 4294967295u) & func_3(arg_0.d.x, 43328i, arg_0.c.b.a.x), vec2<u32>(arg_0.a, u_input.c), global0[_wgslsmith_index_u32(~(~u_input.c), 27u)])) << (vec2<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 37757u, 0u), vec3<u32>(56691u, 62181u, u_input.c))), ~vec3<u32>(u_input.c, 4294967295u, 3676u)), ~select(~4911u, 0u, all(vec2<bool>(global1[_wgslsmith_index_u32(1u, 12u)], true)))) % vec2<u32>(32u));
    let var_1 = arg_2.x;
    global1 = array<bool, 12>();
    let var_2 = Struct_4(4294967295u, Struct_3(firstLeadingBit(abs(~arg_0.b.a)), arg_0.b.b), Struct_3(arg_0.c.a, Struct_1(u_input.d.yy)), _wgslsmith_f_op_vec2_f32(arg_0.d * vec2<f32>(-2153f, 1322f)));
    global1 = array<bool, 12>();
    return !vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 27u)]);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: Struct_1) -> u32 {
    let var_0 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(firstLeadingBit(arg_1.a), func_3(-931f, u_input.d.x, -1980i).x, ~u_input.c), abs(~vec3<u32>(u_input.c, 1u, 0u))), vec3<u32>(~4294967295u, 103275u, arg_1.a));
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    let var_1 = func_2().b.b.a;
    return countOneBits(firstTrailingBit(var_0));
}

fn func_1() -> vec2<u32> {
    let var_0 = Struct_2(select(func_5(func_4(func_2(), vec3<f32>(-272f, -173f, -1621f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-590f, -1357f)))), func_2(), Struct_1(vec2<i32>(-1i, 23666i))), ~(u_input.c << (56185u % 32u)), any(!(!vec2<bool>(global0[_wgslsmith_index_u32(4757u, 27u)], true)))), _wgslsmith_add_vec3_i32(u_input.d, select(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.d, u_input.d), _wgslsmith_dot_vec2_i32(u_input.d.xx, vec2<i32>(-46960i, u_input.a)), -13544i), ~u_input.d, vec3<bool>(true, true, true))), func_2().b.b, Struct_1(vec2<i32>(1i, -u_input.a)), Struct_1(_wgslsmith_sub_vec2_i32(u_input.d.yz & ~vec2<i32>(u_input.d.x, u_input.a), -vec2<i32>(1i, 1i))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-512f + -301f), -995f));
    let var_2 = var_0;
    global0 = array<bool, 27>();
    var var_3 = true;
    return vec2<u32>(0u, ~func_5(func_4(Struct_4(u_input.b, Struct_3(vec2<u32>(4294967295u, var_2.a), Struct_1(u_input.d.zy)), Struct_3(vec2<u32>(var_0.a, 4294967295u), Struct_1(u_input.d.xz)), vec2<f32>(1000f, var_1)), vec3<f32>(-551f, 851f, var_1), vec2<f32>(var_1, 445f)), Struct_4(var_0.a, Struct_3(vec2<u32>(var_0.a, var_0.a), var_0.e), Struct_3(vec2<u32>(var_2.a, var_0.a), Struct_1(u_input.d.yx)), vec2<f32>(687f, 1000f)), Struct_1(var_0.e.a)) & countOneBits(u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    var var_0 = vec2<u32>(_wgslsmith_div_u32(4294967295u, 88084u), 1u) ^ vec2<u32>(_wgslsmith_dot_vec2_u32(func_1(), ~vec2<u32>(16244u, u_input.b)), ~u_input.b);
    global0 = array<bool, 27>();
    let var_1 = func_2().c.b;
    var var_2 = !global0[_wgslsmith_index_u32(func_1().x, 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(-8712i, ~(-10097i), ~(-2147483647i)), vec4<u32>(u_input.c, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(1u, 4294967295u)) ^ func_3(-846f, 0i, var_1.a.x).x), 1u, ~countOneBits(~4294967295u)), ~(vec4<i32>(~24571i, -2147483647i, var_1.a.x, u_input.d.x) | firstLeadingBit(vec4<i32>(u_input.d.x, -1i, var_1.a.x, var_1.a.x) ^ vec4<i32>(var_1.a.x, -1i, -23635i, 1i))));
}

