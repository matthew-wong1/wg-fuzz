struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(15760u, 44798u, 0u, 4294967295u, 4294967295u, 4294967295u, 41724u, 54874u, 62778u, 67986u, 17997u, 4294967295u, 4294967295u, 0u, 60743u, 47944u, 70970u, 4294967295u, 8249u, 2774u, 65418u, 1u, 4294967295u, 0u, 4294967295u, 0u, 37670u, 4294967295u, 1u, 53417u);

var<private> global1: array<Struct_2, 27>;

var<private> global2: array<u32, 18> = array<u32, 18>(0u, 0u, 98834u, 26954u, 65081u, 25425u, 0u, 1u, 1u, 4294967295u, 62724u, 0u, 13258u, 1u, 1u, 1u, 1u, 75034u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<f32>, arg_3: vec4<bool>) -> f32 {
    let var_0 = arg_2.x;
    global2 = array<u32, 18>();
    global0 = array<u32, 30>();
    global2 = array<u32, 18>();
    let var_1 = max(_wgslsmith_mod_vec2_i32(~(vec2<i32>(-12798i, 37232i) << (vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 18u)], 35919u) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(17872i, -37508i), vec2<i32>(1i, 1i)), ~vec2<i32>(1i, 1i))), _wgslsmith_mult_vec2_i32(vec2<i32>(max(-23449i, 6162i), _wgslsmith_add_i32(0i, 22811i)) << ((u_input.a << (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(-19747i, 1i)));
    return 1808f;
}

fn func_3(arg_0: vec4<bool>, arg_1: i32) -> vec2<f32> {
    global1 = array<Struct_2, 27>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1f), 230f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(_wgslsmith_div_f32(-1247f, 1000f), -486f))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(540f, 871f)) - -987f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1206f + -472f)) + -219f)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global1 = array<Struct_2, 27>();
    let var_0 = ~(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(71559u, 0u, 53824u, 54837u), abs(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], 30u)], 4294967295u)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-327f, 935f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(101f, -553f) * vec2<f32>(-1539f, 670f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -586f) - vec2<f32>(1000f, -205f)))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, false, false, false), false, vec2<f32>(2377f, 1042f), vec4<bool>(false, false, true, true))), 721f)))), _wgslsmith_f_op_vec2_f32(func_3(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec3<bool>(false, false, false)), true, true)), max(-select(-2147483647i, 65706i, true), abs(1263i) >> (countOneBits(52107u) % 32u)))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), 4294967295u < global0[_wgslsmith_index_u32(4294967295u, 30u)]), vec2<bool>(true, true), true)));
    var var_2 = vec3<bool>(true, true, true);
    global0 = array<u32, 30>();
    return Struct_1(var_2.x, select(!vec3<bool>(true, var_2.x, var_2.x && true), select(vec3<bool>(true, 674f != var_1.x, !var_2.x), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, var_2.x), var_2.x), select(vec3<bool>(false, var_2.x, false), vec3<bool>(true, true, var_2.x), var_2.x), var_2.x), any(var_2.zx) != (true | var_2.x)), var_2.x), max(-(~7069i), -24808i), true, true);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_3 {
    let var_0 = Struct_4(Struct_1(all(arg_2.b.yy), select(func_2(firstLeadingBit(4294967295u)).b, vec3<bool>(26279i <= arg_2.c, arg_2.d, all(arg_2.b.zz)), false & arg_2.b.x), abs(arg_2.c), func_2(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(select(32011u, _wgslsmith_sub_u32(u_input.b.x, global0[_wgslsmith_index_u32(7850u, 30u)]), true), 30u)], 30u)]).a, arg_2.c < ~countOneBits(-27855i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * 2034f)), func_2(select(~select(14722u, arg_0.x, true), ~44791u, arg_2.b.x)));
    global0 = array<u32, 30>();
    let var_1 = vec3<i32>(-((var_0.c.c ^ -1i) & 1i), -7707i, -3559i) & (abs(vec3<i32>(~var_0.a.c, 6177i, -1i)) | ~(-min(vec3<i32>(11963i, arg_2.c, var_0.c.c), vec3<i32>(var_0.a.c, arg_2.c, var_0.c.c))));
    global2 = array<u32, 18>();
    let var_2 = arg_1.xy;
    return Struct_3(func_2(~31546u), arg_2, !(!arg_2.e), 1i, global1[_wgslsmith_index_u32(10660u, 27u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec4<u32>(~15806u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32((abs(global2[_wgslsmith_index_u32(u_input.a.x, 18u)]) & _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17158u, 30u)], 18u)], 30u)], 0u)) | ~1u, 18u)], 18u)], u_input.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 4294967295u), 18u)] | u_input.a.x, 18u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, false, true, true), true, vec2<f32>(1000f, 654f), vec4<bool>(true, false, false, false))) + _wgslsmith_f_op_f32(f32(-1f) * -1119f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -300f))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(132f + 164f) - -1215f))), func_2(~countOneBits(44934u)), u_input.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1059f, _wgslsmith_f_op_f32(round(var_0.e.c)), _wgslsmith_f_op_f32(f32(-1f) * -1805f)) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -693f), _wgslsmith_f_op_f32(floor(var_0.e.c)), -879f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, var_0.e.c, -571f))))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.c, var_0.e.c, 832f) * vec3<f32>(var_0.e.c, 1257f, var_0.e.c))))))));
    global1 = array<Struct_2, 27>();
    var var_2 = _wgslsmith_add_i32(-_wgslsmith_add_i32(i32(-1i) * -45759i, func_4(vec4<u32>(4294967295u, 70777u, 0u, u_input.a.x) | vec4<u32>(16714u, 66326u, 28563u, 1u), vec4<f32>(var_1.x, var_0.e.c, 141f, var_0.e.c), var_0.b, ~u_input.b).d), -2147483647i);
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1603f, var_0.e.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(vec4<u32>(4294967295u, u_input.b.x, 22269u, u_input.b.x), vec4<f32>(189f, var_1.x, 132f, var_1.x), var_0.a, vec2<u32>(4294967295u, u_input.a.x)).e.c))), _wgslsmith_f_op_f32(-var_1.x));
    let var_3 = ~vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b, ~(u_input.a ^ u_input.a)), ~_wgslsmith_add_u32(~u_input.a.x, _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(u_input.b.x, 18u)], 0u)), abs(~(~105582u)));
    var var_4 = var_3.x;
    global1 = array<Struct_2, 27>();
    global1 = array<Struct_2, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, 0i, var_0.d), max(vec3<i32>(52464i, var_0.d, var_0.e.d.c), vec3<i32>(var_0.e.d.c, -10159i, var_0.b.c))) ^ (vec3<i32>(var_0.e.b.c, 1i, 45655i) & select(vec3<i32>(-2147483647i, var_0.d, var_0.b.c), vec3<i32>(var_0.d, var_0.e.b.c, 5895i), vec3<bool>(var_0.e.a, true, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-340f, var_1.x, 809f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -357f, var_1.x) - vec3<f32>(var_0.e.c, var_1.x, 234f))) - vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(var_0.e.c + var_0.e.c)))), abs(66311u), 108f, firstTrailingBit(vec3<i32>(_wgslsmith_div_i32(var_0.e.b.c, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_0.a.c, var_0.e.d.c), vec3<i32>(2147483647i, -72706i, 0i))), -64547i, _wgslsmith_mult_i32(1i, var_0.d))));
}

