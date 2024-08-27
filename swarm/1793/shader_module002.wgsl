struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec3<i32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(84908u, 9412u, 6439u, 0u, 0u);

var<private> global1: bool;

var<private> global2: Struct_4;

var<private> global3: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(1068f, 483f), vec2<f32>(-202f, 884f), vec2<f32>(475f, -749f), vec2<f32>(1884f, -149f), vec2<f32>(-272f, -897f), vec2<f32>(-1019f, -1329f), vec2<f32>(643f, -1015f));

var<private> global4: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(48062u, 4294967295u, 43060u, 1u), vec4<u32>(0u, 13995u, 0u, 44221u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: bool, arg_1: f32) -> f32 {
    var var_0 = -(~vec3<i32>(u_input.a, 2147483647i, min(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(2147483647i, 0i, u_input.a)))));
    let var_1 = -(~(firstLeadingBit(vec2<i32>(32175i, u_input.a) >> (global2.a.a.zy % vec2<u32>(32u))) & -vec2<i32>(-36284i, -35108i)));
    var var_2 = max(-29i, (-var_1.x | _wgslsmith_mult_i32(var_0.x << (44740u % 32u), 1i)) >> (0u % 32u));
    global0 = array<u32, 5>();
    var var_3 = vec3<f32>(518f, arg_1, arg_1);
    return arg_1;
}

fn func_3(arg_0: f32) -> Struct_1 {
    global1 = false;
    var var_0 = ~vec2<u32>(global2.a.a.x, ~(~95325u) >> (1u % 32u));
    return Struct_1(_wgslsmith_sub_vec3_u32(global2.b.a, ~global2.a.a));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_4) -> Struct_1 {
    let var_0 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1038f, _wgslsmith_f_op_f32(max(-1295f, -457f)))))).a;
    let var_1 = arg_2;
    global1 = 1i > u_input.a;
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f)))));
    global2 = Struct_4(var_1.a, func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1622f))))));
    return Struct_1(vec3<u32>(arg_2.a.a.x, ~(~(~4294967295u)), 1u));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> Struct_3 {
    let var_0 = true;
    var var_1 = !(!any(vec3<bool>(false, u_input.a <= u_input.a, true)));
    global1 = var_0;
    global2 = Struct_4(global2.b, func_4(func_3(_wgslsmith_f_op_f32(func_2(true, _wgslsmith_f_op_f32(922f * -346f)))), _wgslsmith_mod_u32(abs(1u), global2.a.a.x), Struct_4(global2.b, func_3(_wgslsmith_f_op_f32(-714f + 627f)))));
    let var_2 = Struct_5(vec3<u32>(4294967295u, ~(~u_input.b), 1u), global2.a.a.x);
    return Struct_3(func_3(-928f));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<u32>, 2>();
    var var_0 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -840f), vec4<bool>(true, true, true, true));
    global2 = Struct_4(var_0.a, var_0.a);
    var var_1 = Struct_5(var_0.a.a, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(firstTrailingBit(1u), 5u)], firstTrailingBit(~global0[_wgslsmith_index_u32(global2.b.a.x, 5u)]) & var_0.a.a.x));
    global0 = array<u32, 5>();
    let var_2 = -839f;
    var var_3 = var_2;
    var var_4 = Struct_5(vec3<u32>(~33076u, ~(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global2.a.a.x, 5u)], global2.b.a.x) << (min(var_1.b, var_0.a.a.x) % 32u)), ~func_4(func_3(-617f), ~1u, Struct_4(Struct_1(var_1.a), Struct_1(vec3<u32>(12741u, var_0.a.a.x, 4294967295u)))).a.x), global0[_wgslsmith_index_u32(global2.a.a.x, 5u)]);
    let x = u_input.a;
    s_output = StorageBuffer(-1323f, _wgslsmith_mod_i32(u_input.a, 1i));
}

