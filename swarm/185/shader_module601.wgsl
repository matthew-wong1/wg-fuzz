struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
    d: f32,
    e: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: u32,
    d: bool,
    e: vec3<bool>,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1000f, 1990f);

var<private> global1: array<u32, 28>;

var<private> global2: array<vec4<u32>, 1>;

var<private> global3: vec3<bool> = vec3<bool>(true, true, false);

var<private> global4: f32 = -169f;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_5) -> i32 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(12221u, arg_1.b.c, 4294967295u), vec3<u32>(1u, global1[_wgslsmith_index_u32(arg_1.b.c, 28u)], 13216u)), _wgslsmith_sub_u32(arg_1.b.c, global1[_wgslsmith_index_u32(1u, 28u)]), 34835u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.b.c, 28u)], 28u)], 28u)]), vec4<u32>(26767u, arg_1.b.c, arg_1.b.c, 19988u) >> (vec4<u32>(arg_1.b.c, global1[_wgslsmith_index_u32(arg_1.b.c, 28u)], 0u, arg_1.b.c) % vec4<u32>(32u))), arg_1.b.c, -min(arg_0, u_input.e.zww)), ~(~vec2<u32>(_wgslsmith_add_u32(arg_1.b.c, 42156u), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.b.c, 28u)], 28u)], 28u)], global1[_wgslsmith_index_u32(arg_1.b.c, 28u)]))), Struct_1(vec4<bool>(true, true, true, true), -15149i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(arg_1.a * 640f))), all(arg_1.b.a.zx));
    global2 = array<vec4<u32>, 1>();
    let var_1 = all(var_0.c.a);
    return u_input.d;
}

fn func_2() -> f32 {
    global3 = select(!(!vec3<bool>(global3.x && true, global3.x, all(vec4<bool>(global3.x, false, true, true)))), !(!select(vec3<bool>(global3.x, false, global3.x), vec3<bool>(true, false, false), !global3.x)), true);
    let var_0 = ((u_input.d ^ select(~16361i, func_3(vec3<i32>(-1i, -23183i, -20676i), Struct_5(-495f, Struct_4(vec3<bool>(global3.x, global3.x, global3.x), global0.x, 69600u, true, vec3<bool>(false, global3.x, true)))), global3.x)) ^ reverseBits(u_input.b.x)) | 1i;
    let var_1 = global3.x && !(false | (_wgslsmith_f_op_f32(-1369f - global0.x) <= _wgslsmith_f_op_f32(-global0.x)));
    global1 = array<u32, 28>();
    var var_2 = -(~var_0);
    return 2022f;
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: Struct_5) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.a))) + 746f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_div_f32(global0.x, arg_1.a)))));
    global3 = vec3<bool>(any(vec3<bool>(global3.x, !arg_2.b.e.x != !arg_2.b.d, !(!global3.x))), !global3.x, false);
    global2 = array<vec4<u32>, 1>();
    let var_1 = vec2<bool>(false, !global3.x);
    let var_2 = abs(max(1u, 0u));
    return Struct_1(!select(select(!vec4<bool>(false, arg_2.b.a.x, true, false), vec4<bool>(var_1.x, global3.x, arg_2.b.a.x, true), false), select(vec4<bool>(true, true, arg_1.b.a.x, arg_1.b.a.x), vec4<bool>(arg_1.b.d, false, global3.x, true), vec4<bool>(true, false, global3.x, arg_2.b.a.x)), (arg_1.a <= global0.x) == (var_2 < 4294967295u)), ~min(max(i32(-1i) * -3769i, ~(-7237i)), ~max(0i, -2147483647i)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<u32>) -> Struct_1 {
    return func_4(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(12070u, 28u)], 4294967295u), Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(func_2()))) - -174f), Struct_4(vec3<bool>(true, true, !global3.x), global0.x, _wgslsmith_add_u32(60657u, 71186u), arg_0.x, arg_0)), Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.x, -398f))), _wgslsmith_f_op_f32(f32(-1f) * -2790f)), Struct_4(select(vec3<bool>(global3.x, false, true), arg_0, true), -626f, _wgslsmith_mod_u32(10633u, 4294967295u), arg_0.x, arg_0)));
}

fn func_5(arg_0: Struct_1) -> vec3<bool> {
    return !arg_0.a.xyz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e.zyy;
    let var_1 = vec4<u32>(0u, _wgslsmith_mod_u32(~min(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2347u, 28u)], 28u)], 28u)], 64947u), global1[_wgslsmith_index_u32(59913u, 28u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(44728u, 28u)], 28u)], 28u)]) ^ vec2<u32>(19519u, 0u)), ~firstLeadingBit(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)], 28u)], 28u)], 131568u))), 28u)]), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(~firstTrailingBit(vec2<u32>(global1[_wgslsmith_index_u32(80142u, 28u)], 1u))), ~(~(vec2<u32>(global1[_wgslsmith_index_u32(48876u, 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)]) & vec2<u32>(global1[_wgslsmith_index_u32(0u, 28u)], 4042u)))), 28u)], 28u)], 1u);
    global4 = global0.x;
    var var_2 = ~1i << (var_1.x % 32u);
    global3 = select(select(vec3<bool>(global3.x, any(vec3<bool>(true, global3.x, false)), false), vec3<bool>(true, true, true), global3.x | true), !(!(!vec3<bool>(false, global3.x, false))), select(!(!vec3<bool>(false, global3.x, global3.x)), select(func_5(func_1(vec3<bool>(true, global3.x, global3.x), vec2<u32>(var_1.x, global1[_wgslsmith_index_u32(4294967295u, 28u)]))), !select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(global3.x, global3.x, true), global3.x), var_1.x >= ~var_1.x), func_4(0u >> (global1[_wgslsmith_index_u32(~1u, 28u)] % 32u), Struct_5(-420f, Struct_4(vec3<bool>(false, true, false), global0.x, 24576u, true, vec3<bool>(false, true, global3.x))), Struct_5(global0.x, Struct_4(vec3<bool>(true, true, global3.x), 229f, 27212u, global3.x, vec3<bool>(true, global3.x, true)))).a.xxw));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-860f * -674f))), 445f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -570f, -262f, 181f), vec4<f32>(-1187f, global0.x, -1000f, 216f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1541f, global0.x, 339f, global0.x)))))), u_input.a, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + 1000f)), 1479f), _wgslsmith_f_op_f32(func_2())));
}

