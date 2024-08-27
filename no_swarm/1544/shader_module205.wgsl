struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<f32> = vec4<f32>(-713f, -1000f, 274f, -2117f);

var<private> global2: bool = true;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: f32, arg_3: vec3<bool>) -> bool {
    global2 = all(select(vec2<bool>(false, true), arg_3.zx, any(select(!vec2<bool>(false, arg_3.x), vec2<bool>(true, arg_3.x), any(vec4<bool>(arg_1, true, global0.c, false))))));
    global0 = Struct_1(vec3<bool>(((31296u == u_input.a) && true) && (31244u < (1u ^ u_input.a)), true, 1253f <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_2))))), select(global0.b, select(global0.a.xx, arg_3.zy, global0.a.zy), !arg_1), global0.c, -2541f);
    global0 = Struct_1(select(!(!(!vec3<bool>(true, arg_1, arg_3.x))), vec3<bool>(any(arg_3.zx), all(select(vec4<bool>(global0.c, false, arg_1, global0.c), vec4<bool>(arg_1, arg_3.x, true, true), vec4<bool>(arg_3.x, false, global0.a.x, true))), select(arg_3.x, true, all(vec2<bool>(true, true)))), global0.a), select(select(select(arg_3.xz, !global0.b, arg_3.zz), vec2<bool>(!arg_1, true), arg_3.xx), arg_3.zy, global0.a.xx), arg_1, 1950f);
    global0 = Struct_1(select(select(global0.a, global0.a, !global0.b.x), vec3<bool>(any(vec4<bool>(false, true, false, true)) || (true || global0.a.x), global0.a.x, all(vec2<bool>(false, global0.c))), global0.a), vec2<bool>(false, true), select(!global0.a.x, arg_1, all(arg_3)), global1.x);
    var var_0 = -26102i;
    return false;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = any(!vec4<bool>(true, arg_1.c, true, all(arg_2.a) || false));
    var var_1 = arg_0;
    var var_2 = 2113i;
    global1 = vec4<f32>(arg_2.d, arg_1.d, -364f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-372f))))));
    var_2 = _wgslsmith_dot_vec3_i32(-select(vec3<i32>(1i, 1i, countOneBits(2147483647i)), ~(~vec3<i32>(-8800i, 30320i, -23217i)), var_0), vec3<i32>(abs(29620i), _wgslsmith_mult_i32(~(~0i), -1i), 0i));
    return vec3<u32>(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1943u, 1u, u_input.a) & vec4<u32>(u_input.a, u_input.a, 1u, 0u), vec4<u32>(835u, arg_0, 4294967295u, u_input.a) & vec4<u32>(4294967295u, arg_0, arg_0, 0u)), vec4<u32>(4294967295u, _wgslsmith_clamp_u32(1u, u_input.a, 1u), u_input.a, 4294967295u)), 4294967295u), ~abs(arg_0), _wgslsmith_mod_u32(_wgslsmith_mod_u32(~0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(57155u, 0u))), 40790u));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    global0 = Struct_1(arg_2.a, !global0.b, true, _wgslsmith_f_op_f32(-global1.x));
    let var_0 = func_4(~9493u, Struct_1(vec3<bool>(!arg_2.b.x, true, any(global0.a) && func_3(Struct_3(-386f, -2147483647i, vec3<u32>(arg_1.x, arg_1.x, 4294967295u)), false, -704f, vec3<bool>(true, true, true))), select(vec2<bool>(true, true), vec2<bool>(global0.a.x, global0.b.x), true), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.d)) * global0.d))), Struct_1(!vec3<bool>(arg_2.b.x, global0.b.x, arg_2.b.x), arg_2.a.yy, all(select(vec3<bool>(false, false, arg_2.a.x), arg_2.a, vec3<bool>(false, true, false))) && false, _wgslsmith_f_op_f32(-arg_2.d)));
    global2 = global0.b.x;
    global0 = Struct_1(select(!vec3<bool>(true, any(vec4<bool>(true, false, true, false)), all(vec4<bool>(true, arg_2.c, arg_2.b.x, false))), !vec3<bool>(arg_2.b.x, all(vec2<bool>(true, arg_2.b.x)), true), global0.b.x), arg_2.a.yz, select(select(true, !(-796f <= global1.x), true), global0.c, true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(503f + -387f))));
    var var_1 = ~(-2147483647i);
    return Struct_1(arg_2.a, select(!vec2<bool>(select(global0.b.x, false, global0.c), !arg_2.a.x), global0.b, !arg_2.a.yz), false, _wgslsmith_f_op_f32(-global0.d));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: vec4<bool>) -> f32 {
    global2 = !global0.c;
    var var_0 = reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(~u_input.a | 0u, arg_1, 1u), reverseBits(vec3<u32>(countOneBits(48323u), u_input.a, arg_1 | u_input.a))));
    global0 = func_2(-254f, vec2<u32>(~(~(~var_0.x)), abs(u_input.a)), Struct_1(global0.a, arg_2.zx, any(arg_2), -1971f));
    global1 = arg_0;
    var var_1 = var_0.xy;
    return _wgslsmith_f_op_f32(-arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-784f, _wgslsmith_f_op_f32(trunc(474f)), global0.d, _wgslsmith_f_op_f32(global0.d - global0.d)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, global0.d, global1.x, global1.x), vec4<f32>(1779f, -233f, 1663f, global0.d))))), vec4<f32>(1550f, _wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(func_1(vec4<f32>(global1.x, 255f, global1.x, 657f), 1099u, vec4<bool>(global0.a.x, true, false, true))), -1362f)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.d, global0.d, 1071f, -367f), vec4<f32>(global1.x, global1.x, -1209f, global1.x)))))));
    let var_0 = select(firstTrailingBit(vec3<u32>(firstTrailingBit(10388u), ~u_input.a, u_input.a)), min(_wgslsmith_div_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(43483u, u_input.a, 1u)), ~(vec3<u32>(29181u, 70519u, u_input.a) >> (vec3<u32>(u_input.a, 0u, u_input.a) % vec3<u32>(32u)))), max(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 44725u, 0u), ~vec3<u32>(u_input.a, 24317u, 0u)), func_4(u_input.a, func_2(-1278f, vec2<u32>(u_input.a, 19739u), Struct_1(global0.a, global0.a.xx, true, global1.x)), Struct_1(global0.a, vec2<bool>(global0.b.x, true), global0.a.x, -823f)))), global0.a);
    var var_1 = func_2(global0.d, vec2<u32>(var_0.x, var_0.x >> (~firstTrailingBit(33425u) % 32u)), Struct_1(select(func_2(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_0.x), vec2<u32>(u_input.a, 28730u)), func_2(-543f, var_0.xy, Struct_1(vec3<bool>(global0.a.x, true, global0.a.x), global0.a.zy, global0.c, -179f))).a, vec3<bool>(true, true, true), vec3<bool>(global0.b.x, func_2(global0.d, vec2<u32>(var_0.x, u_input.a), Struct_1(global0.a, global0.b, global0.a.x, global1.x)).b.x, !global0.a.x)), vec2<bool>(global0.b.x, true), all(vec3<bool>(global0.b.x & true, true, all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.d))))));
    var var_2 = Struct_2(Struct_1(var_1.a, vec2<bool>(func_3(Struct_3(global1.x, 1i, var_0), !global0.b.x, _wgslsmith_f_op_f32(ceil(var_1.d)), vec3<bool>(global0.b.x, false, global0.c)), true), global0.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.d)))))));
    let var_3 = 57764u;
    let var_4 = true;
    global2 = select(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)), _wgslsmith_sub_vec2_u32(max(var_0.xx, vec2<u32>(var_0.x, 39272u)), var_0.zy >> (var_0.xx % vec2<u32>(32u))), var_2.a).a.x && any(var_1.a), var_1.c, true);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<i32>(0i, firstLeadingBit(18730i), 1i, -71907i)) ^ select(countOneBits(vec4<i32>(14214i, -1i, 0i, -1i)) >> (max(vec4<u32>(9097u, var_3, u_input.a, 89746u), vec4<u32>(6680u, var_0.x, 1u, var_0.x)) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(min(vec4<i32>(11312i, -54972i, 19931i, 43056i), vec4<i32>(-1i, -6959i, 2147483647i, 1i)), vec4<i32>(2147483647i, -1i, -2147483647i, -56937i)), !select(var_2.a.b.x, var_2.a.b.x, var_4)));
}

