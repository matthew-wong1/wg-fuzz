struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 14>;

var<private> global1: array<Struct_1, 32>;

var<private> global2: bool = true;

var<private> global3: array<i32, 15> = array<i32, 15>(2147483647i, 21156i, -1284i, 41695i, -90785i, -1i, -51i, 0i, -30409i, 0i, 20715i, 1i, i32(-2147483648), -1i, -8288i);

var<private> global4: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: vec4<f32>) -> vec4<i32> {
    global3 = array<i32, 15>();
    var var_0 = global1[_wgslsmith_index_u32(~(~abs(~1u)), 32u)];
    var var_1 = global4.b.x >> (_wgslsmith_mult_u32(var_0.b.x, firstLeadingBit(abs(_wgslsmith_sub_u32(var_0.b.x, u_input.a.x)))) % 32u);
    let var_2 = global1[_wgslsmith_index_u32(4294967295u, 32u)];
    let var_3 = global1[_wgslsmith_index_u32(~(~113189u), 32u)];
    return var_2.a;
}

fn func_2(arg_0: i32) -> u32 {
    global0 = array<vec2<u32>, 14>();
    var var_0 = ~u_input.b;
    var var_1 = Struct_1(global4.a, global4.b, -718f);
    global4 = Struct_1(~func_3(vec3<bool>(108725u != global4.b.x, true, all(vec4<bool>(true, false, false, false))), _wgslsmith_mod_vec2_i32(vec2<i32>(53283i, 11277i), _wgslsmith_add_vec2_i32(global4.a.zx, vec2<i32>(-1i, var_1.a.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(817f, 293f, -154f, var_1.c) + vec4<f32>(var_1.c, -555f, 1680f, 1952f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-334f, global4.c, var_1.c, var_1.c)))), ~vec4<u32>(global4.b.x, 10533u, 13492u, 19093u), global4.c);
    let var_2 = !vec4<bool>(!(~41511u <= (u_input.a.x ^ 23664u)), !(any(vec4<bool>(false, true, true, true)) && false), !all(vec3<bool>(true, true, true)), true);
    return 1u;
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: f32, arg_3: i32) -> bool {
    let var_0 = u_input.b < (_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(global4.a.zyy, vec3<i32>(21725i, arg_0, u_input.b) & global4.a.yyz), u_input.b) & 1i);
    let var_1 = select(select(20363u, u_input.a.x, all(vec3<bool>(true, true, var_0)) || var_0), _wgslsmith_add_u32(global4.b.x >> (u_input.a.x % 32u), func_2(16993i) << (global4.b.x % 32u)) & 0u, !select(true, 0u <= global4.b.x, arg_2 > global4.c) && (-522f > _wgslsmith_f_op_f32(trunc(1000f))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(false | (firstLeadingBit(global4.a.x) >= 1i), func_1(1i, select(vec4<bool>(true, false, false, any(vec3<bool>(false, true, false))), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), false), true), -537f, ~firstLeadingBit(-global3[_wgslsmith_index_u32(4294967295u, 15u)])), global4.c < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c + global4.c)))));
    let var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(30677u), 32u)];
    var var_2 = ~_wgslsmith_add_vec4_u32(global4.b, global4.b);
    global3 = array<i32, 15>();
    var var_3 = global1[_wgslsmith_index_u32(reverseBits(75314u), 32u)];
    var var_4 = !var_0.xx;
    var var_5 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(-1209f, _wgslsmith_f_op_f32(-var_3.c), vec3<u32>(var_3.b.x, var_2.x, 0u), 40929u, -global4.a);
}

