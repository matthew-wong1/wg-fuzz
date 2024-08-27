struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec3<u32>,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> i32 {
    var var_0 = Struct_4(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-706f - arg_0.a.x) + _wgslsmith_f_op_f32(select(977f, 224f, true))), arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.a.x) - _wgslsmith_f_op_f32(arg_0.c.a.x * arg_0.c.a.x))), vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(arg_0.c.b.x, arg_0.c.b.x))), true, false)), countOneBits(_wgslsmith_mod_i32(~(-53739i), u_input.a.x)), u_input.a);
    global0 = array<Struct_1, 6>();
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(arg_0.c.a.x - -802f), _wgslsmith_f_op_f32(1171f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a.a.x)) + _wgslsmith_f_op_f32(786f * 384f))), _wgslsmith_f_op_f32(var_0.a.a.x * _wgslsmith_f_op_f32(max(-579f, var_0.a.a.x))), var_0.a.a.x)));
    let var_2 = Struct_4(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-383f + -1471f), -1972f), _wgslsmith_f_op_vec3_f32(ceil(arg_0.a.ywz))), select(!(!vec3<bool>(var_0.a.b.x, arg_0.c.b.x, false)), vec3<bool>(false, false, false), vec3<bool>(!var_0.a.b.x, true, true))), 1i, u_input.a);
    var var_3 = arg_1.x;
    return i32(-1i) * -1i;
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    var var_1 = Struct_5(Struct_4(global0[_wgslsmith_index_u32(u_input.b, 6u)], abs(-2147483647i), ~vec4<i32>(reverseBits(25309i), u_input.a.x, firstLeadingBit(16953i), func_3(Struct_2(vec4<f32>(861f, -1412f, 373f, -1000f), vec4<u32>(1510u, 38318u, 12234u, u_input.b), global0[_wgslsmith_index_u32(u_input.b, 6u)], vec3<u32>(4294967295u, 1u, 23068u), false), u_input.a.zwx))), u_input.a);
    var_1 = Struct_5(Struct_4(Struct_1(vec3<f32>(var_1.a.a.a.x, _wgslsmith_f_op_f32(round(-432f)), _wgslsmith_f_op_f32(max(var_1.a.a.a.x, var_1.a.a.a.x))), !(!vec3<bool>(false, var_1.a.a.b.x, true))), 0i, vec4<i32>(u_input.a.x, -798i, _wgslsmith_dot_vec2_i32(var_1.a.c.zz, vec2<i32>(1i, var_1.b.x)), var_1.a.c.x | 1i)), vec4<i32>(abs(24828i), u_input.a.x & select(var_1.a.c.x, u_input.a.x, all(vec2<bool>(true, var_1.a.a.b.x))), var_1.a.b, ~var_1.a.b));
    var var_2 = Struct_4(global0[_wgslsmith_index_u32(u_input.b, 6u)], _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~u_input.a.yx, vec2<i32>(~(-8428i), -2147483647i)), abs(u_input.a.x), _wgslsmith_div_i32(32687i, var_1.a.c.x)), u_input.a);
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-978f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.a.a.x * var_2.a.a.x) + _wgslsmith_f_op_f32(var_2.a.a.x - var_1.a.a.a.x)), -1553f, -1102f)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, ~u_input.b, select(u_input.b, u_input.b, var_1.a.a.b.x), ~102192u), ~firstLeadingBit(vec4<u32>(0u, 0u, u_input.b, u_input.b)), countOneBits(vec4<u32>(1u, u_input.b, u_input.b, u_input.b)) ^ reverseBits(vec4<u32>(u_input.b, 4294967295u, u_input.b, 4294967295u))) >> (select(firstTrailingBit(vec4<u32>(4294967295u, 48466u, u_input.b, 4294967295u)) | ~vec4<u32>(4294967295u, 23927u, 0u, u_input.b), ~(~vec4<u32>(u_input.b, 0u, 0u, 19408u)), true || all(vec3<bool>(var_1.a.a.b.x, var_1.a.a.b.x, var_1.a.a.b.x))) % vec4<u32>(32u)), var_1.a.a, _wgslsmith_sub_vec3_u32(vec3<u32>(firstLeadingBit(u_input.b), u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(10060u, u_input.b, 34462u, 14324u), vec4<u32>(u_input.b, 1u, u_input.b, u_input.b))), vec3<u32>(20406u, _wgslsmith_div_u32(1u, u_input.b), firstLeadingBit(40357u))) & (vec3<u32>(u_input.b, _wgslsmith_mult_u32(0u, u_input.b), ~u_input.b) | ~vec3<u32>(28848u, 48415u, 50526u)), true);
    return var_2.a;
}

fn func_1() -> i32 {
    let var_0 = func_2();
    global0 = array<Struct_1, 6>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(795f * -346f))) + _wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(160f - 1182f), var_0.a.x)))), var_0, Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1118f), _wgslsmith_f_op_f32(-1000f * var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -219f), 516f)), vec4<u32>(u_input.b, u_input.b, _wgslsmith_div_u32(52675u, ~u_input.b), ~_wgslsmith_div_u32(0u, u_input.b)), Struct_1(_wgslsmith_f_op_vec3_f32(-func_2().a), vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)), max(vec3<u32>(145009u, ~42267u, 21006u), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(67485u, u_input.b, 30020u), vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(u_input.b, u_input.b, u_input.b)))), !all(var_0.b)));
    let var_2 = var_1.c.a.x;
    let var_3 = any(var_0.b);
    return abs(firstTrailingBit(abs(u_input.a.x) ^ 1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_i32(u_input.a, -vec4<i32>(_wgslsmith_mod_i32(21346i, u_input.a.x >> (61252u % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec3<i32>(u_input.a.x, -1i, u_input.a.x) << (vec3<u32>(u_input.b, 4294967295u, 4294967295u) % vec3<u32>(32u))), func_1(), ~u_input.a.x));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(floor(-896f)), global0[_wgslsmith_index_u32(1u, 6u)], Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -524f) * 2886f), -945f, -221f, 436f), ~(~(~vec4<u32>(u_input.b, u_input.b, 1u, u_input.b))), func_2(), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.b) ^ vec3<u32>(u_input.b, 4294967295u, 31294u), select(vec3<u32>(8235u, u_input.b, 10773u), vec3<u32>(u_input.b, 23756u, u_input.b), vec3<bool>(false, true, false))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(1u, u_input.b, 104068u), vec3<u32>(u_input.b, u_input.b, 42315u))), !(all(vec4<bool>(false, false, true, true)) == true)));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.c.c.a.x, 1085f, 344f, 175f), vec4<f32>(-512f, var_1.b.a.x, var_1.a, var_1.c.a.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, -409f, -164f, var_1.c.a.x) + _wgslsmith_f_op_vec4_f32(-var_1.c.a)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(var_1.c.a, var_1.c.a)))))), var_1.c.a));
    let var_3 = ~u_input.b;
    global0 = array<Struct_1, 6>();
    var_0 = _wgslsmith_add_vec4_i32(countOneBits(u_input.a), abs(reverseBits(firstLeadingBit(vec4<i32>(1i, -1i, var_0.x, var_0.x) & u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(-1265f, var_2.x, -9179i, 63618u);
}

