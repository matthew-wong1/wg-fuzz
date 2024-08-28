struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 8>;

var<private> global1: array<Struct_2, 24>;

var<private> global2: Struct_1 = Struct_1(vec2<f32>(1000f, 392f), vec3<f32>(-1162f, 1440f, -540f), 53564u, i32(-2147483648));

var<private> global3: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> vec2<u32> {
    var var_0 = vec2<f32>(1122f, _wgslsmith_div_f32(arg_0.b.x, global2.b.x));
    global1 = array<Struct_2, 24>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_1), vec3<f32>(_wgslsmith_f_op_f32(-677f + _wgslsmith_div_f32(-1186f, 320f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), global2.b.x), global2.c, _wgslsmith_div_i32(-global2.d, _wgslsmith_sub_i32(arg_0.d, (1i >> (arg_0.c % 32u)) << (~global2.c % 32u))));
    global1 = array<Struct_2, 24>();
    global2 = Struct_1(global2.a, vec3<f32>(748f, var_1.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-120f)), arg_1.x))), _wgslsmith_div_u32(~u_input.b, min(firstTrailingBit(arg_0.c), 34926u)), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.d, u_input.c, _wgslsmith_add_i32(u_input.d.x | -14687i, -16162i)), -(-vec3<i32>(arg_0.d, 28441i, 18007i) | (u_input.d.zxy << (vec3<u32>(u_input.b, var_1.c, arg_0.c) % vec3<u32>(32u))))));
    return ~(~(~vec2<u32>(1u, 1u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_1 {
    global3 = global2.b.x;
    var var_0 = global2.b;
    global2 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yx), _wgslsmith_f_op_vec2_f32(-var_0.xy))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(arg_1.b.a)), vec2<f32>(800f, 1552f))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_1.b.b.zz), _wgslsmith_f_op_vec2_f32(vec2<f32>(-372f, 325f) * vec2<f32>(414f, global2.a.x)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(421f, 761f, false))), var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), var_0.x, arg_1.a)))), _wgslsmith_dot_vec3_u32(reverseBits(arg_1.d), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(arg_1.d, arg_1.d), arg_1.d)), _wgslsmith_div_i32(-2147483647i, -(-1i ^ (-82957i ^ arg_1.b.d))));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-478f, global2.b.x, arg_1.b.b.x))) - vec3<f32>(_wgslsmith_f_op_f32(round(global2.a.x)), _wgslsmith_f_op_f32(floor(global2.a.x)), _wgslsmith_f_op_f32(step(global2.b.x, 825f)))))), vec3<f32>(global2.b.x, _wgslsmith_f_op_f32(ceil(global2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1110f))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.c.a.x, arg_1.b.b.x, -772f, -1000f)))))))));
    return Struct_1(var_0.xy, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(612f, var_1.x, var_2.x) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(global2.b, vec3<f32>(1808f, arg_1.c.a.x, arg_1.b.b.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1057f, var_0.x, arg_1.c.b.x) - vec3<f32>(global2.a.x, 987f, 1000f)), all(vec2<bool>(arg_1.a, false))))))), reverseBits(~(~0u >> (1u % 32u))), _wgslsmith_add_i32(_wgslsmith_div_i32(54597i, arg_2.x), u_input.a));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: vec3<bool>) -> Struct_2 {
    return global1[_wgslsmith_index_u32(1u, 24u)];
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> u32 {
    let var_0 = Struct_3(arg_0.b.b, global1[_wgslsmith_index_u32(arg_1, 24u)], func_4(arg_1, func_3(func_2(Struct_1(vec2<f32>(667f, -1258f), vec3<f32>(arg_0.c.c.a.x, arg_0.c.b.b.x, -2413f), u_input.b, u_input.d.x), arg_0.c.c.b.yx), Struct_2(arg_0.c.a | arg_0.b.a, Struct_1(arg_0.b.c.a, vec3<f32>(global2.b.x, 662f, global2.a.x), 0u, arg_0.a.d), Struct_1(arg_0.c.b.b.xz, global2.b, arg_0.c.d.x, -38334i), vec3<u32>(global2.c, arg_0.a.c, 1u)), u_input.d.yy), _wgslsmith_f_op_f32(-1430f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.a.x)))), !vec3<bool>(false, arg_0.c.a, true)));
    let var_1 = var_0;
    return arg_0.b.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(4294967295u);
    global0 = array<vec2<i32>, 8>();
    let var_1 = vec2<u32>(~(~firstLeadingBit(u_input.b)), ~(~u_input.b & 134099u)) | vec2<u32>(~_wgslsmith_sub_u32(global2.c, u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(52637u, global2.c, ~global2.c), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(35023u, 34939u, 51694u)), vec3<u32>(u_input.b, 19274u, 3601u))));
    global1 = array<Struct_2, 24>();
    var var_2 = ~select(abs(var_1), vec2<u32>(func_1(Struct_3(Struct_1(vec2<f32>(-1057f, 663f), vec3<f32>(global2.b.x, global2.a.x, -1241f), 2700u, 320i), global1[_wgslsmith_index_u32(4294967295u, 24u)], global1[_wgslsmith_index_u32(45227u, 24u)]), 29956u) >> ((155828u & var_1.x) % 32u), select(~var_1.x, u_input.b ^ 1u, any(vec3<bool>(true, false, false)))), !(!all(vec4<bool>(false, false, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(~global2.c, var_2.x, min(_wgslsmith_mult_u32(global2.c, 4294967295u), var_2.x)), abs(~vec3<u32>(101469u, 24623u, 1u))), 4294967295u, var_1, _wgslsmith_div_i32(-2147483647i, i32(-1i) * -20777i), abs(var_2.x ^ var_1.x) | 4294967295u);
}

