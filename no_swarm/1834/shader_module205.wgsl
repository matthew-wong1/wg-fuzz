struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_2,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec3<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 27> = array<vec4<bool>, 27>(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true));

var<private> global1: u32;

var<private> global2: Struct_2;

var<private> global3: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(-924f, 2083f, 277f), vec3<f32>(144f, -2040f, 1044f), vec3<f32>(1052f, 642f, 136f), vec3<f32>(-190f, 294f, 359f), vec3<f32>(1000f, 436f, 636f), vec3<f32>(2511f, -371f, -734f), vec3<f32>(145f, 363f, -909f), vec3<f32>(-431f, -465f, 1945f), vec3<f32>(2143f, -945f, 1258f), vec3<f32>(572f, -125f, -183f), vec3<f32>(-892f, -208f, 1000f), vec3<f32>(-1000f, 336f, 596f));

var<private> global4: array<bool, 5>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32) -> vec3<bool> {
    let var_0 = global2.b;
    return vec3<bool>(global4[_wgslsmith_index_u32(~(~(4294967295u & ~u_input.b.x)), 5u)], !global2.a.c, var_0.c);
}

fn func_2(arg_0: vec3<f32>, arg_1: i32) -> Struct_2 {
    let var_0 = func_3(1u);
    global0 = array<vec4<bool>, 27>();
    let var_1 = -_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.d.x, -25199i, -1i), u_input.e) < 9441i;
    global1 = _wgslsmith_mult_u32(u_input.b.x, 4126u);
    var var_2 = countOneBits(-u_input.a.x);
    return Struct_2(global2.b, global2.a);
}

fn func_1() -> vec4<i32> {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(4294967295u, 12u)] + vec3<f32>(1129f, -1632f, 536f)))))) + vec3<f32>(_wgslsmith_f_op_f32(-195f * _wgslsmith_f_op_f32(f32(-1f) * -649f)), _wgslsmith_div_f32(-440f, _wgslsmith_f_op_f32(select(1723f, -418f, global2.b.c))), _wgslsmith_f_op_f32(f32(-1f) * -345f))), ~_wgslsmith_add_i32(-7149i, 2147483647i));
    var var_1 = firstTrailingBit(_wgslsmith_sub_vec2_u32(abs(select(u_input.b, ~u_input.b, select(vec2<bool>(false, global4[_wgslsmith_index_u32(1u, 5u)]), vec2<bool>(true, false), vec2<bool>(true, false)))), u_input.b));
    return -vec4<i32>(u_input.e.x, _wgslsmith_sub_i32(-2147483647i, ~u_input.d.x), -17083i, min(_wgslsmith_add_i32(-2147483647i, _wgslsmith_sub_i32(-14065i, u_input.a.x)), u_input.e.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = true;
    let var_1 = _wgslsmith_clamp_vec3_i32(arg_1.zxy, vec3<i32>(arg_1.x, _wgslsmith_add_i32(-19833i, -54384i << (~global2.b.a % 32u)), 21862i), arg_1.wwz);
    let var_2 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(632f * -444f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-157f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1649f + -387f), -723f))), var_1.x);
    global4 = array<bool, 5>();
    let var_3 = arg_2.b;
    return ~vec3<u32>(~max(var_2.b.b ^ u_input.b.x, ~4294967295u), 32066u, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 27>();
    global0 = array<vec4<bool>, 27>();
    var var_0 = ~select(func_4(Struct_2(Struct_1(16116u, u_input.b.x, global2.a.c), Struct_1(7386u, 1u, global4[_wgslsmith_index_u32(0u, 5u)])), func_1(), Struct_2(global2.a, Struct_1(1u, global2.a.b, global4[_wgslsmith_index_u32(4294967295u, 5u)])), func_2(vec3<f32>(1203f, 566f, -147f), u_input.d.x)), (~vec3<u32>(5770u, u_input.b.x, global2.b.a) | func_4(Struct_2(global2.b, global2.a), vec4<i32>(-2147483647i, 1i, 1i, 2147483647i), Struct_2(Struct_1(global2.a.b, global2.a.a, false), global2.b), Struct_2(Struct_1(u_input.b.x, u_input.b.x, global2.a.c), Struct_1(global2.b.a, 1u, true)))) | abs(min(vec3<u32>(0u, global2.b.b, u_input.b.x), vec3<u32>(0u, 0u, global2.a.b))), false);
    let var_1 = global2.b.a;
    let var_2 = Struct_4(func_2(global3[_wgslsmith_index_u32(~min(reverseBits(14725u), var_0.x), 12u)], u_input.c), vec4<u32>(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(902f, 584f, 530f)))), u_input.c << (~46961u % 32u)).b.a, abs(func_4(func_2(vec3<f32>(-764f, 1327f, 1187f), u_input.e.x), vec4<i32>(-1i, u_input.c, -58483i, 0i), Struct_2(global2.b, Struct_1(u_input.b.x, global2.b.a, global2.a.c)), func_2(vec3<f32>(491f, 1623f, -334f), u_input.a.x)).x), 411u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(6466u, 1u, 4294967295u) | vec3<u32>(11915u, 2251u, global2.a.a), ~vec3<u32>(var_0.x, u_input.b.x, 33939u))), -u_input.a.x, _wgslsmith_add_vec4_u32(~vec4<u32>(1u, 36081u, 0u, func_4(Struct_2(Struct_1(6793u, 10269u, false), Struct_1(33005u, 1u, global2.b.c)), vec4<i32>(u_input.c, -2147483647i, -2147483647i, u_input.a.x), Struct_2(Struct_1(global2.a.b, global2.a.b, true), Struct_1(global2.a.b, var_0.x, false)), Struct_2(global2.a, global2.b)).x), vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(global2.b.b, var_0.x, 0u, u_input.b.x), ~vec4<u32>(5390u, 86893u, 104834u, 4294967295u)), var_0.x, 1u, global2.b.a ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.b, global2.b.b, 1u, 1u), vec4<u32>(global2.a.b, global2.b.a, global2.a.a, 31381u)))));
    global3 = array<vec3<f32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~_wgslsmith_mod_u32(u_input.b.x, var_0.x))), _wgslsmith_div_f32(-745f, _wgslsmith_f_op_f32(1f * -361f)), 1000f, firstTrailingBit(~vec3<u32>(_wgslsmith_mult_u32(4294967295u, var_0.x), 1u, global2.b.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(3117f, 1f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(923f, 1262f) - vec2<f32>(639f, 444f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(940f, -773f), vec2<f32>(-350f, -960f))))));
}

