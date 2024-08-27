struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25>;

var<private> global1: Struct_2;

var<private> global2: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    global1 = arg_0;
    let var_0 = Struct_2(-1i);
    global0 = array<f32, 25>();
    let var_1 = -961f;
    var var_2 = 1i;
    return Struct_2(0i);
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> bool {
    return true;
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(firstLeadingBit(arg_2) & select(arg_2, 60296u, false), 25u)], 854f, true)) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(max(u_input.c, 1u)), 25u)])) * -1048f);
    global2 = array<vec3<bool>, 7>();
    let var_1 = true;
    var var_2 = ~0u;
    var var_3 = Struct_1(!vec2<bool>(var_1, var_1), global2[_wgslsmith_index_u32(40038u, 7u)]);
    return Struct_1(select(!select(var_3.a, select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, true), vec2<bool>(var_1, false)), select(vec2<bool>(var_1, true), var_3.a, true)), vec2<bool>(select(global1.a >= u_input.b, func_2(global0[_wgslsmith_index_u32(4294967295u, 25u)], u_input.a), u_input.c >= arg_2), arg_1), all(select(select(vec4<bool>(var_1, true, false, arg_1), vec4<bool>(false, true, var_3.b.x, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(var_3.a.x, true, false, true), vec4<bool>(arg_1, arg_1, false, var_1), false), var_3.a.x))), var_3.b);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_2 {
    global0 = array<f32, 25>();
    let var_0 = -1771f;
    var var_1 = false;
    global2 = array<vec3<bool>, 7>();
    let var_2 = func_1(Struct_2(arg_0.x));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(abs(~(-1i)));
    global1 = func_1(Struct_2(-1i));
    global1 = func_1(func_4(vec3<i32>(-global1.a, -global1.a, 0i >> (~u_input.d.x % 32u)), func_3(~(~vec4<i32>(-1433i, u_input.b, 20056i, -29977i)), func_2(_wgslsmith_f_op_f32(min(-268f, global0[_wgslsmith_index_u32(38125u, 25u)])), max(vec2<u32>(4294967295u, 35190u), u_input.d.xx)), firstLeadingBit(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x))), vec3<u32>(28941u, 15572u >> (1u % 32u), 14280u)));
    let var_0 = u_input.d.wzx;
    var var_1 = func_3(vec4<i32>(u_input.b, abs(1i), _wgslsmith_mult_i32(u_input.b, 1i), ~u_input.b), true, abs(u_input.c));
    global1 = func_4(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, min(-22886i, -29756i), func_4(vec3<i32>(-1i, 1i, u_input.b), Struct_1(vec2<bool>(var_1.b.x, false), vec3<bool>(var_1.b.x, false, true)), ~vec3<u32>(24789u, var_0.x, 1u)).a), _wgslsmith_div_vec3_i32(vec3<i32>(firstLeadingBit(global1.a), -2147483647i, _wgslsmith_sub_i32(global1.a, -22313i)), -(~vec3<i32>(global1.a, u_input.b, global1.a))), select(vec3<i32>(_wgslsmith_div_i32(1992i, 85936i), u_input.b, ~u_input.b), ~vec3<i32>(u_input.b, global1.a, global1.a), !var_1.a.x)), Struct_1(var_1.b.xz, select(!select(var_1.b, vec3<bool>(true, false, var_1.a.x), var_1.b), var_1.b, select(vec3<bool>(var_1.a.x, var_1.b.x, true), vec3<bool>(true, false, false), !var_1.b.x))), vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~u_input.d.xy, var_0.zx), ~select(var_0.zy, vec2<u32>(u_input.c, 1u), vec2<bool>(var_1.a.x, var_1.a.x))), ~35924u, 0u));
    let x = u_input.a;
    s_output = StorageBuffer(0i, (i32(-1i) * -global1.a) | (~firstTrailingBit(-1i) & -340i));
}

