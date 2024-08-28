struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<f32>;

var<private> global2: array<vec2<i32>, 18> = array<vec2<i32>, 18>(vec2<i32>(i32(-2147483648), 1i), vec2<i32>(1i, -4980i), vec2<i32>(-1i, 0i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(1i, 0i), vec2<i32>(-14128i, -2678i), vec2<i32>(26034i, 36239i), vec2<i32>(-1i, 52152i), vec2<i32>(2147483647i, 1i), vec2<i32>(-1i, 0i), vec2<i32>(-38254i, 1i), vec2<i32>(-46521i, 21871i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-50904i, i32(-2147483648)), vec2<i32>(31844i, 0i), vec2<i32>(17631i, 0i), vec2<i32>(-4286i, 59071i), vec2<i32>(7204i, -43012i));

var<private> global3: array<vec2<f32>, 16>;

var<private> global4: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(Struct_2(vec2<i32>(0i, 1i), vec3<i32>(0i, -29293i, 4831i), Struct_1(false, 0i)), true, Struct_1(false, -61072i)), Struct_3(Struct_2(vec2<i32>(-32838i, -1i), vec3<i32>(-17839i, 58443i, 54390i), Struct_1(true, 1i)), true, Struct_1(true, -35915i)), Struct_3(Struct_2(vec2<i32>(i32(-2147483648), 1i), vec3<i32>(7269i, 1i, i32(-2147483648)), Struct_1(false, 44019i)), false, Struct_1(false, -1i)), Struct_3(Struct_2(vec2<i32>(1i, 1i), vec3<i32>(-46332i, i32(-2147483648), 2147483647i), Struct_1(true, 1i)), true, Struct_1(false, 39396i)), Struct_3(Struct_2(vec2<i32>(-1i, -17253i), vec3<i32>(0i, -32997i, i32(-2147483648)), Struct_1(false, 60515i)), false, Struct_1(false, i32(-2147483648))), Struct_3(Struct_2(vec2<i32>(-16188i, 0i), vec3<i32>(24876i, -1i, 2147483647i), Struct_1(true, 30209i)), false, Struct_1(true, 2147483647i)), Struct_3(Struct_2(vec2<i32>(32811i, -1i), vec3<i32>(i32(-2147483648), 43760i, -1i), Struct_1(true, 1i)), false, Struct_1(false, i32(-2147483648))), Struct_3(Struct_2(vec2<i32>(2147483647i, 42936i), vec3<i32>(24613i, -26774i, -2057i), Struct_1(true, 23026i)), true, Struct_1(true, 26567i)), Struct_3(Struct_2(vec2<i32>(0i, -1i), vec3<i32>(2147483647i, i32(-2147483648), 0i), Struct_1(false, 52223i)), false, Struct_1(true, -1i)), Struct_3(Struct_2(vec2<i32>(-517i, -27603i), vec3<i32>(-34679i, -23626i, -1i), Struct_1(true, 36076i)), true, Struct_1(false, -1i)), Struct_3(Struct_2(vec2<i32>(-1i, 13617i), vec3<i32>(i32(-2147483648), i32(-2147483648), -46238i), Struct_1(true, 0i)), false, Struct_1(true, 24577i)), Struct_3(Struct_2(vec2<i32>(-18213i, -4706i), vec3<i32>(2147483647i, 0i, -33555i), Struct_1(false, 2147483647i)), true, Struct_1(true, 2147483647i)), Struct_3(Struct_2(vec2<i32>(2147483647i, 34194i), vec3<i32>(13999i, -1i, -1i), Struct_1(true, -357i)), false, Struct_1(true, -19253i)), Struct_3(Struct_2(vec2<i32>(54477i, i32(-2147483648)), vec3<i32>(-38601i, 0i, -48593i), Struct_1(false, 3009i)), true, Struct_1(true, -46349i)), Struct_3(Struct_2(vec2<i32>(-63902i, -52726i), vec3<i32>(4584i, -1i, i32(-2147483648)), Struct_1(false, i32(-2147483648))), false, Struct_1(false, 2147483647i)), Struct_3(Struct_2(vec2<i32>(i32(-2147483648), -1i), vec3<i32>(2147483647i, 1i, 0i), Struct_1(false, -30996i)), true, Struct_1(false, 0i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    return Struct_1(any(!(!(!vec3<bool>(global0.a, global0.a, global0.a)))), global0.b);
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_3(Struct_2(abs(global2[_wgslsmith_index_u32(~0u >> (1u % 32u), 18u)]), select(vec3<i32>(1i, 1i, 1i), -vec3<i32>(u_input.a, global0.b, 42246i), global1.x >= global1.x) | (select(vec3<i32>(global0.b, u_input.a, 25969i), vec3<i32>(global0.b, u_input.a, global0.b), vec3<bool>(global0.a, false, global0.a)) | -vec3<i32>(u_input.a, 56864i, 1i)), Struct_1(global0.a, -_wgslsmith_dot_vec3_i32(vec3<i32>(-21577i, 15486i, u_input.a), vec3<i32>(40351i, global0.b, u_input.a)))), global0.a && true, Struct_1(false, select(global0.b, -2147483647i, !(!global0.a))));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -470f), -1741f, _wgslsmith_div_f32(590f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-297f + _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(floor(global1.x))))));
    let var_1 = 1u;
    global0 = var_0.c;
    let var_2 = func_2(vec4<u32>(~min(var_1, var_1), var_1, 58937u, ~_wgslsmith_mod_u32(var_1, var_1)) << (_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_1, 12544u, var_1), vec4<u32>(var_1, var_1, var_1, 4294967295u)), vec4<u32>(115968u, var_1, 0u, 54313u)), select(~vec4<u32>(1u, 25775u, var_1, var_1), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1, 1u, 4294967295u, 8338u), vec4<u32>(0u, 4294967295u, 0u, var_1)), vec4<bool>(var_0.c.a, var_0.a.c.a, global0.a, var_0.a.c.a))) % vec4<u32>(32u)));
    return vec4<u32>(var_1, 4294967295u, var_1, select(abs(60624u << (1u % 32u)), _wgslsmith_sub_u32(var_1, ~(~var_1)), false));
}

fn func_1(arg_0: i32) -> vec2<u32> {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-935f - -343f) * _wgslsmith_f_op_f32(-606f - -1583f)))), 1220f, 2122f);
    var var_0 = ~(~(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(26899u, 0u), vec2<u32>(35674u, 27570u)))));
    var var_1 = ~vec2<i32>(select(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-7650i, -2147483647i), global2[_wgslsmith_index_u32(var_0.x, 18u)]), _wgslsmith_div_i32(1i, -1i)), 27683i, true), -10732i);
    var var_2 = func_2(countOneBits(countOneBits(vec4<u32>(var_0.x | 2517u, 4294967295u, ~var_0.x, 0u))));
    var_2 = func_2(_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, countOneBits(65124u), _wgslsmith_mod_u32(71970u, 30335u), 4294967295u), max(~func_3(), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(1351u, var_0.x, var_0.x, 1u), vec4<u32>(68512u, var_0.x, 85476u, var_0.x))))));
    return ~vec2<u32>(24905u, var_0.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<i32>) -> bool {
    global2 = array<vec2<i32>, 18>();
    var var_0 = arg_0.x;
    let var_1 = global4[_wgslsmith_index_u32(arg_0.x >> (1u % 32u), 16u)];
    var var_2 = _wgslsmith_f_op_f32(min(259f, -987f));
    let var_3 = ~(~reverseBits(max(vec3<u32>(arg_0.x, arg_0.x, 4294967295u), vec3<u32>(17497u, 4294967295u, arg_0.x)))) << (vec3<u32>(reverseBits(~arg_0.x | arg_0.x), firstLeadingBit(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(arg_0.x, arg_0.x, 4294967295u, arg_0.x)), vec4<u32>(4294967295u, arg_0.x, 0u, 101581u) | vec4<u32>(18383u, arg_0.x, arg_0.x, 27156u))), _wgslsmith_dot_vec2_u32(arg_0, _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(arg_0, vec2<u32>(73870u, 35861u)), vec2<u32>(arg_0.x, 4294967295u)))) % vec3<u32>(32u));
    return all(!(!(!select(vec3<bool>(var_1.a.c.a, true, false), vec3<bool>(global0.a, var_1.c.a, global0.a), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -select(~firstLeadingBit(vec3<i32>(u_input.a, -2147483647i, global0.b)), vec3<i32>(u_input.a, -1198i, u_input.a), true);
    let var_1 = Struct_1(!(!(global0.a || any(vec4<bool>(global0.a, global0.a, global0.a, true)))), -1438i);
    let var_2 = global1.x;
    global4 = array<Struct_3, 16>();
    var_0 = firstLeadingBit(abs(vec3<i32>(98482i, var_1.b, u_input.a)));
    var var_3 = global4[_wgslsmith_index_u32(11238u, 16u)];
    var var_4 = !select(vec4<bool>(global0.a, func_4(func_1(var_0.x), vec2<i32>(5720i, global0.b)), true, var_1.a), !select(vec4<bool>(var_1.a, true, true, var_1.a), !vec4<bool>(true, global0.a, false, var_1.a), var_3.c.a), false);
    let var_5 = false;
    var var_6 = Struct_1(true, countOneBits(var_3.c.b));
    let x = u_input.a;
    s_output = StorageBuffer(abs(reverseBits(select(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(15935u, 0u, 4294967295u, 10656u), vec4<bool>(true, true, global0.a, false)))));
}

