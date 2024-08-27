struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_5 {
    a: f32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: bool = true;

var<private> global2: Struct_4;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: u32) -> i32 {
    let var_0 = -12194i;
    return u_input.d;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> vec2<u32> {
    let var_0 = _wgslsmith_add_i32(abs(-2147483647i), func_3(_wgslsmith_f_op_f32(global2.a.x * _wgslsmith_f_op_f32(-global2.a.x)), min(~u_input.b.x, ~1u)));
    let var_1 = global0[_wgslsmith_index_u32(1u, 25u)];
    global1 = true || (var_0 == u_input.d);
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a.xxx * _wgslsmith_f_op_vec3_f32(-arg_0.a.wzz))), vec3<f32>(-944f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_0.a.x, global2.a.x)), -471f)))), global2.a.x));
    var var_3 = global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 8764u ^ global2.c), ~((vec2<u32>(58403u, global2.c) & vec2<u32>(u_input.c.x, 1u)) >> (~vec2<u32>(u_input.b.x, global2.c) % vec2<u32>(32u))))), 25u)];
    return ~(u_input.b & vec2<u32>(0u, ~global2.c));
}

fn func_4(arg_0: vec2<u32>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(220f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1512f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.a.x)) - _wgslsmith_f_op_f32(-global2.a.x)))));
}

fn func_1() -> vec3<bool> {
    global1 = !(false && (_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1014f, global2.a.x) + _wgslsmith_f_op_f32(-583f - global2.a.x)) > -397f));
    global0 = array<Struct_1, 25>();
    global1 = !all(select(!(!vec4<bool>(global2.b.x, true, true, global2.b.x)), select(select(vec4<bool>(global2.b.x, true, false, global2.b.x), vec4<bool>(global2.b.x, true, global2.b.x, global2.b.x), vec4<bool>(true, true, false, global2.b.x)), !vec4<bool>(global2.b.x, false, true, global2.b.x), global2.b.x && false), select(!vec4<bool>(true, global2.b.x, false, false), !vec4<bool>(false, global2.b.x, false, true), false)));
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -727f);
    let var_1 = _wgslsmith_f_op_f32(func_4(select((vec2<u32>(global2.c, global2.c) << (vec2<u32>(u_input.b.x, 65897u) % vec2<u32>(32u))) ^ abs(vec2<u32>(0u, u_input.c.x)), select(_wgslsmith_mod_vec2_u32(u_input.c >> (vec2<u32>(u_input.b.x, global2.c) % vec2<u32>(32u)), func_2(Struct_1(vec4<f32>(-1328f, global2.a.x, global2.a.x, global2.a.x)), u_input.a)), u_input.c, select(true, !global2.b.x, all(global2.b.zz))), global2.b.xy)));
    return select(vec3<bool>(global2.b.x, true, true), vec3<bool>(false, global2.b.x, !(!(var_1 >= -1276f))), !global2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(firstTrailingBit(~(~_wgslsmith_add_u32(0u, 0u))), global2.c);
    let var_1 = var_0.x;
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-global2.a), vec3<bool>(!(!(!global2.b.x)), true, all(func_1())), var_0.x & 1u);
    let var_3 = Struct_5(global2.a.x, select(vec4<bool>(true, true, ~u_input.a.x != -18584i, true | any(vec3<bool>(false, true, false))), select(vec4<bool>(false, var_0.x >= var_2.c, false, var_2.b.x), !(!vec4<bool>(global2.b.x, false, true, global2.b.x)), vec4<bool>(global2.b.x, true, true, true)), select(select(!vec4<bool>(false, var_2.b.x, false, false), !vec4<bool>(true, var_2.b.x, global2.b.x, var_2.b.x), select(vec4<bool>(var_2.b.x, var_2.b.x, true, global2.b.x), vec4<bool>(true, global2.b.x, true, false), vec4<bool>(global2.b.x, true, global2.b.x, true))), !vec4<bool>(false, false, true, global2.b.x), vec4<bool>(true, u_input.c.x != 1u, global2.b.x, !global2.b.x))));
    global2 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_2.a.x)), 691f, _wgslsmith_f_op_f32(floor(195f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.a.x, var_3.a, -363f), vec3<f32>(302f, global2.a.x, 346f))) + vec3<f32>(var_2.a.x, var_2.a.x, 1000f)) + vec3<f32>(_wgslsmith_f_op_f32(-global2.a.x), -150f, _wgslsmith_f_op_f32(-global2.a.x)))), !var_2.b, ~4745u);
    let var_4 = vec4<i32>(_wgslsmith_mult_i32(abs(firstLeadingBit(u_input.d)), select(_wgslsmith_mod_i32(-8551i, -68194i), -u_input.a.x, all(var_3.b.wxz) || all(vec3<bool>(global2.b.x, true, global2.b.x)))), 12119i, ~abs(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x))) | _wgslsmith_dot_vec4_i32(min(abs(vec4<i32>(2147483647i, -45309i, 26675i, -26983i)), reverseBits(vec4<i32>(u_input.a.x, u_input.d, 2147483647i, u_input.a.x))), vec4<i32>(firstLeadingBit(-61795i), u_input.a.x, reverseBits(1i), ~u_input.a.x)), _wgslsmith_mod_i32(-2147483647i, -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(-1072i, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-961f)))), _wgslsmith_f_op_f32(max(455f, -375f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1483f))), _wgslsmith_f_op_f32(f32(-1f) * -1500f))), false)), ~(vec2<u32>(min(var_2.c, 0u), ~global2.c) ^ vec2<u32>(var_1, ~var_1)), func_3(709f, 0u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2469f, global2.a.x) - var_2.a.yz));
}

