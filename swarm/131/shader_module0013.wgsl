struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14>;

var<private> global1: array<f32, 6>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = vec2<i32>(u_input.a.x ^ u_input.a.x, _wgslsmith_sub_i32(~u_input.c.x, min(i32(-1i) * -1i, firstTrailingBit(u_input.a.x))));
    var var_1 = ~u_input.e;
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(_wgslsmith_add_u32(~(~0u), 0u ^ u_input.e)), ~_wgslsmith_sub_u32(abs(u_input.b ^ arg_0.a.x), u_input.b), u_input.e | ~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_0.a.yz, arg_0.a.xz), u_input.e)), 14u)];
    var_2 = global0[_wgslsmith_index_u32(arg_0.a.x, 14u)];
    global1 = array<f32, 6>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2870f * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.d.x, 6u)] - -431f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2.c.a.x, 6u)]) + global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_2.c.a.x, var_2.b.a.x), 6u)]) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_2.c.a.x, 6u)] * -874f))))) <= _wgslsmith_f_op_f32(-501f - -989f);
}

fn func_4(arg_0: bool) -> vec4<u32> {
    let var_0 = select(select(select(!(!vec3<bool>(true, arg_0, arg_0)), !vec3<bool>(arg_0, arg_0, arg_0), !(u_input.a.x >= 0i)), vec3<bool>(arg_0, all(select(vec2<bool>(false, arg_0), vec2<bool>(true, false), true)), true), false), vec3<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(arg_0, true, true), arg_0)), all(!vec4<bool>(false, true, arg_0, true)), ~(u_input.d.x | 97360u) < 67042u), true);
    let var_1 = Struct_1(vec4<u32>(~max(u_input.d.x << (18603u % 32u), ~u_input.d.x), _wgslsmith_div_u32(49710u, ~41302u), 1u, countOneBits(u_input.d.x)), !(!var_0));
    let var_2 = ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(~u_input.b, min(24801u, var_1.a.x), 4294967295u & var_1.a.x, var_1.a.x ^ u_input.b), _wgslsmith_mod_vec4_u32(abs(var_1.a), var_1.a), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(var_1.a, reverseBits(var_1.a)), var_1.a));
    global0 = array<Struct_2, 14>();
    let var_3 = var_1;
    return max(vec4<u32>(var_1.a.x, ~var_3.a.x, countOneBits(~var_2.x), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, var_2.x, var_3.a.x), var_3.a.xzy & var_3.a.yzw), 4294967295u << (_wgslsmith_dot_vec4_u32(var_3.a, vec4<u32>(667u, 4294967295u, var_2.x, 18096u)) % 32u))), var_2 ^ ~_wgslsmith_mod_vec4_u32(var_1.a << (var_3.a % vec4<u32>(32u)), ~vec4<u32>(0u, 25626u, 4294967295u, u_input.b)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_1(func_4(func_3(Struct_1(select(vec4<u32>(u_input.e, u_input.d.x, u_input.b, 28039u), vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, 0u), true), select(arg_1, arg_1, arg_1.x)))), vec3<bool>(arg_1.x, 7858u > ~(~u_input.d.x), false));
    var_0 = Struct_1(_wgslsmith_mod_vec4_u32(~(var_0.a ^ vec4<u32>(0u, u_input.e, u_input.d.x, 0u)), abs(abs(~vec4<u32>(var_0.a.x, var_0.a.x, 38806u, 0u)))), vec3<bool>(arg_1.x, all(vec3<bool>(arg_1.x, false, false)) && var_0.b.x, var_0.a.x != u_input.b));
    global1 = array<f32, 6>();
    let var_1 = 4294967295u;
    let var_2 = max(_wgslsmith_clamp_u32(var_1, 4294967295u, var_0.a.x >> ((~var_1 << (u_input.b % 32u)) % 32u)), firstLeadingBit(var_0.a.x) | var_1);
    return Struct_1(var_0.a, vec3<bool>(func_3(Struct_1(vec4<u32>(var_1, var_1, 4294967295u, var_0.a.x), var_0.b)) && var_0.b.x, any(select(!vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.b.x), !vec4<bool>(var_0.b.x, var_0.b.x, true, true), vec4<bool>(arg_1.x, arg_1.x, true, true))), false));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2) -> u32 {
    var var_0 = func_2(_wgslsmith_add_vec4_i32(vec4<i32>(countOneBits(1i), firstTrailingBit(~arg_0.x), firstTrailingBit(1i), arg_0.x), u_input.c), select(select(select(vec3<bool>(false, arg_1.a.b.x, arg_1.b.b.x), arg_1.b.b, select(arg_1.c.b, vec3<bool>(false, arg_1.b.b.x, false), false)), !select(arg_1.b.b, arg_1.c.b, true), !select(vec3<bool>(true, arg_1.a.b.x, true), arg_1.b.b, vec3<bool>(arg_1.a.b.x, true, arg_1.a.b.x))), select(arg_1.b.b, arg_1.a.b, true & all(arg_1.c.b.xz)), vec3<bool>(true, arg_1.b.b.x, any(!arg_1.c.b))));
    let var_1 = global0[_wgslsmith_index_u32(~var_0.a.x, 14u)];
    global1 = array<f32, 6>();
    var_0 = func_2(_wgslsmith_add_vec4_i32(~vec4<i32>(max(arg_0.x, -2147483647i), u_input.a.x, _wgslsmith_mult_i32(-47697i, 1i), 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(countOneBits(u_input.a.x), arg_0.x, -u_input.a.x, _wgslsmith_clamp_i32(1i, u_input.c.x, arg_0.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(49070i, 22309i, 2147483647i, arg_0.x), -u_input.a))), select(vec3<bool>(func_2(select(u_input.c, vec4<i32>(-64479i, 21311i, arg_0.x, -50595i), vec4<bool>(var_1.a.b.x, true, var_0.b.x, var_1.b.b.x)), var_1.c.b).b.x, _wgslsmith_div_u32(u_input.b, 0u) <= firstTrailingBit(1u), arg_1.c.b.x), !(!select(arg_1.b.b, var_0.b, arg_1.a.b)), select(!func_2(vec4<i32>(-2147483647i, arg_0.x, 42860i, 24579i), arg_1.a.b).b, select(select(var_1.b.b, var_0.b, false), func_2(u_input.c, var_0.b).b, false), vec3<bool>(!arg_1.b.b.x, var_1.b.b.x, var_0.b.x))));
    var var_2 = 57560u;
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 6>();
    var var_0 = Struct_1(min(firstTrailingBit(firstLeadingBit(vec4<u32>(u_input.e, u_input.b, 13417u, u_input.d.x))), ~vec4<u32>(0u, 32118u, u_input.d.x, u_input.e)) << (vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.d.x), vec3<u32>(u_input.e, u_input.d.x, u_input.d.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.b, u_input.b), vec3<u32>(u_input.e, u_input.e, 1u))), func_1(select(vec3<i32>(u_input.c.x, -22956i, -10713i), u_input.c.wyy, true), Struct_2(Struct_1(vec4<u32>(29470u, 7396u, u_input.d.x, u_input.d.x), vec3<bool>(true, true, false)), Struct_1(vec4<u32>(u_input.d.x, 4294967295u, u_input.b, u_input.d.x), vec3<bool>(true, false, false)), Struct_1(vec4<u32>(u_input.e, 4789u, u_input.e, 6198u), vec3<bool>(true, true, false)))), u_input.e, _wgslsmith_div_u32(52027u, func_2(u_input.a, vec3<bool>(true, false, false)).a.x)) % vec4<u32>(32u)), select(vec3<bool>(all(vec4<bool>(false, true, true, true)), true, true), vec3<bool>(true, true, true), true));
    var var_1 = any(select(select(select(vec4<bool>(var_0.b.x, true, var_0.b.x, true), vec4<bool>(false, false, true, var_0.b.x), func_2(vec4<i32>(u_input.a.x, -2147483647i, 23740i, u_input.c.x), var_0.b).b.x), !select(vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.b.x), vec4<bool>(true, true, var_0.b.x, false), false), !select(vec4<bool>(true, var_0.b.x, var_0.b.x, true), vec4<bool>(var_0.b.x, false, false, var_0.b.x), true)), select(!vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true), select(vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.b.x), select(vec4<bool>(false, false, false, false), vec4<bool>(true, var_0.b.x, var_0.b.x, false), vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.b.x)), !var_0.b.x), !var_0.b.x), func_3(func_2(vec4<i32>(34531i, u_input.c.x, u_input.a.x, u_input.a.x), func_2(u_input.c, vec3<bool>(var_0.b.x, true, var_0.b.x)).b))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(386f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(11239u, ~u_input.b), 6u)]), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(~u_input.d.x, 6u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_3 = Struct_1(vec4<u32>(~abs(61466u), 35606u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0.a.x, 4294967295u), var_0.a.x ^ u_input.e), max(21804u, 8705u) >> (_wgslsmith_div_u32(35000u, 4294967295u) % 32u), _wgslsmith_clamp_u32(~65976u, u_input.e, ~1u)), func_2(~_wgslsmith_add_vec4_i32(u_input.c, u_input.a), var_0.b).a.x), func_2(-u_input.a, var_0.b).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1000f)), var_2.x)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.a.x, 6u)] + -1246f)))))), _wgslsmith_f_op_vec2_f32(ceil(var_2.zy)), -_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 15547i), ~vec2<i32>(52078i, u_input.a.x)), 0i), -29523i);
}

