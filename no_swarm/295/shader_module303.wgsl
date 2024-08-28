struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: bool,
    d: vec3<u32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(-1000f), Struct_1(-862f), Struct_1(-1002f), Struct_1(1665f), Struct_1(-644f));

var<private> global1: array<u32, 28> = array<u32, 28>(8455u, 65427u, 39065u, 1u, 2839u, 3096u, 11400u, 45227u, 50077u, 1u, 4241u, 4294967295u, 44088u, 4294967295u, 0u, 0u, 26353u, 134341u, 9189u, 0u, 0u, 23834u, 0u, 19966u, 16883u, 4294967295u, 65611u, 1u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: f32, arg_3: Struct_2) -> u32 {
    global1 = array<u32, 28>();
    global0 = array<Struct_1, 5>();
    let var_0 = Struct_1(-476f);
    let var_1 = 121f;
    global1 = array<u32, 28>();
    return _wgslsmith_add_u32(~u_input.a.x, ~1u);
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec4<u32>) -> f32 {
    global0 = array<Struct_1, 5>();
    var var_0 = ~11368u > arg_2.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-203f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(733f - -396f)) + 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1346f)))) + 423f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -448f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-587f, 688f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1197f, -1040f, 1908f, -1816f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(358f, 472f, 717f, 1198f))))))));
    var_0 = select(true, select(true && (_wgslsmith_f_op_f32(f32(-1f) * -669f) > _wgslsmith_div_f32(var_1.x, -947f)), _wgslsmith_f_op_f32(-var_1.x) <= 636f, true), true);
    var var_2 = global0[_wgslsmith_index_u32(arg_0, 5u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(step(var_1.x, -1523f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, var_1.x)) + 153f));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1299f + 1000f) * _wgslsmith_f_op_f32(-arg_1.a.a)))));
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(abs(global1[_wgslsmith_index_u32(u_input.b, 28u)]), countOneBits(4294967295u)), 36687u) ^ (u_input.b | _wgslsmith_add_u32(~global1[_wgslsmith_index_u32(0u, 28u)], 0u)), 5u)], arg_1.b, Struct_1(_wgslsmith_f_op_f32(136f - -1000f)));
    let var_2 = !vec2<bool>(all(vec2<bool>(true, select(false, true, true))), true);
    let var_3 = _wgslsmith_f_op_f32(func_4(~_wgslsmith_sub_u32(~(1u << (u_input.b % 32u)), func_3(~(-62989i), Struct_3(vec2<f32>(arg_0.b.a, 899f), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 28u)], 28u)], true, u_input.a), _wgslsmith_f_op_f32(-150f - var_0), arg_0)), 1i, ~(~abs(~vec4<u32>(global1[_wgslsmith_index_u32(61888u, 28u)], 1185u, u_input.b, global1[_wgslsmith_index_u32(4294967295u, 28u)])))));
    global0 = array<Struct_1, 5>();
    return Struct_2(Struct_1(arg_1.b.a), arg_0.c, Struct_1(var_3));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(reverseBits(111542u), 5u)];
    var var_1 = false;
    let var_2 = Struct_3(vec2<f32>(var_0.a, _wgslsmith_f_op_f32(trunc(arg_0.c.a))), 1u, arg_1.x, countOneBits(_wgslsmith_add_vec3_u32(u_input.a, u_input.a)));
    let var_3 = func_2(Struct_2(func_2(Struct_2(arg_0.c, Struct_1(var_2.a.x), global0[_wgslsmith_index_u32(u_input.d ^ 79979u, 5u)]), arg_0).b, arg_0.c, func_2(arg_0, func_2(arg_0, arg_0)).a), arg_0);
    let var_4 = global1[_wgslsmith_index_u32(~24332u, 28u)];
    return 4294967295u;
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))))), _wgslsmith_sub_u32(u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 28u)]), true, vec3<u32>(max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.yy, select(vec2<u32>(global1[_wgslsmith_index_u32(u_input.b, 28u)], global1[_wgslsmith_index_u32(0u, 28u)]), u_input.a.yy, vec2<bool>(true, true))), 28u)], 28u)], ~_wgslsmith_add_u32(0u, global1[_wgslsmith_index_u32(0u, 28u)])), _wgslsmith_mod_u32(u_input.d, ~u_input.d), global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(48673u, 28u)], 1u)), 28u)]));
    let var_1 = ~vec4<u32>(func_5(func_2(Struct_2(Struct_1(var_0.a.x), Struct_1(arg_0), Struct_1(121f)), Struct_2(Struct_1(arg_0), global0[_wgslsmith_index_u32(var_0.b, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)])), vec2<bool>(false, var_0.c)) >> (12847u % 32u), 4294967295u, ~firstLeadingBit(min(0u, global1[_wgslsmith_index_u32(var_0.b, 28u)])), var_0.b);
    global1 = array<u32, 28>();
    let var_2 = !vec2<bool>(var_0.c, var_0.c);
    global0 = array<Struct_1, 5>();
    return 243f;
}

fn func_6(arg_0: f32) -> Struct_1 {
    global1 = array<u32, 28>();
    var var_0 = select(!vec3<bool>(true, true, all(vec4<bool>(true, false, false, false))), vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), true), !select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, false, false), any(vec2<bool>(false, true))), select(vec3<bool>(true, true, true), vec3<bool>(-197f >= arg_0, true, true), all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true))))));
    var_0 = !(!(!select(select(vec3<bool>(true, var_0.x, true), vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, true, true)), vec3<bool>(var_0.x, false, true), select(vec3<bool>(var_0.x, false, true), vec3<bool>(false, true, false), vec3<bool>(var_0.x, var_0.x, var_0.x)))));
    var_0 = select(vec3<bool>(true, false, true), vec3<bool>(!(!var_0.x), !all(vec2<bool>(var_0.x, var_0.x)) | true, !var_0.x), !var_0.x);
    let var_1 = Struct_2(func_2(Struct_2(Struct_1(arg_0), func_2(Struct_2(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 28u)], 5u)], global0[_wgslsmith_index_u32(15056u, 5u)], Struct_1(arg_0)), Struct_2(Struct_1(arg_0), Struct_1(-454f), Struct_1(589f))).c, Struct_1(_wgslsmith_f_op_f32(arg_0 * arg_0))), func_2(func_2(func_2(Struct_2(global0[_wgslsmith_index_u32(30203u, 5u)], Struct_1(-1000f), Struct_1(-355f)), Struct_2(Struct_1(507f), global0[_wgslsmith_index_u32(u_input.b, 5u)], Struct_1(arg_0))), func_2(Struct_2(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], 5u)], Struct_1(237f), Struct_1(arg_0)), Struct_2(Struct_1(-296f), Struct_1(arg_0), global0[_wgslsmith_index_u32(0u, 5u)]))), Struct_2(Struct_1(arg_0), func_2(Struct_2(Struct_1(-2696f), Struct_1(961f), global0[_wgslsmith_index_u32(u_input.b, 5u)]), Struct_2(Struct_1(arg_0), global0[_wgslsmith_index_u32(4294967295u, 5u)], Struct_1(arg_0))).a, Struct_1(164f)))).c, Struct_1(_wgslsmith_f_op_f32(-arg_0)), func_2(Struct_2(Struct_1(379f), func_2(func_2(Struct_2(global0[_wgslsmith_index_u32(3129u, 5u)], Struct_1(-1223f), global0[_wgslsmith_index_u32(u_input.b, 5u)]), Struct_2(Struct_1(380f), global0[_wgslsmith_index_u32(u_input.d, 5u)], Struct_1(arg_0))), Struct_2(Struct_1(-694f), Struct_1(-1049f), Struct_1(287f))).b, Struct_1(_wgslsmith_f_op_f32(func_1(arg_0)))), Struct_2(Struct_1(-596f), func_2(Struct_2(global0[_wgslsmith_index_u32(4294967295u, 5u)], Struct_1(-1000f), global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), Struct_2(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(47265u, 28u)], 5u)], global0[_wgslsmith_index_u32(35696u, 5u)])).b, Struct_1(_wgslsmith_f_op_f32(-arg_0)))).b);
    return Struct_1(var_1.c.a);
}

fn func_7(arg_0: Struct_3, arg_1: Struct_1) -> Struct_3 {
    global1 = array<u32, 28>();
    let var_0 = _wgslsmith_sub_i32(12771i, 2147483647i) & _wgslsmith_add_i32(u_input.e.x, firstLeadingBit(18434i));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 5>();
    var var_0 = func_7(Struct_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1638f, 188f) + _wgslsmith_f_op_f32(-1684f - -1556f)), _wgslsmith_f_op_f32(select(-1373f, _wgslsmith_f_op_f32(ceil(-381f)), true))), ~global1[_wgslsmith_index_u32(1707u, 28u)], all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), _wgslsmith_mod_vec3_u32(u_input.a, ~u_input.a & _wgslsmith_mod_vec3_u32(u_input.a, u_input.a))), func_6(_wgslsmith_f_op_f32(-1184f - _wgslsmith_f_op_f32(func_1(-425f)))));
    global1 = array<u32, 28>();
    let var_1 = -_wgslsmith_mod_vec2_i32(~u_input.e.ww, vec2<i32>(firstLeadingBit(~(-1i)), _wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(u_input.c.x, u_input.e.x, u_input.c.x, u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~reverseBits(var_1)) >> (~vec2<u32>(85506u, func_3(u_input.c.x, Struct_3(var_0.a, var_0.d.x, var_0.c, vec3<u32>(var_0.d.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.b, 28u)], 28u)], 28u)], global1[_wgslsmith_index_u32(var_0.d.x, 28u)])), var_0.a.x, Struct_2(Struct_1(792f), Struct_1(var_0.a.x), Struct_1(-103f)))) % vec2<u32>(32u)), -(~var_1.x), _wgslsmith_mult_vec2_i32(vec2<i32>(var_1.x, var_1.x), -var_1) | vec2<i32>(u_input.e.x, -52178i));
}

