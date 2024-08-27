struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

var<private> global1: array<Struct_2, 21>;

var<private> global2: vec3<u32> = vec3<u32>(0u, 0u, 6291u);

var<private> global3: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec2<u32>(30792u, 17528u), true), Struct_2(vec2<u32>(126055u, 43808u), false), Struct_2(vec2<u32>(56739u, 11804u), true), Struct_2(vec2<u32>(30539u, 40664u), false), Struct_2(vec2<u32>(4294967295u, 1u), true), Struct_2(vec2<u32>(4294967295u, 61708u), true), Struct_2(vec2<u32>(8248u, 21657u), false), Struct_2(vec2<u32>(69134u, 4294967295u), false), Struct_2(vec2<u32>(0u, 20343u), true), Struct_2(vec2<u32>(4294967295u, 31714u), false), Struct_2(vec2<u32>(80811u, 0u), false), Struct_2(vec2<u32>(16855u, 4294967295u), false), Struct_2(vec2<u32>(1677u, 1u), true), Struct_2(vec2<u32>(84588u, 0u), true), Struct_2(vec2<u32>(4294967295u, 1u), false), Struct_2(vec2<u32>(0u, 18415u), false), Struct_2(vec2<u32>(4294967295u, 10152u), true), Struct_2(vec2<u32>(1u, 4294967295u), true), Struct_2(vec2<u32>(38069u, 1u), true), Struct_2(vec2<u32>(48453u, 16539u), true), Struct_2(vec2<u32>(1u, 30281u), true), Struct_2(vec2<u32>(60368u, 42366u), false), Struct_2(vec2<u32>(51218u, 0u), false), Struct_2(vec2<u32>(0u, 13145u), false), Struct_2(vec2<u32>(29931u, 4294967295u), true), Struct_2(vec2<u32>(4525u, 0u), true), Struct_2(vec2<u32>(93u, 40520u), true), Struct_2(vec2<u32>(4294967295u, 39311u), false), Struct_2(vec2<u32>(0u, 61361u), true), Struct_2(vec2<u32>(1u, 7819u), false), Struct_2(vec2<u32>(27803u, 28486u), false));

var<private> global4: Struct_2;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    global0 = array<f32, 23>();
    global4 = Struct_2(global2.zy, !(any(vec4<bool>(true, false, arg_2.b, false)) == global4.b));
    global0 = array<f32, 23>();
    let var_0 = arg_3.a;
    var var_1 = global4.b;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1486f * _wgslsmith_f_op_f32(arg_1.x * 1f)) - _wgslsmith_f_op_f32(-arg_3.a)), -1046f));
}

fn func_3() -> u32 {
    let var_0 = !vec3<bool>(global4.b, global4.b, any(vec3<bool>(any(vec3<bool>(global4.b, global4.b, false)), 0u < global2.x, any(vec3<bool>(false, global4.b, false)))));
    let var_1 = abs(24968i);
    var var_2 = all(select(select(select(!vec4<bool>(global4.b, var_0.x, var_0.x, global4.b), select(vec4<bool>(true, false, global4.b, var_0.x), vec4<bool>(true, false, false, false), false), global0[_wgslsmith_index_u32(4294967295u, 23u)] < global0[_wgslsmith_index_u32(1u, 23u)]), !select(vec4<bool>(var_0.x, global4.b, global4.b, global4.b), vec4<bool>(true, true, false, false), vec4<bool>(true, global4.b, false, global4.b)), true), vec4<bool>(global4.b, var_0.x, false, !(!global4.b)), !vec4<bool>(true, global4.b, true, any(vec4<bool>(false, true, global4.b, global4.b)))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -503f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(77777u, 23u)]))))), firstTrailingBit(~_wgslsmith_add_vec3_i32(vec3<i32>(var_1, var_1, -1i), vec3<i32>(0i, -3126i, -2147483647i)) << (~firstLeadingBit(vec3<u32>(4294967295u, 0u, 31522u)) % vec3<u32>(32u))), -1i, vec4<u32>(1u, global4.a.x, u_input.c, ~10491u), global2.x);
    var var_4 = Struct_1(var_3.a, vec3<i32>(var_3.c, ~1i, var_1), var_3.b.x, vec4<u32>(var_3.d.x, min(1u, ~4294967295u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(global4.a.x, var_3.d.x), select(global2.x, _wgslsmith_div_u32(global2.x, 50045u), var_0.x && false)), max(var_3.e | ~0u, 0u)), var_3.d.x);
    return 4294967295u;
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: i32) -> f32 {
    global4 = Struct_2(vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 36057u, u_input.a.x, 0u), ~vec4<u32>(global4.a.x, global4.a.x, 822u, 0u)), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(52180u, global2.x, 4294967295u, 0u), vec4<u32>(u_input.b, 13864u, 60562u, 40970u)), vec4<u32>(global2.x, 4294967295u, 0u, u_input.b))), 0u), all(select(!select(arg_1.zw, arg_1.zx, false), !(!arg_1.xy), arg_1.yy)));
    global1 = array<Struct_2, 21>();
    global1 = array<Struct_2, 21>();
    global0 = array<f32, 23>();
    global4 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_sub_u32(global2.x, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(9179u, 32516u, global2.x), vec3<u32>(31831u, global2.x, global4.a.x)), 41774u), ~vec3<u32>(func_3(), 4294967295u >> (u_input.d % 32u), firstTrailingBit(u_input.c))), 21u)];
    return _wgslsmith_f_op_f32(775f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global4.a.x ^ global2.x, 23u)] + -740f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(1u, 23u)])))), any(!vec2<bool>(arg_1.x, arg_1.x))))));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    global4 = global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~4294967295u, arg_2.d.x, u_input.c), 21u)];
    var var_0 = Struct_2(reverseBits(~(~reverseBits(global4.a))), !((true && any(vec3<bool>(true, arg_0, false))) | all(vec2<bool>(global4.b, true))));
    var var_1 = any(!select(select(vec2<bool>(global4.b, global4.b), !vec2<bool>(false, var_0.b), arg_0), select(!vec2<bool>(var_0.b, true), !vec2<bool>(arg_0, global4.b), vec2<bool>(false, global4.b)), !var_0.b));
    var_0 = Struct_2(countOneBits(vec2<u32>(0u, abs(global2.x))) & arg_2.d.yz, !(any(vec2<bool>(true, global4.b)) & (arg_1 < -1000f)) & !global4.b);
    global0 = array<f32, 23>();
    return global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, ~((global4.a.x >> (global4.a.x % 32u)) & 447u)), 4294967295u, ~_wgslsmith_mult_u32(44409u, ~arg_2.e)), 21u)];
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = select(select(select(vec3<bool>(any(vec2<bool>(false, true)), global4.b, select(arg_0.b, global4.b, global4.b)), vec3<bool>(global4.b, select(arg_0.b, false, global4.b), false), func_4(true, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(3017u, 23u)]), Struct_1(215f, vec3<i32>(1i, 24679i, -1i), -40939i, vec4<u32>(global4.a.x, 84689u, arg_0.a.x, 11861u), 1u)).b), !select(!vec3<bool>(global4.b, arg_0.b, global4.b), vec3<bool>(true, true, true), arg_0.b & false), all(vec3<bool>(global4.b, arg_0.b, global4.b)) && !(!global4.b)), vec3<bool>(true, global4.b, ~_wgslsmith_sub_u32(global2.x, 0u) != reverseBits(arg_0.a.x)), global4.b);
    let var_1 = global1[_wgslsmith_index_u32(global4.a.x, 21u)];
    global0 = array<f32, 23>();
    var var_2 = global0[_wgslsmith_index_u32(var_1.a.x, 23u)];
    let var_3 = arg_0.b & false;
    return Struct_1(global0[_wgslsmith_index_u32(1u & ~u_input.b, 23u)], vec3<i32>(~(~1i), -1i, -countOneBits(-43286i)), 2147483647i, vec4<u32>(~global2.x, (_wgslsmith_dot_vec2_u32(u_input.a, u_input.a) & 1u) & ~select(arg_0.a.x, var_1.a.x, arg_0.b), ~abs(global2.x << (15494u % 32u)), _wgslsmith_sub_u32(_wgslsmith_add_u32(global2.x, ~18944u), 0u | _wgslsmith_div_u32(global2.x, 0u))), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global0 = array<f32, 23>();
    var var_1 = func_5(func_4(global4.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<i32>(1i, 0i, 22278i), vec3<f32>(-714f, 582f, -834f), Struct_2(vec2<u32>(23828u, 58164u), global4.b), Struct_1(1712f, vec3<i32>(-3882i, 0i, 17880i), -52049i, vec4<u32>(u_input.a.x, 61131u, 4294967295u, 1811u), 35200u))) * global0[_wgslsmith_index_u32(global2.x, 23u)]) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(20474u, 23u)])) * _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(4294967295u, 23u)])))), Struct_1(_wgslsmith_f_op_f32(func_2(~(-1i), !vec4<bool>(global4.b, true, true, false), -2147483647i)), countOneBits(-vec3<i32>(-9060i, 2147483647i, -119778i)), -4161i, _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, 28022u, 1u), vec4<u32>(30573u, 43440u, global4.a.x, global2.x)), vec4<u32>(global4.a.x, global2.x, 4294967295u, global2.x)), ~(~global4.a.x))));
    global3 = array<Struct_2, 31>();
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(max(var_1.c, firstTrailingBit(var_1.b.x)), _wgslsmith_dot_vec4_i32(-vec4<i32>(18140i, var_1.b.x, var_1.c, var_1.c), -vec4<i32>(var_1.c, var_1.c, 9986i, var_1.b.x))), var_1.b.x), var_1.b.yz);
    global1 = array<Struct_2, 21>();
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1355f, global0[_wgslsmith_index_u32(var_1.e, 23u)], -448f), vec3<f32>(782f, global0[_wgslsmith_index_u32(4294967295u, 23u)], 1099f), global4.b))))), vec3<f32>(-397f, -1044f, -1314f))));
    global1 = array<Struct_2, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.a * -314f), -945f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -127f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -949f)) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~func_3(), 23u)])), abs(_wgslsmith_div_vec4_u32(var_1.d << (~var_1.d % vec4<u32>(32u)), func_5(func_4(false, 1000f, Struct_1(-1714f, vec3<i32>(var_1.b.x, var_1.b.x, -66252i), var_1.b.x, vec4<u32>(global2.x, 4294967295u, 140u, 46927u), u_input.c))).d)));
}

