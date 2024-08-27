struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec2<bool>;

var<private> global2: array<vec3<i32>, 1>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: bool) -> u32 {
    global1 = vec2<bool>(arg_2, (_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-214f)), _wgslsmith_f_op_f32(1434f + 343f)) != _wgslsmith_f_op_f32(sign(285f))) | false);
    return _wgslsmith_sub_u32(abs(abs(u_input.b)), 7094u);
}

fn func_3(arg_0: f32, arg_1: u32) -> vec2<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * -351f)));
    global1 = select(vec2<bool>(!global1.x, false), select(select(select(!vec2<bool>(global1.x, false), select(vec2<bool>(false, global1.x), vec2<bool>(false, false), vec2<bool>(false, global1.x)), select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, true), vec2<bool>(true, false))), select(!vec2<bool>(global1.x, true), vec2<bool>(false, global1.x), !vec2<bool>(global1.x, global1.x)), !any(vec3<bool>(false, true, global1.x))), select(vec2<bool>(global0.x == global0.x, true), vec2<bool>(any(vec3<bool>(false, global1.x, false)), global1.x), select(select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, false)), vec2<bool>(global1.x, global1.x), global1.x)), !global1.x), !select(!(!vec2<bool>(global1.x, global1.x)), !select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, global1.x), true), (arg_1 <= arg_1) & !global1.x));
    var var_1 = !select(vec3<bool>(global1.x, global1.x || all(vec3<bool>(true, false, global1.x)), false), !(!(!vec3<bool>(true, true, global1.x))), u_input.b > func_2(_wgslsmith_mod_i32(global0.x, -31958i), global1.x, true));
    global1 = select(!vec2<bool>(-1477f == _wgslsmith_f_op_f32(select(2236f, 587f, global1.x)), all(vec3<bool>(false, global1.x, false)) | (arg_0 != var_0.a)), var_1.yz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))) < 1005f);
    global0 = ~(vec4<i32>(-2147483647i ^ global0.x, abs(global0.x), firstTrailingBit(0i), global0.x) ^ ~_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, 2147483647i, u_input.d, -19359i), vec4<i32>(51862i, u_input.c.x, global0.x, -2507i)), vec4<i32>(u_input.d, u_input.d, 0i, global0.x)));
    return select(!select(!select(var_1.yy, var_1.yy, true), var_1.zz, select(var_1.zz, vec2<bool>(true, true), !global1.x)), var_1.yx, vec2<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(true, true, true))));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_sub_vec2_u32(select(min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, u_input.a)) << (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(0u, u_input.b)) % vec2<u32>(32u)), ~select(vec2<u32>(41230u, 29368u), vec2<u32>(16198u, u_input.b), true), ~u_input.a < ~20557u), ~vec2<u32>(_wgslsmith_mult_u32(6689u, 1u), 79328u)) >> (vec2<u32>(27712u, func_2(-(~(-11670i)), u_input.a != 0u, _wgslsmith_add_i32(global0.x, u_input.c.x) < abs(15850i))) % vec2<u32>(32u));
    var var_1 = select(vec2<bool>(true, !(!global1.x)), vec2<bool>(any(select(select(vec4<bool>(true, false, true, global1.x), vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(global1.x, false, false, global1.x)), vec4<bool>(true, true, true, true), vec4<bool>(global1.x, global1.x, global1.x, global1.x))), global1.x), !select(!select(vec2<bool>(true, true), vec2<bool>(global1.x, true), false), select(!vec2<bool>(global1.x, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(global1.x, global1.x), vec2<bool>(false, global1.x)), func_3(1952f, u_input.a))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-606f * -893f) - _wgslsmith_f_op_f32(681f + -286f))))), vec3<bool>(select(global1.x, true, var_1.x), var_1.x, true));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2178f - _wgslsmith_f_op_f32(sign(158f))) * 441f)), var_2.a);
    global1 = var_2.b.yz;
    return _wgslsmith_f_op_f32(ceil(279f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<i32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1185f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(988f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), 13376u, u_input.a, func_2(~(-16747i | global0.x), all(vec4<bool>(global1.x, any(vec2<bool>(global1.x, true)), select(global1.x, true, false), global1.x)), global1.x));
}

