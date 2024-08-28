struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31> = array<u32, 31>(0u, 14560u, 0u, 4294967295u, 4294967295u, 4294967295u, 0u, 6661u, 4294967295u, 17682u, 4294967295u, 23937u, 78109u, 16319u, 0u, 35575u, 1u, 4294967295u, 62970u, 8357u, 0u, 4694u, 1u, 50767u, 0u, 0u, 99724u, 0u, 4294967295u, 0u, 57952u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_2) -> u32 {
    var var_0 = arg_1.x;
    global0 = array<u32, 31>();
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1055f)), -277f, all(!vec3<bool>(arg_0.b.a, false, true))))))));
    var_0 = -31154i;
    var_0 = u_input.d.x & -22440i;
    return ~1u;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> bool {
    var var_0 = !(!vec4<bool>(all(select(vec3<bool>(false, false, arg_0.a), vec3<bool>(arg_0.a, false, true), arg_3)), !(true | arg_3), true, !any(vec2<bool>(arg_2.a, arg_1))));
    var_0 = vec4<bool>(true, any(var_0.zy), true, !(!any(vec2<bool>(false, false))));
    var var_1 = Struct_1(arg_0.a);
    let var_2 = true;
    global0 = array<u32, 31>();
    return (~987u >> (~global0[_wgslsmith_index_u32(func_3(Struct_2(arg_0, Struct_1(arg_3), Struct_1(arg_2.a), vec4<bool>(true, arg_0.a, arg_3, false)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.c, u_input.c, 22568i), vec4<i32>(-35685i, u_input.a, -2147483647i, u_input.d.x)), Struct_2(Struct_1(arg_0.a), Struct_1(arg_1), arg_2, vec4<bool>(arg_3, false, var_2, arg_1))), 31u)] % 32u)) == 1u;
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(floor(1069f)), -141f), vec2<f32>(1f, 1f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1065f, 301f), _wgslsmith_f_op_f32(-1155f - -957f)))));
    global0 = array<u32, 31>();
    let var_1 = select(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<bool>(any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true || func_2(Struct_1(true), true, Struct_1(true), true)), select(true, any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), true)), 1171f > var_0.x));
    global0 = array<u32, 31>();
    return _wgslsmith_mod_i32(min(0i, u_input.c), -(_wgslsmith_mod_i32(u_input.d.x, max(-23421i, -14340i)) & -50401i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 31>();
    var var_0 = -vec4<i32>(u_input.a, _wgslsmith_div_i32(-19305i, _wgslsmith_sub_i32(u_input.a, u_input.a)), u_input.d.x & func_1(), -31924i) >> ((select(~vec4<u32>(global0[_wgslsmith_index_u32(17566u, 31u)], 0u, 93126u, 20951u), ~firstTrailingBit(vec4<u32>(24360u, 50564u, 39479u, global0[_wgslsmith_index_u32(u_input.b, 31u)])), vec4<bool>(true, any(vec3<bool>(false, false, false)), true, true)) & ~(~(~vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(u_input.b, 31u)], u_input.b, global0[_wgslsmith_index_u32(51304u, 31u)])))) % vec4<u32>(32u));
    global0 = array<u32, 31>();
    let var_1 = Struct_1(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec3<bool>(false, true, false)), any(vec2<bool>(true, true)), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false)), true))));
    var var_2 = var_1;
    var_0 = vec4<i32>(_wgslsmith_mod_i32(var_0.x, u_input.d.x), -(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_0.x), ~var_0.zx) | _wgslsmith_add_i32(countOneBits(var_0.x), -1i)), -7609i, 0i);
    let var_3 = vec3<u32>(0u, _wgslsmith_add_u32(0u, ~_wgslsmith_sub_u32(u_input.b, reverseBits(u_input.b))), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -66159i, select(firstTrailingBit(var_0.yx), -(~var_0.zx), vec2<bool>(true, all(vec2<bool>(true, var_1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-317f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1180f, -1277f), _wgslsmith_f_op_f32(floor(-438f)))), _wgslsmith_f_op_f32(trunc(-1408f))))));
}

