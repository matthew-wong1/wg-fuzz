struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
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

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)));

var<private> global4: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> i32 {
    global4 = array<Struct_1, 17>();
    let var_0 = global4[_wgslsmith_index_u32(countOneBits(u_input.b.x), 17u)];
    global1 = false;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1302f, 962f))))), vec2<f32>(1f, 1f), !global2.a)))));
    let var_2 = global4[_wgslsmith_index_u32(8039u, 17u)];
    return abs(u_input.a.x);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: f32) -> Struct_1 {
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, 15823u >> ((1u << (u_input.b.x % 32u)) % 32u)) | countOneBits(~11522u), 17u)];
    global4 = array<Struct_1, 17>();
    var var_1 = Struct_1(vec2<bool>(!global0.a.x, !(!global2.a.x & global2.a.x)));
    let var_2 = vec3<bool>(4294967295u >= ~(~_wgslsmith_add_u32(u_input.b.x, u_input.b.x)), var_0.a.x, var_0.a.x);
    let var_3 = 19121i;
    return Struct_1(global0.a);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = u_input.b.x == u_input.b.x;
    global2 = func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1341f)))), abs(func_2()), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-112f * 1000f)), 2237f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-226f))))));
    global2 = global3[_wgslsmith_index_u32(27230u, 28u)];
    var_0 = false;
    global2 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1100f)))), (~min(2147483647i, 4575i) >> (firstTrailingBit(u_input.b.x) % 32u)) ^ _wgslsmith_add_i32(_wgslsmith_sub_i32(~u_input.a.x, countOneBits(u_input.a.x)), 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1020f)), _wgslsmith_f_op_f32(floor(-665f))))));
    return func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(821f, 498f)))) + -661f), reverseBits(~u_input.a.x), 1251f);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> u32 {
    let var_0 = func_1(func_3(377f, -(~36551i), _wgslsmith_f_op_f32(-arg_1.x)));
    global3 = array<Struct_1, 28>();
    global2 = arg_2;
    global3 = array<Struct_1, 28>();
    var var_1 = vec4<i32>(-u_input.a.x, u_input.a.x, abs(reverseBits(u_input.a.x)), 1i);
    return _wgslsmith_mod_u32(u_input.b.x, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 28>();
    let var_0 = global4[_wgslsmith_index_u32(~firstTrailingBit(0u), 17u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(618f - 1024f))))));
    let var_2 = ~(~vec4<u32>(func_4(func_1(global4[_wgslsmith_index_u32(24510u, 17u)]), vec2<f32>(2722f, var_1), func_1(Struct_1(global2.a))), 54279u, 4294967295u, u_input.b.x ^ ~u_input.b.x));
    let var_3 = ~(~vec4<u32>(64606u, u_input.b.x & ~52554u, 4294967295u, u_input.b.x));
    global1 = select(_wgslsmith_dot_vec2_u32(var_2.yz, vec2<u32>(~var_3.x, 12307u)) < firstLeadingBit(var_3.x), !(false & !any(vec2<bool>(var_0.a.x, global0.a.x))), func_1(func_3(_wgslsmith_f_op_f32(f32(-1f) * -473f), i32(-1i) * -1i, var_1)).a.x);
    global3 = array<Struct_1, 28>();
    global0 = func_1(Struct_1(!var_0.a));
    var var_4 = func_3(var_1, -1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_1)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_f_op_f32(round(-494f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.zy);
}

