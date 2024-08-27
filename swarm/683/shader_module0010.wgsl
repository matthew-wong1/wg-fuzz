struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
    e: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(14870u, 48524u, 115570u, 74995u);

var<private> global1: array<u32, 22> = array<u32, 22>(4294967295u, 1169u, 0u, 1u, 4294967295u, 82079u, 33305u, 1u, 4294967295u, 1u, 0u, 4294967295u, 1u, 38190u, 1u, 21004u, 22314u, 1u, 1u, 50562u, 4294967295u, 40879u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5, arg_2: vec4<f32>, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = Struct_4(!(!vec3<bool>(global0.x < global0.x, true, true)), min(min(arg_1.a, ~firstLeadingBit(-1i)), 1i));
    let var_1 = 0u;
    let var_2 = abs(~(-select(arg_3.a, arg_3.a, vec4<bool>(var_0.a.x, true, false, false))) & vec4<i32>(min(abs(-2147483647i), -1i), -5061i, 2147483647i, 2147483647i));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(floor(arg_2.x)), 428f, _wgslsmith_f_op_f32(floor(1000f)));
    global0 = ~(vec4<u32>(global1[_wgslsmith_index_u32(30899u, 22u)], _wgslsmith_sub_u32(20679u, _wgslsmith_add_u32(1u, 0u)), ~(~58237u), _wgslsmith_add_u32(global0.x, ~u_input.a)) | countOneBits(vec4<u32>(var_1, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 5541u, 4294967295u), vec3<u32>(global0.x, 4294967295u, u_input.a)), 22u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.x, 22u)] >> (28577u % 32u), 22u)], ~global1[_wgslsmith_index_u32(var_1, 22u)])));
    return select(select(vec4<bool>(all(var_0.a.yz), !var_0.a.x, !(!var_0.a.x), false), select(vec4<bool>(!var_0.a.x, select(var_0.a.x, true, var_0.a.x), !var_0.a.x, false), !(!vec4<bool>(var_0.a.x, var_0.a.x, false, false)), true), vec4<bool>(var_0.a.x, !(!var_0.a.x), true, false)), select(!vec4<bool>(u_input.a != 1u, false, true, !var_0.a.x), !(!(!vec4<bool>(true, var_0.a.x, false, var_0.a.x))), !select(!vec4<bool>(false, true, false, var_0.a.x), vec4<bool>(var_0.a.x, true, var_0.a.x, true), var_0.a.x)), vec4<bool>(true, select(true, false, all(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x))), !((2352f != arg_2.x) != true), !all(!vec4<bool>(false, var_0.a.x, var_0.a.x, true))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec2<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-377f - arg_0.d.x) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x));
    var var_1 = !select(select(!(!vec3<bool>(arg_0.b, true, arg_1)), !vec3<bool>(arg_0.b, false, arg_1), true), !(!(!vec3<bool>(false, false, arg_0.b))), vec3<bool>(_wgslsmith_f_op_f32(ceil(arg_0.d.x)) <= _wgslsmith_f_op_f32(ceil(1000f)), arg_1, true));
    var_0 = arg_0.c.a.x == arg_0.c.a.x;
    return all(!vec4<bool>(false, all(vec2<bool>(var_1.x, arg_0.b)), false == (arg_0.b | true), true));
}

fn func_5(arg_0: vec3<i32>) -> vec4<u32> {
    return select(vec4<u32>(u_input.a, countOneBits(firstTrailingBit(105042u) | 96765u), 39447u, 86341u), _wgslsmith_add_vec4_u32(reverseBits(firstLeadingBit(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 22u)], global0.x, 39379u, 0u)) >> (vec4<u32>(24523u, 0u, 0u, 1u) % vec4<u32>(32u))), ~(~vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17599u, 22u)], 22u)], global1[_wgslsmith_index_u32(global0.x, 22u)], global0.x))), func_4(Struct_2(Struct_1(vec4<i32>(-2147483647i, 2147483647i, arg_0.x, 28144i)), true, Struct_1(vec4<i32>(2147483647i, 14068i, arg_0.x, -1i)), vec2<f32>(1000f, _wgslsmith_f_op_f32(-851f - 1189f)), global0.x), any(vec3<bool>(true, 1i <= arg_0.x, true)), arg_0.yy));
}

fn func_2(arg_0: u32, arg_1: bool) -> bool {
    global0 = func_5(select(_wgslsmith_clamp_vec3_i32(max(vec3<i32>(-2147483647i, 1i, 2147483647i), vec3<i32>(2147483647i, -5773i, -83455i)) << (vec3<u32>(global0.x, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8867u, 22u)], 22u)]) % vec3<u32>(32u)), (vec3<i32>(84i, -1i, -2147483647i) >> (global0.yyz % vec3<u32>(32u))) | vec3<i32>(1i, -2147483647i, -2147483647i), vec3<i32>(~(-1i), _wgslsmith_div_i32(-62836i, -23232i), 1i)), vec3<i32>(-1i, reverseBits(~(-2147483647i)), 1i), func_4(Struct_2(Struct_1(vec4<i32>(-8538i, 0i, 51743i, 29066i)), arg_1, Struct_1(vec4<i32>(2147483647i, -28166i, -5969i, -42180i)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-298f, 334f), vec2<f32>(-1161f, -156f))), 24322u), all(func_3(Struct_5(1i), Struct_5(-17163i), vec4<f32>(150f, -410f, 1018f, 1000f), Struct_1(vec4<i32>(85923i, -2147483647i, -8958i, 2147483647i)))), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(5326i, 41487i), vec2<i32>(26999i, 2147483647i)), vec2<i32>(1i, 1i)))));
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(min(select(-11333i, 43677i, true), countOneBits(~(-22651i))), _wgslsmith_dot_vec3_i32(vec3<i32>(-29249i >> (u_input.a % 32u), -59561i, _wgslsmith_div_i32(-41765i, -7578i)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-24108i, -48763i, -16069i), vec3<i32>(0i, -46507i, -47271i), vec3<i32>(-22759i, 1i, -23359i)))), select(1i, 21138i, !(!arg_1) || any(vec3<bool>(false, arg_1, false))), 1i);
    let var_1 = select(select(vec2<bool>(true, true), select(select(select(vec2<bool>(arg_1, false), vec2<bool>(true, arg_1), false), vec2<bool>(true, false), arg_1 | false), !select(vec2<bool>(arg_1, false), vec2<bool>(false, true), vec2<bool>(false, arg_1)), select(vec2<bool>(false, arg_1), select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, false), arg_1), vec2<bool>(true, true))), 4294967295u > _wgslsmith_sub_u32(u_input.a, global1[_wgslsmith_index_u32(u_input.a, 22u)] | global0.x)), vec2<bool>(arg_1 || !arg_1, !any(select(vec3<bool>(arg_1, false, true), vec3<bool>(false, arg_1, false), vec3<bool>(false, arg_1, arg_1)))), vec2<bool>(func_3(Struct_5(abs(var_0)), Struct_5(_wgslsmith_mult_i32(var_0, var_0)), vec4<f32>(_wgslsmith_f_op_f32(-362f + 705f), 809f, -1000f, -1647f), Struct_1(-vec4<i32>(29165i, var_0, -1i, -1i))).x, arg_1));
    var var_2 = !func_3(Struct_5(-7178i | _wgslsmith_dot_vec2_i32(vec2<i32>(var_0, -2147483647i), vec2<i32>(12661i, var_0))), Struct_5(select(2147483647i, var_0, var_1.x) << ((global1[_wgslsmith_index_u32(4294967295u, 22u)] << (68967u % 32u)) % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(273f, 1733f, 778f, 337f))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(271f, -1341f, 987f, 1220f) + vec4<f32>(1243f, 1078f, -423f, -1000f)), vec4<f32>(832f, -1812f, 1097f, 1000f)))), Struct_1(vec4<i32>(0i, _wgslsmith_div_i32(var_0, -38978i), 1i, firstTrailingBit(var_0)))).ww;
    global0 = ~(~(~(~(~vec4<u32>(global0.x, global1[_wgslsmith_index_u32(2340u, 22u)], 77800u, u_input.a)))));
    return !all(!(!vec3<bool>(true, var_2.x, arg_1)));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_5) -> u32 {
    var var_0 = any(vec2<bool>(false, any(vec2<bool>(true, true))));
    var var_1 = abs(select(vec2<i32>(36821i, firstLeadingBit(-5601i)) << ((abs(vec2<u32>(1u, global1[_wgslsmith_index_u32(1u, 22u)])) & (global0.xz << (vec2<u32>(u_input.a, global0.x) % vec2<u32>(32u)))) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(min(select(vec2<i32>(-2147483647i, 7483i), vec2<i32>(2147483647i, arg_1.a), vec2<bool>(true, true)), vec2<i32>(47479i, arg_1.a) >> (vec2<u32>(27195u, u_input.a) % vec2<u32>(32u))), ~(~vec2<i32>(arg_1.a, -49006i)), -select(vec2<i32>(-2147483647i, arg_1.a), vec2<i32>(2147483647i, arg_1.a), vec2<bool>(false, true))), !vec2<bool>(select(false, true, true), select(false, false, true))));
    let var_2 = any(vec3<bool>(false, func_2(global0.x, !all(vec2<bool>(true, false))), (arg_1.a >= _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, -49985i, arg_1.a), vec4<i32>(0i, arg_1.a, 70265i, var_1.x))) || false));
    var var_3 = Struct_3(abs(-(vec2<i32>(var_1.x, arg_1.a) | vec2<i32>(0i, var_1.x)) >> (vec2<u32>(~4294967295u, global1[_wgslsmith_index_u32(~4294967295u, 22u)]) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0.x)), arg_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-561f, 1092f) + arg_0.wy))))), Struct_2(Struct_1(firstLeadingBit(vec4<i32>(-1i, var_1.x, 0i, arg_1.a)) >> (~vec4<u32>(u_input.a, 13464u, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 22u)]) % vec4<u32>(32u))), var_2 || var_2, Struct_1(vec4<i32>(-2147483647i, -1i, _wgslsmith_clamp_i32(-1i, var_1.x, -6167i), _wgslsmith_dot_vec4_i32(vec4<i32>(20035i, -25310i, 14919i, -2147483647i), vec4<i32>(-1i, -2147483647i, 25607i, arg_1.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.yz)), _wgslsmith_sub_u32(36156u & (global0.x & global1[_wgslsmith_index_u32(54506u, 22u)]), ~(~1u))));
    let var_4 = true;
    return ~var_3.c.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<u32>(_wgslsmith_div_u32(1u, 4603u) << ((~11990u << (~global0.x % 32u)) % 32u), _wgslsmith_sub_u32(4294967295u, 4294967295u) ^ _wgslsmith_add_u32(global0.x, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, abs(global1[_wgslsmith_index_u32(4294967295u, 22u)])), 22u)]), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~reverseBits(_wgslsmith_div_u32(global0.x, 33967u)), u_input.a), 22u)], _wgslsmith_dot_vec2_u32(vec2<u32>(~func_1(vec4<f32>(1699f, -141f, 206f, -509f), Struct_5(2147483647i)), ~reverseBits(global0.x)), ~global0.zx));
    global1 = array<u32, 22>();
    var var_0 = !all(vec3<bool>(true, select(true, false, true) | false, true));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(871f, _wgslsmith_f_op_f32(trunc(421f)), _wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-929f)) + _wgslsmith_div_f32(444f, 872f))))));
    global1 = array<u32, 22>();
    var var_2 = ~_wgslsmith_clamp_i32(-4954i, ~(-1i), ~(-6449i));
    var var_3 = !vec2<bool>(!(var_1.x == -919f) & true, true);
    let var_4 = var_1.x;
    var_3 = select(vec2<bool>(true, true), select(!(!vec2<bool>(var_3.x, var_3.x)), !select(select(vec2<bool>(var_3.x, false), vec2<bool>(false, var_3.x), vec2<bool>(var_3.x, var_3.x)), !vec2<bool>(var_3.x, false), !var_3.x), !func_3(Struct_5(-1i), Struct_5(-2147483647i), vec4<f32>(-591f, var_1.x, var_1.x, var_1.x), Struct_1(vec4<i32>(-2147483647i, 2147483647i, 2147483647i, -43904i))).xz), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(~firstLeadingBit(-4240i), _wgslsmith_mult_i32(~_wgslsmith_clamp_i32(1i, 2147483647i, 2147483647i), 0i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), ~4294967295u);
}

