struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 24>;

var<private> global2: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec4<bool>(true, false, true, false), false, vec4<u32>(23700u, 50305u, 4294967295u, 1u), vec3<u32>(10832u, 26145u, 4294967295u)), Struct_1(vec4<bool>(false, false, true, true), false, vec4<u32>(4294967295u, 65335u, 72153u, 39509u), vec3<u32>(92854u, 67448u, 41665u)), Struct_1(vec4<bool>(false, true, false, false), true, vec4<u32>(26580u, 61035u, 0u, 15941u), vec3<u32>(4294967295u, 15806u, 12312u)), Struct_1(vec4<bool>(false, true, false, true), false, vec4<u32>(0u, 5147u, 84410u, 20425u), vec3<u32>(4294967295u, 42368u, 4294967295u)), Struct_1(vec4<bool>(false, false, false, true), false, vec4<u32>(1u, 85591u, 74712u, 21090u), vec3<u32>(28074u, 8651u, 19966u)), Struct_1(vec4<bool>(false, false, false, true), false, vec4<u32>(0u, 1u, 1u, 4294967295u), vec3<u32>(1u, 0u, 1u)), Struct_1(vec4<bool>(true, false, false, true), true, vec4<u32>(28503u, 0u, 0u, 1u), vec3<u32>(16760u, 66761u, 39539u)), Struct_1(vec4<bool>(true, true, false, true), true, vec4<u32>(0u, 0u, 53259u, 4294967295u), vec3<u32>(20639u, 0u, 1u)), Struct_1(vec4<bool>(true, true, false, true), true, vec4<u32>(73257u, 4294967295u, 5360u, 0u), vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_1(vec4<bool>(false, true, false, false), true, vec4<u32>(44796u, 30737u, 1u, 19110u), vec3<u32>(38205u, 2718u, 1u)), Struct_1(vec4<bool>(true, true, false, true), true, vec4<u32>(20774u, 0u, 1u, 47919u), vec3<u32>(7663u, 39507u, 21123u)), Struct_1(vec4<bool>(false, false, true, false), false, vec4<u32>(0u, 0u, 4294967295u, 10454u), vec3<u32>(23148u, 0u, 0u)), Struct_1(vec4<bool>(true, true, false, true), true, vec4<u32>(0u, 4294967295u, 15628u, 18475u), vec3<u32>(39711u, 47278u, 21305u)), Struct_1(vec4<bool>(false, true, true, true), true, vec4<u32>(56223u, 3522u, 4294967295u, 63544u), vec3<u32>(8945u, 41354u, 4294967295u)), Struct_1(vec4<bool>(true, true, true, false), true, vec4<u32>(1u, 12556u, 2556u, 1u), vec3<u32>(0u, 4573u, 56578u)), Struct_1(vec4<bool>(true, false, false, true), false, vec4<u32>(290u, 1u, 109317u, 24073u), vec3<u32>(31972u, 96789u, 4294967295u)), Struct_1(vec4<bool>(true, true, true, true), false, vec4<u32>(14827u, 4294967295u, 0u, 4294967295u), vec3<u32>(0u, 1u, 13041u)), Struct_1(vec4<bool>(true, true, false, false), false, vec4<u32>(50637u, 66589u, 5055u, 1019u), vec3<u32>(84991u, 39504u, 37477u)));

var<private> global3: array<i32, 22> = array<i32, 22>(35843i, i32(-2147483648), 2147483647i, -5451i, -1i, 18461i, -21271i, 7502i, 1i, i32(-2147483648), 2147483647i, -1i, 22745i, -1i, 0i, 1i, i32(-2147483648), 20352i, 0i, 58083i, 0i, 0i);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_1(select(global0.a, global0.a, !global0.a.x), false, vec4<u32>(1u, global0.d.x, 575u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global0.c.xx, u_input.e.zx), ~vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], global1[_wgslsmith_index_u32(1u, 24u)])), _wgslsmith_div_u32(global0.d.x ^ global0.d.x, 1u), _wgslsmith_dot_vec2_u32(u_input.e.xz, ~u_input.e.yy))), _wgslsmith_div_vec3_u32(countOneBits(global0.d | vec3<u32>(global0.d.x, global0.c.x, u_input.e.x)), select(vec3<u32>(u_input.e.x, 4294967295u, 30192u), ~vec3<u32>(54174u, 20465u, global0.d.x), any(global0.a.yw))) | ~select(~vec3<u32>(u_input.e.x, u_input.e.x, 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(10076u, u_input.e.x, u_input.e.x), global0.c.yzw), true));
    global3 = array<i32, 22>();
    let var_1 = global2[_wgslsmith_index_u32(max(19318u, 4294967295u) >> ((4294967295u | ~firstLeadingBit(~u_input.e.x)) % 32u), 18u)];
    global0 = global2[_wgslsmith_index_u32(var_0.c.x, 18u)];
    global3 = array<i32, 22>();
    return vec4<bool>(false, (-global3[_wgslsmith_index_u32(~4294967295u, 22u)] ^ -39134i) <= max(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(global3[_wgslsmith_index_u32(var_0.d.x, 22u)], -1i, 36249i)), vec3<i32>(u_input.a, 1i, global3[_wgslsmith_index_u32(31244u, 22u)])), max(-30478i, u_input.c)), true, var_0.b);
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(firstLeadingBit(u_input.e.x), 24u)], 18u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-825f, _wgslsmith_f_op_f32(min(231f, 174f)), _wgslsmith_f_op_f32(2388f - -1193f), _wgslsmith_f_op_f32(501f - -584f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1207f, 135f, 1955f, 655f)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1418f - 453f), 530f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1725f)))));
    var var_2 = Struct_1(arg_2.a, func_3().x, vec4<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(reverseBits(91289u), 0u), max(0u, arg_2.c.x) ^ _wgslsmith_dot_vec4_u32(global0.c, vec4<u32>(global1[_wgslsmith_index_u32(1u, 24u)], 21747u, arg_2.c.x, 60941u))), arg_1, 80069u, var_0.d.x), ~var_0.d);
    let var_3 = ~1i;
    var_2 = Struct_1(var_0.a, arg_2.a.x, arg_3.c, arg_2.d);
    return var_1.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: vec2<u32>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_sub_vec2_i32(-u_input.d, _wgslsmith_mod_vec2_i32(-vec2<i32>(1i, u_input.d.x), ~u_input.d)), global0.c.x, Struct_1(select(func_3(), vec4<bool>(global0.a.x, false, global0.b, true), 64002u >= global1[_wgslsmith_index_u32(1u, 24u)]), true, firstLeadingBit(global0.c), global0.d), global2[_wgslsmith_index_u32(arg_2.x, 18u)])));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<bool>) -> Struct_1 {
    global2 = array<Struct_1, 18>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, global3[_wgslsmith_index_u32(u_input.e.x, 22u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 22u)], global3[_wgslsmith_index_u32(u_input.e.x, 22u)]) | vec4<i32>(u_input.a, u_input.d.x, u_input.b, 0i), vec4<i32>(u_input.a, -2147483647i, global3[_wgslsmith_index_u32(1u, 22u)], u_input.d.x)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(27595u, 1u), select(u_input.e.x, 104447u, arg_1.x)), _wgslsmith_sub_vec2_u32(u_input.e.zy, global0.c.yw))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-703f, -452f)) * _wgslsmith_f_op_f32(f32(-1f) * -1066f)))));
    global1 = array<u32, 24>();
    let var_1 = 4294967295u;
    global2 = array<Struct_1, 18>();
    return global2[_wgslsmith_index_u32(u_input.e.x, 18u)];
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    global3 = array<i32, 22>();
    var var_0 = -12282i;
    return func_1(vec4<bool>(~(-1i) < reverseBits(u_input.b >> (1u % 32u)), select(!arg_2.x, _wgslsmith_f_op_f32(trunc(946f)) > 2293f, true), func_1(select(!vec4<bool>(arg_2.x, arg_1.b, true, arg_2.x), vec4<bool>(arg_1.b, arg_1.b, true, arg_2.x), arg_1.a), select(arg_2.zx, vec2<bool>(false, arg_2.x), !global0.a.zx)).a.x, true), func_3().zx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global0.c.x;
    let var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(21699u, ~1u), 18u)];
    var var_2 = func_5(_wgslsmith_sub_i32(0i, 7272i >> (_wgslsmith_mult_u32(global0.d.x, ~4294967295u) % 32u)), func_1(global0.a, var_1.a.wx), global0.a.xww);
    global1 = array<u32, 24>();
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-833f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -573f) - 121f), _wgslsmith_f_op_f32(-210f * _wgslsmith_f_op_f32(f32(-1f) * -245f))))));
    let var_4 = vec2<bool>(false & all(vec2<bool>(true, true)), var_1.b);
    global0 = Struct_1(select(!func_5(u_input.a, global2[_wgslsmith_index_u32(4294967295u, 18u)], vec3<bool>(global0.a.x, var_4.x, var_1.a.x)).a, !vec4<bool>(global0.a.x || true, !global0.b, func_1(vec4<bool>(false, var_4.x, true, true), var_4).a.x, !global0.b), select(~2147483647i >= _wgslsmith_div_i32(u_input.a, global3[_wgslsmith_index_u32(15144u, 22u)]), true, var_2.b)), func_5(firstTrailingBit(0i), global2[_wgslsmith_index_u32(29463u, 18u)], var_2.a.wzy).b, ~select(vec4<u32>(global0.d.x, var_1.d.x, 1u, global1[_wgslsmith_index_u32(12238u, 24u)]) ^ vec4<u32>(0u, var_1.d.x, 6103u, var_2.d.x), max(var_1.c, vec4<u32>(1u, 73492u, 0u, 8273u)) ^ ~var_2.c, select(func_1(vec4<bool>(var_2.b, false, true, true), vec2<bool>(global0.b, true)).a, vec4<bool>(var_2.b, false, true, false), func_5(-1i, global2[_wgslsmith_index_u32(var_2.c.x, 18u)], global0.a.xwy).a.x)), vec3<u32>(4294967295u, var_0, 16109u));
    var_2 = func_1(!vec4<bool>(~var_0 != 2367u, true, global0.b, select(all(vec4<bool>(var_1.b, var_2.a.x, global0.a.x, false)), true, true)), var_1.a.ww);
    var var_5 = ~countOneBits(1u ^ _wgslsmith_div_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(30325u, 1u), 24u)], global1[_wgslsmith_index_u32(~1u, 24u)]));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(-28295i, -3337i), global3[_wgslsmith_index_u32(28964u, 22u)]), 55697i) << (u_input.e.x % 32u), u_input.d, var_3.x);
}

