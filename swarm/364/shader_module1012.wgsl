struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<bool>,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<bool>(true, true), vec3<u32>(1u, 28085u, 95489u));

var<private> global1: array<Struct_4, 4>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> i32 {
    var var_0 = !(!select(vec3<bool>(global0.a.x, true, !global0.a.x), !select(vec3<bool>(arg_0.a.x, false, arg_0.a.x), vec3<bool>(arg_0.a.x, true, false), vec3<bool>(global0.a.x, arg_0.a.x, false)), global0.a.x));
    let var_1 = Struct_1(!(!select(!vec3<bool>(false, arg_0.a.x, var_0.x), !vec3<bool>(false, false, var_0.x), !arg_0.a.x)));
    var var_2 = Struct_5(Struct_2(global0.a.x), !(!select(!vec4<bool>(false, false, global0.a.x, arg_0.a.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_1.a.x), select(vec4<bool>(global0.a.x, global0.a.x, true, false), vec4<bool>(var_0.x, true, false, true), false))), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_1), u_input.e.ww), true);
    var var_3 = false;
    let var_4 = Struct_2(!arg_0.a.x);
    return ~select(-6094i, max(-2147483647i << ((82984u << (arg_0.b.x % 32u)) % 32u), var_2.c), true);
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: u32) -> Struct_4 {
    var var_0 = u_input.c;
    let var_1 = ~(~arg_0.x);
    let var_2 = abs(~min(func_3(Struct_3(global0.a, vec3<u32>(var_1, var_0.x, u_input.d)), -21852i), _wgslsmith_add_i32(0i, u_input.a)));
    var var_3 = vec2<i32>(_wgslsmith_add_i32(u_input.e.x, var_2), firstTrailingBit(1i));
    var_3 = vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.e.ww, -u_input.e.xy), firstTrailingBit(~(~(-var_2))));
    return Struct_4(Struct_1(!select(!vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, arg_1, true), !arg_1)), Struct_1(vec3<bool>(global0.a.x, false, global0.a.x)), _wgslsmith_dot_vec3_u32(~global0.b, global0.b), !global0.a);
}

fn func_1() -> Struct_3 {
    let var_0 = ~u_input.e.zy;
    global1 = array<Struct_4, 4>();
    let var_1 = func_2(abs(abs(u_input.c)), global0.a.x, reverseBits(firstTrailingBit(min(54826u, global0.b.x) >> (global0.b.x % 32u))));
    var var_2 = Struct_3(vec2<bool>(func_2(vec2<u32>(_wgslsmith_mod_u32(4294967295u, u_input.d), 72985u), global0.a.x, var_1.c).b.a.x, true), abs(~(_wgslsmith_mult_vec3_u32(global0.b, vec3<u32>(u_input.c.x, 58916u, 419u)) | vec3<u32>(0u, global0.b.x, 1u))));
    var var_3 = -1232f;
    return Struct_3(!var_1.a.a.xx, ~(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(364u, u_input.c.x, var_2.b.x), vec3<u32>(0u, u_input.d, 89161u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global1 = array<Struct_4, 4>();
    var var_0 = Struct_5(Struct_2(true | !(u_input.b < -2147483647i)), select(!(!select(vec4<bool>(global0.a.x, false, global0.a.x, global0.a.x), vec4<bool>(false, global0.a.x, global0.a.x, false), global0.a.x)), select(select(!vec4<bool>(global0.a.x, false, true, true), !vec4<bool>(global0.a.x, global0.a.x, global0.a.x, false), select(vec4<bool>(global0.a.x, false, false, false), vec4<bool>(global0.a.x, global0.a.x, global0.a.x, true), false)), select(select(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), vec4<bool>(global0.a.x, false, global0.a.x, global0.a.x), vec4<bool>(true, global0.a.x, global0.a.x, global0.a.x)), !vec4<bool>(global0.a.x, true, false, global0.a.x), select(vec4<bool>(true, true, global0.a.x, global0.a.x), vec4<bool>(global0.a.x, global0.a.x, true, true), global0.a.x)), (global0.a.x & global0.a.x) & !global0.a.x), true), firstTrailingBit(-5241i), false);
    global0 = Struct_3(!select(!(!var_0.b.zx), func_1().a, global0.a.x), _wgslsmith_mult_vec3_u32(~vec3<u32>(4769u, global0.b.x, 1u) ^ ~vec3<u32>(103646u, u_input.c.x, 48915u), vec3<u32>(select(u_input.d, global0.b.x, global0.a.x), ~u_input.c.x, 6102u)) >> (vec3<u32>(u_input.d, (global0.b.x | 33528u) << ((u_input.c.x & 28073u) % 32u), 0u) % vec3<u32>(32u)));
    global0 = func_1();
    let var_1 = _wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(countOneBits(~vec4<u32>(33991u, 93839u, global0.b.x, global0.b.x)), min(vec4<u32>(0u, global0.b.x, 1u, 50837u), firstLeadingBit(vec4<u32>(1u, global0.b.x, 88264u, global0.b.x)))), _wgslsmith_add_vec4_u32(~(~(~vec4<u32>(u_input.d, u_input.d, u_input.c.x, 0u))), select(reverseBits(vec4<u32>(123119u, 1u, 94128u, 12069u)), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(1u, 38751u, 24080u, global0.b.x), vec4<u32>(38022u, 77410u, global0.b.x, global0.b.x), vec4<bool>(true, false, true, false)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 32350u, 33360u, u_input.d), vec4<u32>(global0.b.x, 0u, u_input.c.x, 113599u)), vec4<u32>(global0.b.x, 68012u, 83015u, u_input.d) ^ vec4<u32>(0u, global0.b.x, u_input.d, u_input.c.x)), vec4<bool>(true, !global0.a.x, var_0.a.a, false))));
    var_0 = Struct_5(Struct_2(select(var_1.x, ~var_1.x, true) != (func_1().b.x << ((59813u | var_1.x) % 32u))), select(select(!var_0.b, !select(vec4<bool>(true, true, false, false), vec4<bool>(global0.a.x, false, true, global0.a.x), vec4<bool>(false, false, true, false)), true), vec4<bool>(any(vec2<bool>(var_0.d, true)), select(false, var_0.a.a, var_0.b.x), true, true), var_0.b), firstLeadingBit(func_3(Struct_3(global0.a, select(global0.b, var_1.xzz, true)), -3211i)), any(!(!var_0.b.ywx)));
    var_0 = Struct_5(var_0.a, select(vec4<bool>(false, any(!vec3<bool>(var_0.a.a, var_0.a.a, global0.a.x)), var_0.b.x, all(var_0.b)), select(!(!vec4<bool>(false, false, global0.a.x, global0.a.x)), !select(var_0.b, vec4<bool>(false, false, true, var_0.a.a), var_0.b), var_0.a.a || false), any(!var_0.b.yzz)), u_input.b, true);
    let var_2 = vec2<u32>(select(var_1.x, _wgslsmith_div_u32(global0.b.x, firstLeadingBit(~var_1.x)), all(var_0.b.wxz)), _wgslsmith_sub_u32(~_wgslsmith_add_u32(global0.b.x & 4294967295u, 6574u), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-375f, -588f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(1129f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2527f, -786f, -658f) - vec3<f32>(-1127f, 653f, 758f)) - _wgslsmith_div_vec3_f32(vec3<f32>(465f, -433f, 2154f), vec3<f32>(-729f, -386f, 467f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-105f, -1000f) + vec2<f32>(687f, 1133f))))), -_wgslsmith_clamp_vec4_i32(u_input.e, -_wgslsmith_mod_vec4_i32(u_input.e, u_input.e), u_input.e), countOneBits(i32(-1i) * -u_input.e.x));
}

