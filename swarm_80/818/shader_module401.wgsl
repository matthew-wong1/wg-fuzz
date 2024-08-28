struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_2 = Struct_2(vec3<f32>(-1760f, -1000f, -904f));

var<private> global2: array<u32, 5> = array<u32, 5>(0u, 744u, 6710u, 4294967295u, 9379u);

var<private> global3: vec4<f32> = vec4<f32>(394f, 1733f, -330f, -167f);

var<private> global4: array<Struct_3, 27>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> bool {
    global4 = array<Struct_3, 27>();
    let var_0 = Struct_1(global0.x > firstTrailingBit(reverseBits(3545i)), global1.a.x, select(!any(vec2<bool>(true, true)), false, true), true, true);
    var var_1 = ~(-17638i);
    let var_2 = 7655u;
    var var_3 = _wgslsmith_div_i32(-global0.x, abs(~((-54151i | u_input.c.x) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-45443i, -23903i, 2147483647i, 13778i), vec4<i32>(u_input.a.x, 2147483647i, 22358i, global0.x)))));
    return true;
}

fn func_2(arg_0: u32, arg_1: u32) -> bool {
    var var_0 = u_input.a.x;
    let var_1 = Struct_4(select(!vec3<bool>(true, arg_1 < 8566u, true), select(vec3<bool>(func_3(), any(vec4<bool>(true, false, false, true)), -34797i <= global0.x), vec3<bool>(true, arg_1 != arg_1, true), vec3<bool>(true, false, all(vec3<bool>(false, false, false)))), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false))));
    let var_2 = _wgslsmith_mod_i32(u_input.b.x << (((global2[_wgslsmith_index_u32(select(arg_1, u_input.d.x, true), 5u)] | u_input.d.x) & 3044u) % 32u), u_input.e.x);
    var var_3 = u_input.d.yy | abs(~(~vec2<u32>(4294967295u, 49324u)));
    var var_4 = vec2<u32>(reverseBits(_wgslsmith_mod_u32(abs(arg_0), 12184u)) << (_wgslsmith_mod_u32(1u, ~firstLeadingBit(global2[_wgslsmith_index_u32(arg_1, 5u)])) % 32u), _wgslsmith_add_u32(~_wgslsmith_sub_u32(select(8876u, arg_1, var_1.a.x), firstLeadingBit(arg_1)), ~arg_0));
    return all(select(!(!(!vec4<bool>(true, var_1.a.x, false, var_1.a.x))), vec4<bool>(true == !var_1.a.x, any(vec4<bool>(var_1.a.x, false, var_1.a.x, false)), any(vec4<bool>(var_1.a.x, true, true, var_1.a.x)), var_1.a.x), !select(select(vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, var_1.a.x, false, true), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, true)), select(vec4<bool>(true, var_1.a.x, var_1.a.x, true), vec4<bool>(true, true, true, false), var_1.a.x), select(vec4<bool>(var_1.a.x, true, false, false), vec4<bool>(false, false, var_1.a.x, false), var_1.a.x))));
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = u_input.e;
    global0 = var_0;
    let var_1 = 54722u;
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.b))));
    return vec3<bool>((arg_0.c && false) || !(!func_2(global2[_wgslsmith_index_u32(4480u, 5u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 5u)], 5u)])), var_2, (firstLeadingBit(abs(var_1)) ^ ~29945u) >= 21537u);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_3, 27>();
    let var_0 = u_input.d;
    global4 = array<Struct_3, 27>();
    let var_1 = global3.wy;
    var var_2 = 4294967295u;
    var var_3 = vec2<bool>(true, all(select(!func_1(Struct_1(false, -333f, true, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), vec3<bool>(any(vec3<bool>(false, false, false)), true, true))));
    let var_4 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

