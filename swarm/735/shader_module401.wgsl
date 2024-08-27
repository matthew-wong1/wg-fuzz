struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17>;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<i32>(35772i, 1i), vec4<u32>(1u, 16710u, 4294967295u, 39789u), -24261i), Struct_1(vec2<i32>(-1i, -8869i), vec4<u32>(0u, 4294967295u, 14585u, 21558u), 48620i), Struct_1(vec2<i32>(10373i, 8348i), vec4<u32>(58484u, 4294967295u, 15899u, 50378u), 0i), Struct_1(vec2<i32>(69987i, -20343i), vec4<u32>(15591u, 4294967295u, 1u, 1u), 0i), Struct_1(vec2<i32>(-33326i, 2147483647i), vec4<u32>(0u, 6530u, 4294967295u, 1u), 62800i), Struct_1(vec2<i32>(31876i, -1i), vec4<u32>(28411u, 9743u, 1u, 27820u), 0i), Struct_1(vec2<i32>(18728i, 1i), vec4<u32>(14664u, 0u, 4294967295u, 73856u), 1i), Struct_1(vec2<i32>(-13263i, -1i), vec4<u32>(0u, 4769u, 3429u, 0u), i32(-2147483648)), Struct_1(vec2<i32>(20470i, 1i), vec4<u32>(38304u, 14132u, 8196u, 10356u), -10607i), Struct_1(vec2<i32>(-15246i, i32(-2147483648)), vec4<u32>(4294967295u, 1u, 4294967295u, 36124u), 25335i), Struct_1(vec2<i32>(-30495i, 0i), vec4<u32>(4294967295u, 30707u, 0u, 1u), 2147483647i), Struct_1(vec2<i32>(-1i, 2147483647i), vec4<u32>(4752u, 76179u, 26938u, 29316u), 24601i), Struct_1(vec2<i32>(21308i, 0i), vec4<u32>(4294967295u, 54370u, 8703u, 13134u), -2153i), Struct_1(vec2<i32>(-1i, 53963i), vec4<u32>(5826u, 4294967295u, 1u, 4294967295u), -3565i), Struct_1(vec2<i32>(19823i, -87962i), vec4<u32>(1u, 13632u, 62665u, 27954u), 1i), Struct_1(vec2<i32>(-82369i, 33698i), vec4<u32>(0u, 60437u, 0u, 1u), 40105i));

var<private> global2: array<i32, 6> = array<i32, 6>(-1i, 1i, i32(-2147483648), 2474i, 50989i, 16356i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> vec2<bool> {
    return vec2<bool>(-29497i >= u_input.b.x, true);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(vec2<i32>(1i, u_input.a), ~(arg_3.b | arg_3.b), 2147483647i);
    global1 = array<Struct_1, 16>();
    global0 = array<f32, 17>();
    var_0 = Struct_1(max(vec2<i32>(~(-17475i) | firstLeadingBit(u_input.a), _wgslsmith_div_i32(_wgslsmith_mod_i32(arg_0.c, arg_0.c), max(global2[_wgslsmith_index_u32(u_input.d.x, 6u)], arg_0.c))), -(~vec2<i32>(-29719i, -1492i))), arg_3.b, -12947i >> (firstLeadingBit(~(~46330u)) % 32u));
    var var_1 = !vec4<bool>(arg_1.x, ~global2[_wgslsmith_index_u32(735u, 6u)] <= ~2147483647i, !(!all(vec4<bool>(arg_1.x, true, false, false))), !arg_2);
    return Struct_1(vec2<i32>(0i << (~(~u_input.d.x) % 32u), _wgslsmith_sub_i32(abs(firstLeadingBit(-15716i)), ~abs(46933i))), firstLeadingBit(~arg_3.b & ~select(vec4<u32>(4294967295u, 1u, 22175u, 1u), arg_3.b, arg_2)), 2147483647i);
}

fn func_4(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = func_3(func_3(Struct_1(vec2<i32>(~global2[_wgslsmith_index_u32(0u, 6u)], reverseBits(u_input.c)), vec4<u32>(u_input.d.x, _wgslsmith_sub_u32(arg_0.b.x, 34448u), ~58958u, 2363u), u_input.a), func_2(), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)))), arg_0), !(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false))), func_3(arg_0, !func_2(), any(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), arg_0));
    global0 = array<f32, 17>();
    global2 = array<i32, 6>();
    let var_1 = true;
    var_0 = Struct_1(_wgslsmith_div_vec2_i32(~arg_0.a, var_0.a), _wgslsmith_mod_vec4_u32(arg_0.b, vec4<u32>(1u, 4294967295u, var_0.b.x, abs(4294967295u))), i32(-1i) * -32841i);
    return min(~u_input.b.yy, firstLeadingBit(vec2<i32>(-global2[_wgslsmith_index_u32(u_input.d.x, 6u)], u_input.a)) & u_input.b.zy);
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_1, 16>();
    global0 = array<f32, 17>();
    global2 = array<i32, 6>();
    global2 = array<i32, 6>();
    var var_0 = global1[_wgslsmith_index_u32(17153u, 16u)];
    return Struct_1(func_4(func_3(global1[_wgslsmith_index_u32(abs(56695u), 16u)], select(vec2<bool>(false, true), vec2<bool>(true, true), func_2()), all(vec4<bool>(true, true, true, true)), Struct_1(u_input.b.zz, var_0.b, min(global2[_wgslsmith_index_u32(10214u, 6u)], u_input.c)))), vec4<u32>(_wgslsmith_dot_vec4_u32(var_0.b, ~var_0.b), var_0.b.x, var_0.b.x, var_0.b.x) ^ _wgslsmith_mod_vec4_u32(var_0.b, select(abs(var_0.b), var_0.b, vec4<bool>(true, false, true, false))), -37572i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global2 = array<i32, 6>();
    let var_1 = vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x, u_input.d.x) >> (var_0.b.wz % vec2<u32>(32u)), ~vec2<u32>(u_input.d.x, var_0.b.x)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(41860u, u_input.d.x, var_0.b.x), u_input.d), firstLeadingBit(32804u)), ~select(0u, 66394u, true), ~reverseBits(var_0.b.x)), ~var_0.b), (~4294967295u << (_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.d), _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.d.x, var_0.b.x), var_0.b.zww)) % 32u)) >> (65404u % 32u), 1u);
    let var_2 = vec4<i32>(var_0.a.x, -(~(-74553i & global2[_wgslsmith_index_u32(4294967295u, 6u)])), var_0.c ^ func_4(func_1()).x, 2147483647i) | ~min(countOneBits(vec4<i32>(var_0.c, var_0.c, global2[_wgslsmith_index_u32(var_1.x, 6u)], var_0.a.x) ^ vec4<i32>(u_input.c, u_input.a, -2147483647i, u_input.b.x)), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(var_0.b.x, 6u)], var_0.a.x, 7569i, 1i), vec4<i32>(-10886i, 1i, 7499i, 17817i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~var_1.x, 17u)]), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(44144u, 17u)] + global0[_wgslsmith_index_u32(var_1.x, 17u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(51819u, 17u)] + -219f), func_2().x)), 820f, 329f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2394f)), -462f, global0[_wgslsmith_index_u32(~u_input.d.x, 17u)], -1073f), 1309f);
}

