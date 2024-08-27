struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec4<f32> = vec4<f32>(-1388f, -132f, 211f, 329f);

var<private> global2: array<Struct_2, 12>;

var<private> global3: vec2<i32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = u_input.c;
    let var_1 = ~(~(~vec2<u32>(~u_input.e, ~54512u)));
    global2 = array<Struct_2, 12>();
    global2 = array<Struct_2, 12>();
    var var_2 = vec3<i32>(_wgslsmith_dot_vec3_i32(-u_input.a.ywy, select(u_input.a.wzz, firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, 1i)), select(!vec3<bool>(global0.x, global0.x, false), select(vec3<bool>(global0.x, false, false), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false)), global0.x))), 3271i, global3.x);
    return all(select(select(!vec2<bool>(false, global0.x), vec2<bool>(false, false), select(vec2<bool>(global0.x, true), vec2<bool>(false, global0.x), true)), !select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x), vec2<bool>(global0.x, true)), vec2<bool>(global0.x, true))) & all(!vec4<bool>(true, true, -1000f > global1.x, !global0.x));
}

fn func_2() -> vec4<bool> {
    var var_0 = (~vec3<i32>(max(-1i, u_input.b.x), _wgslsmith_mod_i32(-2147483647i, -41678i), global3.x) | (u_input.a.wxx >> (_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(84820u, u_input.c, u_input.e), vec3<u32>(4294967295u, 25984u, 12318u), vec3<u32>(u_input.c, u_input.c, u_input.c)), vec3<u32>(u_input.e, 26731u, 0u)) % vec3<u32>(32u)))) ^ u_input.a.yxz;
    var var_1 = 49928i;
    var var_2 = Struct_1(-451f, countOneBits(var_0.x) != -7194i, !select(!select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, false, false), true), vec4<bool>(true, global0.x, false, global0.x), all(!vec3<bool>(global0.x, global0.x, global0.x))), vec4<bool>(!(!global0.x), select(global0.x, !global0.x, func_3(~(-41871i))), !global0.x, 30670u <= (u_input.e << (0u % 32u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.x, -1944f, global0.x)) - 1361f)), 1479f)));
    var_0 = ~u_input.a.zxx;
    let var_3 = min(var_0.x, select(-28296i, ~5623i, false));
    return var_2.d;
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    let var_0 = ~vec2<u32>(u_input.c, u_input.c);
    let var_1 = var_0.x;
    let var_2 = global0.x;
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(933f)), arg_0.b.x, arg_0.c.x, 838f));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-675f + -1010f), true, select(select(!(!vec4<bool>(global0.x, global0.x, true, global0.x)), select(vec4<bool>(false, false, false, global0.x), vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(false, false, global0.x, true)), global0.x), select(!select(vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(true, false, global0.x, true), true), select(!vec4<bool>(global0.x, global0.x, global0.x, true), func_2(), vec4<bool>(global0.x, true, true, false)), vec4<bool>(func_3(u_input.b.x), false, global0.x && global0.x, global0.x || global0.x)), false), vec4<bool>(global0.x, !(!func_3(2147483647i)), any(!(!vec4<bool>(global0.x, true, global0.x, global0.x))), !global0.x), -1000f);
    return Struct_1(global1.x, any(select(var_3.d.zzw, !var_3.c.ywy, false)), vec4<bool>(false, !(all(vec3<bool>(global0.x, false, false)) | all(var_3.c)), true, func_3(_wgslsmith_div_i32(0i << (var_0.x % 32u), global3.x))), !var_3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1796f))) * var_3.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.c, 75101u), 12u)];
    let var_1 = func_1(Struct_2(abs(_wgslsmith_mult_u32(var_0.a, ~1u)), var_0.b, vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.c.x - var_0.b.x))), var_0.c.x)), u_input.a.x);
    global1 = var_0.b;
    global1 = vec4<f32>(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-904f)) + _wgslsmith_f_op_f32(-764f - var_1.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1701f, 246f)) * _wgslsmith_f_op_f32(-var_1.e))))), var_0.c.x);
    global2 = array<Struct_2, 12>();
    global2 = array<Struct_2, 12>();
    global3 = ~vec2<i32>(reverseBits(-2640i), -1i);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -760f), true, !(!vec4<bool>(all(var_1.d.yxz), true, global0.x, var_1.d.x | var_1.b)), var_1.c, var_0.c.x);
    var var_3 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~abs(vec2<u32>(388u, var_0.a)))), min(abs(vec4<u32>(countOneBits(var_0.a), 36697u, 4294967295u, ~u_input.e)), _wgslsmith_add_vec4_u32(vec4<u32>(~1u, ~1u, var_0.a, ~u_input.e), vec4<u32>(min(45071u, 1u), 55716u, ~48453u, abs(4294967295u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(165f, var_1.a, !any(var_2.d.wx)))));
}

