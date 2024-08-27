struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec4<f32>,
    d: u32,
    e: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: Struct_5 = Struct_5(vec4<f32>(1656f, -276f, 1285f, 1361f), vec2<bool>(true, false));

var<private> global2: vec2<bool>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5, arg_2: f32, arg_3: Struct_3) -> vec4<f32> {
    let var_0 = -923f;
    global2 = arg_1.b;
    global1 = Struct_5(vec4<f32>(arg_1.a.x, var_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_2)), arg_2)), 1752f), vec2<bool>(!global1.b.x, !any(arg_3.c.xwx)));
    var var_1 = !arg_1.b;
    var var_2 = vec3<u32>(u_input.c.x ^ select(arg_3.b, u_input.e.x, true), u_input.c.x, u_input.d);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a) - global1.a);
}

fn func_2() -> vec4<f32> {
    var var_0 = countOneBits(abs(_wgslsmith_add_u32(_wgslsmith_add_u32(1u, u_input.e.x), reverseBits(29425u)))) & ~(~(~u_input.c.x));
    global2 = vec2<bool>(all(global1.b), ~u_input.a.x != 0i);
    var var_1 = ~u_input.e;
    global1 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(-2147483647i, vec4<bool>(global2.x, false, false, false)), Struct_5(global1.a, global1.b), -1000f, Struct_3(true, 36834u, vec4<bool>(false, false, true, false))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, -1178f, 731f, -1515f)) + _wgslsmith_f_op_vec4_f32(round(global1.a))), global1.b.x)) + _wgslsmith_f_op_vec4_f32(-global1.a)), !vec2<bool>(all(vec3<bool>(true, true, false)), any(select(vec2<bool>(global2.x, true), global1.b, global2.x))));
    var_1 = select(firstLeadingBit(u_input.c ^ reverseBits(~u_input.e)), vec2<u32>(u_input.e.x, abs(var_1.x) << (min(74333u, ~45672u) % 32u)), false);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -632f), _wgslsmith_f_op_f32(f32(-1f) * -238f), 397f, _wgslsmith_f_op_f32(sign(-884f))) + global1.a) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(860f, global1.a.x, 868f, 603f)))), vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), -1518f, -536f, global1.a.x))) - vec4<f32>(global1.a.x, global1.a.x, 650f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec2<i32>, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) * vec4<f32>(global1.a.x, _wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(14118u, 32u)], Struct_5(vec4<f32>(global1.a.x, 2323f, global1.a.x, 1333f), global1.b), -802f, Struct_3(global1.b.x, 35103u, vec4<bool>(true, global2.x, global1.b.x, global1.b.x)))).x, global1.a.x, _wgslsmith_f_op_f32(trunc(-1156f)))) * vec4<f32>(_wgslsmith_f_op_f32(select(global1.a.x, -1000f, !global1.b.x)), 111f, global1.a.x, 814f)));
    return global0[_wgslsmith_index_u32(abs(~15822u), 32u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(u_input.b.x);
    global0 = array<Struct_1, 32>();
    var var_1 = func_1(2147483647i, _wgslsmith_sub_i32(-4850i ^ u_input.a.x, var_0) & -firstLeadingBit(-34918i), u_input.a, 57428u);
    var var_2 = _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-24754i, 21506i, 7522i, -18615i), vec4<i32>(11071i, -2147483647i, -7787i, var_0)), _wgslsmith_sub_i32(reverseBits(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, -21259i, u_input.b.x), vec4<i32>(-3387i, -1i, -5379i, var_0)))), ~min(7762i, ~20177i)), ~_wgslsmith_div_i32(var_1.a, var_1.a));
    let var_3 = Struct_4(_wgslsmith_f_op_f32(sign(-405f)), select(global2.x, ~(-var_1.a) < ~firstLeadingBit(u_input.a.x), true), vec4<f32>(_wgslsmith_div_f32(global1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -884f), _wgslsmith_f_op_f32(min(1479f, global1.a.x)))), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global1.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.a.x))) - 1000f)), firstTrailingBit(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.d, u_input.e.x, 14412u), abs(u_input.e.x))), Struct_3(any(var_1.b.ywy) || !var_1.b.x, 29929u, vec4<bool>(all(var_1.b), min(1684i, var_1.a) <= (var_0 ^ 1i), all(!vec3<bool>(true, false, var_1.b.x)), any(var_1.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(global1.a)));
}

