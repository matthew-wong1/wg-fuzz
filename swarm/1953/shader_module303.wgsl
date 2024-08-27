struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(0u, 1u), vec4<bool>(false, false, false, false), false);

var<private> global1: Struct_3 = Struct_3(-281f, vec3<f32>(1230f, -1217f, 922f), vec2<bool>(false, true), false);

var<private> global2: array<f32, 30>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = global0.a.x;
    var var_1 = Struct_3(-805f, global1.b, vec2<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(23945u, 30u)] - global1.a))) >= _wgslsmith_f_op_f32(max(240f, _wgslsmith_f_op_f32(-462f + global2[_wgslsmith_index_u32(u_input.b.x, 30u)]))), any(!global0.b)), any(global0.b.zxw));
    let var_2 = u_input.c.x ^ ~u_input.a.x;
    let var_3 = vec3<bool>(!global0.b.x, any(vec2<bool>(global1.d, !global1.d & true)), all(arg_0.b));
    global2 = array<f32, 30>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(867f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) * -654f)) * _wgslsmith_f_op_f32(global1.b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(794f)) * _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(55202u, 30u)]))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0.a.x, 30u)]))))));
}

fn func_2() -> vec2<bool> {
    global0 = Struct_1(vec2<u32>(~_wgslsmith_div_u32(~4294967295u, 1u), 23060u), !(!(!vec4<bool>(global0.c, true, global0.b.x, global0.b.x))), false);
    global1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -768f), vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(~u_input.a.yz, !global0.b, true))), _wgslsmith_f_op_f32(global1.a + global1.b.x), 413f), vec2<bool>(true, !global0.c), !(_wgslsmith_f_op_f32(step(1672f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) != _wgslsmith_f_op_f32(f32(-1f) * -612f)));
    var var_0 = !vec4<bool>(global1.d, global1.c.x, any(global0.b.yz), true);
    var var_1 = Struct_1((max(~vec2<u32>(u_input.b.x, 1u), ~u_input.a.zz) & select(~vec2<u32>(58359u, global0.a.x), reverseBits(u_input.b.zy), vec2<bool>(var_0.x, global1.d))) | vec2<u32>(abs(39255u), 32382u), select(select(vec4<bool>(true, !global0.c, global0.b.x, !global1.c.x), select(vec4<bool>(global1.d, true, true, global1.d), global0.b, !global1.c.x), !vec4<bool>(false, global0.c, true, true)), select(!(!vec4<bool>(var_0.x, global0.b.x, global0.b.x, false)), !(!global0.b), select(!vec4<bool>(true, global1.d, var_0.x, global0.c), global0.b, select(vec4<bool>(false, global0.c, true, false), global0.b, global1.c.x))), global0.b), !select(global0.c, var_0.x, var_0.x));
    let var_2 = false & (-221f <= global1.b.x);
    return select(global1.c, global1.c, select(!vec2<bool>(var_2, !var_1.c), vec2<bool>(firstTrailingBit(global0.a.x) > global0.a.x, !var_1.c), !(all(vec3<bool>(var_0.x, var_1.b.x, false)) | true)));
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = firstTrailingBit(49955u >> (global0.a.x % 32u)) | ~_wgslsmith_mult_u32(_wgslsmith_div_u32(15998u, 7171u), global0.a.x);
    global1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global1.b), global1.b)), select(!vec2<bool>(true, global1.d || false), !(!select(vec2<bool>(false, false), global0.b.yy, global1.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -652f) + _wgslsmith_f_op_f32(-global1.b.x)) != -209f), any(func_2()));
    var var_1 = u_input.a.x;
    global0 = Struct_1(u_input.b.zz, vec4<bool>(838f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(125f - global1.b.x)), false, any(!(!vec3<bool>(true, global0.b.x, global0.b.x))), true && global1.c.x), ~u_input.b.x < _wgslsmith_clamp_u32(abs(firstLeadingBit(67260u)), global0.a.x, 21688u));
    global0 = Struct_1(vec2<u32>(~global0.a.x, reverseBits(~53728u)), vec4<bool>(any(vec2<bool>(global0.b.x, !global1.d)), global1.c.x, true, false), all(global0.b.wxx));
    return ~0u;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: u32) -> Struct_4 {
    let var_0 = global2[_wgslsmith_index_u32(~(~u_input.c.x), 30u)];
    global2 = array<f32, 30>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, global2[_wgslsmith_index_u32(1u, 30u)], 540f, -526f) + vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 30u)], -381f, -1186f, -1577f)))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global1.b.x, arg_0, 1454f))))))));
    let var_2 = Struct_2(Struct_1(~vec2<u32>(_wgslsmith_div_u32(0u, global0.a.x), global0.a.x), select(select(global0.b, global0.b, global1.c.x), select(vec4<bool>(global0.b.x, true, false, global1.c.x), !global0.b, vec4<bool>(global0.c, true, global0.b.x, global0.b.x)), func_2().x), !global1.c.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-362f, -375f))), _wgslsmith_f_op_f32(func_3(Struct_1(~vec2<u32>(arg_2, 1176u), select(global0.b, vec4<bool>(global1.d, global1.d, global1.d, global1.c.x), vec4<bool>(global1.d, false, global1.d, global1.d)), global0.b.x))), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_clamp_vec4_i32(min(vec4<i32>(-1i, -1i, 0i, 0i), vec4<i32>(arg_1, arg_1, arg_1, -1i)) << (~u_input.c % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(select(-vec4<i32>(arg_1, 2147483647i, 50145i, 51650i), vec4<i32>(14875i, arg_1, arg_1, -2147483647i), vec4<bool>(global1.d, true, global0.c, global1.c.x)), max(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, arg_1, arg_1, arg_1), vec4<i32>(-10877i, arg_1, arg_1, arg_1)), vec4<i32>(arg_1, arg_1, arg_1, arg_1) ^ vec4<i32>(arg_1, arg_1, arg_1, 22642i))), vec4<i32>(~arg_1, _wgslsmith_mod_i32(2147483647i, arg_1), ~(~(-2147483647i)), _wgslsmith_mult_i32(2147483647i << (global0.a.x % 32u), 0i))), firstTrailingBit(vec3<u32>(0u, global0.a.x, reverseBits(~462u))), ~vec3<u32>(~_wgslsmith_mod_u32(global0.a.x, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, u_input.c.x, u_input.a.x), u_input.c.zzy), arg_2));
    let var_3 = var_2;
    return Struct_4(-1072f, ~(~(~vec2<u32>(global0.a.x, 4294967295u)) >> (_wgslsmith_add_vec2_u32(var_2.e.zy, countOneBits(global0.a)) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.x;
    global2 = array<f32, 30>();
    var var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-430f + global2[_wgslsmith_index_u32(countOneBits(func_1(global2[_wgslsmith_index_u32(global0.a.x, 30u)])), 30u)])), abs(2147483647i), u_input.a.x);
    var var_2 = vec3<u32>(62291u, var_1.b.x, abs(_wgslsmith_clamp_u32(0u, ~func_1(var_1.a), ~23528u)));
    global2 = array<f32, 30>();
    var_1 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -533f), _wgslsmith_div_vec2_u32(max(firstLeadingBit(u_input.b.xz), ~global0.a), var_1.b) & var_1.b);
    let var_3 = func_4(1171f, 2018i, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(4294967295u >> (~var_1.b.x % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 1569f, var_1.a, 794f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_4(-875f, -67537i, 0u).a + global1.a), -463f) + global1.b.xy), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3.a, -236f, _wgslsmith_f_op_f32(min(var_3.a, 836f)), var_3.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a, -331f, 1000f, func_4(1000f, 22100i, 33119u).a) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(810f, -585f, 1068f, var_1.a))), select(global0.b, vec4<bool>(true, global1.d, !global0.c, global0.c && true), !select(global0.b, vec4<bool>(global0.b.x, true, global0.c, true), global0.b)))));
}

