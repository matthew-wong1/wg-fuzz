struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 8> = array<vec2<bool>, 8>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global1: array<Struct_2, 16>;

var<private> global2: vec2<f32> = vec2<f32>(-505f, 518f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_3) -> u32 {
    let var_0 = reverseBits(vec4<i32>(abs(u_input.a), reverseBits(_wgslsmith_div_i32(0i, _wgslsmith_div_i32(arg_3.e.c.x, -544i))), ~firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.c.x, 0i, arg_2.c.x), vec3<i32>(14399i, u_input.a, arg_2.c.x))), arg_3.e.c.x));
    var var_1 = ~select(arg_0.zx | select(u_input.c.xy, reverseBits(arg_3.c.yw), true), arg_3.c.xz, select(select(global0[_wgslsmith_index_u32(1u, 8u)], vec2<bool>(arg_3.a, false), !arg_1), global0[_wgslsmith_index_u32(~u_input.c.x, 8u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 36298u, arg_2.a, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(6539u, u_input.c.x, 1u, u_input.c.x), vec4<u32>(arg_3.d.a, 65267u, 27146u, arg_2.a))), 8u)]));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.b.a.x, arg_3.e.b.a.x) + vec2<f32>(-287f, -1138f)), _wgslsmith_f_op_vec2_f32(sign(arg_2.b.a.ww)))) + vec2<f32>(_wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(max(global2.x, global2.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.b.a.xy)), vec2<bool>(arg_1, any(!vec4<bool>(false, true, arg_3.a, arg_3.a))))) * arg_2.b.a.yw);
    var var_2 = arg_2.b.a.x;
    let var_3 = arg_2;
    return 1u;
}

fn func_2() -> f32 {
    var var_0 = reverseBits(firstLeadingBit(~func_3(u_input.c, true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.yy, vec2<u32>(4294967295u, u_input.b.x)), 16u)], Struct_3(false, Struct_1(vec4<f32>(global2.x, global2.x, global2.x, global2.x)), u_input.b, global1[_wgslsmith_index_u32(u_input.b.x, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)]))));
    return -1369f;
}

fn func_1(arg_0: f32) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, 1223f) - _wgslsmith_f_op_f32(abs(1266f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-377f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-global2.x))))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.x, arg_0), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(467f, 1000f), vec2<f32>(global2.x, -367f), false)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-600f, 1000f))))))));
    let var_0 = Struct_2(_wgslsmith_sub_u32(u_input.c.x, 0u), Struct_1(vec4<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))), global2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.x), 184f, false)))), vec2<i32>(countOneBits(u_input.a), u_input.a), global2.x);
    let var_1 = var_0.b.a.yz;
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1024f, var_1.x) * vec2<f32>(-477f, var_0.d)))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 1000f), var_0.b.a.wz)))));
    let var_3 = -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, abs(u_input.a), abs(u_input.a), abs(_wgslsmith_sub_i32(u_input.a, var_0.c.x))), vec4<i32>(-1i, 0i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, 1i, 46947i, var_0.c.x)), -vec4<i32>(-1i, -2147483647i, 2147483647i, u_input.a)), _wgslsmith_mod_i32(var_0.c.x, 71826i) >> (var_0.a % 32u)));
    return var_0.b;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: Struct_3) -> bool {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -1359f, global2.x, _wgslsmith_div_f32(380f, _wgslsmith_f_op_f32(f32(-1f) * -832f)))));
    var var_2 = _wgslsmith_mod_i32(abs(-u_input.a), _wgslsmith_mult_i32(-42820i, arg_2.e.c.x) << (arg_0.x % 32u));
    let var_3 = u_input.a;
    var_1 = arg_2.d.b.a;
    return any(select(select(!select(vec4<bool>(arg_2.a, arg_2.a, true, true), vec4<bool>(false, true, false, var_0), vec4<bool>(false, arg_2.a, false, arg_2.a)), select(!vec4<bool>(arg_2.a, true, true, var_0), !vec4<bool>(var_0, arg_2.a, var_0, true), false || var_0), select(vec4<bool>(true, true, var_0, false), select(vec4<bool>(false, var_0, var_0, arg_2.a), vec4<bool>(true, false, var_0, arg_2.a), true), select(vec4<bool>(arg_2.a, arg_2.a, false, true), vec4<bool>(arg_2.a, false, true, arg_2.a), vec4<bool>(var_0, arg_2.a, arg_2.a, false)))), select(vec4<bool>(!arg_2.a, arg_2.a, !arg_2.a, true), vec4<bool>(true, arg_0.x == 4294967295u, select(true, false, true), true), !vec4<bool>(true, true, arg_2.a, false)), arg_2.e.a >= countOneBits(firstLeadingBit(arg_2.e.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = select(vec4<bool>(func_4(~u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.x, -985f)))), Struct_3(true, func_1(global2.x), vec4<u32>(u_input.b.x, u_input.c.x, u_input.b.x, 70332u), Struct_2(60811u, Struct_1(vec4<f32>(-819f, global2.x, global2.x, global2.x)), vec2<i32>(0i, var_0), -765f), Struct_2(1u, Struct_1(vec4<f32>(916f, -1603f, global2.x, 831f)), vec2<i32>(var_0, -2147483647i), global2.x))), false, any(global0[_wgslsmith_index_u32(u_input.c.x, 8u)]), true), !select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, u_input.b.x > 3306u, u_input.b.x != u_input.c.x), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), true)), !vec4<bool>(true && (38207u > u_input.b.x), 1u < ~u_input.c.x, any(vec2<bool>(false, false)), true));
    let var_2 = var_1.wy;
    var var_3 = -1401f;
    var var_4 = vec2<u32>(~(~u_input.c.x), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, 1u, 4294967295u), vec3<u32>(1u, u_input.b.x, 4294967295u)), countOneBits(vec3<u32>(0u, 1u, u_input.b.x))) ^ u_input.c.x);
    var var_5 = var_1.xyw;
    var_1 = !vec4<bool>(var_1.x, var_1.x, false, any(select(var_1.xzw, var_1.xww, vec3<bool>(false, var_1.x, var_1.x))));
    var_5 = vec3<bool>(all(!select(select(vec2<bool>(false, var_1.x), vec2<bool>(false, false), vec2<bool>(var_5.x, var_5.x)), select(vec2<bool>(var_1.x, true), vec2<bool>(var_5.x, false), var_1.x), false)), var_5.x, !(!any(!var_5.yy)));
    var var_6 = global1[_wgslsmith_index_u32(47444u, 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(-2871i >> (var_4.x % 32u), var_6.a, _wgslsmith_div_vec2_f32(var_6.b.a.yy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(func_1(-1323f).a.zx)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-333f, 1812f))))), func_1(global2.x).a.wwz);
}

