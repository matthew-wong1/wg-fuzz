struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 14>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> u32 {
    global0 = array<Struct_3, 14>();
    var var_0 = -1876f;
    let var_1 = ~u_input.a;
    var_0 = _wgslsmith_div_f32(-537f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1616f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1137f)), true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), false)));
    return _wgslsmith_add_u32(max(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 1u, 1u, 1u))), ~_wgslsmith_mod_u32(21515u, _wgslsmith_clamp_u32(1u, ~0u, max(0u, 10263u))));
}

fn func_3() -> vec3<bool> {
    let var_0 = vec3<bool>(any(vec2<bool>(true, true)), !select(false, true, true), true);
    global0 = array<Struct_3, 14>();
    let var_1 = -2118f;
    var var_2 = vec2<i32>(u_input.b, -2147483647i);
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(145f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1)))))));
    return vec3<bool>(true, !all(select(var_0.xz, select(var_0.xy, var_0.zy, vec2<bool>(var_0.x, var_0.x)), vec2<bool>(true, true))), var_1 == var_1);
}

fn func_1() -> Struct_1 {
    var var_0 = ~1u;
    global0 = array<Struct_3, 14>();
    let var_1 = Struct_2(Struct_1(~65569u != ~func_2(), vec4<i32>(-2147483647i, min(~u_input.b, u_input.b | u_input.b), u_input.b, -34516i), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), true), select(func_3(), vec3<bool>(true, true, false), vec3<bool>(any(vec4<bool>(false, true, false, true)), true, true)), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 0u, 115944u)), vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 1u))), any(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true))), Struct_1(false, vec4<i32>(1i, reverseBits(u_input.a), ~abs(-11840i), ~(32965i & u_input.a)), select(vec2<bool>(true, all(vec3<bool>(true, true, true))), vec2<bool>(false, true), true), vec3<bool>(true, true, true), vec3<u32>(~firstTrailingBit(0u), func_2(), select(firstLeadingBit(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(47678u, 85664u, 4294967295u), vec3<u32>(24078u, 67528u, 0u)), all(vec3<bool>(true, true, true))))), _wgslsmith_mult_vec4_u32(~vec4<u32>(~5542u, 1u, _wgslsmith_mod_u32(24772u, 30042u), 34771u << (0u % 32u)), vec4<u32>(1u, 1u, 1u, 1u)));
    var_0 = var_1.d.x;
    let var_2 = select(vec4<bool>(func_3().x, true, true || any(!vec2<bool>(true, var_1.b)), func_3().x), select(select(vec4<bool>(!var_1.a.c.x, !var_1.c.a, !var_1.a.a, true), !select(vec4<bool>(var_1.b, var_1.a.d.x, false, true), vec4<bool>(var_1.b, true, true, var_1.a.d.x), vec4<bool>(true, false, var_1.c.d.x, var_1.b)), var_1.b), select(select(!vec4<bool>(var_1.b, false, false, var_1.a.c.x), vec4<bool>(var_1.b, var_1.c.d.x, var_1.b, var_1.b), var_1.a.e.x >= var_1.d.x), !vec4<bool>(var_1.a.a, true, false, false), any(var_1.c.c)), !vec4<bool>(!var_1.b, true, false, all(var_1.c.d))), !var_1.c.c.x);
    return Struct_1(var_1.c.a, var_1.a.b, select(var_2.yz, select(vec2<bool>(true, var_2.x), vec2<bool>(var_1.c.e.x >= var_1.d.x, !var_2.x), !all(var_2.zy)), var_1.a.a), var_1.c.d, var_1.c.e);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec2<f32>) -> vec3<f32> {
    var var_0 = vec2<bool>(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-261f, arg_3.x, arg_2.x)) + _wgslsmith_f_op_f32(min(arg_0.x, 1802f))) != _wgslsmith_f_op_f32(-arg_3.x)), true);
    var var_1 = arg_1.c;
    let var_2 = vec2<u32>(_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(4294967295u, arg_1.c.e.x >> ((var_1.e.x | var_1.e.x) % 32u))), select(countOneBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(44731u, arg_1.a.e.x)), var_1.e.x)), _wgslsmith_mod_u32(var_1.e.x, ~arg_1.c.e.x), true));
    var var_3 = ~(1u & var_1.e.x);
    var_1 = arg_1.c;
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1043f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(450f))))), arg_0.x, arg_0.x), vec3<f32>(1316f, arg_3.x, 1233f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 14>();
    var var_0 = global0[_wgslsmith_index_u32(1u, 14u)];
    var var_1 = _wgslsmith_mod_i32(-1i, var_0.a.x ^ var_0.a.x);
    var_1 = 1i;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(var_0.b, Struct_2(func_1(), any(vec4<bool>(true, true, true, false)), Struct_1(false, vec4<i32>(var_0.a.x, -15100i, 40868i, u_input.a), vec2<bool>(true, false), vec3<bool>(false, false, false), vec3<u32>(1u, 34000u, 32530u)), ~vec4<u32>(0u, 8376u, 0u, 63038u)), vec4<bool>(true, all(vec2<bool>(true, true)), all(vec4<bool>(false, true, false, true)), true), vec2<f32>(_wgslsmith_div_f32(var_0.b.x, 1000f), 295f)))));
    let var_3 = vec2<i32>(_wgslsmith_div_i32(var_0.a.x, max(abs(reverseBits(var_0.a.x)), _wgslsmith_add_i32(-1i, u_input.b))), reverseBits(45587i));
    let var_4 = _wgslsmith_div_u32(firstTrailingBit(~abs(~3448u)), ~(1u & ~func_2()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_0.b.ww + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.x, 772f), _wgslsmith_f_op_vec2_f32(ceil(var_0.b.yy))))), -max(~select(vec4<i32>(var_0.a.x, 18400i, var_0.a.x, 0i), vec4<i32>(var_3.x, 1i, u_input.a, -56435i), vec4<bool>(true, false, true, true)), select(~vec4<i32>(18363i, var_0.a.x, 2147483647i, u_input.a), vec4<i32>(var_0.a.x, -19467i, -2147483647i, u_input.b), true)));
}

