struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 31>;

var<private> global1: array<vec2<bool>, 24>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: i32) -> f32 {
    let var_0 = ~(firstTrailingBit(select(vec3<u32>(u_input.c, 47505u, 1u), vec3<u32>(u_input.c, u_input.c, 0u), true) << (select(vec3<u32>(1u, 26086u, u_input.c), vec3<u32>(u_input.c, u_input.c, 524u), vec3<bool>(true, false, false)) % vec3<u32>(32u))) << (_wgslsmith_sub_vec3_u32(max(reverseBits(vec3<u32>(4294967295u, u_input.c, 16698u)), vec3<u32>(u_input.c, u_input.c, 79962u)), abs(~vec3<u32>(0u, 1u, 77216u))) % vec3<u32>(32u)));
    global1 = array<vec2<bool>, 24>();
    var var_1 = !global1[_wgslsmith_index_u32(~0u, 24u)];
    let var_2 = Struct_1(431f, _wgslsmith_add_u32(var_0.x, _wgslsmith_add_u32(u_input.c, _wgslsmith_mod_u32(38699u, u_input.c) ^ ~var_0.x)));
    global0 = array<vec4<u32>, 31>();
    return 599f;
}

fn func_3(arg_0: u32, arg_1: vec2<bool>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -136f)) * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-853f - 591f), _wgslsmith_f_op_f32(sign(1264f))), 1173f)), _wgslsmith_div_u32(105612u, ~13806u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(110f * _wgslsmith_f_op_f32(-1f)));
}

fn func_1(arg_0: vec3<bool>, arg_1: i32) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-515f)), _wgslsmith_f_op_f32(func_2(1i, 2452i, 32594i)), !arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.c, global1[_wgslsmith_index_u32(u_input.c, 24u)])) - _wgslsmith_div_f32(1532f, -199f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 2346f), -540f))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-286f, 1093f))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 972f) - vec2<f32>(var_0.x, -867f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -367f) - vec2<f32>(var_0.x, -100f)), any(vec2<bool>(arg_0.x, arg_0.x))))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1838f)))))) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, var_0.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(137f, -982f) * vec2<f32>(var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1041f, var_0.x) * vec2<f32>(383f, var_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-191f, var_0.x)))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(var_0.x, var_1.x)), var_0.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -164f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(712f, var_0.x) * vec2<f32>(var_1.x, 1828f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1057f, -185f)), arg_0.x)), select(select(select(vec2<bool>(true, arg_0.x), arg_0.xz, arg_0.x), select(global1[_wgslsmith_index_u32(u_input.c, 24u)], vec2<bool>(true, true), vec2<bool>(arg_0.x, true)), arg_0.x), vec2<bool>(false, !arg_0.x), !select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(false, true), vec2<bool>(false, true))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), 1f))), u_input.c << (28144u % 32u));
    let var_3 = ~(~vec2<u32>(u_input.c, var_2.b));
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(-reverseBits(u_input.e.x ^ firstTrailingBit(-44650i)), -14819i);
    global1 = array<vec2<bool>, 24>();
    global1 = array<vec2<bool>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(firstLeadingBit(0u), func_1(vec3<bool>(true, false, false), u_input.a.x) << (_wgslsmith_clamp_u32(u_input.c, u_input.c, u_input.c) % 32u), _wgslsmith_mult_u32(u_input.c, _wgslsmith_mod_u32(u_input.c, u_input.c)), u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~countOneBits(4294967295u), global1[_wgslsmith_index_u32(~u_input.c, 24u)]))));
}

