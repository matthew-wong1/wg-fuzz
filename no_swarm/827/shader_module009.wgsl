struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec3<bool>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27> = array<bool, 27>(false, false, true, true, false, false, true, true, true, false, true, true, true, true, true, true, false, false, false, true, true, true, true, true, true, true, true);

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec4<bool>(false, true, false, false), 1u, vec3<bool>(false, false, false), vec4<bool>(false, false, false, true), false), Struct_1(vec4<bool>(true, true, false, false), 4294967295u, vec3<bool>(false, false, true), vec4<bool>(true, false, false, true), true), Struct_1(vec4<bool>(false, false, true, false), 4294967295u, vec3<bool>(false, true, true), vec4<bool>(true, true, false, false), false), Struct_1(vec4<bool>(false, false, true, true), 4294967295u, vec3<bool>(false, false, true), vec4<bool>(true, true, false, true), true));

var<private> global3: array<Struct_2, 29>;

var<private> global4: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<bool>(true, true, false, false), 24333u, vec3<bool>(true, false, false), vec4<bool>(false, false, true, true), true), Struct_1(vec4<bool>(true, true, true, false), 4294967295u, vec3<bool>(false, true, true), vec4<bool>(false, true, true, false), false), Struct_1(vec4<bool>(false, false, true, false), 1u, vec3<bool>(true, false, true), vec4<bool>(false, true, true, true), true), Struct_1(vec4<bool>(false, false, false, true), 54083u, vec3<bool>(true, true, false), vec4<bool>(false, false, true, false), false), Struct_1(vec4<bool>(false, true, true, true), 57180u, vec3<bool>(false, true, false), vec4<bool>(true, false, true, true), false), Struct_1(vec4<bool>(true, false, false, true), 1u, vec3<bool>(true, false, true), vec4<bool>(false, false, true, true), true), Struct_1(vec4<bool>(true, false, false, false), 0u, vec3<bool>(true, true, true), vec4<bool>(false, false, true, true), false), Struct_1(vec4<bool>(false, true, true, true), 22633u, vec3<bool>(true, false, false), vec4<bool>(true, true, false, true), true), Struct_1(vec4<bool>(true, true, false, false), 20957u, vec3<bool>(false, false, false), vec4<bool>(true, true, true, true), true), Struct_1(vec4<bool>(true, true, false, true), 4294967295u, vec3<bool>(true, true, true), vec4<bool>(true, true, true, true), false), Struct_1(vec4<bool>(true, false, false, false), 4299u, vec3<bool>(false, true, true), vec4<bool>(true, false, true, true), true), Struct_1(vec4<bool>(true, false, false, true), 1u, vec3<bool>(true, false, false), vec4<bool>(false, false, true, true), false), Struct_1(vec4<bool>(false, false, false, true), 65379u, vec3<bool>(true, false, true), vec4<bool>(true, false, false, false), true), Struct_1(vec4<bool>(true, false, false, false), 4294967295u, vec3<bool>(true, true, true), vec4<bool>(true, true, false, true), false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(0u, 29u)];
    global3 = array<Struct_2, 29>();
    var var_1 = global3[_wgslsmith_index_u32(~global1.c.x, 29u)];
    let var_2 = select((true && any(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 27u)], var_1.b.a.x))) & all(select(var_0.a.yy, var_0.a.yz, vec2<bool>(false, false))), var_0.b.a.x, true) || true;
    var var_3 = ~_wgslsmith_div_i32(_wgslsmith_sub_i32(1i, ~_wgslsmith_sub_i32(15722i, 1i)), _wgslsmith_mod_i32(-(i32(-1i) * -43950i), -_wgslsmith_dot_vec2_i32(vec2<i32>(-15968i, 16555i), vec2<i32>(1i, 20064i))));
    return 4294967295u;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec2<i32>, arg_3: vec4<u32>) -> u32 {
    return 17664u << (func_3() % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: Struct_1) -> bool {
    global0 = array<bool, 27>();
    var var_0 = firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(reverseBits(u_input.c.yz), vec2<u32>(4294967295u, ~1u)), firstLeadingBit(arg_0.b & _wgslsmith_add_u32(0u, 65672u)), 0u, ~((arg_1.x << (1u % 32u)) ^ ~4294967295u)));
    let var_1 = true;
    let var_2 = -1i;
    let var_3 = arg_0.a.ww;
    return false;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> Struct_1 {
    global0 = array<bool, 27>();
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 27u)] | func_4(Struct_1(vec4<bool>(true, arg_0.d.x && arg_0.a.x, true, select(global0[_wgslsmith_index_u32(24945u, 27u)], false, true)), ~(arg_1 << (4294967295u % 32u)), !(!vec3<bool>(global0[_wgslsmith_index_u32(26061u, 27u)], global1.b.c.x, false)), arg_0.d, global1.a.x), vec2<u32>(abs(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(arg_0.b, 79572u, arg_1))), func_2(Struct_2(arg_0.a, global2[_wgslsmith_index_u32(4294967295u, 4u)], global1.d, vec3<u32>(1u, global1.d.x, arg_1)), vec2<i32>(19338i, arg_2), vec2<i32>(arg_2, -22512i), vec4<u32>(4294967295u, 10400u, global1.d.x, 1u))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1315f - -1159f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))), global4[_wgslsmith_index_u32(u_input.c.x & 12715u, 14u)]);
    let var_1 = Struct_2(select(arg_0.a, select(vec4<bool>(arg_0.e && false, !arg_0.e, all(arg_0.c.xy), true & global0[_wgslsmith_index_u32(30340u, 27u)]), !arg_0.d, vec4<bool>(false, !global1.a.x, global1.b.e, true)), !(36153u > arg_0.b) && func_4(arg_0, firstLeadingBit(global1.c.yz), vec2<f32>(-875f, -933f), arg_0)), global1.b, ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(46533u, 38710u, global1.c.x) & u_input.c, u_input.c)), global1.c);
    var var_2 = arg_2 & max(arg_2, select(-1i, -(~arg_2), all(vec2<bool>(false, global1.a.x))));
    let var_3 = Struct_2(select(select(select(!var_1.a, vec4<bool>(arg_0.a.x, false, false, var_1.a.x), false), !vec4<bool>(global0[_wgslsmith_index_u32(arg_0.b, 27u)], var_1.a.x, arg_0.d.x, global1.a.x), select(!global1.a, vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 27u)], global1.b.c.x, global0[_wgslsmith_index_u32(7115u, 27u)]), var_1.b.d)), vec4<bool>(false, global1.a.x, true, var_1.b.a.x), var_1.b.d), Struct_1(!select(!vec4<bool>(arg_0.c.x, arg_0.e, false, global1.b.a.x), select(arg_0.d, global1.a, global0[_wgslsmith_index_u32(28097u, 27u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)], var_1.a.x, false, false)), ~(~0u), select(vec3<bool>(global1.b.e, true, true), global1.a.zxy, vec3<bool>(all(var_1.a), !global1.a.x, true)), global1.a, any(select(!var_1.b.d, select(var_1.b.d, global1.a, vec4<bool>(true, true, var_1.a.x, true)), true))), u_input.c, vec3<u32>(_wgslsmith_mod_u32(0u, reverseBits(15592u) ^ _wgslsmith_div_u32(0u, arg_1)), _wgslsmith_add_u32(global1.b.b, arg_1), 51374u));
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b;
    var var_1 = global0[_wgslsmith_index_u32(76106u, 27u)];
    var var_2 = vec3<i32>(-1i) * -(~(-vec3<i32>(1i, 1i, 1i)));
    var var_3 = func_1(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, ~_wgslsmith_mod_u32(~u_input.b.x, ~23026u)), 4u)], ~4294967295u, 1i);
    var_1 = !(1u < _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 76933u, 14645u) & vec3<u32>(12659u, var_3.b, 0u), ~global1.c)) & !func_1(Struct_1(!vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(global1.d.x, 27u)]), var_3.b ^ var_0.b, func_1(global2[_wgslsmith_index_u32(global1.d.x, 4u)], var_0.b, var_2.x).c, global1.b.a, true), var_3.b, -var_2.x).d.x;
    let x = u_input.a;
    s_output = StorageBuffer(~1u, ~(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), 50633u)));
}

