struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(0i, i32(-2147483648), -1i, -51737i);

var<private> global1: vec4<f32> = vec4<f32>(-2427f, 1907f, -752f, -632f);

var<private> global2: i32 = 3716i;

var<private> global3: array<vec2<bool>, 17>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> bool {
    return any(!vec3<bool>(arg_0.a.x, all(!vec4<bool>(arg_0.a.x, true, arg_0.a.x, true)), arg_0.c > u_input.b.x));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(vec2<bool>(!all(vec4<bool>(true, false, true, true)) | func_3(Struct_1(vec2<bool>(false, true), global1.x, 56928u)), all(global3[_wgslsmith_index_u32(52910u, 17u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(-1512f + global1.x), true))), 0u);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.wyz * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1579f, global1.x, 2398f)))) + vec3<f32>(626f, _wgslsmith_div_f32(-815f, 295f), -150f))));
    var var_2 = u_input.b.x < ~1u;
    var var_3 = Struct_1(select(vec2<bool>(var_0.a.x, var_0.a.x), var_0.a, !var_0.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-566f - -121f), 1f, all(global3[_wgslsmith_index_u32(76537u, 17u)]))), global1.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global1.x)), -663f, var_0.a.x)))))), max(~_wgslsmith_div_u32(countOneBits(0u), select(4294967295u, u_input.b.x, true)), ~(~countOneBits(var_0.c))));
    var var_4 = vec4<i32>(-13533i, global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(var_3.c, 4u)], 1i >> (firstLeadingBit((var_0.c >> (66847u % 32u)) ^ var_0.c) % 32u));
    return _wgslsmith_mult_u32(~min(0u, ~var_0.c), _wgslsmith_add_u32(u_input.b.x & firstTrailingBit(10415u), 0u)) >> (var_3.c % 32u);
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> vec4<f32> {
    var var_0 = true;
    var var_1 = 59416u;
    global0 = array<i32, 4>();
    let var_2 = true | (u_input.b.x == (func_2() << ((abs(26176u) >> (_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 0u, 106020u)) % 32u)) % 32u)));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-191f, arg_1.x, arg_1.x, 1240f))))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_1.x)), -1032f, -1431f, _wgslsmith_f_op_f32(f32(-1f) * -956f))))));
    return vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1368f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global1.x))))))), _wgslsmith_f_op_f32(658f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1940f * _wgslsmith_f_op_f32(min(arg_1.x, 320f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1916f + global1.x) * _wgslsmith_f_op_f32(exp2(global1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.yz;
    global1 = _wgslsmith_f_op_vec4_f32(func_1(false, _wgslsmith_f_op_vec3_f32(round(global1.zzy))));
    let var_1 = _wgslsmith_f_op_f32(-global1.x);
    global0 = array<i32, 4>();
    var var_2 = select(vec3<bool>(true, -global0[_wgslsmith_index_u32(countOneBits(var_0.x), 4u)] == -55737i, func_3(Struct_1(!global3[_wgslsmith_index_u32(0u, 17u)], _wgslsmith_f_op_f32(var_1 + 426f), _wgslsmith_add_u32(var_0.x, 44230u)))), vec3<bool>(false, all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), all(vec3<bool>(false, true, true)))), false), func_3(Struct_1(select(select(global3[_wgslsmith_index_u32(27046u, 17u)], vec2<bool>(false, true), global3[_wgslsmith_index_u32(43831u, 17u)]), select(global3[_wgslsmith_index_u32(1u, 17u)], global3[_wgslsmith_index_u32(var_0.x, 17u)], false), 844f <= global1.x), _wgslsmith_f_op_f32(f32(-1f) * -1576f), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, var_0.x), vec3<u32>(var_0.x, var_0.x, u_input.a)), ~1u))));
    var var_3 = vec3<i32>(33594i, global0[_wgslsmith_index_u32(u_input.b.x, 4u)], reverseBits(global0[_wgslsmith_index_u32(var_0.x, 4u)]));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-254f, var_1, -1000f, -1153f))) + vec4<f32>(var_1, global1.x, global1.x, global1.x)))))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1350f, var_1, -928f, 112f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, var_1, 1000f, var_1))), vec4<f32>(_wgslsmith_f_op_vec4_f32(func_1(false, global1.zzw)).x, var_1, _wgslsmith_f_op_f32(max(var_1, var_1)), -1564f), !select(vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec4<bool>(false, var_2.x, var_2.x, true), vec4<bool>(false, false, var_2.x, true)))))));
    var var_4 = _wgslsmith_mult_u32(countOneBits(1161u), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(-_wgslsmith_mult_i32(var_3.x ^ 28666i, _wgslsmith_dot_vec4_i32(u_input.c, u_input.c))), i32(-1i) * -26690i, abs(reverseBits(abs(-55140i))) & -_wgslsmith_dot_vec3_i32(u_input.c.wzz, u_input.c.wyx), u_input.c, select(firstLeadingBit(vec2<u32>(1u, 1u) & ~u_input.b.zx), vec2<u32>(~u_input.a, countOneBits(u_input.b.x) << (42213u % 32u)), var_2.x));
}

