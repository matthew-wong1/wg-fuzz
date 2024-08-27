struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_2, 1>;

var<private> global2: vec2<bool>;

var<private> global3: vec4<i32> = vec4<i32>(3760i, -3451i, -5629i, 2147483647i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-897f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a, 1u)];
    let var_1 = countOneBits(vec3<u32>(arg_3.c.x & select(global0.x, _wgslsmith_div_u32(37913u, u_input.a), true), _wgslsmith_sub_u32(~9057u, abs(arg_3.c.x << (global0.x % 32u))), reverseBits(arg_3.c.x ^ global0.x) << (1u % 32u)));
    var var_2 = var_1.x;
    var var_3 = arg_3;
    let var_4 = Struct_1(-vec2<i32>(global3.x, _wgslsmith_clamp_i32(1i, min(51092i, var_3.a.x), var_3.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.b - vec3<f32>(arg_2.b.x, arg_3.b.x, arg_1)) - _wgslsmith_f_op_vec3_f32(min(arg_2.b, vec3<f32>(-1076f, -180f, -711f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(993f, arg_3.b.x, 168f))), var_3.b)))), var_1.zy >> (reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(0u, var_3.c.x), ~vec2<u32>(var_1.x, var_1.x))) % vec2<u32>(32u)));
    return vec2<i32>(1i, ~var_3.a.x);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec3<bool>) -> bool {
    global1 = array<Struct_2, 1>();
    global3 = vec4<i32>(i32(-1i) * -(~(u_input.b.x ^ arg_0.x)), -1i, u_input.c.x, global3.x);
    var var_0 = _wgslsmith_f_op_f32(func_2(u_input.a, ~vec4<u32>(~global0.x, select(4294967295u, global0.x & 26538u, arg_3.x), arg_1.c.x, (arg_1.c.x | 54735u) & ~u_input.a)));
    var var_1 = firstTrailingBit(reverseBits(~vec2<i32>(_wgslsmith_add_i32(global3.x, arg_0.x), reverseBits(-1i))));
    var_1 = vec2<i32>(max(~(-1i), 2147483647i), -_wgslsmith_dot_vec2_i32(-func_3(vec2<bool>(arg_3.x, arg_3.x), 280f, Struct_1(vec2<i32>(u_input.b.x, 1i), vec3<f32>(949f, -167f, arg_1.b.x), arg_1.c), Struct_1(vec2<i32>(arg_1.a.x, arg_1.a.x), vec3<f32>(-715f, arg_1.b.x, 814f), vec2<u32>(arg_1.c.x, 50252u))), -u_input.c.yx));
    return global2.x || (~(-11394i) != ~(_wgslsmith_mult_i32(var_1.x, arg_1.a.x) >> (~global0.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(vec2<bool>(true, !((4294967295u <= global0.x) | true)), !select(!vec2<bool>(global2.x, global2.x), vec2<bool>(func_1(vec4<i32>(0i, global3.x, u_input.c.x, 37935i), Struct_1(vec2<i32>(-53982i, -13846i), vec3<f32>(638f, -855f, -2677f), vec2<u32>(21596u, global0.x)), vec2<bool>(global2.x, false), vec3<bool>(global2.x, true, global2.x)), false), select(true, true, global2.x)), false);
    let var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-484f, _wgslsmith_f_op_f32(436f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1029f), _wgslsmith_f_op_f32(-1073f * -1164f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(217f - _wgslsmith_f_op_f32(min(-151f, -1320f)))), _wgslsmith_f_op_f32(246f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1343f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(333f + 670f) * _wgslsmith_f_op_f32(abs(1060f)))), -1290f, -866f, 456f)));
    global1 = array<Struct_2, 1>();
    var var_1 = global1[_wgslsmith_index_u32(select(reverseBits(~13481u), global0.x, !(!any(vec2<bool>(true, true)))), 1u)];
    var var_2 = global1[_wgslsmith_index_u32(~global0.x << (min(u_input.a, 1u) % 32u), 1u)];
    var_2 = global1[_wgslsmith_index_u32(abs(u_input.a), 1u)];
    let var_3 = select(countOneBits(vec3<u32>(global0.x, reverseBits(u_input.a), 24678u)), firstLeadingBit(~(vec3<u32>(1340u, global0.x, global0.x) ^ vec3<u32>(global0.x, global0.x, 72543u))), all(select(vec4<bool>(true, global2.x | false, global2.x & global2.x, global2.x), !vec4<bool>(global2.x, false, true, global2.x), !vec4<bool>(true, false, global2.x, global2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(~u_input.c.x, 3615i), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1596f - -537f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(var_1.a.x + 1764f)))), -1587f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, var_1.a.x, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(exp2(var_0.x))))))), -2147483647i);
}

