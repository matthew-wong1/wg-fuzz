struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8>;

var<private> global1: f32;

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), 1i, vec2<u32>(14729u, 57792u), vec3<i32>(15915i, 33162i, i32(-2147483648))), Struct_1(vec4<u32>(4692u, 24209u, 1u, 4294967295u), 1i, vec2<u32>(38939u, 4294967295u), vec3<i32>(-11139i, -21066i, 0i)), Struct_1(vec4<u32>(0u, 0u, 1u, 45038u), i32(-2147483648), vec2<u32>(1u, 50756u), vec3<i32>(-1i, i32(-2147483648), -50019i)), Struct_1(vec4<u32>(9780u, 2144u, 0u, 4294967295u), -13051i, vec2<u32>(38392u, 4294967295u), vec3<i32>(19261i, -53253i, 16899i)), Struct_1(vec4<u32>(1u, 3544u, 39185u, 5607u), -6035i, vec2<u32>(1u, 4294967295u), vec3<i32>(-1i, -27219i, i32(-2147483648))), Struct_1(vec4<u32>(36467u, 779u, 1u, 1u), 2147483647i, vec2<u32>(1u, 1u), vec3<i32>(0i, 0i, 38961i)), Struct_1(vec4<u32>(50739u, 54223u, 4294967295u, 105500u), 38356i, vec2<u32>(0u, 1u), vec3<i32>(-1i, -1i, -22368i)), Struct_1(vec4<u32>(96671u, 17275u, 3249u, 32133u), 9175i, vec2<u32>(13872u, 65881u), vec3<i32>(1i, 2147483647i, 43883i)), Struct_1(vec4<u32>(18552u, 0u, 4294967295u, 4294967295u), 2147483647i, vec2<u32>(0u, 0u), vec3<i32>(i32(-2147483648), 29915i, 0i)), Struct_1(vec4<u32>(46133u, 13946u, 4294967295u, 0u), 2147483647i, vec2<u32>(20073u, 0u), vec3<i32>(1i, 50260i, 40652i)), Struct_1(vec4<u32>(4294967295u, 41530u, 0u, 4294967295u), 20371i, vec2<u32>(1250u, 28273u), vec3<i32>(17643i, 1i, -85614i)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), -27978i, vec2<u32>(1u, 7891u), vec3<i32>(0i, -1i, -8560i)), Struct_1(vec4<u32>(36516u, 58219u, 1u, 3868u), 2147483647i, vec2<u32>(0u, 19337u), vec3<i32>(-1i, 1i, 1i)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 119465u, 15266u), 0i, vec2<u32>(12292u, 0u), vec3<i32>(0i, 0i, 1i)), Struct_1(vec4<u32>(4294967295u, 36181u, 4294967295u, 83476u), 39054i, vec2<u32>(0u, 44794u), vec3<i32>(2147483647i, 1i, 1i)), Struct_1(vec4<u32>(5188u, 46966u, 38063u, 93156u), 45177i, vec2<u32>(5668u, 0u), vec3<i32>(22037i, 2147483647i, i32(-2147483648))), Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 24768u), 2147483647i, vec2<u32>(4294967295u, 26476u), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648))), Struct_1(vec4<u32>(13836u, 4294967295u, 4294967295u, 1u), 0i, vec2<u32>(1u, 0u), vec3<i32>(1i, -34286i, -1i)), Struct_1(vec4<u32>(38802u, 66048u, 0u, 22414u), -12027i, vec2<u32>(87236u, 21695u), vec3<i32>(1i, -7354i, 57878i)), Struct_1(vec4<u32>(22852u, 0u, 25339u, 0u), i32(-2147483648), vec2<u32>(4294967295u, 62336u), vec3<i32>(1i, -1i, -27523i)), Struct_1(vec4<u32>(30917u, 44963u, 0u, 38114u), 4693i, vec2<u32>(29555u, 4294967295u), vec3<i32>(1i, -41077i, -11514i)), Struct_1(vec4<u32>(79835u, 1u, 1u, 0u), -2408i, vec2<u32>(1u, 47807u), vec3<i32>(18666i, -60279i, -7554i)), Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 60517u), 0i, vec2<u32>(62708u, 76002u), vec3<i32>(10670i, 2147483647i, -1i)), Struct_1(vec4<u32>(4294967295u, 0u, 42622u, 4294967295u), 21351i, vec2<u32>(4294967295u, 29640u), vec3<i32>(-35086i, 2864i, 26205i)), Struct_1(vec4<u32>(14328u, 0u, 0u, 18852u), 2147483647i, vec2<u32>(22040u, 0u), vec3<i32>(11344i, -1i, -1i)), Struct_1(vec4<u32>(71931u, 1u, 1u, 1u), 1i, vec2<u32>(26124u, 0u), vec3<i32>(i32(-2147483648), -17533i, 29880i)), Struct_1(vec4<u32>(79712u, 49313u, 0u, 24201u), -1i, vec2<u32>(13798u, 14039u), vec3<i32>(-10082i, i32(-2147483648), -1i)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: vec4<i32>) -> vec2<i32> {
    let var_0 = vec2<bool>((all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)) | select(true, true, false)) | true, any(select(vec2<bool>(true, true), vec2<bool>(4294967295u >= arg_0.x, any(vec2<bool>(false, true))), vec2<bool>(true, true))));
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_1 = ~arg_2;
    let var_2 = Struct_1(vec4<u32>(arg_0.x, reverseBits(select(0u, abs(arg_0.x), !var_0.x)), max(4294967295u, 5731u), _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(47568u, 1u, u_input.c.x), u_input.c), arg_0.zxz)), -1i, abs(firstTrailingBit(u_input.d)), reverseBits(_wgslsmith_mod_vec3_i32(arg_2.zzw, arg_2.xyw) & vec3<i32>(arg_1, var_1.x, arg_1)) << (~_wgslsmith_div_vec3_u32(u_input.c & u_input.c, ~arg_0.xyy) % vec3<u32>(32u)));
    var var_3 = max(vec4<i32>(_wgslsmith_clamp_i32(~(-arg_2.x), i32(-1i) * -2147483647i, 1i), countOneBits(~(~(-1i))), -((i32(-1i) * -1i) & select(18659i, 1i, false)), _wgslsmith_mod_i32(-u_input.b, u_input.b) ^ 24927i), _wgslsmith_mod_vec4_i32(min(arg_2 >> (_wgslsmith_clamp_vec4_u32(var_2.a, arg_0, arg_0) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(u_input.b, 2147483647i, arg_2.x, arg_1)) >> (vec4<u32>(4294967295u, arg_0.x, 144132u, arg_0.x) % vec4<u32>(32u))), (~arg_2 << (vec4<u32>(var_2.a.x, u_input.d.x, var_2.a.x, 1u) % vec4<u32>(32u))) >> (~(~arg_0) % vec4<u32>(32u))));
    return arg_2.xz;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1122f, global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 8u)], -308f, _wgslsmith_f_op_f32(-336f - global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, 4294967295u), vec4<u32>(u_input.c.x, 22307u, u_input.d.x, u_input.c.x)), vec4<u32>(74628u, u_input.c.x, u_input.d.x, 0u) & vec4<u32>(4294967295u, u_input.c.x, u_input.d.x, 74588u)), 8u)])), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 1238f, 1911f, -1460f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(u_input.d.x, 8u)], -1579f, global0[_wgslsmith_index_u32(4294967295u, 8u)]), vec4<f32>(global0[_wgslsmith_index_u32(35589u, 8u)], 1000f, global0[_wgslsmith_index_u32(u_input.d.x, 8u)], 103f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 8u)], global0[_wgslsmith_index_u32(u_input.c.x, 8u)], global0[_wgslsmith_index_u32(38313u, 8u)], 173f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], global0[_wgslsmith_index_u32(0u, 8u)], -917f, 441f), vec4<f32>(-1228f, global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(20934u, 8u)], -401f))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1311f, global0[_wgslsmith_index_u32(1u, 8u)], -945f, global0[_wgslsmith_index_u32(u_input.d.x, 8u)]), vec4<f32>(-1511f, global0[_wgslsmith_index_u32(u_input.d.x, 8u)], 1240f, global0[_wgslsmith_index_u32(u_input.c.x, 8u)])))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-959f, global0[_wgslsmith_index_u32(u_input.c.x, 8u)], global0[_wgslsmith_index_u32(45140u, 8u)], global0[_wgslsmith_index_u32(u_input.d.x, 8u)])) - vec4<f32>(-179f, global0[_wgslsmith_index_u32(31686u, 8u)], 306f, global0[_wgslsmith_index_u32(37890u, 8u)])))))));
    global2 = array<Struct_1, 27>();
    var var_1 = vec4<bool>(true, all(vec2<bool>(true, (0i << (u_input.c.x % 32u)) == 1i)), false, (u_input.c.x >> (abs(u_input.c.x ^ 36532u) % 32u)) > ~59810u);
    var var_2 = !(!(!(!select(var_1.xwz, vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(true, var_1.x, var_1.x)))));
    let var_3 = arg_1;
    return ((_wgslsmith_dot_vec2_i32(arg_0, max(vec2<i32>(0i, -25364i), arg_0)) & 16029i) < 31277i) & true;
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_1 {
    let var_0 = func_4(countOneBits(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, 2147483647i, -1i), vec3<i32>(-2147483647i, -5376i, arg_1)), _wgslsmith_add_i32(-2147483647i, arg_1)) ^ (func_3(vec4<u32>(22666u, u_input.d.x, 1u, arg_0), u_input.a, vec4<i32>(2147483647i, -29328i, 2933i, arg_1)) | -vec2<i32>(-1i, u_input.a))), Struct_2(-54599i), Struct_2(arg_1), Struct_2(_wgslsmith_add_i32(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, 2147483647i, u_input.b, u_input.b), vec4<i32>(arg_1, 1i, -44944i, arg_1))), func_3(vec4<u32>(arg_0, 7217u, u_input.c.x, 1164u) >> (vec4<u32>(arg_0, u_input.c.x, u_input.d.x, 19966u) % vec4<u32>(32u)), arg_1, select(vec4<i32>(arg_1, u_input.b, -2147483647i, 1808i), vec4<i32>(-1509i, 1i, 1i, arg_1), vec4<bool>(true, true, false, false))).x)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global1 = global0[_wgslsmith_index_u32(~((u_input.d.x ^ 45686u) >> (u_input.d.x % 32u)), 8u)];
    let var_1 = Struct_1(~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(0u, 0u, 38751u, 20085u), vec4<u32>(0u, arg_0, arg_0, arg_0) >> (vec4<u32>(0u, u_input.d.x, u_input.d.x, 1u) % vec4<u32>(32u))), select(max(vec4<u32>(u_input.d.x, 27697u, arg_0, arg_0), vec4<u32>(u_input.c.x, arg_0, 1u, 1u)), max(vec4<u32>(101991u, 48859u, arg_0, 1u), vec4<u32>(arg_0, u_input.d.x, arg_0, 4294967295u)), vec4<bool>(var_0, false, true, false))), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(arg_1, u_input.b), -2147483647i, -1i), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(5865i, arg_1), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, arg_1), vec2<i32>(-2147483647i, arg_1))), arg_1 | -19779i, -(~(-2147483647i)))), vec2<u32>(4294967295u, ~max(_wgslsmith_clamp_u32(0u, u_input.d.x, 4294967295u), 4294967295u >> (1u % 32u))), abs(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1, arg_1, u_input.a), vec3<i32>(u_input.a, u_input.b, -1i), ~vec3<i32>(arg_1, 1i, u_input.a)), _wgslsmith_div_vec3_i32(vec3<i32>(arg_1, arg_1, 26734i) << (vec3<u32>(u_input.d.x, arg_0, 36923u) % vec3<u32>(32u)), vec3<i32>(u_input.a, u_input.a, u_input.b)), -vec3<i32>(2147483647i, u_input.b, arg_1))));
    let var_2 = select(vec4<u32>(u_input.d.x, min(~arg_0, 1u), _wgslsmith_mult_u32(arg_0, ~arg_0 >> (var_1.c.x % 32u)), 1366u), ~var_1.a ^ var_1.a, var_0);
    return Struct_1(vec4<u32>(1u, 17209u, 4294967295u, 1u), _wgslsmith_clamp_i32(1i, countOneBits(~(-30616i)), -1i ^ ~u_input.b) ^ _wgslsmith_add_i32(func_3(var_1.a, u_input.b, vec4<i32>(arg_1, -1i, u_input.b, u_input.a)).x >> (var_1.c.x % 32u), 0i), u_input.c.yz, var_1.d);
}

fn func_1(arg_0: i32) -> vec3<u32> {
    var var_0 = func_2(~(_wgslsmith_clamp_u32(u_input.d.x ^ u_input.d.x, u_input.d.x, ~30866u) >> (9220u % 32u)), firstTrailingBit(_wgslsmith_dot_vec2_i32(~select(vec2<i32>(arg_0, 1i), vec2<i32>(u_input.b, arg_0), vec2<bool>(true, true)), ~(-vec2<i32>(-2147483647i, -1i)))));
    let var_1 = Struct_2(firstTrailingBit(~_wgslsmith_add_i32(1i, reverseBits(u_input.b))));
    global0 = array<f32, 8>();
    var var_2 = any(vec2<bool>(!func_4(vec2<i32>(-8385i, var_0.b), var_1, Struct_2(-1i), var_1), select(false, true, !select(false, true, true))));
    let var_3 = func_2(_wgslsmith_div_u32(~7934u, 1u), func_3(var_0.a, 2147483647i, vec4<i32>(_wgslsmith_mod_i32(0i, 1i), -2147483647i, _wgslsmith_mult_i32(u_input.b, u_input.b), func_3(var_0.a, -47519i, vec4<i32>(2147483647i, arg_0, var_1.a, arg_0)).x) | ~(~vec4<i32>(-49870i, 0i, 3724i, 1i))).x);
    return var_0.a.xzz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(22776u & ~countOneBits(u_input.d.x), _wgslsmith_mod_u32(~1u, firstTrailingBit(u_input.d.x))) ^ ~firstLeadingBit(_wgslsmith_mod_u32(u_input.d.x, u_input.d.x)), 27u)];
    global0 = array<f32, 8>();
    global1 = global0[_wgslsmith_index_u32(firstTrailingBit(22486u), 8u)];
    let var_1 = !(-u_input.b > -u_input.a);
    var var_2 = _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(var_0.a.x, u_input.c.x, 20164u)) | select(_wgslsmith_mod_vec3_u32(var_0.a.yxy, vec3<u32>(17435u, u_input.c.x, 26605u)), min(var_0.a.yxw, u_input.c), vec3<bool>(false, var_1, var_1)), var_0.a.zyx, u_input.c) >> (vec3<u32>(max(~(~57503u), ~0u), 114333u, 17686u) % vec3<u32>(32u));
    let var_3 = global2[_wgslsmith_index_u32(1u, 27u)];
    var_2 = ~max(reverseBits(vec3<u32>(var_3.a.x, 16622u, var_3.c.x)) << (firstLeadingBit(vec3<u32>(var_2.x, var_0.c.x, 0u)) % vec3<u32>(32u)), var_0.a.xzx & func_1(-1i >> (0u % 32u)));
    global2 = array<Struct_1, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_vec3_u32(vec3<u32>(~26060u, 13734u ^ var_3.a.x, 0u), vec3<u32>(~var_0.c.x, firstTrailingBit(u_input.d.x), abs(var_3.a.x)))), min(func_2(countOneBits(var_0.c.x), func_3(vec4<u32>(4294967295u, 9550u, var_2.x, 1u) >> (vec4<u32>(var_0.a.x, u_input.c.x, 54470u, 1u) % vec4<u32>(32u)), select(-1i, var_3.d.x, var_1), vec4<i32>(u_input.a, u_input.b, var_3.b, u_input.b)).x).c, (firstTrailingBit(vec2<u32>(4294967295u, 1u)) & firstLeadingBit(u_input.c.zx)) ^ ((vec2<u32>(4294967295u, 0u) << (var_2.zy % vec2<u32>(32u))) << (~var_2.zy % vec2<u32>(32u)))), -vec3<i32>(~_wgslsmith_clamp_i32(1i, -2147483647i, u_input.b), abs(max(u_input.a, u_input.a)), 1i), abs(-22001i) ^ ~var_3.d.x, u_input.c.x);
}

