struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6> = array<f32, 6>(250f, 489f, 1299f, -374f, -802f, 157f);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<f32>) -> vec2<u32> {
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(abs(80626u), ~(~19146u), 63076u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(28488u, 834u, 1562u), vec3<u32>(24922u, 8280u, 6727u)), ~24251u), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 0u, 2700u), vec3<u32>(38629u, 4294967295u, 166926u)), vec3<u32>(1u, 1u, 1u)))), ~(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 26101u, 18086u), abs(vec3<u32>(4294967295u, 27428u, 59275u))) << (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 53847u)), firstTrailingBit(4294967295u), 4294967295u) % vec3<u32>(32u))));
    let var_1 = any(!select(vec4<bool>(true, false, all(vec3<bool>(true, false, false)), any(vec3<bool>(true, true, true))), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true), true));
    let var_2 = Struct_1(false, select(!vec4<bool>(var_1, false, !var_1, true), vec4<bool>(all(!vec3<bool>(false, true, var_1)), _wgslsmith_f_op_f32(-1863f - global0[_wgslsmith_index_u32(7209u, 6u)]) > -1397f, var_1, var_1), any(!(!vec2<bool>(var_1, false)))), _wgslsmith_add_vec2_u32(~vec2<u32>(34785u, 65688u), vec2<u32>(~var_0, ~0u)) & vec2<u32>(~var_0 & min(var_0, 23882u), var_0), ~(min(min(var_0, 0u), ~1u) ^ ~var_0));
    global0 = array<f32, 6>();
    let var_3 = Struct_2(var_2, Struct_1(false, select(!vec4<bool>(false, true, var_2.a, var_2.a), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 6u)] < arg_0.x, var_2.b.x, false), !vec4<bool>(true, true, true, var_1)), var_2.c, _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0, var_0, 28399u, var_0), vec4<u32>(14461u, var_0, var_2.c.x, var_2.c.x)), vec4<u32>(19788u, _wgslsmith_mod_u32(var_0, var_0), 45494u, firstTrailingBit(33768u)))));
    return (var_3.a.c >> (var_2.c % vec2<u32>(32u))) | vec2<u32>(var_2.d, var_0);
}

fn func_2(arg_0: u32, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(!select(true, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, 24291i <= u_input.b.x, true, true), vec4<bool>(true, true, true, true)), max(arg_1.yw, func_3(vec4<f32>(global0[_wgslsmith_index_u32(51089u, 6u)], -457f, -349f, -126f))), func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(336f, 977f, global0[_wgslsmith_index_u32(0u, 6u)], -2490f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-590f, global0[_wgslsmith_index_u32(arg_0, 6u)], 1876f, -904f) * vec4<f32>(global0[_wgslsmith_index_u32(arg_1.x, 6u)], global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(arg_0, 6u)])), false))).x), Struct_1(false, vec4<bool>(true, all(vec2<bool>(true, true)), ~arg_1.x >= 4846u, false), ~(arg_1.wx >> (_wgslsmith_div_vec2_u32(vec2<u32>(arg_0, arg_0), arg_1.yz) % vec2<u32>(32u))), ~46549u));
    var var_1 = var_0.b;
    var_1 = var_0.b;
    var_1 = Struct_1(false, var_1.b, vec2<u32>(~arg_0, min(_wgslsmith_mult_u32(1u, 0u), ~(~1u))), max(_wgslsmith_sub_u32(148975u, 0u), _wgslsmith_div_u32(~arg_1.x, ~arg_0)));
    let var_2 = vec2<u32>((0u ^ _wgslsmith_dot_vec4_u32(~arg_1, reverseBits(vec4<u32>(4294967295u, var_0.b.c.x, 101056u, arg_1.x)))) & 1u, firstTrailingBit(1u));
    return Struct_1(!var_0.b.b.x, vec4<bool>(any(!(!vec2<bool>(false, var_0.b.a))), !var_0.b.b.x, !var_1.b.x, true), ~(~_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, 32885u), vec2<u32>(arg_1.x, 11540u))), _wgslsmith_dot_vec4_u32(arg_1, _wgslsmith_div_vec4_u32(min(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, arg_1.x, arg_1.x, var_1.c.x), arg_1), vec4<u32>(36420u, var_1.c.x, 19043u, 0u) << (arg_1 % vec4<u32>(32u))), abs(abs(vec4<u32>(1u, 95322u, 4294967295u, 3418u))))));
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    let var_0 = func_2(1u, _wgslsmith_add_vec4_u32(~arg_0, max(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(arg_0, vec4<u32>(34835u, arg_0.x, 86655u, 18407u)), arg_0), arg_0)));
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    var var_1 = var_0.b;
    return 94905u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 6>();
    var var_0 = ~vec4<u32>(_wgslsmith_div_u32(1u, 31758u), _wgslsmith_add_u32(~(~0u), 34197u), _wgslsmith_dot_vec4_u32(min(vec4<u32>(31834u, 13200u, 4294967295u, 1u), ~vec4<u32>(23458u, 68344u, 0u, 7222u)), ~firstTrailingBit(vec4<u32>(19711u, 24595u, 30440u, 1u))), 55907u);
    var_0 = ~max(min(_wgslsmith_mod_vec4_u32(~vec4<u32>(9725u, 4294967295u, var_0.x, var_0.x), ~vec4<u32>(4294967295u, 6957u, 0u, 6231u)), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 1u, var_0.x, 24123u), vec4<u32>(4294967295u, 13560u, var_0.x, var_0.x)))), ~_wgslsmith_div_vec4_u32(max(vec4<u32>(var_0.x, 51453u, 1u, var_0.x), vec4<u32>(var_0.x, 4294967295u, var_0.x, 0u)), ~vec4<u32>(1u, 1u, var_0.x, 1u)));
    let var_1 = vec3<u32>(func_1(vec4<u32>(var_0.x, _wgslsmith_mult_u32(~43839u, 1u), var_0.x, ~(var_0.x | 56447u))), select(~0u, abs(_wgslsmith_add_u32(~var_0.x, 1u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 59592u), var_0.yy) <= (var_0.x >> (4294967295u % 32u))), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.x >> ((var_0.x & 5035u) % 32u), ~_wgslsmith_add_u32(var_0.x, var_0.x)), ~vec3<u32>(46545u & var_0.x, var_0.x, 1u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1016f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.x, 6u)] - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(10836u, 6u)] - global0[_wgslsmith_index_u32(0u, 6u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(62938u, 6u)]))), -570f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global0[_wgslsmith_index_u32(var_0.x, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)])) - vec3<f32>(global0[_wgslsmith_index_u32(var_0.x, 6u)], global0[_wgslsmith_index_u32(var_1.x, 6u)], 387f)), vec3<f32>(global0[_wgslsmith_index_u32(var_1.x, 6u)], _wgslsmith_f_op_f32(f32(-1f) * -138f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 6u)] + global0[_wgslsmith_index_u32(4294967295u, 6u)]))))));
    let var_3 = Struct_2(Struct_1((all(vec2<bool>(true, true)) | true) & true, vec4<bool>(_wgslsmith_f_op_f32(var_2.x + 259f) != _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.x, 6u)]), func_2(1u, _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, var_1.x, var_1.x, 0u), vec4<u32>(var_1.x, 0u, var_1.x, 1u), vec4<u32>(31964u, 4294967295u, 4294967295u, 1u))).a, true, any(vec2<bool>(true, true))), var_0.yw, var_1.x), Struct_1(!(all(vec4<bool>(false, false, true, false)) == true), select(vec4<bool>(true, true, true, true), func_2(abs(0u), vec4<u32>(9694u, var_1.x, var_1.x, var_0.x)).b, vec4<bool>(true, true, func_2(4294967295u, vec4<u32>(var_1.x, var_0.x, 24673u, var_1.x)).b.x, true)), ~vec2<u32>(~23225u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), var_1.yx)), _wgslsmith_mod_u32(var_1.x, ~max(var_0.x, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(u_input.a.x, -u_input.a.x), ~(22620u | ~func_2(4601u, vec4<u32>(var_0.x, var_3.b.c.x, 4294967295u, 13785u)).d), _wgslsmith_sub_vec2_u32(abs(var_1.yy) << ((~vec2<u32>(var_0.x, 0u) >> (var_3.a.c % vec2<u32>(32u))) % vec2<u32>(32u)), var_0.zy));
}

