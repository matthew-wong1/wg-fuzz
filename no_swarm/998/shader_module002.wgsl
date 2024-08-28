struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: vec3<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 6>;

var<private> global1: array<vec3<f32>, 6>;

var<private> global2: i32 = 2147483647i;

var<private> global3: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(-1018f, 995f), vec2<f32>(-2723f, -296f), vec2<f32>(1236f, -246f), vec2<f32>(-993f, 512f), vec2<f32>(1441f, 558f), vec2<f32>(-1059f, -1000f), vec2<f32>(893f, 199f), vec2<f32>(-244f, 1000f), vec2<f32>(-258f, -1271f), vec2<f32>(624f, -550f), vec2<f32>(499f, 1000f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: bool, arg_3: vec4<i32>) -> vec4<i32> {
    global2 = select(u_input.b.x, select(-1i, ~_wgslsmith_sub_i32(u_input.b.x, 16767i), true), all(!select(!vec3<bool>(true, arg_2, false), arg_0.d, false)));
    global2 = arg_3.x;
    global3 = array<vec2<f32>, 11>();
    let var_0 = ~_wgslsmith_mult_vec2_u32(~(u_input.c.xz | firstLeadingBit(vec2<u32>(arg_0.e.b, arg_0.e.a.b.x))), ~vec2<u32>(~u_input.a.x, ~113u));
    return ~arg_3;
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: vec3<f32>, arg_3: vec3<f32>) -> vec3<bool> {
    var var_0 = _wgslsmith_dot_vec4_i32(~(-abs(vec4<i32>(arg_0.x, 39133i, -12273i, u_input.b.x))) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.a.x, 0u, u_input.c.x) & u_input.a, vec4<u32>(u_input.a.x, 66055u, u_input.a.x, 4294967295u)), u_input.a.x, ~u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.ww), max(59887u, u_input.c.x))) % vec4<u32>(32u)), vec4<i32>(countOneBits(min(-2147483647i >> (u_input.a.x % 32u), -1i)), 2147483647i, ~u_input.b.x, 1i));
    let var_1 = _wgslsmith_mult_u32(abs(u_input.a.x), u_input.a.x);
    var var_2 = Struct_4(~(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x) ^ ~arg_0.x) <= u_input.b.x, select(vec3<bool>(false, false, false), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(false, any(vec2<bool>(true, true)), true), true && all(vec4<bool>(false, true, false, false))), false), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(25576i, 32606i, reverseBits(arg_0.x)), firstLeadingBit(min(vec3<i32>(arg_0.x, arg_0.x, 1i), vec3<i32>(u_input.b.x, u_input.b.x, arg_0.x))))), vec3<bool>(true, !(false | all(vec4<bool>(false, true, true, false))), false), Struct_2(Struct_1(_wgslsmith_mult_vec4_i32(func_3(Struct_4(true, vec3<bool>(true, false, true), 0i, vec3<bool>(true, true, true), Struct_2(Struct_1(vec4<i32>(arg_0.x, u_input.b.x, 2147483647i, u_input.b.x), u_input.a.xy), 0u, u_input.a.x)), vec2<f32>(arg_1, arg_3.x), false, vec4<i32>(u_input.b.x, arg_0.x, arg_0.x, arg_0.x)), ~vec4<i32>(1i, 2147483647i, 1i, arg_0.x)), vec2<u32>(_wgslsmith_mod_u32(var_1, var_1), var_1)), ~_wgslsmith_mod_u32(firstTrailingBit(var_1), var_1), u_input.a.x));
    var var_3 = var_2.e;
    global0 = array<vec2<bool>, 6>();
    return select(var_2.b, select(select(!(!vec3<bool>(var_2.b.x, true, var_2.a)), select(select(vec3<bool>(var_2.d.x, var_2.b.x, false), var_2.b, var_2.d.x), var_2.d, var_2.b), !select(var_2.d, var_2.d, var_2.b)), vec3<bool>(true, !(1u >= var_3.a.b.x), true), var_2.d), !(!var_2.b));
}

fn func_1() -> vec2<u32> {
    var var_0 = select(select(func_2(u_input.b.zz, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1142f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -216f), _wgslsmith_f_op_f32(-576f * -503f), _wgslsmith_f_op_f32(410f * 858f)), global1[_wgslsmith_index_u32(u_input.c.x, 6u)]), select(func_2(_wgslsmith_mult_vec2_i32(vec2<i32>(25574i, u_input.b.x), vec2<i32>(-17006i, -13620i)), _wgslsmith_f_op_f32(f32(-1f) * -1327f), global1[_wgslsmith_index_u32(u_input.a.x, 6u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(739f, -424f, -2028f))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), true), vec3<bool>(true, all(global0[_wgslsmith_index_u32(u_input.c.x, 6u)]), 2147483647i > u_input.b.x)), vec3<bool>(~u_input.a.x < u_input.c.x, !any(global0[_wgslsmith_index_u32(u_input.a.x, 6u)]), all(vec4<bool>(true, true, true, true)))), !vec3<bool>(select(true, true, true) || all(vec3<bool>(false, true, false)), any(vec4<bool>(false, false, false, true)) & all(vec3<bool>(false, true, true)), true), (u_input.b.x < -1i) | true);
    global3 = array<vec2<f32>, 11>();
    global0 = array<vec2<bool>, 6>();
    var var_1 = u_input.b.x;
    global2 = firstLeadingBit(u_input.b.x);
    return ~_wgslsmith_clamp_vec2_u32(((u_input.c.zz >> (u_input.c.xy % vec2<u32>(32u))) | u_input.c.xz) ^ vec2<u32>(u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 1u, 4294967295u), vec4<u32>(4294967295u, u_input.a.x, u_input.c.x, 4294967295u))), reverseBits(vec2<u32>(0u, u_input.a.x)) | min(~vec2<u32>(u_input.c.x, 4294967295u), u_input.a.zx), vec2<u32>(u_input.c.x, u_input.a.x) | _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), reverseBits(vec2<u32>(4366u, 42042u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a >> (u_input.a % vec4<u32>(32u)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-359f, 1595f)) + -359f), _wgslsmith_f_op_f32(ceil(-244f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1096f)) * _wgslsmith_f_op_f32(f32(-1f) * -684f)), -1116f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-713f, 192f, 405f, 1000f) * vec4<f32>(571f, -876f, 1853f, 1053f))))), u_input.b.xy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))));
}

