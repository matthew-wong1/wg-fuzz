struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: vec3<i32> = vec3<i32>(0i, -9095i, 0i);

var<private> global2: Struct_2 = Struct_2(vec2<f32>(1000f, -1028f));

var<private> global3: array<vec2<bool>, 14>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec3<i32>) -> i32 {
    let var_0 = firstTrailingBit(_wgslsmith_mod_u32(~firstTrailingBit(reverseBits(u_input.b.x)), arg_0.c));
    global0 = -2147483647i;
    let var_1 = select(!select(!vec2<bool>(arg_1.a.x, arg_1.a.x), vec2<bool>(arg_2.x >= arg_2.x, arg_1.a.x), arg_1.a.x), vec2<bool>(arg_1.a.x, all(!global3[_wgslsmith_index_u32(~var_0, 14u)])), select(!vec2<bool>(true, all(vec3<bool>(arg_1.a.x, true, arg_1.a.x))), !select(arg_1.a.yz, arg_1.a.zx, true), vec2<bool>(!(arg_0.b > 1i), true)));
    var var_2 = global3[_wgslsmith_index_u32(arg_0.a, 14u)];
    let var_3 = global2.a;
    return _wgslsmith_div_i32(~2147483647i, ~abs(~arg_0.b));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_5) -> i32 {
    global0 = -22320i;
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-335f, -1493f)));
    global0 = firstLeadingBit(u_input.e);
    var var_1 = select(80913i >> (1u % 32u), -(0i ^ firstTrailingBit(1i)), !select(u_input.a <= _wgslsmith_clamp_u32(arg_2.c, 0u, 1567u), any(vec2<bool>(true, true)), false));
    let var_2 = Struct_1(select(!select(select(vec4<bool>(true, true, true, arg_1), vec4<bool>(true, arg_0, false, arg_0), true), vec4<bool>(arg_1, true, false, true), arg_0), !select(!vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(true, arg_1, arg_0, true), !vec4<bool>(false, false, true, arg_0)), false), vec3<i32>(abs(_wgslsmith_add_i32(global1.x & 22728i, func_3(arg_2, Struct_1(vec4<bool>(arg_0, false, arg_0, false), vec3<i32>(arg_2.b, 0i, u_input.d)), vec3<f32>(var_0.a.x, global2.a.x, var_0.a.x), vec3<i32>(arg_2.b, 1i, -33046i)))), -1i, select(_wgslsmith_mult_i32(2147483647i, _wgslsmith_add_i32(-4990i, u_input.c)), 1i, false)));
    return select(global1.x, arg_2.b, var_2.a.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> Struct_2 {
    var var_0 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(~(-1i), -3595i, min(~global1.x, -100472i)), vec3<i32>(-9278i, func_2(true, false, Struct_5(u_input.b.x, 0i, u_input.b.x)), global1.x));
    global3 = array<vec2<bool>, 14>();
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, global2.a.x, global2.a.x) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, global2.a.x, 919f) * vec3<f32>(-1000f, 276f, -118f))) + arg_0.yxw), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(global2.a.x)), arg_0.x, _wgslsmith_div_f32(167f, 852f)))));
    global2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_0.yw, var_1.zy)), _wgslsmith_div_vec2_f32(vec2<f32>(global2.a.x, 1011f), vec2<f32>(arg_0.x, 1412f))))));
    var var_2 = Struct_2(var_1.zz);
    return Struct_2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_0.x, var_1.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1329f), _wgslsmith_f_op_f32(-var_2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2021f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-663f, global2.a.x, -311f, 710f) - vec4<f32>(global2.a.x, -173f, 367f, global2.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, 345f, 694f, -303f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-709f, global2.a.x, 1496f, global2.a.x), vec4<f32>(1603f, 1399f, global2.a.x, 964f))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-388f, _wgslsmith_f_op_f32(-1012f * 1596f), _wgslsmith_f_op_f32(step(global2.a.x, global2.a.x)), _wgslsmith_div_f32(global2.a.x, global2.a.x))))), ~(~u_input.c));
    var var_0 = Struct_5(_wgslsmith_mod_u32(~64902u, 4294967295u), -13354i, abs(_wgslsmith_mult_u32(~(u_input.a | 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u), ~u_input.b))));
    let var_1 = vec3<bool>(!all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true, !any(vec4<bool>(true, true, true, true)));
    global2 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2012f, global2.a.x, global2.a.x, global2.a.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.a.x, global2.a.x, -1000f, 1000f), vec4<f32>(1210f, global2.a.x, global2.a.x, global2.a.x)))))))), -_wgslsmith_add_i32(_wgslsmith_div_i32(~var_0.b, i32(-1i) * -21225i), _wgslsmith_div_i32(u_input.c, -1i)));
    global1 = abs(((~vec3<i32>(-55737i, -7978i, u_input.e) << (abs(vec3<u32>(u_input.b.x, 1u, 4294967295u)) % vec3<u32>(32u))) >> (~vec3<u32>(41920u, 0u, u_input.a) % vec3<u32>(32u))) | abs(countOneBits(vec3<i32>(18185i, u_input.d, -7603i) & vec3<i32>(u_input.d, var_0.b, 0i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(select(_wgslsmith_sub_u32(var_0.a, u_input.b.x), var_0.c, true) | _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 0u, 33371u, 15644u) & vec4<u32>(var_0.c, var_0.c, u_input.b.x, 68245u), ~vec4<u32>(var_0.a, var_0.c, u_input.a, u_input.b.x)), _wgslsmith_mult_u32(~1u, _wgslsmith_add_u32(var_0.a, 85296u)) << (max(u_input.a, var_0.a & 1u) % 32u)));
}

