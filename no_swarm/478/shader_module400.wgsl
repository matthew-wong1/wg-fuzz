struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 27> = array<vec2<f32>, 27>(vec2<f32>(-1540f, 1014f), vec2<f32>(1000f, 765f), vec2<f32>(-206f, -1000f), vec2<f32>(-961f, -495f), vec2<f32>(-1000f, 1000f), vec2<f32>(-1000f, 2118f), vec2<f32>(1026f, 193f), vec2<f32>(-565f, 1398f), vec2<f32>(215f, 1388f), vec2<f32>(-758f, -522f), vec2<f32>(234f, -493f), vec2<f32>(571f, 1000f), vec2<f32>(1006f, 337f), vec2<f32>(-1216f, -1000f), vec2<f32>(820f, 1598f), vec2<f32>(1001f, -854f), vec2<f32>(-505f, 1750f), vec2<f32>(372f, -745f), vec2<f32>(-269f, 1637f), vec2<f32>(-1031f, 681f), vec2<f32>(-720f, 685f), vec2<f32>(1695f, -853f), vec2<f32>(654f, 810f), vec2<f32>(-124f, 1512f), vec2<f32>(-1000f, 1372f), vec2<f32>(-1971f, 1147f), vec2<f32>(-953f, -756f));

var<private> global1: array<bool, 30> = array<bool, 30>(false, true, true, true, true, true, true, false, false, true, false, true, true, false, false, true, true, false, false, true, false, true, true, false, false, true, false, true, true, true);

var<private> global2: array<Struct_4, 27>;

var<private> global3: vec2<bool>;

var<private> global4: array<vec3<i32>, 2>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = u_input.b;
    let var_1 = 0u;
    var var_2 = 44510u;
    var var_3 = all(vec4<bool>(true, all(vec4<bool>(!global1[_wgslsmith_index_u32(0u, 30u)], all(vec3<bool>(global3.x, global3.x, true)), !global3.x, any(vec2<bool>(global1[_wgslsmith_index_u32(var_1, 30u)], true)))), global1[_wgslsmith_index_u32(u_input.a.x, 30u)], select(true, !any(vec3<bool>(global3.x, true, false)), !global3.x)));
    var_2 = var_1;
    return 21304i;
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: vec4<bool>) -> vec2<bool> {
    var var_0 = arg_2.a;
    let var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(abs(u_input.d & func_3(arg_2.a)), -u_input.b.x), vec2<i32>(_wgslsmith_mod_i32(~u_input.d, _wgslsmith_add_i32(u_input.b.x, 1i)) >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, arg_2.b.x, arg_2.b.x), vec3<u32>(38760u, 28018u, 67483u)) % 32u), -1620i));
    global0 = array<vec2<f32>, 27>();
    var var_2 = global2[_wgslsmith_index_u32(~u_input.c, 27u)];
    var var_3 = global2[_wgslsmith_index_u32(4294967295u, 27u)];
    return !vec2<bool>(global3.x, false);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_sub_u32(1u, _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.c, 15700u), 1497u), u_input.e));
    global1 = array<bool, 30>();
    global1 = array<bool, 30>();
    let var_1 = vec4<i32>(-45569i, -12202i ^ _wgslsmith_mod_i32(u_input.b.x, -8443i), i32(-1i) * -673i, 1i << ((10175u >> (_wgslsmith_mult_u32(u_input.e, abs(55793u)) % 32u)) % 32u));
    global3 = select(!select(vec2<bool>(true, true), select(vec2<bool>(false, global1[_wgslsmith_index_u32(var_0, 30u)]), select(vec2<bool>(global3.x, global1[_wgslsmith_index_u32(var_0, 30u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(var_0, 30u)]), false), !global3.x), false), select(select(vec2<bool>(true, true), !vec2<bool>(global3.x, true), !global1[_wgslsmith_index_u32(u_input.e, 30u)] || true), !func_2(2147483647i, !vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 30u)], false, global1[_wgslsmith_index_u32(46047u, 30u)], false), Struct_3(Struct_2(Struct_1(vec3<f32>(-1000f, -987f, -1000f)), 612f, Struct_1(vec3<f32>(1000f, -1149f, 1074f)), Struct_1(vec3<f32>(1000f, -1000f, 1152f))), u_input.a), !vec4<bool>(global1[_wgslsmith_index_u32(35170u, 30u)], global1[_wgslsmith_index_u32(var_0, 30u)], false, global3.x)), true), !global3.x);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = vec2<i32>(u_input.b.x, _wgslsmith_add_i32(21823i >> (_wgslsmith_div_u32(~u_input.e, ~4294967295u) % 32u), -1488i));
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(53752i, ~(-1i)));
}

