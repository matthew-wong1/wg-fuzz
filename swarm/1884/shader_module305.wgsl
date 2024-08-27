struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-11415i, 1121f);

var<private> global1: i32 = 1i;

var<private> global2: array<Struct_1, 26>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(round(-1284f));
    global0 = Struct_1(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b) >> (30579u % 32u), global0.b);
    global1 = arg_0.a;
    var var_1 = arg_0;
    global2 = array<Struct_1, 26>();
    return -1428f;
}

fn func_1() -> i32 {
    global0 = global2[_wgslsmith_index_u32(~(~abs(~min(57450u, 24619u))), 26u)];
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(12457u, max(667u, select(~15634u, firstLeadingBit(~0u), _wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(57293u, 26u)])) < -716f))), 26u)];
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-129f)) * -1000f) * 1000f);
    let var_2 = global2[_wgslsmith_index_u32(~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 23654u), vec2<u32>(0u, 4294967295u)))), 26u)];
    let var_3 = -u_input.b.xz;
    return var_3.x;
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> bool {
    global2 = array<Struct_1, 26>();
    var var_0 = ~vec4<u32>(1u, select(_wgslsmith_dot_vec2_u32(vec2<u32>(25782u, 41063u), vec2<u32>(68395u, 1u)), 1u, true), 1u, ~19901u) | abs(~((vec4<u32>(1u, 26592u, 18126u, 0u) << (vec4<u32>(0u, 0u, 1u, 1u) % vec4<u32>(32u))) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))));
    let var_1 = firstLeadingBit(~(~min(2487u, 0u)));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~countOneBits(~var_0.wzx >> (_wgslsmith_mult_vec3_u32(var_0.zzy, vec3<u32>(var_1, 17101u, var_1)) % vec3<u32>(32u))), ~(min(vec3<u32>(var_1, 0u, 5182u), vec3<u32>(56114u, var_0.x, var_1)) & var_0.xyy)), 26u)];
    var var_3 = arg_0;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2[_wgslsmith_index_u32(~(countOneBits(select(1u, _wgslsmith_sub_u32(86105u, 1u), false)) << (~(select(0u, 0u, false) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(32749u, 0u), vec2<u32>(17033u, 4294967295u)) % 32u)) % 32u)), 26u)];
    global1 = _wgslsmith_sub_i32(~func_1(), global0.a);
    var var_0 = global2[_wgslsmith_index_u32(39631u, 26u)];
    global2 = array<Struct_1, 26>();
    let var_1 = max(vec4<u32>(select(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 37895u), vec3<u32>(4294967295u, 53173u, 1u)), 31571u, func_3(Struct_1(u_input.a.x, global0.b), true)), ~(~80054u), ~min(4294967295u, 1u), 1u), max(~vec4<u32>(8335u, 6927u, 61557u, 1u), vec4<u32>(1u, 1u, 1u, 1u))) ^ max(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true)), select(firstLeadingBit(vec4<u32>(0u, 1u, 39475u, 23781u)), vec4<u32>(1u, 1u, 1u, 1u), true), select(reverseBits(vec4<u32>(6764u, 6360u, 0u, 0u)), ~vec4<u32>(1u, 1u, 569u, 51528u), true)), reverseBits(vec4<u32>(1u, 0u, 1u, ~15662u)));
    let var_2 = global2[_wgslsmith_index_u32(firstLeadingBit(~var_1.x & 93042u), 26u)];
    var var_3 = Struct_1(abs(46011i), global0.b);
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(604f, -452f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) * -599f))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b))), var_3.b, _wgslsmith_f_op_f32(-var_3.b)));
    let x = u_input.a;
    s_output = StorageBuffer(-397f, ~_wgslsmith_dot_vec4_u32(max(var_1, vec4<u32>(60235u, var_1.x, var_1.x, var_1.x)) >> ((vec4<u32>(4294967295u, var_1.x, var_1.x, var_1.x) << (var_1 % vec4<u32>(32u))) % vec4<u32>(32u)), ~vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-929f * var_2.b), _wgslsmith_f_op_f32(ceil(1000f)))) * var_4.yy));
}

