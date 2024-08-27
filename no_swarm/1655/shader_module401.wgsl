struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: bool;

var<private> global2: array<vec2<u32>, 31>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> i32 {
    return -abs(_wgslsmith_mult_i32(u_input.a >> (32922u % 32u), ~global0.x) << (_wgslsmith_add_u32(min(61147u, 4294967295u), _wgslsmith_mod_u32(1u, 1u)) % 32u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> i32 {
    global1 = u_input.a > 3071i;
    global0 = ~countOneBits(reverseBits(~(~vec3<i32>(global0.x, -3020i, -1i))));
    global2 = array<vec2<u32>, 31>();
    let var_0 = -1000f;
    var var_1 = arg_0;
    return 1i;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1, 35685i, arg_1, 2147483647i), vec4<i32>(global0.x, 5496i, global0.x, u_input.a)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(-2147483647i, -20491i, global0.x, -2147483647i), vec4<i32>(29690i, 1i, 1i, -7433i) | vec4<i32>(arg_1, 0i, u_input.a, arg_1)), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, arg_1, arg_1, 0i) | vec4<i32>(0i, 697i, -26928i, -9169i), vec4<i32>(global0.x, -1i, arg_1, arg_1) | vec4<i32>(u_input.a, -14466i, u_input.a, global0.x))), select(vec4<i32>(-15108i, func_2(), func_3(Struct_1(vec4<u32>(4294967295u, 18149u, 58229u, 4294967295u)), arg_2, 89726u), ~arg_1), vec4<i32>(firstLeadingBit(arg_1), reverseBits(49189i), u_input.a << (arg_0.a.x % 32u), 1i), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false)))));
    let var_1 = select(vec3<bool>(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), true), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true), vec3<bool>(false || (any(vec3<bool>(false, false, false)) == true), any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)), true));
    global1 = false;
    global2 = array<vec2<u32>, 31>();
    let var_2 = ~(~vec3<u32>(arg_0.a.x & _wgslsmith_add_u32(70771u, arg_0.a.x), ~1u, ~(~arg_2.a.x)));
    return vec4<bool>(var_1.x, !var_1.x || false, var_1.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<u32>(17314u, firstTrailingBit(4294967295u) | 78017u, 0u, 18882u) >> (_wgslsmith_mult_vec4_u32(select(vec4<u32>(1u, 1u, 1u, 1u), max(vec4<u32>(1u, 136880u, 67332u, 30082u), vec4<u32>(18607u, 4294967295u, 1047u, 1u)), vec4<bool>(false, false, false, true)), _wgslsmith_clamp_vec4_u32(vec4<u32>(111069u, 71683u, 79015u, 64906u), vec4<u32>(21255u, 0u, 1u, 4294967295u), vec4<u32>(4294967295u, 28412u, 1u, 0u)) >> (vec4<u32>(24154u, 15579u, 4294967295u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global2 = array<vec2<u32>, 31>();
    var var_1 = var_0;
    var var_2 = min(1u, var_0.a.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(240f, -1066f, -169f, 630f) + vec4<f32>(-1011f, 308f, -254f, -759f)) + vec4<f32>(2223f, 197f, 812f, -518f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-127f, 118f, -610f, -432f)), vec4<bool>(true, true, true, true))), vec4<f32>(_wgslsmith_f_op_f32(343f - _wgslsmith_f_op_f32(453f * -1036f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -328f), -141f), _wgslsmith_div_f32(-1478f, _wgslsmith_f_op_f32(f32(-1f) * -1058f)), -1509f))));
    let var_4 = true;
    var var_5 = select(vec3<bool>(((false & var_4) & var_4) || true, !any(!vec2<bool>(true, var_4)), all(func_1(Struct_1(var_0.a), i32(-1i) * -2147483647i, var_0))), !select(vec3<bool>(!var_4, false, !var_4), !(!vec3<bool>(false, var_4, var_4)), true), select(!(!(!vec3<bool>(var_4, false, true))), !vec3<bool>(true, func_1(Struct_1(vec4<u32>(var_0.a.x, var_0.a.x, 16473u, 126090u)), global0.x, var_0).x, all(vec3<bool>(var_4, var_4, true))), select(select(!vec3<bool>(false, var_4, var_4), vec3<bool>(true, var_4, var_4), func_1(var_0, -6261i, var_0).x), !func_1(var_0, 0i, Struct_1(vec4<u32>(4294967295u, var_0.a.x, 0u, 4294967295u))).zzz, true)));
    global0 = _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_div_i32(global0.x, u_input.a) | -20636i, ~reverseBits(global0.x)), ~min(~vec3<i32>(-2147483647i, -2147483647i, global0.x), vec3<i32>(-3444i, -1i, u_input.a))) << (var_0.a.zwy % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.wxz, reverseBits(104718u), _wgslsmith_f_op_vec4_f32(vec4<f32>(1545f, var_3.x, -872f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-238f)) - var_3.x)) * vec4<f32>(_wgslsmith_f_op_f32(max(var_3.x, 246f)), _wgslsmith_f_op_f32(-1026f * -1519f), _wgslsmith_f_op_f32(floor(var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.x, 2490f))))));
}

