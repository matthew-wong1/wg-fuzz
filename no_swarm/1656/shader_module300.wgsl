struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: f32, arg_3: vec4<bool>) -> f32 {
    global0 = array<u32, 12>();
    let var_0 = 0u;
    global0 = array<u32, 12>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-803f + 575f))));
}

fn func_1(arg_0: bool, arg_1: u32) -> bool {
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    let var_0 = _wgslsmith_f_op_f32(-192f + _wgslsmith_f_op_f32(func_2(arg_1, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -656f), vec4<bool>(arg_0, arg_0, true, true))));
    global0 = array<u32, 12>();
    var var_1 = Struct_3(~min(u_input.b.zy, u_input.b.xz));
    return !(!(!arg_0));
}

fn func_3(arg_0: bool, arg_1: f32) -> vec4<u32> {
    global0 = array<u32, 12>();
    var var_0 = Struct_1(vec4<f32>(-1564f, arg_1, _wgslsmith_f_op_f32(min(arg_1, arg_1)), -1448f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1 + arg_1)))), -1821f)), ~vec3<i32>(1i << (global0[_wgslsmith_index_u32(19722u, 12u)] % 32u), ~13864i, u_input.e << (global0[_wgslsmith_index_u32(1131u, 12u)] % 32u)) >> (u_input.b % vec3<u32>(32u)), ~countOneBits(countOneBits(firstLeadingBit(vec4<i32>(u_input.d, u_input.a, -2147483647i, 2147483647i)))), ~vec2<i32>(1i, firstTrailingBit(-64003i)));
    let var_1 = Struct_3(_wgslsmith_div_vec2_u32(u_input.b.zy, vec2<u32>(23267u, 95385u)));
    let var_2 = !vec4<bool>(false, _wgslsmith_f_op_f32(-var_0.b) > _wgslsmith_f_op_f32(-1f), arg_0, all(!(!vec3<bool>(arg_0, arg_0, arg_0))));
    global0 = array<u32, 12>();
    return _wgslsmith_div_vec4_u32(vec4<u32>(reverseBits(4294967295u), _wgslsmith_mult_u32(abs(u_input.c), 1u), global0[_wgslsmith_index_u32(u_input.b.x, 12u)], ~var_1.a.x | min(0u, 30794u)) | firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.c, global0[_wgslsmith_index_u32(4294967295u, 12u)], u_input.c), vec4<u32>(var_1.a.x, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(59303u, 12u)], 12u)], var_1.a.x))), ~abs(vec4<u32>(reverseBits(u_input.b.x), reverseBits(370u), _wgslsmith_sub_u32(25521u, 17584u), ~global0[_wgslsmith_index_u32(u_input.b.x, 12u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1586f + _wgslsmith_f_op_f32(-204f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1111f + 1470f), _wgslsmith_f_op_f32(select(-928f, 112f, true)), true)))));
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, -506f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-230f, -1130f, -1000f, -1041f), vec4<f32>(-731f, -162f, var_0, var_0), vec4<bool>(true, true, true, true))), func_1(true, global0[_wgslsmith_index_u32(4294967295u, 12u)])))), _wgslsmith_f_op_f32(-var_0), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1785i, -16425i, 33712i), firstLeadingBit(vec3<i32>(u_input.a, u_input.a, 2147483647i))), -vec3<i32>(3253i, u_input.d, 2147483647i)), vec4<i32>(0i, firstTrailingBit(_wgslsmith_div_i32(u_input.e, 30871i)), ~u_input.e, 40807i), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(select(vec2<i32>(0i, u_input.e), vec2<i32>(u_input.d, 1i), vec2<bool>(true, false)), _wgslsmith_div_vec2_i32(vec2<i32>(1i, 49306i), vec2<i32>(u_input.d, u_input.d))), select(firstTrailingBit(vec2<i32>(-2147483647i, u_input.d)), vec2<i32>(u_input.d, -2147483647i), vec2<bool>(true, true)))));
    var var_2 = firstTrailingBit(func_3(true, 309f));
    let var_3 = Struct_3(vec2<u32>(_wgslsmith_sub_u32(~(~global0[_wgslsmith_index_u32(4294967295u, 12u)]), ~1u), global0[_wgslsmith_index_u32(22007u, 12u)]));
    var_2 = vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 1u, ~1u, u_input.c) << (min(((vec4<u32>(var_2.x, 33821u, var_3.a.x, var_3.a.x) & vec4<u32>(u_input.c, var_2.x, u_input.b.x, var_2.x)) | ~vec4<u32>(var_2.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15496u, 12u)], 12u)], 1u, var_3.a.x)) & ~firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], 4294967295u, global0[_wgslsmith_index_u32(14680u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)])), _wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.b.x, u_input.c, var_3.a.x, 1u), vec4<u32>(4294967295u, 8770u, 1u, 4294967295u), true) << (countOneBits(vec4<u32>(0u, 4294967295u, 26916u, global0[_wgslsmith_index_u32(0u, 12u)])) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(var_2.x, 12u)], global0[_wgslsmith_index_u32(var_3.a.x, 12u)], var_2.x)))) % vec4<u32>(32u));
    let var_4 = Struct_2(true, select(_wgslsmith_mult_vec2_u32(vec2<u32>(func_3(false, var_0).x, ~45893u), var_2.wx), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_add_u32(var_2.x, 0u), ~4294967295u), ~var_2.wy), !vec2<bool>(all(vec3<bool>(true, false, true)), global0[_wgslsmith_index_u32(u_input.c, 12u)] == 29321u)), Struct_1(var_1.a.a, var_0, _wgslsmith_sub_vec3_i32(var_1.a.d.xwz, var_1.a.d.wzx), var_1.a.d, var_1.a.c.yx), !any(vec3<bool>(u_input.e < var_1.a.d.x, true, true)));
    var var_5 = firstLeadingBit(_wgslsmith_mod_i32(max(firstLeadingBit(var_1.a.e.x) & -10188i, ~abs(u_input.d)), -49i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(var_1.a.a.zw, vec2<f32>(-1741f, 315f))), var_1.a.a.yz)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_4.c.a.x, var_4.c.b), vec2<f32>(var_0, -1630f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_4.c.a.yz))))), u_input.b.yz, vec3<i32>(~_wgslsmith_mult_i32(~(-51836i), _wgslsmith_clamp_i32(var_1.a.d.x, -1i, -1i)), -2147483647i, firstTrailingBit(0i)));
}

