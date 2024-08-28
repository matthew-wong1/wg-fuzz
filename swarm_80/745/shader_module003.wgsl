struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 19>;

var<private> global1: array<Struct_2, 12>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool) -> f32 {
    global1 = array<Struct_2, 12>();
    var var_0 = !(!vec3<bool>(all(vec3<bool>(true, arg_1, false)), select(all(global0[_wgslsmith_index_u32(arg_0.x, 19u)]), !arg_1, all(vec2<bool>(false, arg_1))), true));
    let var_1 = select(arg_1, true, 0i < abs(_wgslsmith_dot_vec2_i32(~vec2<i32>(12082i, 2147483647i), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -11803i), vec2<i32>(4161i, -1i)))));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.xx, countOneBits(arg_0.zz)), 12u)];
    let var_3 = Struct_2(Struct_1(u_input.a, !select(var_2.a.b, !vec3<bool>(true, var_2.a.b.x, false), arg_1)), var_2.b, i32(-1i) * -select(var_2.c & -21438i, var_2.c, all(var_2.a.b)), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-406f - 1047f), var_2.d.x)), 881f, var_2.d.x, var_2.d.x));
    return 390f;
}

fn func_2() -> vec4<i32> {
    var var_0 = global1[_wgslsmith_index_u32(reverseBits(u_input.a), 12u)];
    var_0 = Struct_2(Struct_1(~4294967295u, !vec3<bool>(all(global0[_wgslsmith_index_u32(u_input.a, 19u)]), -794f <= var_0.d.x, !var_0.a.b.x)), vec2<u32>(_wgslsmith_clamp_u32(u_input.a, 56227u, 33595u), ~var_0.b.x), 2147483647i, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(select(578f, var_0.d.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_0.d.x, -1348f), vec4<f32>(_wgslsmith_f_op_f32(func_3(vec3<u32>(60987u, u_input.a, u_input.a), any(vec4<bool>(true, var_0.a.b.x, var_0.a.b.x, var_0.a.b.x)))), _wgslsmith_f_op_f32(-1874f + _wgslsmith_f_op_f32(abs(-1000f))), var_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) * var_0.d.x))));
    let var_1 = ~abs(2969u);
    var var_2 = Struct_1(~(~(~(~u_input.a))), select(select(select(var_0.a.b, select(vec3<bool>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x), var_0.a.b, false), any(var_0.a.b)), var_0.a.b, (true | var_0.a.b.x) | !var_0.a.b.x), vec3<bool>(true, var_0.a.b.x, true), vec3<bool>(false, !var_0.a.b.x, _wgslsmith_mod_i32(var_0.c, var_0.c) == min(var_0.c, var_0.c))));
    var var_3 = Struct_1(1u, !select(select(!vec3<bool>(var_2.b.x, var_0.a.b.x, true), var_0.a.b, select(vec3<bool>(true, var_2.b.x, var_0.a.b.x), var_0.a.b, vec3<bool>(var_0.a.b.x, var_2.b.x, var_2.b.x))), !select(vec3<bool>(true, var_0.a.b.x, var_2.b.x), vec3<bool>(var_0.a.b.x, true, false), var_2.b), false));
    return reverseBits(_wgslsmith_mult_vec4_i32(-abs(vec4<i32>(var_0.c, var_0.c, -2147483647i, 41031i)) >> (countOneBits(vec4<u32>(var_3.a, 6148u, var_2.a, 4294967295u) & vec4<u32>(4294967295u, 1u, 26661u, 1u)) % vec4<u32>(32u)), -(~min(vec4<i32>(var_0.c, var_0.c, var_0.c, 35949i), vec4<i32>(var_0.c, 55026i, -1i, 2200i)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = arg_2.a;
    var var_1 = -max(-abs(_wgslsmith_mod_i32(arg_0.x, 33194i)), 2147483647i);
    global1 = array<Struct_2, 12>();
    global1 = array<Struct_2, 12>();
    var_1 = firstLeadingBit(arg_2.c);
    return Struct_2(var_0, ~(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, 20528u), vec2<u32>(87300u, 4294967295u)))), _wgslsmith_div_i32(58737i, func_2().x) >> (1u % 32u), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-886f, arg_2.d.x, arg_2.d.x, arg_2.d.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d.x, arg_2.d.x, -1000f, -486f) * arg_2.d)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(348f, arg_2.d.x, -1897f, arg_2.d.x)) + vec4<f32>(_wgslsmith_f_op_f32(-arg_2.d.x), -2385f, _wgslsmith_f_op_f32(func_3(vec3<u32>(50768u, 0u, 36620u), arg_2.a.b.x)), -405f)))));
}

fn func_1(arg_0: vec4<f32>) -> bool {
    let var_0 = abs(~vec3<i32>(-countOneBits(3959i), 1i << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 1u)) % 32u), -7504i));
    global1 = array<Struct_2, 12>();
    global1 = array<Struct_2, 12>();
    let var_1 = func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -2147483647i, 1i, -20104i), func_2()), firstTrailingBit(~(~u_input.a)), Struct_2(Struct_1(~u_input.a << (33282u % 32u), vec3<bool>(true, false, any(vec2<bool>(true, false)))), ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(80442u, 52901u)), ~4294967295u), -2147483647i, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(min(221f, arg_0.x)), 393f, 422f, -2652f)))));
    global1 = array<Struct_2, 12>();
    return var_0.x >= ~var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 12>();
    global0 = array<vec2<bool>, 19>();
    var var_0 = Struct_1(20738u, select(vec3<bool>(any(vec4<bool>(false, false, true, false)), func_1(vec4<f32>(181f, -412f, -582f, -308f)), true), vec3<bool>(all(func_4(vec4<i32>(1i, -7269i, 1i, -2147483647i), 0u, global1[_wgslsmith_index_u32(1u, 12u)]).a.b.xx), all(vec3<bool>(true, true, true)), all(vec2<bool>(true, false)) || true), true));
    var var_1 = vec4<u32>(_wgslsmith_add_u32(27351u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 18971u, 0u, u_input.a), select(vec4<u32>(4294967295u, 26853u, 18376u, 0u), vec4<u32>(12126u, 59204u, u_input.a, 0u), vec4<bool>(var_0.b.x, false, var_0.b.x, false)))), select(0u, ~(~(~u_input.a)), !all(var_0.b)), func_4(vec4<i32>(1i, 1i, 1i, 1i), ~5137u, func_4(vec4<i32>(1i, 2147483647i, 53171i, ~(-2147483647i)), 52759u, Struct_2(func_4(vec4<i32>(4442i, 42946i, 2147483647i, -10812i), u_input.a, global1[_wgslsmith_index_u32(u_input.a, 12u)]).a, ~vec2<u32>(u_input.a, u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(-26729i, 19838i, -15647i), vec3<i32>(5975i, 1i, 2147483647i)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1026f, 275f, -1000f, 851f)))))).a.a, func_4(vec4<i32>(1i, 1i, 1i, 1i), var_0.a, func_4(-vec4<i32>(2147483647i, -65593i, 28155i, -2147483647i), _wgslsmith_mult_u32(1u, firstLeadingBit(var_0.a)), global1[_wgslsmith_index_u32(firstLeadingBit(0u), 12u)])).a.a);
    var var_2 = func_4(-(vec4<i32>(1i, 1i, 1i, 1i) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(44261u, 55348u, 8921u, var_0.a), vec4<u32>(19641u, 1u, 17847u, 4294967295u)) % vec4<u32>(32u))), 1u, func_4(abs(firstTrailingBit(vec4<i32>(33590i, 24999i, -1i, 63145i))), _wgslsmith_clamp_u32(~var_1.x, _wgslsmith_mult_u32(1u, _wgslsmith_div_u32(0u, 1u)), ~firstLeadingBit(var_1.x)), func_4(vec4<i32>(~0i, _wgslsmith_div_i32(-1i, 18520i), abs(-2147483647i), 1i), 4294967295u, func_4(vec4<i32>(1i, 1i, 1i, 1i), 99191u, Struct_2(Struct_1(36618u, vec3<bool>(var_0.b.x, var_0.b.x, true)), vec2<u32>(u_input.a, 4294967295u), 1i, vec4<f32>(-580f, -767f, -408f, 946f)))))).a;
    var var_3 = func_4(vec4<i32>(-69840i, 0i, 2147483647i, -7154i), var_1.x, global1[_wgslsmith_index_u32(1u, 12u)]);
    let var_4 = Struct_1(~(~(~(~u_input.a))), func_4((_wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.c, 17026i, var_3.c, -13254i), vec4<i32>(var_3.c, 7520i, 2147483647i, -41073i), vec4<i32>(var_3.c, 80090i, -28541i, var_3.c)) | abs(vec4<i32>(var_3.c, var_3.c, -2147483647i, -12415i))) | ~vec4<i32>(-1i, var_3.c, var_3.c, 1i), 1u, global1[_wgslsmith_index_u32(u_input.a, 12u)]).a.b);
    var_3 = func_4(~firstTrailingBit(min(vec4<i32>(var_3.c, var_3.c, 35825i, 0i), ~vec4<i32>(19189i, -2588i, 0i, -102658i))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(~var_2.a, 0u ^ u_input.a), _wgslsmith_div_u32(var_4.a, 1u), ~(~88083u), min(1u, var_4.a)), abs(~_wgslsmith_add_vec4_u32(vec4<u32>(5773u, var_1.x, 1405u, 74356u), vec4<u32>(u_input.a, var_4.a, 0u, 1u)))), func_4(-_wgslsmith_div_vec4_i32(vec4<i32>(var_3.c, var_3.c, var_3.c, 1i), ~vec4<i32>(1i, -1i, var_3.c, var_3.c)), ~abs(79352u), Struct_2(func_4(-vec4<i32>(1i, var_3.c, -1i, var_3.c), select(u_input.a, 2352u, false), func_4(vec4<i32>(-23771i, var_3.c, -13586i, -36292i), var_0.a, global1[_wgslsmith_index_u32(var_1.x, 12u)])).a, vec2<u32>(var_3.a.a, var_4.a), _wgslsmith_dot_vec4_i32(vec4<i32>(47398i, var_3.c, var_3.c, 42062i), vec4<i32>(var_3.c, var_3.c, 2371i, var_3.c)) >> (21058u % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(506f, var_3.d.x, var_3.d.x, -1494f))) - vec4<f32>(var_3.d.x, -925f, var_3.d.x, var_3.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(~var_3.c, var_3.c, countOneBits(var_3.c), var_3.c), firstTrailingBit(-vec4<i32>(2147483647i, 0i, 0i, -2147483647i))), vec4<i32>(-44101i, _wgslsmith_mod_i32(var_3.c, select(4366i, 23324i, true)), ~(var_3.c >> (4294967295u % 32u)), var_3.c)), ~reverseBits(vec4<u32>(4294967295u, ~var_0.a, var_1.x | var_4.a, 4294967295u)));
}

