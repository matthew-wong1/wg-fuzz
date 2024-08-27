struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-12874i, -1312f);

var<private> global1: array<i32, 7> = array<i32, 7>(-1559i, -16724i, -22111i, 0i, 43148i, 13674i, 12190i);

var<private> global2: array<f32, 14>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = 72151u;
    let var_1 = arg_0;
    return arg_0;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = !(!(arg_0.a <= _wgslsmith_mult_i32(~0i, -2147483647i)));
    let var_1 = arg_0;
    global2 = array<f32, 14>();
    var var_2 = arg_0;
    global2 = array<f32, 14>();
    return var_1;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> u32 {
    var var_0 = func_1(Struct_1(1i, _wgslsmith_f_op_f32(round(305f))));
    global0 = Struct_1(i32(-1i) * -3161i, _wgslsmith_f_op_f32(f32(-1f) * -640f));
    global0 = func_2(func_1(func_2(Struct_1(1i, _wgslsmith_f_op_f32(step(arg_1.b, -604f))), countOneBits(_wgslsmith_mult_u32(64323u, u_input.d)))), _wgslsmith_div_u32(76689u, 76030u));
    var var_1 = vec3<u32>(1u, ~firstTrailingBit(u_input.b), 0u) << (~vec3<u32>((39924u >> (arg_2 % 32u)) >> (~u_input.d % 32u), arg_2, 54899u) % vec3<u32>(32u));
    let var_2 = func_2(Struct_1(countOneBits(global0.a), arg_1.b), arg_2);
    return var_1.x | (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(85713u, 132543u, 1u), vec3<u32>(u_input.b, u_input.d, var_1.x)), ~vec3<u32>(u_input.b, 4294967295u, 25400u)), ~u_input.b) | ~(~firstLeadingBit(arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_2(func_1(Struct_1(34976i, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(357f)))))), 1u);
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.b, 14u)], -300f)), _wgslsmith_f_op_f32(func_2(func_1(Struct_1(1i, 1000f)), u_input.b).b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * global0.b))))));
    var var_1 = Struct_1(0i & (i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global0.a, global0.a), vec3<i32>(global0.a, 74887i, u_input.e.x))), _wgslsmith_f_op_f32(round(global0.b)));
    let var_2 = global2[_wgslsmith_index_u32(4294967295u, 14u)];
    var var_3 = min(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, u_input.d), _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(47006u, 1u, 0u), vec3<u32>(1968u, 4294967295u, 1u)), 1u), func_3(-func_1(Struct_1(2147483647i, -1760f)).a, Struct_1(var_1.a, var_1.b), u_input.b)), _wgslsmith_mult_u32(firstTrailingBit(~16591u), ~abs(_wgslsmith_add_u32(0u, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(-var_1.a, countOneBits(max(abs(abs(vec2<i32>(-8791i, -13975i))), vec2<i32>(u_input.a, firstLeadingBit(global1[_wgslsmith_index_u32(1u, 7u)])))), func_1(Struct_1(_wgslsmith_sub_i32(abs(-22579i), -var_1.a), -153f)).a, ~u_input.b, vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(abs(var_1.a), var_1.a), i32(-1i) * -25741i, _wgslsmith_mod_i32(-14812i, u_input.e.x)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d, countOneBits(countOneBits(u_input.b))), 7u)], -1i));
}

