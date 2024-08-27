struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 19>;

var<private> global1: array<vec4<f32>, 15>;

var<private> global2: array<vec4<f32>, 1> = array<vec4<f32>, 1>(vec4<f32>(-2404f, -299f, 680f, 970f));

var<private> global3: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true));

var<private> global4: array<u32, 17> = array<u32, 17>(6828u, 0u, 4294967295u, 17509u, 4294967295u, 0u, 1u, 4294967295u, 24505u, 4294967295u, 111266u, 13271u, 1u, 0u, 1u, 4294967295u, 74505u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    global0 = array<vec2<f32>, 19>();
    global2 = array<vec4<f32>, 1>();
    global1 = array<vec4<f32>, 15>();
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1468f - -1613f)))));
    let var_1 = vec4<i32>(~reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, u_input.a.x, u_input.b.x), vec4<i32>(10035i, u_input.d.x, u_input.a.x, -6558i)), vec4<i32>(44311i, -13770i, 0i, u_input.b.x))), u_input.a.x << (28413u % 32u), _wgslsmith_mod_i32(-u_input.d.x, 2147483647i) >> (10163u % 32u), _wgslsmith_sub_i32(-1i, 2147483647i | (16459i >> (u_input.c.x % 32u))) ^ u_input.d.x);
    return any(select(vec3<bool>(true, true, any(global3[_wgslsmith_index_u32(abs(0u), 12u)])), !global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c.zxy, vec3<u32>(global4[_wgslsmith_index_u32(22380u, 17u)], 31209u, global4[_wgslsmith_index_u32(19381u, 17u)])), 17u)], 12u)], global3[_wgslsmith_index_u32(u_input.c.x, 12u)]));
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    global1 = array<vec4<f32>, 15>();
    global3 = array<vec3<bool>, 12>();
    var var_0 = Struct_2(arg_0, vec4<bool>(func_3(), true, arg_0.a, false));
    global4 = array<u32, 17>();
    let var_1 = var_0.a;
    return var_0.b.xyz;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec2<bool>) -> vec2<bool> {
    var var_0 = _wgslsmith_sub_i32(1i, u_input.b.x);
    var var_1 = Struct_2(Struct_1(arg_2.x, vec3<u32>(~u_input.c.x, 70829u | u_input.c.x, max(44935u, 25645u)), u_input.d.x, u_input.d), !(!vec4<bool>(true, u_input.b.x < 1i, !arg_0, arg_2.x)));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(431f + 827f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-421f)), _wgslsmith_f_op_f32(sign(1207f)))), 395f, true)))));
    return arg_2;
}

fn func_1() -> Struct_1 {
    let var_0 = all(!vec4<bool>(all(vec2<bool>(false, true)), false, false, any(vec2<bool>(false, false)))) | true;
    var var_1 = all(func_4(!var_0, false, select(!(!vec2<bool>(var_0, true)), !(!vec2<bool>(var_0, var_0)), all(func_2(Struct_1(false, u_input.c.yxy, u_input.d.x, u_input.b))))));
    global1 = array<vec4<f32>, 15>();
    let var_2 = Struct_1(true || var_0, _wgslsmith_div_vec3_u32(u_input.c.ywx, ~(select(vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 17u)], 17u)], global4[_wgslsmith_index_u32(u_input.c.x, 17u)], u_input.c.x), vec3<u32>(67951u, u_input.c.x, 1u), vec3<bool>(var_0, true, false)) << (u_input.c.yyy % vec3<u32>(32u)))), u_input.b.x, abs(~u_input.b));
    let var_3 = max(vec3<i32>(firstLeadingBit(-(i32(-1i) * -92973i)), _wgslsmith_sub_i32(~min(-12502i, -16087i), 1i), -(~(-18389i << (global4[_wgslsmith_index_u32(4294967295u, 17u)] % 32u)))), vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(var_2.d, firstTrailingBit(u_input.b)));
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: i32) -> Struct_2 {
    let var_0 = u_input.c.zw;
    let var_1 = func_1();
    global1 = array<vec4<f32>, 15>();
    global3 = array<vec3<bool>, 12>();
    var var_2 = _wgslsmith_add_i32(-(~(-u_input.b.x)), -(~1i));
    return Struct_2(Struct_1(func_4(true, true, vec2<bool>(true, true)).x, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 13090u, u_input.c.x), u_input.c.zxz, vec3<u32>(4294967295u, u_input.c.x, 14385u)) | vec3<u32>(~9629u, 680u, ~var_0.x), abs(min(-13781i, var_1.d.x)), _wgslsmith_mult_vec3_i32(min(arg_0.d, _wgslsmith_mod_vec3_i32(vec3<i32>(8257i, 2147483647i, u_input.b.x), var_1.d)), max(var_1.d, -vec3<i32>(arg_0.c, 2147483647i, -2147483647i)))), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<bool>, 12>();
    let var_0 = func_5(func_1(), select(select(select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)), false), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false), true), vec4<bool>(false, all(vec2<bool>(true, true)) == false, func_3(), true), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), false))), ~_wgslsmith_sub_i32(i32(-1i) * -8321i, 2147483647i));
    global0 = array<vec2<f32>, 19>();
    var var_1 = var_0;
    var var_2 = firstTrailingBit(vec2<u32>(1u, 0u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(4294967295u, 59928u), abs(var_0.a.b.xz));
}

