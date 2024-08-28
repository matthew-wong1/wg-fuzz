struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: Struct_3,
    e: vec4<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 6>;

var<private> global1: array<Struct_4, 21>;

var<private> global2: bool = false;

var<private> global3: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true));

var<private> global4: bool = true;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: f32, arg_3: f32) -> f32 {
    var var_0 = -1249f;
    global1 = array<Struct_4, 21>();
    let var_1 = Struct_3(false, u_input.b.x, arg_3, true);
    var var_2 = _wgslsmith_clamp_i32(-1i, var_1.b, firstTrailingBit(~u_input.b.x));
    global2 = false;
    return 1246f;
}

fn func_2() -> bool {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -272f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(Struct_2(vec2<u32>(1u, 29775u), Struct_1(vec4<f32>(-293f, -114f, -623f, 206f)), Struct_1(vec4<f32>(427f, -191f, -437f, 443f)), true), true, 435f, 745f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-703f, _wgslsmith_f_op_f32(f32(-1f) * -761f)) - -1636f)));
    return any(select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(true, true)), !all(vec3<bool>(true, false, false)), all(global3[_wgslsmith_index_u32(1u, 7u)])), !(!global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 70546u), 7u)])));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: i32) -> u32 {
    global4 = func_2();
    var var_0 = u_input.a;
    var var_1 = !select(select(vec2<bool>(true | arg_1.x, true), !(!arg_1.yy), u_input.a.x < u_input.b.x), vec2<bool>(true, true), vec2<bool>(!all(vec4<bool>(false, arg_1.x, true, arg_1.x)), all(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true))));
    var var_2 = select(vec3<bool>(all(!vec4<bool>(var_1.x, false, true, true)), ~_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(0u, 6u)], vec3<u32>(4294967295u, 1u, arg_0.x)) == ~arg_0.x, true), select(!(!global3[_wgslsmith_index_u32(arg_0.x, 7u)]), vec3<bool>(func_2(), true, any(select(vec4<bool>(false, var_1.x, arg_1.x, arg_1.x), vec4<bool>(false, arg_1.x, var_1.x, false), true))), true), vec3<bool>(!(true && var_1.x), arg_1.x & false, arg_1.x && select(false, true != arg_1.x, true)));
    let var_3 = ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 0u), vec4<u32>(arg_0.x, 1u, arg_0.x, arg_0.x) | vec4<u32>(arg_0.x, arg_0.x, 96665u, 85502u)), _wgslsmith_dot_vec3_u32(vec3<u32>(~arg_0.x, min(16086u, 44991u), 0u), vec3<u32>(firstTrailingBit(1u), arg_0.x, countOneBits(arg_0.x))));
    return _wgslsmith_mod_u32(abs(~(~arg_0.x)), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(589f + 368f), _wgslsmith_f_op_f32(round(-229f)));
    let var_1 = Struct_3(true, -2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) + 715f), !any(!global3[_wgslsmith_index_u32(func_1(vec2<u32>(4128u, 4294967295u), global3[_wgslsmith_index_u32(45608u, 7u)], u_input.a.x), 7u)]));
    var var_2 = Struct_5(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(277f, -673f, var_0.x, var_0.x) * vec4<f32>(var_0.x, var_1.c, 1441f, var_1.c))) + vec4<f32>(_wgslsmith_f_op_f32(626f * var_1.c), _wgslsmith_f_op_f32(var_1.c + var_1.c), _wgslsmith_f_op_f32(var_0.x * var_1.c), var_1.c))), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(max(vec3<i32>(-44615i, 0i, -1i), vec3<i32>(u_input.a.x, var_1.b, var_1.b)), ~vec3<i32>(-1i, 7563i, 60365i)), ~var_1.b ^ ~(-18381i)), u_input.b.x), func_2());
    var var_3 = Struct_2(vec2<u32>(27425u, 1u), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.a.x, 583f, var_2.a.a.x, var_1.c)) - vec4<f32>(180f, -1502f, var_1.c, var_2.a.a.x)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_2.a.a))))), var_2.a, var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec3_i32(select(vec3<i32>(var_2.b.x, var_2.b.x, var_1.b) & vec3<i32>(2147483647i, 1i, -7878i), vec3<i32>(var_2.b.x, -1i, var_2.b.x), !global3[_wgslsmith_index_u32(46247u, 7u)]), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_2.b.x, 0i), vec3<i32>(var_2.b.x, -45734i, 64123i)), vec3<i32>(1i, u_input.b.x, 2147483647i) ^ vec3<i32>(-15611i, var_2.b.x, var_2.b.x))), select(_wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_3.a.x, 6620u, 4939u), vec4<u32>(0u, 51798u, var_3.a.x, 24809u)), ~(vec4<u32>(var_3.a.x, var_3.a.x, 0u, 4294967295u) >> (vec4<u32>(var_3.a.x, 0u, 0u, 4294967295u) % vec4<u32>(32u)))), abs(vec4<u32>(var_3.a.x, reverseBits(8073u), var_3.a.x, 4294967295u)), !all(vec2<bool>(var_2.c, false))));
}

