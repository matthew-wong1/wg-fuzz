struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(0i, -5009i, 0i, 29906i, 53309i, 1180i, -1i, 14118i, 29315i, -1i, 13479i, -33483i, -31138i, 1i, 1i, -35i, -10757i);

var<private> global1: array<f32, 23>;

var<private> global2: vec2<f32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: i32, arg_3: u32) -> u32 {
    global2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, arg_3, _wgslsmith_add_u32(20580u, 1u)), 23u)])), global2.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 583f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global2.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)))), all(!vec4<bool>(arg_1, true, true, arg_1)))))), !vec2<bool>(false, all(vec3<bool>(arg_1, false, false)) && any(vec3<bool>(arg_1, arg_1, true)))));
    global2 = vec2<f32>(global2.x, -472f);
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-165f, 1614f) - vec2<f32>(120f, 488f))))))), vec2<bool>(true, !(arg_1 && true)));
    let var_1 = !(!(!select(!vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, false), select(vec4<bool>(true, arg_1, arg_1, true), vec4<bool>(false, var_0.b.x, false, arg_1), true), false)));
    let var_2 = arg_1;
    return abs(0u);
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_3(Struct_2(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, u_input.b.x, 1u, u_input.b.x), vec4<u32>(1u, u_input.b.x, 25942u, 1u) >> (vec4<u32>(1u, u_input.e.x, u_input.d.x, u_input.b.x) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_sub_u32(1u, 1u), func_3(u_input.a, true, 0i, 69134u), ~43166u, countOneBits(u_input.b.x))), ~(~_wgslsmith_add_vec4_u32(u_input.e, u_input.e))), 0u, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1232f))))), global1[_wgslsmith_index_u32(func_3(u_input.c, true, u_input.a.x ^ global0[_wgslsmith_index_u32(u_input.e.x, 17u)], ~20471u) & u_input.b.x, 23u)], _wgslsmith_f_op_f32(-global2.x), global1[_wgslsmith_index_u32(func_3(max(u_input.a, vec2<i32>(2147483647i, -56950i)) ^ ~u_input.a, any(vec3<bool>(true, true, false)), firstLeadingBit(-19906i) ^ (u_input.c.x ^ 2147483647i), u_input.e.x & ~u_input.d.x), 23u)]), Struct_2(u_input.b.x, select(vec4<u32>(0u, u_input.e.x, u_input.b.x, u_input.b.x) | ~u_input.e, vec4<u32>(65262u, ~80220u, u_input.d.x, u_input.d.x), true)));
    var var_1 = _wgslsmith_f_op_f32(min(500f, _wgslsmith_f_op_f32(trunc(global2.x))));
    let var_2 = select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true)), vec2<bool>(select(false, true, true), any(vec2<bool>(false, true))), any(vec2<bool>(true, false))), !select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), true), false), select(!vec2<bool>(true, any(vec2<bool>(false, true))), select(!select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(all(vec2<bool>(true, true)), true), select(vec2<bool>(true, true), vec2<bool>(false, false), true)), select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(true, false, true)), vec2<bool>(true, true), vec2<bool>(true, true))), all(vec3<bool>(all(vec3<bool>(true, true, true)), all(select(vec2<bool>(true, false), vec2<bool>(false, true), true)), !all(vec4<bool>(true, true, true, true)))));
    global0 = array<i32, 17>();
    let var_3 = var_0.d.b.zz;
    return vec2<bool>(!(!all(!vec3<bool>(var_2.x, false, true))), true);
}

fn func_1(arg_0: vec3<u32>, arg_1: bool) -> Struct_1 {
    global1 = array<f32, 23>();
    global0 = array<i32, 17>();
    global1 = array<f32, 23>();
    var var_0 = !(!func_2());
    global2 = vec2<f32>(_wgslsmith_f_op_f32(364f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d.x, 23u)]) - _wgslsmith_f_op_f32(min(global2.x, global2.x))) + _wgslsmith_f_op_f32(-global2.x))), global2.x);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-628f, global1[_wgslsmith_index_u32(reverseBits(max(4294967295u, 0u)), 23u)])), select(vec2<bool>(var_0.x, select(all(vec4<bool>(var_0.x, false, true, arg_1)), true, !var_0.x)), func_2(), select(!vec2<bool>(arg_1, false), select(vec2<bool>(var_0.x, false), select(vec2<bool>(false, arg_1), vec2<bool>(var_0.x, false), arg_1), var_0.x), func_2())));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3) -> f32 {
    var var_0 = Struct_3(arg_2.a, ~4294967295u, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(arg_2.c, arg_2.c), arg_2.c)), arg_2.a);
    let var_1 = arg_2.d.b | ~arg_2.d.b;
    global1 = array<f32, 23>();
    global0 = array<i32, 17>();
    let var_2 = arg_1;
    return global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 23>();
    var var_0 = -(_wgslsmith_add_i32((u_input.a.x ^ -17093i) >> (~1u % 32u), ~(~global0[_wgslsmith_index_u32(u_input.d.x, 17u)])) << (1u % 32u));
    let var_1 = Struct_4(4294967295u, _wgslsmith_f_op_f32(func_4(-global0[_wgslsmith_index_u32(u_input.d.x, 17u)], func_1(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(33065u, u_input.e.x, 21666u), vec3<u32>(0u, u_input.b.x, 59440u), u_input.e.wxw), ~vec3<u32>(89595u, u_input.e.x, u_input.e.x), vec3<bool>(true, true, true)), false), Struct_3(Struct_2(_wgslsmith_sub_u32(0u, u_input.d.x), vec4<u32>(4294967295u, u_input.d.x, 58008u, u_input.b.x)), ~(4294967295u & u_input.e.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1254f, -1376f, global1[_wgslsmith_index_u32(44852u, 23u)], -207f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1478f, global1[_wgslsmith_index_u32(0u, 23u)], 488f, -460f) * vec4<f32>(-1000f, 836f, global2.x, 331f))), Struct_2(1u, ~u_input.e)))));
    var var_2 = func_1(firstLeadingBit(~select(vec3<u32>(var_1.a, 61740u, u_input.d.x), min(vec3<u32>(16889u, 1u, var_1.a), u_input.e.wyw), true)), 47748u <= ~_wgslsmith_mult_u32(var_1.a << (var_1.a % 32u), 4294967295u));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a), vec2<f32>(global2.x, -983f)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_2.a - var_2.a))))));
    var_0 = ~_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(26265u, func_3(u_input.a, true, global0[_wgslsmith_index_u32(4294967295u, 17u)], ~var_1.a)), 17u)], 17366i);
    let var_3 = select(select(_wgslsmith_mod_vec2_u32(min(vec2<u32>(var_1.a, 0u), vec2<u32>(u_input.b.x, 14395u)), abs(vec2<u32>(u_input.e.x, 4294967295u))), u_input.b, var_2.b), vec2<u32>(var_1.a, 1u | var_1.a), select(vec2<bool>(all(vec2<bool>(var_2.b.x, var_2.b.x)), !var_2.b.x), select(!var_2.b, var_2.b, false), var_2.b.x)) | u_input.e.zw;
    let var_4 = var_1;
    let var_5 = func_1(reverseBits(u_input.e.zzy), var_2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_5.a * _wgslsmith_f_op_vec2_f32(step(var_5.a, vec2<f32>(332f, -888f)))), var_4.a, _wgslsmith_div_f32(var_2.a.x, var_1.b), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(u_input.c.x << (u_input.b.x % 32u), -12378i, reverseBits(-2147483647i)), min(countOneBits(1i), ~u_input.c.x), -2147483647i), abs(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(24597i, 46074i, u_input.a.x), vec3<i32>(-33440i, u_input.a.x, u_input.a.x)), ~vec3<i32>(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 17u)], u_input.a.x)))));
}

