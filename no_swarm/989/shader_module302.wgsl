struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<u32>,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<i32>,
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

var<private> global0: array<u32, 11>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = array<u32, 11>();
    global0 = array<u32, 11>();
    let var_0 = u_input.d;
    let var_1 = ~(~(~(~arg_0.c.zy) << (~(~vec2<u32>(arg_0.c.x, 0u)) % vec2<u32>(32u))));
    global0 = array<u32, 11>();
    return all(select(vec3<bool>(true, arg_0.b, !any(vec4<bool>(true, arg_0.b, arg_0.b, arg_0.b))), select(!select(vec3<bool>(false, arg_0.b, false), vec3<bool>(true, arg_0.b, true), vec3<bool>(true, true, arg_0.b)), !select(vec3<bool>(false, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, arg_0.b, arg_0.b), true), vec3<bool>(arg_0.b, arg_0.b, arg_0.b)), vec3<bool>(any(!vec4<bool>(false, arg_0.b, arg_0.b, arg_0.b)), true, true & arg_0.b)));
}

fn func_2() -> f32 {
    var var_0 = ~(firstTrailingBit(_wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, 44496u), ~vec2<u32>(12699u, global0[_wgslsmith_index_u32(u_input.b, 11u)]), min(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, 48508u)))) | ~abs(vec2<u32>(u_input.a, u_input.b)));
    var_0 = _wgslsmith_sub_vec2_u32(~vec2<u32>(29649u, global0[_wgslsmith_index_u32(~var_0.x, 11u)]), vec2<u32>(u_input.b, var_0.x));
    global0 = array<u32, 11>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-546f + -1795f))), any(vec3<bool>(true, any(vec3<bool>(true, true, true)), func_3(Struct_1(1429f, false, vec4<u32>(21261u, u_input.a, var_0.x, global0[_wgslsmith_index_u32(53261u, 11u)]))))), abs(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(1212u, 11u)], 1u, var_0.x)));
    global0 = array<u32, 11>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(659f, _wgslsmith_f_op_f32(-var_1.a))));
}

fn func_1(arg_0: f32, arg_1: f32) -> u32 {
    let var_0 = ~(~(~(~(~vec4<u32>(14093u, 64696u, 6253u, 0u)))));
    var var_1 = 165f;
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-1882f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - -639f)), true, var_0), Struct_2(arg_0, _wgslsmith_add_vec2_i32(u_input.e.yy, -abs(u_input.e.zz))), _wgslsmith_add_vec2_u32(select(~var_0.zx, var_0.zz, true) | ~(var_0.xw << (vec2<u32>(31557u, 35402u) % vec2<u32>(32u))), vec2<u32>(firstLeadingBit(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(1u, 11u)], 28981u)), ~38120u | (global0[_wgslsmith_index_u32(1u, 11u)] << (var_0.x % 32u)))), ~abs(var_0), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -517f), !func_3(Struct_1(-224f, true, var_0)) && true, var_0));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-735f)), -1758f, arg_0, arg_0) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-662f, arg_1, var_2.e.a, 1000f), vec4<f32>(-621f, 817f, arg_0, 1751f), true)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 1568f, -895f, -1076f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, arg_1, 983f, var_2.a.a))), var_2.a.b)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2100f, arg_1, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2042f, arg_0, -506f, arg_0))), true)))));
    var var_4 = false;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 11>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-1513f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-633f, 146f), _wgslsmith_f_op_f32(select(1626f, 788f, true))))), false, vec4<u32>(_wgslsmith_sub_u32(68070u, select(~1u, 1u, any(vec4<bool>(false, false, false, false)))), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(func_1(-923f, 482f), 11u)], u_input.b), 1u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~33749u, 11u)], 11u)]));
    let var_1 = true;
    global0 = array<u32, 11>();
    var var_2 = vec2<i32>(-u_input.e.x, 11681i);
    var var_3 = !all(vec2<bool>(var_0.b, _wgslsmith_f_op_f32(sign(586f)) > _wgslsmith_f_op_f32(abs(var_0.a))));
    var var_4 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + -339f), var_1, ~(var_0.c & countOneBits(var_0.c))), Struct_2(606f, vec2<i32>(u_input.c << (52588u % 32u), -u_input.e.x) & (-u_input.e.yx >> (var_0.c.zy % vec2<u32>(32u)))), vec2<u32>(u_input.b, select(countOneBits(global0[_wgslsmith_index_u32(~65909u, 11u)]), reverseBits(~global0[_wgslsmith_index_u32(5482u, 11u)]), var_0.b)), vec4<u32>(11746u, ~(~(~u_input.b)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(21399u, u_input.b, u_input.a, 0u) & var_0.c, ~var_0.c), 0u ^ func_1(_wgslsmith_f_op_f32(var_0.a + 759f), var_0.a)), var_0);
    var_4 = Struct_3(Struct_1(var_4.a.a, any(select(!vec2<bool>(var_4.a.b, var_4.a.b), select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(var_1, true))), _wgslsmith_clamp_vec4_u32(var_0.c, max(countOneBits(vec4<u32>(var_4.d.x, 1u, global0[_wgslsmith_index_u32(0u, 11u)], 0u)), vec4<u32>(73637u, 0u, 4294967295u, u_input.a)), var_0.c)), var_4.b, vec2<u32>(~(~var_4.a.c.x), reverseBits(_wgslsmith_dot_vec2_u32(var_4.e.c.yx & vec2<u32>(u_input.a, var_4.a.c.x), var_4.a.c.yw))), var_4.d, var_0);
    var var_5 = var_4.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a))));
}

