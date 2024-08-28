struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
    c: vec4<bool>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_3,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<f32>(-1303f, -815f, 1823f), 37134i, vec4<bool>(true, false, true, false));

var<private> global1: array<vec3<i32>, 19>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    let var_0 = Struct_4(global0.a, ~firstLeadingBit(global0.b & _wgslsmith_sub_i32(2147483647i, global0.b)), select(select(select(select(vec4<bool>(false, global0.c.x, global0.c.x, true), global0.c, vec4<bool>(false, global0.c.x, global0.c.x, global0.c.x)), vec4<bool>(global0.c.x, false, true, global0.c.x), !vec4<bool>(false, global0.c.x, true, global0.c.x)), !select(global0.c, vec4<bool>(true, global0.c.x, global0.c.x, false), global0.c.x), select(vec4<bool>(global0.c.x, global0.c.x, true, false), global0.c, select(global0.c, vec4<bool>(true, global0.c.x, false, global0.c.x), vec4<bool>(global0.c.x, true, global0.c.x, false)))), vec4<bool>(!(-421f < global0.a.x), any(!vec3<bool>(global0.c.x, true, global0.c.x)), !(1i > global0.b), !global0.c.x | true), select(true != any(global0.c.zyx), true | (u_input.b.x > 12134i), !any(global0.c.zww))));
    global1 = array<vec3<i32>, 19>();
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1327f);
    let var_3 = _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x);
    return u_input.a;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: i32, arg_3: vec3<f32>) -> vec4<u32> {
    global1 = array<vec3<i32>, 19>();
    global1 = array<vec3<i32>, 19>();
    global1 = array<vec3<i32>, 19>();
    global1 = array<vec3<i32>, 19>();
    var var_0 = _wgslsmith_clamp_i32(-2147483647i, min(-_wgslsmith_div_i32(_wgslsmith_add_i32(arg_2, -7989i), i32(-1i) * -2147483647i), -(-2147483647i | ~arg_2)), firstTrailingBit(-func_3() ^ u_input.a));
    return arg_0;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: vec4<i32>) -> vec4<u32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1759f), 896f);
    let var_1 = max(~func_2(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 28945u), vec4<u32>(30959u, 1u, arg_1.x, arg_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, var_0, global0.a.x) * global0.a) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0))), firstTrailingBit(arg_2.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a) - _wgslsmith_f_op_vec3_f32(global0.a + vec3<f32>(var_0, var_0, 320f)))), vec4<u32>(arg_1.x, _wgslsmith_sub_u32(~(~arg_1.x), arg_1.x << (arg_0.x % 32u)), 24708u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.x, arg_1.x, 4294967295u, 50779u), vec4<u32>(33319u, arg_0.x, 0u, arg_0.x) >> (vec4<u32>(4294967295u, arg_1.x, arg_0.x, arg_0.x) % vec4<u32>(32u)))));
    var var_2 = Struct_1(vec3<bool>(true, global0.c.x, any(!global0.c.wzz)), global0.c);
    global0 = Struct_4(global0.a, _wgslsmith_dot_vec3_i32(abs(firstTrailingBit(global1[_wgslsmith_index_u32(var_1.x, 19u)])), select(-vec3<i32>(20818i, arg_2.x, -1i), vec3<i32>(10423i, arg_2.x, -31180i), !vec3<bool>(false, var_2.b.x, global0.c.x))) ^ -1i, select(!var_2.b, var_2.b, vec4<bool>((arg_2.x > 19024i) & false, true, all(vec2<bool>(false, global0.c.x)), true)));
    var_2 = Struct_1(vec3<bool>(true, global0.c.x & !(!global0.c.x), true), global0.c);
    return vec4<u32>(arg_0.x, 37315u, arg_1.x & _wgslsmith_mod_u32(4294967295u, _wgslsmith_clamp_u32(max(var_1.x, arg_1.x), ~arg_0.x, abs(1u))), firstTrailingBit(~abs(arg_1.x) >> (arg_1.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.c.xw;
    let var_1 = abs(vec4<u32>(abs(reverseBits(4294967295u)), 0u, firstTrailingBit(~76719u), 4294967295u)) | _wgslsmith_sub_vec4_u32(func_1(vec2<u32>(1u, 4294967295u), min(vec3<u32>(4294967295u, 0u, 83822u), vec3<u32>(15508u, 4294967295u, 1u)), ~vec4<i32>(u_input.b.x, -2765i, -35632i, global0.b)) & vec4<u32>(1u, 1u, 1u, 1u), max(_wgslsmith_clamp_vec4_u32(vec4<u32>(72420u, 70788u, 1565u, 10521u), select(vec4<u32>(0u, 0u, 28685u, 90180u), vec4<u32>(38059u, 4294967295u, 56201u, 1u), global0.c), _wgslsmith_div_vec4_u32(vec4<u32>(48210u, 1u, 89866u, 76988u), vec4<u32>(4294967295u, 4294967295u, 58232u, 41990u))), vec4<u32>(3016u, 41574u, 1u, max(4294967295u, 68013u))));
    var_0 = select(!vec2<bool>(!var_0.x | select(false, true, var_0.x), any(vec4<bool>(var_0.x, global0.c.x, false, true)) | all(global0.c.xz)), select(vec2<bool>(var_0.x, var_0.x), global0.c.yx, false), select(vec2<bool>(false, false), !global0.c.ww, global0.c.yz));
    let var_2 = global0.a.x;
    let var_3 = Struct_5(select(u_input.b ^ ~vec3<i32>(global0.b, -2147483647i, global0.b), countOneBits(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(global1[_wgslsmith_index_u32(14851u, 19u)], vec3<i32>(global0.b, u_input.a, global0.b)), select(u_input.b, global1[_wgslsmith_index_u32(var_1.x, 19u)], vec3<bool>(true, true, true)))), select(select(select(global0.c.wxy, vec3<bool>(true, global0.c.x, var_0.x), global0.c.x), select(vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, global0.c.x, true)), !global0.c.x), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, global0.c.x, true), 1000f == global0.a.x), !any(global0.c.wx))), Struct_3(global0.b, ~(~global0.b), Struct_1(global0.c.ywz, global0.c), select(global0.c, !vec4<bool>(true, var_0.x, global0.c.x, global0.c.x), ~var_1.x >= select(var_1.x, 5999u, true))), Struct_1(!(!(!global0.c.zzx)), vec4<bool>(all(!global0.c), _wgslsmith_f_op_f32(max(global0.a.x, 364f)) == _wgslsmith_f_op_f32(floor(global0.a.x)), false, !var_0.x)), global0.c.xzx);
    var var_4 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, 915f);
}

