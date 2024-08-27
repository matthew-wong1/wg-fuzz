struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(32175u, 0u, 4294967295u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: vec2<i32>) -> vec3<bool> {
    global0 = _wgslsmith_sub_vec3_u32(max(~vec3<u32>(1u, u_input.d, 35511u), vec3<u32>(~0u, 4294967295u, global0.x)), arg_1.xzy);
    var var_0 = 969f;
    var var_1 = arg_1.yz;
    var_0 = 1304f;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -415f) * _wgslsmith_f_op_f32(f32(-1f) * -624f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(520f - -197f), _wgslsmith_f_op_f32(max(2007f, -972f))))), 545f), 186f);
    return vec3<bool>(countOneBits(_wgslsmith_add_u32(u_input.a, arg_1.x)) != abs(global0.x), true, !(~abs(arg_0) >= -1i));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_1) -> u32 {
    global0 = vec3<u32>(~select(max(~u_input.a, 754u), 1u, !func_3(-36657i, vec4<u32>(64444u, global0.x, arg_1, 32556u), vec2<i32>(u_input.c.x, -2147483647i)).x), 0u, ~max(~_wgslsmith_clamp_u32(global0.x, 34383u, 4294967295u), 17778u));
    var var_0 = min(vec4<u32>(select(2959u, _wgslsmith_add_u32(78548u, global0.x), true), ~0u, _wgslsmith_dot_vec2_u32(global0.yx, ~vec2<u32>(1u, 39080u)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~u_input.b.wxz, u_input.b.yxx), vec3<u32>(4294967295u, global0.x, 15855u) ^ u_input.b.yzz)), _wgslsmith_div_vec4_u32(u_input.b ^ _wgslsmith_add_vec4_u32(max(vec4<u32>(u_input.d, 36044u, 18370u, 27172u), vec4<u32>(37567u, arg_1, global0.x, arg_1)), ~vec4<u32>(7476u, 31372u, arg_1, 4294967295u)), u_input.b));
    let var_1 = arg_0;
    var var_2 = !select(arg_0.a.zy, !select(arg_3.a.zy, select(vec2<bool>(false, true), vec2<bool>(true, false), var_1.a.x), vec2<bool>(arg_2.x, arg_3.a.x)), !(true && var_1.a.x));
    var_2 = select(!select(var_1.a.xz, !select(vec2<bool>(false, false), vec2<bool>(var_2.x, true), arg_2), vec2<bool>(arg_3.b == -272f, !arg_3.a.x)), !(!func_3(2147483647i, ~vec4<u32>(global0.x, 1u, 18450u, 4197u), vec2<i32>(1i, u_input.c.x)).xz), vec2<bool>(all(func_3(37584i, vec4<u32>(arg_1, u_input.d, 10417u, 1u), u_input.c)), all(select(vec3<bool>(true, arg_3.a.x, false), select(vec3<bool>(arg_2.x, true, var_2.x), vec3<bool>(var_1.a.x, false, true), arg_0.a), vec3<bool>(true, arg_3.a.x, false)))));
    return _wgslsmith_sub_u32(var_0.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 1u, 1u) << (vec3<u32>(15098u, var_0.x, arg_1) % vec3<u32>(32u)), u_input.b.ywx)) ^ abs(global0.x);
}

fn func_2() -> vec3<u32> {
    global0 = ~vec3<u32>(4294967295u, _wgslsmith_mult_u32(~(global0.x >> (20963u % 32u)), global0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_clamp_u32(global0.x, 1u, 0u), global0.x << (22829u % 32u), ~global0.x), reverseBits(u_input.b)));
    var var_0 = func_4(Struct_1(!select(vec3<bool>(true, true, true), func_3(-1i, vec4<u32>(21266u, global0.x, global0.x, 58764u), vec2<i32>(u_input.c.x, u_input.c.x)), vec3<bool>(false, false, true)), _wgslsmith_f_op_f32(select(575f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(246f)), _wgslsmith_f_op_f32(min(-2008f, 1488f)))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -849f))), abs(4350u), select(!select(func_3(u_input.c.x, u_input.b, vec2<i32>(23894i, u_input.c.x)).xz, vec2<bool>(false, true), true), vec2<bool>(true, select(func_3(u_input.c.x, u_input.b, vec2<i32>(u_input.c.x, 1i)).x, true, true)), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(94987u, u_input.a, global0.x), vec3<u32>(4294967295u, 4294967295u, 17072u))) <= 1u), Struct_1(vec3<bool>(min(u_input.b.x, 28840u) == 1u, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -573f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-880f)), 1343f))));
    global0 = vec3<u32>(_wgslsmith_dot_vec4_u32(~(u_input.b ^ u_input.b), countOneBits(vec4<u32>(u_input.d, 27770u, u_input.b.x, 0u))), countOneBits(~(~u_input.d)), _wgslsmith_sub_u32(~global0.x, global0.x) >> (u_input.d % 32u)) << (select(~vec3<u32>(u_input.b.x >> (46307u % 32u), ~global0.x, _wgslsmith_mult_u32(1u, 1u)), select(min(u_input.b.zyw, ~vec3<u32>(global0.x, u_input.a, global0.x)), ~firstLeadingBit(vec3<u32>(1u, 24337u, 1u)), !func_3(-2147483647i, vec4<u32>(u_input.b.x, 18469u, 4294967295u, u_input.a), u_input.c)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(func_3(35737i, u_input.b, vec2<i32>(u_input.c.x, u_input.c.x)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))) % vec3<u32>(32u));
    let var_1 = Struct_1(vec3<bool>(true, true, func_3(_wgslsmith_mult_i32(u_input.c.x, 20254i), ~(u_input.b ^ vec4<u32>(13191u, 1u, u_input.b.x, u_input.b.x)), max(firstTrailingBit(u_input.c), vec2<i32>(u_input.c.x, -1i))).x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1730f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -106f) - -382f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -747f)))));
    var_0 = 19284u;
    return u_input.b.yzz;
}

fn func_1() -> vec3<u32> {
    var var_0 = -873f;
    global0 = ~(~abs(~vec3<u32>(u_input.d, 20324u, 10664u) | (vec3<u32>(global0.x, u_input.d, u_input.a) | vec3<u32>(global0.x, 47611u, u_input.d))));
    var var_1 = true;
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1989f))))))));
    global0 = ~firstLeadingBit(func_2());
    return min(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(1u, u_input.d, global0.x), u_input.a), firstTrailingBit(vec2<u32>(u_input.a, 19120u) & vec2<u32>(29294u, 13516u))), global0.x, u_input.b.x), vec3<u32>(u_input.b.x, global0.x, countOneBits(4201u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -344f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-365f, 392f) * -412f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2192f)) + 1516f))));
    let var_1 = u_input.c.x;
    global0 = ~firstLeadingBit(~func_1() ^ reverseBits(~vec3<u32>(14619u, 12978u, 1u)));
    let var_2 = Struct_1(select(select(vec3<bool>(false, var_0.a.x, false), vec3<bool>(true, var_0.a.x, var_0.a.x), !(!vec3<bool>(true, var_0.a.x, true))), var_0.a, vec3<bool>(var_0.a.x, _wgslsmith_f_op_f32(-var_0.b) < _wgslsmith_f_op_f32(f32(-1f) * -1250f), _wgslsmith_f_op_f32(f32(-1f) * -792f) <= _wgslsmith_f_op_f32(-var_0.c))), 521f, -1081f);
    let var_3 = all(vec4<bool>(!var_0.a.x, var_0.a.x, any(select(vec4<bool>(true, var_2.a.x, var_0.a.x, var_0.a.x), select(vec4<bool>(true, var_2.a.x, false, false), vec4<bool>(false, false, var_0.a.x, false), true), !vec4<bool>(var_0.a.x, var_2.a.x, var_0.a.x, false))), true));
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_4.c - var_4.c), 266f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -589f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1273f, var_2.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b)))), max(reverseBits(u_input.b.zyx), firstTrailingBit(u_input.b.zwy)));
}

