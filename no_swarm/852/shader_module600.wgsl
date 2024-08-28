struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 30> = array<vec2<bool>, 30>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec4<f32>(1000f, 728f, -1227f, 352f), vec2<bool>(false, false), 0u), Struct_1(vec4<f32>(751f, -381f, 1198f, 913f), vec2<bool>(true, false), 4294967295u), Struct_1(vec4<f32>(-773f, 1000f, 385f, 1521f), vec2<bool>(true, true), 11341u), Struct_1(vec4<f32>(1489f, 1000f, -783f, 841f), vec2<bool>(false, false), 4294967295u), Struct_1(vec4<f32>(807f, -334f, 423f, 707f), vec2<bool>(true, false), 0u), Struct_1(vec4<f32>(738f, 526f, 690f, 312f), vec2<bool>(false, false), 0u), Struct_1(vec4<f32>(-1366f, -445f, 2157f, -1920f), vec2<bool>(true, true), 10529u));

var<private> global2: vec4<f32> = vec4<f32>(247f, -1982f, 1000f, -328f);

var<private> global3: bool = false;

var<private> global4: array<u32, 31> = array<u32, 31>(1u, 4294967295u, 32417u, 1u, 4294967295u, 1u, 0u, 62204u, 1u, 4294967295u, 1u, 65252u, 4294967295u, 4294967295u, 0u, 18663u, 0u, 23055u, 30330u, 4294967295u, 4294967295u, 4294967295u, 70821u, 4294967295u, 19073u, 54956u, 4294967295u, 23770u, 4294967295u, 5466u, 0u);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec4<u32>) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(~(~(~4294967295u) | ~arg_0.x) | _wgslsmith_sub_u32(49375u, ~_wgslsmith_add_u32(u_input.e.x, 918u)), 7u)];
    let var_1 = vec4<bool>(true | !((678f != global2.x) | (global2.x >= 385f)), false, ~(~42432u) >= _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(var_0.c, var_0.c), 32948u, global4[_wgslsmith_index_u32(1u, 31u)]), _wgslsmith_clamp_vec3_u32(u_input.e, arg_0.wzy ^ arg_0.yyw, vec3<u32>(4294967295u, 61738u, 0u))), var_0.b.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(739f)));
    global2 = var_0.a;
    var var_3 = _wgslsmith_f_op_f32(min(global2.x, global2.x));
    return var_0.b.x & (var_0.a.x <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global2.x)))))));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>) -> u32 {
    return global4[_wgslsmith_index_u32(u_input.e.x | _wgslsmith_clamp_u32(0u, firstTrailingBit(~3780u), _wgslsmith_dot_vec3_u32(u_input.c.zzy, select(vec3<u32>(43879u, arg_0, 1u) << (vec3<u32>(1u, 1u, u_input.e.x) % vec3<u32>(32u)), vec3<u32>(arg_0, u_input.c.x, u_input.e.x), vec3<bool>(false, arg_1.x, false)))), 31u)];
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    let var_0 = 90212u;
    let var_1 = -arg_2;
    var var_2 = arg_3;
    var var_3 = global1[_wgslsmith_index_u32(func_3(4294967295u, !vec4<bool>(u_input.b.x == -34555i, any(vec2<bool>(true, true)), func_1(vec4<u32>(4294967295u, 1u, 9720u, 0u)), arg_0.a.x != -173f)), 7u)];
    let var_4 = arg_1;
    return u_input.c.x | ~(~var_0);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32) -> Struct_1 {
    let var_0 = ~abs(vec2<i32>(-16298i, arg_1.x) & ~arg_1) << (vec2<u32>((~0u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(39951u, 1u)) % 32u)) | u_input.c.x, 1u) % vec2<u32>(32u));
    global1 = array<Struct_1, 7>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(arg_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a * arg_0.a)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(261f, arg_0.a.x, 1317f, global2.x) + _wgslsmith_f_op_vec4_f32(select(arg_0.a, vec4<f32>(arg_0.a.x, arg_0.a.x, 1044f, arg_0.a.x), vec4<bool>(true, arg_0.b.x, true, false))))))), vec2<bool>(arg_0.b.x, (arg_0.c == _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, arg_2), vec2<u32>(global4[_wgslsmith_index_u32(95506u, 31u)], 76021u))) || (1u <= (global4[_wgslsmith_index_u32(1u, 31u)] | 0u))), arg_2);
    let var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.x, u_input.b.x ^ max(-14258i, firstLeadingBit(35261i))), vec2<i32>((_wgslsmith_mod_i32(-2147483647i, u_input.a) | -5534i) << (22884u % 32u), reverseBits(var_0.x)));
    var var_3 = Struct_1(var_1.a, select(vec2<bool>(var_1.b.x, var_1.b.x), select(!var_1.b, select(global0[_wgslsmith_index_u32(var_1.c << (global4[_wgslsmith_index_u32(var_1.c, 31u)] % 32u), 30u)], vec2<bool>(var_1.b.x, true), vec2<bool>(arg_0.b.x, true)), select(!var_1.b, vec2<bool>(true, var_1.b.x), select(arg_0.b, var_1.b, vec2<bool>(true, true)))), select(vec2<bool>(true, !var_1.b.x), !var_1.b, arg_0.b.x)), ~4294967295u);
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = u_input.b.x < (i32(-1i) * -2147483647i);
    global3 = arg_3.b.x;
    var var_1 = -1217f;
    var var_2 = Struct_1(_wgslsmith_div_vec4_f32(arg_0.a, vec4<f32>(_wgslsmith_f_op_f32(step(355f, _wgslsmith_f_op_f32(arg_0.a.x - arg_1.a.x))), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.x) - _wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(-global2.x))), select(!(!arg_3.b), select(global0[_wgslsmith_index_u32((0u ^ arg_0.c) << (u_input.c.x % 32u), 30u)], vec2<bool>(func_4(arg_3, vec2<i32>(u_input.a, u_input.a), arg_1.c).b.x, true), arg_0.b), any(vec3<bool>(true, true, true))), arg_0.c);
    return !vec3<bool>(false, ~u_input.a <= 0i, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global2.x), -448f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.x)) + global2.x) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.x))))), global0[_wgslsmith_index_u32(61650u, 30u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(78261u, 31u)], 31u)]);
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, -943f, -1841f) * var_0.a) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_0.a, vec4<f32>(var_0.a.x, -1132f, global2.x, 1535f))) - var_0.a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -2273f) * var_0.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, global2.x, global2.x, global2.x), var_0.a, func_1(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.e.x, 31u)], 31u)], 4294967295u, 1u, 0u))))))));
    var var_1 = func_5(func_4(var_0, _wgslsmith_sub_vec2_i32(reverseBits(max(vec2<i32>(u_input.a, -1i), vec2<i32>(u_input.d.x, u_input.a))), u_input.d), abs(func_2(Struct_1(var_0.a, vec2<bool>(false, var_0.b.x), 0u), var_0.b.x, _wgslsmith_mod_vec4_i32(vec4<i32>(20424i, -28780i, u_input.d.x, -23323i), vec4<i32>(u_input.d.x, u_input.b.x, 1i, -1i)), global1[_wgslsmith_index_u32(4294967295u, 7u)]))), var_0, select((~u_input.d | vec2<i32>(1i, u_input.a)) & u_input.d, _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, -14858i), vec2<i32>(-7429i, u_input.a)), u_input.b) << (~countOneBits(vec2<u32>(u_input.c.x, 0u)) % vec2<u32>(32u)), vec2<bool>(false, func_4(Struct_1(vec4<f32>(var_0.a.x, -637f, 1208f, global2.x), vec2<bool>(true, var_0.b.x), var_0.c), vec2<i32>(u_input.b.x, -25909i), u_input.c.x).b.x)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-569f - 2991f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + -147f) - -273f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-134f))), var_0.a.x), func_4(Struct_1(var_0.a, select(var_0.b, var_0.b, vec2<bool>(false, var_0.b.x)), ~13848u), u_input.d, ~reverseBits(58675u)).b, _wgslsmith_sub_u32(1u, countOneBits(_wgslsmith_dot_vec2_u32(u_input.c.yx, vec2<u32>(8615u, 4294967295u))))));
    let var_2 = global1[_wgslsmith_index_u32(reverseBits(282u >> (u_input.c.x % 32u)), 7u)];
    var var_3 = func_4(var_0, max(_wgslsmith_add_vec2_i32(vec2<i32>(-u_input.d.x, -34939i), vec2<i32>(-2147483647i, 0i << (global4[_wgslsmith_index_u32(u_input.c.x, 31u)] % 32u))), u_input.d), 1u);
    var_3 = Struct_1(func_4(Struct_1(var_2.a, !func_5(Struct_1(vec4<f32>(2193f, -623f, var_0.a.x, 1014f), vec2<bool>(false, true), 65837u), var_0, vec2<i32>(31802i, u_input.d.x), var_0).xx, ~global4[_wgslsmith_index_u32(4294967295u, 31u)] & var_0.c), ~vec2<i32>(u_input.b.x, 32019i), 4294967295u).a, vec2<bool>(true, var_0.b.x), 1u);
    global0 = array<vec2<bool>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global2.x))))))));
}

