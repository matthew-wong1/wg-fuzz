struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(vec2<bool>(false, true), Struct_2(265f), -22899i), Struct_3(vec2<bool>(false, true), Struct_2(-603f), 2147483647i), Struct_3(vec2<bool>(false, true), Struct_2(443f), -52121i), Struct_3(vec2<bool>(true, true), Struct_2(-547f), i32(-2147483648)), Struct_3(vec2<bool>(true, true), Struct_2(190f), 0i), Struct_3(vec2<bool>(false, true), Struct_2(-2721f), -18746i), Struct_3(vec2<bool>(true, true), Struct_2(-1161f), 0i), Struct_3(vec2<bool>(false, true), Struct_2(-577f), 2147483647i), Struct_3(vec2<bool>(true, true), Struct_2(-410f), 0i), Struct_3(vec2<bool>(false, true), Struct_2(-1578f), 1986i), Struct_3(vec2<bool>(false, true), Struct_2(121f), -59820i), Struct_3(vec2<bool>(true, true), Struct_2(-881f), 59394i), Struct_3(vec2<bool>(false, true), Struct_2(-296f), i32(-2147483648)), Struct_3(vec2<bool>(true, false), Struct_2(-584f), 30324i), Struct_3(vec2<bool>(false, false), Struct_2(1352f), -29484i), Struct_3(vec2<bool>(true, true), Struct_2(550f), -14778i), Struct_3(vec2<bool>(true, true), Struct_2(1157f), 1i), Struct_3(vec2<bool>(true, false), Struct_2(-1584f), i32(-2147483648)), Struct_3(vec2<bool>(false, true), Struct_2(855f), i32(-2147483648)), Struct_3(vec2<bool>(false, false), Struct_2(868f), 20036i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> Struct_2 {
    global0 = Struct_2(1644f);
    return Struct_2(1906f);
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.a, -1911f, global0.a))))))));
    var var_1 = func_1();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - -445f);
    let var_3 = ~firstLeadingBit(max(_wgslsmith_clamp_u32(~74217u, ~u_input.c, u_input.c), 39621u));
    global1 = array<Struct_3, 20>();
    return -_wgslsmith_add_i32(~_wgslsmith_clamp_i32(-1i, u_input.a.x, u_input.a.x) << (var_3 % 32u), -2147483647i);
}

fn func_2() -> StorageBuffer {
    let var_0 = reverseBits(u_input.a.wz << (~(~(~vec2<u32>(0u, u_input.d))) % vec2<u32>(32u)));
    global1 = array<Struct_3, 20>();
    let var_1 = ~vec3<i32>(1i, -56855i, func_3(vec3<bool>(true, true, true)));
    var var_2 = !select(true, !all(vec4<bool>(true, true, true, false)), !(!any(vec4<bool>(false, true, true, false))));
    var var_3 = all(vec2<bool>(true, !(!any(vec3<bool>(false, false, true)))));
    return StorageBuffer(u_input.a, firstLeadingBit(4294967295u), min(var_1, _wgslsmith_mult_vec3_i32(~vec3<i32>(var_1.x, u_input.a.x, -20563i), vec3<i32>(u_input.a.x, var_0.x ^ var_0.x, u_input.a.x))), abs(vec3<i32>(abs(0i), ~(~(-7111i)), _wgslsmith_div_i32(_wgslsmith_mod_i32(-2147483647i, -54518i), _wgslsmith_mult_i32(-1i, u_input.a.x)))), vec3<i32>(u_input.a.x, var_0.x, ~_wgslsmith_div_i32(var_0.x, abs(-2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(u_input.b, 58972u, u_input.b, u_input.d)), ~vec4<u32>(u_input.b, u_input.d, 1u, u_input.b)), countOneBits(select(vec4<u32>(u_input.d, 66701u, 11771u, u_input.b), vec4<u32>(19860u, u_input.b, 0u, u_input.d), false))), ~_wgslsmith_add_vec4_u32(vec4<u32>(34348u, 20140u, u_input.d, u_input.d), firstTrailingBit(vec4<u32>(0u, 0u, 1u, 1u)))), 4294967295u, ~u_input.d, firstLeadingBit(4294967295u));
    let var_1 = vec2<bool>(true, true);
    let var_2 = u_input.a.wzw;
    var var_3 = !select(!vec4<bool>(var_1.x & false, false, true, -2147483647i < u_input.a.x), vec4<bool>(true, !var_1.x | var_1.x, any(!vec3<bool>(false, var_1.x, true)), var_1.x), true);
    var var_4 = func_1();
    let x = u_input.a;
    s_output = func_2();
}

