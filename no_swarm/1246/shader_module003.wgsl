struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9> = array<u32, 9>(27556u, 0u, 0u, 4294967295u, 0u, 38381u, 0u, 0u, 35101u);

var<private> global1: i32 = -63837i;

var<private> global2: Struct_1;

var<private> global3: i32 = i32(-2147483648);

var<private> global4: array<vec4<i32>, 11> = array<vec4<i32>, 11>(vec4<i32>(-34023i, -1i, 2147483647i, 39799i), vec4<i32>(25613i, 50102i, -23406i, 1i), vec4<i32>(41242i, 2147483647i, -63398i, 16707i), vec4<i32>(-8513i, -59273i, -44549i, -1i), vec4<i32>(8510i, 58972i, 0i, 2147483647i), vec4<i32>(23172i, 784i, 18777i, 7530i), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), i32(-2147483648)), vec4<i32>(1i, -70300i, 0i, i32(-2147483648)), vec4<i32>(2147483647i, 8368i, -4074i, -5555i), vec4<i32>(-35645i, 0i, i32(-2147483648), 67496i), vec4<i32>(-909i, 2147483647i, 9401i, 25327i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    return _wgslsmith_div_vec2_u32(select(~arg_2.b, global2.b, select(arg_2.d, global2.d, arg_3.d.x)) ^ (vec2<u32>(arg_3.b.x, arg_3.b.x) ^ arg_2.b), ~(arg_3.b ^ (vec2<u32>(arg_2.a, u_input.a) << (global2.b % vec2<u32>(32u)))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_1(arg_2, func_3(_wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, arg_2), arg_2) != select(~global0[_wgslsmith_index_u32(1u, 9u)], arg_2, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(236f, arg_0.x, arg_0.x, arg_0.x))), Struct_1(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(global2.a, arg_2, global0[_wgslsmith_index_u32(28477u, 9u)]), firstLeadingBit(global2.a)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(42978u, u_input.a), vec2<u32>(u_input.a, global2.a)), abs(u_input.c.x), global2.d), Struct_1(1u, ~firstTrailingBit(vec2<u32>(63933u, global2.a)), -2147483647i, select(vec2<bool>(arg_1.x, false), global2.d, false))), global2.c, global2.d);
    return var_0;
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -637f) * -442f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -310f), _wgslsmith_f_op_f32(round(-2234f))))))))));
    global2 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, 617f) - vec3<f32>(-420f, var_0, var_0)) - vec3<f32>(var_0, 1374f, var_0)))) + vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), -440f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1940f - var_0))), -674f)), select(!select(!vec3<bool>(global2.d.x, false, false), vec3<bool>(global2.d.x, true, true), select(vec3<bool>(true, global2.d.x, global2.d.x), vec3<bool>(global2.d.x, false, false), vec3<bool>(global2.d.x, false, global2.d.x))), !select(!vec3<bool>(global2.d.x, false, false), select(vec3<bool>(true, global2.d.x, true), vec3<bool>(false, global2.d.x, true), false), global2.d.x), vec3<bool>(!(!global2.d.x), global2.d.x, select(global2.d.x, !global2.d.x, any(vec4<bool>(true, true, false, global2.d.x))))), ~4294967295u);
    global2 = func_2(vec3<f32>(var_0, _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0 * var_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0, var_0)) - -1250f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + 1596f) + 1165f))), vec3<bool>(true, true, true), 4294967295u);
    global3 = func_2(vec3<f32>(-494f, _wgslsmith_div_f32(_wgslsmith_div_f32(382f, var_0), _wgslsmith_f_op_f32(floor(var_0))), var_0), vec3<bool>(any(vec3<bool>(global2.d.x, true, global2.d.x)), func_2(_wgslsmith_div_vec3_f32(vec3<f32>(151f, var_0, var_0), vec3<f32>(var_0, var_0, var_0)), select(vec3<bool>(true, global2.d.x, false), vec3<bool>(false, global2.d.x, global2.d.x), global2.d.x), ~62698u).d.x, global2.d.x), max(_wgslsmith_mult_u32(u_input.a, 5753u) & ~4294967295u, ~global2.b.x & 15317u)).c ^ (global2.c >> (~43224u % 32u));
    var var_1 = u_input.c.xz;
    return -378f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1());
    global1 = -20549i;
    global2 = Struct_1(1u >> (reverseBits(~global0[_wgslsmith_index_u32(1u, 9u)]) % 32u), ~(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 309f, -482f)), vec3<bool>(global2.d.x, global2.d.x, false), 1u).b << (~select(global2.b, vec2<u32>(12889u, 5847u), global2.d.x) % vec2<u32>(32u))), -_wgslsmith_mult_i32(u_input.b, global2.c), global2.d);
    let var_1 = vec3<u32>(func_3(true || global2.d.x, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -1948f, 1465f, 1000f) - vec4<f32>(-1465f, 416f, -1268f, var_0)))))), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0, var_0, var_0), vec3<f32>(135f, var_0, -1000f)))), !vec3<bool>(true, global2.d.x, global2.d.x), ~global2.b.x), Struct_1(_wgslsmith_dot_vec2_u32(global2.b, global2.b), global2.b, _wgslsmith_sub_i32(abs(u_input.b), i32(-1i) * -1i), !vec2<bool>(global2.d.x, global2.d.x))).x, 1u, ~4294967295u);
    let var_2 = func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1144f, var_0) - vec3<f32>(470f, -1407f, -1253f)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(507f, var_0, var_0)))))), vec3<bool>(!(1000f >= var_0), !global2.d.x, true), ~793u).c | (global2.c ^ u_input.b);
    var var_3 = _wgslsmith_f_op_f32(-var_0) > var_0;
    let var_4 = firstLeadingBit(vec4<i32>(1954i, -u_input.b, 43360i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 0i, var_2) ^ u_input.c.wzy, min(u_input.c.ywx, vec3<i32>(u_input.c.x, -1i, var_2))), -2147483647i));
    var var_5 = _wgslsmith_f_op_f32(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(256f + -915f) - _wgslsmith_f_op_f32(-var_0)), global2.d.x)), _wgslsmith_f_op_f32(func_1())), -(var_2 ^ 15156i), (0i >> ((_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2.a, global0[_wgslsmith_index_u32(var_1.x, 9u)], 0u), vec4<u32>(global0[_wgslsmith_index_u32(100657u, 9u)], 59486u, global2.b.x, 5023u)) >> (1u % 32u)) % 32u)) & (-var_4.x & _wgslsmith_div_i32(var_4.x, _wgslsmith_dot_vec3_i32(u_input.c.yxw, u_input.c.wyw))), var_0);
}

