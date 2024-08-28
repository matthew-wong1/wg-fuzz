struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5>;

var<private> global1: vec4<bool>;

var<private> global2: vec2<u32> = vec2<u32>(136031u, 33081u);

var<private> global3: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false));

var<private> global4: vec2<f32> = vec2<f32>(-1198f, 1357f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(~1u);
    var var_1 = Struct_2(false);
    var var_2 = Struct_2(!global1.x);
    var_2 = Struct_2(var_2.a);
    let var_3 = arg_0;
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> vec4<bool> {
    var var_0 = Struct_1(0u);
    var var_1 = 338f;
    global0 = array<f32, 5>();
    let var_2 = arg_0;
    return select(select(!(!select(vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(false, false, global1.x, global1.x), false)), !(!select(vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(true, global1.x, true, global1.x), global1.x)), true), !vec4<bool>(global1.x, !select(false, global1.x, global1.x), global1.x, global1.x), select(!select(vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(false, global1.x, global1.x, false), !vec4<bool>(false, true, true, global1.x)), vec4<bool>(false, global1.x, true, global1.x), global1.x && !global1.x));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_2) -> f32 {
    var var_0 = Struct_1(0u);
    let var_1 = vec2<bool>(any(!(!vec4<bool>(false, true, false, global1.x))) && false, true);
    var var_2 = Struct_2(!(!any(vec3<bool>(true, false, arg_2.a))));
    var var_3 = Struct_1(global2.x);
    let var_4 = arg_2;
    return _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(~(vec4<u32>(78148u, arg_1.x, 1u, arg_1.x) ^ arg_1), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, 55366u, 22433u), arg_1), _wgslsmith_sub_vec4_u32(arg_1, arg_1)), func_3(func_2(Struct_1(57381u)), -u_input.a.wy)), ~vec4<u32>(34594u, ~u_input.b, ~var_0.a, ~26721u)), 5u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-914i, 30667i, _wgslsmith_mult_i32(~u_input.e.x, _wgslsmith_mult_i32(i32(-1i) * -4337i, 1i)) >> (u_input.c % 32u), -1881i);
    let x = u_input.a;
    s_output = StorageBuffer((-2147483647i << (global2.x % 32u)) | 48607i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(select(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, global2.x), 7u)], !global3[_wgslsmith_index_u32(global2.x, 7u)], global1.yyy), vec4<u32>(select(global2.x, 38830u, true), u_input.c, u_input.b, 0u), Struct_2(!global1.x))), global0[_wgslsmith_index_u32(70434u, 5u)])), u_input.d.x, reverseBits(_wgslsmith_mult_i32(var_0.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, var_0.x), vec2<i32>(u_input.e.x, var_0.x)))), -countOneBits(u_input.d.x));
}

