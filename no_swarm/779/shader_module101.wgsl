struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 28>;

var<private> global2: array<vec2<u32>, 27>;

var<private> global3: array<i32, 22> = array<i32, 22>(i32(-2147483648), i32(-2147483648), 1i, 2147483647i, -1i, -28239i, 1i, -1i, 2787i, 1i, -13928i, 30657i, 40349i, 0i, 1i, -42441i, 22480i, -41916i, 40685i, 1092i, 2147483647i, 51492i);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: f32) -> vec3<bool> {
    global0 = Struct_2(Struct_1(global0.a.a, true, abs(-(~arg_0)), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.c, global0.d.d.x, u_input.e.x, arg_0.x) & vec4<i32>(global0.d.c.x, 55187i, 1i, arg_0.x), vec4<i32>(2147483647i, u_input.d.x, u_input.c.x, 21513i)) << (~select(vec4<u32>(4294967295u, 1u, 0u, u_input.b), vec4<u32>(global0.d.a, u_input.b, 1u, u_input.b), true) % vec4<u32>(32u))), Struct_1(_wgslsmith_div_u32(15683u, 4294967295u), (~u_input.e.x ^ global3[_wgslsmith_index_u32(min(4294967295u, u_input.b), 22u)]) != -2147483647i, _wgslsmith_clamp_vec3_i32(arg_0, ~(vec3<i32>(-1i, -1i, 2147483647i) >> (vec3<u32>(27643u, 1249u, global0.a.a) % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(vec3<i32>(-15328i, u_input.e.x, arg_0.x), global0.d.c) | arg_0), (vec4<i32>(0i, 29374i, 36555i, global3[_wgslsmith_index_u32(1u, 22u)]) | _wgslsmith_sub_vec4_i32(vec4<i32>(16246i, global1[_wgslsmith_index_u32(12107u, 28u)], 1i, arg_0.x), global0.d.d)) | -global0.a.d), _wgslsmith_mult_i32(19851i, arg_0.x), global0.d);
    global0 = Struct_2(Struct_1(u_input.b, true, reverseBits(~(~vec3<i32>(u_input.c.x, -1i, 75490i))), abs(select(global0.d.d, global0.a.d, global0.d.b)) >> (~select(vec4<u32>(76651u, 14731u, u_input.a.x, 88859u), vec4<u32>(60770u, u_input.b, 98577u, 60454u), global0.d.b) % vec4<u32>(32u))), global0.a, ~firstLeadingBit(~(~global1[_wgslsmith_index_u32(global0.d.a, 28u)])), global0.d);
    var var_0 = true;
    var var_1 = select(vec4<bool>(any(!select(vec3<bool>(false, false, true), vec3<bool>(true, global0.b.b, global0.a.b), global0.d.b)), true, any(select(!vec3<bool>(global0.d.b, global0.b.b, true), vec3<bool>(false, false, global0.b.b), !vec3<bool>(global0.b.b, true, false))), !global0.d.b && (any(vec3<bool>(false, global0.b.b, global0.b.b)) == global0.a.b)), select(vec4<bool>(true | global0.b.b, global0.a.b, global0.b.b, any(select(vec2<bool>(global0.a.b, global0.a.b), vec2<bool>(true, global0.b.b), vec2<bool>(global0.b.b, global0.d.b)))), !vec4<bool>(true && global0.a.b, !global0.b.b, true, !global0.a.b), true), !vec4<bool>(any(!vec4<bool>(global0.d.b, global0.a.b, global0.a.b, global0.d.b)), true, !global0.a.b, true));
    let var_2 = vec2<bool>(var_1.x, any(vec4<bool>(true, var_1.x, true, global0.b.b && any(vec3<bool>(true, global0.a.b, true)))));
    return vec3<bool>(any(select(!select(vec4<bool>(false, var_1.x, true, true), vec4<bool>(true, false, true, var_1.x), vec4<bool>(global0.a.b, true, var_2.x, true)), vec4<bool>(var_2.x, u_input.c.x <= global1[_wgslsmith_index_u32(u_input.a.x, 28u)], var_1.x, true), any(select(vec2<bool>(true, global0.a.b), var_2, var_2)))), any(!var_1.xxx), all(!select(vec4<bool>(false, var_2.x, false, global0.b.b), vec4<bool>(false, true, var_2.x, global0.d.b), arg_0.x >= -1i)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_1) -> u32 {
    global3 = array<i32, 22>();
    let var_0 = arg_0;
    let var_1 = any(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(arg_2.b, arg_2.b, false, arg_2.b), arg_2.b), !vec4<bool>(false, var_0.d.b, global0.b.b, global0.d.b), !vec4<bool>(false, global0.b.b, true, true)), select(!vec4<bool>(false, var_0.d.b, arg_2.b, global0.b.b), select(vec4<bool>(arg_2.b, global0.b.b, arg_2.b, false), vec4<bool>(arg_0.d.b, var_0.a.b, true, global0.b.b), vec4<bool>(false, false, false, arg_2.b)), select(arg_0.d.b, true, true)), func_3(var_0.d.c, vec3<f32>(-1102f, -415f, -315f), 1576f).x || all(vec4<bool>(false, false, true, true)))) && all(vec4<bool>(false, 0u >= ~u_input.b, true, true));
    var var_2 = global0.b;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(222f)) + _wgslsmith_f_op_f32(833f + -1000f))) - -791f));
    return ~(~(~(~u_input.a.x ^ _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 83797u, arg_0.b.a), arg_1))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1070f)), -1262f)))));
    global3 = array<i32, 22>();
    let var_1 = func_4(Struct_2(global0.b, Struct_1(arg_1, true, vec3<i32>(_wgslsmith_sub_i32(0i, 21223i), _wgslsmith_add_i32(global3[_wgslsmith_index_u32(4294967295u, 22u)], global3[_wgslsmith_index_u32(arg_1, 22u)]), _wgslsmith_clamp_i32(-1122i, 11116i, 1i)), countOneBits(vec4<i32>(10816i, 23398i, global0.b.c.x, 27544i))), ~(~(-1i >> (arg_0 % 32u))), Struct_1(abs(1u), global0.b.b, ~select(vec3<i32>(0i, -2147483647i, 0i), u_input.d, false), global0.b.d)), vec3<u32>(u_input.b, 14241u, 10358u & ~_wgslsmith_dot_vec4_u32(vec4<u32>(83280u, 39735u, 2350u, global0.a.a), vec4<u32>(101949u, 47813u, arg_0, 0u))), Struct_1(u_input.a.x, any(func_3(vec3<i32>(global1[_wgslsmith_index_u32(65162u, 28u)], global0.a.c.x, global1[_wgslsmith_index_u32(107888u, 28u)]), vec3<f32>(-228f, var_0, -382f), _wgslsmith_div_f32(var_0, var_0))), reverseBits(vec3<i32>(min(u_input.c.x, 5751i), _wgslsmith_add_i32(17578i, global1[_wgslsmith_index_u32(arg_0, 28u)]), 1i)), firstTrailingBit(global0.a.d)));
    global0 = Struct_2(Struct_1(arg_1, !func_3(vec3<i32>(-2147483647i, 2147483647i, global3[_wgslsmith_index_u32(global0.b.a, 22u)]), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(793f, -744f, var_0), vec3<f32>(var_0, -1245f, 462f), vec3<bool>(false, global0.a.b, arg_2))), var_0).x, ~abs(vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 28u)], global0.d.c.x)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-26879i, -2147483647i, -1i, global3[_wgslsmith_index_u32(67586u, 22u)]) >> (vec4<u32>(39097u, arg_1, global0.b.a, 29606u) % vec4<u32>(32u)), vec4<i32>(global1[_wgslsmith_index_u32(15758u, 28u)], global1[_wgslsmith_index_u32(var_1, 28u)], u_input.d.x, global0.c) >> (vec4<u32>(4294967295u, u_input.a.x, 0u, 1u) % vec4<u32>(32u)), global0.a.d)), global0.d, global1[_wgslsmith_index_u32(countOneBits(~(4294967295u ^ _wgslsmith_div_u32(var_1, 4294967295u))), 28u)], global0.b);
    let var_2 = vec2<bool>(true, true);
    return Struct_1(~select(14736u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(arg_0, 22909u, arg_0)), var_2.x), countOneBits(global3[_wgslsmith_index_u32(firstLeadingBit(~var_1), 22u)]) <= -20937i, u_input.d, vec4<i32>(_wgslsmith_add_i32(-(u_input.c.x ^ global1[_wgslsmith_index_u32(var_1, 28u)]), -1i), ~(~firstLeadingBit(global0.a.d.x)), u_input.d.x, global1[_wgslsmith_index_u32(global0.d.a, 28u)]));
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = func_2(~global0.d.a, ~global0.b.a, !any(!vec3<bool>(global0.a.b, true, false)) & (~48816u > global0.a.a));
    let var_1 = Struct_2(Struct_1(global0.d.a, global0.d.b, vec3<i32>(global0.c, -2147483647i, -1i), var_0.d >> (vec4<u32>(var_0.a, 50799u, ~u_input.a.x, ~global0.d.a) % vec4<u32>(32u))), global0.a, _wgslsmith_clamp_i32(min(var_0.c.x << (arg_0 % 32u), reverseBits(10464i)) | _wgslsmith_mod_i32(global0.d.c.x, _wgslsmith_dot_vec3_i32(var_0.d.ywx, vec3<i32>(-2147483647i, global3[_wgslsmith_index_u32(21764u, 22u)], global0.c))), _wgslsmith_div_i32(~(~2147483647i), -56439i), global3[_wgslsmith_index_u32(~1u, 22u)] & abs(~global0.d.d.x)), Struct_1(select(~0u << (global0.b.a % 32u), u_input.b, true), false, vec3<i32>(_wgslsmith_sub_i32(var_0.d.x & -30809i, ~8292i), _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], -u_input.d.x), abs(global0.d.d.x)), vec4<i32>(-1i) * -countOneBits(var_0.d)));
    let var_2 = var_1;
    var var_3 = var_1.a;
    var var_4 = ~(1u >> (_wgslsmith_mod_u32(var_3.a, _wgslsmith_sub_u32(select(var_1.b.a, var_0.a, global0.b.b), ~1u)) % 32u));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -263f), 1f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2376f + 121f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(379f, -604f, true))))));
    let var_1 = !vec2<bool>(!global0.d.b, all(vec2<bool>(true, true)));
    let var_2 = var_0;
    let var_3 = func_1(_wgslsmith_mod_u32(min(u_input.b & 4294967295u, 19052u), reverseBits(1u) << (countOneBits(u_input.b) % 32u)) >> (1u % 32u));
    var var_4 = ~global0.b.a;
    let var_5 = var_3.d;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~firstLeadingBit(var_3.d.c.zy)), func_2(var_5.a | (~var_5.a >> (1u % 32u)), ~15213u, all(vec2<bool>(!var_1.x, any(vec4<bool>(false, var_1.x, false, true))))).c, vec3<u32>(reverseBits(~4294967295u << (1u % 32u)), func_2(~var_3.d.a, 32489u, select(true, var_5.b, false)).a, 55504u), vec4<u32>(~73984u, global0.a.a, ~((global0.b.a >> (global0.d.a % 32u)) | reverseBits(u_input.b)), 1u), vec2<f32>(-504f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(max(var_2, 1000f)), func_3(var_3.a.d.www, vec3<f32>(var_0, var_2, -1137f), var_2).x)), -2234f)));
}

