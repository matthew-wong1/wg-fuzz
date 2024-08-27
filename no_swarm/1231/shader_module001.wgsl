struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<f32>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 18>;

var<private> global1: bool;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3;
    global0 = array<vec3<bool>, 18>();
    global1 = !any(!select(global0[_wgslsmith_index_u32(1u, 18u)], vec3<bool>(true, true, true), vec3<bool>(arg_3.b, true, true))) | false;
    var var_1 = _wgslsmith_dot_vec4_i32(~reverseBits(vec4<i32>(-1i) * -vec4<i32>(1i, arg_1.b.x, 2147483647i, 0i)), vec4<i32>(1i, _wgslsmith_clamp_i32(~(-61800i), arg_3.a.x, 1i), arg_1.b.x, select(_wgslsmith_sub_i32(-18432i, abs(arg_1.b.x)), -1i, false)));
    return ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(49337u, 4294967295u), vec2<u32>(arg_0, 34659u)), vec2<u32>(arg_0, u_input.b) << (vec2<u32>(1u, arg_0) % vec2<u32>(32u))), vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 874u), vec2<u32>(u_input.b, 4294967295u)), ~(4294967295u & arg_0)));
}

fn func_3(arg_0: Struct_1) -> bool {
    global1 = func_2(_wgslsmith_sub_u32(~(u_input.b & u_input.b), _wgslsmith_mod_u32(55610u, u_input.b)), Struct_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, arg_0.e.x, 1745f, -188f)))), _wgslsmith_add_vec3_i32(arg_0.a, arg_0.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e.x, 1f)), Struct_1(_wgslsmith_mult_vec3_i32(arg_0.a, ~arg_0.a), !all(global0[_wgslsmith_index_u32(4294967295u, 18u)]), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.e.x), 1179f, _wgslsmith_f_op_f32(arg_0.e.x - -403f)), ~(-702i), vec3<f32>(-2079f, arg_0.e.x, _wgslsmith_f_op_f32(-arg_0.e.x)))) <= 4294967295u;
    var var_0 = arg_0;
    global1 = any(!vec3<bool>(any(select(vec4<bool>(arg_0.b, true, false, true), vec4<bool>(true, arg_0.b, var_0.b, arg_0.b), arg_0.b)), arg_0.b | arg_0.b, u_input.b != u_input.b));
    let var_1 = arg_0;
    var_0 = arg_0;
    return !(!arg_0.b);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = Struct_2(~abs(vec2<u32>(1u, countOneBits(u_input.b))), vec2<i32>(-1i, select(u_input.a, abs(_wgslsmith_sub_i32(arg_2.x, u_input.d)), arg_1.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(select(vec3<u32>(59921u, arg_0.x, arg_0.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 20707u, 4294967295u), vec3<u32>(arg_0.x, 0u, 4294967295u)), arg_1.x), vec3<u32>(arg_0.x, arg_0.x, ~1u)), vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, arg_0.x), arg_0), arg_0.x, ~4294967295u)), arg_1.x, true);
    var var_1 = countOneBits(vec4<i32>(_wgslsmith_sub_i32(countOneBits(reverseBits(arg_2.x)), 10803i), countOneBits(_wgslsmith_mult_i32(0i, u_input.a)), ~arg_2.x, reverseBits(u_input.d) | u_input.d));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -158f), _wgslsmith_f_op_f32(f32(-1f) * -166f));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(floor(var_2.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-340f))), select(select(var_0.e | var_0.e, true, arg_1.x), _wgslsmith_f_op_f32(var_2.x + -170f) < -316f, !(207f != var_2.x)))));
    var var_3 = var_2.x;
    return Struct_2(arg_0, (vec2<i32>(_wgslsmith_add_i32(-8376i, var_0.b.x), -1i) >> ((arg_0 << (vec2<u32>(var_0.a.x, 0u) % vec2<u32>(32u))) % vec2<u32>(32u))) << (var_0.a % vec2<u32>(32u)), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(901f + var_2.x))) >= _wgslsmith_f_op_f32(step(-202f, _wgslsmith_f_op_f32(-var_2.x))), arg_1.x);
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: vec4<f32>) -> Struct_2 {
    global0 = array<vec3<bool>, 18>();
    var var_0 = func_4(~vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.b, 0u), u_input.b ^ 4294967295u), _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b, u_input.b), _wgslsmith_mult_u32(u_input.b, u_input.b))), vec4<bool>(!(2147483647i <= _wgslsmith_div_i32(arg_0, u_input.a)), (countOneBits(-18391i) << (func_2(u_input.b, Struct_3(arg_2, vec3<i32>(u_input.d, u_input.d, arg_0)), vec2<f32>(-1609f, arg_1.x), Struct_1(vec3<i32>(21407i, -16808i, u_input.a), false, arg_1.xyy, 1i, arg_2.zwz)) % 32u)) <= 45741i, true, all(vec3<bool>(true, select(true, false, true), func_3(Struct_1(vec3<i32>(arg_0, 0i, arg_0), false, arg_2.yzx, arg_0, arg_1.yyy))))), ~firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, -24829i), vec3<i32>(1i, -8200i, arg_0)), 1i)));
    let var_1 = 457f;
    let var_2 = firstTrailingBit(reverseBits(vec3<i32>(var_0.b.x, min(~u_input.a, -1i), func_4(_wgslsmith_add_vec2_u32(var_0.a, vec2<u32>(var_0.c, 14423u)), !vec4<bool>(true, var_0.e, var_0.e, var_0.d), -var_0.b).b.x)));
    let var_3 = 0i;
    return func_4(var_0.a, vec4<bool>(all(!(!vec2<bool>(false, var_0.e))), any(!select(vec3<bool>(var_0.d, var_0.e, false), vec3<bool>(false, var_0.e, true), true)), !(!(!var_0.e)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 29509u, 73020u), vec3<u32>(0u, var_0.c, 36745u), vec3<u32>(var_0.c, 0u, u_input.b)), vec3<u32>(11049u, var_0.a.x, 104935u)) <= countOneBits(var_0.c)), vec2<i32>(var_2.x << (1u % 32u), 2147483647i));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> vec2<i32> {
    global0 = array<vec3<bool>, 18>();
    var var_0 = arg_1.b;
    global0 = array<vec3<bool>, 18>();
    global0 = array<vec3<bool>, 18>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-224f, 1543f, -205f)))));
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(countOneBits(vec4<i32>(-1i, ~u_input.d, u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(12499i, u_input.a, 18750i, u_input.d), vec4<i32>(u_input.c, u_input.a, u_input.d, 1i))))), func_5(any(vec2<bool>(false, true)) || !any(vec4<bool>(false, true, true, true)), func_1(u_input.a, vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1111f, 508f, 685f, 753f)))), Struct_1(abs(vec3<i32>(-9352i, -1i, -1i)) | firstTrailingBit(vec3<i32>(u_input.c, -1i, -2147483647i)), func_3(Struct_1(vec3<i32>(u_input.c, 60201i, 2147483647i), false, vec3<f32>(-1851f, 235f, -159f), u_input.d, vec3<f32>(-1112f, -147f, -1112f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 815f, 717f)), u_input.a, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-540f, 962f, -806f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1362f, -661f, -875f))))), u_input.b), firstTrailingBit(7702i) & 1i);
}

