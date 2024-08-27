struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: Struct_2,
    d: vec4<bool>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 7>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(27564u, 7u)]);
    var var_1 = _wgslsmith_mult_u32(u_input.a, _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a, u_input.b), 1u), ~_wgslsmith_add_u32(u_input.a, u_input.a)) << (u_input.a % 32u));
    var var_2 = Struct_1(~(~abs(~vec4<u32>(4294967295u, 0u, 70061u, 44574u))), 19435i);
    let var_3 = var_0;
    var var_4 = Struct_2(u_input.c.zxw);
    return ~var_2.a.x;
}

fn func_2() -> bool {
    var var_0 = ~2147483647i;
    var var_1 = ((u_input.b ^ u_input.a) << (~u_input.a % 32u)) | ~func_3(true);
    var var_2 = Struct_3(u_input.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b & 15422u, ~u_input.b, u_input.a ^ 28235u), ~vec3<u32>(u_input.b, 0u, u_input.b) >> (vec3<u32>(u_input.a, 63276u, 20137u) % vec3<u32>(32u))), Struct_1(abs(max(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 72091u, 8949u, 0u), vec4<u32>(17991u, 0u, 0u, u_input.b)), ~vec4<u32>(58232u, u_input.a, u_input.a, 1u))), countOneBits(32887i)));
    var var_3 = Struct_3(~(~(u_input.b << (~u_input.a % 32u))), min(~(~4294967295u), 58208u) | ~var_2.b, var_2.c);
    var var_4 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(abs(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(30692u, 4294967295u, u_input.a, var_2.c.a.x), var_2.c.a))), 4294967295u >> ((reverseBits(0u) >> (u_input.b % 32u)) % 32u)), 7u)];
    return max(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), ~0u), min(4294967295u, _wgslsmith_sub_u32(var_2.c.a.x, 29475u))), var_3.c.a.x) > ~abs(83099u);
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(293f, 706f) - vec2<f32>(-1316f, -1900f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-470f, -312f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(117f, -306f))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1988f, -1000f))), vec2<f32>(-1315f, -169f), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(180f, -1059f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-353f, -579f)))), vec2<bool>(all(vec3<bool>(false, true, false)), true)))));
    global0 = array<vec3<i32>, 7>();
    var_0 = vec2<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x - 501f), var_0.x))), var_0.x);
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, func_2())), var_0.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 224f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-497f, 211f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-110f, -688f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-151f, var_0.x), vec2<f32>(1000f, -560f)))))));
    var var_1 = _wgslsmith_mult_vec3_i32(select(_wgslsmith_add_vec3_i32(~(~vec3<i32>(-28502i, u_input.c.x, -1i)), vec3<i32>(u_input.c.x | 20043i, min(-381i, 15235i), 29452i)), vec3<i32>(-2147483647i << (u_input.b % 32u), 0i, _wgslsmith_dot_vec4_i32(u_input.c, max(vec4<i32>(60539i, -38489i, 1i, u_input.c.x), u_input.c))), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), func_2()))), _wgslsmith_mult_vec3_i32(firstTrailingBit(firstTrailingBit(vec3<i32>(82944i, u_input.c.x, u_input.c.x))), -(global0[_wgslsmith_index_u32(u_input.b, 7u)] | ~vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x))));
    return ~(reverseBits(u_input.a) >> (~6900u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.b;
    global0 = array<vec3<i32>, 7>();
    var var_1 = Struct_1(vec4<u32>(45297u, 11859u, max(~u_input.a, ~func_1()), var_0), -1i);
    var var_2 = var_1.a.xy;
    var var_3 = Struct_1(var_1.a, 0i);
    let var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(19820i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-1599f, -404f, false)), -1881f, _wgslsmith_f_op_f32(-1000f * 812f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1334f, -173f, 436f), vec3<f32>(1195f, -1624f, 107f))))), vec4<i32>(_wgslsmith_add_i32(1i, _wgslsmith_dot_vec2_i32(u_input.c.xz, u_input.c.zx)), var_1.b, _wgslsmith_mod_i32(var_3.b >> (20781u % 32u), i32(-1i) * -54013i), ~(~(-1i))) ^ -u_input.c);
}

