struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -703f;

var<private> global1: f32;

var<private> global2: vec3<i32>;

var<private> global3: vec3<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2() -> u32 {
    var var_0 = Struct_2(-767f, Struct_1(-select(vec4<i32>(u_input.b, -23162i, u_input.b, u_input.c.x), max(vec4<i32>(2147483647i, -1i, -2147483647i, -1i), vec4<i32>(44259i, 39012i, 42220i, -31317i)), all(global3.zz))));
    var var_1 = vec2<i32>(1i, global2.x ^ ~_wgslsmith_mult_i32(global2.x, -5064i));
    let var_2 = ~u_input.a;
    let var_3 = Struct_2(var_0.a, var_0.b);
    global1 = -483f;
    return 23138u;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(2147483647i, 7164i), 38477i), arg_1.a.zw), min(~vec2<i32>(-arg_1.a.x, abs(-32182i)), ~max(firstTrailingBit(u_input.c), arg_1.a.wz)));
    var_0 = ~vec2<i32>(-1i, global2.x);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -753f))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a))), arg_0.b);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -451f);
    return _wgslsmith_f_op_f32(max(249f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(651f))))))));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_3)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.a * arg_3), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-439f)) + arg_1.a))));
    var var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)))), arg_1.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_1.a))))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3, var_1.a, -522f), vec3<f32>(-953f, 134f, -487f), vec3<bool>(global3.x, false, global3.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, -204f, -1418f) - vec3<f32>(1000f, var_1.a, -2043f))) + vec3<f32>(1f, -366f, -462f)), vec3<f32>(_wgslsmith_f_op_f32(-295f + var_1.a), -1242f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a, var_1.a)))))));
    let var_3 = arg_1.b;
    let var_4 = !select(select(vec4<bool>(true, global3.x, select(global3.x, false, global3.x), !global3.x), select(!vec4<bool>(true, global3.x, global3.x, global3.x), !vec4<bool>(global3.x, true, global3.x, global3.x), vec4<bool>(true, true, true, true)), -2094f <= _wgslsmith_div_f32(719f, var_1.a)), !vec4<bool>(global3.x == global3.x, select(global3.x, global3.x, true), any(vec3<bool>(true, false, global3.x)), true), false);
    return Struct_2(arg_1.a, Struct_1(~(~(-var_3.a))));
}

fn func_1(arg_0: u32) -> vec4<i32> {
    let var_0 = Struct_1(vec4<i32>(global2.x, firstTrailingBit(global2.x), -8216i, countOneBits(-(u_input.c.x & global2.x))));
    let var_1 = _wgslsmith_add_vec2_i32(var_0.a.wy, -abs(-global2.yz));
    let var_2 = func_4(func_2(), Struct_2(_wgslsmith_f_op_f32(-605f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(901f, Struct_1(vec4<i32>(-64348i, var_0.a.x, var_1.x, global2.x))), var_0)))), var_0), _wgslsmith_add_u32(min(0u, abs(_wgslsmith_mult_u32(4294967295u, 0u))), func_2()), -528f);
    var var_3 = global3.x;
    global1 = var_2.a;
    return _wgslsmith_div_vec4_i32(var_2.b.a, var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-352f)) * 1f);
    var var_1 = Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(select(-2147483647i, -2147483647i, true), _wgslsmith_add_i32(global2.x, 1i), _wgslsmith_sub_i32(-32586i, global2.x), global2.x & -67487i), func_1(u_input.a)), vec4<i32>(1i, i32(-1i) * -1i, 1i, u_input.b) & func_1(u_input.a & u_input.a)));
    var var_2 = all(select(select(vec3<bool>(all(vec4<bool>(global3.x, global3.x, true, global3.x)), any(global3.yx), var_0 <= 539f), !vec3<bool>(global3.x, true, true), true), select(!vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(true, select(global3.x, global3.x, global3.x), true), false), true));
    let var_3 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(0u, ~(~u_input.a), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(90547u, 25958u), ~vec2<u32>(21616u, u_input.a)), u_input.a ^ abs(0u))), max(reverseBits(9632u), _wgslsmith_div_u32(~_wgslsmith_mult_u32(u_input.a, u_input.a), ~_wgslsmith_sub_u32(53455u, u_input.a))), ~u_input.a);
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(2630f, var_0, var_0, var_0), vec4<f32>(1324f, var_0, 330f, 1196f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 352f, -703f))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -193f, _wgslsmith_f_op_f32(-var_0)))));
    let var_5 = var_1.a.x;
    var_2 = global3.x;
    var var_6 = Struct_1(-var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(-firstLeadingBit(u_input.c))), 47489u, var_3, 39334i, 389f);
}

