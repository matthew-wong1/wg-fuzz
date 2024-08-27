struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 0u, 1u, 1u);

var<private> global1: i32 = -34546i;

var<private> global2: array<u32, 17> = array<u32, 17>(1u, 1u, 0u, 28881u, 0u, 1u, 48138u, 98489u, 53283u, 1u, 7957u, 4294967295u, 4294967295u, 29586u, 36642u, 0u, 4294967295u);

var<private> global3: array<Struct_1, 8>;

var<private> global4: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> u32 {
    let var_0 = Struct_2(-vec4<i32>(-68725i, ~_wgslsmith_sub_i32(-2147483647i, 0i), -_wgslsmith_sub_i32(34361i, u_input.d), u_input.d));
    let var_1 = var_0.a.x;
    let var_2 = false;
    global0 = u_input.a;
    global2 = array<u32, 17>();
    return ~u_input.a.x;
}

fn func_3(arg_0: vec2<bool>) -> Struct_1 {
    global2 = array<u32, 17>();
    var var_0 = Struct_3(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1062f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1215f))), 531f, -820f));
    global1 = countOneBits(countOneBits(-16149i));
    var var_1 = true;
    var_1 = any(vec2<bool>(arg_0.x, true));
    return Struct_1(arg_0.x, _wgslsmith_dot_vec2_u32(~u_input.a.yx, u_input.c.xz), select(vec4<bool>(var_0.a.x <= _wgslsmith_f_op_f32(select(-220f, var_0.a.x, false)), all(!vec4<bool>(true, true, true, arg_0.x)), arg_0.x, all(vec2<bool>(true, true))), !select(select(vec4<bool>(false, false, false, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), arg_0.x), select(vec4<bool>(true, true, arg_0.x, arg_0.x), vec4<bool>(false, true, arg_0.x, true), arg_0.x), all(arg_0)), any(vec4<bool>(all(vec2<bool>(true, arg_0.x)), false, var_0.a.x >= -687f, var_0.a.x != -592f))), !arg_0);
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    let var_0 = any(func_3(func_3(func_3(!global4[_wgslsmith_index_u32(u_input.e.x, 14u)]).d).d).c.yx);
    global4 = array<vec2<bool>, 14>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-721f + _wgslsmith_f_op_f32(select(-1601f, -143f, arg_0.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(334f, 792f))))), 233f);
    let var_2 = _wgslsmith_add_vec3_u32(reverseBits(abs(vec3<u32>(1u, max(74602u, 11251u), global0.x))), _wgslsmith_div_vec3_u32(max(global0.zxy, firstTrailingBit(firstTrailingBit(vec3<u32>(arg_0.b, 18353u, u_input.c.x)))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.c.x, 0u, 4294967295u), ~(global0.xzx & vec3<u32>(4667u, 0u, 6694u)), abs(select(u_input.a.xyw, vec3<u32>(3469u, 4294967295u, global0.x), vec3<bool>(true, true, arg_1))))));
    global2 = array<u32, 17>();
    return Struct_2(vec4<i32>(~_wgslsmith_add_i32(-2147483647i ^ u_input.d, 2147483647i), 2147483647i | u_input.b, -3237i, u_input.b));
}

fn func_1() -> u32 {
    global3 = array<Struct_1, 8>();
    let var_0 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(360f, 183f, 2322f) * vec3<f32>(744f, -1351f, 1120f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(857f, 587f, -1177f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(120f, 3743f, 881f) + vec3<f32>(-359f, 713f, -1000f))), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1741f, 642f, 256f)))));
    var var_1 = u_input.a.zx;
    var var_2 = Struct_1((var_1.x > ~global2[_wgslsmith_index_u32(var_1.x ^ global0.x, 17u)]) & any(vec3<bool>(true, true, 33095u < global2[_wgslsmith_index_u32(u_input.e.x, 17u)])), var_1.x, vec4<bool>(false, true, all(vec3<bool>(true, true, true)), select(false, !select(false, true, true), true)), vec2<bool>(false == (_wgslsmith_f_op_f32(min(1000f, var_0.a.x)) > _wgslsmith_f_op_f32(-var_0.a.x)), reverseBits(4294967295u << (global0.x % 32u)) < 76374u));
    var var_3 = func_4(func_3(select(select(vec2<bool>(true, var_2.a), !var_2.c.wy, false), select(!var_2.d, global4[_wgslsmith_index_u32(25487u, 14u)], false), global4[_wgslsmith_index_u32(func_2(), 14u)])), all(global4[_wgslsmith_index_u32(global0.x, 14u)]));
    return countOneBits(~global2[_wgslsmith_index_u32(~51006u, 17u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(global0.x, abs(global0.x)), 1u), func_1()), abs((1u >> (global0.x % 32u)) | global0.x), global0.x, 31833u);
    let var_0 = -1277f;
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1888f, _wgslsmith_f_op_f32(-var_0)), vec3<f32>(_wgslsmith_f_op_f32(-var_0), 228f, 1069f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1482f, var_0, var_0) + vec3<f32>(2485f, 1271f, 645f))))));
    var var_2 = vec4<bool>(any(!vec4<bool>(all(vec3<bool>(false, true, true)), true, true, any(global4[_wgslsmith_index_u32(u_input.e.x, 14u)]))), select(!(!all(vec4<bool>(true, true, true, true))), any(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(4294967295u, 17u)], ~29943u), 14u)]), false), reverseBits(_wgslsmith_mod_u32(4294967295u, func_1())) <= global0.x, true);
    let var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, var_0, -876f) - vec3<f32>(186f, 2547f, var_1.a.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, var_1.a.yz, vec3<u32>(global2[_wgslsmith_index_u32(global0.x << (42944u % 32u), 17u)], u_input.e.x, global2[_wgslsmith_index_u32(func_1(), 17u)]));
}

