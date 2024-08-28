struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 22>;

var<private> global1: array<u32, 18>;

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec2<u32>(13654u, 12678u), true), Struct_1(vec2<u32>(54877u, 6999u), true), Struct_1(vec2<u32>(4294967295u, 0u), true), Struct_1(vec2<u32>(0u, 4294967295u), true), Struct_1(vec2<u32>(664u, 19554u), false), Struct_1(vec2<u32>(43404u, 1u), false), Struct_1(vec2<u32>(1u, 12458u), false), Struct_1(vec2<u32>(1u, 29806u), false), Struct_1(vec2<u32>(49764u, 52274u), false), Struct_1(vec2<u32>(0u, 4294967295u), false), Struct_1(vec2<u32>(0u, 1u), false), Struct_1(vec2<u32>(66952u, 9623u), true), Struct_1(vec2<u32>(4294967295u, 1u), true), Struct_1(vec2<u32>(0u, 37363u), false));

var<private> global3: array<vec3<f32>, 12>;

var<private> global4: Struct_1 = Struct_1(vec2<u32>(66855u, 0u), false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global1 = array<u32, 18>();
    global4 = Struct_1(global4.a, all(select(vec2<bool>(global4.b, global4.b), !vec2<bool>(global4.b, false), true)));
    let var_0 = Struct_1(_wgslsmith_add_vec2_u32(global4.a, vec2<u32>(u_input.a, global4.a.x >> (global1[_wgslsmith_index_u32(u_input.b, 18u)] % 32u)) | min(_wgslsmith_add_vec2_u32(global4.a, global4.a), vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(global4.a.x, 18u)]))), global4.b);
    var var_1 = ~(-(~(-vec3<i32>(0i, -35220i, 2147483647i)) << (vec3<u32>(abs(1u), ~global1[_wgslsmith_index_u32(4294967295u, 18u)], 24279u) % vec3<u32>(32u))));
    var var_2 = global2[_wgslsmith_index_u32(firstTrailingBit(reverseBits(abs(_wgslsmith_mod_u32(1u, 24133u)) >> (u_input.b % 32u))), 14u)];
    return ~_wgslsmith_mult_u32(7425u, 4294967295u ^ firstLeadingBit(global1[_wgslsmith_index_u32(select(var_2.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21740u, 18u)], 18u)], false), 18u)]));
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: u32, arg_3: vec3<u32>) -> bool {
    global2 = array<Struct_1, 14>();
    var var_0 = global2[_wgslsmith_index_u32(countOneBits(1u), 14u)];
    var var_1 = 45257u;
    let var_2 = vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(-44925i, 1i, 2147483647i, 1i), vec4<i32>(-2728i, 56244i, 2147483647i, 1i)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(1u, 10067u, var_0.a.x, 68354u), vec4<u32>(102621u, arg_3.x, 4294967295u, var_0.a.x)) % vec4<u32>(32u))), -(~max(1i, -4659i)), max(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-2147483647i, 32303i, 6918i), -vec3<i32>(2147483647i, -25891i, -2147483647i), any(vec2<bool>(false, false))), max(vec3<i32>(1i, 1i, 1i), -vec3<i32>(-2147483647i, 6339i, -18138i))), -_wgslsmith_mult_i32(abs(-4650i), firstLeadingBit(16468i))), -1i);
    var var_3 = -565f;
    return true;
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = func_4(vec4<bool>(true, false, global4.b, global4.b), 0u, func_3(), _wgslsmith_mod_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(firstTrailingBit(global4.a.x), 18u)], max(abs(global4.a.x), ~25286u), 0u), firstTrailingBit(vec3<u32>(35389u, 4294967295u, 4294967295u) << (vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 18u)], 4055u, u_input.b) % vec3<u32>(32u))) >> (vec3<u32>(global4.a.x << (1u % 32u), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(76244u, 18u)], 18u)], 48666u) % vec3<u32>(32u))));
    let var_1 = Struct_1(vec2<u32>(_wgslsmith_div_u32(1u, global1[_wgslsmith_index_u32(1u, 18u)]), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(118639u & global1[_wgslsmith_index_u32(~global4.a.x, 18u)], ~_wgslsmith_add_u32(global4.a.x, 28714u)), 18u)]), !all(!vec4<bool>(true, global4.b, false, true)) & (var_0 | var_0));
    var var_2 = global2[_wgslsmith_index_u32(firstLeadingBit(~20924u) << (((~(~4294967295u) << (_wgslsmith_mult_u32(var_1.a.x & 4294967295u, ~54839u) % 32u)) & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global4.a.x, global1[_wgslsmith_index_u32(1u, 18u)], 83015u) & _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 20253u, var_1.a.x), vec4<u32>(global1[_wgslsmith_index_u32(global4.a.x, 18u)], 4675u, 0u, global4.a.x)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, 6750u, 4294967295u), vec4<u32>(u_input.a, 20249u, global1[_wgslsmith_index_u32(var_1.a.x, 18u)], var_1.a.x)))) % 32u), 14u)];
    var_2 = Struct_1(~select(abs(firstLeadingBit(vec2<u32>(1u, u_input.b))), var_1.a, false), ~(~(~u_input.a)) < 23731u);
    var var_3 = Struct_1(_wgslsmith_sub_vec2_u32(max(vec2<u32>(0u, 4294967295u), global4.a), max(_wgslsmith_mod_vec2_u32(global4.a, global4.a), var_1.a)) << ((vec2<u32>(var_2.a.x, 0u) << (global4.a % vec2<u32>(32u))) % vec2<u32>(32u)), var_1.b);
    return global2[_wgslsmith_index_u32(79546u, 14u)];
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: bool, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = func_2(1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -444f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-538f + 319f))), 211f)));
    global2 = array<Struct_1, 14>();
    var var_1 = select(vec3<bool>(!all(!vec4<bool>(global4.b, var_0.b, true, arg_2)), !(_wgslsmith_f_op_f32(1000f * 1041f) < _wgslsmith_f_op_f32(floor(-557f))), all(!(!vec2<bool>(arg_2, true)))), !(!select(select(vec3<bool>(var_0.b, var_0.b, arg_2), vec3<bool>(false, arg_2, arg_1), vec3<bool>(arg_2, false, true)), vec3<bool>(false, true, false), !vec3<bool>(true, true, arg_1))), !(!(!(!vec3<bool>(false, var_0.b, true)))));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global4.a.x, _wgslsmith_clamp_u32(abs(4294967295u), ~global4.a.x, ~(~3482u) << (reverseBits(global4.a.x) % 32u))), 14u)];
    let var_3 = global4.b;
    return Struct_1(~firstTrailingBit(global4.a << (abs(var_0.a) % vec2<u32>(32u))), var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 26202u;
    var var_1 = 1000f;
    global3 = array<vec3<f32>, 12>();
    global3 = array<vec3<f32>, 12>();
    let var_2 = !vec2<bool>(!all(vec2<bool>(false, global4.b)), any(select(!vec4<bool>(true, global4.b, global4.b, global4.b), !vec4<bool>(global4.b, false, global4.b, true), all(vec4<bool>(global4.b, true, global4.b, global4.b)))));
    let var_3 = func_1(9096i, true, !any(vec2<bool>(true, true)), ~(select(vec4<i32>(6080i, -2147483647i, -40671i, -14368i), countOneBits(vec4<i32>(-12675i, 65781i, 2147483647i, 2147483647i)), select(vec4<bool>(global4.b, var_2.x, true, true), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(global4.b, true, var_2.x, var_2.x))) << (~(~vec4<u32>(var_0, global4.a.x, 55931u, 13879u)) % vec4<u32>(32u))));
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(~(~var_3.a.x), 12u)] - vec3<f32>(_wgslsmith_f_op_f32(612f - 699f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + -422f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -740f) + _wgslsmith_f_op_f32(788f - 127f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(18958u, 12u)] - global3[_wgslsmith_index_u32(global4.a.x, 12u)]), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global4.a, global4.a), 12u)]) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 1000f, 581f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(143f, -681f, 1000f))), !vec3<bool>(false, true, var_2.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1775f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(125f)), _wgslsmith_f_op_f32(f32(-1f) * -479f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-2792f)), _wgslsmith_f_op_f32(-1208f * -1000f)))), -2147483647i, 1328f);
}

