struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(2147483647i, -45718i, -26384i, 3541i), vec4<i32>(-1i, -11734i, 1i, 0i), vec4<i32>(22621i, 0i, 47847i, -1i), vec4<i32>(36666i, -65965i, 1i, 22463i), vec4<i32>(-34110i, 4362i, 25985i, 2147483647i), vec4<i32>(-19977i, 1847i, 39500i, 1879i), vec4<i32>(i32(-2147483648), -4935i, 2147483647i, 13514i), vec4<i32>(i32(-2147483648), 2147483647i, 10188i, i32(-2147483648)), vec4<i32>(45555i, -36603i, 31069i, -37630i), vec4<i32>(26231i, -5259i, 0i, 18345i), vec4<i32>(-21905i, -1i, 22165i, 1i), vec4<i32>(17442i, 0i, 2147483647i, -1i), vec4<i32>(-2629i, -38917i, 0i, -43651i), vec4<i32>(-1i, 59915i, -19269i, 9732i), vec4<i32>(-1i, 1i, -1712i, 2147483647i), vec4<i32>(0i, 0i, -138i, -1i), vec4<i32>(-4269i, 270i, -1i, -1i), vec4<i32>(-17534i, 1i, 9659i, -46168i), vec4<i32>(30302i, 1178i, 6693i, -59102i), vec4<i32>(-1i, -65668i, 36170i, -1i), vec4<i32>(1i, 64458i, 0i, 1i), vec4<i32>(0i, -19924i, 0i, 0i), vec4<i32>(13147i, -21127i, -17486i, -1i), vec4<i32>(1i, -41390i, -64694i, -59090i), vec4<i32>(0i, 0i, -10105i, 45866i), vec4<i32>(39116i, -15479i, 58601i, 1i), vec4<i32>(1i, -47632i, 42696i, 20565i), vec4<i32>(45827i, i32(-2147483648), -1i, i32(-2147483648)), vec4<i32>(-1i, 9027i, 2147483647i, i32(-2147483648)));

var<private> global1: array<vec2<i32>, 9> = array<vec2<i32>, 9>(vec2<i32>(i32(-2147483648), -2887i), vec2<i32>(0i, 17278i), vec2<i32>(-1i, 44035i), vec2<i32>(11930i, 12454i), vec2<i32>(33227i, -1i), vec2<i32>(32581i, -1i), vec2<i32>(-1i, -1i), vec2<i32>(-1i, -1i), vec2<i32>(i32(-2147483648), -1i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32) -> u32 {
    let var_0 = Struct_3(Struct_2(Struct_1(-u_input.b, -(global0[_wgslsmith_index_u32(54900u, 29u)] << (vec4<u32>(u_input.d.x, 30136u, 0u, 72839u) % vec4<u32>(32u))), ~vec2<u32>(32133u, arg_0.x)), Struct_1(abs(u_input.b & u_input.b), min(_wgslsmith_add_vec4_i32(vec4<i32>(9810i, -34178i, 2147483647i, u_input.e), vec4<i32>(arg_1, u_input.c.x, u_input.c.x, -44898i)), countOneBits(global0[_wgslsmith_index_u32(u_input.d.x, 29u)])), max(arg_0.xx, arg_0.xx)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(605f, 2383f, 552f, -1478f)))))));
    let var_1 = vec3<i32>(-2147483647i, var_0.a.b.a.x, ~1i);
    var var_2 = u_input.e;
    var var_3 = Struct_1(vec3<i32>(~var_0.a.a.a.x, -21877i, arg_1 ^ _wgslsmith_sub_i32(-4297i, var_1.x)), -(-vec4<i32>(arg_1, var_0.a.a.b.x, -5481i, var_0.a.b.a.x) | -abs(var_0.a.a.b)), firstLeadingBit(abs(vec2<u32>(~40962u, 1u))));
    var_3 = Struct_1(u_input.b, _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 2147483647i, 1i, var_3.a.x), ~_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.a.b.x, -2147483647i, var_1.x, 1317i), vec4<i32>(9512i, 0i, arg_1, -2147483647i))), global0[_wgslsmith_index_u32(64636u, 29u)]), vec2<u32>(_wgslsmith_div_u32(var_0.a.b.c.x, _wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, u_input.d.x), 4294967295u)), _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(arg_0.zyw, arg_0.wzw), 2363u), arg_0.x)));
    return 22200u;
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: vec3<i32>) -> vec2<u32> {
    global0 = array<vec4<i32>, 29>();
    let var_0 = Struct_1(arg_0.a.b.b.xzx, ~_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.x, firstTrailingBit(2147483647i), _wgslsmith_add_i32(arg_0.a.b.b.x, arg_0.a.a.a.x), arg_0.a.a.b.x), global0[_wgslsmith_index_u32(~func_3(vec4<u32>(u_input.d.x, u_input.d.x, 0u, arg_0.a.a.c.x), -34479i), 29u)]), min(u_input.d.xy, arg_0.a.b.c));
    let var_1 = arg_0.a;
    let var_2 = Struct_2(Struct_1(_wgslsmith_sub_vec3_i32(countOneBits(~arg_2), vec3<i32>(arg_2.x, 33782i, i32(-1i) * -17696i)), arg_0.a.b.b, _wgslsmith_mult_vec2_u32(~(~u_input.d.xx), vec2<u32>(var_1.a.c.x, 60995u))), Struct_1(vec3<i32>(u_input.e, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(var_0.b, vec4<i32>(-51558i, 1i, u_input.b.x, u_input.a.x)), ~var_0.b), ~_wgslsmith_div_i32(-49434i, arg_0.a.b.a.x)), abs(global0[_wgslsmith_index_u32(~34632u, 29u)]), vec2<u32>(reverseBits(~71501u), arg_0.a.b.c.x)), _wgslsmith_f_op_vec4_f32(arg_0.a.c * _wgslsmith_f_op_vec4_f32(-vec4<f32>(2045f, -1451f, _wgslsmith_f_op_f32(arg_0.a.c.x - var_1.c.x), var_1.c.x))));
    let var_3 = 9874u;
    return ~vec2<u32>(countOneBits(~arg_0.a.b.c.x) << ((var_3 & 4294967295u) % 32u), 101108u);
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> Struct_3 {
    var var_0 = ~max(min(func_2(Struct_3(Struct_2(Struct_1(u_input.b, vec4<i32>(u_input.e, u_input.c.x, u_input.e, 1i), u_input.d.xy), Struct_1(u_input.b, global0[_wgslsmith_index_u32(1u, 29u)], arg_0), vec4<f32>(394f, 957f, -771f, 673f))), false, ~u_input.b), func_2(Struct_3(Struct_2(Struct_1(u_input.b, vec4<i32>(2147483647i, u_input.c.x, -67843i, u_input.e), u_input.d.zx), Struct_1(vec3<i32>(6855i, -1i, -50115i), vec4<i32>(0i, 1i, u_input.c.x, -31296i), vec2<u32>(1u, u_input.d.x)), vec4<f32>(976f, -232f, 1000f, 956f))), false, vec3<i32>(-1i, u_input.a.x, u_input.e))), arg_0 ^ vec2<u32>(1u, u_input.d.x ^ u_input.d.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    var var_2 = -1000f;
    var_0 = arg_0;
    var_0 = reverseBits(_wgslsmith_clamp_vec2_u32(~abs(select(u_input.d.yz, u_input.d.xx, vec2<bool>(true, false))), arg_0, ~vec2<u32>(var_0.x & arg_1, u_input.d.x ^ arg_1)));
    return Struct_3(Struct_2(Struct_1(-(u_input.b | u_input.b), global0[_wgslsmith_index_u32(19505u, 29u)], ~vec2<u32>(50736u, 4294967295u)), Struct_1(min(_wgslsmith_sub_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, -46394i, u_input.e)), vec3<i32>(0i, 23076i, 0i)), ~global0[_wgslsmith_index_u32(abs(18992u), 29u)], _wgslsmith_add_vec2_u32(~vec2<u32>(arg_0.x, u_input.d.x), u_input.d.yx)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 565f, 926f)))), vec4<f32>(_wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_f_op_f32(-var_1.x), var_1.x, _wgslsmith_div_f32(1562f, var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 9>();
    global0 = array<vec4<i32>, 29>();
    var var_0 = (-1i < u_input.c.x) && true;
    var var_1 = func_1(~vec2<u32>(~min(u_input.d.x, 4294967295u), ~reverseBits(72373u)), 1u);
    var var_2 = 13960i;
    var_0 = !(!(false || (any(vec3<bool>(true, true, false)) && true)));
    var_1 = Struct_3(func_1(_wgslsmith_mod_vec2_u32(vec2<u32>(countOneBits(62076u), ~var_1.a.b.c.x), u_input.d.xy), _wgslsmith_div_u32(u_input.d.x, _wgslsmith_mod_u32(func_1(var_1.a.b.c, 1u).a.b.c.x, var_1.a.b.c.x))).a);
    var_2 = var_1.a.b.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(-(u_input.b.xy | vec2<i32>(-56847i, -4998i)), select(-u_input.a, global1[_wgslsmith_index_u32(~4294967295u, 9u)], vec2<bool>(true, true))), vec2<i32>(-1i) * -reverseBits(vec2<i32>(9891i, 0i))), -1266f);
}

