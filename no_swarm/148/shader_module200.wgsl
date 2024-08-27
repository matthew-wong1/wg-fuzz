struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 18>;

var<private> global1: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(Struct_1(33438i, true, 0u, -1056f), 1i, vec3<bool>(false, true, false)), Struct_3(Struct_1(-14915i, false, 23029u, 989f), 0i, vec3<bool>(false, false, false)));

var<private> global2: vec3<i32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    global1 = array<Struct_3, 2>();
    var var_0 = Struct_1(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-16350i, -2924i, i32(-1i) * -2147483647i), arg_0)), any(vec4<bool>(true, (u_input.a.x << (0u % 32u)) >= 4294967295u, true, all(vec3<bool>(true, true, false)))), 21813u, -940f);
    var var_1 = -2778f;
    var var_2 = any(select(vec3<bool>(true, false, var_0.b), select(!select(vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(false, false, var_0.b), true), select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, var_0.b), vec3<bool>(var_0.b, false, true), var_0.b), select(vec3<bool>(var_0.b, false, var_0.b), vec3<bool>(true, var_0.b, var_0.b), vec3<bool>(var_0.b, true, var_0.b))), vec3<bool>(var_0.b, var_0.b, false)), select(var_0.b, !(var_0.d < var_0.d), !var_0.b)));
    let var_3 = var_0.b;
    return _wgslsmith_div_u32(var_0.c, var_0.c) | abs(var_0.c);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>) -> f32 {
    global1 = array<Struct_3, 2>();
    var var_0 = !select(select(vec4<bool>(true, arg_0.c.x & arg_0.a.b, 19924i >= u_input.b, select(false, arg_0.c.x, true)), vec4<bool>(true, true, true, true), !vec4<bool>(true, arg_0.a.b, true, arg_0.a.b)), vec4<bool>(arg_0.c.x, all(vec3<bool>(arg_0.a.b, arg_0.a.b, true)), (true && arg_0.a.b) && any(arg_0.c.zz), arg_0.c.x), vec4<bool>(arg_0.c.x | arg_0.c.x, true, all(vec3<bool>(true, false, false)), !any(vec4<bool>(true, arg_0.a.b, false, false))));
    let var_1 = false;
    let var_2 = all(select(vec2<bool>(all(!vec3<bool>(var_0.x, true, var_0.x)), false), !select(arg_0.c.zy, !var_0.xy, !arg_0.c.xz), select(select(!vec2<bool>(var_1, true), var_0.zw, select(var_0.zw, vec2<bool>(false, var_1), var_1)), select(arg_0.c.xx, vec2<bool>(arg_0.c.x, arg_0.c.x), select(vec2<bool>(false, arg_0.c.x), vec2<bool>(arg_0.c.x, false), true)), select(vec2<bool>(true, var_1), !vec2<bool>(var_1, true), !arg_0.c.x))));
    global0 = array<vec4<i32>, 18>();
    return arg_0.a.d;
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = arg_1.b;
    var var_1 = Struct_3(Struct_1(arg_3.b.a, !(func_2(vec3<i32>(-2147483647i, arg_1.b.a, -4514i)) == 4294967295u), arg_3.b.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(-1i, var_0.b, u_input.a.x, var_0.d), -1i, vec3<bool>(arg_1.a.x, true, arg_1.a.x)), u_input.a ^ vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, var_0.c)))))), 23507i, select(!vec3<bool>(arg_1.b.b | false, all(vec4<bool>(false, false, arg_0, arg_3.b.b)), !var_0.b), select(select(select(vec3<bool>(false, var_0.b, false), vec3<bool>(false, arg_1.a.x, var_0.b), vec3<bool>(false, false, false)), select(vec3<bool>(false, arg_1.b.b, arg_3.b.b), vec3<bool>(arg_3.a.x, false, true), var_0.b), select(var_0.b, arg_3.b.b, false)), select(vec3<bool>(false, true, arg_3.b.b), vec3<bool>(arg_3.a.x, true, true), false), select(!vec3<bool>(true, arg_0, false), !vec3<bool>(arg_0, arg_1.b.b, arg_3.b.b), vec3<bool>(var_0.b, false, arg_0))), !select(false, arg_3.a.x, all(vec2<bool>(arg_0, arg_1.b.b)))));
    let var_2 = arg_1.c.zx;
    var var_3 = var_1.b;
    let var_4 = Struct_3(Struct_1(~abs(arg_1.b.a), !var_0.b | select(arg_1.b.d < -104f, false & arg_0, all(arg_1.a)), 4294967295u | arg_3.b.c, -388f), 0i, select(vec3<bool>(true, var_0.b, any(vec3<bool>(false, true, true))), var_1.c, var_1.c));
    return Struct_2(arg_3.a, Struct_1(arg_3.b.a, (true | arg_1.a.x) || true, arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - -944f) - 225f) * arg_1.b.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_3.c - _wgslsmith_f_op_vec3_f32(-arg_1.c)), vec3<f32>(280f, arg_3.b.d, 295f))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = arg_0.b;
    var var_1 = arg_0.b;
    let var_2 = u_input.a.zw;
    var var_3 = arg_0.b.a;
    let var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_0.b.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1137f + func_1(true, Struct_2(arg_0.a, arg_0.b, arg_0.c), 18909u, Struct_2(vec2<bool>(true, true), arg_0.b, arg_0.c)).c.x))));
    return arg_0.b;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 2u)];
    let var_1 = arg_0.a;
    var var_2 = u_input.b;
    let var_3 = vec2<u32>(_wgslsmith_mult_u32(~(~(~arg_2.c)), 1u), var_1.c);
    let var_4 = arg_2.d;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(~_wgslsmith_sub_u32(82748u, u_input.a.x), u_input.a.x)), 2u)];
    let var_1 = global1[_wgslsmith_index_u32(select(u_input.a.x, 23987u, true), 2u)];
    var var_2 = abs(-vec3<i32>(-_wgslsmith_div_i32(18222i, 36376i), var_0.b, _wgslsmith_sub_i32(1i, select(-1i, var_1.a.a, var_1.a.b))));
    let var_3 = !select(select(select(vec4<bool>(var_0.c.x, false, false, var_1.a.b), vec4<bool>(true, true, true, true), select(vec4<bool>(true, var_1.a.b, true, true), vec4<bool>(false, var_1.c.x, var_0.c.x, var_1.a.b), vec4<bool>(false, var_1.a.b, true, var_1.a.b))), vec4<bool>(var_1.c.x || var_0.c.x, true, !var_0.a.b, false), !var_1.c.x), vec4<bool>(var_0.a.c != ~4294967295u, var_1.a.b, select(true, !var_1.c.x, var_0.a.b), !var_1.a.b), vec4<bool>(any(!vec3<bool>(false, var_0.c.x, false)), !var_1.c.x, any(vec2<bool>(true, var_1.a.b)) == !var_0.a.b, var_0.c.x && (7141u != var_0.a.c)));
    var var_4 = Struct_3(func_5(Struct_3(Struct_1(_wgslsmith_add_i32(48697i, 63259i), true, u_input.a.x, var_0.a.d), -_wgslsmith_dot_vec2_i32(var_2.zx, var_2.yx), vec3<bool>(true, var_0.c.x, true)), func_4(func_1(any(vec3<bool>(var_3.x, true, true)), Struct_2(vec2<bool>(true, false), var_1.a, vec3<f32>(var_1.a.d, 1723f, var_0.a.d)), _wgslsmith_sub_u32(u_input.a.x, var_0.a.c), Struct_2(var_0.c.xz, Struct_1(var_2.x, var_1.a.b, 21192u, var_1.a.d), vec3<f32>(var_0.a.d, 707f, 362f))), firstLeadingBit(min(u_input.a.yzx, vec3<u32>(u_input.a.x, 17370u, 5477u)))), Struct_1(_wgslsmith_mod_i32(2147483647i, var_0.b) & var_0.a.a, var_3.x, var_0.a.c, -698f)), 84339i << (countOneBits(_wgslsmith_div_u32(u_input.a.x, select(4294967295u, 1u, false))) % 32u), select(!var_3.zwx, vec3<bool>(false, var_0.c.x, var_3.x), any(select(var_3, vec4<bool>(true, false, var_0.c.x, var_0.c.x), true))));
    let x = u_input.a;
    s_output = StorageBuffer(-3275f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-638f - -1594f) * _wgslsmith_f_op_f32(step(var_4.a.d, var_4.a.d))), vec4<f32>(-1483f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-747f, -222f) - _wgslsmith_f_op_f32(-var_0.a.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(Struct_2(var_0.c.yx, var_4.a, vec3<f32>(-1000f, 423f, 314f)), u_input.a.wyy).d)), var_0.a.d));
}

