struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-565f, 1966f);

var<private> global1: Struct_2 = Struct_2(vec3<bool>(false, false, true), vec4<bool>(false, false, false, true), Struct_1(true), Struct_1(false), vec3<i32>(0i, 2147483647i, 4704i));

var<private> global2: Struct_1 = Struct_1(true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> i32 {
    var var_0 = true;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -636f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.x, global0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-918f, _wgslsmith_f_op_f32(-global0.x))) + _wgslsmith_f_op_f32(trunc(378f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global0.x)))) - -1392f), _wgslsmith_f_op_f32(global0.x - -849f))), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-global0.x)));
    global1 = Struct_2(vec3<bool>(true, !select(global1.b.x, arg_0.a.a.x, true) | any(!vec4<bool>(true, true, global1.a.x, true)), global1.d.a), select(global1.b, global1.b, !select(global1.b, select(vec4<bool>(global1.c.a, true, false, arg_0.c.d.a), global1.b, global1.b), !vec4<bool>(global2.a, true, false, arg_0.c.a.x))), arg_0.a.d, arg_0.a.d, _wgslsmith_div_vec3_i32(global1.e, vec3<i32>(u_input.a, u_input.a, -(u_input.a & u_input.a))));
    var var_2 = arg_0;
    let var_3 = global1.b;
    return -(global1.e.x << (52766u % 32u));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>) -> vec2<f32> {
    let var_0 = Struct_4(Struct_3(global1.a, -arg_0, func_3(Struct_4(Struct_3(global1.a, -2147483647i, 2147483647i, global1.c), countOneBits(vec3<u32>(17750u, 4294967295u, 47750u)), Struct_3(global1.b.yzy, global1.e.x, global1.e.x, Struct_1(true)))), global1.d), ~_wgslsmith_add_vec3_u32(vec3<u32>(~97898u, ~20581u, abs(0u)), vec3<u32>(countOneBits(50230u), 1u, ~43387u)), Struct_3(global1.a, 1i, global1.e.x, Struct_1(true)));
    let var_1 = Struct_4(var_0.a, var_0.b, var_0.c);
    var var_2 = _wgslsmith_clamp_vec4_u32(abs(_wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b.x, 1u, var_0.b.x, 50826u), vec4<u32>(4294967295u, 72947u, var_0.b.x, var_1.b.x)), ~vec4<u32>(4294967295u, var_1.b.x, 4294967295u, 1288u))), ~vec4<u32>(~(~1u), 6340u, 0u, var_1.b.x), _wgslsmith_sub_vec4_u32((vec4<u32>(var_1.b.x, 1u, 4294967295u, 4294967295u) ^ vec4<u32>(var_1.b.x, 4294967295u, var_1.b.x, 28263u)) << (reverseBits(vec4<u32>(var_1.b.x, var_1.b.x, 1u, 22286u)) % vec4<u32>(32u)), ~(~vec4<u32>(var_0.b.x, var_1.b.x, var_0.b.x, 26463u))) & (~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.x, 6915u, 34761u, var_1.b.x), vec4<u32>(var_0.b.x, var_0.b.x, 1u, var_1.b.x)) << ((_wgslsmith_mod_vec4_u32(vec4<u32>(15115u, 1u, 26107u, 0u), vec4<u32>(var_0.b.x, var_1.b.x, 2342u, 4294967295u)) & min(vec4<u32>(var_0.b.x, var_1.b.x, 1u, var_1.b.x), vec4<u32>(102951u, 45557u, 0u, var_1.b.x))) % vec4<u32>(32u))));
    global1 = Struct_2(var_1.a.a, global1.b, var_0.c.d, Struct_1(global2.a), global1.e);
    var var_3 = Struct_3(select(!vec3<bool>(var_0.a.d.a, true, arg_1.x), !vec3<bool>(true, true, global2.a), var_1.c.a), 2147483647i, ~reverseBits(1i), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-120f, -607f, global2.a)), global0.x) > global0.x));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, global0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-202f, global0.x))))));
}

fn func_1() -> StorageBuffer {
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1503f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_mod_i32(-26977i, 1i), vec2<bool>(global2.a, false))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(957f, -1000f))))), false));
    var var_0 = Struct_3(!select(global1.b.yyx, select(select(global1.b.zyz, global1.a, global2.a), vec3<bool>(global1.b.x, true, false), global1.a), global2.a), u_input.a, _wgslsmith_mult_i32(-57358i, -1i), global1.d);
    global2 = global1.c;
    var var_1 = Struct_1(false);
    let var_2 = var_0.a.yy;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(505f, global0.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(151f, _wgslsmith_f_op_f32(sign(global0.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, -1164f))) * vec2<f32>(2467f, global0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

