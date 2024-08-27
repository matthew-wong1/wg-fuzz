struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(114191u, 4294967295u, 24064u), vec3<u32>(25105u, 1u, 0u), vec3<u32>(1u, 6748u, 4294967295u), vec3<u32>(5783u, 1u, 12054u), vec3<u32>(93460u, 1u, 4294967295u), vec3<u32>(51527u, 18444u, 140022u), vec3<u32>(0u, 28016u, 58815u), vec3<u32>(35344u, 3263u, 62128u), vec3<u32>(24169u, 0u, 41967u), vec3<u32>(12180u, 1u, 907u), vec3<u32>(24550u, 4294967295u, 36369u), vec3<u32>(42466u, 27152u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 1u));

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global2: i32;

var<private> global3: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(false, false), Struct_2(true, true), Struct_2(true, false), Struct_2(true, false), Struct_2(true, true), Struct_2(true, false), Struct_2(true, true), Struct_2(true, true), Struct_2(true, false), Struct_2(false, false), Struct_2(false, true), Struct_2(false, true), Struct_2(false, true), Struct_2(true, true), Struct_2(false, true), Struct_2(false, false), Struct_2(false, false), Struct_2(false, false), Struct_2(true, false), Struct_2(false, true), Struct_2(true, true), Struct_2(false, true), Struct_2(false, true), Struct_2(false, true), Struct_2(true, true), Struct_2(true, true), Struct_2(false, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: i32) -> bool {
    let var_0 = arg_2 <= -u_input.c;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-734f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-267f - -200f) + 200f), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1018f)), _wgslsmith_div_f32(-1146f, 1156f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1081f, 1989f, 1640f, -125f) + vec4<f32>(-495f, 241f, -967f, 1069f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1330f, 1000f, -278f, -1340f) * vec4<f32>(-701f, 1076f, 793f, -104f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(399f, 1535f, -2284f, 893f)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(1101f, var_1.x)), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - 1261f) * -690f), _wgslsmith_f_op_f32(var_1.x - -642f))));
    let var_2 = !(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, -292f)) + 1518f) <= _wgslsmith_f_op_f32(f32(-1f) * -928f)));
    var var_3 = u_input.a;
    return true && (true || !(true == var_0));
}

fn func_4(arg_0: bool, arg_1: i32) -> vec4<bool> {
    var var_0 = Struct_1(arg_1, -839f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(761f, -385f, -2301f) * vec3<f32>(3065f, -791f, 577f)) + _wgslsmith_div_vec3_f32(vec3<f32>(676f, 747f, -425f), vec3<f32>(1185f, 1737f, -252f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, -324f, -235f))))), 4294967295u);
    var var_1 = (true | global1.x) & !arg_0;
    let var_2 = Struct_1(1i, var_0.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1054f + var_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b))), 568f)), var_0.d);
    var var_3 = var_2;
    global1 = !select(!vec4<bool>(!arg_0, true, true, all(vec3<bool>(global1.x, true, true))), vec4<bool>(global1.x, true, 0i >= var_2.a, global1.x), all(select(select(vec4<bool>(true, arg_0, global1.x, false), vec4<bool>(global1.x, global1.x, true, arg_0), vec4<bool>(global1.x, global1.x, global1.x, arg_0)), !vec4<bool>(global1.x, false, false, arg_0), all(global1.zw))));
    return vec4<bool>(var_3.a >= -arg_1, !(arg_0 || !any(global1.zz)), false, any(select(select(vec4<bool>(global1.x, true, false, false), select(vec4<bool>(true, global1.x, arg_0, false), vec4<bool>(global1.x, true, false, true), false), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, false, true, global1.x), vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(true, arg_0, false, true)), select(vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(global1.x, global1.x, false, true), false), select(vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(true, true, false, global1.x))), 1i >= ~arg_1)));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32) -> bool {
    global1 = func_4(func_3(arg_1 | countOneBits(min(0u, 0u)), (46312u | (u_input.a | 109560u)) << (~95444u % 32u), abs(-(~arg_0.x))), 1i);
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(294f)), select(!(global1.x & global1.x), global1.x, true) && global1.x));
    global2 = arg_0.x;
    var var_1 = _wgslsmith_mult_vec2_i32(max(reverseBits(-firstLeadingBit(vec2<i32>(arg_0.x, -60665i))), -vec2<i32>(_wgslsmith_mod_i32(u_input.b, 31832i), ~u_input.c)), reverseBits(~vec2<i32>(arg_0.x, abs(arg_0.x))));
    let var_2 = (max(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 55338u, 38284u, 9170u), vec4<u32>(arg_1, 1u, 1u, u_input.a)), _wgslsmith_sub_u32(min(arg_1, arg_1), ~0u)) >> (1866u % 32u)) >= abs((~arg_1 ^ arg_1) & u_input.a);
    return all(global1.yw);
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global1 = select(!select(vec4<bool>(func_2(vec4<i32>(u_input.c, -33518i, 32135i, 2147483647i), 4294967295u), arg_0.b, true, all(global1.zxx)), !(!vec4<bool>(arg_0.b, global1.x, global1.x, global1.x)), true), select(vec4<bool>(all(vec2<bool>(arg_0.a, true)), global1.x, any(!global1.xw), ~u_input.a < 4294967295u), !select(vec4<bool>(global1.x, arg_0.b, false, true), vec4<bool>(true, global1.x, true, global1.x), select(vec4<bool>(true, arg_0.a, global1.x, arg_0.a), vec4<bool>(global1.x, true, arg_0.b, global1.x), arg_0.b)), !arg_0.b), true);
    return Struct_1((i32(-1i) * -8794i) | countOneBits(u_input.c), 1f, vec3<f32>(-1348f, _wgslsmith_f_op_f32(f32(-1f) * -741f), 3463f), 4294967295u);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-261f, arg_0.b, arg_0.b), vec3<f32>(819f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(-arg_0.b)) * _wgslsmith_f_op_f32(-arg_1.c.x)), arg_1.c.x), !func_4(-arg_1.a <= arg_0.a, -arg_0.a).x));
    let var_1 = Struct_1(arg_1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x - var_0.x)))), vec3<f32>(arg_1.b, arg_1.c.x, _wgslsmith_f_op_f32(-1f)), ~(~_wgslsmith_mult_u32(arg_1.d, 1u) ^ u_input.a));
    var var_2 = arg_1.d & ~(~arg_0.d);
    var var_3 = 298f;
    let var_4 = firstLeadingBit((countOneBits(firstTrailingBit(vec2<u32>(arg_1.d, arg_0.d))) << (~(vec2<u32>(1u, 1u) << (vec2<u32>(arg_0.d, 35257u) % vec2<u32>(32u))) % vec2<u32>(32u))) | _wgslsmith_div_vec2_u32(~max(vec2<u32>(arg_1.d, 34442u), vec2<u32>(arg_1.d, 11861u)), vec2<u32>(4294967295u, ~arg_1.d)));
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 27>();
    let var_0 = abs(select(func_5(func_1(Struct_2(global1.x, false)), func_1(global3[_wgslsmith_index_u32(1u, 27u)]), !(!vec4<bool>(false, false, true, global1.x))), ~vec2<u32>(0u, u_input.a) << ((~vec2<u32>(u_input.a, u_input.a) | vec2<u32>(0u, 11426u)) % vec2<u32>(32u)), !global1.xz));
    let var_1 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, max(var_0.x, max(34881u, 0u)), 16140u, _wgslsmith_add_u32(~1u, 1u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, u_input.a, 0u, 1u) | vec4<u32>(41753u, 11254u, var_0.x, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, var_0.x, 53648u, var_0.x), vec4<u32>(u_input.a, var_0.x, 9496u, 33754u), vec4<u32>(34925u, 22296u, var_0.x, var_0.x)) | (vec4<u32>(var_0.x, u_input.a, 9150u, 11379u) ^ vec4<u32>(0u, 17997u, var_0.x, var_0.x)), _wgslsmith_sub_vec4_u32(select(vec4<u32>(1u, 30904u, u_input.a, u_input.a), vec4<u32>(4294967295u, 1143u, 0u, 52370u), false), ~vec4<u32>(u_input.a, 0u, 7626u, 0u))));
    var var_2 = min(_wgslsmith_mult_vec4_u32(~(_wgslsmith_mod_vec4_u32(var_1, vec4<u32>(u_input.a, u_input.a, var_0.x, 1u)) ^ (var_1 >> (var_1 % vec4<u32>(32u)))), var_1), var_1);
    var var_3 = vec4<bool>(!(!all(vec4<bool>(global1.x, false, true, false))), global1.x, true, _wgslsmith_f_op_f32(1000f * 634f) == _wgslsmith_f_op_f32(-274f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1116f)))));
    var var_4 = global3[_wgslsmith_index_u32(~47050u | var_1.x, 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, 34984u, var_1, countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 1i, u_input.c | u_input.c), _wgslsmith_add_vec3_i32(-vec3<i32>(-10165i, 1i, u_input.b), max(vec3<i32>(u_input.b, u_input.b, -2147483647i), vec3<i32>(u_input.b, 1i, 19062i))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(551f, -626f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-824f, -107f)), false)))));
}

