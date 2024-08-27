struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: Struct_2;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_4) -> vec3<i32> {
    let var_0 = -select(u_input.c, select(_wgslsmith_sub_vec3_i32(u_input.c, vec3<i32>(2147483647i, -19226i, 1i) << (vec3<u32>(0u, arg_1, 0u) % vec3<u32>(32u))), arg_2.a.zwz, false), !global1.c.zyw);
    var var_1 = global0[_wgslsmith_index_u32(u_input.b, 10u)];
    let var_2 = vec2<i32>(global1.b.x, ~var_1.b.x) | abs(vec2<i32>(~(-1i), arg_2.c));
    let var_3 = arg_2;
    var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_1.a.d.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(global1.a.b.x, 1000f)), _wgslsmith_div_f32(-1000f, -1000f))), select(select(select(vec2<bool>(var_1.a.c.x, var_1.c.x), vec2<bool>(var_3.b.x, true), vec2<bool>(false, true)), select(arg_2.b.wz, global1.a.c, global1.c.x), vec2<bool>(true, var_1.c.x)), !select(var_3.b.yy, arg_0, arg_2.b.xx), vec2<bool>(true, var_3.b.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a.d)), global1.a.d)), -var_1.b & (var_3.a.zxx & -var_3.a.zzw), select(vec4<bool>(false, all(global1.c.yxw), var_1.a.c.x, arg_0.x), var_1.c, arg_0.x));
    return global1.b;
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(round(1167f));
    let var_1 = Struct_3(global1.a, global1.a.d.x, Struct_2(global1.a, func_3(global1.a.c, 65240u, Struct_4(vec4<i32>(global1.b.x, global1.b.x, -2147483647i, -1i), global1.c, global1.b.x)) ^ vec3<i32>(1i, max(global1.b.x, global1.b.x), 28832i), select(!global1.c, global1.c, global1.a.c.x)));
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1106f)), _wgslsmith_f_op_f32(-var_1.c.a.b.x)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_1.c.a.b.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1648f, 551f))) + global1.a.b), select(select(select(vec2<bool>(global1.c.x, true), vec2<bool>(true, global1.c.x), var_1.c.c.x), select(global1.a.c, global1.c.wz, global1.a.c.x), var_1.c.c.wz), select(var_1.a.c, !vec2<bool>(global1.c.x, var_1.c.c.x), select(true, global1.c.x, false)), true), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.a.d.x, var_0, -1166f), _wgslsmith_f_op_vec3_f32(global1.a.d + var_1.a.d))), _wgslsmith_f_op_vec3_f32(-var_1.a.d)))), -1000f, var_1.c);
    global0 = array<Struct_2, 10>();
    var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a))), vec2<f32>(-452f, -1430f), select(global1.c.xw, !(!var_2.a.c), var_1.c.c.yw), _wgslsmith_f_op_vec3_f32(-global1.a.d)), _wgslsmith_f_op_f32(286f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.a.d.x)) - 1490f)), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1434f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.c.a.d.x, 510f))))), select(var_1.c.c.zy, vec2<bool>(var_1.c.a.c.x, true), false), var_2.c.a.d), var_1.c.b << (vec3<u32>(u_input.b, 1u, 4294967295u) % vec3<u32>(32u)), select(vec4<bool>(var_1.a.c.x, all(vec2<bool>(false, true)), global1.c.x && true, global1.b.x >= 12974i), !var_1.c.c, global1.c)));
    return any(!(!var_1.c.c));
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: bool) -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1212f, _wgslsmith_div_f32(global1.a.b.x, 508f))));
    let var_1 = Struct_2(Struct_1(562f, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-471f)), _wgslsmith_f_op_f32(select(global1.a.d.x, global1.a.d.x, global1.a.c.x))), vec2<f32>(-1849f, _wgslsmith_f_op_f32(ceil(global1.a.a)))), vec2<bool>(false, false), _wgslsmith_f_op_vec3_f32(floor(global1.a.d))), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(firstTrailingBit(abs(vec3<i32>(u_input.c.x, -12653i, arg_0))), ~_wgslsmith_add_vec3_i32(u_input.c, vec3<i32>(0i, 16093i, -1i))), select(vec3<i32>(i32(-1i) * -2147483647i, u_input.c.x, u_input.c.x), u_input.c, func_2())), vec4<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -1000f) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global1.a.d.x)), _wgslsmith_f_op_f32(-548f - -622f))), all(select(vec2<bool>(true, global1.a.c.x), !vec2<bool>(arg_2, global1.c.x), vec2<bool>(false, arg_2))), false));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.d.x, _wgslsmith_f_op_f32(-global1.a.d.x)) * 1521f);
    let var_3 = all(select(vec2<bool>(firstLeadingBit(u_input.b) > arg_1.x, !any(vec4<bool>(true, true, false, var_1.c.x))), vec2<bool>(all(vec3<bool>(global1.a.c.x, global1.c.x, arg_2)), all(select(vec3<bool>(false, var_1.a.c.x, true), vec3<bool>(true, false, false), global1.a.c.x))), any(vec2<bool>(true, arg_2))));
    let var_4 = Struct_2(global1.a, -select(u_input.c, firstTrailingBit(vec3<i32>(0i, 49962i, global1.b.x) << (vec3<u32>(0u, 0u, 58792u) % vec3<u32>(32u))), false), global1.c);
    return var_1;
}

fn func_1() -> f32 {
    global1 = func_4(-global1.b.x << (u_input.b % 32u), vec2<u32>(_wgslsmith_sub_u32(~2201u, _wgslsmith_add_u32(u_input.b, u_input.b)) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 10385u, 39093u), vec3<u32>(u_input.b, u_input.b, 0u)) % 32u), u_input.b), false && func_2());
    var var_0 = firstLeadingBit(vec2<u32>(4294967295u, ~u_input.b));
    let var_1 = Struct_3(func_4(global1.b.x, abs(vec2<u32>(var_0.x, var_0.x) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, var_0.x), vec2<u32>(u_input.b, 4294967295u)) % vec2<u32>(32u))), global1.c.x || global1.a.c.x).a, _wgslsmith_f_op_f32(-global1.a.d.x), func_4(-2147483647i, vec2<u32>(_wgslsmith_div_u32(var_0.x, 81591u), 31609u) & ~vec2<u32>(43109u, 60711u), any(!(!global1.c.yww))));
    let var_2 = var_1.a.c.x;
    let var_3 = var_1;
    return _wgslsmith_f_op_f32(select(func_4(-var_1.c.b.x, ~vec2<u32>(1u, u_input.b) << (vec2<u32>(0u << (var_0.x % 32u), 4294967295u) % vec2<u32>(32u)), true).a.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(403f * _wgslsmith_f_op_f32(select(var_1.c.a.a, -701f, global1.c.x))))))), any(var_1.c.c.zyy) && false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a;
    let var_1 = vec4<i32>(_wgslsmith_clamp_i32(-106i, u_input.c.x, -global1.b.x), global1.b.x, global1.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(select(u_input.c.x, 1i, true), -u_input.c.x >> (u_input.b % 32u), -u_input.c.x & ~30425i), vec3<i32>(i32(-1i) * -1862i, _wgslsmith_sub_i32(reverseBits(global1.b.x), 0i), ~(-u_input.a.x))));
    var var_2 = -458f;
    var_0 = Struct_1(-934f, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-164f * -1454f), _wgslsmith_f_op_f32(floor(global1.a.d.x))), var_0.d.yy, vec2<bool>(any(!global1.c), global1.c.x))), !var_0.c, _wgslsmith_div_vec3_f32(vec3<f32>(-195f, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1087f - 514f) - -1145f)), _wgslsmith_f_op_vec3_f32(var_0.d - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(588f, var_0.b.x, var_0.b.x) + global1.a.d), var_0.d))));
    var_2 = 948f;
    var_2 = var_0.b.x;
    global1 = global0[_wgslsmith_index_u32(0u, 10u)];
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.b.x) * global1.a.a)) - global1.a.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global1.a.b.x)))) - func_4(max(u_input.a.x, global1.b.x), vec2<u32>(u_input.b, 1u), true).a.d.x));
    let x = u_input.a;
    s_output = StorageBuffer((u_input.b ^ _wgslsmith_sub_u32(~u_input.b, abs(1244u))) >> (1u % 32u));
}

