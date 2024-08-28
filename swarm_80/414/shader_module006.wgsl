struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15>;

var<private> global1: array<vec3<u32>, 23> = array<vec3<u32>, 23>(vec3<u32>(38908u, 0u, 40527u), vec3<u32>(0u, 37767u, 1u), vec3<u32>(59167u, 30515u, 4294967295u), vec3<u32>(93387u, 0u, 4294967295u), vec3<u32>(13750u, 45953u, 56460u), vec3<u32>(0u, 0u, 38627u), vec3<u32>(973u, 2958u, 1u), vec3<u32>(7178u, 0u, 63478u), vec3<u32>(0u, 0u, 1u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(7604u, 6689u, 0u), vec3<u32>(0u, 3733u, 4294967295u), vec3<u32>(1u, 1u, 62465u), vec3<u32>(0u, 7976u, 26590u), vec3<u32>(0u, 0u, 20066u), vec3<u32>(46294u, 4294967295u, 4294967295u), vec3<u32>(0u, 1u, 92517u), vec3<u32>(1u, 10373u, 4294967295u), vec3<u32>(1u, 6987u, 40179u), vec3<u32>(61608u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(1u, 4294967295u, 45010u), vec3<u32>(86409u, 54853u, 31743u));

var<private> global2: vec2<f32>;

var<private> global3: array<f32, 30>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<f32> {
    global1 = array<vec3<u32>, 23>();
    var var_0 = Struct_1(firstLeadingBit(reverseBits(vec3<i32>(u_input.c.x ^ u_input.c.x, -1i, ~u_input.c.x))), vec3<f32>(-405f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, u_input.a ^ 51954u, firstTrailingBit(u_input.b)), 15u)]), _wgslsmith_f_op_f32(trunc(554f))), ~(-(~2147483647i) | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 11703i), vec4<i32>(-17815i, 0i, -38308i, u_input.c.x))), -(~min(vec3<i32>(u_input.c.x, u_input.c.x, 34707i) | vec3<i32>(u_input.c.x, -2147483647i, 56305i), vec3<i32>(u_input.c.x, u_input.c.x, -23938i))));
    var var_1 = Struct_1(-select(var_0.d, -var_0.a, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_0.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-594f, global3[_wgslsmith_index_u32(1u, 30u)], -239f) + var_0.b))))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 15u)], 2157f, 288f))))), u_input.c.x, vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(-1i, -2147483647i), _wgslsmith_div_i32(u_input.c.x, var_0.d.x)), countOneBits(select(u_input.c.x, var_0.d.x, true)), _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.c.x, 2147483647i), 1i)) ^ ~vec3<i32>(~1i, 1i, var_0.a.x));
    global3 = array<f32, 30>();
    let var_2 = _wgslsmith_mult_i32(-1i, ~2147483647i ^ firstTrailingBit(-39232i));
    return vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.x - 704f))), _wgslsmith_div_f32(-376f, -271f))))), -1198f);
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1) -> i32 {
    global2 = _wgslsmith_f_op_vec2_f32(func_3());
    var var_0 = select(select(vec2<bool>(arg_1 || !arg_1, true), !vec2<bool>(!arg_1, arg_1), false), vec2<bool>(!(!arg_1), arg_2.b.x != global2.x), vec2<bool>(any(vec2<bool>(arg_1, true)), !arg_1));
    var var_1 = any(select(select(!vec2<bool>(true, arg_1), select(vec2<bool>(arg_1, false), select(vec2<bool>(false, arg_1), vec2<bool>(true, false), vec2<bool>(var_0.x, false)), true), !vec2<bool>(false, arg_1)), !vec2<bool>(true, any(vec3<bool>(arg_1, var_0.x, false))), select(select(vec2<bool>(var_0.x, true), select(vec2<bool>(true, var_0.x), vec2<bool>(arg_1, true), vec2<bool>(arg_1, var_0.x)), select(vec2<bool>(true, var_0.x), vec2<bool>(false, var_0.x), vec2<bool>(false, false))), !select(vec2<bool>(true, false), vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(arg_1, false), vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x)), 433f >= global0[_wgslsmith_index_u32(1u, 15u)]))));
    var var_2 = Struct_1(arg_2.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(min(0u, u_input.a), 15u)], _wgslsmith_f_op_f32(arg_2.b.x * global3[_wgslsmith_index_u32(9027u, 30u)]), global3[_wgslsmith_index_u32((u_input.a & arg_0.x) | arg_0.x, 30u)])), 2147483647i | ~(-_wgslsmith_clamp_i32(-14006i, -11078i, u_input.c.x)), min(vec3<i32>(reverseBits(arg_2.a.x) >> (~0u % 32u), 2147483647i, ~_wgslsmith_add_i32(627i, 0i)), _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(40958i, arg_2.d.x, u_input.c.x) & vec3<i32>(arg_2.d.x, -11326i, -8059i)), arg_2.a)));
    var var_3 = select(vec2<bool>(!all(vec2<bool>(true, true)), any(vec4<bool>(true, all(vec2<bool>(false, var_0.x)), !arg_1, any(vec3<bool>(var_0.x, arg_1, true))))), vec2<bool>(global0[_wgslsmith_index_u32(~abs(u_input.a), 15u)] == _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 15u)] * _wgslsmith_f_op_vec2_f32(func_3()).x), true), vec2<bool>(!var_0.x, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-var_2.b.x)) > _wgslsmith_f_op_f32(arg_2.b.x - 536f)));
    return 0i;
}

fn func_1(arg_0: u32) -> StorageBuffer {
    global0 = array<f32, 15>();
    let var_0 = _wgslsmith_f_op_f32(abs(256f));
    let var_1 = Struct_1(reverseBits(~vec3<i32>(~(-1i), 1i, 49473i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(200f, 219f, global0[_wgslsmith_index_u32(9460u, 15u)]))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1208f, -346f, 289f))))), u_input.c.x, abs(~_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-37611i, 1i, 6690i), vec3<i32>(u_input.c.x, 2147483647i, 0i), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), select(vec3<i32>(u_input.c.x, -27034i, -2147483647i), vec3<i32>(-3041i, u_input.c.x, u_input.c.x), vec3<bool>(false, false, true)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(1u, 30u)], -1000f, var_0) + var_1.b), _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(arg_0, 15u)], var_0, global3[_wgslsmith_index_u32(arg_0, 30u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global3[_wgslsmith_index_u32(arg_0, 30u)], global0[_wgslsmith_index_u32(1u, 15u)]))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -370f), 487f), var_1.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(772f)), -2045f, true)))));
    let var_3 = min(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.c, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(var_1.d.x, 2147483647i))), countOneBits(u_input.c) << (vec2<u32>(0u, 22007u) % vec2<u32>(32u)), var_1.d.xy) << (vec2<u32>(arg_0, ~(~29259u)) % vec2<u32>(32u)), vec2<i32>(2147483647i, _wgslsmith_mod_i32(u_input.c.x, func_2(vec2<u32>(u_input.b, u_input.b), true, var_1))));
    return StorageBuffer(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(4294967295u, arg_0))), arg_0, u_input.a), 23u)], u_input.a, -abs(var_3.x), -346f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~reverseBits(~(abs(u_input.c.x) | _wgslsmith_add_i32(u_input.c.x, 1i)));
    let x = u_input.a;
    s_output = func_1(18676u);
}

