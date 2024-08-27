struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 26>;

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(i32(-2147483648), -1000f, false, vec3<u32>(1u, 0u, 6460u)), Struct_1(-1i, -2097f, true, vec3<u32>(4294967295u, 1207u, 1u)), Struct_1(-17323i, -1890f, true, vec3<u32>(32033u, 9425u, 78047u)), Struct_1(4859i, -522f, false, vec3<u32>(15971u, 1u, 17928u)), Struct_1(0i, -2121f, true, vec3<u32>(30444u, 1u, 26750u)), Struct_1(i32(-2147483648), 839f, true, vec3<u32>(4294967295u, 6681u, 92113u)), Struct_1(0i, -349f, false, vec3<u32>(1u, 60819u, 70043u)), Struct_1(11979i, -244f, true, vec3<u32>(1u, 100334u, 0u)), Struct_1(0i, -1046f, false, vec3<u32>(9620u, 0u, 0u)), Struct_1(8630i, -884f, false, vec3<u32>(38320u, 0u, 1u)), Struct_1(-47259i, -1000f, true, vec3<u32>(38612u, 1u, 5550u)), Struct_1(-1i, 159f, true, vec3<u32>(0u, 36775u, 4294967295u)), Struct_1(2147483647i, 651f, true, vec3<u32>(4294967295u, 108539u, 4294967295u)), Struct_1(53550i, -1982f, true, vec3<u32>(0u, 7339u, 41636u)), Struct_1(5460i, 652f, true, vec3<u32>(0u, 136483u, 0u)), Struct_1(2147483647i, -718f, true, vec3<u32>(4294967295u, 29547u, 34272u)), Struct_1(0i, 1027f, true, vec3<u32>(54393u, 1u, 0u)), Struct_1(3807i, 1148f, false, vec3<u32>(0u, 4294967295u, 4294967295u)));

var<private> global2: vec4<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: u32) -> u32 {
    global2 = vec4<f32>(-579f, _wgslsmith_f_op_f32(max(-1128f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global2.x, -825f)), _wgslsmith_div_f32(158f, global2.x)))), global2.x, global2.x);
    let var_0 = Struct_3(global1[_wgslsmith_index_u32(~56969u, 18u)], false, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, arg_1, 4294967295u), vec3<u32>(0u, 51405u, arg_1)) << (abs(firstTrailingBit(arg_1)) % 32u)), Struct_1(15828i, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(sign(global2.x))), true, (vec3<u32>(112121u, u_input.c.x, 51192u) >> (~u_input.c.yzz % vec3<u32>(32u))) | ~countOneBits(u_input.d)), _wgslsmith_f_op_f32(min(221f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.x))))));
    var var_1 = 1i ^ var_0.a.a;
    var var_2 = ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(137643u, 4294967295u, 4624u & u_input.a.x, ~86391u)), select(~78736u, ~_wgslsmith_mod_u32(97107u, var_0.c), false));
    let var_3 = ~vec3<u32>(firstTrailingBit(u_input.b.x), ~46304u & _wgslsmith_div_u32(~arg_1, 65078u), countOneBits(var_0.d.d.x));
    return 1u;
}

fn func_2() -> Struct_3 {
    global1 = array<Struct_1, 18>();
    var var_0 = u_input.c.zz;
    let var_1 = vec4<u32>(func_3(_wgslsmith_add_i32(1i, 2228i), u_input.c.x), 1u, var_0.x, var_0.x) ^ _wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.x, var_0.x, u_input.d.x, 21163u), select(~vec4<u32>(4294967295u, 58371u, 4294967295u, var_0.x), vec4<u32>(u_input.b.x, 64351u, 27805u, u_input.c.x) ^ u_input.a, all(vec2<bool>(false, false))) | ~firstTrailingBit(u_input.a));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.x, _wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(trunc(global2.x))))))));
    global0 = array<Struct_4, 26>();
    return Struct_3(global1[_wgslsmith_index_u32(~16183u, 18u)], any(vec4<bool>(true, true, all(vec4<bool>(false, false, false, true)), true)) || all(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true))), func_3(-2147483647i, 46332u), global1[_wgslsmith_index_u32(var_1.x, 18u)], global2.x);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: vec3<i32>) -> vec3<bool> {
    let var_0 = func_2();
    global0 = array<Struct_4, 26>();
    global2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-826f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * global2.x) - _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.e))), 1711f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1103f, _wgslsmith_f_op_f32(-121f * 763f), _wgslsmith_f_op_f32(f32(-1f) * -1589f), arg_0.x) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0.x, global2.x, 122f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(761f, -302f, 2398f, var_0.d.b)))))))));
    let var_1 = global2.yzw;
    global1 = array<Struct_1, 18>();
    return select(vec3<bool>(all(!vec4<bool>(false, var_0.a.c, var_0.d.c, var_0.d.c)), var_0.a.c, false), select(select(!vec3<bool>(false, true, var_0.b), vec3<bool>(false | var_0.a.c, true, !var_0.b), vec3<bool>(false, var_0.a.c, var_0.b)), !select(!vec3<bool>(true, var_0.a.c, var_0.d.c), vec3<bool>(false, true, var_0.a.c), false), false), !(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -940f), _wgslsmith_f_op_f32(global2.x + 465f))) >= 1f));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: i32) -> Struct_3 {
    var var_0 = 1i;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(10253u != u_input.d.x);
    let var_1 = countOneBits(abs(vec2<i32>(-1i) * -vec2<i32>(-5634i, 1i)) << (~(_wgslsmith_mult_vec2_u32(vec2<u32>(13167u, u_input.b.x), vec2<u32>(u_input.c.x, u_input.b.x)) >> (~vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_2 = ~u_input.c.x;
    let var_3 = func_4(Struct_2(var_1.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 2247f, 1f, global2.x)), !(!(!vec3<bool>(false, false, var_0))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(global2.x, global2.x), _wgslsmith_f_op_f32(abs(-1391f))), global2.wx, !select(vec2<bool>(false, true), vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0)))), select(var_0, any(vec4<bool>(false, false, false, false)), var_0)), min(select(~u_input.c.wxx, u_input.a.ywx & vec3<u32>(u_input.c.x, 4294967295u, 45763u), func_1(global2.zzw, u_input.a, vec3<i32>(0i, 1i, 26905i))), select(countOneBits(u_input.d), ~u_input.d, false)) >> (u_input.c.wwx % vec3<u32>(32u)), Struct_2(-(~(-var_1.x)), vec4<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x, global2.x, global2.x), vec3<bool>(var_0, !var_0 & var_0, any(select(vec2<bool>(false, var_0), vec2<bool>(true, var_0), false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-1000f)), 1f)), false), select(-countOneBits(-37691i), var_1.x >> (16952u % 32u), false));
    var var_4 = _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.x, -var_3.d.a << (26218u % 32u), var_3.d.a), ~_wgslsmith_div_vec3_i32(vec3<i32>(var_1.x, -2147483647i, 1i), vec3<i32>(1i, var_1.x, var_1.x))), vec3<i32>(var_3.d.a, 4021i | _wgslsmith_mult_i32(-2147483647i, var_1.x), i32(-1i) * -1i) << (_wgslsmith_sub_vec3_u32(u_input.a.zzw, var_3.a.d) % vec3<u32>(32u)));
    var var_5 = Struct_4(select(vec3<bool>(var_3.a.c, true, false), select(func_1(global2.zyz, ~vec4<u32>(var_2, u_input.d.x, 1u, var_2), ~vec3<i32>(var_3.a.a, 0i, var_3.d.a)), select(!vec3<bool>(true, var_0, var_0), vec3<bool>(var_3.d.c, var_0, var_0), vec3<bool>(true, false, var_0)), (false || var_0) || any(vec4<bool>(true, var_3.d.c, var_3.d.c, var_0))), !(_wgslsmith_f_op_f32(var_3.d.b - -916f) == var_3.a.b)));
    var var_6 = Struct_2(1i, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1048f, 675f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.d.b), func_4(Struct_2(-2147483647i, vec4<f32>(-629f, var_3.e, global2.x, var_3.a.b), var_5.a, global2.xz, var_3.d.c), var_3.a.d, Struct_2(1i, vec4<f32>(961f, -1224f, var_3.e, var_3.e), vec3<bool>(false, var_5.a.x, var_5.a.x), global2.xz, var_5.a.x), var_4.x).d.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(113f)) * _wgslsmith_f_op_f32(-var_3.d.b))))), select(var_5.a, var_5.a, vec3<bool>(func_2().d.b >= _wgslsmith_f_op_f32(var_3.d.b * global2.x), any(vec2<bool>(var_5.a.x, true)), true)), global2.wx, select(!(!(-39610i > var_4.x)), true, any(vec4<bool>(false, var_5.a.x, var_3.a.c, any(var_5.a.xy)))));
    var var_7 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(-var_3.a.a, 2147483647i, ~(-49671i), func_2().a.a | _wgslsmith_dot_vec3_i32(vec3<i32>(-11085i, -6584i, var_4.x), vec3<i32>(var_1.x, -2147483647i, var_7.d.a)))));
}

