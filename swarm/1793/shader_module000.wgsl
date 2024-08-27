struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec4<f32>,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_5;

var<private> global2: array<f32, 24> = array<f32, 24>(-178f, 1060f, -1742f, -462f, -1107f, 351f, 1000f, 682f, -107f, 1174f, 199f, 300f, -626f, 1400f, 2616f, 749f, 406f, -1000f, 620f, 103f, 192f, 449f, -515f, 1258f);

var<private> global3: array<f32, 9>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2) -> u32 {
    global1 = Struct_5(global1.a, (395i & _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, u_input.a.x, 0i) | vec4<i32>(22212i, -55451i, arg_0.x, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(-6209i, -2147483647i, 0i, 51898i), vec4<i32>(global1.a.e.x, -2147483647i, arg_0.x, 2147483647i)))) >> (countOneBits(abs(~0u)) % 32u));
    global3 = array<f32, 9>();
    let var_0 = global1.a;
    global2 = array<f32, 24>();
    let var_1 = _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 9u)]);
    return 52380u;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = arg_0.c.x;
    var var_1 = 45466u;
    var_1 = min(arg_0.d, firstTrailingBit(countOneBits(_wgslsmith_add_u32(~0u, ~global1.a.d))));
    return Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global2[_wgslsmith_index_u32((arg_0.d >> (46509u % 32u)) >> (global1.a.d % 32u), 24u)], global1.a.c.x))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~arg_0.d, _wgslsmith_mult_u32(arg_0.d, 1u)), vec2<u32>(global1.a.d, abs(global1.a.d))), _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(global1.a.d, 1u, 0u)), vec3<u32>(global1.a.d, 4294967295u, min(10476u, 1u))), 1u, ~func_3(vec2<i32>(arg_0.e.x, global1.b) | global1.a.a.zx, Struct_2(arg_0.c.x, vec4<u32>(13429u, 4294967295u, arg_0.d, 4294967295u), global1.a.c.wy, global1.a.c.x))), arg_0.c.wx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-635f)) + _wgslsmith_f_op_f32(f32(-1f) * -773f)))));
}

fn func_4(arg_0: Struct_2) -> f32 {
    var var_0 = arg_0.b.x < (select(arg_0.b.x, func_3(global1.a.a.zx, arg_0), global1.a.b.x) << ((arg_0.b.x >> (_wgslsmith_sub_u32(_wgslsmith_sub_u32(global1.a.d, 32184u), global1.a.d) % 32u)) % 32u));
    var var_1 = !select(vec4<bool>(global1.a.b.x, false && any(vec4<bool>(false, global1.a.b.x, global1.a.b.x, true)), any(vec4<bool>(false, global1.a.b.x, false, true)) | false, global1.a.b.x), select(select(select(vec4<bool>(false, global1.a.b.x, false, global1.a.b.x), vec4<bool>(global1.a.b.x, global1.a.b.x, global1.a.b.x, global1.a.b.x), global1.a.b.x), select(vec4<bool>(false, false, false, true), vec4<bool>(global1.a.b.x, global1.a.b.x, false, global1.a.b.x), global1.a.b.x), vec4<bool>(false, false, global1.a.b.x, false)), !(!vec4<bool>(true, false, global1.a.b.x, global1.a.b.x)), select(!vec4<bool>(global1.a.b.x, true, global1.a.b.x, false), !vec4<bool>(global1.a.b.x, global1.a.b.x, global1.a.b.x, true), !global1.a.b.x)), vec4<bool>(global1.a.b.x, global1.a.b.x, global1.a.c.x > global1.a.c.x, !global1.a.b.x));
    global1 = Struct_5(global1.a, 2147483647i);
    let var_2 = Struct_2(757f, ~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(min(vec4<u32>(23278u, 54381u, 4294967295u, 4294967295u), vec4<u32>(global1.a.d, arg_0.b.x, arg_0.b.x, global1.a.d)), arg_0.b), vec4<u32>(81877u, min(74302u, 1u), 1u, reverseBits(1u))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(528f)), _wgslsmith_f_op_f32(sign(-223f)))), global1.a.c.zw), _wgslsmith_f_op_f32(-global1.a.c.x));
    global3 = array<f32, 9>();
    return _wgslsmith_div_f32(arg_0.c.x, _wgslsmith_div_f32(global1.a.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 24u)] + global3[_wgslsmith_index_u32(arg_0.b.x, 9u)]) + var_2.a)))));
}

fn func_1() -> f32 {
    global3 = array<f32, 9>();
    let var_0 = !(!global1.a.b);
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(1u, 9u)]))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(Struct_1(u_input.a, global1.a.b, global1.a.c, 1u, u_input.a)))) * _wgslsmith_f_op_f32(floor(1394f)))));
    global3 = array<f32, 9>();
    let var_2 = _wgslsmith_div_vec3_f32(global1.a.c.zxz, _wgslsmith_div_vec3_f32(global1.a.c.yyz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global1.a.c.zwx))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(global1.a).c.x)) - -340f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-267f, -164f), 1133f, _wgslsmith_f_op_f32(func_1())));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(round(526f)), vec4<u32>(_wgslsmith_mod_u32(~_wgslsmith_sub_u32(global1.a.d, 2403u), ~global1.a.d), global1.a.d, ~global1.a.d, func_3(vec2<i32>(-1i, countOneBits(-23346i)), func_2(global1.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 9u)], global3[_wgslsmith_index_u32(0u, 9u)]), vec2<f32>(global2[_wgslsmith_index_u32(0u, 24u)], var_0.x), global1.a.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1188f, -281f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(333f, -1861f), vec2<f32>(539f, var_0.x), false))))), global3[_wgslsmith_index_u32(1u, 9u)]);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(~global1.a.d, 24u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * global3[_wgslsmith_index_u32(~0u, 9u)])), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1021f - 147f) + -775f), 1000f))));
    var var_3 = var_1.b.x | 5644u;
    global3 = array<f32, 9>();
    let var_4 = Struct_2(var_0.x, func_2(global1.a).b | vec4<u32>(45761u, var_1.b.x, _wgslsmith_mult_u32(1u, global1.a.d), 68066u), var_1.c, _wgslsmith_f_op_f32(153f + _wgslsmith_f_op_f32(floor(-786f))));
    let var_5 = !(!(!vec4<bool>(true, global1.a.b.x, global1.a.a.x != u_input.a.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -656f), _wgslsmith_f_op_f32(ceil(var_4.a))), _wgslsmith_f_op_f32(-var_2.x)) - -1038f), _wgslsmith_add_vec3_u32(var_4.b.xyw, vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.b.x, var_1.b.x, var_4.b.x, var_1.b.x), ~vec4<u32>(0u, 1u, global1.a.d, global1.a.d)), var_1.b.x, global1.a.d)), ~max(abs(_wgslsmith_div_vec3_u32(var_4.b.zxy, var_1.b.ywy)), ~(~var_1.b.zww)));
}

