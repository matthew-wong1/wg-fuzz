struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: bool;

var<private> global2: array<i32, 22>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(exp2(arg_1.a.x));
    var var_1 = firstLeadingBit(u_input.b.x);
    var var_2 = arg_2;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_1.b.x)), -624f)))), arg_1.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -630f), _wgslsmith_f_op_f32(step(-242f, arg_1.b.x)), arg_0 || false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-250f))))));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1712f)))))))), -128f);
    return 1000f;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(649f, -991f) + _wgslsmith_f_op_f32(f32(-1f) * -1715f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1147f, _wgslsmith_f_op_f32(select(-277f, 1796f, false))) * _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(round(1052f)))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-632f + -350f) * _wgslsmith_f_op_f32(ceil(-692f)))));
    return Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), -563f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1043f * 784f), _wgslsmith_f_op_f32(f32(-1f) * -482f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1005f, 546f) - _wgslsmith_f_op_f32(max(-165f, -1003f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1000f, 1123f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1131f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(var_0, Struct_1(vec2<f32>(948f, -336f), vec2<f32>(-926f, -715f), 1100f), u_input.e.x)))), true))));
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = Struct_3(_wgslsmith_mult_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(u_input.d, 22u)], u_input.a, 9230i), vec3<i32>(665i, -29428i, -7493i)), -firstTrailingBit(vec3<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 22u)], 925i, 2147483647i))) & ~(~vec3<i32>(2147483647i, -1i, u_input.e.x) ^ max(vec3<i32>(global2[_wgslsmith_index_u32(50311u, 22u)], 2147483647i, global2[_wgslsmith_index_u32(40985u, 22u)]), vec3<i32>(global2[_wgslsmith_index_u32(19327u, 22u)], global2[_wgslsmith_index_u32(u_input.b.x, 22u)], 13293i))), all(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), all(vec4<bool>(true, false, false, false))), vec3<bool>(0u == u_input.b.x, 438f > arg_0.c, false), vec3<bool>(global2[_wgslsmith_index_u32(88750u, 22u)] == -32247i, true, any(vec2<bool>(false, true))))), -vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(30082i, u_input.a, -1i, u_input.e.x), -vec4<i32>(-1i, global2[_wgslsmith_index_u32(5196u, 22u)], -4405i, u_input.e.x)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.d), 22u)], ~global2[_wgslsmith_index_u32(~u_input.c.x, 22u)]));
    global0 = true;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.b + _wgslsmith_f_op_vec2_f32(arg_0.b - vec2<f32>(1532f, 1296f))) + arg_0.b), vec2<f32>(arg_0.b.x, 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(select(!var_0.b, var_0.b, !var_0.b), func_2(), var_0.a.x)) - arg_0.c));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1309f, _wgslsmith_f_op_f32(-var_1.a.x), var_1.b.x))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, var_1.a.x, 1473f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, var_1.c, var_1.b.x))))))));
    let var_3 = min(vec2<u32>(u_input.d, 0u), u_input.c) >> (~_wgslsmith_div_vec2_u32(~u_input.c, ~(~u_input.b.yx)) % vec2<u32>(32u));
    return var_0.b;
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = false;
    global1 = true;
    let var_1 = vec2<bool>(any(vec4<bool>(func_4(func_2()), all(vec2<bool>(false, var_0)), all(select(vec4<bool>(false, true, var_0, true), vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(true, var_0, true, true))), true)), u_input.e.x > _wgslsmith_mod_i32(arg_0, u_input.e.x));
    global0 = all(!vec3<bool>(var_1.x, any(vec3<bool>(var_0, false, var_0)), var_1.x)) || any(!vec3<bool>(all(var_1), var_1.x || var_0, true));
    var var_2 = func_2();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    let var_0 = 1i;
    let var_1 = Struct_4(abs(2147483647i | abs(_wgslsmith_div_i32(var_0, 1i))), any(vec3<bool>(false, true, true)), 1u, func_1(var_0));
    global2 = array<i32, 22>();
    let var_2 = _wgslsmith_mod_u32(~(~reverseBits(u_input.c.x)), u_input.d) << (1888u % 32u);
    let var_3 = vec3<u32>(1u, 0u >> ((~1u << (u_input.d % 32u)) % 32u), max(~min(u_input.b.x, u_input.d), 4294967295u));
    global2 = array<i32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.b.x, max(max(~vec3<i32>(9157i, global2[_wgslsmith_index_u32(var_2, 22u)], 0i), abs(vec3<i32>(u_input.e.x, -2147483647i, -35067i))), vec3<i32>(var_1.a, var_1.a, -91409i) >> (vec3<u32>(1u, 0u, var_2) % vec3<u32>(32u))) & -max(vec3<i32>(19448i, 20056i, -15986i) >> (vec3<u32>(u_input.c.x, var_3.x, 11178u) % vec3<u32>(32u)), vec3<i32>(u_input.e.x, u_input.e.x, 25951i)), vec3<i32>(-global2[_wgslsmith_index_u32(reverseBits(u_input.d), 22u)], ((u_input.e.x >> (var_2 % 32u)) >> (~var_1.c % 32u)) | -(0i ^ var_0), ~(-u_input.e.x)), max(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, var_2, 22723u, 1u) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, var_1.c, 4294967295u), vec4<u32>(39382u, var_3.x, var_2, 8629u), vec4<u32>(4628u, 0u, 4294967295u, var_1.c)) % vec4<u32>(32u)), vec4<u32>(u_input.b.x, ~1u, _wgslsmith_sub_u32(var_2, 22008u), _wgslsmith_sub_u32(2536u, var_1.c))), vec4<u32>(max(u_input.d, 16681u), var_3.x | var_2, var_2, countOneBits(15607u) << (1u % 32u))), 4294967295u);
}

