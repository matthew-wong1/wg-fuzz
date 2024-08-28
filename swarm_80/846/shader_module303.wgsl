struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<u32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<f32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(Struct_1(-14914i, vec2<bool>(false, true), vec4<u32>(1u, 1u, 32372u, 21528u), 4294967295u, -302f), Struct_1(-229i, vec2<bool>(false, false), vec4<u32>(58716u, 4294967295u, 5719u, 45817u), 1u, -1226f), -109f, 1i), Struct_3(Struct_1(1i, vec2<bool>(true, false), vec4<u32>(27989u, 0u, 0u, 54158u), 0u, -493f), Struct_1(3152i, vec2<bool>(true, true), vec4<u32>(35312u, 4294967295u, 105268u, 103115u), 1u, 1585f), -305f, -1i), Struct_3(Struct_1(2147483647i, vec2<bool>(false, false), vec4<u32>(48213u, 0u, 1u, 7500u), 1u, -1550f), Struct_1(-12774i, vec2<bool>(false, true), vec4<u32>(56859u, 0u, 77555u, 5464u), 1u, -322f), 357f, 30838i), Struct_3(Struct_1(-66212i, vec2<bool>(true, false), vec4<u32>(1u, 0u, 102896u, 12808u), 1u, -1395f), Struct_1(19677i, vec2<bool>(false, false), vec4<u32>(24620u, 0u, 638u, 0u), 0u, -2313f), 129f, -1i), Struct_3(Struct_1(-11951i, vec2<bool>(false, true), vec4<u32>(1u, 0u, 1u, 0u), 1u, 949f), Struct_1(2147483647i, vec2<bool>(true, true), vec4<u32>(0u, 1u, 1u, 18401u), 1u, 340f), 291f, 31i), Struct_3(Struct_1(4211i, vec2<bool>(false, false), vec4<u32>(0u, 53780u, 14189u, 55934u), 45794u, -467f), Struct_1(0i, vec2<bool>(false, false), vec4<u32>(0u, 80355u, 44775u, 93738u), 48821u, -1046f), 288f, -1i), Struct_3(Struct_1(72147i, vec2<bool>(true, true), vec4<u32>(0u, 58035u, 1u, 38922u), 71648u, -218f), Struct_1(30587i, vec2<bool>(true, true), vec4<u32>(1u, 9655u, 15960u, 29425u), 1u, 1478f), -276f, 40388i), Struct_3(Struct_1(1i, vec2<bool>(false, true), vec4<u32>(3373u, 23683u, 4294967295u, 0u), 58258u, 428f), Struct_1(21667i, vec2<bool>(true, true), vec4<u32>(28856u, 3152u, 0u, 4294967295u), 434u, -1000f), 1000f, -508i), Struct_3(Struct_1(3115i, vec2<bool>(true, false), vec4<u32>(55227u, 87203u, 1u, 0u), 1u, 727f), Struct_1(-54575i, vec2<bool>(false, true), vec4<u32>(58625u, 2145u, 6584u, 50468u), 4294967295u, -1000f), 1929f, -13005i), Struct_3(Struct_1(1i, vec2<bool>(true, true), vec4<u32>(4294967295u, 4294967295u, 0u, 31564u), 4294967295u, -1134f), Struct_1(-28870i, vec2<bool>(false, true), vec4<u32>(29190u, 44517u, 0u, 23815u), 0u, 626f), 1246f, -6937i), Struct_3(Struct_1(-1i, vec2<bool>(false, true), vec4<u32>(33115u, 11011u, 1u, 0u), 78432u, 633f), Struct_1(33083i, vec2<bool>(true, false), vec4<u32>(102063u, 1u, 47159u, 4294967295u), 4294967295u, 1340f), -789f, i32(-2147483648)), Struct_3(Struct_1(-45815i, vec2<bool>(false, true), vec4<u32>(0u, 0u, 17594u, 1314u), 4294967295u, 102f), Struct_1(0i, vec2<bool>(true, false), vec4<u32>(44078u, 1u, 1u, 1496u), 1u, -1000f), -1124f, i32(-2147483648)), Struct_3(Struct_1(-1i, vec2<bool>(true, true), vec4<u32>(114335u, 4294967295u, 4294967295u, 56733u), 19617u, -989f), Struct_1(0i, vec2<bool>(true, true), vec4<u32>(9454u, 4294967295u, 41431u, 22942u), 0u, 1338f), -764f, -37113i), Struct_3(Struct_1(-11084i, vec2<bool>(false, false), vec4<u32>(0u, 55424u, 171178u, 95969u), 38381u, -656f), Struct_1(i32(-2147483648), vec2<bool>(false, false), vec4<u32>(1u, 0u, 39496u, 40741u), 0u, 1884f), -622f, 1i), Struct_3(Struct_1(i32(-2147483648), vec2<bool>(true, false), vec4<u32>(30214u, 0u, 9801u, 16732u), 24937u, 428f), Struct_1(0i, vec2<bool>(true, false), vec4<u32>(53844u, 4294967295u, 3575u, 8550u), 1u, -436f), 294f, -22026i), Struct_3(Struct_1(i32(-2147483648), vec2<bool>(true, true), vec4<u32>(20776u, 1u, 4294967295u, 35509u), 105721u, 785f), Struct_1(1i, vec2<bool>(true, false), vec4<u32>(79739u, 4294967295u, 1u, 1u), 0u, -945f), 320f, 12167i), Struct_3(Struct_1(i32(-2147483648), vec2<bool>(false, false), vec4<u32>(30801u, 50801u, 67362u, 55035u), 4294967295u, -277f), Struct_1(2147483647i, vec2<bool>(false, true), vec4<u32>(41188u, 4294967295u, 1u, 1u), 0u, 863f), -1087f, -21954i), Struct_3(Struct_1(6550i, vec2<bool>(true, false), vec4<u32>(21868u, 15775u, 4294967295u, 48861u), 0u, 464f), Struct_1(-31603i, vec2<bool>(false, true), vec4<u32>(4294967295u, 25004u, 1415u, 1u), 1907u, -943f), 774f, 0i), Struct_3(Struct_1(-26685i, vec2<bool>(false, true), vec4<u32>(1u, 34482u, 45284u, 1u), 1u, -631f), Struct_1(20047i, vec2<bool>(false, true), vec4<u32>(4294967295u, 1u, 20503u, 44505u), 18700u, 371f), 100f, 0i), Struct_3(Struct_1(1i, vec2<bool>(false, false), vec4<u32>(1u, 9072u, 4294967295u, 4195u), 1u, -173f), Struct_1(1i, vec2<bool>(true, true), vec4<u32>(79755u, 27733u, 0u, 32252u), 1u, 791f), 223f, 1i));

var<private> global2: array<Struct_4, 20>;

var<private> global3: Struct_4;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = 478f;
    let var_1 = u_input.c;
    global2 = array<Struct_4, 20>();
    global0 = -1000f;
    global2 = array<Struct_4, 20>();
    return -1i;
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    global3 = global2[_wgslsmith_index_u32(u_input.d.x | u_input.d.x, 20u)];
    var var_0 = Struct_4(vec3<i32>(~func_3(), ~(-2147483647i >> (u_input.d.x % 32u)), global3.a.x));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -123f);
    var var_1 = ~var_0.a.x;
    let var_2 = max(min(select(u_input.d.x, max(u_input.d.x, 4294967295u), arg_0.x), _wgslsmith_clamp_u32(countOneBits(u_input.d.x) << (~20853u % 32u), ~u_input.d.x, u_input.d.x)), u_input.d.x ^ 1u);
    return Struct_1(global3.a.x, vec2<bool>(arg_0.x, arg_0.x), vec4<u32>((var_2 | 1u) | ~4294967295u, 1u, 58457u, ~u_input.d.x), ~u_input.d.x, 835f);
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = Struct_2(func_2(vec3<bool>(true, true, true)), vec3<bool>(true, _wgslsmith_mult_i32(2147483647i, -u_input.c.x) == u_input.b, !(all(vec3<bool>(true, true, true)) && true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1341f), _wgslsmith_f_op_f32(-362f * 108f), true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1000f)), 1f)))), global3.a.x, Struct_1(u_input.b, vec2<bool>(!any(vec3<bool>(true, false, true)), true), _wgslsmith_clamp_vec4_u32(~countOneBits(vec4<u32>(0u, arg_0, 0u, 0u)), max(vec4<u32>(101223u, arg_0, arg_0, arg_0), ~vec4<u32>(1184u, 1u, 33173u, 6003u)), vec4<u32>(arg_0, _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(1u, 26268u, u_input.d.x)), 9116u, u_input.d.x)), ~(~_wgslsmith_mult_u32(u_input.d.x, 4294967295u)), _wgslsmith_f_op_f32(-2989f - _wgslsmith_f_op_f32(select(1f, -771f, false)))));
    let var_1 = Struct_3(var_0.e, Struct_1(reverseBits(_wgslsmith_add_i32(u_input.c.x, global3.a.x)), vec2<bool>(any(!vec2<bool>(var_0.a.b.x, var_0.e.b.x)), all(select(vec4<bool>(false, var_0.b.x, var_0.e.b.x, var_0.b.x), vec4<bool>(true, var_0.b.x, false, true), vec4<bool>(var_0.a.b.x, var_0.b.x, var_0.a.b.x, var_0.e.b.x)))), ~vec4<u32>(var_0.a.d, u_input.d.x, 45248u, u_input.d.x) ^ var_0.e.c, u_input.d.x, _wgslsmith_f_op_f32(var_0.c.x * -692f)), -2744f, var_0.e.a >> (1u % 32u));
    global2 = array<Struct_4, 20>();
    let var_2 = !(!vec4<bool>(true, var_0.b.x, var_1.a.b.x, true));
    var var_3 = abs(_wgslsmith_add_vec2_i32(global3.a.yz, vec2<i32>(_wgslsmith_sub_i32(-1i, global3.a.x), reverseBits(-1952i))) ^ (global3.a.yy << ((u_input.d.yx >> (max(var_0.e.c.yw, vec2<u32>(71838u, var_0.a.d)) % vec2<u32>(32u))) % vec2<u32>(32u))));
    return Struct_3(func_2(var_2.xxz), func_2(select(var_2.yyx, !vec3<bool>(var_2.x, false, true), _wgslsmith_div_i32(var_3.x, var_0.a.a) >= 2147483647i)), _wgslsmith_f_op_f32(ceil(-1057f)), _wgslsmith_dot_vec2_i32(global3.a.xx, vec2<i32>(-54790i, var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, !(~(~15047u) >= ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 47690u, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x))), true);
    let var_1 = func_1(u_input.d.x);
    global1 = array<Struct_3, 20>();
    let var_2 = global2[_wgslsmith_index_u32(~(~(~19152u)), 20u)];
    global0 = -648f;
    global0 = _wgslsmith_f_op_f32(max(var_1.b.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-544f + var_1.b.e)))) * var_1.a.e)));
    global3 = Struct_4(countOneBits(firstTrailingBit(var_2.a)));
    global1 = array<Struct_3, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<i32>(_wgslsmith_clamp_i32(max(49795i, 7641i), func_3(), global3.a.x), -1i, (u_input.b | -21557i) >> (var_1.a.c.x % 32u), 33343i), (u_input.c & firstTrailingBit(u_input.c)) ^ max(_wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(1i, -1676i, -9770i, var_1.a.a)), u_input.c)));
}

