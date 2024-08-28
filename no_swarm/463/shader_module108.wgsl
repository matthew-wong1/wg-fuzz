struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 6>;

var<private> global1: array<u32, 27>;

var<private> global2: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec3<u32>(33776u, 3503u, 1167u), true, Struct_1(vec4<i32>(-29793i, -1i, -1666i, 1i), vec2<u32>(0u, 36490u)), false), Struct_2(vec3<u32>(0u, 50741u, 4294967295u), false, Struct_1(vec4<i32>(29795i, 2147483647i, 0i, 1i), vec2<u32>(25971u, 17318u)), false), Struct_2(vec3<u32>(59314u, 36548u, 13662u), true, Struct_1(vec4<i32>(-7768i, 63174i, 2147483647i, i32(-2147483648)), vec2<u32>(0u, 58043u)), true), Struct_2(vec3<u32>(4294967295u, 4294967295u, 4294967295u), false, Struct_1(vec4<i32>(2147483647i, -176i, -25997i, 0i), vec2<u32>(0u, 1u)), false), Struct_2(vec3<u32>(44580u, 5246u, 1u), true, Struct_1(vec4<i32>(32444i, -2545i, i32(-2147483648), i32(-2147483648)), vec2<u32>(1u, 0u)), false), Struct_2(vec3<u32>(42246u, 64099u, 1u), true, Struct_1(vec4<i32>(2147483647i, 4656i, i32(-2147483648), -7712i), vec2<u32>(17577u, 67247u)), true), Struct_2(vec3<u32>(10135u, 1u, 64991u), true, Struct_1(vec4<i32>(12032i, 1i, -1i, 2147483647i), vec2<u32>(3590u, 4294967295u)), false), Struct_2(vec3<u32>(9942u, 80162u, 17784u), false, Struct_1(vec4<i32>(-48661i, -1i, i32(-2147483648), -26093i), vec2<u32>(25367u, 1u)), true), Struct_2(vec3<u32>(47295u, 1u, 1u), true, Struct_1(vec4<i32>(2147483647i, 32043i, -1i, 2147483647i), vec2<u32>(1u, 1u)), true), Struct_2(vec3<u32>(4294967295u, 69033u, 44958u), true, Struct_1(vec4<i32>(1i, 1i, 2147483647i, -27411i), vec2<u32>(2503u, 1u)), false), Struct_2(vec3<u32>(0u, 4855u, 4294967295u), false, Struct_1(vec4<i32>(-10844i, 21804i, 1i, 1i), vec2<u32>(11082u, 36001u)), true), Struct_2(vec3<u32>(0u, 4294967295u, 1u), true, Struct_1(vec4<i32>(-16691i, -1i, 0i, -1i), vec2<u32>(7502u, 4294967295u)), false), Struct_2(vec3<u32>(1u, 23182u, 91780u), false, Struct_1(vec4<i32>(1i, 1i, 60811i, -1i), vec2<u32>(12529u, 27760u)), false), Struct_2(vec3<u32>(55488u, 0u, 1u), false, Struct_1(vec4<i32>(2147483647i, 22309i, -1i, -6786i), vec2<u32>(0u, 44143u)), false), Struct_2(vec3<u32>(0u, 4294967295u, 1u), false, Struct_1(vec4<i32>(1i, i32(-2147483648), 2147483647i, 2147483647i), vec2<u32>(0u, 4294967295u)), false), Struct_2(vec3<u32>(30265u, 1u, 4294967295u), false, Struct_1(vec4<i32>(i32(-2147483648), 24873i, 61565i, 1i), vec2<u32>(29879u, 1u)), false), Struct_2(vec3<u32>(4294967295u, 34672u, 1u), false, Struct_1(vec4<i32>(1i, -37468i, -20515i, i32(-2147483648)), vec2<u32>(1u, 8882u)), false), Struct_2(vec3<u32>(14066u, 29668u, 1u), true, Struct_1(vec4<i32>(1i, 2147483647i, -22235i, -68244i), vec2<u32>(42788u, 4294967295u)), true), Struct_2(vec3<u32>(36919u, 60427u, 30081u), false, Struct_1(vec4<i32>(0i, i32(-2147483648), 14452i, i32(-2147483648)), vec2<u32>(25307u, 0u)), false), Struct_2(vec3<u32>(2613u, 1u, 19891u), false, Struct_1(vec4<i32>(-1544i, -12183i, i32(-2147483648), 1i), vec2<u32>(19320u, 64105u)), false), Struct_2(vec3<u32>(40177u, 33990u, 0u), false, Struct_1(vec4<i32>(i32(-2147483648), -10684i, -10851i, -25168i), vec2<u32>(42916u, 4294967295u)), true), Struct_2(vec3<u32>(1u, 0u, 7062u), false, Struct_1(vec4<i32>(2147483647i, 1i, 0i, 43200i), vec2<u32>(45306u, 1u)), false), Struct_2(vec3<u32>(0u, 0u, 1u), true, Struct_1(vec4<i32>(9473i, 11134i, -1i, -1i), vec2<u32>(106581u, 16976u)), false), Struct_2(vec3<u32>(43833u, 36326u, 0u), true, Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -37166i, 1i), vec2<u32>(54091u, 0u)), true), Struct_2(vec3<u32>(22122u, 4294967295u, 0u), false, Struct_1(vec4<i32>(27870i, 13293i, 20049i, 2147483647i), vec2<u32>(4294967295u, 3725u)), false), Struct_2(vec3<u32>(4294967295u, 91230u, 6842u), true, Struct_1(vec4<i32>(1i, -14668i, -1i, i32(-2147483648)), vec2<u32>(864u, 0u)), true), Struct_2(vec3<u32>(1u, 54237u, 1u), true, Struct_1(vec4<i32>(i32(-2147483648), 1i, 32062i, 2147483647i), vec2<u32>(4294967295u, 17652u)), false), Struct_2(vec3<u32>(10395u, 0u, 0u), false, Struct_1(vec4<i32>(1i, -1i, 2147483647i, 5672i), vec2<u32>(0u, 5889u)), true));

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> vec3<f32> {
    var var_0 = arg_0;
    var_0 = global2[_wgslsmith_index_u32(var_0.a.x, 28u)];
    global1 = array<u32, 27>();
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~0u, global3.b.x & ~_wgslsmith_mult_u32(1u, global1[_wgslsmith_index_u32(16590u, 27u)])), 27u)] & max(_wgslsmith_dot_vec3_u32(~arg_0.a & arg_0.a, ~(~var_0.a)), ~abs(arg_0.c.b.x));
    var var_2 = Struct_2(~vec3<u32>(~15248u, 6333u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(0u, global3.b.x, 1u)), arg_0.a), 27u)]), true, var_0.c, all(!(!global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, global1[_wgslsmith_index_u32(4294967295u, 27u)]), 6u)])));
    return vec3<f32>(_wgslsmith_f_op_f32(min(803f, _wgslsmith_f_op_f32(187f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-228f * 317f))))), 1155f, _wgslsmith_f_op_f32(1449f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-2669f)), _wgslsmith_f_op_f32(f32(-1f) * -360f), true))));
}

fn func_2(arg_0: vec2<bool>) -> bool {
    let var_0 = arg_0.x;
    global3 = Struct_1(global3.a & (global3.a ^ vec4<i32>(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, global3.a.x), abs(-715i), u_input.a.x)), _wgslsmith_div_vec2_u32((global3.b ^ ~vec2<u32>(57082u, global1[_wgslsmith_index_u32(4294967295u, 27u)])) ^ firstTrailingBit(vec2<u32>(global3.b.x, 8619u)), vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 27u)], 27u)] << (global3.b.x % 32u)) | global3.b));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1691f, 1f, _wgslsmith_f_op_f32(325f + 356f)) * vec3<f32>(_wgslsmith_f_op_f32(-495f - -298f), _wgslsmith_f_op_f32(-822f - 1922f), _wgslsmith_f_op_f32(abs(-2009f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(518f, -924f)), _wgslsmith_f_op_f32(f32(-1f) * -188f), -961f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(vec3<u32>(0u, global1[_wgslsmith_index_u32(global3.b.x, 27u)], 117u), var_0, Struct_1(global3.a, global3.b), var_0), Struct_1(global3.a, global3.b), global1[_wgslsmith_index_u32(36260u, 27u)])) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-987f, -1618f, 155f) + vec3<f32>(375f, -1614f, -202f)))))), !var_0));
    var var_2 = Struct_2(_wgslsmith_add_vec3_u32(~vec3<u32>(global1[_wgslsmith_index_u32(global3.b.x, 27u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.b.x, 27u)], 27u)], global1[_wgslsmith_index_u32(87544u, 27u)]) | ~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60039u, 27u)], 27u)], 92099u, 4294967295u), ~vec3<u32>(global3.b.x, global3.b.x, global3.b.x)) & vec3<u32>(68550u, countOneBits(max(1u, 73720u)), 0u), (reverseBits(firstLeadingBit(0i)) & (~(-1i) << (global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 27u)], 27u)] % 32u))) >= ~(-(~global3.a.x)), Struct_1(max(global3.a, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, global3.a.x, -20148i), global3.a), -21618i, ~u_input.a.x, u_input.a.x)), vec2<u32>(countOneBits(_wgslsmith_clamp_u32(92877u, global3.b.x, global1[_wgslsmith_index_u32(1u, 27u)])), 1u)), any(vec3<bool>(var_0, arg_0.x, var_0)));
    var_2 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(48750u, 6191u, _wgslsmith_add_u32(0u, global3.b.x)), 28u)];
    return select(any(vec3<bool>(all(vec3<bool>(var_2.d, false, var_0)), var_0, select(var_0, var_0, var_0))) & arg_0.x, any(select(!select(vec2<bool>(var_0, var_2.d), vec2<bool>(false, var_0), vec2<bool>(arg_0.x, true)), vec2<bool>(4294967295u != var_2.c.b.x, false), !var_0)), false);
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1834f, _wgslsmith_f_op_f32(f32(-1f) * -750f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f - -616f)))), _wgslsmith_f_op_f32(737f + 1f))));
    var var_1 = !(!any(vec2<bool>(all(global0[_wgslsmith_index_u32(global3.b.x, 6u)]), func_2(vec2<bool>(false, false)))));
    global0 = array<vec2<bool>, 6>();
    var var_2 = -74156i;
    var var_3 = Struct_2(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(global3.b.x, 1u, global1[_wgslsmith_index_u32(4294967295u, 27u)]), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 4294967295u, 0u))), any(vec2<bool>(all(global0[_wgslsmith_index_u32(~1u, 6u)]), all(vec2<bool>(true, true)))), Struct_1(vec4<i32>(-29590i, u_input.a.x, -max(global3.a.x, u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, global3.a.x), global3.a.wz) >> (_wgslsmith_dot_vec2_u32(global3.b, vec2<u32>(global3.b.x, global3.b.x)) % 32u)), ~(vec2<u32>(53936u, 19572u) >> (global3.b % vec2<u32>(32u)))), !func_2(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))) & false);
    return all(vec4<bool>(-1647f <= _wgslsmith_f_op_f32(-var_0.x), false, false, var_3.b)) & true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(u_input.a.yz);
    var var_1 = Struct_2(firstLeadingBit(vec3<u32>(_wgslsmith_clamp_u32(min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 27u)], 23268u), ~26275u, ~global1[_wgslsmith_index_u32(2024u, 27u)]), _wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~4294967295u, 27u)], 27u)], ~1u), ~0u)), func_1(), Struct_1(~global3.a, vec2<u32>(~(~global1[_wgslsmith_index_u32(global3.b.x, 27u)]), ~(117739u ^ global1[_wgslsmith_index_u32(global3.b.x, 27u)]))), true);
    global0 = array<vec2<bool>, 6>();
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~0u, _wgslsmith_div_u32(global1[_wgslsmith_index_u32(54919u, 27u)] << (global1[_wgslsmith_index_u32(var_1.c.b.x, 27u)] % 32u), 0u)), 28u)];
    var var_3 = _wgslsmith_mod_vec3_u32(abs(vec3<u32>(global1[_wgslsmith_index_u32(global3.b.x, 27u)], var_2.c.b.x, select(global3.b.x, var_2.c.b.x, var_1.d))), vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.c.b.x, global1[_wgslsmith_index_u32(var_2.c.b.x, 27u)], 38503u, 22749u), vec4<u32>(var_2.a.x, 56307u, global1[_wgslsmith_index_u32(var_1.a.x, 27u)], var_2.c.b.x) & vec4<u32>(global1[_wgslsmith_index_u32(var_1.a.x, 27u)], 74611u, 1u, global3.b.x)), ~58352u, global3.b.x)) ^ select(countOneBits(~var_2.a), ~(firstTrailingBit(vec3<u32>(1u, 80549u, 65466u)) ^ ~var_2.a), vec3<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, 52418i, 25681i), vec4<i32>(var_0.x, global3.a.x, u_input.a.x, -2147483647i)) < 2147483647i, false, false));
    var_3 = ~(vec3<u32>(global1[_wgslsmith_index_u32(var_3.x, 27u)], _wgslsmith_div_u32(34358u, var_3.x), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~var_2.c.b.x, 27u)], 27u)]) << (abs(var_1.a) % vec3<u32>(32u)));
    global0 = array<vec2<bool>, 6>();
    var_1 = Struct_2(firstTrailingBit(vec3<u32>(1u >> (var_1.c.b.x % 32u), 3772u, select(var_3.x, global1[_wgslsmith_index_u32(31760u, 27u)], true))) | vec3<u32>(_wgslsmith_dot_vec2_u32(var_3.yy, _wgslsmith_add_vec2_u32(vec2<u32>(38250u, 4294967295u), global3.b)), 25544u, ~global3.b.x), false, Struct_1(_wgslsmith_sub_vec4_i32(var_1.c.a, -var_1.c.a) & abs(var_1.c.a), var_2.c.b), var_0.x > 0i);
    var var_4 = Struct_1(~_wgslsmith_clamp_vec4_i32(var_2.c.a, firstTrailingBit(vec4<i32>(0i, var_1.c.a.x, 11513i, var_0.x)), select(abs(var_1.c.a), select(vec4<i32>(var_2.c.a.x, var_0.x, u_input.a.x, 0i), global3.a, true), vec4<bool>(var_2.d, var_1.d, false, var_2.b))), ~vec2<u32>(~reverseBits(global3.b.x), 24990u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1304f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1671f)) * _wgslsmith_f_op_f32(min(-766f, 1085f)))))), ~(_wgslsmith_sub_u32(52383u, min(14036u, 1u)) ^ ~firstLeadingBit(var_3.x)));
}

