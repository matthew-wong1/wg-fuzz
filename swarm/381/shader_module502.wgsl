struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
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

var<private> global0: array<u32, 30>;

var<private> global1: array<Struct_1, 30>;

var<private> global2: Struct_1 = Struct_1(1i);

var<private> global3: vec2<bool> = vec2<bool>(false, false);

var<private> global4: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(-51619i), Struct_1(i32(-2147483648)), Struct_1(1i), Struct_1(1i), Struct_1(13535i), Struct_1(0i), Struct_1(-39140i), Struct_1(0i), Struct_1(-26417i), Struct_1(0i), Struct_1(i32(-2147483648)), Struct_1(0i), Struct_1(2147483647i), Struct_1(7802i), Struct_1(2147483647i), Struct_1(-7978i), Struct_1(-1i), Struct_1(-9847i), Struct_1(-15054i), Struct_1(40994i), Struct_1(28017i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> bool {
    global3 = vec2<bool>(!(!(!global3.x)), all(vec4<bool>(true, true, _wgslsmith_dot_vec3_u32(u_input.b.xxw, vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(975u, 30u)], 30u)], 30u)], 1u, 1u)) > _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(63542u, 30u)], 5021u), true)));
    let var_0 = Struct_1(1i);
    var var_1 = var_0;
    var var_2 = all(!(!select(!vec4<bool>(false, false, arg_1, true), vec4<bool>(false, false, false, arg_1), all(vec4<bool>(false, false, arg_1, arg_1)))));
    var var_3 = var_0.a;
    return true;
}

fn func_3() -> vec4<bool> {
    global1 = array<Struct_1, 30>();
    let var_0 = ~(~4294967295u ^ max(0u, u_input.b.x));
    var var_1 = u_input.b;
    var var_2 = u_input.a;
    global3 = select(select(!vec2<bool>(global3.x, !global3.x), !vec2<bool>(global3.x, all(vec3<bool>(global3.x, global3.x, true))), vec2<bool>(true, true)), !(!vec2<bool>(all(vec4<bool>(false, global3.x, false, global3.x)), false)), vec2<bool>(!global3.x, all(!vec4<bool>(global3.x, global3.x, global3.x, false))));
    return select(!vec4<bool>(global3.x, global3.x, all(select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(global3.x, false, true), global3.x)), false), select(!select(vec4<bool>(true, global3.x, true, global3.x), vec4<bool>(true, true, true, true), false), !vec4<bool>(all(vec4<bool>(global3.x, global3.x, false, global3.x)), var_1.x == global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 30u)], 30u)], true, false), vec4<bool>(false, false, global3.x, global3.x)), false);
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-201f, -1000f, 542f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(681f, 1419f, 813f))))));
    var var_1 = Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(arg_0.a, 0i, -18854i), vec3<i32>(arg_0.a, u_input.c, global2.a), vec3<bool>(true, global3.x, false)), vec3<i32>(55736i, u_input.c, arg_0.a)) >> (((u_input.b.xwz | u_input.b.yzx) ^ ~u_input.b.wxw) % vec3<u32>(32u)), -countOneBits(vec3<i32>(arg_0.a, u_input.a, -14534i) & vec3<i32>(1i, arg_0.a, u_input.a))));
    var var_2 = select(select(vec4<bool>(any(vec3<bool>(true, true, true)), !any(vec3<bool>(true, global3.x, global3.x)), global3.x, true), !vec4<bool>(!global3.x, true, false, all(vec3<bool>(false, false, false))), vec4<bool>(!(global3.x & global3.x), !global3.x, false, select(!global3.x, func_2(396f, false, Struct_1(u_input.a)), true))), select(!select(!vec4<bool>(global3.x, true, global3.x, global3.x), select(vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(false, false, true, false), global3.x), func_3()), !func_3(), select(!(!vec4<bool>(global3.x, global3.x, global3.x, global3.x)), vec4<bool>(any(vec3<bool>(true, false, false)), global3.x, true, any(vec4<bool>(false, false, false, global3.x))), select(!vec4<bool>(false, global3.x, global3.x, global3.x), vec4<bool>(true, global3.x, false, global3.x), select(vec4<bool>(global3.x, global3.x, false, true), vec4<bool>(global3.x, global3.x, true, global3.x), global3.x)))), true);
    var var_3 = global4[_wgslsmith_index_u32(97158u, 21u)];
    let var_4 = firstLeadingBit(vec3<i32>(-1i) * -select(reverseBits(vec3<i32>(u_input.c, 0i, -2147483647i)), ~vec3<i32>(-2147483647i, -2147483647i, 5029i), select(var_2.zzy, var_2.yxx, var_2.xzx)));
    return !(!func_3().wxx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1f)), -378f);
    var var_1 = 1000f;
    var var_2 = firstTrailingBit(abs(select(vec3<i32>(global2.a, global2.a, 1i), vec3<i32>(u_input.c, -16324i, 0i) ^ vec3<i32>(u_input.a, u_input.a, global2.a), select(vec3<bool>(true, false, true), vec3<bool>(true, global3.x, true), false)) ^ vec3<i32>(_wgslsmith_add_i32(u_input.c, global2.a), 35035i, global2.a >> (u_input.b.x % 32u))));
    var var_3 = select(!(!(!vec3<bool>(true, true, global3.x))), select(vec3<bool>(global3.x, global3.x, any(!vec2<bool>(global3.x, true))), !select(vec3<bool>(true, true, global3.x), !vec3<bool>(global3.x, global3.x, global3.x), !global3.x), func_1(Struct_1(_wgslsmith_sub_i32(-51136i, 0i)))), true);
    global4 = array<Struct_1, 21>();
    let var_4 = -33685i;
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-(u_input.a ^ 2147483647i))));
}

