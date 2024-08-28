struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<f32, 27> = array<f32, 27>(846f, 1000f, -225f, 663f, -597f, 1733f, -286f, -1472f, 186f, 994f, -942f, 861f, 1065f, -404f, 1197f, 222f, 842f, -182f, 185f, -451f, -1000f, -1063f, -379f, -419f, -1327f, 611f, -1316f);

var<private> global2: array<vec4<f32>, 11>;

var<private> global3: i32 = -3964i;

var<private> global4: vec2<u32> = vec2<u32>(21647u, 44492u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec2<u32>) -> Struct_3 {
    global4 = arg_0;
    global2 = array<vec4<f32>, 11>();
    var var_0 = 0u;
    let var_1 = !select(false, false, (1u & global4.x) <= _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 38005u, 14u, arg_0.x) | vec4<u32>(0u, global4.x, 27277u, arg_0.x), ~vec4<u32>(4294967295u, arg_0.x, global4.x, global4.x)));
    var var_2 = ~(~_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(33616u, global4.x), ~0u), ~74570u));
    return Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(31245u, 27u)], global1[_wgslsmith_index_u32(arg_0.x, 27u)]))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(global4.x, 27u)]) + vec2<f32>(1818f, global1[_wgslsmith_index_u32(2906u, 27u)])))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1486f, 615f) * vec2<f32>(-221f, global1[_wgslsmith_index_u32(4294967295u, 27u)])), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-417f, 592f))))), _wgslsmith_div_u32(4294967295u, 10191u) == global4.x))), Struct_1(arg_0.x, arg_0.x << (arg_0.x % 32u), -48439i, _wgslsmith_div_u32(~1u, ~(~4294967295u))), global0.a, Struct_2(535f, ~global4.x), Struct_2(global1[_wgslsmith_index_u32(93006u, 27u)], ~(~max(arg_0.x, 1696u))));
}

fn func_3(arg_0: Struct_5, arg_1: i32, arg_2: vec4<i32>, arg_3: i32) -> Struct_3 {
    let var_0 = func_2(select(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(4294967295u, 1u)) << (~vec2<u32>(arg_0.a.e.b, global4.x) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(select(vec2<u32>(4294967295u, global4.x), vec2<u32>(global4.x, 8409u), false), vec2<u32>(arg_0.a.b.a, 1u))), abs(~vec2<u32>(0u, arg_0.a.e.b)), true));
    var var_1 = !select(vec2<bool>(false, select(true, false, true)), vec2<bool>(arg_0.a.d.b <= arg_0.a.e.b, true), false);
    global1 = array<f32, 27>();
    let var_2 = arg_0.a;
    global3 = _wgslsmith_dot_vec4_i32(arg_2, arg_2);
    return Struct_3(vec2<f32>(277f, _wgslsmith_f_op_f32(arg_0.a.d.a + arg_0.a.a.x)), var_2.b, -(i32(-1i) * -abs(global0.a)), func_2(~(~vec2<u32>(global4.x, var_0.d.b) & (vec2<u32>(var_0.b.b, 4294967295u) ^ vec2<u32>(global4.x, 1u)))).d, func_2(~(firstLeadingBit(vec2<u32>(80555u, global4.x)) & select(vec2<u32>(4294967295u, arg_0.a.b.d), vec2<u32>(arg_0.a.e.b, var_2.d.b), false))).d);
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_1(15814u, global4.x >> (global4.x % 32u), _wgslsmith_div_i32(-10843i, global0.a), _wgslsmith_mod_u32(_wgslsmith_div_u32(global4.x, _wgslsmith_clamp_u32(global4.x, ~global4.x, 1500u)), global4.x));
    let var_1 = abs(49678i);
    global1 = array<f32, 27>();
    global3 = 7407i;
    let var_2 = _wgslsmith_f_op_f32(319f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(1u, 27u)])))));
    return func_3(Struct_5(func_2(_wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.b, 1u), select(vec2<u32>(global4.x, 33391u), vec2<u32>(42826u, 1u), false))), max(vec2<i32>(var_1, var_1), abs(u_input.a.yz)) >> (~select(vec2<u32>(var_0.d, 40083u), vec2<u32>(var_0.d, var_0.b), false) % vec2<u32>(32u))), -(~u_input.a.x), ~vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_1, var_1), select(-4002i, u_input.a.x, true), var_1), -26260i, 1i, global0.a ^ -2984i), i32(-1i) * -(~min(-23625i, -2147483647i)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4) -> vec3<bool> {
    let var_0 = arg_1;
    var var_1 = abs(_wgslsmith_mult_vec3_u32(firstTrailingBit(reverseBits(vec3<u32>(0u, arg_0.b.d, arg_0.b.b))), vec3<u32>(~78064u, 353u, func_3(Struct_5(arg_0, vec2<i32>(1i, -23453i)), 0i, vec4<i32>(arg_0.b.c, 37292i, arg_0.b.c, global0.a), arg_0.b.c).b.d))) >> (vec3<u32>(_wgslsmith_add_u32(countOneBits(~arg_0.e.b), global4.x), ~countOneBits(reverseBits(arg_0.e.b)), global4.x | _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.d.b, arg_0.b.b), vec2<u32>(0u, 65938u)), _wgslsmith_div_vec2_u32(vec2<u32>(32190u, 1u), vec2<u32>(global4.x, 4294967295u)))) % vec3<u32>(32u));
    let var_2 = vec2<i32>((arg_0.c & arg_1.a) >> (1u % 32u), 0i) >> (~(select(_wgslsmith_sub_vec2_u32(var_1.xy, var_1.xy), ~vec2<u32>(arg_0.b.a, 4294967295u), vec2<bool>(true, true)) << (var_1.yx % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_3 = arg_0.d;
    var var_4 = _wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -19627i, i32(-1i) * -2147483647i, func_2(vec2<u32>(4294967295u, 8768u << (var_3.b % 32u))).b.c, 50042i), vec4<i32>(1i, 193i, u_input.a.x, -65562i) & vec4<i32>(55016i, 0i, -2147483647i, -61491i));
    return vec3<bool>(any(select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), vec3<bool>(false, true, false), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), true, !(!(_wgslsmith_f_op_f32(exp2(var_3.a)) <= _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 27u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let var_1 = 0u;
    var var_2 = global4.x;
    var var_3 = select(func_4(func_1(), Struct_4(~1i)), vec3<bool>(true, all(vec2<bool>(true, true)), all(vec2<bool>(true, true))), !(true | (true || all(vec3<bool>(true, true, true)))));
    global1 = array<f32, 27>();
    let var_4 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, -33413i), vec4<i32>(17817i, min(abs(0i), -u_input.a.x) >> (global4.x % 32u), i32(-1i) * -firstLeadingBit(u_input.a.x), u_input.a.x >> (1u % 32u)), -((vec2<i32>(global0.a, -1i) << (vec2<u32>(var_1, global4.x) % vec2<u32>(32u))) | vec2<i32>(2147483647i, -2147483647i)) | select(countOneBits(vec2<i32>(2147483647i, global0.a)) | u_input.a.zy, vec2<i32>(u_input.a.x, _wgslsmith_sub_i32(-2147483647i, global0.a)), !var_3.xz), firstLeadingBit(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(global4.x, 4294967295u), firstTrailingBit(33878u), countOneBits(global4.x)), _wgslsmith_clamp_u32(~var_1, _wgslsmith_mult_u32(1u, var_1), ~global4.x), _wgslsmith_div_u32(global4.x >> (global4.x % 32u), 12783u))));
}

