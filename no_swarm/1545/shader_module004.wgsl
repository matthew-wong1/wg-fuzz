struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<u32>,
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

var<private> global0: array<Struct_1, 21>;

var<private> global1: Struct_2;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> f32 {
    let var_0 = vec3<bool>((~_wgslsmith_mod_u32(u_input.e.x, 4294967295u) < countOneBits(_wgslsmith_mult_u32(u_input.b, 4294967295u))) && any(global1.a), min(u_input.b, _wgslsmith_sub_u32(0u, u_input.e.x) | u_input.e.x) <= _wgslsmith_dot_vec2_u32(~u_input.e.yy, _wgslsmith_div_vec2_u32(u_input.e.zy, abs(u_input.e.zx))), true);
    let var_1 = false;
    let var_2 = vec2<u32>(~48262u, u_input.b);
    let var_3 = Struct_3(global1.b.b.zz, vec3<u32>(2509u, abs(var_2.x) ^ (var_2.x & 2957u), ~61264u ^ ~u_input.e.x));
    global1 = Struct_2(select(vec4<bool>(true, all(select(vec3<bool>(global1.c, true, global1.c), global1.b.b, global1.b.b)), any(global1.b.b), var_1), !select(vec4<bool>(true, var_0.x, global1.b.b.x, false), global1.a, global1.b.b.x == var_1), u_input.e.x != 0u), Struct_1(global1.b.a, vec3<bool>(true, all(!vec4<bool>(global1.c, var_0.x, var_0.x, true)), select(!global1.c, select(var_3.a.x, true, true), true))), ~_wgslsmith_sub_u32(44928u & var_3.b.x, var_3.b.x) < _wgslsmith_mod_u32(9047u, ~107493u), ~(~(-vec4<i32>(global1.d.x, global1.d.x, 28569i, global1.d.x))));
    return 735f;
}

fn func_2(arg_0: i32) -> Struct_3 {
    global0 = array<Struct_1, 21>();
    var var_0 = _wgslsmith_clamp_vec4_i32(-(~_wgslsmith_mult_vec4_i32(global1.d, vec4<i32>(u_input.a, arg_0, 2688i, global1.d.x)) ^ global1.d), vec4<i32>(global1.d.x, -arg_0, global1.d.x, -3364i ^ _wgslsmith_mod_i32(select(67461i, -2147483647i, false), firstLeadingBit(1i))), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.a, global1.d.x), ~43870i, _wgslsmith_add_i32(-23013i, arg_0), abs(0i)), vec4<i32>(1i, -2147483647i, u_input.d, u_input.d) ^ _wgslsmith_div_vec4_i32(vec4<i32>(arg_0, 0i, global1.d.x, -48669i), global1.d)) << (select(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(u_input.e.x, u_input.b, 4216u, u_input.e.x)), vec4<u32>(u_input.e.x, u_input.b, u_input.b, u_input.e.x)), abs(vec4<u32>(60380u, u_input.b, u_input.b, 0u)) | ~vec4<u32>(10928u, u_input.b, 32744u, 1u), ~37025u == (u_input.e.x << (1u % 32u))) % vec4<u32>(32u)));
    var var_1 = 648f;
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(func_3())))), -519f, true));
    let var_3 = select(select(select(select(select(global1.a.wz, vec2<bool>(global1.c, true), global1.b.b.xy), vec2<bool>(global1.b.b.x, global1.a.x), vec2<bool>(global1.c, global1.c)), !global1.a.yw, global1.b.b.x), vec2<bool>(any(select(vec2<bool>(false, global1.b.b.x), global1.b.b.xx, vec2<bool>(global1.a.x, true))), global1.a.x), !global1.c), select(vec2<bool>(false & (true | global1.b.b.x), !(!global1.c)), vec2<bool>(false, _wgslsmith_div_f32(var_2, -160f) == _wgslsmith_f_op_f32(floor(552f))), global1.b.a <= 538f), !vec2<bool>(true && global1.b.b.x, !(!global1.c)));
    return Struct_3(select(select(!global1.b.b.yy, select(vec2<bool>(false, global1.b.b.x), vec2<bool>(false, true), any(vec3<bool>(global1.b.b.x, false, global1.a.x))), global1.b.b.xy), var_3, !select(vec2<bool>(true, true), select(vec2<bool>(var_3.x, global1.b.b.x), vec2<bool>(true, var_3.x), vec2<bool>(global1.c, true)), global1.c)), ~u_input.e);
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(global1.b.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-571f * _wgslsmith_div_f32(-1000f, global1.b.a)))), !global1.a.zwx);
    global0 = array<Struct_1, 21>();
    var var_1 = func_2(_wgslsmith_sub_i32(global1.d.x, -arg_0.x));
    var var_2 = func_2(u_input.a);
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_0.a))));
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), select(select(!select(vec3<bool>(false, global1.c, var_1.a.x), global1.b.b, var_0.b), select(!var_0.b, select(vec3<bool>(false, var_1.a.x, false), vec3<bool>(true, true, false), var_0.b.x), true), !var_0.b), !(!(!global1.b.b)), all(func_2(firstTrailingBit(34644i)).a)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = func_2(-10423i);
    let var_1 = func_1(arg_0.d);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -459f);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -842f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-464f, var_1.a)))))));
    let var_4 = select(-_wgslsmith_mult_i32(-4754i, u_input.c), -1i, all(!select(var_1.b, vec3<bool>(false, global1.b.b.x, false), vec3<bool>(arg_0.b.b.x, arg_0.b.b.x, true))));
    return Struct_2(!global1.a, global1.b, false, _wgslsmith_clamp_vec4_i32(max(_wgslsmith_mult_vec4_i32(-arg_0.d, max(vec4<i32>(arg_0.d.x, var_4, 0i, arg_0.d.x), vec4<i32>(global1.d.x, -2147483647i, -59172i, var_4))), abs(-global1.d)), _wgslsmith_mod_vec4_i32(firstTrailingBit(~vec4<i32>(-1i, var_4, var_4, u_input.d)), firstTrailingBit(-arg_0.d)), vec4<i32>(select(arg_0.d.x | var_4, 2147483647i, arg_0.c & arg_0.c), 1i, 8081i, 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(global1.a, func_1(~(-vec4<i32>(global1.d.x, global1.d.x, 2147483647i, -1i))), global1.a.x, ~_wgslsmith_mod_vec4_i32(abs(global1.d), ~vec4<i32>(u_input.d, 28001i, 7542i, 1i))), abs(min(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.e.x, u_input.b, u_input.b, u_input.e.x), vec4<u32>(4294967295u, u_input.e.x, u_input.b, 4294967295u), abs(vec4<u32>(u_input.e.x, 1u, u_input.b, u_input.b))), ~vec4<u32>(u_input.b, 6698u, 0u, u_input.e.x))));
    let var_1 = u_input.e.x;
    global0 = array<Struct_1, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_1);
}

