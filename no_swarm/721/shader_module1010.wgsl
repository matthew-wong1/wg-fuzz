struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(128f, 1u, 1u));

var<private> global2: vec4<u32>;

var<private> global3: vec3<bool> = vec3<bool>(false, true, true);

var<private> global4: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(119f, 62481u, 1u), Struct_1(1000f, 1u, 0u), Struct_1(-350f, 0u, 76889u), Struct_1(475f, 1u, 4294967295u), Struct_1(1402f, 23037u, 11674u), Struct_1(-1322f, 4294967295u, 16722u), Struct_1(536f, 96738u, 4294967295u), Struct_1(1202f, 0u, 0u), Struct_1(-1000f, 65755u, 1u), Struct_1(-177f, 24449u, 40111u), Struct_1(1161f, 29784u, 86104u), Struct_1(-1580f, 1u, 35639u), Struct_1(-1820f, 4294967295u, 52263u), Struct_1(488f, 4294967295u, 4294967295u), Struct_1(-1397f, 0u, 49287u), Struct_1(-295f, 4294967295u, 16585u), Struct_1(-1083f, 30154u, 77683u));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    return ~max(global2.x, _wgslsmith_mod_u32(53710u, ~arg_0.c ^ countOneBits(arg_0.c)));
}

fn func_3() -> vec4<u32> {
    var var_0 = global2.x;
    var var_1 = global4[_wgslsmith_index_u32(u_input.a, 17u)];
    let var_2 = var_1.a;
    return vec4<u32>(countOneBits(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, u_input.a, u_input.a, 1u), vec4<u32>(41539u, global2.x, global2.x, global2.x)))), u_input.a, _wgslsmith_sub_u32(4294967295u, abs(20836u << (var_1.b % 32u))), _wgslsmith_mod_u32(firstLeadingBit(~(~1u)), 40294u));
}

fn func_1() -> Struct_1 {
    global2 = _wgslsmith_div_vec4_u32(~vec4<u32>(select(global2.x, global2.x, true), ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, global2.x, global2.x), vec4<u32>(4294967295u, 4294967295u, 1u, 6974u)), 1u >> (u_input.a % 32u)) & (vec4<u32>(~1u, u_input.a, func_2(global1[_wgslsmith_index_u32(u_input.a, 1u)], Struct_1(-1011f, 0u, 13704u)), u_input.a) | vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(36417u, u_input.a, 3382u), vec3<u32>(u_input.a, u_input.a, u_input.a)), 1111u, _wgslsmith_div_u32(0u, global2.x))), ~func_3());
    var var_0 = Struct_1(2053f, ~global2.x, u_input.a);
    var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.a << ((_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, global2.x), vec2<u32>(var_0.b, 4294967295u)) << (firstLeadingBit(4294967295u) % 32u)) % 32u), var_0.c), 1u)];
    var var_1 = u_input.b;
    global1 = array<Struct_1, 1>();
    return Struct_1(786f, 1u, 4294967295u);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> f32 {
    let var_0 = false;
    var var_1 = ~_wgslsmith_sub_vec2_u32(~(~abs(vec2<u32>(4294967295u, arg_1.b))), ~global2.zx);
    var var_2 = arg_1;
    global4 = array<Struct_1, 17>();
    var_1 = ~global2.xw;
    return -792f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(reverseBits(vec2<u32>(u_input.a, u_input.a) << (_wgslsmith_sub_vec2_u32(global2.wz, ~vec2<u32>(21774u, global2.x)) % vec2<u32>(32u))), abs(global2.yy), select(vec2<bool>(true, true), global3.yz, all(!(!vec3<bool>(true, global3.x, global0[_wgslsmith_index_u32(global2.x, 4u)])))));
    global0 = array<bool, 4>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_4(abs(u_input.c.x), global4[_wgslsmith_index_u32(abs(max(0u, ~38984u)), 17u)], func_1(), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1230f, 1768f, 1000f, 1000f))), _wgslsmith_div_vec4_f32(vec4<f32>(-2031f, 1478f, -388f, -1000f), vec4<f32>(748f, -859f, 1000f, -809f))), _wgslsmith_div_vec4_f32(vec4<f32>(510f, 2088f, -635f, 656f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1609f, 1134f, 523f, 1544f), vec4<f32>(186f, -288f, 663f, -398f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-589f, _wgslsmith_f_op_f32(328f - -117f)))) + 1f), _wgslsmith_f_op_f32(-func_1().a), _wgslsmith_div_f32(669f, _wgslsmith_div_f32(-1153f, 2006f)));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(var_1.xw, vec2<f32>(-1109f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(-var_1.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(-var_1.x)))), vec2<bool>(select(global3.x, all(vec3<bool>(global0[_wgslsmith_index_u32(20777u, 4u)], true, true)), any(!vec3<bool>(true, global3.x, false))), false)));
    var var_3 = _wgslsmith_sub_vec4_i32(~u_input.c, -(vec4<i32>(i32(-1i) * -2238i, 1i, u_input.c.x, 1i) | u_input.c));
    let var_4 = global1[_wgslsmith_index_u32(1u, 1u)];
    global1 = array<Struct_1, 1>();
    var var_5 = global1[_wgslsmith_index_u32(1u, 1u)];
    var var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1130f)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_clamp_vec2_u32(global2.xx, _wgslsmith_mod_vec2_u32(vec2<u32>(1u, global2.x), global2.yz), (vec2<u32>(var_5.b, 4294967295u) ^ vec2<u32>(40842u, 30647u)) ^ vec2<u32>(4294967295u, var_5.b))), var_1.x, ~_wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(abs(var_3.x), u_input.b.x & -10544i, abs(1i), u_input.b.x)));
}

