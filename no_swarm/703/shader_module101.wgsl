struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<u32, 17> = array<u32, 17>(4294967295u, 46234u, 1u, 14876u, 1u, 87886u, 78803u, 153404u, 0u, 0u, 1u, 1u, 69276u, 4294967295u, 47762u, 65928u, 12183u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: vec4<u32>) -> vec2<f32> {
    let var_0 = arg_2;
    global0 = !(!(!vec2<bool>(arg_0, true)));
    global1 = array<u32, 17>();
    var var_1 = select(vec2<bool>(true, true), !select(vec2<bool>(all(vec2<bool>(true, true)), !arg_0), !(!vec2<bool>(true, arg_0)), vec2<bool>(true, true)), select(vec2<bool>(arg_0, !any(vec2<bool>(arg_0, arg_0))), vec2<bool>(true, true), any(!vec4<bool>(false, arg_0, true, global0.x))));
    var_1 = !(!select(!select(vec2<bool>(global0.x, false), vec2<bool>(true, arg_0), true), !select(vec2<bool>(false, true), vec2<bool>(var_1.x, false), vec2<bool>(true, true)), global0.x));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-796f + 703f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-768f)), _wgslsmith_f_op_f32(1f * -472f))));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    var var_0 = arg_0;
    var_0 = _wgslsmith_mult_u32(~3750u, arg_0);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-526f, _wgslsmith_div_f32(2677f, -1069f))) + _wgslsmith_f_op_vec2_f32(func_3(global0.x, ~(max(vec3<u32>(0u, 1u, 4121u), vec3<u32>(u_input.b, u_input.b, 6591u)) << (firstTrailingBit(vec3<u32>(global1[_wgslsmith_index_u32(6517u, 17u)], 0u, arg_0)) % vec3<u32>(32u))), select(abs(vec4<u32>(global1[_wgslsmith_index_u32(arg_0, 17u)], u_input.b, global1[_wgslsmith_index_u32(1u, 17u)], u_input.b)) | vec4<u32>(41026u, 1u, u_input.b, arg_0), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.b, 17u)], u_input.b, u_input.b), vec4<u32>(35255u, u_input.b, 1u, arg_0)), abs(u_input.b) == u_input.b))));
    global0 = vec2<bool>(global0.x, false);
    var var_2 = Struct_2(Struct_1(u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.b * var_1.x))) * 465f)));
    return 13662u;
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: u32) -> bool {
    var var_0 = vec2<u32>(~8694u, firstLeadingBit(44090u));
    let var_1 = 26659i;
    let var_2 = _wgslsmith_mod_vec3_i32((vec3<i32>(~7039i, -2147483647i, select(35811i, var_1, global0.x)) >> (select(vec3<u32>(1u, arg_3, 45834u), ~vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 17u)], 4294967295u, var_0.x), global0.x) % vec3<u32>(32u))) | u_input.a.yyx, firstLeadingBit(u_input.a.ywy) ^ max(-vec3<i32>(0i, 2848i, 1377i), vec3<i32>(2147483647i, arg_2.a.a, _wgslsmith_add_i32(-5301i, u_input.a.x))));
    var_0 = ~(~abs(vec2<u32>(func_2(arg_3, u_input.a.yxz, arg_2.a), _wgslsmith_dot_vec3_u32(vec3<u32>(46619u, u_input.b, global1[_wgslsmith_index_u32(43491u, 17u)]), vec3<u32>(var_0.x, u_input.b, 3773u)))));
    global1 = array<u32, 17>();
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<bool>((func_1(~u_input.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(117f, -438f) - vec2<f32>(284f, 1000f)), Struct_2(Struct_1(0i, -988f)), 58354u) && true) && !global0.x, !global0.x);
    global1 = array<u32, 17>();
    let var_0 = ~min(u_input.a.wzx, _wgslsmith_mult_vec3_i32(max(~u_input.a.yxy, vec3<i32>(4672i, -2147483647i, 2147483647i)), vec3<i32>(u_input.c, abs(-1i), -2147483647i)));
    var var_1 = 252f;
    var var_2 = ~func_2(countOneBits(u_input.b), (_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, u_input.a.x, 2147483647i), var_0) & _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, 13129i, 0i), vec3<i32>(-2147483647i, var_0.x, 29507i), vec3<i32>(-1i, -2147483647i, var_0.x))) ^ ~vec3<i32>(-2087i, u_input.c, 2147483647i), Struct_1(-2147483647i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1415f), -123f)));
    global0 = select(vec2<bool>(any(select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x), true)), global0.x), vec2<bool>(true || all(select(vec2<bool>(true, true), vec2<bool>(false, global0.x), global0.x)), true), vec2<bool>((reverseBits(var_0.x) & (i32(-1i) * -28328i)) >= firstLeadingBit(-u_input.a.x), !(!any(vec3<bool>(global0.x, global0.x, global0.x)))));
    let var_3 = Struct_3(true, vec4<i32>(u_input.c, -15872i, -abs(var_0.x), var_0.x));
    global0 = vec2<bool>(!(global0.x | true), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, global1[_wgslsmith_index_u32(u_input.b, 17u)]), vec2<u32>(global1[_wgslsmith_index_u32(29735u, 17u)], 44057u)) & vec2<u32>(4294967295u, 20955u), select(vec2<u32>(global1[_wgslsmith_index_u32(2147u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)]), abs(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 17u)], 17u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 17u)], 17u)])), vec2<bool>(global0.x, false))), 8826u, ~global1[_wgslsmith_index_u32(u_input.b, 17u)]), ~var_3.b.wx);
}

