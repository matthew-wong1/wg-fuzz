struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(vec3<u32>(31032u, 0u, 20718u), false, vec3<bool>(false, false, false), false), vec3<i32>(i32(-2147483648), 12067i, -1i), Struct_1(vec3<u32>(52358u, 4294967295u, 30092u), false, vec3<bool>(true, true, false), false), 22382u, 4294967295u), Struct_2(Struct_1(vec3<u32>(5117u, 4294967295u, 53356u), false, vec3<bool>(true, true, false), false), vec3<i32>(26874i, 0i, 0i), Struct_1(vec3<u32>(4294967295u, 67307u, 28071u), true, vec3<bool>(true, false, false), false), 4294967295u, 1u), Struct_2(Struct_1(vec3<u32>(60093u, 88155u, 1u), true, vec3<bool>(false, false, true), false), vec3<i32>(1i, -1i, 11575i), Struct_1(vec3<u32>(26383u, 16210u, 12770u), false, vec3<bool>(false, true, false), false), 9015u, 43482u), Struct_2(Struct_1(vec3<u32>(4294967295u, 36046u, 14151u), true, vec3<bool>(true, false, true), false), vec3<i32>(-1i, 49974i, 1i), Struct_1(vec3<u32>(0u, 75433u, 24545u), true, vec3<bool>(false, true, false), true), 4294967295u, 0u), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), true, vec3<bool>(false, true, false), true), vec3<i32>(-41618i, 0i, 7209i), Struct_1(vec3<u32>(39634u, 1u, 0u), true, vec3<bool>(true, true, true), true), 23579u, 9194u), Struct_2(Struct_1(vec3<u32>(33296u, 4294967295u, 4294967295u), false, vec3<bool>(true, true, true), true), vec3<i32>(2147483647i, -31701i, 40i), Struct_1(vec3<u32>(51051u, 93911u, 59824u), true, vec3<bool>(true, false, false), true), 1u, 4294967295u), Struct_2(Struct_1(vec3<u32>(1u, 0u, 99070u), false, vec3<bool>(true, true, false), true), vec3<i32>(-14998i, 15123i, -5971i), Struct_1(vec3<u32>(9954u, 0u, 9987u), false, vec3<bool>(true, true, true), true), 75701u, 3610u), Struct_2(Struct_1(vec3<u32>(52672u, 1u, 4294967295u), true, vec3<bool>(false, true, true), true), vec3<i32>(33877i, 2147483647i, 1179i), Struct_1(vec3<u32>(1u, 1u, 4294967295u), false, vec3<bool>(false, false, false), false), 35747u, 0u), Struct_2(Struct_1(vec3<u32>(32920u, 4294967295u, 0u), true, vec3<bool>(false, false, true), false), vec3<i32>(1i, -117878i, -32176i), Struct_1(vec3<u32>(4294967295u, 0u, 258u), true, vec3<bool>(true, false, false), true), 33842u, 65989u), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 8837u), true, vec3<bool>(false, true, false), false), vec3<i32>(-10671i, i32(-2147483648), 52840i), Struct_1(vec3<u32>(7772u, 1u, 28198u), false, vec3<bool>(false, false, true), true), 4294967295u, 4294967295u), Struct_2(Struct_1(vec3<u32>(9159u, 24352u, 25730u), true, vec3<bool>(true, true, false), false), vec3<i32>(12634i, -74305i, -51194i), Struct_1(vec3<u32>(42926u, 1u, 1u), true, vec3<bool>(true, false, true), true), 44601u, 70015u), Struct_2(Struct_1(vec3<u32>(18092u, 4294967295u, 4294967295u), false, vec3<bool>(true, true, true), true), vec3<i32>(-1i, 0i, 1i), Struct_1(vec3<u32>(4294967295u, 1u, 1u), false, vec3<bool>(true, false, true), false), 4455u, 38620u), Struct_2(Struct_1(vec3<u32>(34290u, 4294967295u, 297u), false, vec3<bool>(true, false, true), false), vec3<i32>(-41155i, -1539i, -1i), Struct_1(vec3<u32>(85060u, 0u, 41365u), false, vec3<bool>(false, true, true), false), 50815u, 9189u), Struct_2(Struct_1(vec3<u32>(39028u, 42245u, 0u), false, vec3<bool>(true, true, false), true), vec3<i32>(2147483647i, -3643i, 54176i), Struct_1(vec3<u32>(4294967295u, 53751u, 49244u), true, vec3<bool>(false, true, true), true), 0u, 20649u), Struct_2(Struct_1(vec3<u32>(0u, 0u, 4294967295u), false, vec3<bool>(false, false, false), true), vec3<i32>(31403i, -2135i, i32(-2147483648)), Struct_1(vec3<u32>(48011u, 1u, 49796u), true, vec3<bool>(true, false, true), true), 1u, 1u), Struct_2(Struct_1(vec3<u32>(91236u, 14878u, 799u), false, vec3<bool>(false, false, true), true), vec3<i32>(-36988i, -26124i, -34073i), Struct_1(vec3<u32>(49994u, 32501u, 77625u), true, vec3<bool>(false, true, false), false), 18714u, 1u), Struct_2(Struct_1(vec3<u32>(3866u, 0u, 0u), true, vec3<bool>(false, true, true), true), vec3<i32>(1i, 1i, 4378i), Struct_1(vec3<u32>(14546u, 30853u, 93417u), true, vec3<bool>(true, true, false), true), 7217u, 0u), Struct_2(Struct_1(vec3<u32>(1u, 22019u, 72750u), false, vec3<bool>(false, true, true), false), vec3<i32>(1i, 2147483647i, 0i), Struct_1(vec3<u32>(4294967295u, 15550u, 0u), true, vec3<bool>(true, false, false), true), 21592u, 4294967295u), Struct_2(Struct_1(vec3<u32>(27153u, 6671u, 0u), true, vec3<bool>(true, true, false), false), vec3<i32>(-1i, -47439i, -1i), Struct_1(vec3<u32>(5988u, 66114u, 88296u), true, vec3<bool>(true, false, true), false), 16112u, 1u), Struct_2(Struct_1(vec3<u32>(42917u, 0u, 4294967295u), false, vec3<bool>(true, false, true), true), vec3<i32>(2003i, -54782i, 1i), Struct_1(vec3<u32>(0u, 21766u, 36742u), false, vec3<bool>(false, true, false), true), 27000u, 0u), Struct_2(Struct_1(vec3<u32>(32232u, 34790u, 0u), true, vec3<bool>(true, false, true), false), vec3<i32>(0i, 1i, -42096i), Struct_1(vec3<u32>(12508u, 31504u, 1u), true, vec3<bool>(true, false, false), true), 1u, 0u), Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 1u), true, vec3<bool>(false, true, false), true), vec3<i32>(10458i, 0i, i32(-2147483648)), Struct_1(vec3<u32>(44022u, 42854u, 0u), false, vec3<bool>(false, true, false), false), 0u, 60316u));

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(vec3<u32>(6692u, 4294967295u, 0u), true, vec3<bool>(false, false, true), false), vec3<i32>(2147483647i, 12916i, -4266i), Struct_1(vec3<u32>(78028u, 0u, 1035u), true, vec3<bool>(true, false, false), false), 39260u, 84783u), Struct_2(Struct_1(vec3<u32>(1u, 38012u, 88349u), false, vec3<bool>(false, false, true), true), vec3<i32>(1i, 2147483647i, -1i), Struct_1(vec3<u32>(48294u, 27540u, 58429u), false, vec3<bool>(false, true, false), false), 4294967295u, 35380u), Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 12104u), false, vec3<bool>(true, false, true), false), vec3<i32>(2147483647i, -1i, -5051i), Struct_1(vec3<u32>(4294967295u, 84293u, 39987u), true, vec3<bool>(false, true, true), true), 0u, 1u), Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u), false, vec3<bool>(true, false, false), true), vec3<i32>(-7578i, 1i, 77551i), Struct_1(vec3<u32>(0u, 0u, 1u), false, vec3<bool>(true, true, true), false), 0u, 4068u), Struct_2(Struct_1(vec3<u32>(1u, 87789u, 1u), false, vec3<bool>(true, false, true), false), vec3<i32>(i32(-2147483648), 33087i, 13740i), Struct_1(vec3<u32>(4294967295u, 0u, 0u), false, vec3<bool>(false, true, false), true), 44347u, 4294967295u), Struct_2(Struct_1(vec3<u32>(28099u, 51949u, 62746u), true, vec3<bool>(true, true, true), true), vec3<i32>(0i, 4428i, i32(-2147483648)), Struct_1(vec3<u32>(0u, 4294967295u, 31026u), true, vec3<bool>(true, false, false), false), 9823u, 117193u), Struct_2(Struct_1(vec3<u32>(41363u, 0u, 4294967295u), true, vec3<bool>(false, false, true), true), vec3<i32>(24332i, 23184i, 2147483647i), Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), false, vec3<bool>(false, false, false), false), 0u, 0u), Struct_2(Struct_1(vec3<u32>(88121u, 11323u, 103070u), true, vec3<bool>(true, true, true), false), vec3<i32>(0i, 50383i, 0i), Struct_1(vec3<u32>(1u, 1u, 52422u), false, vec3<bool>(true, false, false), true), 62953u, 4294967295u), Struct_2(Struct_1(vec3<u32>(0u, 1u, 0u), false, vec3<bool>(false, true, true), false), vec3<i32>(0i, 2147483647i, 46429i), Struct_1(vec3<u32>(12753u, 1u, 30409u), false, vec3<bool>(false, false, false), false), 0u, 1u), Struct_2(Struct_1(vec3<u32>(4294967295u, 44310u, 67976u), false, vec3<bool>(true, false, true), true), vec3<i32>(-27800i, 4271i, 2147483647i), Struct_1(vec3<u32>(69990u, 24413u, 57551u), false, vec3<bool>(true, false, false), false), 0u, 65669u), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 94711u), true, vec3<bool>(false, true, true), false), vec3<i32>(57399i, 2147483647i, -31890i), Struct_1(vec3<u32>(41271u, 4294967295u, 43340u), true, vec3<bool>(true, false, false), true), 13807u, 26087u), Struct_2(Struct_1(vec3<u32>(278u, 1u, 4294967295u), false, vec3<bool>(true, true, true), true), vec3<i32>(-1i, 34316i, i32(-2147483648)), Struct_1(vec3<u32>(111009u, 33223u, 29075u), false, vec3<bool>(true, false, true), false), 69888u, 1u), Struct_2(Struct_1(vec3<u32>(4294967295u, 23268u, 0u), true, vec3<bool>(true, true, true), false), vec3<i32>(-12180i, 0i, 10057i), Struct_1(vec3<u32>(25513u, 1u, 34832u), false, vec3<bool>(false, false, true), true), 1u, 22096u), Struct_2(Struct_1(vec3<u32>(1u, 48004u, 36732u), true, vec3<bool>(true, false, false), false), vec3<i32>(-2791i, -1i, -1i), Struct_1(vec3<u32>(4294967295u, 27722u, 0u), true, vec3<bool>(true, false, true), false), 4294967295u, 0u), Struct_2(Struct_1(vec3<u32>(79090u, 30967u, 0u), false, vec3<bool>(false, false, false), true), vec3<i32>(-18922i, 0i, 1i), Struct_1(vec3<u32>(4294967295u, 0u, 56535u), false, vec3<bool>(true, true, false), true), 42339u, 2995u));

var<private> global2: u32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>) -> vec4<f32> {
    var var_0 = u_input.c;
    var var_1 = vec3<bool>(true, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2086f), 840f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -532f)))));
    var var_2 = _wgslsmith_mult_i32(arg_0.x, firstLeadingBit(min(arg_0.x, 0i)) ^ u_input.a);
    let var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d & var_0.x, ~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(153u, var_0.x, u_input.d, u_input.b.x)), min(vec4<u32>(1u, var_0.x, u_input.b.x, 3375u), vec4<u32>(40696u, u_input.c.x, u_input.d, u_input.d)))), vec2<u32>(u_input.c.x, u_input.b.x));
    var_2 = _wgslsmith_mult_i32(u_input.a, 0i ^ arg_0.x);
    return vec4<f32>(_wgslsmith_f_op_f32(291f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -562f) - -1078f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(step(608f, -1167f)))))), _wgslsmith_f_op_f32(trunc(-1092f)), _wgslsmith_f_op_f32(-783f - -1381f));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_1) -> vec3<bool> {
    global1 = array<Struct_2, 15>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec2<i32>(22807i, -49217i))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -755f)), 1751f, 520f), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_1.x, -609f)))), arg_1.x, -236f, arg_1.x), vec4<bool>(arg_3.c.x, arg_0.b, _wgslsmith_mod_i32(u_input.e, u_input.a) <= 0i, false))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(899f * -400f)) + _wgslsmith_f_op_f32(arg_1.x + 1202f)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.e, 1i), vec2<i32>(u_input.e, 5639i)))).x + arg_1.x)));
    let var_2 = global1[_wgslsmith_index_u32(u_input.d, 15u)];
    var_1 = _wgslsmith_f_op_vec3_f32(-var_0.xxz);
    return !arg_3.c;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    global2 = ~(_wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.x, 4294967295u), vec2<u32>(u_input.c.x, 82556u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.a.x, 4294967295u), arg_0, vec2<u32>(u_input.c.x, u_input.c.x)))) << (~1u % 32u));
    let var_0 = arg_1;
    var var_1 = Struct_2(var_0, reverseBits(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(36871i, u_input.e, u_input.e), vec3<i32>(-2147483647i, -1i, 0i)), vec3<i32>(u_input.a, u_input.a, -9806i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, 22928i, u_input.e), vec3<i32>(-12063i, 0i, u_input.e))), vec3<i32>(0i, firstLeadingBit(-1i), max(6327i, 3601i)))), Struct_1(firstTrailingBit(u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(962f, 2175f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1444f)) - -639f), !select(vec3<bool>(false, arg_1.b, false), func_2(Struct_1(vec3<u32>(arg_0.x, 0u, arg_0.x), arg_1.d, vec3<bool>(var_0.c.x, false, true), arg_1.c.x), vec3<f32>(633f, 1000f, -1084f), var_0.c.x, Struct_1(vec3<u32>(var_0.a.x, arg_1.a.x, arg_0.x), true, vec3<bool>(var_0.b, arg_1.c.x, false), arg_1.c.x)), false), var_0.b), var_0.a.x, 1u);
    global1 = array<Struct_2, 15>();
    var var_2 = -378f;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(select(_wgslsmith_sub_vec2_u32(u_input.b.yx, _wgslsmith_sub_vec2_u32(u_input.b.xz, u_input.c)), select(~u_input.b.zz, u_input.b.zx, true), true) >> (u_input.c % vec2<u32>(32u)), Struct_1(~u_input.b, true, select(select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)), ~(-1i) > _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.e, -35559i), -vec3<i32>(u_input.e, -10835i, -10065i))));
    global2 = _wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(reverseBits(u_input.c.x), var_0.a.x), _wgslsmith_sub_u32(_wgslsmith_mod_u32(~1333u, _wgslsmith_div_u32(var_0.a.x, 59536u)), _wgslsmith_add_u32(_wgslsmith_sub_u32(64984u, u_input.d), func_1(vec2<u32>(u_input.d, 0u), var_0).a.x))), u_input.b.x);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(161f, -630f) * 546f))) * -1138f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-257f)), _wgslsmith_f_op_f32(sign(-249f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1581f))) * _wgslsmith_f_op_f32(floor(-173f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, 423f)) + -1045f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(464f)), _wgslsmith_f_op_f32(select(-539f, -937f, true))))), -328f)), -420f);
    var var_2 = global0[_wgslsmith_index_u32(54285u, 22u)];
    var_2 = global0[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(~u_input.b.x, min(firstLeadingBit(_wgslsmith_dot_vec2_u32(var_0.a.zx, var_2.c.a.zx)), var_2.d))), 22u)];
    var_2 = Struct_2(func_1(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.a.x, 0u), ~var_0.a.yx), var_0), var_2.b, Struct_1(vec3<u32>(var_0.a.x, var_0.a.x & u_input.b.x, var_0.a.x), func_1(vec2<u32>(max(u_input.b.x, 12987u), reverseBits(0u)), Struct_1(var_0.a, true, vec3<bool>(var_0.b, false, var_0.c.x), true)).c.x, !var_2.a.c, var_0.b), 0u, _wgslsmith_div_u32(max(u_input.b.x, firstLeadingBit(var_2.c.a.x >> (1u % 32u))), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_2.e, 1u) & var_2.a.a.zy, ~var_0.a.yz), abs(~var_0.a.xx))));
    var var_3 = Struct_2(Struct_1(~u_input.b, any(vec4<bool>(any(var_0.c.yx), any(vec4<bool>(true, var_2.a.c.x, false, var_0.b)), u_input.e > 36371i, !var_2.a.d)), var_2.c.c, true), abs(-var_2.b), var_2.a, abs(var_2.e), _wgslsmith_div_u32(abs(abs(_wgslsmith_mod_u32(u_input.b.x, 6828u))), _wgslsmith_clamp_u32(var_0.a.x, max(47439u, u_input.c.x), func_1(vec2<u32>(var_2.c.a.x, var_2.d), var_2.c).a.x)));
    let var_4 = var_0.a.x;
    var var_5 = abs(4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.zx, ~func_1(u_input.c, func_1(vec2<u32>(var_0.a.x, 4294967295u), func_1(vec2<u32>(1u, 10010u), Struct_1(vec3<u32>(var_0.a.x, 4294967295u, var_2.d), true, vec3<bool>(var_2.a.c.x, false, false), false)))).a.x);
}

