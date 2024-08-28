struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-449f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-342f)) - -1000f)) - 506f);
    var var_1 = abs(u_input.d.x);
    var var_2 = vec4<u32>(~u_input.c >> (countOneBits(u_input.c) % 32u), u_input.c, ~(~u_input.c), _wgslsmith_clamp_u32(u_input.c, ~(u_input.c | 1u), u_input.c) & u_input.c);
    var var_3 = any(vec4<bool>(true, true, any(select(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(var_2.x, 6u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(var_2.x, 6u)], true, global0[_wgslsmith_index_u32(0u, 6u)]), vec3<bool>(false, true, arg_0), vec3<bool>(true, true, arg_0)), false)), true));
    global0 = array<bool, 6>();
    return ~countOneBits(min(~(~var_2.zy), var_2.yy));
}

fn func_2() -> Struct_2 {
    return Struct_2(Struct_1(~(~vec4<u32>(125195u, 1u, 4294967295u, u_input.c)), u_input.d.x), vec4<u32>(u_input.c, _wgslsmith_dot_vec2_u32(~func_3(global0[_wgslsmith_index_u32(u_input.c, 6u)]), ~(~vec2<u32>(u_input.c, u_input.c))), 1u, u_input.c), ~select(select(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(u_input.c, 15067u, u_input.c) ^ vec3<u32>(47032u, 10738u, 0u), any(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 6u)], false))), vec3<u32>(17400u & u_input.c, ~37809u, u_input.c << (1u % 32u)), false || (global0[_wgslsmith_index_u32(0u, 6u)] || false)), u_input.b);
}

fn func_4(arg_0: Struct_4, arg_1: f32) -> vec3<f32> {
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    let var_0 = arg_0;
    let var_1 = select(select(!select(!vec4<bool>(global0[_wgslsmith_index_u32(var_0.a.b.x, 6u)], global0[_wgslsmith_index_u32(54029u, 6u)], true, false), select(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0.a.b.x, 6u)], global0[_wgslsmith_index_u32(1u, 6u)], false), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.a.a.a.x, 6u)], global0[_wgslsmith_index_u32(1u, 6u)], true, false), global0[_wgslsmith_index_u32(arg_0.a.a.a.x, 6u)]), !global0[_wgslsmith_index_u32(40121u, 6u)]), !(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 6u)], true, false, global0[_wgslsmith_index_u32(39690u, 6u)])), select(select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)]), !vec4<bool>(true, true, global0[_wgslsmith_index_u32(346u, 6u)], false), all(vec2<bool>(true, global0[_wgslsmith_index_u32(81666u, 6u)]))), vec4<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(arg_0.a.b.x, 6u)])), global0[_wgslsmith_index_u32(abs(2014u), 6u)], !global0[_wgslsmith_index_u32(u_input.c, 6u)], select(global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(arg_0.a.a.a.x, 6u)], global0[_wgslsmith_index_u32(122097u, 6u)])), !select(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(18737u, 6u)], global0[_wgslsmith_index_u32(12259u, 6u)]), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.a.a.a.x, 6u)], false, true, true), vec4<bool>(false, true, global0[_wgslsmith_index_u32(29957u, 6u)], true)))), vec4<bool>(global0[_wgslsmith_index_u32(var_0.a.b.x, 6u)], false, any(!select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(arg_0.a.a.a.x, 6u)]), vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(arg_0.a.a.a.x, 6u)], global0[_wgslsmith_index_u32(var_0.a.c.x, 6u)]))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(arg_0.a.a.a.zx >> (arg_0.a.b.yw % vec2<u32>(32u)), ~arg_0.a.a.a.yw, false), vec2<u32>(abs(44941u), 1u)), 6u)]), !select(vec4<bool>(global0[_wgslsmith_index_u32(~70935u, 6u)], all(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.a.a.a.x, 6u)], false, false, true)), true, true), !(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(arg_0.a.b.x, 6u)], global0[_wgslsmith_index_u32(var_0.a.a.a.x, 6u)])), select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(var_0.a.c.x, 6u)], true, true), vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0.a.a.a.x, 6u)], global0[_wgslsmith_index_u32(u_input.c, 6u)], global0[_wgslsmith_index_u32(55346u, 6u)]), all(vec4<bool>(false, true, global0[_wgslsmith_index_u32(arg_0.a.c.x, 6u)], global0[_wgslsmith_index_u32(u_input.c, 6u)])))));
    global0 = array<bool, 6>();
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(1000f, -1036f)), _wgslsmith_f_op_f32(f32(-1f) * -885f), _wgslsmith_f_op_f32(round(193f)))), vec3<f32>(arg_1, 107f, _wgslsmith_f_op_f32(f32(-1f) * -647f))));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<f32>) -> Struct_4 {
    var var_0 = func_2().a;
    let var_1 = Struct_3(Struct_1(vec4<u32>(u_input.c, countOneBits(27261u), ~func_2().b.x, ~(~var_0.a.x)), var_0.b), Struct_2(func_2().a, _wgslsmith_div_vec4_u32(var_0.a & var_0.a, vec4<u32>(u_input.c, 1u, 29028u, 1u)) | select(var_0.a << (var_0.a % vec4<u32>(32u)), select(vec4<u32>(var_0.a.x, u_input.c, 4294967295u, var_0.a.x), vec4<u32>(var_0.a.x, 8105u, 21746u, 56213u), global0[_wgslsmith_index_u32(75253u, 6u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(2091u, 6u)], global0[_wgslsmith_index_u32(var_0.a.x, 6u)], false, global0[_wgslsmith_index_u32(1u, 6u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(32083u, 6u)], true), vec4<bool>(true, global0[_wgslsmith_index_u32(96658u, 6u)], true, global0[_wgslsmith_index_u32(u_input.c, 6u)]))), vec3<u32>(1u, u_input.c, ~reverseBits(11147u)), _wgslsmith_mult_i32(6291i, -_wgslsmith_div_i32(var_0.b, -31060i))));
    let var_2 = 6238i;
    global0 = array<bool, 6>();
    let var_3 = Struct_4(func_2());
    return var_3;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<bool>) -> i32 {
    var var_0 = func_5(_wgslsmith_f_op_vec3_f32(func_4(Struct_4(func_2()), -1239f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-3539f, -1371f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1352f + 1000f) - -935f))));
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    let var_1 = u_input.a;
    var_0 = Struct_4(func_2());
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 6>();
    let var_0 = true;
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    let var_1 = Struct_4(Struct_2(Struct_1(vec4<u32>(72745u, u_input.c >> (u_input.c % 32u), _wgslsmith_div_u32(u_input.c, u_input.c), u_input.c ^ u_input.c), func_1(~vec3<u32>(0u, u_input.c, 4294967295u), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 6u)], true, false, global0[_wgslsmith_index_u32(u_input.c, 6u)]))), vec4<u32>(~(~u_input.c), ~0u, 4294967295u, firstLeadingBit(abs(4294967295u))), select(~vec3<u32>(4294967295u, 12257u, u_input.c) >> (vec3<u32>(1u, u_input.c, 4294967295u) % vec3<u32>(32u)), vec3<u32>(1u, 30091u, ~u_input.c), all(vec4<bool>(var_0, true, true, var_0))), u_input.b));
    var var_2 = _wgslsmith_clamp_vec4_i32(u_input.d >> (var_1.a.a.a % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(u_input.d, (u_input.d >> (vec4<u32>(u_input.c, u_input.c, u_input.c, var_1.a.a.a.x) % vec4<u32>(32u))) << (_wgslsmith_add_vec4_u32(vec4<u32>(var_1.a.a.a.x, u_input.c, 23680u, u_input.c), vec4<u32>(u_input.c, var_1.a.b.x, var_1.a.b.x, 37229u)) % vec4<u32>(32u)), firstLeadingBit(u_input.d)), u_input.d) >> (vec4<u32>(4294967295u, var_1.a.b.x, u_input.c, ~(~var_1.a.c.x ^ 0u)) % vec4<u32>(32u));
    var var_3 = _wgslsmith_dot_vec2_u32(var_1.a.c.xy, abs(vec2<u32>(120394u, u_input.c) << (_wgslsmith_mult_vec2_u32(countOneBits(var_1.a.c.yy), _wgslsmith_sub_vec2_u32(vec2<u32>(47056u, 25287u), vec2<u32>(var_1.a.c.x, 0u))) % vec2<u32>(32u))));
    global0 = array<bool, 6>();
    var var_4 = var_1.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(var_4.a, var_4.a), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-310f, -613f, -381f) * vec3<f32>(394f, -2686f, -545f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(154f, -822f, 1000f) - vec3<f32>(1000f, -1208f, 298f)))), vec3<f32>(-248f, -556f, _wgslsmith_f_op_f32(f32(-1f) * -251f))))));
}

