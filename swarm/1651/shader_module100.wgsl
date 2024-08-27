struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 25>;

var<private> global1: i32 = 30280i;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    let var_0 = firstLeadingBit(vec4<i32>(_wgslsmith_div_i32(firstLeadingBit(u_input.a) ^ -u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, 0i) >> (vec3<u32>(22424u, 22891u, 0u) % vec3<u32>(32u)), vec3<i32>(u_input.a, 41387i, 0i) | vec3<i32>(-2147483647i, 0i, u_input.a))), -u_input.a, firstLeadingBit(-1i), -_wgslsmith_div_i32(~u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(0i, u_input.a)))));
    let var_1 = Struct_1(global0[_wgslsmith_index_u32(1u, 25u)], any(vec3<bool>(false, true, true)));
    let var_2 = firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -var_0.x, _wgslsmith_div_i32(u_input.a, var_0.x), _wgslsmith_mult_i32(17252i, u_input.a)), var_0), 1i, -3608i));
    let var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1322f * arg_0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1036f)) - 1014f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, -711f))))))), all(!(!select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(var_1.b, var_1.b), vec2<bool>(var_1.b, true))))));
    global1 = _wgslsmith_mult_i32(_wgslsmith_div_i32(2147483647i, 17927i), var_0.x);
    return var_0;
}

fn func_2() -> Struct_3 {
    var var_0 = u_input.a;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(169f + _wgslsmith_f_op_f32(f32(-1f) * -1464f)));
    var var_2 = ~countOneBits(_wgslsmith_mod_vec4_i32(~vec4<i32>(24556i, u_input.a, u_input.a, 37201i) & func_3(Struct_2(-259f)), reverseBits(vec4<i32>(u_input.a, -9645i, 21225i, 57275i))));
    global1 = 11438i;
    let var_3 = Struct_4(1u, var_1.a, Struct_3((_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(-32260i, 70791i), var_2.wx) | (var_2.wz | var_2.wy)) & (var_2.zy | vec2<i32>(2612i, -8356i))));
    return Struct_3(vec2<i32>(-32725i, abs(-18588i)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: i32) -> Struct_4 {
    global1 = -1i;
    global1 = 4489i;
    global0 = array<vec4<u32>, 25>();
    let var_0 = vec3<bool>(!(!(true | (4029i == arg_1.a.x))), true, -1000f != _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-211f, -309f, true)), _wgslsmith_f_op_f32(abs(739f))))));
    global0 = array<vec4<u32>, 25>();
    return Struct_4(_wgslsmith_div_u32(_wgslsmith_div_u32(~5105u, _wgslsmith_mult_u32(arg_0.x, _wgslsmith_clamp_u32(1u, arg_0.x, 0u))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.x), ~arg_0.yx) & _wgslsmith_sub_u32(max(arg_0.x, 37049u), abs(arg_0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(759f, 1134f)))))))), func_2());
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: f32) -> vec4<u32> {
    var var_0 = func_4(reverseBits(~vec4<u32>(31601u, arg_2.x, abs(4294967295u), arg_2.x)), func_2(), u_input.a);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-307f, var_0.b)) + _wgslsmith_div_f32(-718f, var_0.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b))))))));
    var var_2 = _wgslsmith_f_op_f32(-2338f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-var_0.b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)))));
    var var_3 = Struct_4(~(arg_2.x ^ 1u), -448f, Struct_3(vec2<i32>(func_2().a.x, -1i)));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(func_4(arg_1.a, Struct_3(var_3.c.a), var_3.c.a.x).b, _wgslsmith_f_op_f32(arg_3 * 1127f), true)), arg_3, all(vec2<bool>(true, true)))) - _wgslsmith_f_op_f32(641f * _wgslsmith_f_op_f32(-arg_0.x))));
    return ~arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2162f, 433f) + vec2<f32>(828f, 1803f)) - vec2<f32>(-133f, 194f)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1191f, -1207f))))), select((abs(global0[_wgslsmith_index_u32(84357u, 25u)]) | vec4<u32>(58139u, 1u, 4294967295u, 3398u)) ^ global0[_wgslsmith_index_u32(45733u, 25u)], abs(_wgslsmith_sub_vec4_u32(func_1(vec4<f32>(-868f, -1336f, -1178f, -1212f), Struct_1(global0[_wgslsmith_index_u32(1u, 25u)], false), vec2<u32>(11285u, 3160u), 691f), vec4<u32>(4294967295u, 65039u, 4294967295u, 4294967295u))), any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true)))));
}

