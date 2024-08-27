struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: i32,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec2<i32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: array<vec4<u32>, 2>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_2 {
    let var_0 = vec4<bool>(true, !(!any(!vec3<bool>(true, arg_0, arg_0))), all(select(vec3<bool>(select(false, global0[_wgslsmith_index_u32(u_input.e, 3u)], true), u_input.a.x != u_input.a.x, true), !(!vec3<bool>(arg_0, false, arg_0)), !(arg_0 | true))), arg_0);
    global1 = array<vec4<u32>, 2>();
    let var_1 = all(!var_0.xy);
    return Struct_2(all(select(!(!vec3<bool>(false, false, var_1)), vec3<bool>(any(var_0), true, var_0.x), !vec3<bool>(var_0.x, true, false))), 783f, abs(u_input.c), select(!var_0.zwz, var_0.xyy, vec3<bool>(var_1, !any(var_0.yw), 2147483647i > ~u_input.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-261f + 2016f), arg_1)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(318f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-466f)) - 1f))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<u32>) -> vec4<u32> {
    var var_0 = Struct_1(~_wgslsmith_mod_vec2_u32(~arg_2.zx, _wgslsmith_div_vec2_u32(vec2<u32>(16964u, u_input.a.x), countOneBits(arg_2.zx))), arg_1.a.x, u_input.c, select(select(!(!vec4<bool>(arg_0.d.x, arg_0.a, true, arg_0.d.x)), !vec4<bool>(global0[_wgslsmith_index_u32(23743u, 3u)], false, true, true), arg_0.d.x), select(vec4<bool>(all(arg_1.b.d.zx), true, global0[_wgslsmith_index_u32(~1u, 3u)], -1085f == arg_1.e), select(vec4<bool>(arg_1.d, true, false, false), vec4<bool>(true, true, global0[_wgslsmith_index_u32(28619u, 3u)], false), select(vec4<bool>(arg_0.d.x, false, true, false), vec4<bool>(arg_1.d, arg_1.b.a, arg_0.d.x, global0[_wgslsmith_index_u32(1u, 3u)]), true)), select(!vec4<bool>(false, true, arg_1.b.a, arg_0.a), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 3u)], arg_0.d.x, arg_1.d, arg_1.d), !vec4<bool>(global0[_wgslsmith_index_u32(26177u, 3u)], arg_0.a, arg_1.b.d.x, false))), arg_1.d));
    let var_1 = any(!(!(!vec4<bool>(true, false, var_0.d.x, global0[_wgslsmith_index_u32(50926u, 3u)])))) & var_0.d.x;
    var var_2 = func_1(true, 1884f);
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * arg_1.b.b)))) * _wgslsmith_f_op_f32(abs(var_2.b))), _wgslsmith_add_i32(func_1(arg_0.b >= 480f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e.x * -336f))).c, ~_wgslsmith_mod_i32(~arg_0.c, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, arg_1.c.x, u_input.c), vec3<i32>(arg_1.c.x, 11145i, u_input.c)))), vec4<bool>(true, any(!vec4<bool>(arg_1.b.d.x, arg_0.d.x, false, var_2.a)), !(any(var_2.d) | (var_1 && true)), var_0.d.x));
    let var_3 = u_input.e;
    return _wgslsmith_sub_vec4_u32(abs(global1[_wgslsmith_index_u32(1u, 2u)]), ~vec4<u32>(~arg_2.x, ~4294967295u, arg_2.x, ~0u) << (~global1[_wgslsmith_index_u32(15777u, 2u)] % vec4<u32>(32u)));
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: bool) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(round(arg_1.e));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-535f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e * _wgslsmith_f_op_f32(arg_1.e * arg_1.b.b)))), _wgslsmith_f_op_f32(select(-956f, 1f, false)), arg_1.a.x);
    global1 = array<vec4<u32>, 2>();
    let var_2 = 1451u & select(u_input.d.x & ~11442u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 39431u), vec2<u32>(u_input.a.x, 13095u)), global0[_wgslsmith_index_u32(~abs(reverseBits(arg_0)), 3u)]);
    let var_3 = arg_1;
    return StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -279f), ~u_input.b, _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(var_2, ~56213u), u_input.d.x, u_input.d.x, 41400u), u_input.d), 1u, (vec4<i32>(var_3.c.x, var_3.b.c ^ var_3.b.c, u_input.b.x, -var_3.b.c) << (func_3(func_1(arg_1.b.d.x, var_1.x), var_3, vec3<u32>(u_input.a.x, 78226u, arg_0)) % vec4<u32>(32u))) & -(-vec4<i32>(arg_1.b.c, arg_1.c.x, 0i, arg_1.c.x) >> (select(vec4<u32>(4294967295u, var_2, 2225u, arg_0), vec4<u32>(arg_0, u_input.a.x, 4294967295u, u_input.a.x), false) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    let var_0 = ~_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(max(u_input.b.x, 36731i), min(u_input.c, u_input.c), _wgslsmith_mod_i32(u_input.c, 2147483647i), u_input.c)), ~vec4<i32>(-u_input.b.x, _wgslsmith_add_i32(1i, u_input.b.x), _wgslsmith_mult_i32(-22503i, -1i), 0i));
    let var_1 = min(countOneBits(-countOneBits(vec4<i32>(var_0.x, var_0.x, -14050i, -1i))) << (~vec4<u32>(4294967295u, u_input.d.x, 4294967295u, u_input.e) % vec4<u32>(32u)), var_0);
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    let x = u_input.a;
    s_output = func_2(~u_input.a.x, Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1205f, -234f, -1384f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(327f, 1528f, -564f), vec3<f32>(-1000f, 1434f, -1051f), global0[_wgslsmith_index_u32(u_input.e, 3u)])))), func_1(false, -1853f), u_input.b, _wgslsmith_clamp_i32(var_0.x | -2147483647i, u_input.c ^ -52476i, firstTrailingBit(u_input.c)) < ~var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -190f)), !any(vec2<bool>(true, true)));
}

