struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-2123i, -1i, vec2<u32>(54097u, 1u));

var<private> global1: array<vec3<i32>, 14>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> i32 {
    global1 = array<vec3<i32>, 14>();
    var var_0 = arg_1.zyz;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(min(2390f, -1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-219f * -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -293f), _wgslsmith_f_op_f32(sign(-265f)));
    var var_2 = Struct_1(var_1.x, !arg_0.b.b);
    var var_3 = arg_0.b;
    return i32(-1i) * -min(abs(u_input.b.x), arg_0.a);
}

fn func_2(arg_0: vec4<f32>) -> vec2<bool> {
    let var_0 = true;
    global1 = array<vec3<i32>, 14>();
    global0 = Struct_3(_wgslsmith_sub_i32(-17130i, u_input.a) | global0.b, min(_wgslsmith_mod_i32(_wgslsmith_div_i32(29496i, func_3(Struct_2(-20080i, Struct_1(178f, var_0)), vec4<u32>(global0.c.x, 35636u, 60178u, global0.c.x))), _wgslsmith_mod_i32(u_input.b.x, 35387i)), -(_wgslsmith_clamp_i32(-2147483647i, u_input.b.x, u_input.b.x) << (~1u % 32u))), vec2<u32>(~57068u, global0.c.x));
    global1 = array<vec3<i32>, 14>();
    let var_1 = any(!select(vec3<bool>(true, global0.b < global0.b, all(vec4<bool>(var_0, var_0, false, true))), !(!vec3<bool>(false, var_0, var_0)), select(select(vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, var_0, var_0), var_0), !vec3<bool>(true, var_0, true), !vec3<bool>(true, var_0, var_0))));
    return select(select(!vec2<bool>(all(vec3<bool>(var_0, var_0, var_1)), false), vec2<bool>(var_1, true), !select(vec2<bool>(var_0, false), !vec2<bool>(var_0, var_0), true)), select(vec2<bool>(true, -1404f < _wgslsmith_f_op_f32(ceil(832f))), !select(!vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_1), false & var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, arg_0.x, false))) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, -150f))), all(vec2<bool>(!all(vec4<bool>(true, var_0, var_0, true)), all(vec4<bool>(var_0, var_0, var_1, true)))));
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_1) -> Struct_3 {
    global1 = array<vec3<i32>, 14>();
    var var_0 = global0.c.x;
    return Struct_3(-1i >> (1u % 32u), ~(~(~global0.a) & _wgslsmith_mod_i32(i32(-1i) * -3153i, u_input.b.x)), vec2<u32>(global0.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.x, global0.c.x, global0.c.x, 13597u), ~vec4<u32>(38108u, 0u, global0.c.x, global0.c.x)) << ((~1u | global0.c.x) % 32u)));
}

fn func_1() -> Struct_4 {
    global1 = array<vec3<i32>, 14>();
    let var_0 = func_4(-779f, select(!vec2<bool>(true, u_input.b.x != -2147483647i), select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), func_2(vec4<f32>(1108f, -1184f, 238f, 1699f)), true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(false, true), true), vec2<bool>(any(vec2<bool>(true, false)), true)), any(vec4<bool>(global0.c.x > 4294967295u, false, true, all(vec3<bool>(false, false, true))))), u_input.b.x, Struct_1(-738f, all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), false))));
    var var_1 = min(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.c.x, var_0.c.x, var_0.c.x, 1u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(global0.c.x, var_0.c.x, 4294967295u, 4294967295u), vec4<u32>(1u, global0.c.x, 143190u, var_0.c.x))), 1u, ~3988u), max(~(vec3<u32>(var_0.c.x, 34953u, 24731u) >> (vec3<u32>(global0.c.x, global0.c.x, global0.c.x) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(0u, 4294967295u, global0.c.x)), ~vec3<u32>(global0.c.x, var_0.c.x, 69427u), ~vec3<u32>(33966u, 7540u, 63971u))) & vec3<u32>(var_0.c.x, global0.c.x, _wgslsmith_sub_u32(~var_0.c.x, 4151u)));
    global1 = array<vec3<i32>, 14>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1140f), all(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, func_2(vec4<f32>(-164f, 512f, 414f, 142f)).x))));
    return Struct_4(Struct_3(func_3(Struct_2(0i, var_2), vec4<u32>(global0.c.x, 1u, var_1.x, var_1.x) | ~vec4<u32>(global0.c.x, var_1.x, global0.c.x, 35877u)), min(5213i, abs(global0.b) >> (~var_0.c.x % 32u)), var_1.zz << (_wgslsmith_mult_vec2_u32(func_4(var_2.a, vec2<bool>(false, false), 2147483647i, Struct_1(-1637f, var_2.b)).c, var_0.c) % vec2<u32>(32u))), u_input.b.yz, false, var_2, var_2);
}

fn func_5(arg_0: i32, arg_1: Struct_4) -> Struct_3 {
    var var_0 = vec2<i32>(~(-arg_1.b.x), 34795i);
    var var_1 = arg_1.e;
    var var_2 = arg_1.d;
    var_1 = arg_1.e;
    let var_3 = select(select(select(!(!vec4<bool>(true, false, true, var_1.b)), !(!vec4<bool>(var_2.b, false, false, true)), !vec4<bool>(var_2.b, true, arg_1.e.b, var_2.b)), select(!(!vec4<bool>(true, arg_1.e.b, true, var_1.b)), !select(vec4<bool>(true, var_1.b, var_1.b, arg_1.e.b), vec4<bool>(var_2.b, arg_1.e.b, false, true), true), !(var_1.b == var_2.b)), select(!select(vec4<bool>(false, false, false, var_1.b), vec4<bool>(false, true, var_2.b, var_2.b), false), vec4<bool>(func_1().e.b, false, true | var_1.b, false), vec4<bool>(!var_1.b, -1388f <= var_1.a, arg_1.d.b, true))), select(select(!select(vec4<bool>(var_1.b, arg_1.d.b, false, false), vec4<bool>(arg_1.c, false, var_1.b, var_2.b), var_2.b), vec4<bool>(false, var_1.b && false, all(vec3<bool>(var_2.b, var_1.b, arg_1.c)), true), vec4<bool>(true, var_2.b && true, 53566i <= u_input.b.x, all(vec2<bool>(true, false)))), vec4<bool>(all(vec4<bool>(var_2.b, arg_1.d.b, true, var_2.b)), var_1.b & true, true, var_2.b), vec4<bool>(true, true, true, var_1.b)), vec4<bool>(var_2.b, false, true | var_2.b, any(select(vec4<bool>(arg_1.c, var_2.b, false, arg_1.e.b), !vec4<bool>(arg_1.e.b, arg_1.d.b, false, false), !vec4<bool>(var_2.b, false, arg_1.e.b, var_1.b)))));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(max(0u, _wgslsmith_mult_u32(global0.c.x, _wgslsmith_mod_u32(1u, global0.c.x))), select(max(select(global0.c.x, 0u, false), _wgslsmith_mult_u32(global0.c.x, global0.c.x)), global0.c.x, select(any(vec3<bool>(false, false, true)), all(vec3<bool>(true, false, false)), u_input.b.x != -2147483647i)), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.x, ~global0.c.x, abs(global0.c.x)), vec3<u32>(~global0.c.x, global0.c.x, ~global0.c.x)));
    global0 = Struct_3(_wgslsmith_mod_i32(_wgslsmith_sub_i32(~(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-41247i, global0.b, -10571i, u_input.b.x), vec4<i32>(u_input.a, -1i, 1i, 2147483647i))), _wgslsmith_mult_i32(-global0.a, ~u_input.b.x)) << (17727u % 32u), _wgslsmith_dot_vec3_i32(~(~global1[_wgslsmith_index_u32(33477u, 14u)]) ^ vec3<i32>(u_input.a, max(u_input.a, global0.b), _wgslsmith_sub_i32(-25674i, global0.a)), vec3<i32>(39006i, max(_wgslsmith_sub_i32(u_input.b.x, 54333i), max(14889i, 0i)), u_input.a)), ~vec2<u32>(5623u, _wgslsmith_mult_u32(var_0.x, 13026u) >> (~global0.c.x % 32u)));
    var var_1 = select(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(_wgslsmith_f_op_f32(-2110f * -601f) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f + -471f))), any(vec4<bool>(true, true, true, true))), vec2<bool>(true, true));
    global0 = func_5(-(2147483647i << ((_wgslsmith_mult_u32(var_0.x, 34759u) | global0.c.x) % 32u)), func_1());
    let var_2 = ~global0.c.x;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(845f * 1000f)))))), false);
    let var_4 = reverseBits(-33020i);
    let var_5 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-527f * var_3.a) + _wgslsmith_f_op_f32(max(var_3.a, var_3.a)))) < 312f);
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2, 0u), _wgslsmith_mult_vec2_u32(select(var_0.yy, var_0.yx, var_3.b), vec2<u32>(var_0.x, var_0.x) ^ global0.c)), 14u)] ^ max(abs(u_input.b & vec3<i32>(0i, u_input.b.x, -47961i)), u_input.b), var_4, _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, var_0.x, global0.c.x, 23330u), vec4<u32>(var_0.x, global0.c.x, 1u, var_2)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2, var_0.x, 99053u, global0.c.x), vec4<u32>(var_2, global0.c.x, var_0.x, 0u), vec4<u32>(0u, var_2, var_0.x, 0u))), vec4<u32>(var_0.x, 0u, 0u, var_2) ^ vec4<u32>(0u, global0.c.x, var_2, 4294967295u)), vec4<u32>(abs(_wgslsmith_mult_u32(var_0.x, 1u)), var_0.x, ~4294967295u, global0.c.x)), var_3.a);
}

