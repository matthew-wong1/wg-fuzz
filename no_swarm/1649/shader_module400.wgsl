struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 23>;

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    global1 = select(select(vec3<bool>(select(true, false, u_input.a.x != 38562u), select(global1.x, true, true) & global1.x, true), vec3<bool>(true, all(vec3<bool>(false, true, global1.x)), any(!vec3<bool>(global1.x, true, true))), true), !vec3<bool>(true | !global1.x, !select(global1.x, false, false), all(vec3<bool>(global1.x, false, global1.x))), true);
    let var_0 = reverseBits(~u_input.e);
    global0 = array<vec4<f32>, 23>();
    let var_1 = ~_wgslsmith_dot_vec2_i32(max(-vec2<i32>(-26786i, 40925i), -reverseBits(vec2<i32>(-7535i, 21850i))), -(max(vec2<i32>(33512i, 28430i), vec2<i32>(-2147483647i, -2147483647i)) >> (vec2<u32>(u_input.d.x, var_0.x) % vec2<u32>(32u))));
    var var_2 = -select(vec3<i32>(-_wgslsmith_div_i32(var_1, -1i), -_wgslsmith_add_i32(-36691i, var_1), _wgslsmith_add_i32(-1i, var_1) & -778i), -vec3<i32>(_wgslsmith_clamp_i32(var_1, -2147483647i, -33785i), var_1, max(-2147483647i, 2147483647i)), global1.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, -377f)) * -717f);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: i32) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2167f, -252f, -401f)), vec3<f32>(1050f, 242f, 413f))) * vec3<f32>(-1000f, 973f, _wgslsmith_f_op_f32(f32(-1f) * -1377f))))), select(!select(vec2<bool>(arg_0, false), global1.yz, vec2<bool>(true, arg_0)), select(global1.xz, !vec2<bool>(global1.x, arg_0), vec2<bool>(any(vec3<bool>(false, false, arg_0)), arg_0)), !global1.yy));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-746f, _wgslsmith_f_op_f32(ceil(var_0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a))))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - -1968f)))), !(!(!(!vec2<bool>(global1.x, true)))));
    let var_2 = Struct_1(614f, !select(vec2<bool>(!global1.x, true), var_0.b, !(var_1.a <= 1272f)));
    var var_3 = vec4<bool>(any(!(!select(vec3<bool>(false, var_1.b.x, var_1.b.x), vec3<bool>(global1.x, false, arg_0), vec3<bool>(var_0.b.x, var_1.b.x, arg_0)))), var_2.b.x, false, !(!var_1.b.x));
    return select(!select(vec2<bool>(!global1.x, true), select(select(var_2.b, var_0.b, true), !var_1.b, select(vec2<bool>(arg_0, true), var_3.yz, var_1.b.x)), !(var_2.a < 1283f)), vec2<bool>(arg_0, any(select(vec4<bool>(true, var_0.b.x, var_3.x, true), vec4<bool>(true, arg_0, var_1.b.x, true), var_0.b.x)) & any(!var_3.yy)), !(-arg_3 == arg_3));
}

fn func_1() -> i32 {
    var var_0 = Struct_1(-1000f, vec2<bool>(false, false | any(!vec3<bool>(global1.x, global1.x, true))));
    var var_1 = Struct_1(var_0.a, select(!func_2(true, max(71103u, u_input.c), 1u, reverseBits(1i)), select(select(select(var_0.b, var_0.b, vec2<bool>(global1.x, global1.x)), !global1.yx, all(vec3<bool>(var_0.b.x, false, true))), vec2<bool>(any(vec3<bool>(true, true, false)), true), any(select(vec2<bool>(true, true), vec2<bool>(var_0.b.x, var_0.b.x), var_0.b))), !vec2<bool>(any(vec4<bool>(var_0.b.x, true, true, true)), var_0.a > var_0.a)));
    let var_2 = vec2<i32>(~0i, 1i);
    var_0 = Struct_1(-568f, vec2<bool>(true, global1.x));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(-var_0.a)))), vec2<bool>(!(!(var_2.x >= var_2.x)), !(all(vec4<bool>(var_1.b.x, global1.x, global1.x, global1.x)) || var_1.b.x)));
    return -6669i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = -vec4<i32>(2147483647i, max(func_1(), 2147483647i), 1i, _wgslsmith_sub_i32(1i, 1i)) << (reverseBits(vec4<u32>(~_wgslsmith_add_u32(u_input.c, 115887u), ~u_input.b.x, reverseBits(1u), ~u_input.b.x)) % vec4<u32>(32u));
    let var_2 = global1.x;
    var var_3 = Struct_1(2838f, select(global1.zy, global1.yz, select(_wgslsmith_f_op_f32(select(-1000f, 806f, false)) >= -235f, true, false && global1.x)));
    let var_4 = 1i | var_1.x;
    var var_5 = !select(!(!vec4<bool>(var_3.b.x, true, global1.x, false)), select(select(select(vec4<bool>(global1.x, false, var_3.b.x, var_3.b.x), vec4<bool>(true, var_3.b.x, global1.x, false), false), vec4<bool>(global1.x, false, var_3.b.x, false), !global1.x), select(select(vec4<bool>(var_3.b.x, false, global1.x, false), vec4<bool>(false, global1.x, var_3.b.x, var_3.b.x), global1.x), select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(false, var_3.b.x, false, var_3.b.x), vec4<bool>(true, var_3.b.x, global1.x, false)), var_3.b.x), select(select(vec4<bool>(true, false, global1.x, var_3.b.x), vec4<bool>(global1.x, var_3.b.x, var_3.b.x, global1.x), vec4<bool>(var_3.b.x, var_3.b.x, global1.x, global1.x)), vec4<bool>(false, true, var_3.b.x, global1.x), global1.x | var_3.b.x)), !(!vec4<bool>(var_3.b.x, true, global1.x, true)));
    var var_6 = countOneBits(vec3<u32>(u_input.e.x, 1u, ~1u));
    var_0 = var_3.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1606f)) * _wgslsmith_f_op_f32(-128f - var_3.a)), -1492f)), -715f)), firstLeadingBit(var_4), 4294967295u, _wgslsmith_mod_i32(var_4, max(reverseBits(var_4) >> (~var_6.x % 32u), var_4)));
}

