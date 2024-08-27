struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(vec4<bool>(true, true, false, true)), Struct_3(vec4<bool>(false, true, true, false)), Struct_3(vec4<bool>(true, true, false, true)), Struct_3(vec4<bool>(true, true, true, true)), Struct_3(vec4<bool>(true, false, false, false)), Struct_3(vec4<bool>(false, true, false, true)), Struct_3(vec4<bool>(true, false, true, false)), Struct_3(vec4<bool>(true, true, true, true)), Struct_3(vec4<bool>(true, true, false, true)), Struct_3(vec4<bool>(true, true, true, false)), Struct_3(vec4<bool>(false, true, false, true)), Struct_3(vec4<bool>(true, false, true, false)), Struct_3(vec4<bool>(false, true, true, false)), Struct_3(vec4<bool>(false, false, false, false)), Struct_3(vec4<bool>(true, false, true, false)), Struct_3(vec4<bool>(true, true, true, false)), Struct_3(vec4<bool>(false, true, false, true)), Struct_3(vec4<bool>(true, false, false, false)), Struct_3(vec4<bool>(false, true, true, false)), Struct_3(vec4<bool>(true, false, false, true)), Struct_3(vec4<bool>(true, false, true, false)), Struct_3(vec4<bool>(true, true, false, false)), Struct_3(vec4<bool>(false, true, true, false)), Struct_3(vec4<bool>(false, true, false, false)), Struct_3(vec4<bool>(false, false, false, false)), Struct_3(vec4<bool>(false, true, false, false)), Struct_3(vec4<bool>(true, false, false, false)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: vec3<i32>) -> bool {
    let var_0 = u_input.a;
    var var_1 = Struct_1(select(vec4<i32>(arg_2.x | 37798i, 2147483647i, i32(-1i) * -55240i, 1i), (vec4<i32>(u_input.e, u_input.e, -19297i, -19817i) >> (select(arg_1, vec4<u32>(var_0, 0u, arg_1.x, var_0), vec4<bool>(false, false, true, true)) % vec4<u32>(32u))) ^ vec4<i32>(-2147483647i, u_input.e, -12817i, u_input.e), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-430f - -2039f)), select(arg_1.zzw, select(arg_1.xyx, ~vec3<u32>(1u, u_input.d, u_input.d), arg_0), vec3<bool>(arg_0, any(!vec4<bool>(arg_0, true, arg_0, arg_0)), arg_1.x > _wgslsmith_mult_u32(u_input.c, 28844u))));
    global0 = array<Struct_3, 27>();
    let var_2 = global0[_wgslsmith_index_u32(~(~(~1u)), 27u)];
    global0 = array<Struct_3, 27>();
    return true && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-151f, -580f) * _wgslsmith_f_op_f32(max(var_1.b, var_1.b)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.b, 730f)) * -935f));
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = Struct_4(vec3<bool>(u_input.c >= (u_input.b.x << (4294967295u % 32u)), true, u_input.e < reverseBits(arg_0)), true);
    var var_1 = Struct_4(select(var_0.a, select(vec3<bool>(arg_0 <= 11337i, !var_0.a.x, func_3(var_0.a.x, vec4<u32>(u_input.d, u_input.d, 41715u, 31357u), vec3<i32>(arg_0, u_input.e, -17810i))), select(select(vec3<bool>(var_0.a.x, var_0.b, false), vec3<bool>(false, var_0.b, true), vec3<bool>(true, true, true)), select(var_0.a, vec3<bool>(var_0.b, true, var_0.b), true), !vec3<bool>(var_0.b, true, false)), false), var_0.a.x), var_0.a.x);
    let var_2 = Struct_1(-vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 2147483647i, u_input.e, 0i) | vec4<i32>(50601i, arg_0, u_input.e, arg_0), ~vec4<i32>(arg_0, 1i, arg_0, arg_0)), -2147483647i, arg_0, _wgslsmith_dot_vec3_i32(~vec3<i32>(20308i, -6810i, -2147483647i), ~vec3<i32>(u_input.e, 60896i, arg_0))), 968f, _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, 67056u, 47967u), min(firstLeadingBit(min(vec3<u32>(1u, u_input.b.x, 30347u), vec3<u32>(u_input.a, 48746u, u_input.c))), vec3<u32>(3209u, u_input.a, u_input.b.x))));
    let var_3 = max(-9591i, abs(arg_0));
    let var_4 = global0[_wgslsmith_index_u32(1u, 27u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1045f)), _wgslsmith_f_op_f32(554f * var_2.b)));
}

fn func_4(arg_0: f32) -> Struct_4 {
    var var_0 = abs(_wgslsmith_add_i32(27411i, ~14863i));
    let var_1 = vec4<bool>(true, !select(any(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), true, _wgslsmith_f_op_f32(f32(-1f) * -457f) == _wgslsmith_f_op_f32(min(arg_0, 338f))), 4294967295u != ~abs(u_input.a), true);
    global0 = array<Struct_3, 27>();
    var var_2 = u_input.e;
    var var_3 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(64120u, ~u_input.a), _wgslsmith_div_u32(u_input.a, firstTrailingBit(0u))), select(_wgslsmith_mult_u32(select(0u, u_input.c, var_1.x), u_input.c), _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.d, u_input.b.x), u_input.a ^ 110571u), ~u_input.e < 13348i), 1u), vec3<u32>(reverseBits(~max(u_input.a, u_input.d)), max(u_input.d, 1u), u_input.b.x << ((max(2159u, 4294967295u) & ~u_input.d) % 32u)));
    return Struct_4(!var_1.xzx, any(var_1.zy));
}

fn func_1(arg_0: bool) -> Struct_4 {
    var var_0 = func_4(_wgslsmith_f_op_f32(func_2(1i)));
    var_0 = func_4(-593f);
    let var_1 = var_0.a.x;
    global0 = array<Struct_3, 27>();
    let var_2 = _wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, u_input.b.x, u_input.a, u_input.d), ~select(vec4<u32>(u_input.c, 35515u, u_input.b.x, u_input.a), vec4<u32>(0u, 46982u, 64647u, 5991u), var_0.b)), vec4<u32>(13978u & _wgslsmith_dot_vec4_u32(vec4<u32>(19203u, 1u, 11245u, u_input.a) | vec4<u32>(72215u, u_input.a, u_input.a, u_input.d), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 7115u, u_input.d, u_input.d), vec4<u32>(u_input.b.x, u_input.c, u_input.a, 4294967295u))), _wgslsmith_add_u32(~u_input.d, u_input.b.x) | reverseBits(max(26738u, u_input.d)), abs(25360u), u_input.d));
    return func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1000f, -1000f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-559f + _wgslsmith_f_op_f32(2727f + 1008f)), _wgslsmith_f_op_f32(-859f - 1285f))));
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: bool) -> vec2<i32> {
    global0 = array<Struct_3, 27>();
    global0 = array<Struct_3, 27>();
    global0 = array<Struct_3, 27>();
    global0 = array<Struct_3, 27>();
    let var_0 = Struct_2(arg_1, Struct_1(vec4<i32>(-1i, firstTrailingBit(i32(-1i) * -2147483647i), _wgslsmith_clamp_i32(reverseBits(1i), u_input.e | u_input.e, -21565i), u_input.e), 1105f, vec3<u32>(~12363u, ~1u, reverseBits(1u) << (~u_input.b.x % 32u))));
    return var_0.b.a.xy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~select(vec2<i32>(u_input.e, ~(-27920i)), vec2<i32>(~(-70299i), ~13161i), vec2<bool>(any(vec2<bool>(false, true)), true)));
    var_0 = reverseBits(-_wgslsmith_mod_vec2_i32(vec2<i32>(firstLeadingBit(2147483647i), 25184i), func_5(func_1(false), true, true)));
    var var_1 = select(vec2<bool>(func_5(func_1(false), true, false).x == firstTrailingBit(_wgslsmith_sub_i32(u_input.e, var_0.x)), true), select(vec2<bool>(true, true), vec2<bool>(!func_1(false).a.x, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), vec2<bool>(true, true));
    let var_2 = var_0.x;
    let var_3 = Struct_2(u_input.e >= _wgslsmith_div_i32(10438i << (1u % 32u), _wgslsmith_mult_i32(-232i, _wgslsmith_div_i32(-2147483647i, u_input.e))), Struct_1(~(~abs(vec4<i32>(67861i, var_0.x, -36369i, u_input.e))), -1011f, min(vec3<u32>(39436u, 1u, 16431u), vec3<u32>(8796u, u_input.c, countOneBits(1287u)))));
    let var_4 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(5390u, u_input.b.x), vec4<u32>(min(~27670u, countOneBits(var_3.b.c.x)), abs(firstLeadingBit(21508u)), ~var_3.b.c.x, min(min(4294967295u, 72734u), u_input.c)) ^ select(~select(vec4<u32>(u_input.c, 9419u, var_3.b.c.x, 46391u), vec4<u32>(48215u, 1u, 4294967295u, var_3.b.c.x), vec4<bool>(true, var_3.a, var_1.x, true)), ~select(vec4<u32>(13971u, 46428u, u_input.b.x, var_3.b.c.x), vec4<u32>(1u, var_3.b.c.x, 1u, var_4.c.x), true), true), var_3.b.a.yzz, vec3<u32>(0u, _wgslsmith_dot_vec3_u32(var_4.c, _wgslsmith_clamp_vec3_u32(abs(var_4.c), ~var_4.c, abs(vec3<u32>(20448u, u_input.a, 4294967295u)))), (~0u >> (0u % 32u)) << (var_3.b.c.x % 32u)));
}

