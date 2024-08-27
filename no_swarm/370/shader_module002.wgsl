struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28> = array<u32, 28>(4294967295u, 57492u, 67092u, 49983u, 48621u, 41895u, 40015u, 31301u, 18258u, 0u, 1u, 83576u, 4294967295u, 21097u, 12362u, 4294967295u, 112931u, 1u, 46847u, 4294967295u, 0u, 9037u, 49468u, 1u, 0u, 62924u, 4294967295u, 0u);

var<private> global1: Struct_1 = Struct_1(58870i, i32(-2147483648), false);

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(1i, 1i, true), Struct_1(-1i, 18104i, true), Struct_1(0i, i32(-2147483648), false), Struct_1(1i, -38077i, true), Struct_1(i32(-2147483648), 1i, true), Struct_1(59263i, 0i, false), Struct_1(2147483647i, 0i, true), Struct_1(-25781i, 18830i, true), Struct_1(-2862i, 1i, false), Struct_1(1i, -1i, false), Struct_1(-1i, 1i, true), Struct_1(2147483647i, 2147483647i, true), Struct_1(-1i, -8212i, false), Struct_1(1i, -54879i, false), Struct_1(1i, 2147483647i, true), Struct_1(31524i, i32(-2147483648), true), Struct_1(3221i, 19216i, false), Struct_1(2147483647i, 5200i, true), Struct_1(-13942i, i32(-2147483648), false), Struct_1(2147483647i, 0i, true), Struct_1(1i, -13665i, false));

var<private> global3: i32 = 41734i;

var<private> global4: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(false, !any(!(!vec4<bool>(true, global1.c, global1.c, false))));
    global1 = global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(102705u, 28u)] << (0u % 32u), abs(u_input.a.x)), 4294967295u) ^ _wgslsmith_div_u32(4294967295u, ~abs(_wgslsmith_div_u32(u_input.a.x, global0[_wgslsmith_index_u32(u_input.e.x, 28u)]))), 21u)];
    let var_1 = Struct_1(global4.b, u_input.b.x, false & any(select(!vec3<bool>(true, global4.c, global4.c), vec3<bool>(true, true, true), vec3<bool>(global1.c, global1.c, global4.c))));
    var var_2 = u_input.c;
    global2 = array<Struct_1, 21>();
    var_0 = select(!vec2<bool>(all(!vec2<bool>(global1.c, true)), true), vec2<bool>(all(select(!vec4<bool>(true, true, var_0.x, global4.c), vec4<bool>(true, true, var_0.x, global1.c), var_1.c)), !var_1.c), !select(vec2<bool>(false, any(vec4<bool>(false, var_1.c, global4.c, var_0.x))), select(vec2<bool>(var_1.c, false), vec2<bool>(false, false), select(vec2<bool>(false, var_0.x), vec2<bool>(global1.c, var_0.x), vec2<bool>(var_0.x, true))), 2147483647i >= -global1.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.c.x, -2147483647i), u_input.d.xw ^ vec2<i32>(-36408i, 24038i), vec2<bool>(false, var_0.x)), vec2<i32>(firstLeadingBit(global1.b), -18363i))), 467f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -311f)))));
}

