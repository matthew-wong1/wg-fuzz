struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(true, -757f), Struct_3(true, -1000f), Struct_3(true, 1805f), Struct_3(false, -1000f), Struct_3(true, -1516f), Struct_3(false, 538f), Struct_3(true, 672f), Struct_3(false, 519f), Struct_3(true, -1178f), Struct_3(true, -815f), Struct_3(true, -134f), Struct_3(true, 1715f), Struct_3(true, 388f), Struct_3(true, 609f), Struct_3(true, 1863f), Struct_3(false, 1198f), Struct_3(true, -1342f), Struct_3(true, -1000f), Struct_3(true, 900f), Struct_3(true, 2156f), Struct_3(true, -677f), Struct_3(true, 147f), Struct_3(false, 227f));

var<private> global2: bool;

var<private> global3: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<i32>(53118i, -9218i), vec2<f32>(1446f, 363f), vec4<bool>(true, true, true, true)), Struct_1(vec2<i32>(0i, 2147483647i), vec2<f32>(866f, 1574f), vec4<bool>(false, false, true, true)), Struct_1(vec2<i32>(37136i, 2147483647i), vec2<f32>(1272f, -729f), vec4<bool>(true, false, true, true)), Struct_1(vec2<i32>(56655i, i32(-2147483648)), vec2<f32>(1470f, -1873f), vec4<bool>(false, false, false, true)), Struct_1(vec2<i32>(-1i, -1i), vec2<f32>(-689f, -734f), vec4<bool>(false, false, true, false)), Struct_1(vec2<i32>(27740i, -12555i), vec2<f32>(907f, 1972f), vec4<bool>(true, true, false, true)), Struct_1(vec2<i32>(1i, -7687i), vec2<f32>(-1514f, -621f), vec4<bool>(true, false, false, true)), Struct_1(vec2<i32>(-1i, -2530i), vec2<f32>(1000f, 1000f), vec4<bool>(false, false, false, true)), Struct_1(vec2<i32>(i32(-2147483648), -1i), vec2<f32>(398f, -1000f), vec4<bool>(true, false, false, true)), Struct_1(vec2<i32>(-26842i, -4440i), vec2<f32>(1152f, -1518f), vec4<bool>(true, true, false, true)), Struct_1(vec2<i32>(0i, 0i), vec2<f32>(-1644f, 1495f), vec4<bool>(true, false, false, true)), Struct_1(vec2<i32>(1i, 31072i), vec2<f32>(2007f, 684f), vec4<bool>(false, true, false, true)), Struct_1(vec2<i32>(747i, -41306i), vec2<f32>(212f, -1429f), vec4<bool>(false, false, false, false)), Struct_1(vec2<i32>(-17341i, 51192i), vec2<f32>(668f, -423f), vec4<bool>(false, false, false, false)), Struct_1(vec2<i32>(-12958i, -5054i), vec2<f32>(192f, 1209f), vec4<bool>(false, true, false, true)), Struct_1(vec2<i32>(-1i, 19667i), vec2<f32>(-316f, -220f), vec4<bool>(false, true, true, true)), Struct_1(vec2<i32>(1i, i32(-2147483648)), vec2<f32>(541f, 104f), vec4<bool>(false, true, false, false)), Struct_1(vec2<i32>(12094i, 9186i), vec2<f32>(539f, 2069f), vec4<bool>(true, true, true, false)), Struct_1(vec2<i32>(16846i, 2147483647i), vec2<f32>(984f, -531f), vec4<bool>(false, true, true, true)), Struct_1(vec2<i32>(33637i, 20339i), vec2<f32>(-225f, -1409f), vec4<bool>(false, true, true, true)), Struct_1(vec2<i32>(0i, 0i), vec2<f32>(1825f, -1000f), vec4<bool>(true, false, false, true)), Struct_1(vec2<i32>(-1i, 0i), vec2<f32>(-2166f, 905f), vec4<bool>(true, true, false, false)), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec2<f32>(-1136f, 1035f), vec4<bool>(false, false, false, false)), Struct_1(vec2<i32>(-27482i, 103518i), vec2<f32>(-156f, -170f), vec4<bool>(true, true, true, true)), Struct_1(vec2<i32>(0i, 1i), vec2<f32>(662f, 256f), vec4<bool>(true, true, false, false)), Struct_1(vec2<i32>(1i, 0i), vec2<f32>(-1062f, -2649f), vec4<bool>(false, true, false, true)), Struct_1(vec2<i32>(i32(-2147483648), -1i), vec2<f32>(-884f, 1925f), vec4<bool>(false, false, true, false)));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: vec4<bool>) -> bool {
    var var_0 = arg_2;
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_2 {
    global3 = array<Struct_1, 27>();
    let var_0 = !vec2<bool>(arg_0.a, (func_3(arg_0.b, -901f, Struct_2(arg_1.x, Struct_1(vec2<i32>(arg_0.b.a.x, arg_0.b.a.x), vec2<f32>(arg_0.b.b.x, global0.b.x), arg_0.b.c), arg_0.c), global0.c) & select(arg_0.a, true, true)) || false);
    let var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 23u)];
    global3 = array<Struct_1, 27>();
    let var_2 = arg_0.b;
    return arg_0;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -204f);
    let var_1 = func_2(Struct_2(false, Struct_1(_wgslsmith_sub_vec2_i32(global0.a, _wgslsmith_mult_vec2_i32(vec2<i32>(1i, global0.a.x), arg_1.ww)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.x, -1423f), vec2<f32>(250f, -1294f))), _wgslsmith_f_op_vec2_f32(-arg_0.yx)), select(!global0.c, global0.c, vec4<bool>(global0.c.x, true, true, global0.c.x))), vec4<u32>(abs(~53874u), abs(4294967295u), abs(u_input.a.x << (u_input.a.x % 32u)), _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.b), vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, 0u)), max(vec4<u32>(50894u, u_input.a.x, 4294967295u, 31240u), vec4<u32>(2602u, u_input.b, u_input.b, 6509u))))), vec2<bool>(global0.c.x, false));
    var var_2 = var_1;
    var var_3 = Struct_1(-(var_1.b.a >> (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 26244u, 87278u, 25835u), vec4<u32>(var_2.c.x, u_input.b, u_input.b, u_input.a.x)), var_2.c.x) % vec2<u32>(32u))), arg_0.xy, func_2(Struct_2(!var_1.a, func_2(func_2(Struct_2(var_2.a, global3[_wgslsmith_index_u32(var_1.c.x, 27u)], vec4<u32>(1u, var_1.c.x, var_2.c.x, 4294967295u)), vec2<bool>(var_1.a, false)), vec2<bool>(true, true)).b, vec4<u32>(4294967295u, 0u, 4294967295u, var_1.c.x) >> (vec4<u32>(4294967295u, var_2.c.x, u_input.b, 31270u) % vec4<u32>(32u))), !select(vec2<bool>(false, var_2.a), select(vec2<bool>(false, var_1.b.c.x), vec2<bool>(true, true), global0.c.x), any(vec2<bool>(false, var_2.b.c.x)))).b.c);
    let var_4 = arg_0.zz;
    return var_1;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: Struct_2) -> bool {
    var var_0 = !arg_2.b.c.zwy;
    var var_1 = vec3<u32>(arg_2.c.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.c.x, 0u, arg_2.c.x, 1u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_2.c.x, 3774u), vec4<u32>(arg_2.c.x, u_input.b, arg_2.c.x, 43050u))) & 4744u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x));
    global3 = array<Struct_1, 27>();
    global3 = array<Struct_1, 27>();
    let var_2 = u_input.a.x;
    return global0.a.x > -6677i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(1u, 27u)];
    global2 = !global0.c.x;
    let var_1 = Struct_2((((54193u >= u_input.a.x) || (var_0.c.x == false)) | (true && (0u < u_input.b))) | select(func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b.x, 138f, var_0.b.x, -268f), vec4<f32>(557f, -287f, var_0.b.x, global0.b.x), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(465f, global0.b.x, -1000f)), func_1(vec3<f32>(global0.b.x, var_0.b.x, global0.b.x), vec4<i32>(global0.a.x, global0.a.x, -525i, -57035i))), global0.c.x, global0.c.x), func_2(func_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.b.x, 750f, var_0.b.x))))), vec4<i32>(2147483647i, ~(-2895i), ~var_0.a.x, abs(-1i))), func_1(vec3<f32>(2364f, _wgslsmith_f_op_f32(f32(-1f) * -1212f), _wgslsmith_f_op_f32(round(global0.b.x))), _wgslsmith_sub_vec4_i32(-vec4<i32>(var_0.a.x, global0.a.x, global0.a.x, u_input.c), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, global0.a.x, 9237i, u_input.c), vec4<i32>(var_0.a.x, var_0.a.x, -2147483647i, 29511i)))).b.c.xx).b, vec4<u32>(u_input.b, ~(~(~19703u)), 4294967295u, ~0u));
    global2 = var_0.c.x;
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32((var_1.c.zwx << (var_1.c.wwx % vec3<u32>(32u))) ^ ~_wgslsmith_mod_vec3_u32(firstLeadingBit(var_1.c.yzx), var_1.c.zwx), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(select(0u, 4294967295u, false), min(48888u, var_1.c.x)), 1u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, 79911u), u_input.a.x)), var_1.c.zyw)), 23u)];
    let var_3 = true;
    global2 = any(!vec2<bool>(any(func_2(var_1, vec2<bool>(false, var_3)).b.c), true));
    var var_4 = ~4294967295u;
    var var_5 = func_2(var_1, func_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(476f, _wgslsmith_div_f32(-1723f, -1203f), _wgslsmith_f_op_f32(-837f * 644f)))), min(vec4<i32>(var_1.b.a.x, global0.a.x, -var_0.a.x, ~(-73018i)), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-9154i, var_1.b.a.x, -1i, global0.a.x), vec4<i32>(var_1.b.a.x, u_input.d.x, 2147483647i, var_1.b.a.x), vec4<i32>(global0.a.x, var_1.b.a.x, -2147483647i, var_1.b.a.x)), select(vec4<i32>(-21048i, 1i, var_1.b.a.x, -40321i), vec4<i32>(u_input.c, 18700i, -14640i, 46403i), vec4<bool>(true, true, true, false))))).b.c.wy);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

