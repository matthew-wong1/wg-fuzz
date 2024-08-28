struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

var<private> global1: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false));

var<private> global2: vec3<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: bool) -> f32 {
    global1 = array<vec3<bool>, 15>();
    return arg_1.x;
}

fn func_2(arg_0: Struct_1) -> vec2<u32> {
    global2 = select(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, arg_0.d.x), 15u)], vec3<bool>(false, arg_0.a, _wgslsmith_f_op_f32(func_3(abs(u_input.b.zwy), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(884f, 309f))), global2.x)) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -231f), -518f))), !select(select(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(55833u, 5000u), 15u)], !global1[_wgslsmith_index_u32(arg_0.d.x, 15u)], true == global0[_wgslsmith_index_u32(4294967295u, 18u)]), !global1[_wgslsmith_index_u32(93453u, 15u)], arg_0.b));
    var var_0 = vec3<u32>(max(arg_0.d.x, reverseBits(~arg_0.d.x) ^ (arg_0.d.x ^ arg_0.d.x)), ~4195u, ~(~max(select(arg_0.d.x, arg_0.d.x, global0[_wgslsmith_index_u32(arg_0.d.x, 18u)]), 42453u)));
    let var_1 = (-1i & arg_0.c) & arg_0.c;
    let var_2 = Struct_1(all(!select(global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(var_0.x, 15u)], false)) && arg_0.a, false, var_1 & select(arg_0.c, -2147483647i, true), _wgslsmith_mod_vec2_u32(var_0.zx, _wgslsmith_clamp_vec2_u32(~vec2<u32>(59357u, var_0.x), min(vec2<u32>(var_0.x, 0u), vec2<u32>(arg_0.d.x, var_0.x)), arg_0.d) >> (min(select(arg_0.d, arg_0.d, global2.yx), var_0.xx) % vec2<u32>(32u))));
    let var_3 = Struct_1(var_2.a && all(global2.zx), all(vec4<bool>(true, true, true, true)), firstTrailingBit(_wgslsmith_add_i32(var_1, -u_input.a.x)), ~(~(~var_2.d)) ^ _wgslsmith_mult_vec2_u32(var_0.xz, abs(var_0.xz) ^ firstTrailingBit(vec2<u32>(4294967295u, var_2.d.x))));
    return arg_0.d;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(55533u, ~(~1u), 15709u), select(~(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.d.x, arg_1.d.x, arg_1.d.x), vec3<u32>(4294967295u, 1u, 16369u)) << (abs(vec3<u32>(4294967295u, 4294967295u, 77189u)) % vec3<u32>(32u))), vec3<u32>(~(~arg_1.d.x), arg_1.d.x, arg_1.d.x), !vec3<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(arg_1.d.x, 18u)], true, global0[_wgslsmith_index_u32(arg_1.d.x, 18u)], false)), all(vec3<bool>(global2.x, false, global0[_wgslsmith_index_u32(arg_1.d.x, 18u)])), global2.x)));
    var var_1 = false | global2.x;
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -310f) + _wgslsmith_f_op_f32(max(747f, -938f)))))));
    return select(arg_1.d.x > 0u, !arg_1.a, any(vec2<bool>(false, false)));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> u32 {
    var var_0 = vec4<bool>(func_4(~u_input.c, Struct_1(!(!global2.x), global0[_wgslsmith_index_u32(~(~arg_0.x), 18u)], max(u_input.a.x & -12531i, u_input.a.x ^ u_input.c), reverseBits(func_2(Struct_1(global0[_wgslsmith_index_u32(arg_0.x, 18u)], true, u_input.c, vec2<u32>(arg_0.x, 56667u)))))), global0[_wgslsmith_index_u32(3941u, 18u)], true, true);
    global2 = global1[_wgslsmith_index_u32(arg_0.x, 15u)];
    let var_1 = select(select(select(var_0.yxw, !vec3<bool>(global2.x, var_0.x, global2.x), false), select(global1[_wgslsmith_index_u32(countOneBits(~1u), 15u)], select(!vec3<bool>(var_0.x, true, true), var_0.wzz, select(var_0.zzx, var_0.xxx, vec3<bool>(var_0.x, true, global0[_wgslsmith_index_u32(34355u, 18u)]))), !select(var_0.zyw, var_0.yyy, var_0.wwz)), true), !vec3<bool>(true, all(select(vec4<bool>(false, global0[_wgslsmith_index_u32(30712u, 18u)], false, true), vec4<bool>(true, global0[_wgslsmith_index_u32(76897u, 18u)], var_0.x, global0[_wgslsmith_index_u32(4294967295u, 18u)]), vec4<bool>(true, false, true, var_0.x))), var_0.x), !select(select(var_0.zyx, !vec3<bool>(global2.x, var_0.x, global0[_wgslsmith_index_u32(11235u, 18u)]), select(var_0.x, true, var_0.x)), vec3<bool>(select(var_0.x, global0[_wgslsmith_index_u32(arg_0.x, 18u)], var_0.x), select(global0[_wgslsmith_index_u32(arg_0.x, 18u)], false, true), any(vec4<bool>(false, var_0.x, global0[_wgslsmith_index_u32(arg_0.x, 18u)], false))), true));
    global1 = array<vec3<bool>, 15>();
    let var_2 = true;
    return _wgslsmith_mult_u32(1u, 62053u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!vec4<bool>(all(!vec2<bool>(global2.x, global0[_wgslsmith_index_u32(4294967295u, 18u)])), global2.x, false, true));
    var var_1 = ~1u;
    let var_2 = !((~0u >> (1u % 32u)) == select(~_wgslsmith_clamp_u32(0u, 16253u, 20237u), func_1(vec3<u32>(89623u, 0u, 4294967295u), 1271f), false));
    var_0 = select(_wgslsmith_div_i32(u_input.c, ~(~1i)) < -firstTrailingBit(0i), true, true);
    let var_3 = Struct_1(all(vec4<bool>(var_2, true, !(global2.x | false), !(global0[_wgslsmith_index_u32(4294967295u, 18u)] & var_2))), global0[_wgslsmith_index_u32(~1u, 18u)] == !(!all(global2.xx)), abs(_wgslsmith_add_i32(u_input.a.x, -1i)), vec2<u32>(32654u, 21216u));
    var var_4 = var_3.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, 738f))) + vec2<f32>(1389f, 1000f)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(903f + 695f), -1146f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(421f, -645f, global2.x)))), select(global2.zz, global2.yy, vec2<bool>(true, all(vec3<bool>(false, false, global2.x)))))), -7794i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))));
}

