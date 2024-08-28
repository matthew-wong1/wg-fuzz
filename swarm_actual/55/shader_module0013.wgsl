struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: vec2<bool>,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(48868u, 0u, 0u, 4294967295u), vec4<u32>(13852u, 1u, 33584u, 45989u), vec4<u32>(132500u, 38952u, 41157u, 0u), vec4<u32>(0u, 1u, 4294967295u, 7002u), vec4<u32>(5017u, 27712u, 1u, 79332u), vec4<u32>(4294967295u, 23973u, 1u, 0u), vec4<u32>(22313u, 0u, 81202u, 13402u));

var<private> global1: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    let var_0 = false;
    var var_1 = select(~_wgslsmith_clamp_vec2_u32(global1.c.yx, select(vec2<u32>(11399u, 30934u) << (global1.c.yz % vec2<u32>(32u)), u_input.a.yx, false), vec2<u32>(~26480u, ~global1.c.x)), firstLeadingBit(global1.c.yy), 31853u > (0u >> (min(25294u, _wgslsmith_mult_u32(global1.b.x, 17979u)) % 32u)));
    let var_2 = Struct_1(~u_input.a.x, u_input.a.zy, ~_wgslsmith_mod_vec3_u32(~(~global1.c), abs(~vec3<u32>(global1.c.x, var_1.x, var_1.x))));
    global1 = var_2;
    var var_3 = vec2<bool>(!all(select(!vec3<bool>(var_0, true, true), !vec3<bool>(true, var_0, false), vec3<bool>(false, true, true))), abs(-_wgslsmith_mod_i32(-25579i, 18637i)) <= _wgslsmith_mult_i32(i32(-1i) * -u_input.b, 2147483647i));
    return min(~(u_input.b << (global1.c.x % 32u)), _wgslsmith_mult_i32(-2147483647i, -countOneBits(-u_input.b)));
}

fn func_2(arg_0: u32) -> Struct_3 {
    let var_0 = select(true, any(vec2<bool>(29226u != _wgslsmith_add_u32(arg_0, 4294967295u), false)), true);
    var var_1 = reverseBits(select(vec4<i32>(2147483647i, ~u_input.b, 51212i >> (~arg_0 % 32u), 1i), vec4<i32>(func_3(), 1i, u_input.b, u_input.b), select(vec4<bool>(!var_0, false, !var_0, all(vec2<bool>(var_0, false))), vec4<bool>(var_0 & var_0, all(vec4<bool>(false, var_0, var_0, false)), var_0, 0u >= arg_0), false)));
    global0 = array<vec4<u32>, 7>();
    global1 = Struct_1(abs(_wgslsmith_dot_vec2_u32(global1.b, vec2<u32>(max(global1.a, 45436u), 18956u))), select(~global1.b, ~(u_input.a.zy & vec2<u32>(4294967295u, global1.b.x)) << (_wgslsmith_div_vec2_u32(u_input.a.yx, countOneBits(vec2<u32>(0u, 1u))) % vec2<u32>(32u)), !select(vec2<bool>(var_0, var_0), vec2<bool>(true, true), var_0)), _wgslsmith_mod_vec3_u32(abs((global1.c ^ vec3<u32>(arg_0, 1760u, u_input.a.x)) ^ ~global1.c), ~vec3<u32>(~21255u, 1u, 4294967295u)));
    let var_2 = any(vec3<bool>(!var_0, !any(select(vec2<bool>(true, var_0), vec2<bool>(false, var_0), true)), select(var_0, var_0, any(select(vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, var_0, false), vec3<bool>(true, true, true))))));
    return Struct_3(global1.b, 47282u, !vec2<bool>((var_2 || true) | var_0, var_0), ~(~countOneBits(_wgslsmith_dot_vec3_i32(var_1.wyz, var_1.xwy))), var_2);
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> bool {
    var var_0 = func_2(abs(u_input.a.x));
    var var_1 = Struct_5(any(!(!var_0.c)));
    let var_2 = ~_wgslsmith_div_vec4_i32(~select(vec4<i32>(var_0.d, u_input.b, 37379i, var_0.d), vec4<i32>(-55456i, var_0.d, 0i, 34576i), var_0.c.x), vec4<i32>(~var_0.d, var_0.d, -29688i, 919i));
    global1 = Struct_1(0u, ~var_0.a, vec3<u32>(_wgslsmith_add_u32(0u, u_input.a.x), var_0.b, (u_input.a.x << (0u % 32u)) ^ u_input.a.x));
    var_1 = Struct_5(true);
    return all(select(select(!vec3<bool>(var_1.a, var_1.a, false), select(vec3<bool>(false, arg_0, var_0.e), vec3<bool>(var_0.e, var_1.a, false), vec3<bool>(false, false, arg_0)), !(arg_0 & false)), vec3<bool>(arg_0, true, true), !(!(!vec3<bool>(true, true, var_1.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 7>();
    let var_0 = all(select(vec2<bool>(false, true), !vec2<bool>(true, all(vec4<bool>(false, false, true, false))), func_1(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1126f, 115f, -908f, -181f)))));
    global0 = array<vec4<u32>, 7>();
    var var_1 = Struct_1(reverseBits(_wgslsmith_sub_u32(u_input.a.x, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(84943u, u_input.a.x, global1.c.x, 30719u), vec4<u32>(1u, 4294967295u, u_input.a.x, 0u))))), ~global1.b, global1.c | u_input.a);
    var var_2 = vec2<bool>(any(!select(!vec3<bool>(false, true, var_0), vec3<bool>(false, var_0, false), vec3<bool>(var_0, true, true))), all(select(!select(vec2<bool>(true, var_0), vec2<bool>(true, false), vec2<bool>(var_0, var_0)), vec2<bool>(true, true), vec2<bool>(!var_0, var_0))));
    global0 = array<vec4<u32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

