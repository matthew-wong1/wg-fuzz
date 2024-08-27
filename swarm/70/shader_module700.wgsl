struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(13355i, vec4<i32>(-1i, -62041i, 2147483647i, 1i));

var<private> global1: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(-74398i, 48453i), vec2<i32>(-1i, -1i), vec2<i32>(-16081i, i32(-2147483648)), vec2<i32>(25154i, 2147483647i), vec2<i32>(29862i, 0i), vec2<i32>(i32(-2147483648), -5737i), vec2<i32>(2147483647i, 1i), vec2<i32>(-1i, 2502i), vec2<i32>(0i, 8425i), vec2<i32>(-21931i, i32(-2147483648)));

var<private> global2: array<vec2<i32>, 24>;

var<private> global3: Struct_3;

var<private> global4: array<vec2<i32>, 9> = array<vec2<i32>, 9>(vec2<i32>(55189i, i32(-2147483648)), vec2<i32>(1i, 87105i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-8596i, 1i), vec2<i32>(1i, 11835i), vec2<i32>(23600i, 0i), vec2<i32>(i32(-2147483648), -13059i), vec2<i32>(-4559i, 2147483647i));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> vec3<f32> {
    global0 = global3.c;
    var var_0 = Struct_2(Struct_1(global3.c.a, vec4<i32>(1i, -5658i, -global0.a, 4476i)));
    var var_1 = var_0.a;
    var var_2 = 18093u;
    var var_3 = ~_wgslsmith_sub_u32(u_input.a, _wgslsmith_clamp_u32(reverseBits(29374u), 0u, _wgslsmith_mult_u32(u_input.a, u_input.a)) | 0u);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)) - _wgslsmith_div_vec3_f32(arg_0, arg_0)) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0 + _wgslsmith_f_op_vec3_f32(-arg_0)) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1598f, arg_0.x, global3.b), vec3<f32>(1262f, 164f, 286f), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1509f, 1852f, global3.b))))), arg_0)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1039f, 901f, global3.b)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1169f, global3.b, global3.b)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b, 1000f, 1093f))))))));
    var var_1 = firstTrailingBit(_wgslsmith_dot_vec2_i32(arg_1.a.b.zw, arg_1.a.b.yy));
    global3 = Struct_3(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, global3.a.x, -1i, global3.c.a) & global0.b, ~global0.b) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 35579u), vec4<u32>(873u, u_input.a, u_input.a, 35765u))) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(global3.c.a, arg_1.a.b.x, 10335i, global3.a.x), arg_1.a.b), _wgslsmith_add_vec4_i32(select(vec4<i32>(-1i, 0i, arg_1.a.b.x, global3.a.x), arg_1.a.b, arg_0), ~vec4<i32>(1i, -19951i, 0i, -2147483647i)))), -311f, Struct_1(abs(reverseBits(global0.a)) ^ 1188i, countOneBits(vec4<i32>(arg_1.a.a, arg_1.a.a, max(global3.a.x, -25012i), _wgslsmith_mult_i32(-1i, -33008i)))), select(select(-_wgslsmith_dot_vec2_i32(global4[_wgslsmith_index_u32(u_input.a, 9u)], vec2<i32>(-36057i, global3.c.a)), ~_wgslsmith_div_i32(arg_1.a.a, global3.d), all(arg_0)), firstTrailingBit(1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -1050f))));
    let var_2 = Struct_2(Struct_1(arg_1.a.a, _wgslsmith_sub_vec4_i32(vec4<i32>(~global3.d, -2147483647i, global3.a.x, _wgslsmith_mod_i32(arg_1.a.b.x, arg_1.a.a)), vec4<i32>(reverseBits(2147483647i), -22653i, -1i, _wgslsmith_add_i32(0i, global0.b.x)))));
    let var_3 = min(~max(-(arg_1.a.a | 1i), -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-_wgslsmith_div_i32(global3.c.b.x, -1i), firstTrailingBit(global0.b.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(15566i, -20896i), firstTrailingBit(global3.c.b.wx << (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u))))));
    return Struct_3(countOneBits(-global3.a), global3.b, var_2.a, 15904i);
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_3 {
    global0 = arg_0.c;
    var var_0 = ~firstLeadingBit(select(min(vec2<u32>(u_input.a, 132201u), firstTrailingBit(vec2<u32>(16073u, u_input.a))), ~abs(vec2<u32>(88655u, u_input.a)), true));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(386f, arg_0.b))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-586f, arg_0.b)) + global3.b), -786f));
    var var_2 = true;
    var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - arg_0.b), arg_0.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - 853f) - _wgslsmith_f_op_f32(1000f + var_1.x))))));
    return arg_0;
}

fn func_1(arg_0: vec4<i32>) -> Struct_3 {
    let var_0 = func_4(func_2(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, all(vec4<bool>(false, false, false, true)), true, false), vec4<bool>(true, true, true, true)), Struct_2(global3.c)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(global4[_wgslsmith_index_u32(~(~1u), 9u)], func_2(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), false), Struct_2(global3.c)).c.b.wy), firstTrailingBit(arg_0.wy & global1[_wgslsmith_index_u32(u_input.a, 10u)])));
    global2 = array<vec2<i32>, 24>();
    global0 = Struct_1(-1i, firstLeadingBit(_wgslsmith_sub_vec4_i32(-(global3.a << (vec4<u32>(7455u, 4294967295u, 0u, u_input.a) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(func_2(vec4<bool>(false, false, true, true), Struct_2(global3.c)).a, vec4<i32>(global3.c.b.x, var_0.a.x, 2147483647i, 2925i)))));
    var var_1 = 19027u;
    var var_2 = !vec2<bool>(any(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), false)), all(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))));
    return func_4(func_4(func_2(!vec4<bool>(true, false, var_2.x, true), Struct_2(func_2(vec4<bool>(true, var_2.x, false, var_2.x), Struct_2(Struct_1(-2147483647i, vec4<i32>(-19126i, global0.b.x, global3.a.x, var_0.c.a)))).c)), -(arg_0.x >> (19627u % 32u))), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(global0.b);
    var var_0 = func_1(global3.c.b).c;
    global4 = array<vec2<i32>, 9>();
    global3 = Struct_3(~_wgslsmith_div_vec4_i32(vec4<i32>(53822i, -var_0.a, global3.c.a & global3.a.x, global3.a.x), ~reverseBits(var_0.b)), global3.b, Struct_1(var_0.b.x >> (~(~0u) % 32u), vec4<i32>(var_0.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(28461i, 5557i, var_0.a), global3.c.b.wxx), global3.a.x, abs(global3.d))), _wgslsmith_sub_i32(1i, -1i));
    var var_1 = global3.c;
    let var_2 = global3.c.b;
    var var_3 = Struct_3(vec4<i32>(-46989i, var_1.b.x >> (14267u % 32u), ~(~(var_0.a >> (u_input.a % 32u))), _wgslsmith_dot_vec3_i32(var_2.wzy, -(~vec3<i32>(global3.a.x, var_2.x, var_1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global3.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2856f + global3.b)))) - -1000f), Struct_1(func_4(func_1(min(vec4<i32>(-2147483647i, 1i, global3.a.x, -2147483647i), vec4<i32>(1i, var_1.b.x, -4774i, 2147483647i))), _wgslsmith_dot_vec4_i32(reverseBits(var_0.b), global3.c.b)).a.x, global0.b), _wgslsmith_div_i32(-11323i, -(-1i | global3.d)));
    var var_4 = -var_3.a.x;
    let var_5 = global3.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.b))), vec3<i32>(-1i) * -vec3<i32>(-1i, -1i, abs(0i)), 14634u);
}

