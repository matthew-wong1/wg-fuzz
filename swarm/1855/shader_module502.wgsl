struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(Struct_2(false, vec4<u32>(1u, 25186u, 10160u, 60358u)), vec2<i32>(-33145i, 4969i), Struct_2(false, vec4<u32>(37405u, 56577u, 94200u, 1u))), Struct_3(Struct_2(true, vec4<u32>(887u, 0u, 4294967295u, 28192u)), vec2<i32>(-1i, 1i), Struct_2(true, vec4<u32>(1u, 6468u, 4294967295u, 59789u))), Struct_3(Struct_2(true, vec4<u32>(0u, 1u, 7059u, 4294967295u)), vec2<i32>(-90865i, -10124i), Struct_2(false, vec4<u32>(45936u, 1u, 40133u, 64198u))), Struct_3(Struct_2(false, vec4<u32>(54678u, 17849u, 8873u, 0u)), vec2<i32>(59554i, -34981i), Struct_2(false, vec4<u32>(4294967295u, 4294967295u, 0u, 0u))), Struct_3(Struct_2(false, vec4<u32>(50021u, 16235u, 0u, 4294967295u)), vec2<i32>(-1i, 2147483647i), Struct_2(false, vec4<u32>(2253u, 1u, 37942u, 26663u))), Struct_3(Struct_2(false, vec4<u32>(4294967295u, 82475u, 1u, 4294967295u)), vec2<i32>(i32(-2147483648), -12674i), Struct_2(true, vec4<u32>(0u, 13247u, 0u, 4294967295u))), Struct_3(Struct_2(false, vec4<u32>(1u, 4294967295u, 1u, 4294967295u)), vec2<i32>(28393i, 71265i), Struct_2(false, vec4<u32>(47008u, 0u, 18532u, 968u))), Struct_3(Struct_2(true, vec4<u32>(5089u, 0u, 22299u, 4294967295u)), vec2<i32>(-1i, -20467i), Struct_2(false, vec4<u32>(15461u, 22751u, 93736u, 54399u))), Struct_3(Struct_2(false, vec4<u32>(0u, 40660u, 4294967295u, 98410u)), vec2<i32>(-1i, 2914i), Struct_2(true, vec4<u32>(1u, 53088u, 16301u, 56816u))), Struct_3(Struct_2(true, vec4<u32>(31191u, 0u, 0u, 84174u)), vec2<i32>(i32(-2147483648), 22515i), Struct_2(true, vec4<u32>(57982u, 48365u, 0u, 0u))), Struct_3(Struct_2(true, vec4<u32>(4294967295u, 40501u, 0u, 22977u)), vec2<i32>(1i, -25016i), Struct_2(false, vec4<u32>(36957u, 20019u, 1u, 4294967295u))), Struct_3(Struct_2(true, vec4<u32>(4294967295u, 0u, 1u, 0u)), vec2<i32>(2523i, -1i), Struct_2(true, vec4<u32>(46704u, 51436u, 42847u, 0u))), Struct_3(Struct_2(true, vec4<u32>(20737u, 34881u, 47841u, 1072u)), vec2<i32>(0i, 48405i), Struct_2(false, vec4<u32>(19637u, 4294967295u, 36503u, 0u))), Struct_3(Struct_2(true, vec4<u32>(4294967295u, 0u, 1u, 1u)), vec2<i32>(0i, 1i), Struct_2(true, vec4<u32>(17685u, 11431u, 4294967295u, 4294967295u))), Struct_3(Struct_2(true, vec4<u32>(1u, 0u, 1u, 0u)), vec2<i32>(0i, 37110i), Struct_2(true, vec4<u32>(1326u, 1u, 4294967295u, 1u))), Struct_3(Struct_2(false, vec4<u32>(15352u, 0u, 4294967295u, 1u)), vec2<i32>(i32(-2147483648), -1i), Struct_2(false, vec4<u32>(1u, 16158u, 1u, 4294967295u))), Struct_3(Struct_2(false, vec4<u32>(16692u, 0u, 0u, 0u)), vec2<i32>(i32(-2147483648), 35673i), Struct_2(false, vec4<u32>(1u, 4294967295u, 80179u, 36315u))), Struct_3(Struct_2(true, vec4<u32>(51318u, 77101u, 27809u, 46128u)), vec2<i32>(1i, -7900i), Struct_2(true, vec4<u32>(1u, 4294967295u, 70588u, 61332u))), Struct_3(Struct_2(true, vec4<u32>(36407u, 133345u, 14460u, 24560u)), vec2<i32>(2147483647i, -2892i), Struct_2(true, vec4<u32>(4294967295u, 81197u, 1u, 4294967295u))), Struct_3(Struct_2(false, vec4<u32>(16833u, 86036u, 4294967295u, 33503u)), vec2<i32>(24498i, -35464i), Struct_2(false, vec4<u32>(4294967295u, 21462u, 7901u, 4294967295u))), Struct_3(Struct_2(true, vec4<u32>(23356u, 4294967295u, 30029u, 0u)), vec2<i32>(-10893i, 16801i), Struct_2(true, vec4<u32>(71789u, 1u, 0u, 87512u))), Struct_3(Struct_2(true, vec4<u32>(0u, 0u, 4294967295u, 1u)), vec2<i32>(-60035i, -1i), Struct_2(true, vec4<u32>(4294967295u, 12191u, 1u, 1u))), Struct_3(Struct_2(true, vec4<u32>(22146u, 20184u, 42700u, 64817u)), vec2<i32>(0i, 23187i), Struct_2(false, vec4<u32>(1u, 85310u, 54636u, 24210u))));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> f32 {
    global0 = !all(select(vec4<bool>(any(vec2<bool>(arg_0.c.a.a, false)), false, select(arg_0.c.a.a, arg_0.b.a, arg_0.b.a), true), vec4<bool>(true, arg_0.b.a, arg_0.b.b, true), !vec4<bool>(false, arg_0.b.a, arg_0.c.a.a, arg_0.c.a.a)));
    let var_0 = Struct_1(false, !any(!select(vec3<bool>(arg_0.c.c.a, arg_0.b.a, arg_0.b.b), vec3<bool>(arg_0.b.a, arg_0.c.a.a, arg_0.b.b), vec3<bool>(true, false, true))), 1u, -arg_0.b.d);
    let var_1 = arg_0;
    var var_2 = arg_0;
    let var_3 = global1[_wgslsmith_index_u32(~u_input.a, 23u)];
    return _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -106f))))));
}

fn func_2() -> i32 {
    global0 = select(all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(vec2<u32>(70259u, 7283u), Struct_1(true, true, u_input.a, vec3<i32>(u_input.c, 12631i, u_input.c)), Struct_3(Struct_2(true, vec4<u32>(u_input.b, 4294967295u, u_input.a, 1u)), vec2<i32>(-1i, u_input.c), Struct_2(true, vec4<u32>(22700u, u_input.a, 1u, 0u)))), -2110f)) * _wgslsmith_div_f32(-1558f, 503f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) * _wgslsmith_f_op_f32(step(863f, -124f))), !(u_input.b >= u_input.b)) || false;
    return min(0i, _wgslsmith_dot_vec3_i32(-(_wgslsmith_sub_vec3_i32(vec3<i32>(57150i, u_input.c, 1363i), vec3<i32>(u_input.c, 1i, u_input.c)) << (vec3<u32>(u_input.a, u_input.b, 4294967295u) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.c, u_input.c), vec3<i32>(1i, u_input.c, 2147483647i) | vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.c, -62714i, 16971i)), ~(-vec3<i32>(56115i, u_input.c, u_input.c)))));
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_5 {
    var var_0 = -280f;
    let var_1 = vec2<bool>(true, true);
    global0 = false;
    var var_2 = ~(~(~((vec2<u32>(0u, arg_1) << (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u))) >> (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, arg_0), vec2<u32>(0u, 1u)) % vec2<u32>(32u)))));
    var_2 = vec2<u32>(arg_1 | _wgslsmith_clamp_u32(0u, _wgslsmith_div_u32(_wgslsmith_sub_u32(9454u, arg_0), 3057u), arg_1), 3191u);
    return Struct_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(144f))), _wgslsmith_div_f32(-721f, -207f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1008f, -853f)) + _wgslsmith_f_op_f32(select(-138f, _wgslsmith_f_op_f32(f32(-1f) * -221f), true)))), func_2(), vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 26757u), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(arg_1, 4294967295u))) >> (1u % 32u), _wgslsmith_mult_u32(14591u, arg_1), var_2.x), vec4<bool>(true, any(var_1), all(!vec2<bool>(var_1.x, true)), var_1.x), var_1.x);
}

fn func_4(arg_0: Struct_5, arg_1: bool, arg_2: Struct_3) -> vec2<f32> {
    var var_0 = Struct_2(arg_1, arg_2.c.b);
    let var_1 = u_input.c;
    global0 = any(arg_0.d);
    var var_2 = arg_2.c;
    var var_3 = arg_0.d.xzw;
    return _wgslsmith_div_vec2_f32(vec2<f32>(433f, arg_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-241f, -246f))))));
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_2(true, firstLeadingBit(select(vec4<u32>(19269u, 1u, 4294967295u, arg_0 >> (33540u % 32u)), ~vec4<u32>(u_input.a, 0u, arg_1, 0u), vec4<bool>(true, true, true, true))));
    var_0 = Struct_2(var_0.a, ~countOneBits(vec4<u32>(var_0.b.x, _wgslsmith_clamp_u32(33043u, 0u, 9439u), arg_1, arg_0)));
    let var_1 = Struct_4(reverseBits(vec2<u32>(select(~1u, 4015u, false), 1u)), Struct_1(var_0.a, true, ~40224u, ~(~vec3<i32>(-1i, u_input.c, -1i))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u) ^ var_0.b.x, 23u)]);
    return var_1.c.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(u_input.b, 23u)];
    global1 = array<Struct_3, 23>();
    var_0 = Struct_3(var_0.c, ~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.b.x, 0i), var_0.b, _wgslsmith_div_vec2_i32(vec2<i32>(var_0.b.x, var_0.b.x), vec2<i32>(var_0.b.x, 15025i))), func_5(var_0.a.b.x, ~max(abs(u_input.a), 9367u), _wgslsmith_f_op_vec2_f32(func_4(func_1(0u, firstLeadingBit(1u)), false, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b, var_0.c.b.x), var_0.a.b.x), 23u)]))));
    global0 = any(!select(func_1(u_input.b, reverseBits(var_0.a.b.x)).d.zxy, !(!vec3<bool>(true, var_0.a.a, false)), !vec3<bool>(true, var_0.c.a, true)));
    let var_1 = Struct_4(_wgslsmith_mult_vec2_u32(select(var_0.c.b.zz, _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a.b.x, 0u), ~vec2<u32>(1u, 31674u)), vec2<bool>(true, all(vec2<bool>(var_0.a.a, var_0.a.a)))), ~var_0.c.b.wz), Struct_1(!var_0.a.a, var_0.a.a, 30867u, reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.c, u_input.c), vec3<i32>(1i, 4977i, 7882i))) | _wgslsmith_mult_vec3_i32(~vec3<i32>(27931i, 552i, u_input.c), ~vec3<i32>(-2147483647i, var_0.b.x, 35817i))), Struct_3(Struct_2(false, var_0.c.b), var_0.b, func_5(~(~18416u), func_5(_wgslsmith_dot_vec2_u32(vec2<u32>(42801u, var_0.a.b.x), vec2<u32>(32659u, 1u)), 0u, _wgslsmith_f_op_vec2_f32(func_4(Struct_5(703f, u_input.c, var_0.a.b, vec4<bool>(var_0.c.a, var_0.a.a, false, var_0.a.a), var_0.c.a), var_0.a.a, global1[_wgslsmith_index_u32(var_0.c.b.x, 23u)]))).b.x, _wgslsmith_f_op_vec2_f32(func_4(Struct_5(-625f, -15400i, vec4<u32>(4294967295u, 0u, u_input.a, var_0.a.b.x), vec4<bool>(var_0.a.a, var_0.a.a, var_0.c.a, false), false), var_0.b.x > 51442i, global1[_wgslsmith_index_u32(u_input.b, 23u)])))));
    var var_2 = Struct_3(func_5(28584u, 4294967295u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2114f, 313f) - vec2<f32>(1891f, 1060f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-980f, -1463f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1153f, -1150f) * vec2<f32>(590f, -1448f)), func_1(0u, 9249u).d.x)), true & all(vec4<bool>(false, true, true, var_0.c.a))))), abs(var_1.c.b), var_0.c);
    let var_3 = select(func_2(), _wgslsmith_div_i32(var_2.b.x, ~(28756i ^ var_2.b.x) | u_input.c), var_2.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_2.a.b.wzw));
}

