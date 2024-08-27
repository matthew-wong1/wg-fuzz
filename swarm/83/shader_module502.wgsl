struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(17086u, vec3<bool>(true, false, true)), Struct_1(26835u, vec3<bool>(false, false, false)), Struct_1(20735u, vec3<bool>(false, false, false)), Struct_1(4294967295u, vec3<bool>(true, true, false)), Struct_1(374u, vec3<bool>(true, true, true)), Struct_1(4294967295u, vec3<bool>(false, true, true)), Struct_1(39409u, vec3<bool>(false, false, true)), Struct_1(4294967295u, vec3<bool>(true, false, true)), Struct_1(4294967295u, vec3<bool>(true, false, false)), Struct_1(94557u, vec3<bool>(false, true, false)), Struct_1(0u, vec3<bool>(false, false, true)), Struct_1(306u, vec3<bool>(false, false, true)), Struct_1(69035u, vec3<bool>(true, true, true)), Struct_1(31584u, vec3<bool>(false, false, true)), Struct_1(7054u, vec3<bool>(false, false, true)), Struct_1(1u, vec3<bool>(true, false, true)), Struct_1(99764u, vec3<bool>(false, false, true)), Struct_1(4294967295u, vec3<bool>(false, false, true)), Struct_1(36591u, vec3<bool>(true, true, false)), Struct_1(0u, vec3<bool>(false, false, true)), Struct_1(24557u, vec3<bool>(true, true, true)), Struct_1(1u, vec3<bool>(false, true, true)), Struct_1(4294967295u, vec3<bool>(true, true, true)), Struct_1(4294967295u, vec3<bool>(true, true, false)), Struct_1(4294967295u, vec3<bool>(false, true, false)), Struct_1(33168u, vec3<bool>(false, true, true)), Struct_1(34477u, vec3<bool>(false, true, false)), Struct_1(4294967295u, vec3<bool>(true, false, true)), Struct_1(44735u, vec3<bool>(true, true, true)), Struct_1(54714u, vec3<bool>(false, false, true)), Struct_1(1u, vec3<bool>(true, true, true)), Struct_1(86851u, vec3<bool>(false, true, false)));

var<private> global1: vec4<f32>;

var<private> global2: vec3<bool>;

var<private> global3: array<u32, 21> = array<u32, 21>(70071u, 58451u, 76608u, 24735u, 67063u, 4294967295u, 14707u, 4294967295u, 68463u, 0u, 90224u, 25359u, 0u, 41311u, 1827u, 1u, 13626u, 0u, 11117u, 549u, 4294967295u);

var<private> global4: array<Struct_1, 31>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

@compute
@workgroup_size(1)
fn main() {
    global2 = vec3<bool>(true, all(select(vec2<bool>(select(false, false, false), all(vec4<bool>(true, false, false, global2.x))), global2.yy, !(!global2.zx))), true);
    global2 = vec3<bool>(false, !all(select(!global2.xz, vec2<bool>(true, global2.x), select(global2.yy, vec2<bool>(global2.x, global2.x), global2.zx))), true | (((global2.x | false) != true) != (375f == global1.x)));
    global4 = array<Struct_1, 31>();
    let var_0 = -6963i;
    var var_1 = ~vec4<u32>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(0u, _wgslsmith_sub_u32(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 21u)], 21u)])), _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(4294967295u, 21u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(101761u, 21u)], 21u)], 21u)], 21u)], 21u)], 21u)]) >> (global3[_wgslsmith_index_u32(~4294967295u, 21u)] % 32u)), 21u)], global3[_wgslsmith_index_u32(~(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(13310u, 21u)], 21u)], 1u), 21u)] >> (global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(3937u, 21u)], global3[_wgslsmith_index_u32(1u, 21u)]), 21u)] % 32u)), 21u)], ~35426u, 11685u);
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.x * global1.x)));
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -140f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.x, 973f), -1377f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -899f), _wgslsmith_f_op_f32(f32(-1f) * -346f), any(vec3<bool>(global2.x, true, global2.x))))), _wgslsmith_f_op_f32(round(global1.x)), 381f, global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(firstTrailingBit(_wgslsmith_add_i32(u_input.a, u_input.a) << (~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(975u, 21u)], 21u)] % 32u)), 63853i));
}

