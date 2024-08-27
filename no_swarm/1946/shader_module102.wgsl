struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false));

var<private> global1: vec3<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> vec4<i32> {
    global1 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(max(-1918f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -618f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x)))), _wgslsmith_f_op_f32(-322f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))));
    let var_0 = Struct_3(Struct_1(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), false))), Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), Struct_2(Struct_1(select(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], select(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false))))), Struct_2(Struct_1(global0[_wgslsmith_index_u32(~40308u, 3u)])), max(min(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), vec2<u32>(u_input.a.x, 17216u) << (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u))), 78620u), 43865u));
    let var_1 = select(vec4<bool>(var_0.d.a.a.x, true, var_0.b.a.x, var_0.c.a.a.x), global0[_wgslsmith_index_u32(var_0.e, 3u)], false);
    global0 = array<vec4<bool>, 3>();
    let var_2 = var_0.d;
    return vec4<i32>(8123i, abs(u_input.b.x >> (u_input.a.x % 32u)), u_input.b.x, select(~u_input.b.x, u_input.b.x, false));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<i32>, arg_3: f32) -> bool {
    global0 = array<vec4<bool>, 3>();
    global0 = array<vec4<bool>, 3>();
    let var_0 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1, arg_1, 4294967295u), vec3<u32>(_wgslsmith_sub_u32(~0u, reverseBits(u_input.a.x)), _wgslsmith_sub_u32(~u_input.a.x, 69886u), _wgslsmith_mod_u32(~19404u, u_input.a.x)));
    return !(!all(vec3<bool>(false, true, true)));
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_div_vec4_u32(select(vec4<u32>(select(u_input.a.x, u_input.a.x, true), ~u_input.a.x, ~4294967295u, ~21996u), vec4<u32>(u_input.a.x & u_input.a.x, 1u, u_input.a.x, u_input.a.x), func_4(func_3(), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 1i, -43739i, u_input.b.x), vec4<i32>(2147483647i, 1i, 0i, u_input.b.x)), global1.x)) >> (~vec4<u32>(min(u_input.a.x, 31404u), u_input.a.x ^ u_input.a.x, _wgslsmith_mod_u32(47115u, u_input.a.x), 1u) % vec4<u32>(32u)), ~(~vec4<u32>(0u >> (u_input.a.x % 32u), ~43685u, u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 13515u))));
    global0 = array<vec4<bool>, 3>();
    global0 = array<vec4<bool>, 3>();
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global1.x - -149f), 1f);
    var var_1 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(~u_input.a.x, 3u)]));
    return Struct_4(vec2<i32>(-(~(u_input.b.x & u_input.b.x)), countOneBits(-9094i)));
}

fn func_1() -> Struct_1 {
    global1 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(global1.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(global1.x * 636f)), global1.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * global1.x)))));
    var var_0 = select(1u, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, ~((u_input.a.x & u_input.a.x) << (~u_input.a.x % 32u))), false);
    var var_1 = ~(-60374i);
    let var_2 = func_2();
    return Struct_1(vec4<bool>(true || (false || any(vec2<bool>(false, false))), true, any(vec4<bool>(true, true, true, true)) && true, select(false, any(global0[_wgslsmith_index_u32(4294967295u, 3u)]) || (u_input.b.x < 408i), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(select(select(select(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(false, false, false, false), any(global0[_wgslsmith_index_u32(45009u, 3u)])), select(vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(~u_input.a.x, 3u)], false), !global0[_wgslsmith_index_u32(u_input.a.x >> (4294967295u % 32u), 3u)])), func_1(), Struct_2(func_1()), Struct_2(Struct_1(select(select(global0[_wgslsmith_index_u32(48153u, 3u)], vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true), func_1().a))), ~(~(~(~6618u))));
    let var_1 = _wgslsmith_f_op_f32(abs(global1.x));
    var var_2 = true;
    let var_3 = 42434u;
    var_2 = true;
    var var_4 = max(-(~vec3<i32>(1i, select(u_input.b.x, 16163i, true), ~(-2147483647i))), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.b.x, u_input.b.x), vec3<i32>(1i, -33848i, u_input.b.x), vec3<i32>(0i, u_input.b.x, 1i))), vec3<i32>(37024i, u_input.b.x, -1i) >> (vec3<u32>(0u, 102552u, var_0.e) % vec3<u32>(32u))), -vec3<i32>(-2147483647i, u_input.b.x >> (var_3 % 32u), -u_input.b.x)));
    let var_5 = ~(~countOneBits(var_3));
    let var_6 = func_2();
    var var_7 = Struct_2(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(max(-max(0i, u_input.b.x), firstTrailingBit(func_2().a.x)), var_6.a.x | func_3().x));
}

