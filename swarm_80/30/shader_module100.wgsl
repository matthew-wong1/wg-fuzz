struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec3<i32>(-1i, 2147483647i, 54667i), -328f), Struct_1(vec3<i32>(15667i, i32(-2147483648), 60937i), 1352f), Struct_1(vec3<i32>(0i, 7865i, -5667i), -288f), Struct_1(vec3<i32>(1i, 1i, -15638i), -704f), Struct_1(vec3<i32>(1i, 2147483647i, -77584i), -505f), Struct_1(vec3<i32>(2147483647i, -210i, 60776i), 411f), Struct_1(vec3<i32>(2147483647i, -12041i, 10374i), -114f));

var<private> global1: u32 = 39834u;

var<private> global2: bool = true;

var<private> global3: array<vec3<f32>, 7>;

var<private> global4: array<u32, 6>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    global4 = array<u32, 6>();
    let var_0 = 7874i;
    let var_1 = Struct_1(~(~vec3<i32>(1i, arg_0.x, var_0)) << (vec3<u32>(_wgslsmith_clamp_u32(u_input.a, ~1u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global4[_wgslsmith_index_u32(14706u, 6u)], 18197u, global4[_wgslsmith_index_u32(u_input.a, 6u)]), firstTrailingBit(vec4<u32>(1u, global4[_wgslsmith_index_u32(4294967295u, 6u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 6u)], 6u)], 1u))), _wgslsmith_mult_u32(~30219u, _wgslsmith_mult_u32(u_input.a, global4[_wgslsmith_index_u32(u_input.a, 6u)]))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1567f));
    var var_2 = var_1.b;
    var var_3 = ~(~u_input.c.zx);
    return Struct_1(~(-var_1.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(329f))), _wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.b)))))));
}

fn func_3() -> vec2<bool> {
    global0 = array<Struct_1, 7>();
    var var_0 = vec3<i32>(func_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -u_input.b), firstLeadingBit(firstLeadingBit(vec2<i32>(u_input.b, 0i))), abs(vec2<i32>(1i, 1i)))).a.x, -firstTrailingBit(i32(-1i) * -2147483647i), ~(-abs(u_input.b)));
    let var_1 = vec4<u32>(~u_input.c.x, _wgslsmith_div_u32(global4[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(0u, 6u)], u_input.a)), 6u)], 36201u), global4[_wgslsmith_index_u32(54027u, 6u)], ~abs(_wgslsmith_div_u32(firstLeadingBit(u_input.c.x), u_input.c.x)));
    global4 = array<u32, 6>();
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1093f)) * 1945f), 325f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-176f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-169f, -877f) + -2076f)))), false));
    return !(!(!vec2<bool>(any(vec2<bool>(false, false)), false)));
}

fn func_1() -> u32 {
    var var_0 = func_2(~vec2<i32>(reverseBits(28414i), u_input.b));
    global3 = array<vec3<f32>, 7>();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1020f);
    var var_2 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-var_0.b));
    global2 = any(!func_3());
    return global4[_wgslsmith_index_u32(4294967295u, 6u)];
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: vec4<f32>) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(6302u, ~0u, firstLeadingBit(24690u)), 1u, arg_2.x), ~u_input.c), 7u)]));
    global4 = array<u32, 6>();
    var var_1 = func_2(vec2<i32>(_wgslsmith_clamp_i32(select(-2147483647i, u_input.b, any(vec3<bool>(false, true, false))), ~2147483647i, _wgslsmith_mult_i32(u_input.b, -1i)), 1i));
    var var_2 = select(false, false & select(true, !all(vec4<bool>(false, false, true, false)), _wgslsmith_f_op_f32(-arg_3.x) == _wgslsmith_div_f32(arg_3.x, var_1.b)), true);
    var_1 = func_2(var_1.a.yz);
    return StorageBuffer(arg_3, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(step(var_0.x, 852f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1059f)) - _wgslsmith_f_op_f32(trunc(arg_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + -416f)), var_1.b)), vec4<f32>(var_0.x, -1298f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(f32(-1f) * -927f)) + 501f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(414f, -824f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2168f, -713f), vec2<f32>(551f, 149f))))), vec2<f32>(143f, -1045f)));
    global3 = array<vec3<f32>, 7>();
    global4 = array<u32, 6>();
    global0 = array<Struct_1, 7>();
    var var_1 = any(vec3<bool>(false, firstTrailingBit(abs(global4[_wgslsmith_index_u32(1u, 6u)])) > max(countOneBits(u_input.a), _wgslsmith_dot_vec2_u32(u_input.c.zz, vec2<u32>(1u, 3745u))), ~(~u_input.a) <= 13711u));
    let x = u_input.a;
    s_output = func_4(~((_wgslsmith_add_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(0u, 6u)], 48093u), vec2<u32>(global4[_wgslsmith_index_u32(u_input.a, 6u)], u_input.c.x)) ^ vec2<u32>(10541u, 1u)) >> (~vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(~u_input.c.yx, u_input.c.zz, ~vec2<u32>(u_input.c.x, func_1())), reverseBits(~_wgslsmith_sub_vec2_u32(u_input.c.zy & vec2<u32>(4294967295u, 1u), ~vec2<u32>(20417u, u_input.a))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1389f, var_0.x, var_0.x, 361f) + vec4<f32>(-814f, 1217f, -846f, -201f)) + vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(962f, 1327f, var_0.x, 1202f), vec4<f32>(-376f, var_0.x, -1838f, var_0.x))))));
}

