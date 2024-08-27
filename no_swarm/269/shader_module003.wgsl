struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: f32,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: i32,
    d: u32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 19>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = arg_1;
    global0 = any(!select(select(!vec4<bool>(var_0.a, var_0.a, false, arg_1.a), vec4<bool>(false, false, false, true), all(vec2<bool>(false, true))), vec4<bool>(arg_1.d, var_0.d, var_0.a, any(vec2<bool>(arg_1.a, true))), any(select(vec4<bool>(arg_1.d, var_0.a, false, arg_1.d), vec4<bool>(var_0.a, var_0.a, var_0.d, arg_1.a), true))));
    var var_1 = !any(vec3<bool>(all(vec2<bool>(var_0.d, arg_1.a)), any(vec2<bool>(true, true)), true));
    var var_2 = select(abs(countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.x, 1i, -1i), vec3<i32>(-55275i, arg_0.x, arg_0.x)))) & (~(vec3<i32>(-581i, arg_0.x, arg_0.x) & vec3<i32>(-1i, arg_0.x, arg_0.x)) ^ (abs(vec3<i32>(2278i, -2147483647i, arg_0.x)) | countOneBits(vec3<i32>(arg_0.x, arg_0.x, arg_0.x)))), abs(_wgslsmith_clamp_vec3_i32(reverseBits(min(vec3<i32>(arg_0.x, 2804i, arg_0.x), vec3<i32>(arg_0.x, -38707i, arg_0.x))), max(select(vec3<i32>(2147483647i, -35072i, arg_0.x), vec3<i32>(1i, -2147483647i, 1i), var_0.a), vec3<i32>(-23069i, arg_0.x, -34359i)), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, arg_0.x), vec3<i32>(arg_0.x, -30302i, 0i)), vec3<i32>(-2147483647i, -36186i, arg_0.x)))), true);
    var_2 = -reverseBits(vec3<i32>(arg_0.x, firstTrailingBit(~54957i), max(-arg_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, 0i, var_2.x), vec3<i32>(arg_0.x, -17249i, 0i)))));
    return !vec2<bool>(!(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_2.x, 0i, arg_0.x), vec4<i32>(12250i, arg_0.x, var_2.x, arg_0.x)) < -2147483647i), true);
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = Struct_4(Struct_3(336f, !func_3(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 42383i), vec2<i32>(1i, -37045i)), Struct_1(false, vec4<f32>(global1[_wgslsmith_index_u32(arg_0, 19u)], global1[_wgslsmith_index_u32(arg_0, 19u)], global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(26632u, 19u)]), global1[_wgslsmith_index_u32(0u, 19u)], false, vec3<f32>(global1[_wgslsmith_index_u32(arg_0, 19u)], 1534f, -657f)))), global1[_wgslsmith_index_u32(u_input.a, 19u)], ~1524i, ~1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], -370f, -160f) - vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 19u)], global1[_wgslsmith_index_u32(arg_0, 19u)], 1000f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-272f, global1[_wgslsmith_index_u32(arg_0, 19u)], global1[_wgslsmith_index_u32(u_input.a, 19u)]), vec3<f32>(-164f, global1[_wgslsmith_index_u32(66211u, 19u)], global1[_wgslsmith_index_u32(u_input.a, 19u)])))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(arg_0, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(72225u, 19u)]) * vec3<f32>(-105f, global1[_wgslsmith_index_u32(53056u, 19u)], 717f))))));
    var var_1 = -2147483647i;
    var_1 = -var_0.c;
    return all(!(!select(!vec4<bool>(true, true, var_0.a.b.x, false), !vec4<bool>(var_0.a.b.x, false, true, var_0.a.b.x), var_0.a.b.x && true)));
}

fn func_1(arg_0: u32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1411f));
    let var_1 = vec3<bool>(!func_2(arg_0), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 19u)])))) == global1[_wgslsmith_index_u32(arg_0, 19u)], true);
    let var_2 = ~u_input.a;
    global1 = array<f32, 19>();
    var var_3 = true;
    return Struct_4(Struct_3(-937f, !var_1.zy), -478f, abs(-1i), 0u, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-573f, 925f, global1[_wgslsmith_index_u32(var_2, 19u)]) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(828f, -1206f, global1[_wgslsmith_index_u32(arg_0, 19u)])))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(377f, global1[_wgslsmith_index_u32(u_input.a, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)])))), _wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(1u, 19u)], _wgslsmith_div_f32(-1000f, global1[_wgslsmith_index_u32(u_input.a, 19u)]), _wgslsmith_f_op_f32(841f + -1353f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(688f, global1[_wgslsmith_index_u32(arg_0, 19u)]), 1f)))));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec3<f32>) -> Struct_4 {
    var var_0 = func_1(44952u);
    let var_1 = 12966i;
    var_0 = Struct_4(Struct_3(_wgslsmith_f_op_f32(-arg_1.b), var_0.a.b), arg_2.x, var_1, arg_1.d, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_2), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1216f, global1[_wgslsmith_index_u32(0u, 19u)], arg_2.x), arg_2)))), arg_1.e));
    var var_2 = ~(~(~(~vec4<u32>(26935u, 4294967295u, 19606u, arg_0))) >> (min(vec4<u32>(168900u ^ arg_0, ~0u, 34674u, ~arg_1.d), _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 30027u, 4444u, 50514u), vec4<u32>(arg_1.d, arg_1.d, arg_0, 7650u))) % vec4<u32>(32u)));
    var_0 = arg_1;
    return Struct_4(Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_0.b)))), _wgslsmith_f_op_f32(round(1188f))), !(!arg_1.a.b)), arg_1.a.a, reverseBits(~8848i), 38772u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0, 19u)]) + var_0.b)), 1f, _wgslsmith_f_op_f32(sign(1179f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(_wgslsmith_clamp_u32(abs(u_input.a), ~(min(16325u, u_input.a) ^ 914u), abs(~u_input.a)), _wgslsmith_add_u32(~u_input.a, firstTrailingBit(u_input.a)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(1u, u_input.a), 18207u), _wgslsmith_mult_u32(1u, u_input.a)), ~u_input.a);
    var var_1 = 24711u;
    global0 = true;
    let var_2 = func_4(23193u, func_1(u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 19u)]), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(0u, 19u)]))), _wgslsmith_f_op_f32(sign(-1484f)), 811f) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(step(1032f, global1[_wgslsmith_index_u32(1u, 19u)])), _wgslsmith_f_op_f32(-1125f - global1[_wgslsmith_index_u32(4294967295u, 19u)]), global1[_wgslsmith_index_u32(u_input.a, 19u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(1u, 19u)], 1239f, global1[_wgslsmith_index_u32(4294967295u, 19u)]) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(481f, -1062f, -1544f)))))));
    global0 = var_2.a.b.x & var_2.a.b.x;
    let var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1036f + -267f) + _wgslsmith_f_op_f32(f32(-1f) * -641f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -205f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(57550u, 19u)] - 1000f)), !var_2.a.b.x))), 446f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(476f + var_2.b), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 19u)] + 1000f), true))) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~min(var_0.x, 0u), 19u)] - func_1(_wgslsmith_sub_u32(var_0.x, 0u)).a.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.a * -377f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~4294967295u, ~abs(91545u)), -1000f, ~vec3<u32>(_wgslsmith_mod_u32(u_input.a ^ var_0.x, u_input.a), 0u >> ((var_2.d ^ var_0.x) % 32u), var_2.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(var_2.d, 19u)], var_2.b)) * -794f), var_2.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(1u, 19u)])), _wgslsmith_f_op_f32(max(var_2.a.a, -825f))))), func_4(~var_2.d, var_2, vec3<f32>(var_2.e.x, _wgslsmith_f_op_f32(-func_4(54541u, var_2, vec3<f32>(-307f, -791f, 465f)).e.x), 337f)).d);
}

