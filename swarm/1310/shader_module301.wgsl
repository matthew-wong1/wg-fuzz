struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(false, false, true, false), -1030f, vec4<i32>(-37277i, 2147483647i, -1i, 0i));

var<private> global1: array<Struct_1, 14>;

var<private> global2: array<vec4<f32>, 5>;

var<private> global3: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec4<bool>(false, false, true, true), -372f, vec4<i32>(-4088i, 14025i, 30686i, i32(-2147483648))), Struct_1(vec4<bool>(false, true, false, false), -451f, vec4<i32>(1i, -15584i, 46398i, -1i)), Struct_1(vec4<bool>(false, false, true, true), 1373f, vec4<i32>(-76314i, 38651i, 7593i, -44515i)), Struct_1(vec4<bool>(true, true, true, false), -480f, vec4<i32>(-30145i, -12823i, 2147483647i, 0i)), Struct_1(vec4<bool>(true, true, true, true), 1464f, vec4<i32>(50186i, i32(-2147483648), -31698i, 0i)), Struct_1(vec4<bool>(false, true, true, false), -1000f, vec4<i32>(26370i, i32(-2147483648), -9107i, -35109i)), Struct_1(vec4<bool>(true, false, true, true), 1600f, vec4<i32>(-1i, 2147483647i, 53998i, -1i)), Struct_1(vec4<bool>(true, true, true, false), 653f, vec4<i32>(-45087i, 0i, i32(-2147483648), 2147483647i)));

var<private> global4: vec3<u32> = vec3<u32>(24494u, 4294967295u, 1660u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<u32> {
    return ~(~(~max(vec3<u32>(80252u, u_input.c, u_input.a), vec3<u32>(4294967295u, global4.x, 4294967295u)) ^ vec3<u32>(_wgslsmith_dot_vec2_u32(global4.yy, vec2<u32>(1u, global4.x)), abs(global4.x), u_input.a & 14181u)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 14u)];
    global2 = array<vec4<f32>, 5>();
    global4 = ~func_3();
    return 1700f;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1763f))));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.b + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.b))))));
    var var_2 = Struct_1(!(!(!select(vec4<bool>(global0.a.x, arg_2.a.x, global0.a.x, false), global0.a, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(750f - -1253f) - _wgslsmith_f_op_f32(func_2(-70312i, arg_2, true))) * 211f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)) - _wgslsmith_f_op_f32(-854f * _wgslsmith_f_op_f32(step(arg_2.b, 931f))))), arg_2.c);
    global3 = array<Struct_1, 8>();
    global1 = array<Struct_1, 14>();
    return ~var_2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 8>();
    var var_0 = _wgslsmith_f_op_f32(-global0.b);
    let var_1 = Struct_1(select(global0.a, !(!global0.a), vec4<bool>(false, false, select(false, true, true), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-321f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(global0.b + global0.b))))), abs(-global0.c));
    var var_2 = vec3<i32>(global0.c.x, var_1.c.x, _wgslsmith_clamp_i32(-u_input.b, -30352i, global0.c.x));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_1.b, var_1.b, global0.a.x)))) - global0.b), _wgslsmith_f_op_f32(-var_1.b)));
    var var_4 = Struct_1(vec4<bool>(true, var_1.a.x, false, true), var_1.b, max(_wgslsmith_sub_vec4_i32(abs(-vec4<i32>(-2147483647i, var_2.x, var_2.x, 0i)), vec4<i32>(_wgslsmith_mult_i32(-1i, var_1.c.x), var_1.c.x, -1i, firstLeadingBit(global0.c.x))), select(countOneBits(vec4<i32>(var_2.x, -37188i, u_input.b, 2147483647i)), vec4<i32>(-1i, u_input.b, func_1(global2[_wgslsmith_index_u32(1u, 5u)], var_1.c, Struct_1(vec4<bool>(global0.a.x, global0.a.x, true, global0.a.x), 872f, vec4<i32>(var_1.c.x, u_input.b, var_2.x, var_2.x))), var_1.c.x), vec4<bool>(true, 46127u != u_input.c, any(var_1.a.wy), var_1.c.x >= global0.c.x))));
    var var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-1i, -2147483647i));
}

