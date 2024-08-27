struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<f32, 28> = array<f32, 28>(-1368f, 443f, -1620f, 719f, 1553f, -237f, -437f, 2152f, 1000f, -933f, 797f, 314f, 382f, 753f, 243f, -1685f, 2536f, 1000f, 109f, -1399f, -669f, 595f, -1002f, -713f, -1037f, 1757f, 1614f, -1000f);

var<private> global1: array<f32, 2>;

var<private> global2: array<vec3<i32>, 16>;

var<private> global3: Struct_1 = Struct_1(vec4<bool>(true, false, true, true), 3610u);

var<private> global4: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<bool> {
    global3 = Struct_1(vec4<bool>(false, false, global3.a.x, false), u_input.a);
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f)));
    return select(!select(vec3<bool>(true, true, global3.a.x), !vec3<bool>(global3.a.x, false, global3.a.x), !vec3<bool>(global3.a.x, global3.a.x, false)), select(select(!(!vec3<bool>(global3.a.x, global3.a.x, false)), select(global3.a.wyx, !global3.a.ywx, !global3.a.yzy), select(select(global3.a.xxw, global3.a.yyy, global3.a.x), global3.a.xzy, !global4.x)), !global3.a.xzz, select(global3.a.wyw, select(!vec3<bool>(global3.a.x, true, global3.a.x), vec3<bool>(true, true, true), vec3<bool>(global3.a.x, false, true)), global3.a.x)), !any(vec3<bool>(global3.a.x == global4.x, global4.x, all(vec3<bool>(false, false, true)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> bool {
    global4 = !func_3();
    global3 = Struct_1(vec4<bool>(any(!(!arg_0)), arg_0.x, any(!vec4<bool>(global3.a.x, arg_0.x, false, global3.a.x)), global3.a.x), ~_wgslsmith_mult_u32(~4294967295u, global3.b));
    let var_0 = global1[_wgslsmith_index_u32(~1u, 2u)];
    var var_1 = 1202f;
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(global3.b ^ 54231u, 86531u), min(u_input.a, u_input.a) >> (_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a, ~arg_1), _wgslsmith_sub_u32(u_input.a, 116545u)) % 32u));
    return !arg_0.x;
}

fn func_1() -> vec2<bool> {
    var var_0 = !vec2<bool>(func_2(global3.a, 1u), !all(global4.zy) | any(vec4<bool>(global4.x, false, global3.a.x, true)));
    global0 = array<f32, 28>();
    var var_1 = _wgslsmith_add_i32(1i, -reverseBits(-abs(1i)));
    global1 = array<f32, 2>();
    var var_2 = vec3<u32>(abs(u_input.a), 0u, ~firstLeadingBit(35409u | u_input.a));
    return !global4.yz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(countOneBits(-(0i >> (~4294967295u % 32u))));
    global3 = Struct_1(!(!global3.a), select(global3.b, ~(~u_input.a), !(9742i == var_0)) ^ 51280u);
    global1 = array<f32, 2>();
    global1 = array<f32, 2>();
    let var_1 = global3.a.xxz;
    var var_2 = -13676i;
    global0 = array<f32, 28>();
    var var_3 = ~var_0;
    var var_4 = !all(select(select(global3.a.zx, select(vec2<bool>(false, true), global4.yz, global4.x), vec2<bool>(false, global4.x)), select(!global3.a.ww, func_1(), !vec2<bool>(var_1.x, false)), global4.x));
    let x = u_input.a;
    s_output = StorageBuffer(49347u);
}

