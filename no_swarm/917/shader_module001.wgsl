struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: u32) -> bool {
    global0 = vec2<i32>(-1i, 0i);
    global0 = ~(vec2<i32>(global0.x, -(u_input.a & u_input.a)) << (_wgslsmith_mult_vec2_u32(~vec2<u32>(arg_3, arg_3), vec2<u32>(abs(arg_3), 83863u >> (arg_3 % 32u))) % vec2<u32>(32u)));
    let var_0 = select(!vec3<bool>((4294967295u == arg_3) || (arg_0 <= -77770i), !(arg_1 < arg_2), true), vec3<bool>(global1.x, global1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(109f, arg_2))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1011f) * -285f)), select(vec3<bool>(!all(vec3<bool>(global1.x, global1.x, true)), true, any(select(global1.zy, vec2<bool>(false, false), true))), !select(vec3<bool>(false, false, false), select(vec3<bool>(true, global1.x, false), vec3<bool>(global1.x, true, global1.x), true), !vec3<bool>(false, global1.x, true)), all(!vec3<bool>(global1.x, global1.x, global1.x))));
    global0 = vec2<i32>(0i, _wgslsmith_sub_i32(-31029i, arg_0));
    let var_1 = select(vec4<bool>(true, !all(!vec3<bool>(var_0.x, true, true)), true, !global1.x), select(vec4<bool>(false, global1.x | false, any(vec3<bool>(true, false, true)) || all(vec4<bool>(global1.x, global1.x, false, true)), global1.x), select(vec4<bool>(!var_0.x, var_0.x | global1.x, true, global1.x), !vec4<bool>(true, global1.x, true, false), select(select(vec4<bool>(false, false, true, var_0.x), vec4<bool>(true, global1.x, false, true), vec4<bool>(false, global1.x, global1.x, false)), !vec4<bool>(false, var_0.x, global1.x, var_0.x), !vec4<bool>(false, var_0.x, var_0.x, var_0.x))), select(global1.x, false, all(vec4<bool>(false, var_0.x, true, global1.x)))), any(var_0.zx));
    return false;
}

fn func_2() -> Struct_1 {
    global1 = select(vec3<bool>(!global1.x, false, !global1.x), select(!(!vec3<bool>(false, global1.x, global1.x)), vec3<bool>(all(!vec4<bool>(true, true, global1.x, false)), global1.x, !func_3(u_input.a, 200f, 590f, 4294967295u)), select(select(!vec3<bool>(false, global1.x, global1.x), select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(true, global1.x, global1.x), global1.x), all(vec2<bool>(global1.x, global1.x))), vec3<bool>(true, true, true), !select(global1.x, false, global1.x))), vec3<bool>(!global1.x, false, !all(global1.zx)));
    global1 = !vec3<bool>(global1.x, ~global0.x < ~0i, ~u_input.a <= ~(1i & global0.x));
    global0 = max(select(firstLeadingBit(vec2<i32>(-u_input.a, min(global0.x, 15216i))), select(~(-vec2<i32>(-22433i, 19430i)), vec2<i32>(u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a)), all(vec4<bool>(global1.x, false, false, false))), vec2<bool>(global1.x, global1.x)), abs(reverseBits(firstLeadingBit(vec2<i32>(0i, global0.x)))));
    var var_0 = Struct_2(!vec2<bool>(!global1.x & global1.x, true));
    var var_1 = ~(~0u);
    return Struct_1(vec3<bool>(any(!(!vec4<bool>(true, var_0.a.x, global1.x, var_0.a.x))), select(global1.x, true, any(!vec4<bool>(global1.x, var_0.a.x, false, false))), all(vec3<bool>(u_input.a > global0.x, true, true))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-231f)), -213f, _wgslsmith_f_op_f32(round(-837f)), _wgslsmith_f_op_f32(1264f - -1160f)), vec4<f32>(_wgslsmith_f_op_f32(-1667f + 1000f), _wgslsmith_div_f32(-1000f, -2845f), 184f, _wgslsmith_f_op_f32(min(1048f, -479f)))))), abs(vec3<i32>(~u_input.a, 26791i, ~global0.x)) | abs(-vec3<i32>(global0.x, -11781i, u_input.a) >> (~vec3<u32>(61337u, 1u, 0u) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(1i, 31523i, select(2147483647i, global0.x, global1.x))), vec3<i32>(-1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 48307i, u_input.a), vec3<i32>(u_input.a, 0i, 2147483647i)), 1i), 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2449f, -167f)))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: vec4<u32>) -> vec3<i32> {
    let var_0 = func_2();
    var var_1 = var_0.c;
    let var_2 = _wgslsmith_f_op_f32(-376f + -191f);
    var var_3 = (4294967295u >> (select(_wgslsmith_dot_vec2_u32(vec2<u32>(52368u, 7812u), vec2<u32>(arg_2.x, 40695u)) << (reverseBits(32772u) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, arg_2.x, arg_2.x), reverseBits(arg_2.wzy)), func_3(2147483647i, -658f, -1329f, _wgslsmith_add_u32(0u, 4294967295u))) % 32u)) >> (~0u % 32u);
    global0 = vec2<i32>(-23848i, min(i32(-1i) * -22614i, -global0.x));
    return countOneBits(var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!vec3<bool>(false, true, global1.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-423f * -434f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -954f)), _wgslsmith_f_op_f32(-345f + _wgslsmith_f_op_f32(-1213f - _wgslsmith_f_op_f32(595f * 661f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -743f) * 1600f)), vec3<i32>(-(0i ^ u_input.a), -2147483647i, 56566i ^ abs(global0.x)) << ((vec3<u32>(51131u, 37465u << (1u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 23026u), vec3<u32>(85826u, 1u, 38073u))) >> (vec3<u32>(~37282u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 12910u), vec2<u32>(0u, 0u)), 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), -_wgslsmith_sub_vec3_i32(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1465f, -1318f, 1408f, -1438f)), abs(1u), _wgslsmith_sub_vec4_u32(vec4<u32>(68371u, 63911u, 4294967295u, 0u), vec4<u32>(1u, 27542u, 0u, 0u))), -_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, global0.x, u_input.a), vec3<i32>(15147i, -10393i, u_input.a))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(701f * -1072f), -349f, global1.x))))));
    var var_1 = vec4<bool>(global1.x, all(var_0.a.zx), !func_3(global0.x, var_0.e, _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(892f + var_0.b.x)), reverseBits(63948u)), true);
    let var_2 = -max(-max(vec4<i32>(8087i, global0.x, 0i, -20009i), ~vec4<i32>(1i, global0.x, global0.x, 34971i)), vec4<i32>(global0.x, _wgslsmith_dot_vec2_i32(-var_0.d.xz, var_0.c.yx), var_0.c.x, -2147483647i));
    let var_3 = var_0;
    let var_4 = Struct_1(select(!(!select(vec3<bool>(true, var_0.a.x, global1.x), vec3<bool>(true, true, var_0.a.x), var_1.x)), !vec3<bool>(all(vec2<bool>(false, false)), 2147483647i <= var_3.d.x, !global1.x), vec3<bool>(var_3.a.x, var_0.a.x, true)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_0.b, vec4<f32>(-350f, 1000f, var_3.b.x, 104f))) - _wgslsmith_f_op_vec4_f32(-var_3.b))), _wgslsmith_f_op_vec4_f32(abs(var_3.b)))), vec3<i32>(firstLeadingBit(u_input.a), 46330i, global0.x), -var_2.yzw, var_0.b.x);
    let var_5 = !(!(!select(vec4<bool>(true, false, var_3.a.x, var_0.a.x), select(vec4<bool>(global1.x, var_4.a.x, var_1.x, var_0.a.x), vec4<bool>(true, false, false, false), vec4<bool>(true, false, var_4.a.x, true)), !var_4.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)), _wgslsmith_mod_u32(~0u, abs(65539u)), reverseBits(vec4<u32>(21400u, 1u, 52081u, 0u))).yz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1026f - var_4.e))));
}

