struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec2<u32>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(4294967295u, 3941u, 75075u), vec3<u32>(67637u, 90008u, 1u), vec3<u32>(1u, 40411u, 94147u), vec3<u32>(19881u, 1u, 40616u), vec3<u32>(0u, 92443u, 5448u), vec3<u32>(36453u, 0u, 0u), vec3<u32>(0u, 49062u, 27266u), vec3<u32>(4294967295u, 1u, 51241u), vec3<u32>(8643u, 53u, 21413u), vec3<u32>(0u, 0u, 7353u), vec3<u32>(1u, 0u, 16382u), vec3<u32>(2065u, 1u, 4294967295u), vec3<u32>(33263u, 4294967295u, 1u), vec3<u32>(0u, 4499u, 4294967295u), vec3<u32>(42913u, 4294967295u, 1u), vec3<u32>(1u, 24610u, 1u), vec3<u32>(0u, 11830u, 4294967295u), vec3<u32>(0u, 4294967295u, 46605u), vec3<u32>(10109u, 57013u, 61604u), vec3<u32>(50674u, 0u, 1u), vec3<u32>(33378u, 4294967295u, 1u), vec3<u32>(97634u, 1u, 1u), vec3<u32>(64172u, 10397u, 517u), vec3<u32>(0u, 30280u, 0u), vec3<u32>(20359u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 0u, 40870u), vec3<u32>(0u, 4294967295u, 18432u), vec3<u32>(8071u, 0u, 52939u), vec3<u32>(7050u, 1u, 4294967295u));

var<private> global3: Struct_1 = Struct_1(vec4<bool>(false, true, false, true), true, vec2<u32>(54187u, 1971u), true, 37930u);

var<private> global4: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<bool>(true, false, false, true), true, vec2<u32>(63892u, 24185u), false, 43020u), Struct_1(vec4<bool>(false, false, false, true), true, vec2<u32>(1u, 561u), true, 4294967295u), Struct_1(vec4<bool>(false, true, true, true), false, vec2<u32>(1u, 0u), false, 0u), Struct_1(vec4<bool>(true, false, true, true), true, vec2<u32>(64162u, 4294967295u), true, 0u), Struct_1(vec4<bool>(false, false, false, false), false, vec2<u32>(37168u, 80143u), false, 55134u), Struct_1(vec4<bool>(true, false, true, false), true, vec2<u32>(0u, 4294967295u), true, 22650u), Struct_1(vec4<bool>(true, true, false, true), false, vec2<u32>(47629u, 54872u), false, 4294967295u), Struct_1(vec4<bool>(true, true, true, false), false, vec2<u32>(4294967295u, 5133u), true, 13568u), Struct_1(vec4<bool>(false, false, false, false), true, vec2<u32>(0u, 0u), true, 69070u), Struct_1(vec4<bool>(true, true, false, true), true, vec2<u32>(1u, 4294967295u), true, 4294967295u), Struct_1(vec4<bool>(true, false, true, false), true, vec2<u32>(0u, 39250u), false, 7350u), Struct_1(vec4<bool>(true, false, true, true), false, vec2<u32>(23145u, 1u), true, 10710u), Struct_1(vec4<bool>(false, false, false, true), false, vec2<u32>(5150u, 0u), false, 1392u), Struct_1(vec4<bool>(true, true, true, false), false, vec2<u32>(2882u, 0u), true, 4294967295u), Struct_1(vec4<bool>(false, false, true, false), true, vec2<u32>(6465u, 14215u), false, 34258u), Struct_1(vec4<bool>(true, false, false, false), false, vec2<u32>(0u, 4294967295u), true, 50043u), Struct_1(vec4<bool>(true, false, false, false), false, vec2<u32>(62837u, 1796u), false, 4294967295u), Struct_1(vec4<bool>(true, false, true, false), false, vec2<u32>(2875u, 51775u), true, 0u), Struct_1(vec4<bool>(false, false, false, false), true, vec2<u32>(46106u, 4294967295u), true, 1u), Struct_1(vec4<bool>(false, false, true, true), false, vec2<u32>(14085u, 26369u), false, 39968u), Struct_1(vec4<bool>(false, false, false, false), false, vec2<u32>(1u, 0u), true, 100467u), Struct_1(vec4<bool>(true, true, true, true), true, vec2<u32>(16590u, 4294967295u), true, 4294967295u), Struct_1(vec4<bool>(true, true, true, false), false, vec2<u32>(0u, 10049u), false, 56272u), Struct_1(vec4<bool>(true, true, false, true), true, vec2<u32>(92450u, 4294967295u), false, 4294967295u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    let var_0 = global4[_wgslsmith_index_u32(~(~(4294967295u << (_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(1u, 27745u)), vec2<u32>(3846u, global0.x)) % 32u))), 24u)];
    global3 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.c.x, (1u << (firstTrailingBit(var_0.c.x) % 32u)) << (~(~48322u) % 32u), global3.c.x, 7260u), ~(~vec4<u32>(_wgslsmith_add_u32(1u, global3.e), global0.x, 29988u, global3.e))), 24u)];
    let var_1 = !vec4<bool>(true, true, arg_0.x, (true & var_0.d) || any(vec4<bool>(true, false, arg_0.x, arg_0.x)));
    let var_2 = global4[_wgslsmith_index_u32(4294967295u, 24u)];
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(2320f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(468f)), 737f)))), 444f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -377f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(720f, -216f, true))))));
    return u_input.a.x;
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    global4 = array<Struct_1, 24>();
    var var_0 = vec2<i32>(select(_wgslsmith_add_i32(-(i32(-1i) * -1467i), func_3(global3.a)), ~10613i, !(!(true && global3.d))), u_input.a.x);
    var var_1 = ~(~(~(~(~global0.x))));
    var var_2 = vec4<i32>(var_0.x, -min(~(-2147483647i), countOneBits(min(-11615i, arg_0.x))), arg_0.x & _wgslsmith_add_i32(arg_0.x, -u_input.b), var_0.x);
    var_0 = arg_0.zx | _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, ~2147483647i), arg_0.wy);
    return global4[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(~global3.e, global0.x)), 24u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> u32 {
    global3 = arg_0;
    let var_0 = vec2<i32>(abs(-max(-33625i, u_input.b)), 17903i);
    return abs(~(~_wgslsmith_sub_u32(global3.e | 49758u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_2.e, 4294967295u, 8315u), vec4<u32>(4294967295u, global0.x, arg_2.e, 48050u)))));
}

fn func_1(arg_0: vec4<i32>) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1310f);
    let var_1 = vec2<u32>(countOneBits(min(func_4(func_2(u_input.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)), Struct_1(vec4<bool>(true, true, true, true), global3.b, vec2<u32>(1u, global3.e), global3.d, global3.c.x)), ~_wgslsmith_div_u32(1u, global0.x))), global3.c.x);
    global4 = array<Struct_1, 24>();
    var var_2 = ~vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, ~global0.x), var_1.x), global0.x, min(_wgslsmith_mod_u32(global0.x, 1u), global3.e), 9217u);
    var var_3 = -859f;
    return StorageBuffer(vec4<u32>(1u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(min(var_2.zwy, vec3<u32>(0u, global3.c.x, 0u)), _wgslsmith_add_vec3_u32(global2[_wgslsmith_index_u32(global3.c.x, 29u)], vec3<u32>(26238u, var_1.x, var_2.x))), var_1.x), 1u, _wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(global3.c.x, 34792u, var_1.x, 47952u)), _wgslsmith_div_vec4_u32(select(vec4<u32>(4294967295u, 35040u, 0u, global0.x), vec4<u32>(4294967295u, var_1.x, global0.x, global0.x), global3.b), select(vec4<u32>(var_1.x, 22598u, 0u, 43719u), vec4<u32>(1u, var_1.x, global0.x, var_1.x), global3.d)))), abs(reverseBits(vec4<u32>(var_2.x, 4294967295u, 4294967295u, 49700u))) | ~(~abs(vec4<u32>(var_2.x, 31058u, 0u, var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 29>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1056f)) + _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(664f - 1229f)))), 1f);
    let var_1 = vec2<bool>(false, false | all(global3.a.yzx));
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(-u_input.b ^ ~_wgslsmith_div_i32(-2147483647i, u_input.b), -u_input.a.x), firstTrailingBit(abs(3672i)) & ~(_wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(-1i, 1i)) ^ select(u_input.c, 7487i, var_1.x)));
    let x = u_input.a;
    s_output = func_1(~abs(vec4<i32>(-1i) * -vec4<i32>(u_input.c, u_input.c, -17086i, -19979i)));
}

