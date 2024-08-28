struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -777f;

var<private> global1: bool = false;

var<private> global2: array<vec2<bool>, 22> = array<vec2<bool>, 22>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32, arg_1: Struct_5, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_3(~_wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(arg_1.b.a.x, 0u, 21814u, 1u)), select(~vec4<u32>(arg_1.a.x, 1u, 1u, arg_1.a.x), ~vec4<u32>(64530u, arg_1.b.a.x, 0u, 50396u), arg_1.b.b | arg_1.d)), 1u);
    let var_1 = u_input.a.wz;
    var var_2 = 10186u;
    global2 = array<vec2<bool>, 22>();
    global2 = array<vec2<bool>, 22>();
    return Struct_2(select(true, false, false));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_4, arg_3: Struct_2) -> u32 {
    global1 = arg_3.a;
    var var_0 = reverseBits(-(abs(-vec4<i32>(arg_1, -18243i, -44775i, arg_1)) | vec4<i32>(2147483647i, arg_1, arg_1, u_input.a.x)));
    let var_1 = vec2<bool>(true, arg_0.a);
    let var_2 = Struct_5(~abs(abs(vec2<u32>(arg_2.b, 1u))), Struct_1(~_wgslsmith_mult_vec2_u32(abs(arg_2.a.wy), vec2<u32>(72649u, 21401u)), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(382f - 515f), _wgslsmith_f_op_f32(f32(-1f) * -120f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(935f + 829f) * 1535f))), -39597i, false, vec4<f32>(_wgslsmith_f_op_f32(-442f + 590f), _wgslsmith_f_op_f32(f32(-1f) * -1139f), -465f, -1478f));
    let var_3 = countOneBits(-countOneBits(var_2.c)) | 0i;
    return _wgslsmith_sub_u32(arg_2.a.x, 90643u);
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: f32) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-516f * -128f), _wgslsmith_f_op_f32(-162f + arg_2)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(291f, arg_2), vec2<f32>(arg_2, arg_2))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(166f, arg_2) + vec2<f32>(arg_2, arg_2))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, arg_2), _wgslsmith_div_vec2_f32(vec2<f32>(-993f, arg_2), vec2<f32>(2007f, 1125f))))));
    let var_1 = Struct_1(vec2<u32>(arg_1, 47207u & _wgslsmith_div_u32(~arg_1, 68537u << (arg_0.x % 32u))), !any(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true))), _wgslsmith_f_op_f32(arg_2 - var_0.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(205f, _wgslsmith_f_op_f32(min(-528f, _wgslsmith_div_f32(1460f, 143f))))));
    var var_3 = _wgslsmith_sub_vec3_u32(reverseBits(arg_0) ^ (_wgslsmith_mod_vec3_u32(arg_0, countOneBits(vec3<u32>(8291u, arg_1, var_1.a.x))) ^ (arg_0 << (countOneBits(arg_0) % vec3<u32>(32u)))), vec3<u32>(~reverseBits(var_1.a.x) ^ 13353u, _wgslsmith_mod_u32(func_3(func_2(var_2.x, Struct_5(var_1.a, Struct_1(arg_0.zy, var_1.b, var_0.x), 2147483647i, true, vec4<f32>(-752f, 509f, var_1.c, 458f)), global2[_wgslsmith_index_u32(arg_0.x, 22u)]), _wgslsmith_dot_vec2_i32(u_input.a.ww, vec2<i32>(u_input.b, u_input.a.x)), Struct_4(vec4<u32>(1u, 1u, arg_0.x, 43587u), arg_0.x), func_2(var_2.x, Struct_5(arg_0.zy, var_1, -20860i, var_1.b, vec4<f32>(var_2.x, var_0.x, -659f, var_0.x)), global2[_wgslsmith_index_u32(26299u, 22u)])), arg_1), 41983u));
    let var_4 = ~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-35764i, u_input.b, _wgslsmith_add_i32(3157i, u_input.a.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, u_input.a.x), _wgslsmith_add_vec3_i32(u_input.a.wxx, u_input.a.xwz), vec3<i32>(0i, -1i, 0i))), u_input.a.x);
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-648f, -863f, -1103f, 1466f);
    var var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -_wgslsmith_mod_i32(-33093i, 51445i), -40669i, _wgslsmith_add_i32(reverseBits(~(-33575i)), -_wgslsmith_dot_vec3_i32(u_input.a.xyw, vec3<i32>(2147483647i, u_input.b, u_input.a.x)))), vec4<i32>(-13178i, -2147483647i, 2147483647i, u_input.a.x));
    global0 = _wgslsmith_f_op_f32(-1f);
    let var_2 = !(!(!any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))));
    let var_3 = !select(vec4<bool>(all(select(vec3<bool>(var_2, false, false), vec3<bool>(true, var_2, false), vec3<bool>(false, var_2, var_2))), false, func_1(~vec3<u32>(3282u, 33057u, 1u), 15496u, _wgslsmith_f_op_f32(f32(-1f) * -339f)), true), !vec4<bool>(!var_2, var_2, false, any(global2[_wgslsmith_index_u32(49908u, 22u)])), !(!(var_2 && var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 82866u, 1u), ~vec3<u32>(69419u, 0u, 64549u)), _wgslsmith_div_vec3_u32(vec3<u32>(34492u, 4294967295u, 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(17888u, 98567u, 7473u), vec3<u32>(54686u, 4294967295u, 0u), vec3<u32>(61229u, 131296u, 25129u)))), vec3<u32>(1u, 1u, firstLeadingBit(1u)), var_3.ywz), ~vec2<i32>(-var_1.x, ~(-2425i)), 1u, 519f, u_input.a.x);
}

