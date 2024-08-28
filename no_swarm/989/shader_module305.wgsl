struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_2, 24>;

var<private> global2: array<vec2<bool>, 2>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4) -> vec4<bool> {
    global0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(-global0.x))))));
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1167f))) * global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1719f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f + global0.x), _wgslsmith_f_op_f32(-global0.x)))));
    let var_1 = Struct_3(~((select(u_input.a.x, u_input.a.x, false) & ~31090u) << (u_input.a.x % 32u)), Struct_1(arg_0.a, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x - -423f))))), -314f);
    global0 = var_0;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.b.c, -1771f), vec2<f32>(global0.x, var_1.c), global2[_wgslsmith_index_u32(4294967295u, 2u)]))), _wgslsmith_f_op_vec2_f32(min(var_0, _wgslsmith_f_op_vec2_f32(var_0 + vec2<f32>(-559f, var_1.b.c)))))) * vec2<f32>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(global0.x + 618f)), var_1.b.c));
    return vec4<bool>(all(select(vec2<bool>(true, var_1.b.a), select(!vec2<bool>(false, var_1.b.a), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(false, arg_0.a), true), true), !select(global2[_wgslsmith_index_u32(var_1.a, 2u)], vec2<bool>(arg_0.a, var_1.b.a), var_1.b.a))), var_1.b.a, !any(!select(vec4<bool>(false, false, true, false), vec4<bool>(var_1.b.a, false, false, arg_0.a), vec4<bool>(var_1.b.a, false, var_1.b.a, true))), var_1.b.a);
}

fn func_2(arg_0: i32) -> Struct_4 {
    var var_0 = select(!vec4<bool>(748f < _wgslsmith_f_op_f32(global0.x + global0.x), false, !any(vec3<bool>(false, true, true)), any(vec3<bool>(true, true, true))), select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), true), all(vec3<bool>(true, false, false))), func_3(Struct_4(false, 18445i)), vec4<bool>(true, true, true, true)), vec4<bool>(any(!global2[_wgslsmith_index_u32(u_input.a.x, 2u)]), all(func_3(Struct_4(false, arg_0)).wyy), true, _wgslsmith_mult_i32(arg_0, 1i) < min(-31484i, 62873i)), select(select(any(vec4<bool>(true, true, false, true)), true, true), any(vec4<bool>(false, true, false, false)), false)), func_3(Struct_4(u_input.a.x <= 82545u, 34161i)));
    global2 = array<vec2<bool>, 2>();
    var var_1 = true;
    global1 = array<Struct_2, 24>();
    let var_2 = global1[_wgslsmith_index_u32(firstTrailingBit(~(~0u)), 24u)];
    return Struct_4(var_0.x && true, _wgslsmith_div_i32(abs(~(~arg_0)), ~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 1i, arg_0), var_2.b), -var_2.b.x)));
}

fn func_1() -> StorageBuffer {
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(982f, -1000f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-461f, -1958f), vec2<f32>(global0.x, global0.x)) - _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(665f, -611f)))), !(!(!global2[_wgslsmith_index_u32(1u, 2u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1470f, global0.x)) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1592f)))))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 319f)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, -483f)))))) + vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -630f))));
    var var_0 = func_2(2322i);
    var var_1 = ~vec4<i32>(var_0.b, -(i32(-1i) * -26853i), abs(var_0.b), -_wgslsmith_clamp_i32(abs(-13901i), var_0.b, _wgslsmith_clamp_i32(var_0.b, var_0.b, var_0.b)));
    let var_2 = vec4<u32>(u_input.a.x, u_input.a.x & u_input.a.x, ~(~(~u_input.a.x)) << (_wgslsmith_add_u32(u_input.a.x, 1u) % 32u), 8547u);
    return StorageBuffer(vec4<u32>(4294967295u, ~countOneBits(u_input.a.x), u_input.a.x, var_2.x << ((select(4294967295u, 1u, var_0.a) & 1u) % 32u)), var_2 & ~var_2, ~reverseBits(-37114i), 83055u, var_2.xw);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

