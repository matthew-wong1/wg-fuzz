struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec2<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3> = array<f32, 3>(-1616f, 1201f, 761f);

var<private> global1: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(1038f), Struct_3(-972f), Struct_3(1426f), Struct_3(457f), Struct_3(1019f), Struct_3(420f), Struct_3(1108f), Struct_3(-1269f), Struct_3(230f), Struct_3(-370f), Struct_3(-1639f), Struct_3(-735f), Struct_3(876f), Struct_3(405f), Struct_3(-1432f), Struct_3(1885f), Struct_3(-699f), Struct_3(-189f), Struct_3(296f), Struct_3(-1476f), Struct_3(-932f), Struct_3(-1517f), Struct_3(-220f), Struct_3(-1614f), Struct_3(308f), Struct_3(799f), Struct_3(808f));

var<private> global2: array<u32, 3>;

var<private> global3: vec2<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec4<bool>) -> vec4<u32> {
    global3 = vec2<i32>(-reverseBits(27936i), -1i | max(_wgslsmith_dot_vec2_i32(vec2<i32>(global3.x, u_input.d), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.e, -2147483647i), u_input.c.yz)), _wgslsmith_sub_i32(~(-12798i), ~global3.x)));
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], -829f)))))))));
    global1 = array<Struct_3, 27>();
    let var_1 = !arg_0.yww;
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -682f) + _wgslsmith_f_op_f32(ceil(1f))), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(0u, 3u)], 0u, 10181u), vec3<u32>(0u, 29444u, 30019u)), vec3<u32>(0u, global2[_wgslsmith_index_u32(77437u, 3u)], 4294967295u)), 3u)]))));
    return vec4<u32>(~(~(global2[_wgslsmith_index_u32(u_input.b.x, 3u)] << (136456u % 32u)) >> (_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4703u, global2[_wgslsmith_index_u32(0u, 3u)], u_input.b.x, 0u), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(35324u, 3u)], 3u)], 3u)], u_input.b.x, 43477u, 8192u))) % 32u)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(11966u, 1u), ~reverseBits(u_input.b.x), _wgslsmith_clamp_u32(~30498u, _wgslsmith_mult_u32(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16688u, 3u)], 3u)]), 1u), 1u), vec4<u32>(firstLeadingBit(~u_input.b.x), ~u_input.b.x, ~global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 3u)], 3u)], 3u)], ~(~0u))), 3u)], global2[_wgslsmith_index_u32(99844u, 3u)], ~_wgslsmith_add_u32(0u, ~(~global2[_wgslsmith_index_u32(u_input.b.x, 3u)])));
}

fn func_2() -> Struct_2 {
    var var_0 = u_input.b;
    var var_1 = Struct_4(~(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2[_wgslsmith_index_u32(u_input.b.x, 3u)], u_input.b.x, global2[_wgslsmith_index_u32(50951u, 3u)]), vec4<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 3u)], 49354u, 239u, var_0.x)), abs(var_0.x), var_0.x, ~u_input.b.x) << (~func_3(vec4<bool>(true, true, true, true)) % vec4<u32>(32u))), vec3<u32>(firstLeadingBit(43432u), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(func_3(vec4<bool>(true, false, false, false)).zx, u_input.b.yy), global2[_wgslsmith_index_u32(~var_0.x, 3u)]), u_input.b.x >> (1u % 32u)), u_input.c << (~(~u_input.b << ((u_input.b >> (vec3<u32>(1u, 1576u, u_input.b.x) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1253f + -342f)), _wgslsmith_f_op_f32(1030f * 1f), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(84707u, 106501u, 66766u), global2[_wgslsmith_index_u32(1u, 3u)] >> (var_0.x % 32u)), 3u)])), global0[_wgslsmith_index_u32(u_input.b.x, 3u)]);
    var var_2 = abs(var_0.x);
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.d.zy)), Struct_1(var_1.d.xx), 2147483647i == u_input.a, (min(u_input.b.xy ^ vec2<u32>(0u, global2[_wgslsmith_index_u32(var_1.b.x, 3u)]), min(var_0.xx, var_0.yy)) | var_0.xz) ^ _wgslsmith_div_vec2_u32(~u_input.b.xz, var_0.zz));
    let var_4 = false;
    return Struct_2(var_3.b, var_3.a, true, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_3.d.x, 4294967295u), vec2<u32>(global2[_wgslsmith_index_u32(0u, 3u)], 55644u), vec2<u32>(0u, 62063u)) >> (select(vec2<u32>(~var_1.a.x, ~31372u), reverseBits(vec2<u32>(u_input.b.x, 11621u)) | vec2<u32>(global2[_wgslsmith_index_u32(var_0.x, 3u)], 8508u), vec2<bool>(all(vec3<bool>(false, var_4, var_4)), all(vec3<bool>(false, false, var_4)))) % vec2<u32>(32u)));
}

fn func_1() -> Struct_2 {
    global2 = array<u32, 3>();
    global3 = u_input.c.xz;
    let var_0 = !all(vec4<bool>(false, all(vec3<bool>(true, false, false)), select(false, true, true), select(false, true, true))) & (_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 3u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 3u)]))) > -253f);
    return func_2();
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_2, arg_3: vec3<i32>) -> vec4<u32> {
    let var_0 = select(!vec2<bool>(arg_2.c, arg_2.c), vec2<bool>(false, -arg_3.x < ((0i >> (arg_2.d.x % 32u)) & -2147483647i)), 4294967295u > (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u) & u_input.b.yx, ~vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(1u, 3u)])) >> (0u % 32u)));
    let var_1 = select(select(u_input.c.x, arg_3.x >> (_wgslsmith_div_u32(49694u, global2[_wgslsmith_index_u32(countOneBits(u_input.b.x), 3u)]) % 32u), any(vec4<bool>(true, true, true, true))), abs(_wgslsmith_sub_i32(_wgslsmith_mod_i32(23757i, arg_3.x) << (0u % 32u), 3276i)), true);
    let var_2 = Struct_4(~(~(~vec4<u32>(u_input.b.x, u_input.b.x, 33081u, global2[_wgslsmith_index_u32(4294967295u, 3u)])) | ~(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 23462u) | vec4<u32>(0u, 0u, global2[_wgslsmith_index_u32(0u, 3u)], u_input.b.x))), u_input.b, min(arg_3, abs(u_input.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-267f, arg_0.x, 1585f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-382f, -284f, -1439f))))) + vec3<f32>(global0[_wgslsmith_index_u32(1u, 3u)], _wgslsmith_f_op_f32(sign(arg_0.x)), -331f))), _wgslsmith_f_op_f32(-func_1().b.a.x));
    let var_3 = vec4<bool>(all(!select(!vec3<bool>(var_0.x, arg_1, arg_1), !vec3<bool>(var_0.x, false, true), vec3<bool>(false, arg_2.c, false))), any(vec3<bool>((var_2.e == arg_0.x) & true, true, false)), true, var_0.x);
    global2 = array<u32, 3>();
    return select(vec4<u32>(arg_2.d.x, ~countOneBits(20011u), ~0u, ~u_input.b.x), ~vec4<u32>(reverseBits(min(4294967295u, 5532u)), _wgslsmith_mod_u32(0u, 0u & u_input.b.x), firstLeadingBit(u_input.b.x), _wgslsmith_clamp_u32(1u, abs(global2[_wgslsmith_index_u32(4294967295u, 3u)]), global2[_wgslsmith_index_u32(var_2.a.x, 3u)] << (79412u % 32u))), (_wgslsmith_sub_i32(-5703i, 4318i) | firstTrailingBit(10889i)) >= (i32(-1i) * -11361i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(global3.x, -13899i, 2147483647i, u_input.e) << ((func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 3u)], 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], 236f) + vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], global0[_wgslsmith_index_u32(16820u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], -796f)), any(vec3<bool>(false, true, true)), func_1(), -u_input.c) | _wgslsmith_mult_vec4_u32(max(vec4<u32>(global2[_wgslsmith_index_u32(20140u, 3u)], u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(0u, global2[_wgslsmith_index_u32(u_input.b.x, 3u)], global2[_wgslsmith_index_u32(831u, 3u)], u_input.b.x)), ~vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x))) % vec4<u32>(32u)), ~vec4<i32>(-1i, ~(~25999i), _wgslsmith_clamp_i32(u_input.e | u_input.e, min(-37757i, global3.x), u_input.a), global3.x));
    let var_1 = func_2().b;
    global3 = _wgslsmith_mult_vec2_i32(-select(vec2<i32>(u_input.c.x, u_input.a & 1i), u_input.c.yy, select(vec2<bool>(true, true), vec2<bool>(true, true), true)), u_input.c.xy);
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(300f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-136f, _wgslsmith_f_op_f32(var_1.a.x * global0[_wgslsmith_index_u32(98864u, 3u)]), true)))))));
    global2 = array<u32, 3>();
    let var_3 = ~_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-1i, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, global3.x, -37633i, 0i), reverseBits(vec4<i32>(global3.x, 0i, -10104i, -17059i))), max(-56560i, 0i), -var_0.x), max(abs(firstLeadingBit(vec4<i32>(u_input.a, global3.x, -26856i, u_input.c.x))), _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a, u_input.c.x, u_input.c.x, global3.x), ~vec4<i32>(u_input.e, u_input.a, var_0.x, -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.x))))));
}

