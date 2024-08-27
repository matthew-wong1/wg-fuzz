struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: Struct_2,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, Struct_1(false, true, vec3<i32>(0i, -1i, -441i), vec4<u32>(4294967295u, 0u, 50940u, 17958u)), Struct_1(false, false, vec3<i32>(2147483647i, 19477i, 49948i), vec4<u32>(18963u, 0u, 1u, 4294967295u)));

var<private> global1: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(-1000f, 2513f), vec2<f32>(918f, -1138f), vec2<f32>(254f, 493f));

var<private> global2: Struct_2 = Struct_2(true, Struct_1(true, true, vec3<i32>(-14461i, -7837i, 18120i), vec4<u32>(1u, 46772u, 6287u, 4294967295u)), Struct_1(false, true, vec3<i32>(i32(-2147483648), 1893i, 0i), vec4<u32>(0u, 2993u, 89674u, 0u)));

var<private> global3: vec3<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> bool {
    let var_0 = vec4<i32>(5904i, _wgslsmith_sub_i32(~_wgslsmith_add_i32(global2.c.c.x, 2147483647i), _wgslsmith_div_i32(0i >> ((27524u & global0.c.d.x) % 32u), 1i)), max(min(abs(max(u_input.b, -28132i)), min(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 47450i, global2.b.c.x, -57388i), vec4<i32>(u_input.b, global2.b.c.x, 50828i, -2147483647i)), 1i)), global0.b.c.x), abs(_wgslsmith_mod_i32(-global0.b.c.x >> (u_input.a.x % 32u), select(_wgslsmith_div_i32(15826i, u_input.b), countOneBits(global0.b.c.x), true))));
    var var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(global0.b.d.yxx, global2.b.d.www << (_wgslsmith_clamp_vec3_u32(global0.c.d.zxz, vec3<u32>(105763u, global2.c.d.x, global0.c.d.x), vec3<u32>(global0.b.d.x, 17308u, 4294967295u)) % vec3<u32>(32u))), 0u, ~((global2.c.d.x >> (73640u % 32u)) >> (~1u % 32u)), global0.c.d.x) << (global2.c.d % vec4<u32>(32u));
    var var_2 = Struct_3(_wgslsmith_sub_u32(4294967295u, ~abs(4294967295u)), firstTrailingBit(global0.b.c), Struct_2(!(45440u < u_input.a.x), Struct_1(all(!vec3<bool>(global0.b.b, false, global3.x)), true, countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(0i, -2789i, var_0.x), global2.b.c)), ~reverseBits(global0.c.d)), Struct_1(all(global3.xz), global0.c.a, reverseBits(var_0.xxy) ^ (vec3<i32>(-1i, -1i, u_input.b) ^ var_0.www), ~global0.c.d)), vec4<u32>(0u, 1u, global2.c.d.x & global0.b.d.x, var_1.x) ^ firstLeadingBit(_wgslsmith_mod_vec4_u32(min(global0.c.d, global0.c.d), min(global2.b.d, global2.b.d))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -629f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-164f, -149f, global0.c.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-819f)))))));
    var var_3 = global0.c.c.x;
    global1 = array<vec2<f32>, 3>();
    return true;
}

fn func_3(arg_0: i32) -> bool {
    global2 = Struct_2(global3.x, global2.b, Struct_1(false, !all(select(global3.xy, vec2<bool>(true, false), false)), max(abs(min(global0.c.c, vec3<i32>(global0.b.c.x, global0.b.c.x, -36647i))), -_wgslsmith_add_vec3_i32(vec3<i32>(1i, -1i, 1064i), vec3<i32>(11308i, u_input.b, 55958i))), ~vec4<u32>(firstTrailingBit(u_input.a.x), countOneBits(global2.b.d.x), ~u_input.a.x, _wgslsmith_dot_vec3_u32(global0.c.d.xyz, vec3<u32>(33973u, 0u, 1u)))));
    let var_0 = Struct_2(any(vec3<bool>(true, global2.a, global0.b.c.x < -2147483647i)) && true, global0.c, Struct_1(!(~global2.b.d.x <= u_input.a.x), true, vec3<i32>(countOneBits(-global2.b.c.x), u_input.b, _wgslsmith_mod_i32(11495i, 24216i)), firstLeadingBit(abs(global2.b.d)) | vec4<u32>(select(53393u, u_input.a.x, global0.c.a), _wgslsmith_clamp_u32(global2.c.d.x, 1u, 149933u), ~0u, ~global2.b.d.x)));
    var var_1 = ~(~reverseBits(0i) ^ _wgslsmith_add_i32(~(~25137i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, 2147483647i, -2147483647i), -vec4<i32>(global0.b.c.x, 35433i, var_0.b.c.x, -67492i))));
    var var_2 = Struct_2(-global0.b.c.x > ((i32(-1i) * -global0.b.c.x) >> (~(~0u) % 32u)), global2.b, Struct_1(!(global2.a | true), any(select(select(vec3<bool>(global2.c.b, global2.b.b, global2.a), vec3<bool>(false, true, global3.x), true), !vec3<bool>(var_0.b.a, false, var_0.a), any(vec4<bool>(global2.c.a, global2.c.b, global0.b.a, false)))), -global0.b.c, vec4<u32>(_wgslsmith_mult_u32(global0.c.d.x, 46970u), min(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0.b.d.x, 85947u), vec3<u32>(u_input.a.x, 33607u, global2.b.d.x)), ~34045u), 35056u, 1u)));
    let var_3 = var_0;
    return select(all(select(!(!vec4<bool>(true, true, true, var_2.c.b)), !vec4<bool>(global0.b.a, false, global0.c.b, false), !(!vec4<bool>(false, true, true, global2.a)))), all(select(!select(vec4<bool>(global2.b.a, var_0.c.b, true, false), vec4<bool>(true, global3.x, true, true), false), !(!vec4<bool>(true, true, true, var_3.a)), var_0.c.b)), all(vec4<bool>(!any(vec3<bool>(var_0.b.b, var_3.b.a, var_0.c.a)), true, var_2.b.a, true)));
}

fn func_1() -> bool {
    global0 = Struct_2(!(global3.x | true), Struct_1(select(global0.a, !(!global3.x), !(!global0.c.a)), func_2(), global0.c.c ^ global2.b.c, countOneBits(vec4<u32>(global0.b.d.x, 1u, 1u, global2.c.d.x) ^ abs(global2.c.d))), global0.c);
    global3 = !select(vec3<bool>(global2.b.c.x != countOneBits(u_input.b), false, false), !vec3<bool>(true, all(vec3<bool>(global2.c.b, global3.x, false)), global2.c.d.x < global2.c.d.x), select(!(!vec3<bool>(global3.x, true, global0.b.a)), !select(vec3<bool>(false, true, global0.a), vec3<bool>(true, global0.b.a, global2.c.b), global0.c.b), vec3<bool>(true, global3.x, all(global3.yy))));
    global0 = Struct_2(func_3(-_wgslsmith_dot_vec3_i32(vec3<i32>(-17880i, -1i, global2.c.c.x), global2.b.c)) && global0.a, Struct_1(any(global3.xz), func_3(min(-8415i, -1i)), ~_wgslsmith_mult_vec3_i32(select(global0.c.c, global2.b.c, vec3<bool>(global0.c.a, global0.c.a, false)), _wgslsmith_mult_vec3_i32(global0.b.c, global2.c.c)), vec4<u32>(_wgslsmith_dot_vec2_u32(global0.c.d.xx, global2.b.d.yw) | ~u_input.a.x, _wgslsmith_sub_u32(global2.c.d.x, 31631u) ^ (global0.c.d.x ^ 4294967295u), _wgslsmith_clamp_u32(~4294967295u, global2.c.d.x, ~global2.c.d.x), select(1u, ~17299u, global3.x && false))), Struct_1(true, any(vec3<bool>(select(global2.c.b, global2.a, true), true, global3.x & global3.x)), max(_wgslsmith_sub_vec3_i32(max(global2.b.c, vec3<i32>(2147483647i, global2.c.c.x, 15353i)), global2.b.c), -vec3<i32>(-1i, -1i, 10355i) ^ (vec3<i32>(u_input.b, 2147483647i, 2147483647i) | global2.c.c)), _wgslsmith_clamp_vec4_u32(vec4<u32>(13800u, global0.b.d.x, 1u, global0.c.d.x), _wgslsmith_mult_vec4_u32(global2.b.d, global2.c.d), vec4<u32>(4174u, u_input.a.x, 10570u, u_input.a.x)) & ~abs(vec4<u32>(4294967295u, global0.b.d.x, global2.c.d.x, 1u))));
    let var_0 = _wgslsmith_mod_vec2_u32((select(~vec2<u32>(global2.b.d.x, global2.b.d.x), global2.c.d.zw, select(global3.yx, vec2<bool>(global0.c.a, false), global3.x)) & vec2<u32>(37386u, 6113u)) >> (~global2.b.d.yx % vec2<u32>(32u)), select(abs(select(~global2.b.d.zx, reverseBits(vec2<u32>(5801u, 23334u)), false)), _wgslsmith_sub_vec2_u32(global0.c.d.wy, vec2<u32>(~global0.b.d.x, 99240u)), global3.x));
    let var_1 = 266f;
    return global3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2((func_1() || (false || (global2.a & global0.a))) & any(vec2<bool>(true, true)), global2.c, Struct_1(true, any(vec2<bool>(!global0.a, true)), vec3<i32>(-max(29010i, 2147483647i), select(global0.b.c.x, global0.c.c.x, global2.b.b) << (~global0.c.d.x % 32u), 2147483647i), _wgslsmith_div_vec4_u32(min(global0.c.d, global2.c.d | global0.c.d), global0.c.d)));
    global0 = Struct_2(~0u < _wgslsmith_dot_vec2_u32(global0.b.d.zy, vec2<u32>(global0.b.d.x, 44665u)), Struct_1(!global3.x, false, vec3<i32>(global0.c.c.x, global0.c.c.x, _wgslsmith_div_i32(global0.c.c.x, global2.c.c.x)) << (select(min(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), global2.b.d.wxz), _wgslsmith_mod_vec3_u32(vec3<u32>(global2.c.d.x, 16257u, global0.c.d.x), vec3<u32>(27261u, global2.b.d.x, 93669u)), !vec3<bool>(global2.b.a, true, true)) % vec3<u32>(32u)), global2.c.d), global0.b);
    var var_0 = -380f;
    let var_1 = global0.c;
    global0 = Struct_2(func_3(305i), global0.c, global0.c);
    global1 = array<vec2<f32>, 3>();
    let var_2 = reverseBits(~(~vec4<u32>(~6167u, _wgslsmith_add_u32(global0.b.d.x, 17066u), u_input.a.x & 611u, ~var_1.d.x)));
    var var_3 = Struct_3(var_2.x, vec3<i32>(global2.c.c.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global2.b.d.x, u_input.a.x), vec2<u32>(5827u, u_input.a.x)) % 32u), global0.c.c.x, _wgslsmith_div_i32(global2.b.c.x, var_1.c.x)) & ~(-(~global0.c.c)), Struct_2(true, global2.b, Struct_1(func_2(), true, abs(_wgslsmith_add_vec3_i32(global0.b.c, vec3<i32>(-2147483647i, global0.c.c.x, var_1.c.x))), _wgslsmith_mult_vec4_u32(var_1.d, var_2))), ~global2.c.d << (min(_wgslsmith_sub_vec4_u32(select(var_1.d, vec4<u32>(global0.b.d.x, var_2.x, 12191u, 96101u), global0.c.b), ~vec4<u32>(global2.c.d.x, 4294967295u, var_1.d.x, 10327u)), ~(~global0.b.d)) % vec4<u32>(32u)), 1269f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(29660u, 1u), var_1.d.x), 23164u, firstLeadingBit(countOneBits(_wgslsmith_mult_u32(u_input.a.x, global2.b.d.x))), 1u << (global2.c.d.x % 32u)), ~vec4<u32>(1u, 53896u, abs(global0.b.d.x << (global2.b.d.x % 32u)), global2.b.d.x), firstTrailingBit(countOneBits(vec4<u32>(17754u, 1u, u_input.a.x, 12774u)) & vec4<u32>(40473u, var_3.d.x, 1618u, 0u)) | ~vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(16625u, 1435u)), 1u ^ var_3.a, global2.b.d.x, var_2.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(829f, -1275f) * global1[_wgslsmith_index_u32(global0.c.d.x, 3u)])) * vec2<f32>(_wgslsmith_div_f32(-570f, var_3.e), _wgslsmith_f_op_f32(var_3.e - -1480f))) - global1[_wgslsmith_index_u32(max(~global0.c.d.x, _wgslsmith_sub_u32(abs(4294967295u), _wgslsmith_add_u32(var_2.x, var_3.c.b.d.x))), 3u)]));
}

