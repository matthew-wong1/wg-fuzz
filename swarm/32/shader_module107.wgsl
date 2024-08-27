struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: i32,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 31>;

var<private> global1: array<vec3<i32>, 21>;

var<private> global2: array<u32, 29> = array<u32, 29>(21619u, 80151u, 100429u, 41539u, 21526u, 693u, 4294967295u, 64136u, 15277u, 11857u, 4294967295u, 4294967295u, 18144u, 4294967295u, 4294967295u, 24640u, 4294967295u, 4294967295u, 31162u, 1u, 52344u, 11596u, 4294967295u, 15613u, 20159u, 20054u, 4294967295u, 4294967295u, 4294967295u);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)))), select(vec3<bool>(true, true, true), vec3<bool>(select(true, true, true), true, true), vec3<bool>(true, true, true)), u_input.d, vec3<bool>(any(vec4<bool>(false, true, true, true)), all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), all(vec4<bool>(true, false, true, false))), ~vec4<u32>(u_input.a, min(1u, 1037u), 1u, u_input.b)), global0[_wgslsmith_index_u32(~abs(1u), 31u)]);
    let var_1 = Struct_1(var_0.a.a, !vec3<bool>(!(!var_0.a.a.x), !(!var_0.a.d.x), var_0.a.a.x | !var_0.a.b.x), _wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(20672u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)] ^ abs(-global1[_wgslsmith_index_u32(2575u, 21u)])), vec3<bool>(false, any(!(!vec4<bool>(true, true, var_0.a.b.x, true))), false), abs(var_0.a.e));
    let var_2 = u_input.b;
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(var_0.b.x, _wgslsmith_f_op_f32(exp2(var_0.b.x)), true)), 1102f), _wgslsmith_f_op_vec2_f32(select(var_0.b.zx, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.yx) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1013f, var_0.b.x), vec2<f32>(-1212f, var_0.b.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, var_0.b.x) + var_0.b.zx), var_0.a.a.x)), vec2<bool>(true, !var_1.d.x))));
    global1 = array<vec3<i32>, 21>();
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * var_0.b.x)), _wgslsmith_f_op_f32(-var_3.x))))));
}

fn func_2() -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-507f, _wgslsmith_f_op_f32(f32(-1f) * -272f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -387f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-792f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-464f)), _wgslsmith_f_op_f32(trunc(-271f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), -695f, false)))), -1485f)));
    var var_1 = Struct_1(vec2<bool>(true, true), select(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)), vec3<bool>(all(vec3<bool>(true, true, true)), all(vec2<bool>(true, true)), true), false), u_input.d, !vec3<bool>(true, false, all(vec4<bool>(true, true, true, true))), vec4<u32>(0u, 24485u, u_input.b, _wgslsmith_div_u32(0u, _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(26757u, 29u)] | u_input.a, 0u | u_input.e.x, 2903u))));
    let var_2 = Struct_1(select(!(!var_1.b.zy), var_1.d.zz, var_1.a), select(!select(var_1.d, var_1.d, true), vec3<bool>(var_0.x <= var_0.x, true, u_input.a != 4294967295u), var_1.d.x), -6441i ^ -_wgslsmith_dot_vec2_i32(u_input.c.zw >> (vec2<u32>(u_input.e.x, 1u) % vec2<u32>(32u)), max(vec2<i32>(var_1.c, u_input.c.x), u_input.c.zx)), select(var_1.b, vec3<bool>(var_1.d.x & any(vec3<bool>(false, true, false)), true, true), var_1.b), var_1.e);
    global0 = array<vec3<f32>, 31>();
    global2 = array<u32, 29>();
    return Struct_2(Struct_1(select(vec2<bool>(select(false, var_1.d.x, true), all(var_2.d)), !(!vec2<bool>(var_2.d.x, var_2.d.x)), any(select(var_2.d, vec3<bool>(true, var_2.a.x, true), false))), var_1.b, ~u_input.d, !select(vec3<bool>(false, true, false), select(vec3<bool>(true, var_1.a.x, var_2.d.x), var_1.d, true), var_2.b), abs(var_2.e)), _wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.e.x, 29u)], 29u)], 31u)], global0[_wgslsmith_index_u32(1u, 31u)]));
}

fn func_1() -> vec2<bool> {
    var var_0 = func_2();
    return vec2<bool>(all(vec3<bool>(_wgslsmith_f_op_f32(ceil(-1084f)) == _wgslsmith_f_op_f32(-var_0.b.x), var_0.a.d.x, all(vec3<bool>(var_0.a.a.x, false, var_0.a.b.x)))), any(select(select(vec4<bool>(var_0.a.a.x, true, var_0.a.d.x, var_0.a.a.x), vec4<bool>(true, true, true, false), any(vec2<bool>(true, var_0.a.b.x))), !vec4<bool>(var_0.a.d.x, true, true, var_0.a.b.x), -2147483647i > var_0.a.c)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_2) -> StorageBuffer {
    global2 = array<u32, 29>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -954f))), -1000f, arg_3.b.x);
    global1 = array<vec3<i32>, 21>();
    global1 = array<vec3<i32>, 21>();
    let var_1 = var_0.x;
    return StorageBuffer(-min(u_input.c.xzx << (vec3<u32>(arg_3.a.e.x, 6054u, u_input.a) % vec3<u32>(32u)), u_input.c.yzz) ^ vec3<i32>(~func_2().a.c, -1i, -firstLeadingBit(-1i)), firstLeadingBit(~select(u_input.c, _wgslsmith_sub_vec4_i32(vec4<i32>(-51754i, 29264i, 24989i, u_input.d), vec4<i32>(arg_1.c, arg_1.c, -1i, arg_3.a.c)), select(arg_2, vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), false))), 43219u, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_3.b.x, 1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1073f, arg_3.b.x) + _wgslsmith_f_op_f32(782f + arg_3.b.x))))), firstLeadingBit(-(-2147483647i ^ arg_3.a.c) >> (reverseBits(~u_input.e.x) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.wzw;
    global2 = array<u32, 29>();
    global0 = array<vec3<f32>, 31>();
    let var_1 = -1402f;
    var_0 = ~_wgslsmith_add_vec3_i32(countOneBits(global1[_wgslsmith_index_u32(~u_input.e.x, 21u)]), u_input.c.zwx);
    var var_2 = u_input.c.xww;
    let x = u_input.a;
    s_output = func_4(func_1(), func_2().a, !select(vec4<bool>(all(vec4<bool>(false, true, true, false)), func_2().a.d.x, true, func_1().x), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true)), false)), Struct_2(func_2().a, _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(~26609u, 31u)])));
}

