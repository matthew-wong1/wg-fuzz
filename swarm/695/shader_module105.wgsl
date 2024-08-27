struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: array<u32, 4>;

var<private> global2: Struct_1 = Struct_1(1u, vec2<u32>(54833u, 34767u));

var<private> global3: vec4<bool>;

var<private> global4: vec2<u32> = vec2<u32>(58037u, 1u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    return !(!select(global0[_wgslsmith_index_u32(1u, 2u)], false, global3.x));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1058f, -1101f, 656f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(414f, _wgslsmith_f_op_f32(floor(-1230f)), 493f))));
    global3 = select(vec4<bool>(true, _wgslsmith_sub_i32(~0i, firstLeadingBit(u_input.c.x)) > 53263i, !(global0[_wgslsmith_index_u32(22251u, 2u)] == true), global3.x), select(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(global3.x, true, global0[_wgslsmith_index_u32(33946u, 2u)], true), false), vec4<bool>(global0[_wgslsmith_index_u32(global4.x, 2u)], false, false, false), func_3()), !select(!vec4<bool>(global0[_wgslsmith_index_u32(64005u, 2u)], true, global3.x, global0[_wgslsmith_index_u32(16507u, 2u)]), vec4<bool>(var_0, true, global3.x, global0[_wgslsmith_index_u32(55455u, 2u)]), false), false), all(!select(!vec4<bool>(var_0, true, true, global3.x), vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.b.x, 4u)], 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], false, global3.x), global3.x)));
    global4 = global2.b;
    let var_2 = arg_0.b;
    return Struct_1(min(~global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(31238u, 4294967295u, arg_0.b.x), vec3<u32>(u_input.a, u_input.a, global2.b.x)), 4u)], ~arg_0.a), ~(~(~(global2.b >> (vec2<u32>(18971u, u_input.a) % vec2<u32>(32u))))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> i32 {
    global0 = array<bool, 2>();
    global0 = array<bool, 2>();
    global0 = array<bool, 2>();
    let var_0 = u_input.c.x | (u_input.c.x & -2147483647i);
    global3 = select(vec4<bool>(false, global0[_wgslsmith_index_u32(29173u, 2u)], global0[_wgslsmith_index_u32(global4.x, 2u)], true), select(select(select(!vec4<bool>(false, arg_0, global3.x, arg_0), !vec4<bool>(global3.x, true, true, true), func_3()), vec4<bool>(arg_0, true, global3.x & global0[_wgslsmith_index_u32(arg_3.b.x, 2u)], true), vec4<bool>(global3.x, all(vec3<bool>(arg_0, true, false)), true, all(global3.zw))), select(!(!vec4<bool>(global3.x, true, true, arg_0)), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, false, global0[_wgslsmith_index_u32(global4.x, 2u)], global3.x), vec4<bool>(global3.x, global3.x, true, arg_0)), select(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 2u)], true, global0[_wgslsmith_index_u32(45975u, 2u)]), vec4<bool>(true, arg_0, global0[_wgslsmith_index_u32(99621u, 2u)], global0[_wgslsmith_index_u32(30599u, 2u)]), global3.x & global0[_wgslsmith_index_u32(arg_1.a, 2u)])), true || !all(vec3<bool>(global0[_wgslsmith_index_u32(global4.x, 2u)], arg_0, arg_0))), !any(!vec2<bool>(arg_0, false)));
    return ~(max(min(0i, u_input.c.x), ~var_0) >> (global2.b.x % 32u));
}

fn func_1() -> i32 {
    let var_0 = u_input.b;
    let var_1 = vec3<bool>(global0[_wgslsmith_index_u32(4294967295u | _wgslsmith_add_u32(~_wgslsmith_mult_u32(22870u, 19543u), global1[_wgslsmith_index_u32(302u, 4u)]), 2u)], func_4(var_0 != 1i, func_2(Struct_1(97625u, global2.b)), vec3<f32>(1153f, _wgslsmith_f_op_f32(step(-1198f, -345f)), -1230f), Struct_1(~4294967295u, global2.b)) >= var_0, false);
    var var_2 = -1063f;
    global2 = func_2(func_2(func_2(func_2(Struct_1(52649u, vec2<u32>(4294967295u, global2.a))))));
    return -select(22384i, u_input.b, global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~u_input.a, 0u), 2u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(global0[_wgslsmith_index_u32(global2.a, 2u)], true);
    let var_1 = select(func_1() < reverseBits(i32(-1i) * -4358i), var_0.x, any(global3.yzz));
    global3 = !(!vec4<bool>(var_0.x, true, global3.x, _wgslsmith_f_op_f32(max(-204f, 478f)) <= _wgslsmith_f_op_f32(trunc(1077f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(countOneBits(~_wgslsmith_add_i32(u_input.c.x, 2288i)), -func_4(1i > u_input.c.x, Struct_1(global2.a, vec2<u32>(global4.x, 4294967295u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -611f, -1000f) * vec3<f32>(-817f, 237f, 699f)), Struct_1(2581u, vec2<u32>(24902u, 0u))), 11547i));
}

