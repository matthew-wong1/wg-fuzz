struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(vec3<bool>(true, true, false), vec3<u32>(9035u, 0u, 11888u), -309f), Struct_3(vec3<bool>(false, true, true), vec3<u32>(76535u, 4294967295u, 3015u), 1270f), Struct_3(vec3<bool>(true, false, false), vec3<u32>(1u, 0u, 0u), 252f), Struct_3(vec3<bool>(false, true, true), vec3<u32>(1u, 0u, 4294967295u), -723f), Struct_3(vec3<bool>(false, false, false), vec3<u32>(24712u, 8304u, 1u), 337f), Struct_3(vec3<bool>(false, true, false), vec3<u32>(0u, 61106u, 4294967295u), -1402f), Struct_3(vec3<bool>(false, true, true), vec3<u32>(20127u, 1u, 1u), -252f), Struct_3(vec3<bool>(true, true, false), vec3<u32>(635u, 4294967295u, 55906u), 141f), Struct_3(vec3<bool>(false, false, false), vec3<u32>(58732u, 0u, 1u), 1372f), Struct_3(vec3<bool>(true, true, false), vec3<u32>(3348u, 44463u, 37931u), -1061f), Struct_3(vec3<bool>(true, false, false), vec3<u32>(1u, 4294967295u, 39588u), -597f), Struct_3(vec3<bool>(true, false, true), vec3<u32>(1u, 58804u, 4294967295u), -762f), Struct_3(vec3<bool>(true, true, true), vec3<u32>(0u, 1u, 14941u), 888f), Struct_3(vec3<bool>(true, true, false), vec3<u32>(100814u, 0u, 51493u), 898f), Struct_3(vec3<bool>(true, false, false), vec3<u32>(11003u, 29611u, 8234u), 532f), Struct_3(vec3<bool>(true, true, true), vec3<u32>(34332u, 0u, 1u), 142f), Struct_3(vec3<bool>(false, true, false), vec3<u32>(12780u, 26513u, 38636u), 985f), Struct_3(vec3<bool>(true, true, false), vec3<u32>(3348u, 4294967295u, 1u), -1994f), Struct_3(vec3<bool>(false, true, false), vec3<u32>(1u, 24174u, 0u), -183f), Struct_3(vec3<bool>(false, true, true), vec3<u32>(26821u, 0u, 0u), -1386f));

var<private> global1: array<vec3<f32>, 18>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec2<f32>, arg_3: vec4<f32>) -> i32 {
    var var_0 = Struct_2(arg_3, _wgslsmith_sub_i32(firstTrailingBit(1i), arg_1), arg_3.x, Struct_1(max(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a), vec3<u32>(1u, u_input.a, u_input.a)), abs(vec3<u32>(1u, 0u, u_input.a)) | _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.b.x, u_input.b.x), vec3<u32>(25273u, 58038u, 121890u))), countOneBits(82826u) < ~firstTrailingBit(46745u), vec2<i32>(_wgslsmith_mod_i32(arg_1, arg_1 >> (u_input.b.x % 32u)), arg_0), -max(_wgslsmith_add_vec4_i32(vec4<i32>(-20500i, arg_0, -50941i, arg_1), vec4<i32>(arg_0, 78291i, -39439i, 14617i)), -vec4<i32>(-2147483647i, arg_1, arg_0, arg_1))));
    global0 = array<Struct_3, 20>();
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(var_0.a)), var_0.a)))) + vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.x))), 976f, arg_3.x, _wgslsmith_f_op_f32(-arg_2.x))), min(_wgslsmith_sub_i32(arg_0, _wgslsmith_add_i32(_wgslsmith_mult_i32(-1i, 1i), _wgslsmith_add_i32(47255i, arg_1))), -var_0.b), 419f, Struct_1(abs(vec3<u32>(39294u, u_input.a, var_0.d.a.x) & ~vec3<u32>(u_input.a, u_input.b.x, 66609u)), var_0.d.b, var_0.d.c, select(vec4<i32>(_wgslsmith_div_i32(var_0.d.c.x, arg_0), countOneBits(arg_0), firstTrailingBit(arg_0), select(1i, -1i, true)), vec4<i32>(-1i) * -var_0.d.d, var_0.d.b)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)), -1046f, var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(arg_3, arg_3))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(arg_3)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1099f, arg_2.x, 320f, var_0.c)))))), i32(-1i) * -var_0.d.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1387f)), var_0.c)) - var_0.c), Struct_1(~(~var_0.d.a), any(!vec4<bool>(false, var_0.d.b, var_0.d.b, false)), var_0.d.d.yz, -(-var_0.d.d << (~vec4<u32>(4294967295u, var_0.d.a.x, u_input.a, 1410u) % vec4<u32>(32u)))));
    var var_2 = vec4<i32>(~25072i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, -1i), -(~var_0.d.c))), ~(~_wgslsmith_mod_i32(-37358i, arg_1)), abs(arg_1));
    return reverseBits(var_0.d.c.x);
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    return Struct_1(countOneBits(vec3<u32>(_wgslsmith_mod_u32(u_input.b.x, 9955u), abs(u_input.b.x), u_input.b.x)), true, -vec2<i32>(func_3(~29667i, _wgslsmith_mod_i32(-2147483647i, 54126i), vec2<f32>(125f, 879f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1125f, 1130f, 2113f, -1476f)))), _wgslsmith_add_i32(-48048i, _wgslsmith_clamp_i32(-43895i, -32446i, 0i))), countOneBits(vec4<i32>(1i, 1i, 1i, 1i)) << (~select(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, u_input.a, 49163u), vec4<u32>(u_input.a, 1u, 51848u, 65876u)), vec4<u32>(4294967295u, 88588u, u_input.b.x, 17263u), true) % vec4<u32>(32u)));
}

fn func_1() -> Struct_3 {
    let var_0 = func_2(max(vec2<u32>(firstLeadingBit(45152u) << (_wgslsmith_div_u32(0u, 1u) % 32u), 0u), ~(u_input.b & ~u_input.b)));
    global1 = array<vec3<f32>, 18>();
    global0 = array<Struct_3, 20>();
    let var_1 = func_2(select(~(~vec2<u32>(63459u, var_0.a.x)), ~(~var_0.a.yz), true));
    let var_2 = ~min(-var_1.d.yx, max(select(vec2<i32>(8268i, 15212i), vec2<i32>(var_0.c.x, var_1.d.x), var_0.b), _wgslsmith_mod_vec2_i32(var_0.d.zw, var_1.d.yz)) & vec2<i32>(-21682i, firstTrailingBit(2147483647i)));
    return global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(var_1.a.zz, u_input.b)), 20u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 20>();
    let var_0 = Struct_1(~(~(~(~vec3<u32>(u_input.a, u_input.b.x, 18369u)))), false, (vec2<i32>(~6138i, max(2147483647i, -5650i)) << (vec2<u32>(u_input.b.x, u_input.a) % vec2<u32>(32u))) << (_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, 0u)) ^ (vec2<u32>(u_input.a, u_input.b.x) | vec2<u32>(0u, 93018u)), u_input.b) % vec2<u32>(32u)), -reverseBits(vec4<i32>(_wgslsmith_mod_i32(2147483647i, -46065i), ~17489i, -1i, ~(-2147483647i))));
    global1 = array<vec3<f32>, 18>();
    let var_1 = 1654f;
    global1 = array<vec3<f32>, 18>();
    var var_2 = func_1();
    global0 = array<Struct_3, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(func_1().b.x, ~2147483647i | var_0.c.x);
}

