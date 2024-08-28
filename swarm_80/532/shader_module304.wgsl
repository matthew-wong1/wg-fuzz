struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 23> = array<u32, 23>(4294967295u, 84981u, 0u, 4455u, 13622u, 4294967295u, 54342u, 8565u, 32094u, 0u, 42983u, 23042u, 1u, 45954u, 43283u, 5510u, 42722u, 10709u, 1u, 1u, 52985u, 0u, 4294967295u);

var<private> global2: array<bool, 5>;

var<private> global3: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true));

var<private> global4: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(61570u, 52145u, 5447u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 1u, 15147u), vec3<u32>(40555u, 20029u, 66383u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(90797u, 88832u, 0u), vec3<u32>(123403u, 33045u, 5178u), vec3<u32>(29901u, 76877u, 1u), vec3<u32>(39867u, 37122u, 52564u), vec3<u32>(1u, 57328u, 0u), vec3<u32>(5260u, 4294967295u, 1u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(1u, 9821u, 4294967295u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> bool {
    return true;
}

fn func_3(arg_0: bool, arg_1: bool) -> u32 {
    return ~(~(_wgslsmith_add_u32(select(1u, 25578u, false), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14616u, 23u)], 23u)], 62555u), vec3<u32>(1u, 47864u, 4294967295u))) >> ((0u >> (_wgslsmith_dot_vec3_u32(global4[_wgslsmith_index_u32(0u, 13u)], global4[_wgslsmith_index_u32(u_input.e, 13u)]) % 32u)) % 32u)));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_div_i32(u_input.a, 1i), _wgslsmith_f_op_f32(-global0.b), 0u);
    global2 = array<bool, 5>();
    global0 = Struct_1(-global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.b))))), ~0u);
    var var_1 = var_0.b;
    global3 = array<vec3<bool>, 6>();
    return Struct_2((vec4<u32>(~33411u, _wgslsmith_mult_u32(global0.c, 4294967295u), func_3(global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(u_input.e, 5u)]), select(1u, 43576u, false)) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(42116u, var_0.c, 1u, global1[_wgslsmith_index_u32(580u, 23u)]), reverseBits(vec4<u32>(0u, 1u, u_input.e, global1[_wgslsmith_index_u32(var_0.c, 23u)]))) % vec4<u32>(32u))) & (vec4<u32>(var_0.c, ~var_0.c, ~var_0.c, global0.c) | (vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(var_0.c, 23u)], 4294967295u, u_input.e) | (vec4<u32>(1769u, 68540u, 0u, global0.c) >> (vec4<u32>(1u, 26206u, 4294967295u, var_0.c) % vec4<u32>(32u))))), vec3<u32>(_wgslsmith_div_u32(~(~global1[_wgslsmith_index_u32(4294967295u, 23u)]), abs(global0.c) >> (1u % 32u)), u_input.c.x, ~_wgslsmith_sub_u32(var_0.c, var_0.c)), vec2<f32>(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -761f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b - 1369f)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> StorageBuffer {
    global4 = array<vec3<u32>, 13>();
    global3 = array<vec3<bool>, 6>();
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.c.x))), arg_3.c.x, arg_3.c.x) + vec3<f32>(arg_3.c.x, -1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global0.b)), arg_3.c.x))));
    var var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(u_input.e, 0u, global1[_wgslsmith_index_u32(arg_1.b.x, 23u)], global0.c)), ~vec4<u32>(50743u, 0u, 0u, 4294967295u)), ~vec4<u32>(1725u, global0.c, arg_3.b.x, 56340u)), ~(~_wgslsmith_mult_vec4_u32(arg_3.a, vec4<u32>(1u, u_input.b, global0.c, 84908u)))), _wgslsmith_sub_vec4_u32(vec4<u32>(countOneBits(u_input.b), 13008u, global1[_wgslsmith_index_u32(arg_1.b.x, 23u)], arg_1.b.x) | _wgslsmith_mult_vec4_u32(arg_1.a, arg_3.a), ~arg_3.a));
    global2 = array<bool, 5>();
    return StorageBuffer(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(select(select(vec4<i32>(u_input.d.x, global0.a, u_input.a, arg_2), vec4<i32>(arg_2, 1i, -2147483647i, -65956i), arg_0), ~vec4<i32>(global0.a, u_input.a, 0i, 2147483647i), !arg_0), (vec4<i32>(global0.a, -2147483647i, u_input.d.x, -41527i) ^ vec4<i32>(u_input.a, -25237i, 44455i, 59498i)) >> (arg_1.a % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_2, arg_2, arg_2, u_input.d.x) ^ vec4<i32>(global0.a, global0.a, arg_2, 21293i), countOneBits(vec4<i32>(0i, -2147483647i, 1i, u_input.a)))), vec4<i32>(~15771i, _wgslsmith_mod_i32(1i, arg_2), _wgslsmith_dot_vec2_i32(u_input.d.xz, u_input.d.xy), -u_input.a) & vec4<i32>(1i | global0.a, -2147483647i, arg_2, ~(-12113i))), abs(37184i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 5>();
    global4 = array<vec3<u32>, 13>();
    var var_0 = _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.c, u_input.c.x), _wgslsmith_div_vec2_u32(vec2<u32>(3612u, global1[_wgslsmith_index_u32(u_input.b, 23u)]), vec2<u32>(2599u, 29633u))) | ~global0.c) << (abs(min(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.c, 23u)], 23u)], 1u), ~global1[_wgslsmith_index_u32(u_input.b, 23u)]) ^ firstLeadingBit(184u)) % 32u);
    var_0 = _wgslsmith_dot_vec2_u32(u_input.c.zz, firstTrailingBit(countOneBits(abs(_wgslsmith_sub_vec2_u32(u_input.c.zz, vec2<u32>(23853u, 0u))))));
    global2 = array<bool, 5>();
    let x = u_input.a;
    s_output = func_4(select(vec4<bool>(all(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.e, 5u)])), !(global0.a > global0.a), all(select(vec4<bool>(true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.c, 23u)], 5u)], global2[_wgslsmith_index_u32(global0.c, 5u)], false), vec4<bool>(global2[_wgslsmith_index_u32(44620u, 5u)], true, true, global2[_wgslsmith_index_u32(0u, 5u)]), false)), any(select(vec2<bool>(false, false), vec2<bool>(global2[_wgslsmith_index_u32(global0.c, 5u)], false), false))), !vec4<bool>(any(vec3<bool>(global2[_wgslsmith_index_u32(0u, 5u)], global2[_wgslsmith_index_u32(global0.c, 5u)], true)), true, select(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(35014u, 23u)], 5u)], false, global2[_wgslsmith_index_u32(83885u, 5u)]), func_1()), vec4<bool>(global2[_wgslsmith_index_u32(u_input.e, 5u)], false, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9516u, 23u)], 23u)], global1[_wgslsmith_index_u32(1u, 23u)] ^ global1[_wgslsmith_index_u32(global0.c, 23u)]), 5u)], global2[_wgslsmith_index_u32(1u, 5u)])), func_2(), u_input.a, Struct_2(~abs(~vec4<u32>(106629u, global1[_wgslsmith_index_u32(u_input.c.x, 23u)], u_input.e, 4294967295u)), ~u_input.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2426f, global0.b) - vec2<f32>(-1062f, 1000f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, global0.b) * vec2<f32>(-563f, 172f)))))));
}

