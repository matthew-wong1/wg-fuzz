struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: array<bool, 11>;

var<private> global3: array<u32, 17>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    global2 = array<bool, 11>();
    let var_0 = arg_0;
    var var_1 = arg_0;
    let var_2 = global0.c;
    let var_3 = arg_0;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(floor(var_0.b)), _wgslsmith_div_f32(330f, 1007f), -1240f) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.b, global1.b, -280f, 1749f), vec4<f32>(-1027f, global0.b, 515f, 917f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.b, global1.b, 1019f, 149f))), !vec4<bool>(false, var_0.c, var_3.c, true)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, 448f, 836f, _wgslsmith_f_op_f32(-1785f * 585f)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(670f + -450f)) + var_3.b), -1972f, -1262f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1.b, -993f), _wgslsmith_f_op_f32(-1000f - 560f))))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_div_u32(~countOneBits(~global1.a.x), select(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, global1.a.x) & global1.a, vec3<u32>(28512u, u_input.a.x, 1u)), 17u)], 0u, false)), global1.a.x);
    global2 = array<bool, 11>();
    global0 = Struct_1(arg_2, _wgslsmith_f_op_f32(879f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * -349f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -580f), _wgslsmith_f_op_f32(global1.b * global0.b))))), !global1.c);
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(~vec3<u32>(u_input.a.x, 39076u, 17062u), global1.b, true))).x));
    global0 = Struct_1(vec3<u32>(~u_input.a.x, global0.a.x, ~0u) & u_input.a.zwx, arg_1.x, !(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, arg_0.x, u_input.b.x, u_input.c), vec4<i32>(arg_0.x, u_input.b.x, -1i, -46173i))) >= firstLeadingBit(_wgslsmith_mod_i32(arg_0.x, u_input.c))));
    return 12870u;
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: f32, arg_3: bool) -> vec3<u32> {
    var var_0 = global1.a.x;
    var_0 = global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, func_4(u_input.b ^ u_input.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), global1.b, _wgslsmith_f_op_f32(-550f - -783f), -1032f), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(u_input.a.zwx, 2025f, global1.c))), select(!vec4<bool>(true, false, global1.c, global1.c), select(vec4<bool>(global0.c, false, true, global0.c), vec4<bool>(arg_3, global0.c, false, arg_3), global0.c), select(vec4<bool>(false, true, false, arg_1.x), vec4<bool>(false, arg_1.x, true, arg_3), vec4<bool>(false, false, arg_3, true))))), max(~(vec3<u32>(3429u, global3[_wgslsmith_index_u32(13838u, 17u)], global0.a.x) ^ vec3<u32>(u_input.a.x, 0u, u_input.a.x)), global1.a)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), ~vec2<u32>(global3[_wgslsmith_index_u32(global0.a.x, 17u)], global0.a.x)) ^ 1u), 17u)], 17u)];
    global1 = Struct_1(countOneBits(~(~global1.a)), global1.b, true);
    var var_1 = Struct_1(~(min(min(global0.a, vec3<u32>(16779u, global3[_wgslsmith_index_u32(global0.a.x, 17u)], global3[_wgslsmith_index_u32(1u, 17u)])), firstTrailingBit(global0.a)) | global1.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global1.b, -1104f)))), 754f)), true);
    let var_2 = Struct_1(firstTrailingBit(min(~var_1.a, ~vec3<u32>(var_1.a.x, var_1.a.x, 35636u))) & ~vec3<u32>(_wgslsmith_div_u32(147479u, 4130u), ~4294967295u, 4294967295u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b - var_1.b) * var_1.b)), 1f)), all(!arg_1));
    return (select(~min(u_input.a.zxy, global1.a), max(vec3<u32>(0u, 54892u, var_2.a.x), select(vec3<u32>(u_input.a.x, u_input.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 17u)], 17u)]), var_1.a, vec3<bool>(false, global1.c, true))), arg_1) | ~global0.a) & global1.a;
}

fn func_1(arg_0: Struct_1) -> u32 {
    global0 = arg_0;
    let var_0 = -u_input.b;
    global0 = arg_0;
    global0 = Struct_1(countOneBits(select(~firstTrailingBit(vec3<u32>(1u, 0u, 4294967295u)), func_2(countOneBits(-1i), !vec3<bool>(true, global0.c, true), _wgslsmith_f_op_f32(abs(-2380f)), false), true)), 339f, !all(!select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 11u)], global2[_wgslsmith_index_u32(global0.a.x, 11u)], global0.c, global2[_wgslsmith_index_u32(0u, 11u)]), vec4<bool>(global0.c, false, true, false), global2[_wgslsmith_index_u32(798u, 11u)])));
    global0 = arg_0;
    return ~4294967295u;
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(~vec3<u32>(firstTrailingBit(select(global0.a.x, arg_2.a.x, true)), global1.a.x, arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.b))) + _wgslsmith_div_f32(410f, _wgslsmith_f_op_f32(round(global1.b)))), (true && (_wgslsmith_f_op_f32(exp2(global0.b)) >= _wgslsmith_f_op_f32(-global1.b))) & !(global0.b < _wgslsmith_f_op_f32(-global1.b)));
    let var_1 = countOneBits(vec4<i32>(14061i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 32537i | u_input.b.x), ~_wgslsmith_div_vec3_i32(u_input.b, u_input.b)), u_input.c, 2147483647i));
    let var_2 = var_1.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -258f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.b))))), 182f)));
    global2 = array<bool, 11>();
    return vec2<bool>(true, !global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, arg_0) << (~global0.a.x % 32u), 11u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b;
    var var_1 = u_input.b << (~u_input.a.zxy % vec3<u32>(32u));
    let var_2 = func_5(~(~4294967295u), global1.a.x & 4294967295u, Struct_1(vec3<u32>(global1.a.x, ~select(62106u, 2843u, global1.c), _wgslsmith_clamp_u32(func_1(Struct_1(vec3<u32>(u_input.a.x, global0.a.x, global3[_wgslsmith_index_u32(1u, 17u)]), -1101f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 17u)], 11u)])), ~u_input.a.x, 19328u)), global1.b, false));
    global2 = array<bool, 11>();
    let var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(1f)), global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * 143f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-162f, global0.b)))))));
    var var_4 = Struct_1(~_wgslsmith_clamp_vec3_u32(~select(vec3<u32>(u_input.a.x, global0.a.x, 1u), global0.a, vec3<bool>(global2[_wgslsmith_index_u32(23096u, 11u)], global0.c, false)), ~(~u_input.a.zyy), vec3<u32>(global3[_wgslsmith_index_u32(~u_input.a.x, 17u)], _wgslsmith_add_u32(u_input.a.x, 1065u), _wgslsmith_sub_u32(43863u, 1u))), 740f, all(!(!(!vec3<bool>(false, global2[_wgslsmith_index_u32(21861u, 11u)], global0.c)))));
    var var_5 = Struct_1(vec3<u32>(~1u, 22205u, global3[_wgslsmith_index_u32(countOneBits(var_4.a.x | reverseBits(4294967295u)), 17u)]), _wgslsmith_f_op_f32(f32(-1f) * -628f), !(!(false || global2[_wgslsmith_index_u32(u_input.a.x, 11u)]) | true));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, -var_1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_3.yx, vec2<f32>(global1.b, global1.b)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1726f + 839f), var_4.b, -470f)), ~vec2<u32>(max(_wgslsmith_dot_vec3_u32(global1.a, global0.a), 10330u), 1u));
}

