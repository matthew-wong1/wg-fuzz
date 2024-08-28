struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9>;

var<private> global1: array<Struct_3, 8>;

var<private> global2: array<vec2<f32>, 10> = array<vec2<f32>, 10>(vec2<f32>(-627f, -1155f), vec2<f32>(-770f, -407f), vec2<f32>(686f, -149f), vec2<f32>(158f, -1872f), vec2<f32>(154f, 660f), vec2<f32>(1262f, -614f), vec2<f32>(-1590f, 1679f), vec2<f32>(1000f, 627f), vec2<f32>(267f, -443f), vec2<f32>(-1225f, 686f));

var<private> global3: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    let var_0 = countOneBits(-_wgslsmith_mod_i32(u_input.a.x, -_wgslsmith_add_i32(u_input.a.x, u_input.a.x)));
    global1 = array<Struct_3, 8>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_mod_vec4_i32(~vec4<i32>(-2147483647i, var_0, -2755i, u_input.a.x), firstTrailingBit(u_input.a)) ^ _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, vec4<i32>(var_0, -1498i, 1i, 0i)), vec4<i32>(0i, 1i, -29613i, 78984i) << (vec4<u32>(4294967295u, 4294967295u, u_input.b, 85306u) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(405f, 240f, -317f, -778f), vec4<f32>(1489f, 212f, -1000f, 2007f), true)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-887f, 1092f, 149f, 1019f) - vec4<f32>(357f, -152f, 189f, 1347f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(234f, -1554f, 1000f, 1287f) + vec4<f32>(-1404f, 176f, -806f, 712f))))), vec2<f32>(_wgslsmith_f_op_f32(step(491f, _wgslsmith_div_f32(946f, 1609f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -287f) + _wgslsmith_f_op_f32(-110f - 495f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(932f * -312f)))), vec3<u32>(~(1u | u_input.b), 0u, ~4294967295u), countOneBits(vec2<u32>(firstTrailingBit(~110458u), ~_wgslsmith_mult_u32(0u, u_input.b))), select(vec2<bool>(select(any(vec4<bool>(arg_0.x, false, global3.x, arg_0.x)), true, global3.x), false), arg_0.xx, u_input.b < (u_input.b | 50396u)));
    var var_2 = vec2<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(-6051i, 20115i), i32(-1i) * -var_1.a.a.x), var_0);
    let var_3 = var_1.a;
    return 74285u;
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_2) -> u32 {
    var var_0 = arg_2.c.x;
    global3 = select(vec2<bool>(any(select(!vec2<bool>(arg_2.e.x, true), select(arg_1.yz, arg_2.e, true), select(vec2<bool>(false, true), vec2<bool>(arg_2.e.x, true), vec2<bool>(arg_1.x, arg_1.x)))), any(vec3<bool>(false, true, true))), select(vec2<bool>(all(select(vec4<bool>(false, arg_1.x, global3.x, true), vec4<bool>(false, arg_2.e.x, false, true), vec4<bool>(true, true, false, true))), arg_1.x | global3.x), select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(arg_2.e.x, true)), vec2<bool>(arg_1.x | true, arg_2.e.x | arg_1.x), false), select(arg_2.e, vec2<bool>(true, true), select(!arg_1.yy, arg_1.zy, false))), arg_1.xy);
    global1 = array<Struct_3, 8>();
    var var_1 = max(~arg_2.c.x, firstLeadingBit(_wgslsmith_sub_u32(func_3(select(vec4<bool>(global3.x, arg_1.x, true, true), vec4<bool>(false, arg_1.x, arg_2.e.x, true), vec4<bool>(true, global3.x, global3.x, true))), ~26776u & u_input.b)));
    let var_2 = ~arg_0;
    return _wgslsmith_clamp_u32(arg_0, ~(_wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_0, 6388u), ~1u) | 1u), _wgslsmith_sub_u32(max(arg_0, u_input.b) ^ arg_2.d.x, ~(~43078u)) ^ (u_input.b << (var_2 % 32u)));
}

fn func_2() -> Struct_1 {
    let var_0 = (_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 19563u, u_input.b), vec4<u32>(u_input.b, 0u, u_input.b, u_input.b)) ^ vec4<u32>(u_input.b, u_input.b, u_input.b, 18285u), ~vec4<u32>(0u, 46205u, 1u, 7002u), _wgslsmith_mult_vec4_u32(vec4<u32>(13770u, u_input.b, u_input.b, 39059u) & vec4<u32>(19318u, u_input.b, u_input.b, 32290u), abs(vec4<u32>(0u, 4294967295u, 26743u, u_input.b)))) & ~(select(vec4<u32>(0u, 3218u, 42950u, 4294967295u), vec4<u32>(6071u, u_input.b, 59562u, u_input.b), vec4<bool>(true, global3.x, global3.x, false)) & ~vec4<u32>(u_input.b, 122253u, u_input.b, 0u))) & max(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, 24093u, 1u, u_input.b), _wgslsmith_div_vec4_u32(vec4<u32>(42291u, 20048u, 5612u, u_input.b), vec4<u32>(1u, u_input.b, 49u, 91959u))), ~vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u)), abs(_wgslsmith_sub_vec4_u32(select(vec4<u32>(16392u, 0u, 3943u, u_input.b), vec4<u32>(1u, 4882u, u_input.b, u_input.b), false), abs(vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b)))));
    var var_1 = global1[_wgslsmith_index_u32(u_input.b, 8u)];
    var var_2 = Struct_3(-1406f, true, Struct_2(var_1.c.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1000f) * vec2<f32>(var_1.a, var_1.c.a.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a)))), ~vec3<u32>(var_0.x, ~var_1.c.c.x, ~var_0.x), vec2<u32>(1u, func_4(func_3(vec4<bool>(global3.x, global3.x, global3.x, global3.x)), select(vec3<bool>(global3.x, global3.x, var_1.b), vec3<bool>(var_1.b, true, true), vec3<bool>(global3.x, global3.x, true)), var_1.c)), var_1.c.e));
    let var_3 = var_1.c.a;
    let var_4 = ~var_2.c.d.x;
    return Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(-var_3.b));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: vec3<u32>) -> Struct_2 {
    var var_0 = func_2();
    let var_1 = Struct_2(Struct_1(vec4<i32>(-7880i, -(~u_input.a.x), min(-18292i, u_input.a.x), _wgslsmith_add_i32(arg_0.x, -52401i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-417f, _wgslsmith_f_op_f32(var_0.b.x - -1000f), var_0.b.x, _wgslsmith_f_op_f32(var_0.b.x - var_0.b.x)))), vec2<f32>(func_2().b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(max(var_0.b.x, -1229f))) + _wgslsmith_f_op_f32(-786f * _wgslsmith_f_op_f32(step(-1452f, -362f))))), ~firstLeadingBit(vec3<u32>(u_input.b, 4294967295u, 36204u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, _wgslsmith_sub_u32(arg_1, 60918u)) >> (arg_2.zy % vec2<u32>(32u)), arg_2.yx), vec2<bool>(global3.x, global3.x));
    return var_1;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2) -> vec2<u32> {
    return arg_1.c.yz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec2_u32(~(~func_5(firstTrailingBit(vec2<u32>(72619u, 1u)), func_1(vec4<i32>(-37572i, u_input.a.x, 1i, 0i), 18347u, vec3<u32>(u_input.b, u_input.b, u_input.b)))), max(vec2<u32>(abs(1u), ~u_input.b), ~(~vec2<u32>(u_input.b, 4294967295u))));
    let var_1 = func_1(~vec4<i32>(u_input.a.x, u_input.a.x, 0i, ~27100i), 36700u, _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.b) << (vec3<u32>(var_0.x, var_0.x, 0u) % vec3<u32>(32u)), vec3<u32>(31905u, u_input.b, 4294967295u)), _wgslsmith_sub_u32(u_input.b, 17159u), 64273u), min(abs(vec3<u32>(0u, 10257u, u_input.b)) << (~vec3<u32>(43416u, 1u, 0u) % vec3<u32>(32u)), func_1(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 16942i), u_input.a), 67286u, select(vec3<u32>(4294967295u, u_input.b, var_0.x), vec3<u32>(1u, u_input.b, 912u), global3.x)).c))).a;
    let var_2 = ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, reverseBits(u_input.a.x), _wgslsmith_div_i32(-var_1.a.x, -var_1.a.x), i32(-1i) * -var_1.a.x), var_1.a, vec4<i32>(u_input.a.x, u_input.a.x, var_1.a.x, u_input.a.x));
    var_0 = ~vec2<u32>(~_wgslsmith_add_u32(var_0.x, 1u), _wgslsmith_div_u32(var_0.x, u_input.b) >> ((var_0.x >> (30158u % 32u)) % 32u)) ^ ~reverseBits(vec2<u32>(24417u & u_input.b, _wgslsmith_mod_u32(u_input.b, 4294967295u)));
    let var_3 = Struct_2(var_1, _wgslsmith_f_op_vec2_f32(vec2<f32>(983f, 1000f) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1645f, var_1.b.x), var_1.b.wx), vec2<f32>(308f, -655f))), _wgslsmith_div_vec3_u32(select(~vec3<u32>(0u, 16859u, u_input.b), ~vec3<u32>(var_0.x, 55727u, 50710u), true), ~firstLeadingBit(vec3<u32>(4294967295u, u_input.b, 1u))) & ~countOneBits(select(vec3<u32>(var_0.x, u_input.b, 1u), vec3<u32>(0u, 83440u, 1u), global3.x)), ~(~vec2<u32>(u_input.b << (u_input.b % 32u), ~44380u)), func_1(var_1.a, _wgslsmith_dot_vec4_u32(~max(vec4<u32>(u_input.b, var_0.x, var_0.x, var_0.x), vec4<u32>(51666u, 6603u, u_input.b, var_0.x)), vec4<u32>(~44648u, ~u_input.b, _wgslsmith_mod_u32(u_input.b, 35207u), u_input.b)), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 1u, 45271u), vec3<u32>(var_0.x, 1u, 0u)), vec3<u32>(74107u, 1u, u_input.b) | vec3<u32>(1u, 4294967295u, u_input.b)), vec3<u32>(~u_input.b, var_0.x, var_0.x))).e);
    global1 = array<Struct_3, 8>();
    let var_4 = func_1(firstLeadingBit(countOneBits(firstLeadingBit(vec4<i32>(2147483647i, 0i, var_2.x, u_input.a.x)))) & -u_input.a, _wgslsmith_mod_u32(12701u, var_0.x), var_3.c).a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-385f, func_1(vec4<i32>(~2987i, 48132i | u_input.a.x, _wgslsmith_mult_i32(var_4.a.x, -48481i), _wgslsmith_dot_vec2_i32(u_input.a.wx, u_input.a.wz)), 7217u, var_3.c).a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -925f)), _wgslsmith_f_op_vec4_f32(-var_1.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_3.a.b.x * -153f), _wgslsmith_f_op_f32(-var_1.b.x), -1257f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1309f)) - 425f))), firstLeadingBit(max(vec4<i32>(var_1.a.x, _wgslsmith_clamp_i32(-15193i, var_4.a.x, u_input.a.x), u_input.a.x >> (4294967295u % 32u), i32(-1i) * -1i), abs(var_4.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_1.b.x)), -1412f)));
}

