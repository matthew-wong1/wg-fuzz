struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 21364u;

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(19756u, i32(-2147483648), vec4<f32>(-765f, -1773f, 213f, 980f)), Struct_1(0u, -1i, vec4<f32>(1703f, -1588f, -1000f, -358f)), Struct_1(93652u, 0i, vec4<f32>(566f, -1927f, -688f, -376f)), Struct_1(30909u, 1i, vec4<f32>(487f, 546f, -2186f, 1501f)), Struct_1(46288u, -29351i, vec4<f32>(-1671f, 1000f, 365f, 1000f)), Struct_1(4294967295u, 2147483647i, vec4<f32>(308f, -1508f, -495f, 545f)));

var<private> global2: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<bool> {
    let var_0 = select(u_input.d, u_input.a, false);
    let var_1 = vec4<bool>(true, all(vec2<bool>(true, true)), true, any(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true))));
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.c.x)))))));
    global1 = array<Struct_1, 6>();
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global2.c.x))));
    return select(vec3<bool>(true != ((52835u <= u_input.b) | true), var_1.x || var_1.x, _wgslsmith_f_op_f32(1737f * _wgslsmith_f_op_f32(floor(1454f))) > -1051f), vec3<bool>(!(!var_1.x), var_1.x, any(select(select(var_1.zz, vec2<bool>(var_1.x, var_1.x), var_1.x), select(vec2<bool>(var_1.x, true), vec2<bool>(true, var_1.x), var_1.x), select(var_1.xw, var_1.yz, var_1.x)))), vec3<bool>(global2.b <= (~global2.b | -3626i), any(select(select(var_1.xzz, vec3<bool>(var_1.x, false, false), var_1.xyx), var_1.zyw, !vec3<bool>(var_1.x, var_1.x, false))), !any(!vec4<bool>(false, false, true, var_1.x))));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_add_i32(max(select(firstLeadingBit(-11838i), _wgslsmith_mult_i32(1i, global2.b >> (u_input.a.x % 32u)), all(func_3())), global2.b), global2.b);
    global1 = array<Struct_1, 6>();
    let var_1 = Struct_1(~_wgslsmith_mult_u32(u_input.b, ~1u) ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(41799u, 33436u), u_input.a.xz), global2.b | global2.b, vec4<f32>(-1508f, _wgslsmith_f_op_f32(global2.c.x + 432f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -366f)) * -211f), global2.c.x));
    var var_2 = Struct_1(~_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.d.xww), vec3<u32>(1u, u_input.e, 0u)) | ~_wgslsmith_div_u32(u_input.d.x, ~u_input.a.x), select(45944i, global2.b, true), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.c.x, var_1.c.x) * _wgslsmith_f_op_f32(abs(-673f))))), _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.c.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1142f + global2.c.x) - _wgslsmith_f_op_f32(step(-603f, -130f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1290f, 564f)), _wgslsmith_f_op_f32(-var_1.c.x))) - _wgslsmith_f_op_f32(-global2.c.x))));
    var_2 = var_1;
    return 0u;
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, 0u, global2.a) ^ u_input.a.wyx), _wgslsmith_add_vec3_u32(~select(vec3<u32>(u_input.c, global2.a, global2.a), u_input.d.zxw, vec3<bool>(false, true, true)), vec3<u32>(~1u, global2.a, ~global2.a))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.b, ~max(15846u, 4294967295u)), ~4294967295u), 17098u);
    global1 = array<Struct_1, 6>();
    let var_1 = global1[_wgslsmith_index_u32(func_2(), 6u)];
    var var_2 = ~u_input.a.x;
    let var_3 = select(!select(!func_3(), vec3<bool>(39116u > u_input.a.x, var_1.c.x > global2.c.x, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)), !select(vec3<bool>(global2.b == global2.b, all(vec3<bool>(true, true, true)), 5361i != global2.b), vec3<bool>(true, func_3().x, true), vec3<bool>(true, true, true)), vec3<bool>(!any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false)), !func_3().x, true));
    return global1[_wgslsmith_index_u32(11611u, 6u)];
}

fn func_4(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = Struct_1(1u, _wgslsmith_sub_i32(firstLeadingBit(abs(-1576i & global2.b)), -27790i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1056f, 1347f, arg_0.c.x)) + _wgslsmith_f_op_vec4_f32(abs(global2.c)))));
    global2 = arg_0;
    var var_1 = Struct_1(~62084u, arg_0.b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global2.c.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.c.x)) + -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -667f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -603f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.x - -2098f) * func_1().c.x), _wgslsmith_div_f32(arg_0.c.x, -679f)));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(var_1.c.zw, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-951f, -683f)), func_3().zy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(927f, -232f)))), abs(global2.a) == u_input.c)) - vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.c.x)), 109f)), var_1.c.x, var_0.b, var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 6>();
    var var_0 = Struct_1(u_input.e, max(~max(-1i, -52776i) ^ _wgslsmith_add_i32(~(-46010i), _wgslsmith_add_i32(global2.b, global2.b)), _wgslsmith_mult_i32(~global2.b, max(~global2.b, -2147483647i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, global2.c.x, global2.c.x, -794f)), _wgslsmith_div_vec4_f32(global2.c, vec4<f32>(694f, global2.c.x, 176f, global2.c.x))) + _wgslsmith_f_op_vec4_f32(-global2.c))));
    let x = u_input.a;
    s_output = func_4(func_1());
}

