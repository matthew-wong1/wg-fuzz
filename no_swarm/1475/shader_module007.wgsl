struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(true, true, false, true, false, true, false, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-175f, arg_2)), vec2<f32>(-1000f, arg_2))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 855f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1223f, arg_2) + vec2<f32>(454f, 659f)))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1246f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + arg_2)))));
    var var_1 = 1u;
    var var_2 = -min(u_input.a.x, 5124i);
    global0 = array<bool, 8>();
    var var_3 = Struct_2(select(arg_0.a, !(!(!arg_0.a)), vec4<bool>(!all(vec2<bool>(global0[_wgslsmith_index_u32(arg_1, 8u)], arg_0.a.x)), all(!vec3<bool>(global0[_wgslsmith_index_u32(arg_1, 8u)], arg_0.a.x, false)), !any(vec2<bool>(true, global0[_wgslsmith_index_u32(19074u, 8u)])), any(select(vec2<bool>(true, false), arg_0.a.yw, false)))));
    return vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-arg_2), -1233f);
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = select(true, !(!(!global0[_wgslsmith_index_u32(93147u, 8u)])) || false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-459f, arg_1.x) - arg_1.x) * -1521f) > arg_1.x);
    let var_1 = arg_1.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(func_3(Struct_2(vec4<bool>(var_0, all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 8u)], true, true, true)), var_0, select(var_0, true, u_input.a.x != arg_0))), 1u, _wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1364f), _wgslsmith_f_op_f32(min(203f, arg_1.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x)))))));
    return Struct_2(vec4<bool>(all(vec3<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(101698u, 8u)], false, var_0)), false, global0[_wgslsmith_index_u32(~14580u, 8u)])), false && (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, arg_0, u_input.a.x), vec4<i32>(-2147483647i, arg_0, u_input.a.x, u_input.a.x)) == _wgslsmith_mult_i32(-1i, u_input.a.x)), global0[_wgslsmith_index_u32(max(21465u, 1u) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 76863u, 13411u, 4294967295u), vec4<u32>(52671u, 16169u, 0u, 29189u)) % 32u), 8u)], !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(31360u, 1u, 0u, 23448u), vec4<u32>(0u, 4294967295u, 0u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u)), 8u)]));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: bool, arg_3: bool) -> vec2<u32> {
    let var_0 = ~arg_1;
    global0 = array<bool, 8>();
    let var_1 = Struct_1(vec4<i32>(1i, -u_input.a.x, ~((1i << (1u % 32u)) >> (0u % 32u)), ~_wgslsmith_dot_vec3_i32(u_input.a & u_input.a, vec3<i32>(22918i, u_input.a.x, 2147483647i))), true, select(~u_input.a, reverseBits(select(u_input.a, u_input.a, vec3<bool>(true, arg_3, true))), !arg_0.a.x) ^ vec3<i32>(u_input.a.x, u_input.a.x, ~11321i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1072f)))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(var_0, 4294967295u)), ~arg_1) >> (arg_1 % 32u));
    let var_2 = Struct_1(var_1.a, var_1.d <= -535f, var_1.c, _wgslsmith_f_op_f32(827f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(999f - 515f) + _wgslsmith_f_op_f32(-1000f + -689f)), _wgslsmith_f_op_f32(select(var_1.d, _wgslsmith_f_op_f32(step(-363f, 1503f)), true))))), 4294967295u);
    global0 = array<bool, 8>();
    return vec2<u32>(max(~var_2.e, _wgslsmith_clamp_u32(max(var_1.e, 88419u), 1u, 4397u ^ _wgslsmith_add_u32(53473u, var_0))), var_0);
}

fn func_5(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = u_input.a.xz << (vec2<u32>(~arg_2.x, arg_2.x | 0u) % vec2<u32>(32u));
    global0 = array<bool, 8>();
    let var_1 = -858f;
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-465f)), var_1, _wgslsmith_f_op_f32(f32(-1f) * -852f), -328f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-115f, arg_1.x, -294f, var_1), vec4<f32>(arg_1.x, 342f, 173f, arg_1.x), true)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -1846f, -442f, 371f), vec4<f32>(arg_1.x, var_1, 1114f, -1195f), vec4<bool>(global0[_wgslsmith_index_u32(14984u, 8u)], true, false, false)))) - vec4<f32>(var_1, var_1, var_1, _wgslsmith_f_op_f32(-1454f + arg_1.x)))));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(213f, arg_1.x, 402f, 1000f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(703f, -351f, var_1, arg_1.x) + vec4<f32>(arg_1.x, arg_1.x, var_2.x, var_2.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-978f, -1155f, arg_1.x, var_1), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1621f, var_2.x, 263f, -484f), vec4<f32>(879f, arg_1.x, -325f, 251f))), select(vec4<bool>(false, global0[_wgslsmith_index_u32(arg_2.x, 8u)], global0[_wgslsmith_index_u32(arg_3.x, 8u)], global0[_wgslsmith_index_u32(arg_3.x, 8u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 8u)], false, false, global0[_wgslsmith_index_u32(0u, 8u)]), global0[_wgslsmith_index_u32(104681u, 8u)]))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-806f, var_2.x, arg_1.x, 876f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, var_2.x, var_2.x, var_1)), vec4<f32>(1927f, 256f, var_1, -1594f))))));
    return Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(-12219i, ~0i, u_input.a.x, u_input.a.x), abs(_wgslsmith_div_vec4_i32(~vec4<i32>(-2147483647i, arg_0, -929i, -1i), vec4<i32>(-41315i, -5778i, u_input.a.x, -1i)))), -2147483647i <= select(var_0.x, min(u_input.a.x, 1i), false), firstLeadingBit(_wgslsmith_add_vec3_i32(~select(vec3<i32>(-1i, u_input.a.x, arg_0), u_input.a, vec3<bool>(global0[_wgslsmith_index_u32(74821u, 8u)], false, global0[_wgslsmith_index_u32(arg_3.x, 8u)])), u_input.a)), var_1, ~_wgslsmith_mult_u32(countOneBits(~arg_3.x), 0u));
}

fn func_1(arg_0: bool) -> vec3<f32> {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 8u)];
    global0 = array<bool, 8>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1217f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -375f) - _wgslsmith_f_op_f32(186f * -153f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-568f)), _wgslsmith_f_op_f32(f32(-1f) * -301f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(floor(-1475f))))));
    global0 = array<bool, 8>();
    let var_2 = func_5(1i ^ countOneBits(-_wgslsmith_add_i32(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(602f, var_1.x))))))), _wgslsmith_add_vec2_u32(vec2<u32>(49656u, 1u) << ((select(vec2<u32>(0u, 79075u), vec2<u32>(23466u, 40276u), vec2<bool>(global0[_wgslsmith_index_u32(23763u, 8u)], arg_0)) | vec2<u32>(52685u, 1u)) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(func_4(func_2(-2147483647i, var_1), 53173u, arg_0 & true, true), vec2<u32>(~1u, 10273u))), ~(~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 11170u, 1u, 20525u), vec4<u32>(0u, 65299u, 2597u, 50832u)), ~vec4<u32>(0u, 55993u, 0u, 81678u))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(round(func_5(-1i, var_1.zy, vec2<u32>(var_2.e, 13593u), vec4<u32>(0u, var_2.e, var_2.e, 1u)).d)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1626f, var_2.d)), -1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(2147483647i >> (select(1u, 1u, global0[_wgslsmith_index_u32(~21240u, 8u)]) % 32u));
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -123f) + _wgslsmith_f_op_f32(f32(-1f) * -2379f))), 379f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(3462f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_1(true))))));
    let var_2 = func_4(func_2(reverseBits(u_input.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1146f, var_1.x, var_1.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1586f, 622f))) * vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(round(var_1.x))))), 1u, true, false | (select(~4294967295u, reverseBits(831u), select(global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)], false)) < ~(~0u))).x;
    var_0 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.a.zy << (select(vec2<u32>(var_2, 22030u), vec2<u32>(15469u, 31091u), vec2<bool>(global0[_wgslsmith_index_u32(113346u, 8u)], global0[_wgslsmith_index_u32(var_2, 8u)])) % vec2<u32>(32u)), vec2<i32>(i32(-1i) * -1i, u_input.a.x)), min(func_5(u_input.a.x, var_1.zz, max(vec2<u32>(var_2, var_2), vec2<u32>(9309u, 45777u)), vec4<u32>(var_2, var_2, 25805u, var_2) & vec4<u32>(1u, 30526u, var_2, 13693u)).c.x, abs(-10347i))) >> (2252u % 32u);
    let var_3 = -func_5(_wgslsmith_sub_i32(abs(2147483647i), u_input.a.x) ^ -u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -1281f)), var_1.yx)), ~firstTrailingBit(~vec2<u32>(var_2, 572u)), ~(~vec4<u32>(45844u, var_2, 0u, var_2) >> ((vec4<u32>(var_2, 4294967295u, 0u, var_2) << (vec4<u32>(1u, 4294967295u, 4294967295u, var_2) % vec4<u32>(32u))) % vec4<u32>(32u)))).a;
    let var_4 = ~var_2;
    global0 = array<bool, 8>();
    let var_5 = func_2(var_3.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_2(select(vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 8u)], false, global0[_wgslsmith_index_u32(1u, 8u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 8u)], true, true, global0[_wgslsmith_index_u32(0u, 8u)]), vec4<bool>(global0[_wgslsmith_index_u32(31934u, 8u)], global0[_wgslsmith_index_u32(var_2, 8u)], true, global0[_wgslsmith_index_u32(var_2, 8u)]))), var_2, -1000f))));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-295f, -595f, _wgslsmith_f_op_f32(abs(var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yy, reverseBits(max(~28742u, 1u)), -1000f, vec2<u32>(var_4, ~_wgslsmith_sub_u32(var_4, abs(var_2))), vec3<i32>(2147483647i, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(34604i, -2147483647i) ^ vec2<i32>(0i, var_3.x)), var_3.xz), reverseBits(-(var_3.x & u_input.a.x))));
}

