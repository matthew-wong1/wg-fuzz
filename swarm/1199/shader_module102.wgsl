struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 19>;

var<private> global1: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> vec2<bool> {
    let var_0 = reverseBits(vec4<u32>(abs(82600u), global1.e, _wgslsmith_sub_u32(~_wgslsmith_add_u32(34295u, global1.e), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.e, 18281u, global1.e, global1.e), vec4<u32>(global1.e, 31139u, 51034u, global1.b.x))), ~firstTrailingBit(firstTrailingBit(0u))));
    return !select(select(select(select(vec2<bool>(true, global1.d.x), global1.c, true), vec2<bool>(true, global1.a.x), global1.c), global1.d, true), !vec2<bool>(all(global1.a.yz), all(vec3<bool>(false, true, global1.c.x))), !global1.c);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: vec3<i32>) -> f32 {
    let var_0 = -1080f;
    global1 = Struct_1(global1.a, reverseBits(_wgslsmith_div_vec3_u32(global1.b, vec3<u32>(62156u, ~18846u, min(28550u, 1u)))), global1.c, func_2(), abs(global1.e));
    var var_1 = Struct_2(u_input.a, arg_1, ~1u, abs(vec3<u32>(arg_1.e, _wgslsmith_mod_u32(global1.e, 1u), _wgslsmith_mult_u32(1u, 26930u) ^ (arg_1.b.x & 43304u))));
    let var_2 = Struct_2(-abs(_wgslsmith_sub_vec3_i32(~vec3<i32>(arg_3.x, 2147483647i, u_input.a.x), var_1.a)), Struct_1(!arg_1.a, _wgslsmith_mult_vec3_u32(abs(countOneBits(vec3<u32>(arg_1.b.x, 37401u, 0u))), _wgslsmith_mult_vec3_u32(var_1.d, vec3<u32>(arg_1.e, 0u, 4294967295u) >> (global1.b % vec3<u32>(32u)))), vec2<bool>(false, any(vec3<bool>(false, true, var_1.b.c.x)) && true), vec2<bool>(true, !(!var_1.b.a.x)), 71864u), _wgslsmith_div_u32(global1.e, 4355u ^ max(1u, arg_1.b.x)) << ((~1u >> (~(0u << (arg_1.e % 32u)) % 32u)) % 32u), var_1.d);
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_0)), arg_0)))), Struct_1(!select(select(vec3<bool>(global1.d.x, global1.c.x, var_2.b.a.x), arg_1.a, var_2.b.c.x), !vec3<bool>(true, true, var_1.b.c.x), !vec3<bool>(true, true, var_2.b.c.x)), var_2.d, var_2.b.c, vec2<bool>(var_2.b.d.x, true), _wgslsmith_add_u32(~_wgslsmith_clamp_u32(global1.e, var_2.b.b.x, var_1.d.x), var_1.d.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_3.a)) + -1401f);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: i32) -> vec3<u32> {
    global1 = Struct_1(!global1.a, ~arg_1.b.b, arg_2, select(func_2(), !select(vec2<bool>(false, global1.c.x), !vec2<bool>(arg_2.x, global1.d.x), -1i > u_input.a.x), true), ~4294967295u);
    let var_0 = arg_1;
    global1 = Struct_1(!arg_0.b.a, ~(~var_0.b.b), !vec2<bool>(countOneBits(55770u) > global1.e, arg_0.b.d.x), vec2<bool>(all(arg_2), all(global0[_wgslsmith_index_u32(19270u, 19u)])), 8015u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(195f, arg_0.b, false, reverseBits(vec3<i32>(u_input.a.x, -2147483647i, arg_3)))))) * _wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.a)))));
    var var_2 = vec3<u32>(_wgslsmith_div_u32(0u, 49272u), ~(_wgslsmith_mult_u32(max(51204u, 27603u), min(arg_1.b.b.x, arg_0.b.e)) | ((global1.e >> (var_0.b.b.x % 32u)) ^ ~4294967295u)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(global1.e ^ 4757u, 16879u), 55047u), arg_1.b.b.x));
    return select(firstLeadingBit(arg_1.b.b), arg_1.b.b >> (abs(global1.b) % vec3<u32>(32u)), any(global0[_wgslsmith_index_u32(29608u, 19u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(select(global1.a, global1.a, false), _wgslsmith_add_vec3_u32(~(~func_1(Struct_3(1370f, Struct_1(vec3<bool>(true, global1.a.x, false), global1.b, vec2<bool>(true, false), global1.a.xx, 23965u)), Struct_3(-713f, Struct_1(global1.a, vec3<u32>(1u, 34490u, global1.b.x), global1.a.xy, vec2<bool>(false, global1.d.x), 19170u)), vec2<bool>(false, global1.d.x), 8i)), global1.b), global1.d, !select(select(!global1.c, select(global1.d, vec2<bool>(true, global1.c.x), false), any(global0[_wgslsmith_index_u32(global1.e, 19u)])), vec2<bool>(global1.c.x, true), true), reverseBits(global1.e));
    global1 = Struct_1(!(!(!global1.a)), global1.b, vec2<bool>(any(!global1.a), global1.d.x), select(vec2<bool>(false, u_input.a.x == u_input.a.x), !global1.c, global1.c), firstLeadingBit(global1.e));
    let var_0 = ~(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(15962u, 48760u, global1.e, global1.b.x) & vec4<u32>(global1.e, 1u, 56376u, 16577u), vec4<u32>(1486u, global1.e, 1u, 4294967295u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(global1.e, 32909u, 73467u, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(global1.e, global1.b.x, 4294967295u, global1.b.x), vec4<u32>(75667u, 31665u, global1.b.x, global1.e)))) << (firstLeadingBit(~(~vec4<u32>(global1.b.x, global1.b.x, 16549u, 21633u))) % vec4<u32>(32u)));
    var var_1 = global1.a.x;
    global1 = Struct_1(!(!(!select(vec3<bool>(global1.d.x, global1.c.x, false), global1.a, global1.a))), ~vec3<u32>(var_0.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global1.b.zx, var_0.ww), 66261u), _wgslsmith_add_u32(_wgslsmith_div_u32(1u, 6558u), ~global1.e)), !select(!select(vec2<bool>(global1.d.x, true), global1.d, global1.d), vec2<bool>(true, true), select(global1.d, vec2<bool>(false, global1.c.x), !global1.c)), func_2(), 43321u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-490f + _wgslsmith_f_op_f32(trunc(268f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - 326f), _wgslsmith_div_f32(-1497f, 799f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-718f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-340f, 1000f)), 182f), all(select(global1.d, vec2<bool>(false, global1.c.x), global1.c)))))), -1294f);
}

