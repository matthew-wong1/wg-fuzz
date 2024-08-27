struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: i32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: bool,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 535f;

var<private> global1: array<Struct_4, 15>;

var<private> global2: array<u32, 32> = array<u32, 32>(4294967295u, 56006u, 4294967295u, 4294967295u, 1u, 1u, 4294967295u, 1u, 47877u, 0u, 11662u, 0u, 53511u, 91008u, 45145u, 0u, 0u, 4294967295u, 42337u, 1u, 45169u, 14194u, 0u, 1u, 4294967295u, 1u, 3848u, 38206u, 4294967295u, 15551u, 1797u, 83097u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>) -> f32 {
    var var_0 = arg_0.b.b.x;
    var var_1 = 37483i >> (~_wgslsmith_div_u32(_wgslsmith_sub_u32(firstTrailingBit(arg_0.b.e), _wgslsmith_clamp_u32(1u, 18011u, global2[_wgslsmith_index_u32(arg_0.b.e, 32u)])), 72730u) % 32u);
    let var_2 = Struct_4(vec2<bool>(true, true), arg_0.b);
    var_1 = -23582i;
    let var_3 = vec4<i32>(_wgslsmith_add_i32(-2147483647i, _wgslsmith_add_i32(-2147483647i, countOneBits(arg_0.b.b.x))), var_2.b.c, firstLeadingBit(max(var_2.b.c, 32099i) & (reverseBits(arg_1.x) ^ _wgslsmith_div_i32(arg_1.x, arg_1.x))), -_wgslsmith_add_i32(_wgslsmith_div_i32(var_2.b.c, -7324i), firstLeadingBit(_wgslsmith_mod_i32(1i, 1129i))));
    return -753f;
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<bool>) -> f32 {
    global0 = _wgslsmith_f_op_f32(func_3(arg_2, -_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-19908i, 2147483647i), select(arg_1.b.c, -30123i, false), min(2147483647i, 2147483647i), countOneBits(1i)), vec4<i32>(1i, u_input.a, -7700i, 13600i) >> (vec4<u32>(1u, arg_2.b.e, arg_2.b.e, 4294967295u) % vec4<u32>(32u)))));
    let var_0 = 4294967295u;
    let var_1 = vec2<bool>(arg_3.x, !(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 1u), vec2<u32>(arg_2.b.e, 0u)) & ~arg_1.b.e, 32u)] > ~_wgslsmith_mod_u32(arg_1.b.e, 72188u)));
    let var_2 = arg_2.b;
    let var_3 = all(var_1);
    return arg_1.b.d;
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_3) -> vec3<i32> {
    let var_0 = vec4<f32>(-1082f, arg_2.a.d, arg_2.a.d, -1204f);
    let var_1 = Struct_1(!arg_2.d, _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(min(arg_2.c.b, _wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.c.b.x, 6011i), vec2<i32>(-2147483647i, 2147483647i))), vec2<i32>(arg_1, u_input.a)), vec2<i32>(_wgslsmith_mod_i32(-1i, countOneBits(arg_1)), _wgslsmith_mod_i32(1i, arg_1))), _wgslsmith_dot_vec2_i32(arg_2.a.b, arg_2.c.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_2.a.d, Struct_2(true, Struct_1(false, arg_2.a.b, arg_1, arg_2.c.d, global2[_wgslsmith_index_u32(arg_0.x, 32u)])), Struct_2(true, Struct_1(true, arg_2.a.b, 69739i, 447f, 58896u)), vec4<bool>(true, true, arg_2.a.a, true))) * _wgslsmith_f_op_f32(floor(var_0.x))) - _wgslsmith_f_op_f32(arg_2.a.d - var_0.x))), ~arg_0.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_0))), true)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.d, var_0.x, 765f, -846f), vec4<f32>(-166f, -108f, 816f, -2321f))))))));
    let var_3 = ~var_1.b;
    let var_4 = true;
    return _wgslsmith_mult_vec3_i32(select(~firstTrailingBit(firstLeadingBit(vec3<i32>(var_3.x, arg_2.c.b.x, -2147483647i))), _wgslsmith_sub_vec3_i32(min(vec3<i32>(-9875i, arg_2.a.b.x, arg_2.c.c), vec3<i32>(arg_1, 1i, -1i)), abs(vec3<i32>(-2147483647i, -48587i, arg_2.a.c))) ^ (firstTrailingBit(vec3<i32>(0i, var_3.x, 2081i)) | vec3<i32>(var_3.x, -1i, -18983i)), !arg_2.c.a), -_wgslsmith_mod_vec3_i32(vec3<i32>(-31645i, 2147483647i, 1i) | vec3<i32>(u_input.a, arg_1, arg_2.c.b.x), reverseBits(vec3<i32>(22147i, arg_1, var_1.b.x))) & ~max(~vec3<i32>(29292i, -76084i, -55545i), vec3<i32>(0i, -2147483647i, arg_2.a.c) ^ vec3<i32>(var_1.c, u_input.a, arg_2.c.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1000f;
    var var_0 = -_wgslsmith_mult_vec3_i32(max(func_1(reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(17357u, 32u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(32169u, 32u)], 32u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)], 32u)])), u_input.a, Struct_3(Struct_1(false, vec2<i32>(-35996i, 0i), 59122i, -387f, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 32u)], 32u)]), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(50270u, 32u)], 32u)], Struct_1(true, vec2<i32>(0i, -954i), -2147483647i, 172f, 0u), false, vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)], 60769u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 32u)], 32u)], 32u)]))), vec3<i32>(_wgslsmith_add_i32(u_input.a, u_input.a), i32(-1i) * -2147483647i, ~(-1i))), _wgslsmith_sub_vec3_i32(countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(0i, u_input.a, -2147483647i), vec3<i32>(-52951i, 0i, -1i))), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, -41108i, u_input.a))));
    global2 = array<u32, 32>();
    global2 = array<u32, 32>();
    let var_1 = Struct_4(vec2<bool>(!any(vec4<bool>(true, true, true, true)), !any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)))), Struct_1(select(26680i >= -u_input.a, false, any(vec4<bool>(true, true, false, true))), var_0.yz, -1i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-460f + -761f), 1040f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1084f, -603f))))), ~global2[_wgslsmith_index_u32(4026u << (countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 32u)], 32u)]) % 32u), 32u)]));
    let var_2 = vec2<i32>(countOneBits(-(~(-54460i)) ^ _wgslsmith_sub_i32(firstLeadingBit(var_1.b.c), var_1.b.b.x)), -4243i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1148f), 1000f, 254f) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.b.d, 873f, var_1.b.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(329f, var_1.b.d, var_1.b.d))))), vec3<f32>(673f, -351f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(491f - var_1.b.d))))), var_1.b.d, 863f);
}

