struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6>;

var<private> global1: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(10571u, 11295u));

var<private> global2: array<Struct_2, 4>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<bool> {
    global0 = array<u32, 6>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1043f, -482f, -522f, 408f), vec4<f32>(-1357f, 860f, 1058f, 344f))) - vec4<f32>(_wgslsmith_f_op_f32(947f - 1039f), -1204f, _wgslsmith_f_op_f32(f32(-1f) * -529f), _wgslsmith_f_op_f32(max(1000f, 191f))))));
    global0 = array<u32, 6>();
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(980f, var_0.x, -107f, var_0.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-897f, var_0.x, -708f, -1238f), vec4<f32>(227f, -1367f, var_0.x, var_0.x), false)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, 565f, var_0.x, var_0.x), vec4<f32>(-575f, -166f, 1000f, var_0.x)))))));
    global1 = array<vec2<u32>, 1>();
    return !select(select(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true))), !(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), vec2<bool>(true, true));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: bool) -> bool {
    global1 = array<vec2<u32>, 1>();
    global0 = array<u32, 6>();
    let var_0 = _wgslsmith_clamp_i32(0i, arg_2.b.x, -21209i);
    let var_1 = Struct_2(arg_2.a.x, Struct_1(!select(vec2<bool>(false, false), arg_1, false), arg_2.b, 0u));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1531f * 1f)))));
    return arg_2.a.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>) -> vec4<bool> {
    global2 = array<Struct_2, 4>();
    let var_0 = arg_0.yx;
    return vec4<bool>(func_4(Struct_1(func_3(), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, 2147483647i, var_0.x, arg_0.x), vec4<i32>(-1i, 0i, -2147483647i, arg_0.x)), var_0.x, -1i), firstTrailingBit(_wgslsmith_clamp_u32(84576u, global0[_wgslsmith_index_u32(15665u, 6u)], 1u))), vec2<bool>(true, false), Struct_1(select(func_3(), vec2<bool>(true, true), true), arg_0, global0[_wgslsmith_index_u32(u_input.b, 6u)]), !(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(3852u, 6u)], 4294967295u) > _wgslsmith_add_u32(u_input.a, 2158u))), !all(vec4<bool>(select(true, false, false), true, true, false)), false, true);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: u32) -> vec4<u32> {
    var var_0 = select(vec4<bool>(true, true, all(vec3<bool>(true, true, true)), false), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_2(vec3<i32>(-27449i, u_input.c, 1i), vec4<f32>(arg_0.x, 601f, -1000f, 1000f))), vec4<bool>(func_4(Struct_1(vec2<bool>(false, true), vec3<i32>(u_input.d, -39782i, 0i), countOneBits(51255u)), !select(vec2<bool>(false, false), vec2<bool>(false, true), true), Struct_1(vec2<bool>(false, false), -arg_1.ywz, arg_2), func_3().x && false), true, all(vec2<bool>(true, true)), true));
    var var_1 = Struct_2(var_0.x, Struct_1(var_0.zy, abs(vec3<i32>(7331i, -9842i, arg_1.x) >> (vec3<u32>(global0[_wgslsmith_index_u32(arg_2, 6u)], 30390u, global0[_wgslsmith_index_u32(arg_2, 6u)]) % vec3<u32>(32u))), select(arg_2, 50197u, true)));
    return _wgslsmith_mod_vec4_u32(abs(select(_wgslsmith_mult_vec4_u32(select(vec4<u32>(4294967295u, u_input.b, arg_2, arg_2), vec4<u32>(var_1.b.c, global0[_wgslsmith_index_u32(1u, 6u)], 30576u, u_input.a), var_0.x), ~vec4<u32>(1u, 67920u, 18168u, 30070u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(51895u, arg_2, 1u), vec3<u32>(60562u, 4294967295u, 7902u)), 18650u, 57848u, _wgslsmith_sub_u32(arg_2, 16884u)), !vec4<bool>(false, var_0.x, var_0.x, var_1.b.a.x))), firstLeadingBit(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.b, u_input.a, 0u, arg_2)), countOneBits(vec4<u32>(arg_2, global0[_wgslsmith_index_u32(var_1.b.c, 6u)], 8116u, 4294967295u))) ^ vec4<u32>(arg_2, var_1.b.c, ~14353u, firstLeadingBit(26580u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(false, false, true, true))), select(false, any(vec4<bool>(true, false, true, true)), true)), vec3<i32>(~(-1i), 4825i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.d, -2147483647i, 1i, -26685i)), vec4<i32>(u_input.c, select(8543i, 5408i, false), -2147483647i, ~(-57300i)))), _wgslsmith_dot_vec4_u32(func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-296f, -1066f, -203f, -2176f) + vec4<f32>(808f, -1909f, 270f, -1063f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-273f, -358f, 531f, -1220f))), firstLeadingBit(vec4<i32>(u_input.e, u_input.c, 18693i, 15544i)), global0[_wgslsmith_index_u32(abs(1u), 6u)]), vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 5318u), 6u)], 6653u, ~u_input.b, _wgslsmith_div_u32(10157u, 75998u)) << (~(vec4<u32>(12499u, u_input.a, 14180u, 69293u) ^ vec4<u32>(5136u, global0[_wgslsmith_index_u32(1u, 6u)], u_input.a, u_input.a)) % vec4<u32>(32u))));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.c, _wgslsmith_add_u32(~_wgslsmith_add_u32(u_input.a, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41399u, 6u)], 6u)]), abs(var_0.c))), 4u)];
    let var_2 = countOneBits(~(~(~vec4<u32>(global0[_wgslsmith_index_u32(2490u, 6u)], 0u, 97082u, var_1.b.c)) >> (~vec4<u32>(var_0.c, var_1.b.c, global0[_wgslsmith_index_u32(55490u, 6u)], u_input.b) % vec4<u32>(32u))));
    var_1 = Struct_2(var_0.b.x == _wgslsmith_div_i32(u_input.d, var_1.b.b.x), Struct_1(vec2<bool>(true, true), _wgslsmith_add_vec3_i32(min(select(var_0.b, vec3<i32>(16223i, var_1.b.b.x, u_input.d), vec3<bool>(true, var_0.a.x, var_1.a)), var_1.b.b), _wgslsmith_sub_vec3_i32(~vec3<i32>(-2147483647i, 35548i, -3860i), vec3<i32>(var_1.b.b.x, 1i, var_0.b.x))), u_input.a));
    global1 = array<vec2<u32>, 1>();
    let var_3 = ~vec3<i32>(-34878i, -var_1.b.b.x, ~reverseBits(~2147483647i));
    global0 = array<u32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_clamp_i32(-countOneBits(var_3.x), _wgslsmith_mult_i32(var_3.x, _wgslsmith_dot_vec3_i32(var_3, var_3)), _wgslsmith_clamp_i32(~8572i, _wgslsmith_mod_i32(var_3.x, var_1.b.b.x), select(2147483647i, var_0.b.x, false)))), ~4294967295u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1193f - 763f) - _wgslsmith_f_op_f32(f32(-1f) * -553f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-227f, -422f))))), -vec4<i32>(_wgslsmith_add_i32(min(var_1.b.b.x, -32765i), -5135i), abs(-var_1.b.b.x), -var_0.b.x, 25296i));
}

