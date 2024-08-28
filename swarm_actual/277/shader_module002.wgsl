struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<u32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: Struct_2,
    d: u32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

var<private> global1: array<Struct_1, 1>;

var<private> global2: array<i32, 32> = array<i32, 32>(-32642i, -1i, -1708i, 1i, 0i, 1i, -5116i, -1i, i32(-2147483648), -5741i, 7671i, -23214i, 1i, 2147483647i, -27832i, -1499i, 2147483647i, i32(-2147483648), 0i, -35453i, -6844i, 0i, -48502i, 17877i, -7756i, -53495i, -24954i, i32(-2147483648), 8251i, -16415i, 2383i, 0i);

var<private> global3: vec4<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: vec3<bool>) -> bool {
    global1 = array<Struct_1, 1>();
    return true && (arg_1.x > -1211f);
}

fn func_2() -> Struct_5 {
    var var_0 = select(select(vec3<bool>(true, all(vec2<bool>(true, true)), func_3(select(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], 1i, false), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)]), vec2<f32>(-1674f, -681f))), vec3<bool>(false, false, true))), select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, all(vec3<bool>(false, true, false))), vec3<bool>(false, true, select(true, false, true))), select(select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)), vec3<bool>(1u < u_input.a.x, global2[_wgslsmith_index_u32(0u, 32u)] < 32314i, true), !(global0[_wgslsmith_index_u32(u_input.b, 27u)] > global0[_wgslsmith_index_u32(73896u, 27u)]))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, u_input.b != 59291u, select(false, false, false)), vec3<bool>(any(vec2<bool>(true, false)), true, all(vec4<bool>(true, true, true, false)))), !vec3<bool>(true, func_3(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 27u)], global0[_wgslsmith_index_u32(9599u, 27u)]), vec3<bool>(false, false, false)), 61928u >= u_input.b), vec3<bool>(!func_3(global2[_wgslsmith_index_u32(94652u, 32u)], vec2<f32>(global0[_wgslsmith_index_u32(8299u, 27u)], 2635f), vec3<bool>(false, false, true)), !func_3(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], vec2<f32>(global0[_wgslsmith_index_u32(85453u, 27u)], 114f), vec3<bool>(false, false, true)), true)), !select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), false));
    var var_1 = Struct_4(global1[_wgslsmith_index_u32(firstLeadingBit(1u), 1u)]);
    global2 = array<i32, 32>();
    var var_2 = ~_wgslsmith_clamp_vec4_i32(vec4<i32>(max(0i, global3.x), global3.x & global2[_wgslsmith_index_u32(u_input.b, 32u)], ~(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.e.x, 2147483647i), var_1.a.e)) | (vec4<i32>(global2[_wgslsmith_index_u32(13751u, 32u)], global2[_wgslsmith_index_u32(var_1.a.b, 32u)], 2147483647i, var_1.a.e.x) & -vec4<i32>(-10720i, 15498i, 2434i, 57853i)), ~vec4<i32>(global3.x, select(var_1.a.e.x, global2[_wgslsmith_index_u32(u_input.a.x, 32u)], false), 1i, -35475i), -(~(-vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(var_1.a.c.x, 32u)], 103i, var_1.a.e.x))));
    var_2 = ~abs(vec4<i32>(1i, -2147483647i, global3.x, global3.x >> (var_1.a.c.x % 32u)) >> (~reverseBits(vec4<u32>(50784u, 1u, 0u, 0u)) % vec4<u32>(32u)));
    return Struct_5(var_1.a.b >> (u_input.b % 32u), _wgslsmith_mult_vec3_u32(~min(vec3<u32>(u_input.b, u_input.a.x, var_1.a.c.x), var_1.a.c), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, 76632u), var_1.a.c) | select(vec3<u32>(44575u, 4294967295u, 27418u), vec3<u32>(8985u, 8342u, var_1.a.b), vec3<bool>(var_0.x, false, var_0.x))) & var_1.a.c);
}

fn func_1(arg_0: f32) -> StorageBuffer {
    global0 = array<f32, 27>();
    global2 = array<i32, 32>();
    global1 = array<Struct_1, 1>();
    global1 = array<Struct_1, 1>();
    let var_0 = func_2();
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(218f, global0[_wgslsmith_index_u32(8740u, 27u)])), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(abs(arg_0))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 27u)], arg_0, global0[_wgslsmith_index_u32(var_0.b.x, 27u)]))))), vec3<u32>(max(0u, u_input.a.x) << (~(~23913u) % 32u), var_0.b.x, ~_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 87516u, 1u, var_0.b.x), vec4<u32>(4294967295u, 30560u, var_0.b.x, 4294967295u)))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a, reverseBits(var_0.b.x), 1u, countOneBits(59322u)), countOneBits(~vec4<u32>(1u, 4294967295u, var_0.a, u_input.a.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 27u)]) * _wgslsmith_f_op_f32(599f - 1217f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 1>();
    let var_0 = select(vec2<bool>(!any(vec3<bool>(true, true, true)), true), !select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(any(vec4<bool>(false, false, false, false)), true), true), true);
    global1 = array<Struct_1, 1>();
    global0 = array<f32, 27>();
    global3 = -vec4<i32>(global3.x, global2[_wgslsmith_index_u32(39698u, 32u)], max(1i, global2[_wgslsmith_index_u32(133296u, 32u)]), global3.x);
    let var_1 = Struct_5(u_input.a.x, select(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a.x, 1u, 8706u)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a.x, 53806u), vec3<u32>(4294967295u, u_input.a.x, 1u))), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 55362u, 0u), reverseBits(vec3<u32>(79641u, u_input.b, u_input.a.x)))), ~vec3<u32>(42598u, ~29818u, ~30020u), _wgslsmith_mult_i32(20941i, i32(-1i) * -1i) >= ~abs(global3.x)));
    let var_2 = !(!select(select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(false, false, var_0.x, true), vec4<bool>(false, false, var_0.x, true)), select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(false, false, var_0.x, var_0.x), true)), vec4<bool>(var_0.x, var_0.x && var_0.x, true != var_0.x, true), select(!vec4<bool>(false, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, false, var_0.x, true), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, true, false, true), vec4<bool>(true, true, var_0.x, var_0.x)))));
    global2 = array<i32, 32>();
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

