struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_4,
    c: Struct_4,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 26>;

var<private> global1: Struct_4 = Struct_4(vec2<bool>(false, true), -1i, Struct_2(1585f, vec3<f32>(-152f, -527f, 912f), -1336f));

var<private> global2: array<vec2<f32>, 15> = array<vec2<f32>, 15>(vec2<f32>(325f, 1266f), vec2<f32>(586f, 852f), vec2<f32>(-1998f, -503f), vec2<f32>(1000f, 404f), vec2<f32>(854f, -570f), vec2<f32>(-213f, 303f), vec2<f32>(-509f, -190f), vec2<f32>(-1935f, -911f), vec2<f32>(777f, 211f), vec2<f32>(-1000f, -2384f), vec2<f32>(-1413f, -263f), vec2<f32>(-1000f, -432f), vec2<f32>(-1056f, 1585f), vec2<f32>(1023f, -630f), vec2<f32>(-448f, 1134f));

var<private> global3: bool;

var<private> global4: array<vec2<u32>, 2>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_5) -> u32 {
    var var_0 = select(!global0[_wgslsmith_index_u32(u_input.b.x, 26u)], !global0[_wgslsmith_index_u32(~(u_input.b.x & 1u) | (~u_input.b.x >> (~arg_1 % 32u)), 26u)], vec4<bool>(!arg_2.b.a.x, any(!vec4<bool>(true, false, arg_2.d, true)) != true, all(!(!vec2<bool>(arg_2.c.a.x, arg_2.b.a.x))), true));
    var var_1 = global1.c;
    global4 = array<vec2<u32>, 2>();
    var var_2 = u_input.b.xx;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-192f, -745f), arg_0, arg_2.d | (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, var_2.x, arg_1), vec3<u32>(1u, var_2.x, arg_1)) > 41036u))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(var_1.b.x - 494f), _wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(select(-1578f, -1614f, arg_2.c.a.x))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.c.c.a))))));
    return ~reverseBits(0u);
}

fn func_3(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: vec3<u32>) -> bool {
    let var_0 = vec4<u32>(~4294967295u, _wgslsmith_div_u32(~_wgslsmith_sub_u32(u_input.b.x, abs(74235u)), func_2(global1.c.b.x, ~abs(arg_2.x), arg_0)), ~(~(~arg_2.x ^ _wgslsmith_sub_u32(u_input.b.x, 0u))), ~79686u);
    let var_1 = 0i;
    var var_2 = 18144i | var_1;
    global3 = true;
    var var_3 = ~(~(~1u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b.c.c))))) == _wgslsmith_f_op_f32(534f * global1.c.b.x);
}

fn func_1(arg_0: vec3<f32>, arg_1: f32) -> Struct_3 {
    let var_0 = min(_wgslsmith_div_i32(-_wgslsmith_sub_i32(u_input.a, global1.b), u_input.a) << ((~39330u << (_wgslsmith_add_u32(1u, func_2(arg_1, 78774u, Struct_5(vec4<i32>(u_input.a, 6387i, 40484i, 2147483647i), Struct_4(global1.a, 48334i, global1.c), Struct_4(vec2<bool>(false, false), global1.b, Struct_2(-713f, vec3<f32>(359f, 902f, arg_0.x), arg_1)), global1.a.x))) % 32u)) % 32u), ~global1.b);
    global1 = Struct_4(global1.a, -58855i | u_input.a, global1.c);
    var var_1 = _wgslsmith_f_op_f32(round(1f));
    let var_2 = Struct_5(_wgslsmith_mult_vec4_i32(vec4<i32>(-(2147483647i >> (u_input.b.x % 32u)), -39982i, 2147483647i, global1.b), _wgslsmith_sub_vec4_i32(reverseBits(~vec4<i32>(global1.b, 36185i, 1i, global1.b)), -_wgslsmith_mod_vec4_i32(vec4<i32>(var_0, -1i, global1.b, var_0), vec4<i32>(38612i, 15873i, 1i, 19244i)))), Struct_4(!vec2<bool>(false, global1.a.x), 1i, Struct_2(_wgslsmith_f_op_f32(-332f * arg_1), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.x, global1.c.b.x, arg_0.x)))), 748f)), Struct_4(select(!global1.a, select(vec2<bool>(global1.a.x, false), select(global1.a, global1.a, global1.a.x), global1.a.x), global1.a), firstTrailingBit(-6181i), Struct_2(-1861f, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global1.c.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) * _wgslsmith_f_op_f32(-arg_1)))), func_3(Struct_5(~(vec4<i32>(global1.b, var_0, global1.b, var_0) >> (vec4<u32>(17369u, u_input.b.x, u_input.b.x, 10027u) % vec4<u32>(32u))), Struct_4(global1.a, 0i, global1.c), Struct_4(!global1.a, min(global1.b, var_0), global1.c), global1.a.x), ~vec2<i32>(27408i, 1i) & (abs(vec2<i32>(-15278i, var_0)) & _wgslsmith_add_vec2_i32(vec2<i32>(27214i, -2147483647i), vec2<i32>(u_input.a, var_0))), firstLeadingBit(u_input.b.xxx)));
    global0 = array<vec4<bool>, 26>();
    return Struct_3(abs(max(var_2.a.xw, vec2<i32>(var_0, global1.b)) ^ var_2.a.xy));
}

fn func_4(arg_0: Struct_3) -> Struct_4 {
    let var_0 = Struct_4(global1.a, _wgslsmith_dot_vec3_i32(-vec3<i32>(18978i, 2147483647i ^ u_input.a, max(-4770i, global1.b)), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, global1.b, 11825i), vec3<i32>(arg_0.a.x, -16479i, global1.b)))), global1.c);
    global4 = array<vec2<u32>, 2>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(global2[_wgslsmith_index_u32(abs(u_input.b.x), 15u)]));
    var var_1 = func_4(func_1(global1.c.b, global1.c.c));
    var var_2 = Struct_4(!(!global1.a), var_1.b, func_4(func_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global1.c.b), var_1.c.b)), var_0.x)).c);
    global0 = array<vec4<bool>, 26>();
    let var_3 = -1684f;
    var var_4 = Struct_4(global1.a, _wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, var_2.b, abs(29295i)) | -(~12657i), -15778i), var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(~max(~vec3<i32>(-31796i, var_2.b, var_1.b) << (vec3<u32>(u_input.b.x, 0u, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(35471i, var_4.b, -20666i) << (u_input.b.wzx % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(var_4.b, -46098i, 1i), vec3<i32>(var_4.b, 2147483647i, -12645i)))), _wgslsmith_mult_vec2_u32(reverseBits(~(vec2<u32>(5636u, u_input.b.x) & global4[_wgslsmith_index_u32(1u, 2u)])), _wgslsmith_clamp_vec2_u32(vec2<u32>(41189u, u_input.b.x ^ 4294967295u), vec2<u32>(~u_input.b.x, 1u), global4[_wgslsmith_index_u32(~22471u, 2u)])), _wgslsmith_f_op_f32(abs(-402f)), _wgslsmith_div_vec3_u32(~vec3<u32>(~u_input.b.x, u_input.b.x, 0u), select(u_input.b.xzx, max(~vec3<u32>(4294967295u, u_input.b.x, 0u), u_input.b.yyw), true)), ~1i);
}

