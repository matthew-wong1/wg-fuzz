struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec2<f32>(1078f, -623f)), Struct_1(vec2<f32>(1649f, 725f)), Struct_1(vec2<f32>(1000f, -1176f)), Struct_1(vec2<f32>(1885f, 274f)), Struct_1(vec2<f32>(-131f, 1672f)), Struct_1(vec2<f32>(315f, -1396f)), Struct_1(vec2<f32>(-1413f, -1000f)), Struct_1(vec2<f32>(-777f, -568f)), Struct_1(vec2<f32>(-1000f, -269f)), Struct_1(vec2<f32>(-139f, -502f)), Struct_1(vec2<f32>(138f, 933f)), Struct_1(vec2<f32>(-253f, -1290f)), Struct_1(vec2<f32>(412f, 936f)), Struct_1(vec2<f32>(1000f, 1000f)), Struct_1(vec2<f32>(463f, 983f)), Struct_1(vec2<f32>(-873f, 1341f)), Struct_1(vec2<f32>(-176f, -344f)));

var<private> global1: u32 = 1u;

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<f32>(311f, -585f)), Struct_1(vec2<f32>(-273f, -102f)), Struct_1(vec2<f32>(231f, -619f)), Struct_1(vec2<f32>(-626f, -501f)), Struct_1(vec2<f32>(-753f, 1344f)), Struct_1(vec2<f32>(1327f, -1116f)), Struct_1(vec2<f32>(-162f, -551f)), Struct_1(vec2<f32>(269f, 1827f)), Struct_1(vec2<f32>(-270f, 2583f)), Struct_1(vec2<f32>(920f, -196f)), Struct_1(vec2<f32>(1301f, -1188f)), Struct_1(vec2<f32>(-492f, 1000f)), Struct_1(vec2<f32>(1000f, -535f)), Struct_1(vec2<f32>(-189f, 159f)), Struct_1(vec2<f32>(1253f, 813f)), Struct_1(vec2<f32>(693f, 459f)), Struct_1(vec2<f32>(297f, 170f)), Struct_1(vec2<f32>(219f, -1000f)), Struct_1(vec2<f32>(124f, -237f)), Struct_1(vec2<f32>(456f, 601f)), Struct_1(vec2<f32>(1000f, -627f)), Struct_1(vec2<f32>(-239f, -1135f)));

var<private> global3: f32 = -1071f;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<i32>) -> vec3<f32> {
    let var_0 = vec3<bool>(all(select(vec4<bool>(false, true, true, arg_1 >= arg_0.x), vec4<bool>(true, true, -1i > arg_2.x, all(vec2<bool>(false, true))), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false)))), (!any(vec3<bool>(true, false, true)) & !all(vec4<bool>(false, false, false, true))) && (_wgslsmith_add_u32(1u, _wgslsmith_div_u32(arg_0.x, 28727u)) <= _wgslsmith_dot_vec4_u32(reverseBits(u_input.b), _wgslsmith_mod_vec4_u32(u_input.b, u_input.b))), any(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), true)));
    let var_1 = vec4<i32>(~firstLeadingBit(30860i & _wgslsmith_dot_vec4_i32(vec4<i32>(6171i, u_input.c.x, 4353i, 0i), vec4<i32>(-1i, u_input.c.x, arg_2.x, u_input.c.x))), -min(2147483647i, ~(-2147483647i >> (u_input.a % 32u))), u_input.c.x, u_input.c.x);
    global1 = select(arg_0.x, arg_1, true);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-256f, 1244f))))))));
    global0 = array<Struct_1, 17>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1135f * var_2.a.x), 2161f, _wgslsmith_f_op_f32(524f + var_2.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, var_2.a.x, var_2.a.x) + vec3<f32>(930f, -359f, var_2.a.x))))) + vec3<f32>(142f, _wgslsmith_f_op_f32(abs(var_2.a.x)), var_2.a.x));
}

fn func_2(arg_0: vec2<f32>) -> vec3<f32> {
    var var_0 = u_input.c.x >> (u_input.b.x % 32u);
    let var_1 = u_input.b.x;
    global3 = _wgslsmith_f_op_f32(abs(arg_0.x));
    global1 = var_1;
    global2 = array<Struct_1, 22>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, -2712f))) + vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-298f * _wgslsmith_f_op_f32(f32(-1f) * -424f)), _wgslsmith_f_op_f32(abs(1000f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_0.x, arg_0.x) + vec3<f32>(1208f, -1015f, -2330f)) - _wgslsmith_f_op_vec3_f32(func_3(u_input.b.yx, u_input.a, u_input.c)))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: vec3<u32>) -> i32 {
    return -9268i;
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_1, 17>();
    let var_0 = ~vec4<i32>(_wgslsmith_mod_i32(func_4(Struct_1(vec2<f32>(408f, 503f)), _wgslsmith_f_op_vec3_f32(func_2(vec2<f32>(-948f, -515f))), select(u_input.b.wxy, vec3<u32>(u_input.b.x, 7424u, 4294967295u), false), reverseBits(u_input.b.yzw)), 67790i), 2147483647i, ~_wgslsmith_mod_i32(-29078i, -u_input.c.x), 19591i);
    global3 = -128f;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1140f))), 665f);
    var var_2 = global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~(~u_input.b.wz), ~u_input.b.wx), firstTrailingBit(vec2<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.a, 84277u), u_input.a)))), 17u)];
    return Struct_1(var_2.a);
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> i32 {
    global3 = _wgslsmith_f_op_f32(-arg_1.a.x);
    global1 = u_input.a;
    var var_0 = vec4<i32>(1i, min(~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c, u_input.c), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, 0i, 65768i), u_input.c)), ~reverseBits(-27313i)), -9430i, (_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, -2147483647i, u_input.c.x, u_input.c.x), ~vec4<i32>(u_input.c.x, 1i, u_input.c.x, 28411i)) >> (arg_0 % 32u)) | ~(~u_input.c.x));
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    return firstTrailingBit(var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.b.x;
    var var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(~1i, u_input.c.x, select(_wgslsmith_mult_i32(-13034i ^ u_input.c.x, 1i), func_5(43932u, func_1()), true), -max(-u_input.c.x, _wgslsmith_mult_i32(u_input.c.x, u_input.c.x))), select(abs(vec4<i32>(u_input.c.x, 90300i, u_input.c.x, u_input.c.x) << (abs(u_input.b) % vec4<u32>(32u))), ~vec4<i32>(2147483647i, abs(-1i), ~(-2147483647i), i32(-1i) * -1i), true));
    global0 = array<Struct_1, 17>();
    let var_1 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-1430f, _wgslsmith_f_op_f32(abs(-1000f)), 1f, 325f));
}

