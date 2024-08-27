struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec2<f32>, 5> = array<vec2<f32>, 5>(vec2<f32>(-1454f, 682f), vec2<f32>(-2924f, -576f), vec2<f32>(-1207f, -144f), vec2<f32>(719f, -360f), vec2<f32>(289f, 2099f));

var<private> global2: array<bool, 5> = array<bool, 5>(true, true, false, true, false);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec2<f32>) -> i32 {
    let var_0 = Struct_1(select(arg_0.a.a, select(arg_0.a.a, vec4<bool>(!arg_0.a.a.x, true, all(vec2<bool>(global0.x, false)), true), !all(arg_0.a.a.wx)), any(!select(arg_0.a.a.xyw, vec3<bool>(false, global2[_wgslsmith_index_u32(19054u, 5u)], true), arg_0.a.a.yxw))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - arg_0.a.b)), ~abs(-(vec2<i32>(arg_0.a.c.x, 2147483647i) | arg_0.a.c)), max(arg_0.a.d, u_input.b));
    global2 = array<bool, 5>();
    let var_1 = Struct_1(arg_0.a.a, _wgslsmith_f_op_f32(f32(-1f) * -173f), vec2<i32>(1i, -33041i), ~(~(~var_0.d | select(vec4<u32>(1u, arg_0.a.d.x, var_0.d.x, 10113u), u_input.b, var_0.a))));
    let var_2 = Struct_2(var_1);
    global1 = array<vec2<f32>, 5>();
    return abs(var_2.a.c.x);
}

fn func_2() -> i32 {
    let var_0 = Struct_2(Struct_1(vec4<bool>(~u_input.d.x != func_3(Struct_2(Struct_1(vec4<bool>(global0.x, global2[_wgslsmith_index_u32(49688u, 5u)], global0.x, global0.x), -562f, u_input.d.wz, vec4<u32>(47473u, u_input.a.x, 32984u, 30368u))), vec4<f32>(-2229f, 714f, -237f, -524f), vec2<f32>(429f, 934f)), true, all(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 5u)], false)), true), -1000f, u_input.c, select(~(u_input.b | vec4<u32>(u_input.a.x, 4294967295u, 47774u, 46120u)), countOneBits(_wgslsmith_mod_vec4_u32(u_input.b, u_input.b)), select(!vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(true, false, true, global2[_wgslsmith_index_u32(u_input.b.x, 5u)]), select(true, global2[_wgslsmith_index_u32(u_input.a.x, 5u)], false)))));
    let var_1 = !(!select(var_0.a.a.x, all(vec3<bool>(true, global2[_wgslsmith_index_u32(5949u, 5u)], true)), select(true, false, var_0.a.a.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -519f), var_0.a.b, var_0.a.b, var_0.a.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.a.b)), _wgslsmith_f_op_f32(var_0.a.b * 675f), _wgslsmith_f_op_f32(-2078f + var_0.a.b), -692f)))));
    global1 = array<vec2<f32>, 5>();
    let var_3 = _wgslsmith_add_u32(_wgslsmith_div_u32(18978u, 50709u), var_0.a.d.x);
    return -2147483647i;
}

fn func_1() -> Struct_2 {
    global2 = array<bool, 5>();
    var var_0 = Struct_1(!(!vec4<bool>(u_input.a.x < u_input.b.x, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, u_input.b.x), 5u)], any(vec2<bool>(global0.x, global0.x)), global0.x)), 1f, _wgslsmith_mult_vec2_i32(vec2<i32>(-countOneBits(u_input.c.x), func_2() | u_input.d.x), vec2<i32>(1i, u_input.d.x)), ~u_input.b);
    var var_1 = var_0.a.xy;
    return Struct_2(Struct_1(vec4<bool>(var_1.x, global2[_wgslsmith_index_u32(u_input.a.x, 5u)], true, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1492f)))), ~u_input.c, firstLeadingBit(var_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec2<bool>(_wgslsmith_dot_vec3_u32(~u_input.b.zxz ^ var_0.a.d.wzz, vec3<u32>(u_input.a.x, u_input.b.x, var_0.a.d.x)) != 11666u, any(var_0.a.a.wyw));
    global1 = array<vec2<f32>, 5>();
    let var_2 = var_0.a;
    global1 = array<vec2<f32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(_wgslsmith_mult_i32(~countOneBits(var_0.a.c.x), u_input.c.x), -_wgslsmith_mult_i32(u_input.c.x, 21313i) | min(~(-27507i), -11917i)), 1u);
}

