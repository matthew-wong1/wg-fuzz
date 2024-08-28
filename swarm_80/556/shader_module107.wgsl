struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: vec3<i32>,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9>;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(1u), Struct_1(0u), Struct_1(4294967295u), Struct_1(64826u), Struct_1(30384u), Struct_1(0u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(1u), Struct_1(18149u), Struct_1(1u), Struct_1(0u), Struct_1(1u), Struct_1(39549u), Struct_1(11791u), Struct_1(0u));

var<private> global2: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<f32>) -> bool {
    global1 = array<Struct_1, 16>();
    global1 = array<Struct_1, 16>();
    let var_0 = Struct_2(min(min(~reverseBits(vec2<u32>(19259u, global0[_wgslsmith_index_u32(1u, 9u)])), _wgslsmith_add_vec2_u32(vec2<u32>(46459u, 0u) >> (vec2<u32>(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(63277u, 9u)], 9u)]) % vec2<u32>(32u)), firstTrailingBit(vec2<u32>(12609u, 4294967295u)))), vec2<u32>(~(~1u), 25272u)), u_input.c.x);
    return true;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = 2813i;
    global0 = array<u32, 9>();
    let var_1 = !arg_0;
    var var_2 = Struct_3(vec4<bool>(arg_0.x, !func_3(vec3<f32>(154f, -476f, -1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-774f, -1000f))), !any(!vec3<bool>(false, false, var_1.x)), ~(~67540u) < ~_wgslsmith_dot_vec4_u32(vec4<u32>(803u, u_input.b, arg_1.a, u_input.b), vec4<u32>(5623u, 0u, global0[_wgslsmith_index_u32(u_input.b, 9u)], 4294967295u))), Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(arg_1.a, 9u)], arg_1.a), ~u_input.b), firstTrailingBit(~vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(u_input.b, 9u)]))), -20552i), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(sign(463f)))), _wgslsmith_f_op_f32(trunc(-563f)), 790f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-923f * _wgslsmith_f_op_f32(f32(-1f) * -404f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-349f))))));
    var var_3 = Struct_2(select(vec2<u32>(firstLeadingBit(~4294967295u), min(_wgslsmith_clamp_u32(6897u, 1u, u_input.b), ~0u)), var_2.b.a, vec2<bool>(true, false)), var_0);
    return var_2.b;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2) -> u32 {
    var var_0 = u_input.a.zx << (~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, reverseBits(4294967295u)), arg_1.a) % vec2<u32>(32u));
    global0 = array<u32, 9>();
    return ~22907u;
}

fn func_1() -> vec2<f32> {
    global0 = array<u32, 9>();
    global0 = array<u32, 9>();
    var var_0 = ~vec4<u32>(4294967295u, func_4(vec4<u32>(~1586u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], ~global0[_wgslsmith_index_u32(u_input.b, 9u)], 1u), func_2(vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(4294967295u, 16u)])), countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(48621u, 4294967295u), vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 9u)], u_input.b)), _wgslsmith_mod_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 9u)], 41885u), vec2<u32>(96385u, 4294967295u)))), global0[_wgslsmith_index_u32(4294967295u, 9u)]);
    let var_1 = u_input.a;
    let var_2 = vec3<i32>(~(-var_1.x), countOneBits(var_1.x), firstLeadingBit(u_input.a.x));
    return vec2<f32>(_wgslsmith_f_op_f32(round(1236f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-695f)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-506f - 436f) + -931f)))));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec4<f32>) -> bool {
    global0 = array<u32, 9>();
    var var_0 = reverseBits(_wgslsmith_mult_vec3_i32(~vec3<i32>(_wgslsmith_add_i32(-2147483647i, 2147483647i), ~1i, _wgslsmith_mult_i32(u_input.c.x, u_input.c.x)), u_input.a & vec3<i32>(-u_input.c.x, firstLeadingBit(u_input.a.x), u_input.a.x)));
    let var_1 = 0u;
    var var_2 = -vec3<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.x, var_0.x, u_input.c.x), u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(u_input.c.x, u_input.c.x)) << (~var_1 % 32u)) >> (_wgslsmith_add_vec3_u32(firstLeadingBit(~select(vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(4294967295u, 9u)], 9552u), vec3<u32>(arg_1.a, 0u, var_1), vec3<bool>(true, true, true))), ~(~vec3<u32>(4294967295u, 9057u, 84959u))) % vec3<u32>(32u));
    var var_3 = Struct_2(select(max(reverseBits(~vec2<u32>(61270u, 37734u)), vec2<u32>(~0u, ~var_1)), ~(~vec2<u32>(12763u, u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * arg_3.x)) > 636f), ~_wgslsmith_div_i32(var_0.x, countOneBits(_wgslsmith_mod_i32(var_2.x, var_0.x))));
    return firstLeadingBit(func_2(vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(1227u, 16u)]).b) <= -11471i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1f;
    let var_1 = vec3<bool>(true, func_5(var_0, Struct_1(_wgslsmith_div_u32(u_input.b, 0u)), _wgslsmith_f_op_vec2_f32(func_1()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1063f, var_0, 402f)))) != !all(vec3<bool>(false, false, true)), var_0 == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(-var_0))));
    let var_2 = global1[_wgslsmith_index_u32(~(u_input.b >> (_wgslsmith_dot_vec2_u32(vec2<u32>(~16874u, 0u), firstTrailingBit(vec2<u32>(4294967295u, 29499u) >> (vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 9u)], 44827u) % vec2<u32>(32u)))) % 32u)), 16u)];
    var var_3 = -_wgslsmith_dot_vec3_i32(~(~(-vec3<i32>(-2147483647i, u_input.c.x, u_input.c.x))), _wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(u_input.c.x, 0i, -2147483647i)) | abs(vec3<i32>(u_input.c.x, u_input.a.x, u_input.a.x)), u_input.a));
    var var_4 = global1[_wgslsmith_index_u32(u_input.b >> (max(min(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_2.a, global0[_wgslsmith_index_u32(var_2.a, 9u)]), vec3<u32>(var_2.a, 0u, var_2.a)), u_input.b), 0u) % 32u), 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(select(global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(38958u, 4294967295u, var_4.a), ~vec3<u32>(1u, 73933u, 69040u))), 9u)], (var_2.a | _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(var_4.a, 9u)], var_4.a, 1u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(69071u, 9u)], 9u)], var_4.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_4.a, 9u)], 9u)]))) >> (min(~var_4.a, _wgslsmith_clamp_u32(1u, 0u, 70067u)) % 32u), any(!select(vec3<bool>(true, var_1.x, true), vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, var_1.x, false)))));
}

