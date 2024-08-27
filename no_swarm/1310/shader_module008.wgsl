struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(i32(-2147483648));

var<private> global1: array<f32, 23> = array<f32, 23>(581f, -154f, -740f, 352f, -1132f, 1244f, 2474f, 198f, -381f, -1621f, 517f, -660f, 823f, 418f, -339f, 1103f, -444f, -404f, -774f, 676f, 324f, -1000f, -894f);

var<private> global2: Struct_3 = Struct_3(Struct_1(1i), 1470f, 0u, Struct_1(36363i), vec4<bool>(false, true, false, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<i32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_i32(-arg_1.wwy << (~vec3<u32>(0u, global2.c, 34065u) % vec3<u32>(32u)), vec3<i32>(max(global0.a, global2.a.a), -u_input.a.x, global2.d.a)) & -2147483647i);
    global2 = Struct_3(global2.a, global1[_wgslsmith_index_u32(global2.c, 23u)], global2.c, global2.a, !global2.e);
    var var_1 = vec4<i32>(~_wgslsmith_dot_vec2_i32((vec2<i32>(0i, 30395i) ^ vec2<i32>(global2.d.a, arg_1.x)) ^ u_input.a.wz, u_input.a.yx), -31976i, _wgslsmith_dot_vec3_i32(-(~vec3<i32>(0i, var_0.a, 1471i)), u_input.a.ywx), 6570i);
    var var_2 = select(vec2<bool>(!(!select(global2.e.x, global2.e.x, false)), false), global2.e.wy, select(0i, global2.a.a, false) <= _wgslsmith_sub_i32(reverseBits(0i), abs(_wgslsmith_div_i32(global0.a, var_1.x))));
    var_0 = Struct_1(arg_1.x);
    return global2.c;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec3_u32(~(~(~_wgslsmith_add_vec3_u32(vec3<u32>(global2.c, 0u, u_input.b.x), vec3<u32>(global2.c, global2.c, u_input.b.x)))), vec3<u32>(firstLeadingBit(_wgslsmith_mult_u32(abs(0u), _wgslsmith_dot_vec2_u32(u_input.b, u_input.b))), 4294967295u, select(~(0u << (0u % 32u)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 0u), vec4<u32>(1295u, global2.c, u_input.b.x, global2.c)), vec4<u32>(4040u, u_input.b.x, 20478u, 59517u)), all(global2.e))));
    global0 = Struct_1(_wgslsmith_mult_i32(global0.a, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-22820i, reverseBits(-1i), -2147483647i, _wgslsmith_mult_i32(arg_0.x, 19204i)))));
    let var_1 = vec2<u32>(~func_3(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1701f, 1392f, global2.b, global1[_wgslsmith_index_u32(1u, 23u)]) - vec4<f32>(1739f, -1670f, global2.b, global1[_wgslsmith_index_u32(global2.c, 23u)])))), ~vec4<i32>(global0.a, 4219i, arg_0.x, arg_0.x)), global2.c);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(global2.c, 23u)], global1[_wgslsmith_index_u32(global2.c, 23u)])), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, 507f), vec2<f32>(-1349f, global1[_wgslsmith_index_u32(global2.c, 23u)]))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1088f, global2.b)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(474f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2.c, 23u)] + -284f)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.x, 23u)]), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(1u, 23u)]))))))));
    global1 = array<f32, 23>();
    return Struct_1(1i);
}

fn func_1() -> Struct_2 {
    var var_0 = -41979i;
    global0 = func_2(~vec3<i32>(_wgslsmith_dot_vec3_i32(abs(u_input.a.xyx), u_input.a.zwy & u_input.a.zyz), 0i, 46705i), global0.a);
    let var_1 = true;
    let var_2 = 1u;
    var var_3 = Struct_3(global2.a, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(reverseBits(var_2), 23u)] * _wgslsmith_div_f32(global2.b, global2.b)), global2.c, func_2(u_input.a.zyw, i32(-1i) * -2147483647i), !select(vec4<bool>(true, any(vec2<bool>(global2.e.x, global2.e.x)), var_1, var_1), global2.e, global2.e));
    return Struct_2(1290f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(305f, global1[_wgslsmith_index_u32(5764u, 23u)])) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(292f, global1[_wgslsmith_index_u32(1u, 23u)]), vec2<f32>(global1[_wgslsmith_index_u32(global2.c, 23u)], global2.b), vec2<bool>(true, global2.e.x))))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, -124f)), vec2<f32>(-904f, _wgslsmith_f_op_f32(global2.b * global1[_wgslsmith_index_u32(global2.c, 23u)])))));
    let var_1 = global2.d;
    var var_2 = func_1();
    var var_3 = global2.e.xyz;
    global0 = func_2(vec3<i32>(global2.d.a, ~1i, 2147483647i), _wgslsmith_add_i32(-countOneBits(var_1.a | 1522i), 37532i));
    let var_4 = Struct_3(func_2(-vec3<i32>(~global2.d.a, -var_1.a, ~12146i), 19119i), var_2.a, ~global2.c, func_2(_wgslsmith_clamp_vec3_i32(firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, var_1.a, -2147483647i), vec3<i32>(61051i, 0i, 13874i))), vec3<i32>(~(-1i), -global2.a.a, u_input.a.x), ~u_input.a.xyz), ~_wgslsmith_dot_vec2_i32(u_input.a.zy, ~vec2<i32>(-1i, 0i))), global2.e);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(~var_4.c, countOneBits(1u), global2.c, 1u)));
}

