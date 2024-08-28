struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(0u, 10609u, 4294967295u, 62455u, 48194u, 4294967295u, 1u, 30177u, 0u, 0u, 1u, 24722u, 41742u, 0u, 23674u, 4294967295u, 1u, 34347u, 15371u, 7799u, 22857u, 49893u, 27928u, 6962u);

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: array<vec2<bool>, 16>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = Struct_1(-max(vec4<i32>(~global2.a.x, _wgslsmith_mult_i32(arg_0.x, -53271i), -25708i, countOneBits(-10149i)), vec4<i32>(~global2.a.x, i32(-1i) * -16426i, _wgslsmith_dot_vec4_i32(global2.a, vec4<i32>(arg_1.a.x, 2147483647i, arg_0.x, arg_1.a.x)), -arg_1.a.x)), _wgslsmith_div_f32(global1.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.b - -919f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.x - global1.b) - _wgslsmith_f_op_f32(global2.b * 279f)), true))), global2.c, min(global2.d, ~(~u_input.c.xz)) << (arg_1.d % vec2<u32>(32u)));
    var_0 = arg_1;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1534f, global2.c.x, 298f) * vec3<f32>(1819f, 532f, -851f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-448f, 935f, 992f) * vec3<f32>(345f, global1.b, global1.c.x))) - _wgslsmith_div_vec3_f32(global1.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.x, arg_1.c.x, -345f)))))), _wgslsmith_f_op_vec3_f32(min(arg_1.c, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -114f)), global1.b, _wgslsmith_f_op_f32(-global1.b)))));
}

fn func_2() -> vec4<bool> {
    let var_0 = global1.a.yw >> (min(abs(~(~vec2<u32>(u_input.c.x, 15383u))), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 52623u), abs(global1.d)) | ~u_input.c.xz) % vec2<u32>(32u));
    var var_1 = Struct_1(vec4<i32>(u_input.d, 1i, global2.a.x, var_0.x), _wgslsmith_f_op_f32(global1.b * 757f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(global1.a.yxy, Struct_1(global1.a, 175f, vec3<f32>(global2.c.x, global2.b, -737f), vec2<u32>(105004u, u_input.c.x)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-732f, global1.b, global1.c.x)))) - vec3<f32>(_wgslsmith_f_op_f32(abs(global1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.c.x)) * global2.b))), vec2<u32>(~reverseBits(global0[_wgslsmith_index_u32(global1.d.x, 24u)]), _wgslsmith_clamp_u32(~80730u, ~1u, u_input.b)));
    var var_2 = u_input.c.yxx;
    global0 = array<u32, 24>();
    let var_3 = global2.d.x;
    return select(!vec4<bool>(any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))), true, !all(vec3<bool>(true, false, true)), true && select(false, false, false)), vec4<bool>(_wgslsmith_add_u32(~118u, global0[_wgslsmith_index_u32(global2.d.x, 24u)]) < _wgslsmith_dot_vec3_u32(abs(u_input.c.wyy), u_input.c.yyw), all(vec3<bool>(true, true, true)), (firstTrailingBit(4294967295u) ^ _wgslsmith_sub_u32(u_input.c.x, var_2.x)) != var_1.d.x, true), vec4<bool>(true, !all(vec2<bool>(false, false)), true, any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false))) || false));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> f32 {
    let var_0 = !func_2();
    var var_1 = Struct_1(reverseBits(firstTrailingBit(~reverseBits(vec4<i32>(-1i, -5761i, 2147483647i, 1i)))), global2.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-595f, global2.b, arg_0)), vec3<f32>(global1.b, -1000f, 585f), var_0.xxy)))), ~(~_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(30220u, global1.d.x), global2.d), u_input.c.yz)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -251f);
    let var_3 = (u_input.a << (4294967295u % 32u)) ^ var_1.a.x;
    return -889f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, global1.a.x), ~u_input.a), abs(1i), 0i, -u_input.d | ~18672i), global2.a), -1000f, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(global2.c)), _wgslsmith_f_op_vec3_f32(select(global1.c, vec3<f32>(-535f, global1.c.x, -182f), false)))) + vec3<f32>(_wgslsmith_f_op_f32(453f * 1000f), _wgslsmith_f_op_f32(func_1(232f, global1.a.zwy)), 682f)))), _wgslsmith_sub_vec2_u32(vec2<u32>(global2.d.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0[_wgslsmith_index_u32(41434u, 24u)]), global1.d), firstLeadingBit(global2.d.x))), u_input.c.zz));
    var var_1 = all(global3[_wgslsmith_index_u32(41175u, 16u)]);
    var var_2 = 2147483647i;
    let var_3 = -56454i;
    var var_4 = reverseBits(countOneBits(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(301u, global1.d.x, var_0.d.x)), u_input.c.yzw)));
    let var_5 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(552f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1054f, global2.b)), _wgslsmith_f_op_f32(569f * 721f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -905f)))), -777f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.c.x + _wgslsmith_f_op_f32(-var_0.c.x)))) + global2.b));
    global1 = Struct_1(vec4<i32>(select(u_input.d & (var_0.a.x ^ -33848i), -var_0.a.x, _wgslsmith_f_op_f32(min(-959f, -1746f)) < _wgslsmith_div_f32(249f, var_5.x)), countOneBits(-1i), u_input.d, ~(-1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.b))), global1.c, reverseBits(vec2<u32>(global2.d.x, 4294967295u)));
    var_4 = abs(~1u);
    let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -481f) - 622f));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~77378u) ^ (~1u & global1.d.x), -2147483647i, countOneBits(-2147483647i));
}

