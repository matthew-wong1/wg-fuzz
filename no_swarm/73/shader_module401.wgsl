struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: Struct_4,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 25> = array<bool, 25>(true, true, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, true, true, true, false, true, false, false);

var<private> global2: array<vec4<f32>, 15>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec4<f32>) -> i32 {
    global0 = Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -193f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_2.x)), _wgslsmith_f_op_f32(select(arg_2.x, arg_2.x, true)))))));
    var var_0 = ~(u_input.c ^ ~vec3<u32>(abs(u_input.a.x), reverseBits(u_input.b), 68139u));
    var_0 = vec3<u32>(1u, ~(_wgslsmith_dot_vec2_u32(u_input.c.yx, var_0.yz) & u_input.b) << (~var_0.x % 32u), 0u);
    global2 = array<vec4<f32>, 15>();
    var var_1 = 22457i;
    return countOneBits(1i) << (u_input.b % 32u);
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(643f, global0.b)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.b + -1624f), -548f))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: i32) -> u32 {
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-337f)))));
    let var_0 = _wgslsmith_f_op_f32(abs(-164f));
    let var_1 = Struct_5(all(vec3<bool>(false, true, true)), global1[_wgslsmith_index_u32(0u, 25u)], Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -927f), abs(arg_1.b) << (_wgslsmith_mod_u32(min(arg_1.b, 0u), u_input.a.x) % 32u)), reverseBits(~_wgslsmith_clamp_u32(arg_1.b | arg_1.b, u_input.b | arg_1.b, 4294967295u)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(arg_0, arg_0)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_f_op_f32(-arg_1.a)), global1[_wgslsmith_index_u32(u_input.c.x, 25u)])));
    let var_2 = Struct_2(vec3<bool>(var_1.b, false, func_2(false | global1[_wgslsmith_index_u32(17032u, 25u)], -arg_2, _wgslsmith_f_op_vec4_f32(trunc(global2[_wgslsmith_index_u32(var_1.c.b, 15u)]))) < ~abs(-18923i)), all(select(select(vec4<bool>(false, false, global0.a, false), !vec4<bool>(false, global0.a, global0.a, true), select(vec4<bool>(global1[_wgslsmith_index_u32(69938u, 25u)], false, true, var_1.a), vec4<bool>(false, false, false, false), vec4<bool>(global1[_wgslsmith_index_u32(var_1.d, 25u)], global0.a, false, true))), select(vec4<bool>(global0.a, global0.a, global1[_wgslsmith_index_u32(2391u, 25u)], var_1.b), select(vec4<bool>(false, global0.a, var_1.a, global1[_wgslsmith_index_u32(arg_1.b, 25u)]), vec4<bool>(true, false, true, true), true), select(vec4<bool>(false, global0.a, global0.a, var_1.b), vec4<bool>(false, true, global0.a, var_1.b), vec4<bool>(global1[_wgslsmith_index_u32(33914u, 25u)], true, var_1.b, false))), true)), _wgslsmith_mod_vec2_i32(-vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_2), vec2<i32>(25826i, arg_2)), i32(-1i) * -2147483647i), _wgslsmith_mult_vec2_i32(min(abs(vec2<i32>(arg_2, 77269i)), -vec2<i32>(791i, arg_2)), vec2<i32>(_wgslsmith_mod_i32(2147483647i, arg_2), 16931i))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(0i, arg_2, 2147483647i, arg_2), _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, -244i, arg_2, 16780i)), ~vec4<i32>(2147483647i, -33395i, 1i, -15068i))), ~vec4<i32>(_wgslsmith_add_i32(1i, 27604i), 1i >> (var_1.d % 32u), arg_2, 25469i >> (u_input.c.x % 32u)), vec4<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-13028i, -23839i, 0i, -1i), vec4<i32>(-6339i, arg_2, arg_2, -1i), false), vec4<i32>(arg_2, arg_2, arg_2, -9616i)), 1i, ~(arg_2 & 44323i), 44061i)));
    global1 = array<bool, 25>();
    return ~1u;
}

fn func_5(arg_0: Struct_4) -> vec4<i32> {
    return vec4<i32>(-firstTrailingBit(-20702i) << (33483u % 32u), -29921i, 1i, ~3697i) >> (~vec4<u32>(u_input.c.x, ~reverseBits(u_input.a.x), u_input.b, arg_0.b >> ((arg_0.b | 95516u) % 32u)) % vec4<u32>(32u));
}

fn func_6(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: vec4<i32>, arg_3: vec2<u32>) -> Struct_5 {
    let var_0 = arg_1.x;
    var var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(abs(~_wgslsmith_mod_u32(982u, u_input.b)), arg_3.x, u_input.c.x >> (_wgslsmith_clamp_u32(firstTrailingBit(4294967295u), u_input.c.x, arg_3.x) % 32u), u_input.c.x), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(~arg_3.x, abs(u_input.b), ~4294967295u, u_input.b)), ~(~vec4<u32>(u_input.b, u_input.a.x, u_input.c.x, arg_3.x))));
    var var_2 = Struct_5(!(1u == ~(~u_input.b)), false, Struct_4(1262f, var_1.x), 6907u, vec2<f32>(_wgslsmith_f_op_f32(-338f - global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1022f - _wgslsmith_f_op_f32(abs(global0.b))))));
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.a) - var_2.c.a))));
    global0 = Struct_1(global1[_wgslsmith_index_u32(select(_wgslsmith_add_u32(~u_input.c.x, 19994u), ~(~u_input.b), global1[_wgslsmith_index_u32(var_1.x, 25u)]) >> ((~var_2.c.b << (_wgslsmith_dot_vec2_u32(var_1.xy, u_input.c.xy) % 32u)) % 32u), 25u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))));
    return Struct_5(!global0.a, any(!select(!vec2<bool>(global0.a, var_2.b), select(vec2<bool>(var_2.b, true), vec2<bool>(var_2.a, global1[_wgslsmith_index_u32(0u, 25u)]), vec2<bool>(global0.a, var_2.b)), select(vec2<bool>(global1[_wgslsmith_index_u32(arg_3.x, 25u)], global0.a), vec2<bool>(var_2.b, global1[_wgslsmith_index_u32(1u, 25u)]), vec2<bool>(true, global0.a)))), Struct_4(-462f, var_2.d), 1u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global0.b, var_2.c.a))))), _wgslsmith_f_op_f32(159f + global0.b)));
}

fn func_1(arg_0: bool) -> vec4<bool> {
    let var_0 = func_6(~(~vec3<i32>(1i, 1i, 1i)), ~abs(vec3<i32>(func_2(arg_0, -28179i, global2[_wgslsmith_index_u32(4294967295u, 15u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(28518i, -1i), vec2<i32>(38539i, 0i)), min(-2147483647i, 33096i))), func_5(Struct_4(_wgslsmith_f_op_f32(floor(-1429f)), func_4(_wgslsmith_f_op_vec2_f32(func_3(-2147483647i, u_input.c)), Struct_4(2420f, 4294967295u), 1i))), u_input.c.xz);
    let var_1 = vec2<bool>(true, true);
    var var_2 = any(!select(!select(vec3<bool>(false, global0.a, true), vec3<bool>(false, global1[_wgslsmith_index_u32(663u, 25u)], true), arg_0), select(vec3<bool>(global0.a, false, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 25u)], global0.a, var_0.b), true || var_1.x), !global0.a));
    let var_3 = -vec2<i32>(1i, -9175i << (~(~u_input.a.x) % 32u));
    var var_4 = arg_0;
    return select(vec4<bool>(global0.a, !(!(!arg_0)), global1[_wgslsmith_index_u32(var_0.c.b, 25u)], !var_1.x), !vec4<bool>(all(vec3<bool>(true, true, true)) | func_6(vec3<i32>(5104i, var_3.x, var_3.x), vec3<i32>(var_3.x, -2147483647i, 0i), vec4<i32>(var_3.x, -25611i, var_3.x, 51852i), u_input.c.yy).a, global1[_wgslsmith_index_u32(u_input.b, 25u)] && !var_0.a, false, any(vec2<bool>(true, true))), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec4<bool>(select(false, true, global0.a), !(global0.a == false), true, global0.a), !(!select(vec4<bool>(false, global0.a, global1[_wgslsmith_index_u32(1u, 25u)], false), vec4<bool>(global1[_wgslsmith_index_u32(64841u, 25u)], global0.a, global0.a, global0.a), global0.a)), select(vec4<bool>(global0.a, true, !global0.a, !global1[_wgslsmith_index_u32(u_input.b, 25u)]), func_1(global1[_wgslsmith_index_u32(~10604u, 25u)]), vec4<bool>(false, any(vec2<bool>(true, true)), true, true))), vec4<bool>(func_6(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-22518i, -23366i, 0i), vec3<i32>(14144i, -11208i, 0i)), vec3<i32>(42709i, -22886i, -31393i)), ~func_5(Struct_4(201f, u_input.b)).wxy, firstLeadingBit(vec4<i32>(-1i, 2147483647i, -64892i, 2147483647i)), ~select(u_input.a, u_input.c.yz, global1[_wgslsmith_index_u32(u_input.c.x, 25u)])).b, true, global1[_wgslsmith_index_u32(u_input.b, 25u)], true), !global1[_wgslsmith_index_u32(_wgslsmith_div_u32(min(_wgslsmith_mod_u32(u_input.a.x, 1u), _wgslsmith_clamp_u32(0u, u_input.b, u_input.b)), ~(~1u)), 25u)]);
    var var_1 = ~select(vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 140733u, 39195u, u_input.c.x), ~vec4<u32>(u_input.b, u_input.a.x, 13510u, u_input.b)), min(13347u, func_6(vec3<i32>(0i, 50314i, -12654i), vec3<i32>(19522i, 3754i, -27762i), vec4<i32>(2147483647i, 18047i, 55625i, 29071i), u_input.a).c.b), select(_wgslsmith_sub_u32(u_input.b, 59087u), u_input.c.x, !var_0.x)), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 0u, 10628u, u_input.a.x)), ~select(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(51415u, u_input.a.x, u_input.b, u_input.c.x), vec4<bool>(global1[_wgslsmith_index_u32(25641u, 25u)], global0.a, true, var_0.x))), !all(vec3<bool>(true, true, var_0.x)));
    var_0 = !select(select(!select(vec4<bool>(false, true, true, var_0.x), vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 25u)], true, false), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)], global0.a, global1[_wgslsmith_index_u32(0u, 25u)], false)), select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 25u)], false, global1[_wgslsmith_index_u32(var_1.x, 25u)]), vec4<bool>(global0.a, false, global1[_wgslsmith_index_u32(16420u, 25u)], false), vec4<bool>(var_0.x, global0.a, global1[_wgslsmith_index_u32(var_1.x, 25u)], true)), func_1(false), true), false), !vec4<bool>(var_0.x, false, true, !global0.a), vec4<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(4294967295u, 39944u), 25u)], all(!var_0.ywy), false, true));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1820f);
    global2 = array<vec4<f32>, 15>();
    var var_3 = Struct_1(!global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -535f));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(vec4<u32>(4065u, u_input.c.x, u_input.b, var_1.x) >> (abs(vec4<u32>(4294967295u, 54274u, 1u, 17081u)) % vec4<u32>(32u)))), u_input.c.x & abs(90724u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(-19764i, vec3<u32>(75254u, var_1.x, var_1.x))) * vec2<f32>(var_3.b, var_2))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_3.b - var_3.b))), -1000f)), _wgslsmith_mult_i32(-2147483647i, select(0i, 23182i, true)));
}

