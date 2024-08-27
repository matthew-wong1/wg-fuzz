struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2 = Struct_2(26028u);

var<private> global2: array<f32, 3> = array<f32, 3>(1554f, 535f, 2782f);

var<private> global3: f32 = 981f;

var<private> global4: Struct_2;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    global1 = Struct_2(0u);
    var var_0 = u_input.a.x;
    var var_1 = Struct_2(1u << (1u % 32u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -462f)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global0.a, global0.a, any(arg_0)))), vec3<bool>(true, !arg_0.x, var_2 < _wgslsmith_f_op_f32(-1f)));
    return global1.a;
}

fn func_2() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    var_0 = -1739f;
    var var_1 = Struct_2(~(~func_3(vec3<bool>(false, global0.b.x, false))) | ~_wgslsmith_sub_u32(23980u, 1u));
    var var_2 = -max(u_input.a ^ firstTrailingBit(firstLeadingBit(vec4<i32>(-1i, 6204i, u_input.a.x, 0i))), vec4<i32>(abs(_wgslsmith_mod_i32(27959i, 134i)), u_input.a.x, _wgslsmith_mult_i32(i32(-1i) * -1i, u_input.a.x), countOneBits(0i)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, -1184f, -1029f, global2[_wgslsmith_index_u32(7901u, 3u)])))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -184f), 100f, _wgslsmith_f_op_f32(-616f - global2[_wgslsmith_index_u32(1u, 3u)]), -449f)), vec3<bool>(true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1.a, 3u)]))) != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(44507u, 3u)])))), !(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global4.a, 3u)]) == global2[_wgslsmith_index_u32(0u & global1.a, 3u)])));
    return vec3<bool>(true, all(vec2<bool>(true, true)), var_3.b.x);
}

fn func_1() -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(global0.a - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2[_wgslsmith_index_u32(global1.a & global1.a, 3u)], global2[_wgslsmith_index_u32(30850u, 3u)], _wgslsmith_f_op_f32(global0.a.x - global0.a.x), _wgslsmith_f_op_f32(global0.a.x * global2[_wgslsmith_index_u32(global4.a, 3u)]))))), !select(vec3<bool>(all(global0.b), global0.b.x, true), !vec3<bool>(global0.b.x, global0.b.x, global0.b.x), global0.b.x));
    let var_1 = Struct_2(~global4.a);
    let var_2 = vec2<i32>(-1i, -1i);
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~(62752u << (var_1.a % 32u)), 3u)] - 1071f), -1840f), var_0.a.yy);
    var var_4 = global0.b.x;
    return select(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, ~u_input.a), _wgslsmith_mod_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -2147483647i, -48350i, u_input.a.x), u_input.a), vec4<i32>(~(-13150i), _wgslsmith_dot_vec2_i32(vec2<i32>(-37689i, 1i), var_2), 1i, var_2.x))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a, (vec4<i32>(-23298i, var_2.x, var_2.x, var_2.x) >> (vec4<u32>(global1.a, global4.a, 1u, 7850u) % vec4<u32>(32u))) & abs(vec4<i32>(var_2.x, -1i, var_2.x, 0i))), countOneBits(~u_input.a), vec4<i32>(1i << (~global4.a % 32u), 1i, countOneBits(_wgslsmith_div_i32(-1i, 2147483647i)), abs(1i))), vec4<bool>(true, any(global0.b), any(func_2()), true || global0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 21923u;
    let var_1 = vec3<bool>(!all(global0.b), !(49837u > _wgslsmith_div_u32(~42100u, min(global4.a, global1.a))), !(!global0.b.x && false));
    let var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(-select(u_input.a, u_input.a, true) ^ func_1(), -(vec4<i32>(6367i, u_input.a.x, u_input.a.x, u_input.a.x) << (firstLeadingBit(vec4<u32>(1u, global1.a, global1.a, 1u)) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-29953i, 1702i, 0i, -1i), u_input.a), vec4<i32>(u_input.a.x, -2147483647i, 0i, -2147483647i) << (min(vec4<u32>(global4.a, global4.a, 4294967295u, 50778u), vec4<u32>(4294967295u, global1.a, global4.a, 4294967295u)) % vec4<u32>(32u)))), ~(-u_input.a));
    let var_3 = vec2<i32>(u_input.a.x, _wgslsmith_add_i32(0i, -2147483647i));
    let var_4 = vec2<i32>(u_input.a.x, -2147483647i);
    var var_5 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a - vec4<f32>(global0.a.x, 1000f, global0.a.x, 110f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(global0.a.xyy, _wgslsmith_f_op_vec3_f32(var_5.xwy - vec3<f32>(-1195f, 468f, _wgslsmith_f_op_f32(-var_5.x))))), ~vec3<u32>(780u, 1u, global4.a));
}

