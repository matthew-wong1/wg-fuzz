struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: f32,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: bool,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(63899u, 7407u);

var<private> global1: array<vec4<u32>, 29>;

var<private> global2: vec3<f32> = vec3<f32>(288f, -548f, -323f);

var<private> global3: Struct_2 = Struct_2(Struct_1(vec3<u32>(4294967295u, 13151u, 4294967295u), vec4<u32>(6042u, 1u, 0u, 1u)), 1i, Struct_1(vec3<u32>(35555u, 87572u, 57161u), vec4<u32>(0u, 37269u, 44100u, 4294967295u)));

var<private> global4: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(-24282i, i32(-2147483648), -15110i), vec3<i32>(-34910i, 32336i, 9482i), vec3<i32>(18732i, 0i, 1i), vec3<i32>(-17495i, i32(-2147483648), -1i), vec3<i32>(0i, -8561i, -10609i), vec3<i32>(32092i, -17967i, 4639i), vec3<i32>(2147483647i, 22452i, 3145i), vec3<i32>(-56786i, 0i, 1i), vec3<i32>(-51727i, 78684i, 1i), vec3<i32>(-1i, -1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -62315i, -22033i), vec3<i32>(2147483647i, 30809i, -1i), vec3<i32>(-10752i, i32(-2147483648), 23138i), vec3<i32>(-1i, -2780i, 1304i), vec3<i32>(2147483647i, 41145i, 2147483647i), vec3<i32>(0i, i32(-2147483648), -23400i), vec3<i32>(-72799i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-33665i, i32(-2147483648), 1i), vec3<i32>(15041i, -72053i, i32(-2147483648)), vec3<i32>(2147483647i, 25701i, 2147483647i), vec3<i32>(i32(-2147483648), 35794i, -19298i), vec3<i32>(2147483647i, -19868i, 14216i));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    var var_0 = u_input.a;
    global2 = vec3<f32>(global2.x, global2.x, -973f);
    let var_1 = Struct_4(Struct_3(select(vec2<bool>(true, true), vec2<bool>(true, false), select(true, false, true)), vec4<bool>(all(vec3<bool>(false, false, false)), true, global2.x != _wgslsmith_f_op_f32(f32(-1f) * -694f), true), global3.c), Struct_2(global3.a, -5125i, global3.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.x)))), Struct_2(global3.a, u_input.b, Struct_1(vec3<u32>(~global0.x, 71004u, global0.x), ~(global1[_wgslsmith_index_u32(1u, 29u)] << (vec4<u32>(4294967295u, 1u, global0.x, 4294967295u) % vec4<u32>(32u))))));
    var var_2 = Struct_5(_wgslsmith_sub_vec3_u32(~countOneBits(vec3<u32>(0u, 86016u, var_1.d.a.b.x)), var_1.b.a.a), firstLeadingBit(firstTrailingBit(-38040i)) < var_1.b.b, u_input.a, _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(~global4[_wgslsmith_index_u32(var_1.b.a.b.x, 22u)], vec3<i32>(1663i, var_1.d.b, var_1.b.b)), vec3<i32>(-1i) * -global4[_wgslsmith_index_u32(4294967295u, 22u)]), ~(global4[_wgslsmith_index_u32(abs(29965u), 22u)] >> ((global3.a.a | vec3<u32>(0u, 1u, var_1.a.c.b.x)) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-7485i, global3.b, global3.b) >> (vec3<u32>(global0.x, 0u, global3.c.b.x) % vec3<u32>(32u)), vec3<i32>(var_1.d.b, 0i, global3.b)), 0i, 1i)), ~(-abs(var_0.yz >> (vec2<u32>(96567u, global0.x) % vec2<u32>(32u)))));
    let var_3 = Struct_1(vec3<u32>(firstTrailingBit((var_1.a.c.b.x >> (global3.c.a.x % 32u)) | 1u), abs((var_1.a.c.b.x & 80813u) ^ var_2.a.x), max(~firstLeadingBit(1u), 1u)), abs(var_1.a.c.b));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-924f - _wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.x), 661f, global2.x > _wgslsmith_f_op_f32(abs(971f))))));
}

fn func_2(arg_0: vec4<i32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), global2.x))), _wgslsmith_f_op_f32(f32(-1f) * -114f), (true || (any(vec3<bool>(true, false, true)) & (global3.b <= arg_0.x))) | all(vec4<bool>(select(true, true, true), all(vec2<bool>(true, true)), true, true))));
    global3 = Struct_2(global3.c, ~firstLeadingBit(firstTrailingBit(u_input.b)), Struct_1(global3.a.a, _wgslsmith_clamp_vec4_u32(abs(global1[_wgslsmith_index_u32(global3.c.a.x, 29u)]) << (global1[_wgslsmith_index_u32(select(global3.c.a.x, global0.x, false), 29u)] % vec4<u32>(32u)), global3.c.b, vec4<u32>(~31242u, 0u & global0.x, select(60655u, global3.a.a.x, false), ~global0.x))));
    let var_1 = true;
    let var_2 = Struct_4(Struct_3(vec2<bool>(true, var_1), vec4<bool>(all(select(vec2<bool>(true, var_1), vec2<bool>(false, var_1), vec2<bool>(var_1, var_1))), !all(vec2<bool>(var_1, false)), var_1, false | var_1), global3.c), Struct_2(Struct_1(global3.c.a, ~(~global1[_wgslsmith_index_u32(global0.x, 29u)])), arg_0.x, Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(14347u, 4294967295u, 31305u), _wgslsmith_add_vec3_u32(global3.a.b.wzy, global3.c.b.xwx)), ~_wgslsmith_add_vec4_u32(global1[_wgslsmith_index_u32(23047u, 29u)], vec4<u32>(global0.x, global0.x, 11325u, global0.x)))), _wgslsmith_f_op_f32(-global2.x), Struct_2(Struct_1(global3.a.a, _wgslsmith_mult_vec4_u32(global3.c.b, global1[_wgslsmith_index_u32(0u, 29u)]) & ~global3.c.b), i32(-1i) * -8522i, global3.a));
    var_0 = _wgslsmith_f_op_f32(sign(var_2.c));
    return _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-103f, -769f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(f32(-1f) * -1997f), var_1 || false))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: Struct_5, arg_3: f32) -> Struct_2 {
    let var_0 = arg_0.zy;
    let var_1 = ~select(49898u, global0.x, arg_2.b);
    global0 = global3.a.b.wy;
    let var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(30508u, _wgslsmith_mult_u32(var_1, 3449u)) ^ ~_wgslsmith_sub_u32(global0.x, var_1), 1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(global3.c.a.x, 37820u), select(vec2<u32>(global0.x, var_1), global3.a.b.wx, vec2<bool>(true, arg_2.b))) ^ var_1), arg_2.a);
    global0 = vec2<u32>(~(~4294967295u), 97639u);
    return Struct_2(Struct_1(select(~(vec3<u32>(global0.x, var_1, var_1) & vec3<u32>(global3.a.a.x, 1u, 4294967295u)), _wgslsmith_mult_vec3_u32(arg_2.a | global3.c.a, arg_2.a), select(select(vec3<bool>(true, arg_2.b, arg_2.b), vec3<bool>(true, false, false), arg_2.b), select(vec3<bool>(arg_2.b, arg_2.b, arg_2.b), vec3<bool>(false, false, false), true), !vec3<bool>(arg_2.b, arg_2.b, true))), vec4<u32>(select(0u, 4294967295u, true), 34389u, var_1, 31836u)), abs(reverseBits(abs(abs(0i)))), global3.a);
}

fn func_1() -> bool {
    global2 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x))), global2.x, global2.x);
    var var_0 = _wgslsmith_add_u32(abs(firstTrailingBit(_wgslsmith_sub_u32(~4294967295u, _wgslsmith_add_u32(global0.x, global3.a.a.x)))), global3.c.b.x);
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-1108f - global2.x)) * vec3<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x, _wgslsmith_f_op_f32(-global2.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, -1706f) - vec3<f32>(-1332f, -1087f, global2.x)), _wgslsmith_f_op_vec3_f32(func_2(vec4<i32>(u_input.d.x, global3.b, -8544i, -48506i)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(step(global2.x, global2.x))), 115f, _wgslsmith_div_f32(1647f, _wgslsmith_f_op_f32(global2.x - -546f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.x))))), Struct_5(vec3<u32>(1u, global0.x, _wgslsmith_mod_u32(~global0.x, 58867u)), true, -(~global4[_wgslsmith_index_u32(4294967295u, 22u)]), ~u_input.a, select(countOneBits(~u_input.a.xz), _wgslsmith_add_vec2_i32(-u_input.c, select(vec2<i32>(global3.b, -25556i), u_input.a.xy, false)), select(true, any(vec3<bool>(false, false, true)), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, global2.x) + global2.x) * global2.x));
    let var_2 = false;
    var_0 = ~4294967295u >> (reverseBits(_wgslsmith_mod_u32(var_1.c.b.x, ~global0.x)) % 32u);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global3.c.b.zz;
    global4 = array<vec3<i32>, 22>();
    let var_0 = func_1();
    let var_1 = -(~6320i & select(global3.b << (_wgslsmith_add_u32(global3.a.b.x, global3.c.a.x) % 32u), -27070i, any(vec4<bool>(true, true, true, true))));
    let var_2 = Struct_4(Struct_3(!vec2<bool>(true, var_0 & var_0), vec4<bool>(!(!var_0), false, global3.c.b.x >= 1571u, var_0), Struct_1(vec3<u32>(firstTrailingBit(global3.c.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(10270u, 4294967295u, 1u, global3.c.b.x), vec4<u32>(4294967295u, 1u, global3.a.b.x, global0.x)), 0u), global3.a.b)), Struct_2(func_4(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, -1069f) + vec3<f32>(global2.x, 567f, global2.x)))), vec4<f32>(758f, 842f, global2.x, _wgslsmith_f_op_f32(trunc(global2.x))), Struct_5(global3.a.b.wwz, 66260i < var_1, ~vec3<i32>(3380i, 32348i, -8346i), countOneBits(u_input.a), vec2<i32>(var_1, var_1)), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(global2.x - 152f))).a, i32(-1i) * -2147483647i, func_4(vec3<f32>(-569f, _wgslsmith_f_op_f32(step(global2.x, -1235f)), -1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, -207f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, -586f, global2.x))), Struct_5(vec3<u32>(45626u, 12344u, global0.x), !var_0, ~vec3<i32>(u_input.c.x, -26450i, 2147483647i), countOneBits(u_input.a), u_input.c), _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(f32(-1f) * -548f))).a), _wgslsmith_f_op_f32(step(global2.x, -1383f)), Struct_2(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2837f, 124f, -196f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.x, global2.x, 468f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(132f, -659f, 434f, 1453f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.x, -296f, global2.x, 1000f)))), Struct_5(global3.c.a, true, vec3<i32>(var_1, global3.b, global3.b), ~u_input.a, _wgslsmith_mod_vec2_i32(u_input.d, u_input.d)), global2.x).c, var_1, global3.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -711f)), global2.x) * -1080f), max(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, _wgslsmith_sub_u32(global0.x, var_2.a.c.b.x), 1635u & global3.a.a.x, global0.x), _wgslsmith_sub_vec4_u32(global3.c.b, ~vec4<u32>(2167u, 4294967295u, global0.x, 77570u))), _wgslsmith_div_u32(~(var_2.a.c.a.x & 0u), abs(~30142u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 375f, 238f, var_2.c) * _wgslsmith_f_op_vec4_f32(vec4<f32>(451f, -1000f, -1000f, 1000f) - vec4<f32>(global2.x, 196f, var_2.c, 1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1034f, -719f, global2.x, global2.x)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(1838f, 726f, var_2.c, var_2.c), vec4<f32>(217f, 1510f, 389f, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, global2.x, -626f, 2294f) - vec4<f32>(var_2.c, -154f, global2.x, 594f)))))));
}

