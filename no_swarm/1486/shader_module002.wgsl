struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
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

var<private> global0: array<Struct_2, 30>;

var<private> global1: bool;

var<private> global2: array<vec3<u32>, 5>;

var<private> global3: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(_wgslsmith_add_vec2_i32(vec2<i32>(-6967i, -u_input.c), _wgslsmith_div_vec2_i32(vec2<i32>(-55838i, 0i), vec2<i32>(u_input.c, 1i))) & _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -u_input.a), ~(-vec2<i32>(-3421i, -2147483647i))), Struct_1(33845u & u_input.b, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1050f))))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(578f, 114f), -1000f)))), ~vec4<u32>(abs(~98747u), u_input.b, ~(~u_input.d), 1u), Struct_1(reverseBits(~40063u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-934f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1432f, -467f)))));
    let var_1 = !global3.x;
    var var_2 = vec3<bool>(global3.x, var_1, true);
    global3 = !select(vec2<bool>(false, true || any(vec3<bool>(global3.x, true, true))), vec2<bool>(!global3.x, !(!var_2.x)), select(!select(vec2<bool>(global3.x, false), var_2.yz, true), select(!var_2.yy, !var_2.yx, !vec2<bool>(false, var_2.x)), (true & var_2.x) & true));
    global2 = array<vec3<u32>, 5>();
    return ~(1u >> (firstTrailingBit(6900u) % 32u));
}

fn func_2() -> vec2<f32> {
    global3 = !select(select(!(!vec2<bool>(global3.x, false)), vec2<bool>(-47741i > u_input.a, global3.x), global3.x), vec2<bool>(global3.x, true), true);
    let var_0 = Struct_2(~abs(~vec2<i32>(u_input.a, u_input.c) >> (~vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))), Struct_1((0u << (func_3() % 32u)) << (~(4294967295u >> (u_input.d % 32u)) % 32u), 355f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(860f, 530f), vec2<f32>(532f, -498f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1289f, 197f)))))), _wgslsmith_sub_vec4_u32(~(~select(vec4<u32>(29107u, u_input.d, u_input.b, 107123u), vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.b), global3.x)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 4187u, 53157u, 4243u) >> (vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d) % vec4<u32>(32u)), abs(vec4<u32>(173u, u_input.b, 32815u, u_input.b)))), Struct_1(1u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-298f - -759f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(736f, 1000f), vec2<f32>(270f, 711f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(593f, 779f))))))));
    global1 = _wgslsmith_f_op_f32(sign(827f)) < var_0.b.c.x;
    return var_0.b.c;
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    global2 = array<vec3<u32>, 5>();
    global0 = array<Struct_2, 30>();
    let var_0 = vec3<i32>(u_input.a, firstLeadingBit(u_input.a), 0i);
    let var_1 = 2147483647i | u_input.a;
    let var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_2()))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 474f))), -875f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-697f + -353f)))), -398f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(208f, 1974f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global3.x;
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-640f, _wgslsmith_f_op_f32(func_1(!vec3<bool>(true, true, global3.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-195f, 1144f), vec2<f32>(-468f, 255f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(508f, -397f))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(320f, -1443f)))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x))));
    global1 = (var_1 < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0.x, var_1)))))) && all(!(!(!vec3<bool>(global3.x, global3.x, global3.x))));
    global1 = global3.x;
    var var_2 = Struct_3(global0[_wgslsmith_index_u32(0u, 30u)], _wgslsmith_f_op_vec2_f32(-var_0));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(countOneBits(_wgslsmith_clamp_i32(u_input.a, u_input.a, var_2.a.a.x)) << ((~0u ^ (var_2.a.c.x ^ 32140u)) % 32u), ~(firstLeadingBit(u_input.c) >> (countOneBits(u_input.b) % 32u)), -_wgslsmith_dot_vec2_i32(select(vec2<i32>(-1i, 2147483647i), vec2<i32>(u_input.a, 1i), global3.x), -var_2.a.a), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(var_2.a.a.x, var_2.a.a.x, -1i, 0i)), vec4<i32>(1i, 65236i, firstLeadingBit(var_2.a.a.x), u_input.a))), u_input.b, reverseBits(select(u_input.c, var_2.a.a.x, global3.x)), _wgslsmith_f_op_vec2_f32(func_2()).x);
}

