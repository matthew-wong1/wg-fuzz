struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<u32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<u32>,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4> = array<f32, 4>(-803f, -864f, 876f, -573f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: u32) -> f32 {
    let var_0 = Struct_5(Struct_2(_wgslsmith_div_f32(arg_0, 1229f), Struct_1(max(u_input.c.wz, vec2<u32>(arg_2, 27628u)), false, 1u), Struct_1(_wgslsmith_mult_vec2_u32(select(u_input.d.zw, u_input.c.wy, false), ~vec2<u32>(u_input.c.x, arg_2)), any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), 1u)), Struct_2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(~4294967295u), 4u)]), Struct_1(firstTrailingBit(reverseBits(vec2<u32>(arg_2, 41858u))), true, _wgslsmith_mult_u32(arg_2 << (u_input.c.x % 32u), u_input.d.x)), Struct_1(vec2<u32>(7675u, _wgslsmith_mod_u32(arg_2, 41925u)), true, _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_2, u_input.c.x), 4294967295u))), u_input.d, vec2<u32>(~(1u ^ arg_2), ~u_input.c.x) >> ((~vec2<u32>(0u, arg_2) & vec2<u32>(95242u, u_input.c.x)) % vec2<u32>(32u)), arg_2);
    let var_1 = var_0.a.b;
    var var_2 = _wgslsmith_f_op_f32(-var_0.a.a);
    let var_3 = !(!(!var_1.b == var_0.b.c.b));
    return _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 4u)]);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_4 {
    let var_0 = Struct_4(Struct_3(arg_2.c.c >> (~arg_1.x % 32u), Struct_2(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(49815u, 4u)])), Struct_1(u_input.d.xw, !arg_2.c.b, 1u), arg_2.c), vec4<u32>(9410u, ~(~19274u), u_input.c.x, ~4294967295u), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 4u)]), _wgslsmith_div_f32(arg_2.a, global0[_wgslsmith_index_u32(4294967295u, 4u)]))), max(arg_0.x, -24286i), 0u))), !vec2<bool>(all(vec4<bool>(true, true, arg_3.x, arg_2.b.b)) && (-1130f >= arg_2.a), arg_3.x), u_input.d.wz);
    let var_1 = true || (-949f >= _wgslsmith_div_f32(var_0.a.d, var_0.a.b.a));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.a)));
    let var_3 = Struct_4(var_0.a, !vec2<bool>(!select(true, var_1, arg_3.x), true), arg_2.c.a | vec2<u32>(_wgslsmith_mod_u32(4294967295u, ~arg_1.x), ~_wgslsmith_sub_u32(var_0.a.c.x, arg_1.x)));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.b.a) - var_3.a.d), global0[_wgslsmith_index_u32(1u, 4u)], all(vec2<bool>(true, true))))) * _wgslsmith_f_op_f32(-var_3.a.b.a));
    return Struct_4(Struct_3(78230u << ((arg_1.x >> (0u % 32u)) % 32u), Struct_2(-594f, Struct_1(vec2<u32>(var_3.a.a, var_3.a.c.x), any(vec4<bool>(false, true, var_0.a.b.c.b, false)), 1u), var_3.a.b.c), min(var_0.a.c, _wgslsmith_div_vec4_u32(~vec4<u32>(arg_2.c.a.x, 0u, u_input.c.x, 1u), ~u_input.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(701f, 1127f)), _wgslsmith_div_f32(-523f, arg_2.a))))), vec2<bool>(var_3.a.b.c.b, !all(arg_3.xz) || var_0.b.x), var_0.c);
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_5 {
    var var_0 = ~(_wgslsmith_dot_vec2_u32(u_input.d.ww, ~(u_input.d.yy | u_input.c.zw)) | (firstTrailingBit(~u_input.c.x) ^ (~10399u ^ u_input.c.x)));
    var var_1 = vec2<u32>(u_input.c.x, ~u_input.c.x);
    let var_2 = func_2(abs(vec2<i32>(-6629i, _wgslsmith_mult_i32(abs(1i), _wgslsmith_mod_i32(u_input.e.x, -2823i)))), firstTrailingBit(u_input.d), Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -903f) - -2418f))), Struct_1(~vec2<u32>(var_1.x, u_input.c.x), any(vec3<bool>(arg_0, true, arg_0)) | false, ~(4294967295u >> (var_1.x % 32u))), Struct_1(u_input.c.wz & (u_input.c.zx | vec2<u32>(var_1.x, var_1.x)), !all(vec3<bool>(false, true, arg_0)), reverseBits(u_input.c.x))), !(!(!select(vec3<bool>(false, arg_0, true), vec3<bool>(false, false, false), vec3<bool>(true, arg_0, false)))));
    var_1 = u_input.d.xw;
    let var_3 = Struct_5(var_2.a.b, var_2.a.b, vec4<u32>(1u, _wgslsmith_div_u32(var_2.c.x, 4294967295u), var_1.x & var_1.x, ~(~var_2.c.x)), vec2<u32>(u_input.c.x, 26577u), var_1.x);
    return Struct_5(var_3.b, var_3.b, _wgslsmith_mod_vec4_u32(u_input.c & ~var_2.a.c, _wgslsmith_div_vec4_u32(~vec4<u32>(var_3.b.c.c, var_3.e, var_2.c.x, 4294967295u), var_2.a.c)), _wgslsmith_add_vec2_u32(abs(vec2<u32>(_wgslsmith_clamp_u32(var_3.a.b.a.x, 18417u, u_input.d.x), var_1.x)), vec2<u32>(87565u, func_2(~u_input.b.xy, func_2(vec2<i32>(1i, -2147483647i), vec4<u32>(26955u, 8419u, 19577u, var_1.x), var_2.a.b, vec3<bool>(true, true, true)).a.c, func_2(vec2<i32>(0i, u_input.e.x), var_2.a.c, Struct_2(var_2.a.d, var_3.a.c, var_3.b.b), vec3<bool>(true, var_2.b.x, true)).a.b, !vec3<bool>(var_2.a.b.b.b, var_2.b.x, true)).a.a)), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!any(vec2<bool>(all(vec2<bool>(true, false)), true)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 16440u), 4u)]);
    global0 = array<f32, 4>();
    global0 = array<f32, 4>();
    var var_1 = var_0;
    let var_2 = func_2(vec2<i32>(countOneBits(_wgslsmith_mod_i32(~(-35637i), -27904i)), u_input.e.x), var_0.c, func_2(abs(u_input.b.wz), (vec4<u32>(1u, 0u, u_input.d.x, var_1.c.x) >> (_wgslsmith_div_vec4_u32(var_1.c, var_1.c) % vec4<u32>(32u))) ^ vec4<u32>(var_0.a.c.c | var_0.e, u_input.c.x, var_0.c.x, ~70414u), var_1.a, select(!select(vec3<bool>(false, false, var_0.b.b.b), vec3<bool>(false, var_1.a.b.b, var_1.a.b.b), vec3<bool>(false, false, false)), !vec3<bool>(var_1.b.b.b, var_1.b.b.b, var_1.b.b.b), any(!vec3<bool>(var_1.b.c.b, false, var_1.a.b.b)))).a.b, !(!(!(!vec3<bool>(var_0.a.b.b, var_0.a.c.b, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, i32(-1i) * -u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, u_input.e.x, u_input.e.x >> (u_input.d.x % 32u)), firstTrailingBit(u_input.e))), u_input.e.x, -1000f, var_2.a.c, -(~firstLeadingBit(~(-5641i))));
}

