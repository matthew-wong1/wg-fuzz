struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 6989u;

var<private> global1: array<Struct_1, 28>;

var<private> global2: vec3<f32> = vec3<f32>(-796f, -1041f, -1441f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<i32>) -> vec2<u32> {
    return vec2<u32>(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(u_input.a, 4294967295u) ^ u_input.a, _wgslsmith_mult_u32(1u, max(4294967295u, 0u))), u_input.c);
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: vec2<f32>) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a, 28u)];
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global2.yx)) - _wgslsmith_f_op_vec2_f32(-arg_3)))), firstLeadingBit(abs(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(42848u, 24563u), _wgslsmith_mult_u32(104897u, 0u), ~arg_1.x))), vec4<i32>(-_wgslsmith_mod_i32(var_0.c.x, 1i) >> (u_input.c % 32u), 14137i, -_wgslsmith_add_i32(~u_input.b, 1i), var_0.c.x));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_3), ~(~51985u), countOneBits(vec4<i32>(u_input.b, _wgslsmith_mult_i32(arg_0, u_input.b >> (75683u % 32u)), 20559i ^ arg_0, reverseBits(var_0.c.x))));
    var var_2 = !(!any(vec4<bool>(arg_2.x && true, arg_3.x == 2357f, false, true)));
    var_1 = global1[_wgslsmith_index_u32(4294967295u, 28u)];
    return var_1.c.x;
}

fn func_5(arg_0: i32, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: Struct_1) -> bool {
    let var_0 = true;
    var var_1 = vec3<bool>(all(vec2<bool>(all(select(vec3<bool>(var_0, false, true), vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, true, true))), !(u_input.c <= arg_3.b))), any(select(vec3<bool>(true && var_0, true, true), vec3<bool>(arg_3.a.x > -1361f, any(vec2<bool>(false, false)), true), all(select(vec4<bool>(var_0, false, false, var_0), vec4<bool>(false, var_0, false, var_0), var_0)))), !(!var_0));
    let var_2 = global1[_wgslsmith_index_u32(arg_3.b, 28u)];
    var var_3 = ~(~(~reverseBits(~vec2<u32>(var_2.b, arg_3.b))));
    return !(false && !var_0) || all(!(!select(vec4<bool>(true, var_1.x, var_0, var_0), vec4<bool>(var_1.x, var_1.x, true, var_0), vec4<bool>(true, var_0, false, true))));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = func_5(func_4(u_input.b, ~countOneBits(func_3(vec3<i32>(arg_2.c.x, arg_0.c.x, -17254i))), vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), any(vec4<bool>(false, false, false, false)) & true, true, true), global2.zy), arg_0.c.zxx, firstTrailingBit(vec2<i32>(u_input.b, countOneBits(-31405i << (arg_0.b % 32u)))), arg_0);
    let var_1 = _wgslsmith_mult_vec4_i32(~vec4<i32>(_wgslsmith_dot_vec4_i32(arg_0.c >> (vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u) % vec4<u32>(32u)), countOneBits(vec4<i32>(2147483647i, arg_2.c.x, u_input.b, u_input.b))), arg_2.c.x | ~arg_0.c.x, max(u_input.b, arg_2.c.x) >> (arg_0.b % 32u), arg_2.c.x), arg_0.c);
    global0 = 44648u << (arg_2.b % 32u);
    global0 = arg_1;
    global2 = vec3<f32>(_wgslsmith_f_op_f32(ceil(1204f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)));
    return _wgslsmith_mult_vec3_u32(~vec3<u32>(~arg_0.b, _wgslsmith_mult_u32(u_input.c, 11388u), select(_wgslsmith_mod_u32(4294967295u, arg_1), min(4940u, arg_0.b), true)), ((~vec3<u32>(8018u, arg_0.b, arg_2.b) >> (vec3<u32>(arg_1, arg_2.b, 0u) % vec3<u32>(32u))) | vec3<u32>(1u, ~1u, 43157u)) >> ((~_wgslsmith_div_vec3_u32(vec3<u32>(arg_2.b, arg_1, 18077u), vec3<u32>(2718u, arg_1, 59241u)) & ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, arg_0.b, arg_0.b), vec3<u32>(u_input.c, 0u, 66606u), vec3<u32>(u_input.c, 78390u, 5987u))) % vec3<u32>(32u)));
}

fn func_1() -> u32 {
    global0 = _wgslsmith_dot_vec2_u32(select(vec2<u32>(max(~53292u, u_input.a), _wgslsmith_dot_vec3_u32(func_2(Struct_1(vec2<f32>(-715f, -672f), 19445u, vec4<i32>(u_input.b, -2147483647i, 2147483647i, 0i)), u_input.a, Struct_1(global2.zz, u_input.c, vec4<i32>(-41893i, u_input.b, u_input.b, u_input.b))), func_2(Struct_1(vec2<f32>(-555f, -1182f), u_input.c, vec4<i32>(5161i, -40403i, 31080i, -2147483647i)), u_input.a, Struct_1(vec2<f32>(-837f, global2.x), u_input.a, vec4<i32>(1i, u_input.b, -2147483647i, -2147483647i))))), ~(func_2(Struct_1(vec2<f32>(global2.x, global2.x), u_input.c, vec4<i32>(-2147483647i, u_input.b, -28129i, u_input.b)), 1u, Struct_1(global2.xy, u_input.a, vec4<i32>(u_input.b, -20450i, 1i, u_input.b))).yy | select(vec2<u32>(u_input.a, 7545u), vec2<u32>(u_input.a, 1u), false)), true), vec2<u32>(4294967295u, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.c, 1u, u_input.c), vec4<u32>(28515u, 15853u, 1u, 1u)) | 1u)));
    var var_0 = -648f;
    let var_1 = select(!vec2<bool>(true, all(vec3<bool>(true, true, true))), select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), select(false, true, true)), select(vec2<bool>(false, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(false, true)), !all(vec2<bool>(false, true))), vec2<bool>(global2.x > global2.x, !any(vec3<bool>(true, true, true))));
    let var_2 = ~select(vec2<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b, u_input.b, 1i), vec4<i32>(34043i, u_input.b, 2147483647i, u_input.b))), vec2<i32>(u_input.b, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-40504i, u_input.b), vec2<i32>(0i, -2147483647i)), ~vec2<i32>(u_input.b, u_input.b))), var_1);
    var var_3 = vec2<bool>(!(!any(select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(false, true, false), vec3<bool>(false, true, var_1.x)))), select(false, var_1.x, var_1.x));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 28>();
    var var_0 = vec4<u32>(15709u, func_1(), 74855u, ~firstLeadingBit(8489u));
    var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(~(~(~u_input.c)), _wgslsmith_sub_u32(u_input.c, 1u), abs(28000u), firstTrailingBit(u_input.a)), ~firstLeadingBit(abs(firstTrailingBit(vec4<u32>(u_input.a, 4294967295u, 1u, 0u)))));
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(var_0.x, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_0.x, 25294u, 68822u), vec4<u32>(var_0.x, var_0.x, 77666u, u_input.a)) | 0u), 21881u), 28u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, _wgslsmith_f_op_f32(251f + var_1.a.x), _wgslsmith_div_f32(var_1.a.x, 633f), var_1.a.x)) - vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-354f)))), 2228f, _wgslsmith_f_op_f32(f32(-1f) * -285f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-358f * -303f) + _wgslsmith_f_op_f32(var_1.a.x + 889f))))));
    let var_3 = select(var_1.c.x, max(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_1.c.yx, var_1.c.ww), abs(var_1.c.xw)), u_input.b) >> ((var_1.b << (4294967295u % 32u)) % 32u), false);
    let var_4 = _wgslsmith_add_vec3_u32(vec3<u32>(26893u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c, u_input.c, var_0.x), vec4<u32>(1u, 39325u, 23417u, 4294967295u)), u_input.c), firstTrailingBit(vec3<u32>(~4294967295u, ~var_1.b, var_0.x << (19635u % 32u)))) ^ (_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(var_0.x, 4294967295u, var_0.x)), min(var_0.xwz, ~vec3<u32>(4294967295u, 65694u, u_input.a)), vec3<u32>(func_2(Struct_1(vec2<f32>(1000f, -1103f), u_input.a, var_1.c), u_input.c, global1[_wgslsmith_index_u32(u_input.a, 28u)]).x, var_0.x, ~var_1.b)) >> (var_0.wwy % vec3<u32>(32u)));
    let var_5 = countOneBits(abs(min(var_0.ywx, ~var_0.ywy ^ var_4)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.xxw, var_1.c.wxw, abs(var_1.c.zzw), u_input.c, u_input.b);
}

