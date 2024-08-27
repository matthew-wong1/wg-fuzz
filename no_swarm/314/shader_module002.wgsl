struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> vec3<f32> {
    var var_0 = select(!arg_0.d.c.wzx, arg_0.d.a, false);
    var_0 = select(!(!select(vec3<bool>(arg_0.d.a.x, arg_0.d.d.x, false), vec3<bool>(arg_0.d.c.x, true, var_0.x), true)), !select(!arg_0.d.c.xzy, vec3<bool>(all(vec3<bool>(false, false, var_0.x)), !var_0.x, true != var_0.x), arg_0.d.c.x), arg_0.d.c.xyz);
    var var_1 = (~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a, 4294967295u, 1u, 0u), arg_0.d.e, ~arg_1) & abs(select(vec4<u32>(u_input.b, arg_1.x, arg_1.x, 23774u), arg_1, vec4<bool>(arg_0.d.a.x, true, false, var_0.x)))) & _wgslsmith_mult_vec4_u32((~arg_1 << (arg_0.d.e % vec4<u32>(32u))) & ~_wgslsmith_add_vec4_u32(arg_0.d.e, vec4<u32>(0u, arg_0.a, arg_0.e, arg_1.x)), arg_1);
    var_0 = arg_0.d.a;
    var var_2 = _wgslsmith_clamp_u32(~0u, ~arg_0.a, arg_1.x);
    return _wgslsmith_f_op_vec3_f32(sign(arg_0.d.b));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(step(224f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -435f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-328f, 939f, true)), -1904f))))));
    var var_1 = Struct_5(vec3<i32>(-1i, -firstLeadingBit(~2147483647i), _wgslsmith_add_i32(~u_input.a.x, ~5477i) | 0i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-430f, _wgslsmith_f_op_f32(round(var_0)))), Struct_3(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-533f, -412f, var_0)))), Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(4294967295u, 2011f, -1093f, Struct_1(vec3<bool>(false, false, false), vec3<f32>(var_0, 672f, 2273f), vec4<bool>(true, false, false, true), vec2<bool>(true, false), vec4<u32>(u_input.b, 1u, 1u, u_input.b)), u_input.b), reverseBits(vec4<u32>(1u, u_input.b, u_input.b, 82170u)))), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, false))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), true), vec4<u32>(u_input.b, u_input.b, _wgslsmith_mult_u32(57841u, 42427u), 83975u))));
    var var_2 = 31319u;
    var_1 = Struct_5(var_1.a, var_0, var_1.c);
    var_2 = 14332u;
    return var_1.c.c;
}

fn func_1(arg_0: i32) -> Struct_5 {
    let var_0 = func_2();
    var var_1 = Struct_5(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a) & u_input.a.x, _wgslsmith_mod_i32(28513i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, 2147483647i, 0i), vec4<i32>(18672i, arg_0, 0i, u_input.a.x)))), abs((vec3<i32>(-23995i, u_input.a.x, 98i) & vec3<i32>(-2147483647i, arg_0, -36404i)) << (var_0.e.yzw % vec3<u32>(32u)))), var_0.b.x, Struct_3(var_0.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b - vec3<f32>(var_0.b.x, 1726f, 2439f)), _wgslsmith_f_op_vec3_f32(-var_0.b)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x)))), Struct_1(var_0.a, var_0.b, vec4<bool>(select(true, var_0.c.x, false), var_0.d.x, all(var_0.c), var_0.e.x >= 4294967295u), vec2<bool>(func_2().d.x, all(var_0.c.xyy)), _wgslsmith_clamp_vec4_u32(var_0.e, var_0.e, firstLeadingBit(var_0.e)))));
    let var_2 = u_input.b;
    var_1 = Struct_5(_wgslsmith_mod_vec3_i32(var_1.a, var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(-971f)))))), var_1.c);
    var_1 = Struct_5(_wgslsmith_sub_vec3_i32(vec3<i32>(abs(var_1.a.x) >> (_wgslsmith_mult_u32(var_1.c.c.e.x, 1u) % 32u), arg_0, -29215i), firstLeadingBit(vec3<i32>(var_1.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.x, var_1.a.x), var_1.a.yz), min(u_input.a.x, 0i)))), var_1.c.c.b.x, var_1.c);
    return Struct_5(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2().b.x * _wgslsmith_f_op_f32(-274f - _wgslsmith_f_op_f32(-var_1.c.c.b.x))) - var_1.c.c.b.x), Struct_3(any(select(vec4<bool>(true, var_1.c.c.c.x, var_0.c.x, var_0.c.x), var_1.c.c.c, any(var_0.a.zx))), vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x * -343f), var_0.b.x, var_1.b), var_1.c.c));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_2, arg_2: i32) -> bool {
    var var_0 = arg_1.d.d;
    let var_1 = _wgslsmith_mod_i32(~_wgslsmith_add_i32(-1i, reverseBits(-u_input.a.x)), arg_0.a.x);
    var_0 = func_2().c.xy;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -782f) - _wgslsmith_f_op_f32(-arg_0.c.b.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.c))) - arg_0.b)));
    let var_3 = select(vec2<u32>(u_input.b, arg_0.c.c.e.x), vec2<u32>(~func_2().e.x, 1u), !(arg_0.c.c.a.x | !(!var_0.x)));
    return arg_1.d.a.x != true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -461f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1000f, 1023f)), -128f)), -550f))), vec4<bool>(72054u < select(105470u << (u_input.b % 32u), u_input.b | 17631u, false), all(vec2<bool>(true, all(vec2<bool>(true, true)))), all(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false))), func_4(func_1(u_input.a.x | 0i), Struct_2(~u_input.b, _wgslsmith_div_f32(1356f, 1777f), _wgslsmith_f_op_f32(round(-929f)), func_2(), _wgslsmith_div_u32(61400u, 5612u)), u_input.a.x)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(func_4(Struct_5(vec3<i32>(u_input.a.x, 39312i, u_input.a.x), 1758f, Struct_3(true, vec3<f32>(269f, 692f, -210f), Struct_1(vec3<bool>(false, false, true), vec3<f32>(1166f, 646f, -1014f), vec4<bool>(true, false, false, true), vec2<bool>(true, true), vec4<u32>(u_input.b, 1u, u_input.b, u_input.b)))), Struct_2(28466u, -204f, 717f, Struct_1(vec3<bool>(false, false, false), vec3<f32>(503f, 387f, 185f), vec4<bool>(false, true, true, true), vec2<bool>(false, true), vec4<u32>(4294967295u, 6274u, u_input.b, 4294967295u)), 17441u), -2147483647i), 57890i != firstLeadingBit(u_input.a.x)), vec2<bool>(true, false)), vec4<u32>(4294967295u, u_input.b, _wgslsmith_add_u32(14352u, u_input.b) | 24195u, (u_input.b << (_wgslsmith_mod_u32(u_input.b, u_input.b) % 32u)) & u_input.b));
    var var_1 = u_input.a.x;
    var var_2 = 0i;
    let var_3 = Struct_2(4294967295u, var_0.b.x, _wgslsmith_f_op_f32(var_0.b.x - func_2().b.x), var_0, 0u);
    var_2 = ~u_input.a.x;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(var_3.d.e.x, -2518f, 1844f, var_3.d, var_3.a | 22757u), ~vec4<u32>(6523u, 92185u, var_0.e.x, 4294967295u))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.d.b.x - _wgslsmith_f_op_f32(-var_3.b))))) * -1631f);
    var var_5 = Struct_5(_wgslsmith_clamp_vec3_i32(~firstTrailingBit(vec3<i32>(60290i, u_input.a.x, 2147483647i)), max(vec3<i32>(0i, abs(u_input.a.x), _wgslsmith_clamp_i32(-44119i, -2252i, -21411i)), vec3<i32>(u_input.a.x, -u_input.a.x, -u_input.a.x)), min(max(vec3<i32>(2147483647i, 18301i, 1801i), vec3<i32>(9972i, u_input.a.x, u_input.a.x) ^ vec3<i32>(1040i, u_input.a.x, u_input.a.x)), firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-58597i, 32785i, u_input.a.x), vec3<i32>(2147483647i, u_input.a.x, 0i))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(var_3, ~var_3.d.e)).x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b.x, var_0.b.x)) - var_4)), func_1((u_input.a.x & (u_input.a.x >> (var_3.e % 32u))) | (u_input.a.x >> (_wgslsmith_div_u32(58985u, 43421u) % 32u))).c);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x << (var_0.e.x % 32u), ~min(vec3<u32>(var_5.c.c.e.x, var_5.c.c.e.x, reverseBits(47236u)), ~min(var_0.e.yyz, var_5.c.c.e.zzw)), _wgslsmith_div_vec3_i32(vec3<i32>(0i, func_1(-1i).a.x >> ((4294967295u | var_3.a) % 32u), ~11418i), var_5.a));
}

