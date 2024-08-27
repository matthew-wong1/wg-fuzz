struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<i32>, 17>;

var<private> global2: u32;

var<private> global3: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(14170i, 12242i, 64474i, 0i), vec4<i32>(-1i, -4026i, -90644i, 0i), vec4<i32>(-8555i, -37494i, 2147483647i, 1i), vec4<i32>(1i, i32(-2147483648), 14032i, 32917i), vec4<i32>(-1i, -42728i, i32(-2147483648), -28494i), vec4<i32>(0i, 0i, -8502i, 597i));

var<private> global4: array<u32, 15>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = Struct_2(global0.a);
    global0 = var_0;
    global2 = u_input.a;
    global1 = array<vec2<i32>, 17>();
    global3 = array<vec4<i32>, 6>();
    return countOneBits(1u);
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: bool) -> Struct_1 {
    global2 = reverseBits(func_3());
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x));
    global1 = array<vec2<i32>, 17>();
    var var_1 = ~vec4<u32>(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(43759u, 15u)], 0u), 15u)], _wgslsmith_add_u32(u_input.a, 30835u)) >> (u_input.a % 32u), 15u)], _wgslsmith_mod_u32(_wgslsmith_div_u32(89351u, ~34262u), global4[_wgslsmith_index_u32(u_input.a, 15u)] ^ 126297u), global4[_wgslsmith_index_u32(~firstTrailingBit(global4[_wgslsmith_index_u32(u_input.a, 15u)] << (global4[_wgslsmith_index_u32(u_input.a, 15u)] % 32u)), 15u)], global4[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.a, 4294967295u, u_input.a), 15u)] ^ max(u_input.a, u_input.a & 4294967295u));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1302f))), arg_1.x, arg_2 && false)) * arg_1.x));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1651f, global0.a.a.x)), 1312f)), global0.a.a.x), vec2<i32>(-59i | min(_wgslsmith_dot_vec4_i32(vec4<i32>(-9536i, 2147483647i, global0.a.b.x, global0.a.b.x), global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(51714u, 15u)], 6u)]), global0.a.b.x), ~firstTrailingBit(1i << (0u % 32u))));
}

fn func_1(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(select(874f, _wgslsmith_f_op_f32(183f - arg_0.a.x), true)), -1271f), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(global0.a.a.x)), _wgslsmith_f_op_f32(round(global0.a.a.x))), global0.a.a)))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - arg_0.a.x), 771f), var_0.x))), -1039f);
    let var_2 = reverseBits(_wgslsmith_sub_u32(~_wgslsmith_add_u32(40577u, 59830u), countOneBits(global4[_wgslsmith_index_u32(48266u, 15u)]) | 4294967295u));
    var var_3 = func_2(arg_0.a.x == arg_0.a.x, _wgslsmith_f_op_vec2_f32(-arg_0.a), any(vec4<bool>(true, select(true, select(false, true, false), true), true, false)));
    global0 = Struct_2(func_2(4294967295u != ~max(49032u, global4[_wgslsmith_index_u32(0u, 15u)]), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.x, -391f))), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x))), !any(vec4<bool>(true, true, true, true)) & !any(vec2<bool>(true, true))));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + _wgslsmith_f_op_f32(422f - _wgslsmith_f_op_f32(1524f - _wgslsmith_div_f32(arg_0.a.x, var_3.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-661f, func_2(true, var_0, true).a.x)), global0.a.a.x))), global0.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -457f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.a.x;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-global0.a.a.x), _wgslsmith_div_f32(-610f, -1000f));
    global4 = array<u32, 15>();
    let var_2 = _wgslsmith_f_op_f32(global0.a.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) * global0.a.a.x))));
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global0.a.a), _wgslsmith_f_op_vec2_f32(floor(global0.a.a)))), vec2<i32>(firstTrailingBit(global0.a.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, global0.a.b.x, -1i), ~vec4<i32>(43405i, global0.a.b.x, -2228i, global0.a.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~global4[_wgslsmith_index_u32(firstLeadingBit(global4[_wgslsmith_index_u32(4294967295u, 15u)]), 15u)], _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global0.a.a - var_1))), var_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -100f, 1778f, global0.a.a.x)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2, var_2, -1000f, -1014f)))) + _wgslsmith_f_op_vec4_f32(func_1(Struct_1(var_1, global0.a.b))))), 0i, reverseBits(~(vec2<u32>(u_input.a, global4[_wgslsmith_index_u32(u_input.a, 15u)]) >> (vec2<u32>(global4[_wgslsmith_index_u32(1u, 15u)], 70324u) % vec2<u32>(32u)))) >> ((_wgslsmith_sub_vec2_u32(select(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, global4[_wgslsmith_index_u32(u_input.a, 15u)]), vec2<bool>(true, true)), _wgslsmith_clamp_vec2_u32(vec2<u32>(51618u, u_input.a), vec2<u32>(4294967295u, u_input.a), vec2<u32>(21466u, global4[_wgslsmith_index_u32(u_input.a, 15u)]))) >> (vec2<u32>(4294967295u, global4[_wgslsmith_index_u32(19680u, 15u)]) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

