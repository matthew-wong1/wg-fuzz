struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(true, Struct_2(vec2<u32>(43900u, 0u), 29378u, Struct_1(33545u, 1u, vec2<bool>(false, true)))), Struct_3(true, Struct_2(vec2<u32>(71113u, 0u), 1u, Struct_1(26512u, 4294967295u, vec2<bool>(true, false)))), Struct_3(false, Struct_2(vec2<u32>(15449u, 4294967295u), 0u, Struct_1(1u, 0u, vec2<bool>(false, false)))), Struct_3(false, Struct_2(vec2<u32>(4294967295u, 52019u), 2930u, Struct_1(38251u, 0u, vec2<bool>(true, true)))), Struct_3(false, Struct_2(vec2<u32>(1u, 293u), 4294967295u, Struct_1(4294967295u, 4294967295u, vec2<bool>(true, false)))), Struct_3(true, Struct_2(vec2<u32>(0u, 0u), 1u, Struct_1(1u, 39581u, vec2<bool>(true, true)))), Struct_3(true, Struct_2(vec2<u32>(1u, 21953u), 4294967295u, Struct_1(24360u, 4294967295u, vec2<bool>(false, true)))), Struct_3(false, Struct_2(vec2<u32>(1u, 23553u), 4294967295u, Struct_1(55014u, 0u, vec2<bool>(false, false)))), Struct_3(false, Struct_2(vec2<u32>(79957u, 0u), 0u, Struct_1(1u, 94645u, vec2<bool>(true, true)))), Struct_3(true, Struct_2(vec2<u32>(4294967295u, 4294967295u), 19521u, Struct_1(45370u, 89794u, vec2<bool>(true, false)))), Struct_3(true, Struct_2(vec2<u32>(22138u, 37707u), 61643u, Struct_1(9132u, 88805u, vec2<bool>(true, false)))), Struct_3(false, Struct_2(vec2<u32>(41724u, 22087u), 4294967295u, Struct_1(0u, 1u, vec2<bool>(false, true)))), Struct_3(true, Struct_2(vec2<u32>(3683u, 95372u), 71948u, Struct_1(0u, 14342u, vec2<bool>(false, false)))), Struct_3(true, Struct_2(vec2<u32>(4294967295u, 58366u), 4294967295u, Struct_1(1u, 0u, vec2<bool>(false, false)))), Struct_3(true, Struct_2(vec2<u32>(3708u, 151227u), 33543u, Struct_1(4294967295u, 8388u, vec2<bool>(false, false)))), Struct_3(false, Struct_2(vec2<u32>(24452u, 0u), 0u, Struct_1(1u, 7425u, vec2<bool>(false, true)))), Struct_3(false, Struct_2(vec2<u32>(27745u, 26483u), 1u, Struct_1(27666u, 99481u, vec2<bool>(true, true)))), Struct_3(true, Struct_2(vec2<u32>(1u, 4294967295u), 26163u, Struct_1(42675u, 31017u, vec2<bool>(true, false)))), Struct_3(true, Struct_2(vec2<u32>(14305u, 44266u), 418u, Struct_1(21723u, 79080u, vec2<bool>(true, false)))), Struct_3(false, Struct_2(vec2<u32>(69117u, 4294967295u), 1u, Struct_1(29861u, 0u, vec2<bool>(true, true)))), Struct_3(false, Struct_2(vec2<u32>(4294967295u, 0u), 1u, Struct_1(1u, 1u, vec2<bool>(false, true)))), Struct_3(false, Struct_2(vec2<u32>(1u, 31287u), 12105u, Struct_1(44387u, 4294967295u, vec2<bool>(true, true)))), Struct_3(true, Struct_2(vec2<u32>(53276u, 0u), 63590u, Struct_1(39881u, 0u, vec2<bool>(false, false)))), Struct_3(true, Struct_2(vec2<u32>(1u, 41542u), 0u, Struct_1(4294967295u, 34178u, vec2<bool>(true, false)))));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = select(vec3<bool>(true, true, true), vec3<bool>(!(!all(vec4<bool>(false, false, false, false))), true, any(vec4<bool>(true, any(vec4<bool>(false, false, false, true)), false, true))), select(select(vec3<bool>(all(vec2<bool>(true, false)), true, false), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), vec3<bool>(true, all(vec2<bool>(false, false)), false)));
    let var_1 = vec4<bool>(false, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1360f)))) < _wgslsmith_f_op_f32(f32(-1f) * -303f), (-784f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-800f)), -415f)) | false, !any(vec3<bool>(var_0.x && var_0.x, true, !var_0.x)));
    return u_input.d.x;
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: i32, arg_3: bool) -> vec2<bool> {
    let var_0 = _wgslsmith_mult_u32(max(_wgslsmith_sub_u32(arg_1.x, _wgslsmith_dot_vec3_u32(~u_input.c, reverseBits(u_input.d))), ~(func_3() << (_wgslsmith_add_u32(1u, 69283u) % 32u))), ~arg_1.x ^ arg_1.x);
    var var_1 = global0[_wgslsmith_index_u32(var_0, 24u)];
    global0 = array<Struct_3, 24>();
    var var_2 = Struct_3(true, var_1.b);
    let var_3 = _wgslsmith_f_op_f32(ceil(arg_0));
    return !(!var_1.b.c.c);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: bool) -> u32 {
    let var_0 = !any(func_2(-874f, vec4<u32>(max(48179u, 33950u), u_input.d.x, abs(u_input.d.x), u_input.c.x), arg_1, abs(1i) > _wgslsmith_mod_i32(u_input.e.x, 45581i)));
    global0 = array<Struct_3, 24>();
    let var_1 = !(!(!(!(true && var_0))));
    return u_input.c.x;
}

fn func_4(arg_0: f32, arg_1: vec4<u32>) -> Struct_1 {
    global0 = array<Struct_3, 24>();
    var var_0 = select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), false), select(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), func_2(arg_0, vec4<u32>(1u, u_input.b.x, arg_1.x, arg_1.x), u_input.e.x, false).x), all(select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, false, false)))), !select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(false, false, true, false), false), vec4<bool>(false, all(vec4<bool>(false, false, true, false)), true, 4294967295u != u_input.d.x), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true))));
    let var_1 = Struct_3(all(var_0.zy), Struct_2((~u_input.c.yz >> (u_input.b.xy % vec2<u32>(32u))) ^ ~(~u_input.b.yx), u_input.a.x, Struct_1(1u, min(arg_1.x, arg_1.x) >> (abs(u_input.b.x) % 32u), vec2<bool>(arg_0 < 573f, -1879i < u_input.e.x))));
    var var_2 = 2147483647i;
    var var_3 = var_1.b;
    return var_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(198f, vec4<u32>(~u_input.b.x, ~_wgslsmith_sub_u32(4294967295u, u_input.b.x) | 4294967295u, 0u, func_1(all(vec3<bool>(false, false, true)), 1i, 920f < _wgslsmith_f_op_f32(trunc(1000f)))));
    var_0 = func_4(778f, max(~_wgslsmith_mod_vec4_u32(vec4<u32>(23328u, u_input.b.x, 78460u, var_0.a) | vec4<u32>(28571u, var_0.a, 82836u, 70298u), vec4<u32>(22892u, 18143u, 4294967295u, var_0.b)), ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, 69234u, 52195u) << (vec4<u32>(var_0.a, 54517u, u_input.c.x, 1u) % vec4<u32>(32u)), vec4<u32>(u_input.d.x, u_input.c.x, 3714u, var_0.a))));
    var var_1 = Struct_3(true, Struct_2(countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, var_0.a), u_input.a.yz)), 4294967295u, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2937f)) - 525f), firstTrailingBit(~vec4<u32>(1u, var_0.b, u_input.c.x, 0u)))));
    global0 = array<Struct_3, 24>();
    var_1 = Struct_3(any(select(vec3<bool>(true, false, true), select(vec3<bool>(false, var_0.c.x, false), !vec3<bool>(true, var_0.c.x, var_1.b.c.c.x), vec3<bool>(true, true, var_1.b.c.c.x)), var_1.b.c.c.x)), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~43988i, ~u_input.e.x), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.e.x, -1i, u_input.e.x, u_input.e.x), vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, 27766i), false), ~vec4<i32>(-1i, -3343i, 31542i, u_input.e.x), firstLeadingBit(vec4<i32>(56048i, u_input.e.x, -52940i, -41767i))) >> (_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c.x, u_input.b.x, u_input.b.x, u_input.a.x)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.b.x, 1u, u_input.b.x), vec4<u32>(var_0.b, 1620u, 4294967295u, var_0.a))) % vec4<u32>(32u)), vec4<i32>(19286i, -9160i, u_input.e.x, ~(-4803i)), vec4<i32>(2604i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.e.x, u_input.e.x, 2147483647i, -1i), vec4<i32>(u_input.e.x, 42741i, u_input.e.x, -1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1862i, 1i, u_input.e.x, u_input.e.x), vec4<i32>(u_input.e.x, 21530i, -4379i, -1i), vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, -12053i))), _wgslsmith_div_i32(-50443i, -10997i), ~u_input.e.x)), firstTrailingBit(~firstLeadingBit(u_input.b)));
}

