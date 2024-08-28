struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_2, 11>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> bool {
    global1 = array<Struct_2, 11>();
    global1 = array<Struct_2, 11>();
    let var_0 = -firstLeadingBit(vec3<i32>(u_input.c, -(25305i | u_input.c), u_input.c));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(abs(global0.x)))) < _wgslsmith_f_op_f32(sign(global0.x)), max(~firstTrailingBit(u_input.b), u_input.d.x)));
    var var_2 = firstTrailingBit(vec4<i32>(max(u_input.c, 1i), var_0.x, firstLeadingBit(-2147483647i), 9807i));
    return select(var_1.a.a, var_1.a.a, var_1.a.a);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<i32>) -> Struct_1 {
    global1 = array<Struct_2, 11>();
    let var_0 = func_2();
    global1 = array<Struct_2, 11>();
    global1 = array<Struct_2, 11>();
    var var_1 = global1[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~u_input.a, u_input.a) >> (abs(countOneBits(1u)) % 32u), _wgslsmith_mult_u32(~4294967295u, countOneBits(u_input.d.x ^ u_input.a)))), 11u)];
    return Struct_1(~(~1u) >= _wgslsmith_div_u32(u_input.a, 42561u), ~4788u);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> bool {
    var var_0 = vec4<bool>(select(true, any(vec3<bool>(all(vec3<bool>(false, arg_1.a, arg_1.a)), func_1(Struct_1(arg_1.a, 4294967295u), vec3<bool>(arg_1.a, true, arg_1.a), vec2<i32>(41641i, -30553i)).a, true)), all(!vec2<bool>(arg_1.a, arg_1.a))), arg_1.a, true, global0.x == _wgslsmith_f_op_f32(select(global0.x, -1129f, u_input.c == _wgslsmith_div_i32(33921i, arg_0.x))));
    var var_1 = Struct_2(arg_1);
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), global0.x)), 666f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(916f, global0.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1059f)), -343f)), global0.x, _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(895f - global0.x)))));
    let var_3 = select(vec2<bool>(u_input.c > arg_0.x, select(any(select(vec4<bool>(true, true, false, var_0.x), vec4<bool>(false, var_1.a.a, var_1.a.a, true), vec4<bool>(true, var_1.a.a, true, arg_1.a))), func_2(), !(!arg_1.a))), !select(vec2<bool>(any(vec4<bool>(arg_1.a, true, true, var_1.a.a)), global0.x < 250f), vec2<bool>(arg_1.a && true, select(var_1.a.a, var_1.a.a, var_0.x)), true), var_1.a.a);
    let var_4 = countOneBits(~(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b, var_1.a.b), 0u) ^ ~firstLeadingBit(0u)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(!(!func_3(-vec4<i32>(29040i, 46893i, 18353i, 15057i), func_1(Struct_1(false, u_input.a), vec3<bool>(false, false, false), vec2<i32>(u_input.c, u_input.c)))), u_input.c < (_wgslsmith_mod_i32(-u_input.c, -2147483647i >> (u_input.b % 32u)) ^ -(u_input.c & u_input.c)), true, true);
    var var_1 = func_1(Struct_1(func_1(Struct_1(all(var_0), u_input.d.x | u_input.a), select(var_0.yzz, !vec3<bool>(true, var_0.x, var_0.x), true), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, 4892i), vec2<i32>(-10421i, u_input.c)) << ((u_input.d.yz << (u_input.d.xx % vec2<u32>(32u))) % vec2<u32>(32u))).a, _wgslsmith_mod_u32(~1u, select(~4294967295u, 49640u, true))), !var_0.wyz, ~select(abs(~vec2<i32>(1i, -61322i)), vec2<i32>(u_input.c, select(u_input.c, u_input.c, false)), vec2<bool>(var_0.x & var_0.x, var_0.x)));
    let var_2 = Struct_3(~(-vec2<i32>(~u_input.c, -2147483647i)), vec4<f32>(-360f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-323f))), _wgslsmith_f_op_f32(f32(-1f) * -132f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_div_f32(global0.x, 137f))), _wgslsmith_f_op_f32(-global0.x))), vec2<bool>(true, !var_0.x), Struct_1(true, var_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(882f)) + -1878f));
    var_1 = func_1(Struct_1(_wgslsmith_sub_u32(31598u & var_2.d.b, select(var_1.b, 58670u, var_2.c.x)) != 1u, _wgslsmith_div_u32((var_2.d.b << (1u % 32u)) & u_input.d.x, abs(0u))), vec3<bool>(!select(var_2.b.x >= var_2.e, true, func_1(var_2.d, var_0.wwy, var_2.a).a), var_2.c.x, select(var_1.a, true, var_0.x) || true), select(_wgslsmith_sub_vec2_i32(vec2<i32>(var_2.a.x, 2147483647i), -var_2.a), max(_wgslsmith_sub_vec2_i32(-var_2.a, vec2<i32>(u_input.c, var_2.a.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 0i), ~vec2<i32>(-1i, 11441i), countOneBits(var_2.a))), !(u_input.d.x >= 41021u) & (_wgslsmith_f_op_f32(ceil(864f)) <= _wgslsmith_f_op_f32(min(global0.x, 577f)))));
    var_1 = Struct_1(false, 33760u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e * var_2.e))), var_2.e, any(!var_0.yyz))), _wgslsmith_f_op_f32(f32(-1f) * -873f), vec2<i32>(var_2.a.x, u_input.c));
}

