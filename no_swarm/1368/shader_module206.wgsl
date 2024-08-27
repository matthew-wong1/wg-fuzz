struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 18>;

var<private> global1: array<u32, 23>;

var<private> global2: Struct_1 = Struct_1(true, vec3<i32>(36516i, -9055i, 30832i), vec2<bool>(false, true));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    global0 = array<vec3<i32>, 18>();
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(614f, -1463f, 450f, 1000f), vec4<f32>(1074f, -751f, -102f, -179f))), vec4<f32>(123f, 2145f, 1208f, -413f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-957f, 1479f, 431f, 359f) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(559f, 1000f, 313f, -654f))))), vec4<f32>(-907f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(550f, -766f) - -1747f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(589f * -366f))), -1732f), ~104738u < (u_input.d.x << (~25715u % 32u))))));
    let var_1 = Struct_3(Struct_2(select(vec2<bool>(true, true), arg_0.c, true), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.wz))), 1i), var_0.x);
    let var_2 = var_1;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-301f, -274f, var_2.a.b.x, var_2.b) * vec4<f32>(var_2.a.b.x, 1020f, var_0.x, var_1.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1414f, var_0.x, var_2.b, -868f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.a.b.x, 577f, var_0.x, -988f), vec4<f32>(481f, var_2.b, 543f, -689f))))), false))));
    return _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.d.x, 23u)], firstTrailingBit(u_input.c), u_input.d.x, abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 23u)], 23u)])), (vec4<u32>(u_input.d.x, 4855u, 27870u, 43752u) << (vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], u_input.a.x, global1[_wgslsmith_index_u32(u_input.c, 23u)], 1u) % vec4<u32>(32u))) | _wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], 1u, global1[_wgslsmith_index_u32(2662u, 23u)], 1u), vec4<u32>(0u, 29583u, 0u, global1[_wgslsmith_index_u32(0u, 23u)]))), abs(_wgslsmith_div_vec4_u32(vec4<u32>(16577u, 4294967295u, 1u, 22194u) << (vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.c, 23u)], 4294967295u, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(1u, u_input.d.x, 0u, global1[_wgslsmith_index_u32(23926u, 23u)])))), abs(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(62352u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 23u)], 23u)]), vec2<u32>(0u, u_input.b)), ~u_input.c), _wgslsmith_add_u32(~u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29739u, 23u)], 23u)] & 0u), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.d, u_input.a), 23u)], 23u)], _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], u_input.a.x), vec2<u32>(20095u, 53658u))), ~global1[_wgslsmith_index_u32(39668u, 23u)])));
}

fn func_2() -> Struct_1 {
    let var_0 = func_3(Struct_1(false | global2.c.x, u_input.e & global0[_wgslsmith_index_u32(~53103u, 18u)], select(global2.c, select(select(vec2<bool>(true, global2.c.x), vec2<bool>(global2.a, true), global2.c), !global2.c, false), true)));
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(~global1[_wgslsmith_index_u32(16013u >> ((var_0.x & 0u) % 32u), 23u)], var_0.x, u_input.d.x, u_input.a.x), ~var_0);
    var var_2 = Struct_1(all(select(vec3<bool>(true, true, all(global2.c)), !vec3<bool>(true, global2.a, global2.a), !select(vec3<bool>(true, false, global2.c.x), vec3<bool>(true, global2.c.x, global2.c.x), global2.c.x))), global2.b, !vec2<bool>(any(select(vec2<bool>(global2.a, false), vec2<bool>(global2.c.x, true), global2.c)), true));
    let var_3 = Struct_3(Struct_2(var_2.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(470f, -1485f), vec2<f32>(457f, 665f)))), -u_input.e.x), _wgslsmith_f_op_f32(f32(-1f) * -333f));
    let var_4 = var_3.a;
    return Struct_1(var_2.a, max(min(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, reverseBits(var_0.x)), 18u)], var_2.b), reverseBits(var_2.b) << (min(~vec3<u32>(var_0.x, var_1, 4294967295u), vec3<u32>(var_1, 26142u, u_input.b) << (vec3<u32>(var_0.x, var_1, var_0.x) % vec3<u32>(32u))) % vec3<u32>(32u))), !vec2<bool>(!(true | global2.c.x), var_4.a.x));
}

fn func_1() -> Struct_3 {
    var var_0 = func_2();
    global2 = Struct_1(any(!vec3<bool>(false, true, var_0.a)), -vec3<i32>(global2.b.x, global2.b.x, -global2.b.x), !select(global2.c, func_2().c, any(func_2().c)));
    let var_1 = Struct_2(var_0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(385f, 339f)))))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -713f), _wgslsmith_f_op_f32(floor(1000f)))), var_0.b.x << (~abs(1u) % 32u));
    var var_2 = Struct_2(vec2<bool>(true, (max(global2.b.x, global2.b.x) | ~3800i) < ~firstTrailingBit(global2.b.x)), vec2<f32>(952f, -318f), 51621i);
    let var_3 = !var_1.a;
    return Struct_3(Struct_2(vec2<bool>(true, false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_2.b.x, var_2.b.x), var_1.b))), -_wgslsmith_clamp_i32(var_2.c, -2147483647i, var_1.c) & -1i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x + var_1.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.b.x, 683f))), 516f))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> Struct_3 {
    var var_0 = arg_1.a;
    global2 = Struct_1(var_0.a.x, -u_input.e, func_2().c);
    var_0 = func_1().a;
    var var_1 = vec4<u32>(abs(1u), 1u, 49442u, ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32((u_input.a ^ u_input.d) | select(u_input.a, vec2<u32>(1u, 1u), var_0.a), countOneBits(~u_input.d)), 23u)]);
    let var_2 = arg_1.a;
    return arg_1;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: vec3<bool>) -> vec2<f32> {
    var var_0 = ~vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-1i, arg_1.a.c), -1i), -global2.b.x);
    global2 = Struct_1(true, -vec3<i32>(firstLeadingBit(i32(-1i) * -1i), -1i, _wgslsmith_dot_vec3_i32(-global0[_wgslsmith_index_u32(0u, 18u)], _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.e.x, 0i), vec3<i32>(var_0.x, 2147483647i, -1i)))), vec2<bool>(func_2().a, all(arg_0.xz)));
    var var_1 = ~countOneBits(vec4<i32>(~0i, arg_1.a.c, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), global2.b.xz), ~(-1i))) | abs(~(~select(vec4<i32>(-53181i, -1i, 1i, global2.b.x), vec4<i32>(2147483647i, u_input.e.x, u_input.e.x, u_input.e.x), arg_0)));
    var_0 = vec2<i32>(_wgslsmith_clamp_i32(~var_0.x, min(_wgslsmith_dot_vec3_i32(~u_input.e, vec3<i32>(2147483647i, 2147483647i, 21788i) << (vec3<u32>(0u, u_input.b, global1[_wgslsmith_index_u32(u_input.c, 23u)]) % vec3<u32>(32u))), ~_wgslsmith_add_i32(0i, 2147483647i)), ~1i), -9726i);
    let var_2 = _wgslsmith_mod_i32(-var_1.x, _wgslsmith_mod_i32(-28445i, u_input.e.x));
    return arg_1.a.b;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(arg_1.b + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), 1292f));
    var var_1 = !vec2<bool>(arg_0.a.x, func_2().a);
    var var_2 = func_2();
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_div_f32(128f, -126f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)));
    let var_3 = var_2.b.yx;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 23>();
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-551f + 334f)));
    global2 = func_6(Struct_2(global2.c, _wgslsmith_f_op_vec2_f32(func_5(vec4<bool>(!global2.a, global2.a, global2.c.x || global2.c.x, true), func_4(Struct_3(Struct_2(vec2<bool>(true, false), vec2<f32>(var_0, var_0), 1i), var_0), func_1()), !vec3<bool>(true, true, global2.c.x), select(!vec3<bool>(false, global2.c.x, true), select(vec3<bool>(global2.a, true, false), vec3<bool>(global2.c.x, global2.c.x, global2.a), vec3<bool>(true, global2.a, global2.a)), !global2.a))), ~global2.b.x), func_1());
    global0 = array<vec3<i32>, 18>();
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-1f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-347f, var_0, false)) + 1536f))), var_0));
    global2 = func_6(Struct_2(global2.c, vec2<f32>(-295f, _wgslsmith_f_op_f32(-var_1)), i32(-1i) * -2147483647i), Struct_3(Struct_2(global2.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(658f, 810f)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0, var_0)))), u_input.e.x), _wgslsmith_f_op_f32(min(var_0, -154f))));
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.c & ~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(u_input.d.x, 23u)], 5165u)), global2.b.x, u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -199f), global2.b.zy & -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.e.x, u_input.e.x) >> (vec2<u32>(13528u, 2989u) % vec2<u32>(32u)), ~global2.b.zz));
}

