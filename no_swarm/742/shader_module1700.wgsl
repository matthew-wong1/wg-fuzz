struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: Struct_2,
    e: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14> = array<bool, 14>(false, false, false, true, false, true, false, true, true, false, true, true, true, false);

var<private> global1: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(38453u, 1u), vec2<u32>(24494u, 15691u), vec2<u32>(10491u, 0u), vec2<u32>(37549u, 31080u), vec2<u32>(118007u, 0u), vec2<u32>(11151u, 1u), vec2<u32>(4294967295u, 52035u), vec2<u32>(35381u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 0u));

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 65812u, 1u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_4) -> bool {
    global2 = u_input.c.zyz;
    let var_0 = 4294967295u ^ firstTrailingBit(4294967295u);
    var var_1 = vec4<u32>(8214u, u_input.b.x, _wgslsmith_clamp_u32((u_input.c.x & u_input.e) & ~4294967295u, global2.x, ~(_wgslsmith_sub_u32(u_input.e, 124212u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(53135u, global2.x), global2.yy) % 32u))), var_0);
    let var_2 = 1u;
    let var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(266f, 842f)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(293f, 385f)) + _wgslsmith_f_op_f32(round(632f))), 627f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000f, 219f), _wgslsmith_div_f32(-130f, -1044f))), 185f))));
    return global0[_wgslsmith_index_u32(1u, 14u)];
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec3<bool> {
    global1 = array<vec2<u32>, 10>();
    global2 = u_input.c.wxz;
    global0 = array<bool, 14>();
    var var_0 = Struct_1(arg_0.a);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * _wgslsmith_f_op_f32(round(arg_1.a))));
    return !vec3<bool>(global0[_wgslsmith_index_u32(60854u, 14u)] || func_2(-u_input.d.x, vec2<i32>(-2147483647i, u_input.d.x), Struct_4(arg_2, vec3<i32>(arg_2, 24987i, arg_2), -18814i)), true, true);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec2<f32>, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -493f) + 1614f) - _wgslsmith_f_op_f32(f32(-1f) * -1305f))));
    global1 = array<vec2<u32>, 10>();
    var var_1 = u_input.d.x;
    global1 = array<vec2<u32>, 10>();
    let var_2 = global1[_wgslsmith_index_u32(select(~(15954u & _wgslsmith_dot_vec3_u32(arg_3, vec3<u32>(4294967295u, global2.x, u_input.b.x))), arg_3.x | (1u >> (countOneBits(u_input.b.x) % 32u)), any(func_1(Struct_1(449f), var_0, u_input.d.x).xy)), 10u)] | ~global2.xz;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(Struct_2(u_input.b.x), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.e, 14u)], any(select(vec3<bool>(true, false, false), vec3<bool>(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(9410u, 14u)], true), true)), !(u_input.b.x >= global2.x)), !(!vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.e, 14u)], global0[_wgslsmith_index_u32(51184u, 14u)])), select(!(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(0u, 14u)])), !func_1(Struct_1(-369f), Struct_1(1110f), 2147483647i), global0[_wgslsmith_index_u32(34670u, 14u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-925f, -374f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1253f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, 396f))))), u_input.c.wwz);
    let var_1 = 1f;
    let var_2 = u_input.d & _wgslsmith_clamp_vec3_i32(~u_input.d, _wgslsmith_sub_vec3_i32(~(~u_input.d), -(~u_input.d)), ~abs(u_input.d) >> (vec3<u32>(min(var_0.a, var_0.a), ~32929u, global2.x >> (40485u % 32u)) % vec3<u32>(32u)));
    var var_3 = vec2<i32>(~(-26829i), _wgslsmith_div_i32(23595i, -(~min(-35027i, 21206i))));
    var var_4 = var_0;
    global2 = vec3<u32>(var_0.a, ~41438u, 37403u) ^ vec3<u32>(var_4.a, _wgslsmith_mod_u32(global2.x, global2.x), 3913u);
    var var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -138f, var_1, var_1) - vec4<f32>(var_1, 1498f, -404f, 787f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(var_1, var_1, -1725f, -1012f), vec4<f32>(-1000f, -262f, 366f, var_1)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -1240f, var_1, 3021f)))));
    var var_6 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.x - var_1) * var_5.x));
    let x = u_input.a;
    s_output = StorageBuffer(1i, var_2, var_2.x);
}

