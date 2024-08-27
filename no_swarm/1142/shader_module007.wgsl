struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, true), false, -659f);

var<private> global1: bool;

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(vec2<bool>(false, false), false, -997f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> bool {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.c, var_0.c, 1227f, 972f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(597f, -873f, -1617f, _wgslsmith_f_op_f32(trunc(-113f))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.c, 1598f, arg_0.c, var_0.c))))));
    let var_2 = vec2<bool>(true, global0.a.x);
    return global0.a.x;
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = arg_0;
    global0 = arg_0;
    global1 = global3.b;
    var var_1 = 36944u;
    let var_2 = vec3<bool>(true, global0.b && var_0.a.x, func_2(Struct_1(select(vec2<bool>(global2.a.x, global2.a.x), !arg_0.a, false), u_input.a.x >= 1u, global3.c), 1u, u_input.b));
    return i32(-1i) * -37220i;
}

fn func_1() -> bool {
    var var_0 = select(!global0.a, select(!(!global2.a), vec2<bool>(true, select(all(vec4<bool>(global0.b, true, true, global2.b)), global0.a.x, true)), true), true);
    let var_1 = Struct_1(vec2<bool>(!(40948u != (u_input.a.x << (1u % 32u))), all(vec3<bool>(true, !global0.a.x, true))), global0.b, 741f);
    global2 = var_1;
    let var_2 = func_3(Struct_1(!global0.a, all(vec3<bool>(all(vec3<bool>(global0.a.x, var_0.x, global0.b)), all(vec4<bool>(global3.a.x, global0.a.x, true, var_1.b)), func_2(Struct_1(var_1.a, true, -1197f), 0u, u_input.b))), global0.c));
    let var_3 = ~firstTrailingBit(~reverseBits(vec4<u32>(4294967295u, u_input.a.x, 1u, 19538u))) >> (_wgslsmith_sub_vec4_u32((vec4<u32>(u_input.a.x, 33888u, u_input.a.x, 4294967295u) ^ ~vec4<u32>(45985u, 1u, u_input.a.x, u_input.a.x)) | (select(vec4<u32>(u_input.a.x, 40868u, 0u, 78645u), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 4922u), vec4<bool>(true, true, true, var_1.b)) << (vec4<u32>(7695u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, ~u_input.a.x) & _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 74073u, 1u, 1u) ^ vec4<u32>(12275u, 1u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 4201u) & vec4<u32>(u_input.a.x, 69806u, u_input.a.x, u_input.a.x))) % vec4<u32>(32u));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<bool>(true, !global0.a.x), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(172f, global2.c))));
    var var_1 = func_1();
    var_1 = global2.b && all(!(!global2.a));
    let var_2 = !func_2(Struct_1(!var_0.a, any(!vec4<bool>(global3.a.x, var_0.a.x, var_0.b, global0.b)), _wgslsmith_f_op_f32(floor(896f))), abs(~2318u), -_wgslsmith_sub_i32(u_input.b, 37237i));
    var var_3 = min(~(~(~(~u_input.a.x))), 72974u);
    let x = u_input.a;
    s_output = StorageBuffer(~min(~u_input.a.x, u_input.a.x) | u_input.a.x, _wgslsmith_div_i32(~(-2147483647i), ~(i32(-1i) * -48516i) << (u_input.a.x % 32u)), vec2<i32>(0i, u_input.b));
}

