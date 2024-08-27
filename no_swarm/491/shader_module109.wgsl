struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: Struct_3,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

var<private> global1: array<Struct_2, 6>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> f32 {
    let var_0 = select(vec3<i32>(i32(-1i) * -_wgslsmith_clamp_i32(-2147483647i, u_input.c.x, 1i), _wgslsmith_clamp_i32(-firstTrailingBit(-2147483647i), -_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(2147483647i, u_input.b.x, 0i, u_input.d)), 64633i), abs(_wgslsmith_mod_i32(u_input.a.x, u_input.c.x)) >> (~(~14463u) % 32u)), vec3<i32>(_wgslsmith_clamp_i32(-10292i, _wgslsmith_div_i32(u_input.c.x & 2147483647i, -2147483647i), -23221i >> (1u % 32u)), -45218i, 1i), select(vec3<bool>(!all(vec2<bool>(global0[_wgslsmith_index_u32(75804u, 7u)], false)), select(true, false, false), global0[_wgslsmith_index_u32(1u, 7u)]), vec3<bool>(false, any(vec2<bool>(global0[_wgslsmith_index_u32(45627u, 7u)], global0[_wgslsmith_index_u32(11746u, 7u)])), false), !select(vec3<bool>(false, false, false), !vec3<bool>(true, global0[_wgslsmith_index_u32(27398u, 7u)], true), true)));
    var var_1 = countOneBits(~_wgslsmith_div_vec3_u32(~(~vec3<u32>(1u, 4294967295u, 4294967295u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(27376u, 4294967295u, 4294967295u), vec3<u32>(1u, 26950u, 1192u))));
    let var_2 = !(!global0[_wgslsmith_index_u32(var_1.x, 7u)]);
    var var_3 = _wgslsmith_div_i32(2147483647i, var_0.x) > 26248i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -610f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1000f * -482f))))));
}

fn func_2(arg_0: Struct_3) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
    let var_1 = Struct_4(vec2<u32>(4294967295u, ~6100u), u_input.c.wyy, arg_0, vec3<u32>(7885u, 4294967295u, arg_0.c.x));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), arg_0.b);
    let var_3 = all(select(select(vec2<bool>(!var_1.c.a.x, true), select(select(var_1.c.a, vec2<bool>(false, false), vec2<bool>(false, global0[_wgslsmith_index_u32(52333u, 7u)])), !var_1.c.a, true), vec2<bool>(true, arg_0.a.x)), !arg_0.a, !select(select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 7u)], true), var_1.c.a, true), !var_1.c.a, vec2<bool>(arg_0.a.x, arg_0.a.x))));
    var_0 = _wgslsmith_f_op_f32(174f - _wgslsmith_f_op_f32(-741f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -410f) - -1579f))));
    return 1i;
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 14534i, u_input.b.x, u_input.b.x), vec4<i32>(0i, abs(_wgslsmith_sub_i32(u_input.b.x, u_input.d)), -35984i >> (arg_0 % 32u), ~(~(-2147483647i)))), u_input.d | _wgslsmith_div_i32(2147483647i, func_2(Struct_3(vec2<bool>(true, global0[_wgslsmith_index_u32(9026u, 7u)]), u_input.c.x, vec2<u32>(arg_0, arg_0)))), u_input.d, reverseBits(-52771i));
    var var_1 = ~0i;
    let var_2 = Struct_2(Struct_1(352f, 1i), var_0.yww, _wgslsmith_clamp_i32(var_0.x, -u_input.b.x, _wgslsmith_dot_vec3_i32(select(~u_input.b.yzz, -u_input.c.yzy, true), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 2147483647i, u_input.a.x) >> (vec3<u32>(39263u, 32812u, 8612u) % vec3<u32>(32u)), -vec3<i32>(2147483647i, var_0.x, var_0.x)))));
    var var_3 = Struct_3(vec2<bool>(reverseBits(0u) <= arg_0, !global0[_wgslsmith_index_u32(~max(0u, 0u), 7u)]), 0i, ~vec2<u32>(reverseBits(~arg_0), 90105u));
    var_1 = var_0.x;
    return Struct_3(var_3.a, u_input.b.x, var_3.c);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: i32) -> Struct_4 {
    return Struct_4(~(~(arg_0.c | vec2<u32>(arg_0.c.x, arg_0.c.x)) | arg_0.c), u_input.b.wzz, Struct_3(!vec2<bool>(false | arg_1.x, false), ~arg_0.b >> (arg_0.c.x % 32u), ~arg_0.c), _wgslsmith_mult_vec3_u32(firstTrailingBit(select(~vec3<u32>(arg_0.c.x, arg_0.c.x, arg_0.c.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(60727u, 22703u, arg_0.c.x), vec3<u32>(1u, arg_0.c.x, 24165u), vec3<u32>(arg_0.c.x, 0u, 45043u)), arg_1)), vec3<u32>(84908u, 35413u, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(1f, 1f, 1f, 1f);
    global1 = array<Struct_2, 6>();
    let var_1 = func_4(func_1(max(0u | select(1u, 4294967295u, false), 0u)), !vec3<bool>(false, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 12129u), vec2<u32>(4680u, 1u)), 7u)], true), -vec4<i32>(-firstLeadingBit(2147483647i), -2147483647i, select(u_input.b.x, u_input.d | -19894i, global0[_wgslsmith_index_u32(0u, 7u)] | true), ~36327i), u_input.b.x);
    let var_2 = Struct_1(var_0.x, abs(u_input.a.x));
    global0 = array<bool, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(var_0)));
}

