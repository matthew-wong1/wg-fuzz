struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: vec2<bool>,
    e: u32,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<u32>, 11>;

var<private> global2: array<Struct_5, 17>;

var<private> global3: array<i32, 8>;

var<private> global4: array<Struct_4, 28>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: vec3<i32>, arg_3: vec4<f32>) -> i32 {
    global0 = arg_3.x;
    var var_0 = arg_3.x;
    global1 = array<vec3<u32>, 11>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1003f - arg_3.x), 1301f);
    let var_2 = Struct_1(abs(vec4<u32>(_wgslsmith_dot_vec2_u32(arg_0.yy, _wgslsmith_clamp_vec2_u32(vec2<u32>(71294u, u_input.b.x), vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(1u, arg_0.x))), 26212u, _wgslsmith_dot_vec4_u32(~vec4<u32>(2998u, 1u, arg_1, 21799u), ~vec4<u32>(1u, arg_1, 18029u, 56756u)), _wgslsmith_clamp_u32(max(9624u, u_input.b.x), arg_0.x, ~arg_1))), any(select(select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)), any(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true), vec4<bool>(select(false, false, false), true, true, -1169f != arg_3.x))));
    return -(~2147483647i);
}

fn func_2() -> vec4<u32> {
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(~abs(u_input.a.x), ~(~func_3(vec3<u32>(3103u, 1u, 4294967295u), 31860u, vec3<i32>(u_input.a.x, u_input.a.x, global3[_wgslsmith_index_u32(u_input.b.x, 8u)]), vec4<f32>(816f, -638f, -463f, -330f)))), -34683i);
    let var_1 = vec4<bool>(any(select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), false), true)), all(vec3<bool>(any(vec2<bool>(false, true)) && all(vec2<bool>(false, true)), true, abs(var_0) > var_0)), _wgslsmith_div_f32(169f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(615f - -190f), 539f, true))) >= 1954f, select(4294967295u == u_input.b.x, select(true, (u_input.b.x | 1u) >= u_input.b.x, false), select(true, true, all(vec4<bool>(true, true, true, false))) || all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), false))));
    global1 = array<vec3<u32>, 11>();
    let var_2 = var_1.x;
    let var_3 = Struct_1(vec4<u32>(~(~(~u_input.b.x)), 1u, _wgslsmith_mod_u32(firstTrailingBit(~16091u), ~4294967295u), abs(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, 8539u, 4294967295u), ~u_input.b.x))), var_2);
    return vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(4294967295u, 100462u), _wgslsmith_mult_u32(~u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1467u, var_3.a.x), u_input.b)), 11097u), ~var_3.a.x), var_3.a.x, ~26667u & _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_3.a.x, 4294967295u, 41282u, var_3.a.x), vec4<u32>(0u, var_3.a.x, var_3.a.x, var_3.a.x)) >> (~vec4<u32>(u_input.b.x, 1u, var_3.a.x, var_3.a.x) % vec4<u32>(32u)), ~vec4<u32>(1u, u_input.b.x, var_3.a.x, 0u)), 64557u);
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3, arg_3: i32) -> vec3<bool> {
    let var_0 = Struct_2(Struct_1(reverseBits(abs(vec4<u32>(u_input.b.x, arg_2.e, 0u, arg_1.b)) ^ countOneBits(arg_1.c.c.a)), arg_2.a.b), arg_2.c.c, Struct_1(vec4<u32>(arg_1.c.a.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, arg_1.e, arg_1.b, arg_1.b), ~arg_2.a.a), firstTrailingBit(~u_input.b.x), 0u), !arg_1.d.x), firstLeadingBit(abs(~_wgslsmith_add_u32(1u, 0u))));
    var var_1 = _wgslsmith_div_vec4_u32(arg_2.a.a, ~firstLeadingBit(var_0.b.a) ^ (func_2() << (vec4<u32>(var_0.c.a.x << (73294u % 32u), _wgslsmith_clamp_u32(arg_1.c.b.a.x, 0u, arg_2.c.b.a.x), abs(u_input.b.x), firstLeadingBit(55504u)) % vec4<u32>(32u))));
    global4 = array<Struct_4, 28>();
    var var_2 = !vec4<bool>(!(80960u < arg_2.a.a.x), select(var_0.b.b, !var_0.c.b == true, any(select(arg_2.d, arg_2.d, var_0.b.b))), true, var_0.c.b);
    var_1 = ~select(abs(~(~vec4<u32>(1u, arg_1.b, arg_2.e, var_1.x))), _wgslsmith_div_vec4_u32(~vec4<u32>(47784u, 4294967295u, 7601u, arg_2.c.b.a.x), ~(~vec4<u32>(u_input.b.x, var_0.b.a.x, 1u, arg_2.a.a.x))), vec4<bool>(arg_2.a.b, true || (arg_3 <= -20862i), any(select(vec4<bool>(arg_2.c.a.b, arg_1.a.b, true, var_2.x), vec4<bool>(true, false, true, var_2.x), var_2.x)), arg_1.a.b));
    return select(vec3<bool>(any(vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 8u)] == u_input.a.x, true)), any(arg_2.d), all(vec4<bool>(true, var_2.x, true, select(true, true, var_0.b.b)))), vec3<bool>(var_2.x, all(vec2<bool>(true, false)), !(!var_2.x)), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 8>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1525f * -2201f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(243f + 597f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(590f, 523f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1024f, -1000f, -476f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1276f, 1803f, -876f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-471f, _wgslsmith_f_op_f32(-559f - 768f), 1613f))));
    global4 = array<Struct_4, 28>();
    var var_2 = !((_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(675f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))) | any(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), func_1(560f, Struct_3(Struct_1(vec4<u32>(16322u, 4294967295u, 1u, 0u), false), 4294967295u, Struct_2(Struct_1(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x), true), Struct_1(vec4<u32>(21009u, u_input.b.x, 0u, 4294967295u), false), Struct_1(vec4<u32>(0u, 0u, u_input.b.x, 58680u), true), u_input.b.x), vec2<bool>(true, false), 4294967295u), Struct_3(Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, 45633u, 16061u), false), 4294967295u, Struct_2(Struct_1(vec4<u32>(27626u, u_input.b.x, u_input.b.x, 64417u), true), Struct_1(vec4<u32>(4294967295u, u_input.b.x, 13221u, 58925u), false), Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, 23744u, u_input.b.x), false), 63797u), vec2<bool>(true, false), u_input.b.x), -7268i), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true))));
    var var_3 = ~select(~global1[_wgslsmith_index_u32(~(~u_input.b.x), 11u)], abs(~global1[_wgslsmith_index_u32(u_input.b.x, 11u)]) ^ global1[_wgslsmith_index_u32(0u, 11u)], !vec3<bool>(true, var_1.x > var_1.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<u32>(1u, 1u, 1u, _wgslsmith_div_u32(28421u, var_3.x)) | min(countOneBits(vec4<u32>(1u, 4294967295u, var_3.x, 1u)), countOneBits(vec4<u32>(20190u, u_input.b.x, 131488u, 0u)))), _wgslsmith_div_vec3_i32(~(~select(vec3<i32>(-20480i, u_input.a.x, global3[_wgslsmith_index_u32(66656u, 8u)]), vec3<i32>(-22429i, global3[_wgslsmith_index_u32(26510u, 8u)], -19264i), vec3<bool>(false, true, false))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, global3[_wgslsmith_index_u32(26923u, 8u)], 2147483647i) >> (vec3<u32>(u_input.b.x, var_3.x, var_3.x) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -15408i), vec3<i32>(u_input.a.x, global3[_wgslsmith_index_u32(82603u, 8u)], global3[_wgslsmith_index_u32(0u, 8u)])))));
}

