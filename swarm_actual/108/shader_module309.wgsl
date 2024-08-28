struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(-851f, -704f, 782f, 1209f, -855f, 350f, -846f, 1390f);

var<private> global1: vec3<bool> = vec3<bool>(true, false, false);

var<private> global2: vec2<bool>;

var<private> global3: array<Struct_1, 23>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 8u)], -130f, global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)]) * vec4<f32>(535f, global0[_wgslsmith_index_u32(52794u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(102527u, 8u)]))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(604f, global0[_wgslsmith_index_u32(1u, 8u)], -342f, -866f))), vec4<f32>(132f, global0[_wgslsmith_index_u32(27659u, 8u)], -802f, 2073f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(26640u, 8u)], 262f, 835f, 598f))), false))));
    global0 = array<f32, 8>();
    let var_1 = reverseBits(1i);
    global3 = array<Struct_1, 23>();
    global1 = vec3<bool>(global2.x, true, all(select(!(!vec3<bool>(global2.x, global1.x, global2.x)), vec3<bool>(select(false, false, global1.x), global1.x, var_1 > arg_0), global2.x)));
    return 62340u;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> i32 {
    global2 = global1.xx;
    global3 = array<Struct_1, 23>();
    let var_0 = Struct_1(!(global2.x || true), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(abs(firstLeadingBit(vec2<u32>(76183u, arg_0.c.x))), ~vec2<u32>(0u, 7566u)), arg_0.c), _wgslsmith_sub_vec2_u32(~(arg_0.b >> (arg_0.c % vec2<u32>(32u))), vec2<u32>(arg_0.b.x, 0u) ^ vec2<u32>(arg_0.b.x | 5472u, func_3(arg_0.d.x))), ~_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(0i, -1426i), ~0i, abs(-1i), u_input.a.x), u_input.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(342f, 1532f, true)))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(27901u, 8u)]))))));
    let var_1 = true && all(!select(!vec3<bool>(false, true, global2.x), select(vec3<bool>(true, true, global1.x), vec3<bool>(arg_0.a, global2.x, arg_0.a), vec3<bool>(true, true, arg_0.a)), vec3<bool>(true, true, true)));
    var var_2 = vec4<bool>(!(global1.x & all(vec3<bool>(arg_0.a, true, false))) & (true && any(vec3<bool>(true, true, true))), false, true, var_0.a);
    return var_0.d.x;
}

fn func_4(arg_0: i32) -> bool {
    var var_0 = global3[_wgslsmith_index_u32(73990u << ((min(116671u, firstTrailingBit(_wgslsmith_div_u32(4294967295u, 7653u))) & ~48883u) % 32u), 23u)];
    var var_1 = vec2<u32>(var_0.b.x & _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.b.x, 1u), var_0.b), var_0.b.x);
    var_1 = var_0.c;
    global2 = select(global1.xz, !global1.zx, all(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, global2.x), vec3<bool>(true, false, var_0.a), true), !vec3<bool>(var_0.a, var_0.a, global1.x))));
    var var_2 = Struct_1(false, reverseBits(select(vec2<u32>(abs(var_0.c.x), 1u), select(~var_0.c, vec2<u32>(11259u, 1u), vec2<bool>(var_0.a, global1.x)), ~var_0.c.x <= var_1.x)), _wgslsmith_mod_vec2_u32((select(vec2<u32>(var_1.x, 1u), var_0.b, global2.x) | ~vec2<u32>(17098u, 10216u)) >> (countOneBits(~var_0.c) % vec2<u32>(32u)), ~max(var_0.b >> (vec2<u32>(70349u, var_1.x) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(var_0.b, var_0.b, var_0.b))), _wgslsmith_div_vec4_i32(u_input.a, firstLeadingBit(-vec4<i32>(arg_0, arg_0, u_input.c, u_input.c))), 738f);
    return !(1326f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1184f - var_0.e)));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32, arg_3: vec3<f32>) -> u32 {
    global2 = vec2<bool>(!func_4(func_2(Struct_1(false, vec2<u32>(arg_0.x, 45691u), arg_0.wz, vec4<i32>(arg_1.d.x, arg_1.d.x, u_input.b.x, -10582i), 145f), 41553u)), global2.x & true);
    var var_0 = arg_3;
    var var_1 = all(!select(select(vec2<bool>(false, global2.x), vec2<bool>(false, false), vec2<bool>(true, global2.x)), !vec2<bool>(global1.x, arg_1.a), !global1.xy)) & (all(select(vec4<bool>(true, global2.x, global1.x, global2.x), select(vec4<bool>(false, global1.x, arg_1.a, arg_1.a), vec4<bool>(global2.x, false, false, arg_1.a), vec4<bool>(arg_1.a, true, arg_1.a, true)), select(vec4<bool>(arg_1.a, true, global1.x, global1.x), vec4<bool>(true, false, global2.x, global2.x), global1.x))) & ((any(vec2<bool>(false, arg_1.a)) == any(vec3<bool>(arg_1.a, true, true))) != all(vec2<bool>(true, global2.x))));
    global1 = select(!vec3<bool>(!arg_1.a, -1584f < _wgslsmith_f_op_f32(-arg_3.x), global2.x), vec3<bool>((true & any(global1.xy)) & all(vec2<bool>(global1.x, global1.x)), global1.x, true), vec3<bool>(true && any(!vec3<bool>(global2.x, true, arg_1.a)), select(any(select(vec4<bool>(true, false, arg_1.a, false), vec4<bool>(arg_1.a, arg_1.a, false, true), arg_1.a)), true, true), select(arg_1.a, arg_1.a, true)));
    global0 = array<f32, 8>();
    return ~arg_0.x;
}

fn func_5(arg_0: f32, arg_1: vec2<bool>, arg_2: vec3<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_2.x, 8u)]), 791f, select(true, global1.x, any(vec4<bool>(global1.x, true, false, arg_1.x)))))));
    let var_1 = arg_1.x;
    let var_2 = vec4<bool>(false, any(arg_1), global1.x, false);
    var var_3 = ~_wgslsmith_dot_vec2_u32(max(arg_2.zz >> (abs(arg_2.yx) % vec2<u32>(32u)), arg_2.yz), vec2<u32>(arg_2.x, 4294967295u));
    var var_4 = var_2.x;
    return _wgslsmith_div_i32(_wgslsmith_mult_i32(55737i, -46905i | _wgslsmith_clamp_i32(u_input.a.x, u_input.c << (arg_2.x % 32u), _wgslsmith_clamp_i32(u_input.b.x, 9694i, u_input.c))), (~(-1i) << (1u % 32u)) << (arg_2.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(global0[_wgslsmith_index_u32(0u, 8u)], select(select(!global1.zz, global1.zy, global1.xx), vec2<bool>(true, any(vec4<bool>(true, global1.x, global2.x, global2.x))), select(vec2<bool>(true, global2.x), global1.xz, !global1.zz)), vec3<u32>(1u, _wgslsmith_div_u32(func_1(vec4<u32>(0u, 1u, 1u, 0u), Struct_1(global1.x, vec2<u32>(91218u, 58411u), vec2<u32>(124212u, 0u), vec4<i32>(0i, -1i, u_input.a.x, u_input.c), global0[_wgslsmith_index_u32(2493u, 8u)]), u_input.b.x, vec3<f32>(global0[_wgslsmith_index_u32(38993u, 8u)], global0[_wgslsmith_index_u32(52095u, 8u)], global0[_wgslsmith_index_u32(75026u, 8u)])), 18711u), 1u)) ^ reverseBits(u_input.a.x);
    var var_1 = firstLeadingBit(u_input.b.x);
    global1 = !(!select(select(vec3<bool>(global1.x, false, true), vec3<bool>(true, global1.x, false), true), select(!vec3<bool>(global1.x, global2.x, global1.x), vec3<bool>(global2.x, global1.x, global2.x), vec3<bool>(false, global2.x, global2.x)), select(select(vec3<bool>(global2.x, false, true), vec3<bool>(global1.x, global2.x, global2.x), vec3<bool>(false, false, true)), select(vec3<bool>(false, global1.x, false), vec3<bool>(global2.x, global2.x, global1.x), vec3<bool>(global2.x, false, global1.x)), global0[_wgslsmith_index_u32(85619u, 8u)] == 854f)));
    var_0 = 2147483647i;
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~(4294967295u >> (0u % 32u)), firstTrailingBit(0u) >> ((0u >> (1u % 32u)) % 32u), reverseBits(_wgslsmith_div_u32(37265u, 71566u)), _wgslsmith_dot_vec2_u32(vec2<u32>(49135u, 4294967295u), vec2<u32>(1u, 1u))), ~(firstLeadingBit(vec4<u32>(0u, 23196u, 0u, 2743u)) << (firstTrailingBit(vec4<u32>(33823u, 0u, 4294967295u, 14450u)) % vec4<u32>(32u)))), ~vec4<u32>(1u, 1u, 1u, 1u) ^ abs(vec4<u32>(_wgslsmith_div_u32(35255u, 63719u), 4294967295u, _wgslsmith_mult_u32(7092u, 44825u), func_3(u_input.a.x)))), 8u)];
    let var_3 = global3[_wgslsmith_index_u32(reverseBits(select(13813u, 27687u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(45494u, 8u)])))) >= _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(~110794u, 8u)])))), 23u)];
    var var_4 = vec2<bool>(!(!(!func_4(var_3.d.x))), _wgslsmith_clamp_i32(u_input.b.x, -2147483647i, -37094i) != func_2(Struct_1(global1.x, vec2<u32>(57661u, var_3.b.x), var_3.c, vec4<i32>(-2147483647i, 25831i, u_input.b.x, u_input.a.x) << (vec4<u32>(var_3.c.x, 79125u, 4294967295u, var_3.b.x) % vec4<u32>(32u)), _wgslsmith_div_f32(var_3.e, global0[_wgslsmith_index_u32(var_3.c.x, 8u)])), 28809u));
    var_1 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(293f, _wgslsmith_f_op_f32(trunc(1000f)), -370f))), var_3.b.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-252f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(var_3.b.x, 8u)], 476f, false)), _wgslsmith_f_op_f32(-731f + 1104f))))), vec2<u32>(var_3.c.x, _wgslsmith_sub_u32(var_3.c.x, reverseBits(var_3.c.x))));
}

