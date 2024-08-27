struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 5>;

var<private> global1: u32;

var<private> global2: f32;

var<private> global3: f32;

var<private> global4: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(vec4<u32>(0u, 1u, 4294967295u, 9474u)), Struct_2(vec4<u32>(4294967295u, 7607u, 90840u, 0u)), Struct_2(vec4<u32>(0u, 6826u, 1u, 4294967295u)), Struct_2(vec4<u32>(1u, 1u, 49257u, 0u)), Struct_2(vec4<u32>(38701u, 4294967295u, 0u, 0u)), Struct_2(vec4<u32>(1u, 0u, 44275u, 5855u)), Struct_2(vec4<u32>(72291u, 62384u, 0u, 4294967295u)), Struct_2(vec4<u32>(27967u, 0u, 15275u, 1u)), Struct_2(vec4<u32>(0u, 22504u, 4294967295u, 0u)), Struct_2(vec4<u32>(4294967295u, 30146u, 0u, 0u)), Struct_2(vec4<u32>(4294967295u, 0u, 19680u, 20522u)), Struct_2(vec4<u32>(23929u, 20769u, 9628u, 0u)), Struct_2(vec4<u32>(0u, 1u, 34084u, 0u)), Struct_2(vec4<u32>(0u, 4294967295u, 18601u, 87851u)), Struct_2(vec4<u32>(39471u, 13419u, 19401u, 1u)), Struct_2(vec4<u32>(21118u, 1u, 0u, 25311u)), Struct_2(vec4<u32>(88147u, 4294967295u, 40758u, 0u)), Struct_2(vec4<u32>(4219u, 0u, 4294967295u, 0u)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>) -> vec2<bool> {
    let var_0 = (_wgslsmith_add_vec4_u32(~(global0[_wgslsmith_index_u32(1u, 5u)] | global0[_wgslsmith_index_u32(u_input.a, 5u)]), select(min(global0[_wgslsmith_index_u32(arg_0.a.x, 5u)], global0[_wgslsmith_index_u32(arg_0.a.x, 5u)]), vec4<u32>(arg_0.a.x, arg_0.a.x, u_input.a, arg_0.a.x), true)) | vec4<u32>(arg_0.a.x, _wgslsmith_clamp_u32(firstLeadingBit(u_input.a), reverseBits(13845u), ~arg_0.a.x), ~22846u << (max(u_input.a, 31077u) % 32u), 15855u)) ^ global0[_wgslsmith_index_u32(~arg_0.a.x ^ countOneBits(69153u ^ (arg_0.a.x ^ 1973u)), 5u)];
    var var_1 = Struct_3(vec3<u32>(~u_input.a, abs(_wgslsmith_div_u32(23000u, u_input.a)) << (min(~46313u, abs(u_input.a)) % 32u), u_input.a), arg_0.b);
    global4 = array<Struct_2, 18>();
    var var_2 = arg_0.b.b <= arg_0.b.b;
    global1 = ~max(~(~58517u), 2314u) ^ ~(arg_0.a.x >> (~select(var_1.a.x, var_1.a.x, true) % 32u));
    return select(!select(vec2<bool>(!arg_1.x, arg_1.x), arg_1.wx, select(select(arg_1.zx, vec2<bool>(false, false), arg_1.x), arg_1.ww, !arg_1.x)), arg_1.zx, !select(vec2<bool>(arg_1.x & false, !arg_1.x), !vec2<bool>(false, arg_1.x), vec2<bool>(arg_1.x, false)));
}

fn func_2() -> vec3<u32> {
    var var_0 = select(!vec2<bool>(true, any(vec3<bool>(true, true, true))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(true, true)), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), func_3(Struct_3(vec3<u32>(u_input.a, 26928u, u_input.a), Struct_1(u_input.b, -1000f)), vec4<bool>(true, true, true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, true), true))), false), !func_3(Struct_3(firstLeadingBit(vec3<u32>(1390u, u_input.a, 589u)), Struct_1(u_input.c, -883f)), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false))));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -821f))))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(271f, _wgslsmith_f_op_f32(-1550f - -281f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-633f)))))));
    global4 = array<Struct_2, 18>();
    global2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1644f + 871f))))));
    global0 = array<vec4<u32>, 5>();
    return ~select(_wgslsmith_clamp_vec3_u32(select(~vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(u_input.a, 4294967295u, 80521u), !var_0.x), ~firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 74796u)), vec3<u32>(~31705u, 1u, 1u)), reverseBits(firstTrailingBit(vec3<u32>(u_input.a, 58297u, 21348u))), vec3<bool>(var_0.x, !func_3(Struct_3(vec3<u32>(1u, 67222u, u_input.a), Struct_1(u_input.c, -1955f)), vec4<bool>(false, false, false, var_0.x)).x, false));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<f32>) -> vec4<bool> {
    return vec4<bool>((-min(u_input.c, -29958i) < -32635i) || (select(any(vec2<bool>(true, true)), true, false) & (_wgslsmith_add_i32(-48647i, u_input.b) <= u_input.c)), arg_0.x == ~57357u, true, !all(vec2<bool>(true, true)));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2) -> u32 {
    global1 = 4294967295u;
    let var_0 = !func_4(_wgslsmith_mod_vec3_u32(func_2(), ~select(arg_1.a.xxy, vec3<u32>(54511u, 1u, arg_1.a.x), vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-132f, arg_0.a.b) + _wgslsmith_f_op_f32(floor(-1180f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1017f) * arg_0.a.b)));
    var var_1 = 148f;
    let var_2 = Struct_2(arg_1.a);
    global1 = abs(abs(var_2.a.x));
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(firstTrailingBit(~countOneBits(vec3<u32>(u_input.a, 37186u, 1u))), Struct_1(-_wgslsmith_mult_i32(1i, countOneBits(-1591i)), -744f));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(793f + -1778f)))));
    var var_2 = abs(firstLeadingBit(~(-(~vec2<i32>(-7613i, -2147483647i)))));
    global1 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(func_1(Struct_4(var_0.b, vec2<bool>(false, true), var_0.b.a), Struct_2(vec4<u32>(44164u, var_0.a.x, var_0.a.x, 39462u))), ~24623u) & 56493u, _wgslsmith_dot_vec2_u32(var_0.a.xz, ~var_0.a.zx), ~var_0.a.x), var_0.a.x, _wgslsmith_add_u32(u_input.a, _wgslsmith_add_u32(abs(var_0.a.x), var_0.a.x | var_0.a.x)));
    let var_3 = 9771i;
    var var_4 = _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(var_0.a, reverseBits(~(~vec3<u32>(50119u, var_0.a.x, 0u)))), var_0.a);
    global1 = ~1289u | _wgslsmith_mod_u32(var_0.a.x, ~min(func_2().x, ~108375u));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b))), var_0.b.b, _wgslsmith_f_op_f32(max(1340f, var_0.b.b)), -1261f));
}

