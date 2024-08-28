struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-874f, -802f));

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec2<f32>(-758f, -2829f)), Struct_1(vec2<f32>(1936f, 570f)), Struct_1(vec2<f32>(-1208f, -2192f)), Struct_1(vec2<f32>(-1005f, -150f)), Struct_1(vec2<f32>(103f, -1517f)), Struct_1(vec2<f32>(-2268f, 522f)), Struct_1(vec2<f32>(365f, -1786f)), Struct_1(vec2<f32>(1000f, -362f)), Struct_1(vec2<f32>(802f, -726f)), Struct_1(vec2<f32>(373f, 422f)), Struct_1(vec2<f32>(-471f, -195f)), Struct_1(vec2<f32>(479f, -948f)), Struct_1(vec2<f32>(-212f, -181f)), Struct_1(vec2<f32>(-232f, 1085f)), Struct_1(vec2<f32>(-1326f, 686f)), Struct_1(vec2<f32>(521f, -162f)), Struct_1(vec2<f32>(-632f, 1599f)), Struct_1(vec2<f32>(-817f, -865f)), Struct_1(vec2<f32>(1569f, 533f)), Struct_1(vec2<f32>(1855f, 1106f)), Struct_1(vec2<f32>(-811f, 1300f)), Struct_1(vec2<f32>(-714f, -455f)), Struct_1(vec2<f32>(160f, 578f)), Struct_1(vec2<f32>(-844f, 518f)), Struct_1(vec2<f32>(1961f, 1458f)), Struct_1(vec2<f32>(-1171f, 1290f)), Struct_1(vec2<f32>(1183f, -1771f)), Struct_1(vec2<f32>(923f, -848f)), Struct_1(vec2<f32>(313f, 316f)));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> vec3<u32> {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-global1.a.x), 1f));
    global2 = array<Struct_1, 29>();
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a));
    let var_1 = var_0;
    var var_2 = global2[_wgslsmith_index_u32(u_input.c.x, 29u)];
    return vec3<u32>(select(49972u, u_input.c.x, true), _wgslsmith_add_u32(~(~(~97459u)), u_input.c.x), ~((u_input.c.x & ~u_input.c.x) >> (~_wgslsmith_div_u32(u_input.c.x, u_input.c.x) % 32u)));
}

fn func_3(arg_0: vec3<u32>) -> bool {
    let var_0 = global1.a.x;
    let var_1 = true;
    let var_2 = -_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -2147483647i, u_input.a) ^ vec3<i32>(-2147483647i, -7944i, u_input.a), vec3<i32>(-2147483647i, u_input.a, u_input.b) << (vec3<u32>(101699u, u_input.c.x, 456u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(43412i, u_input.b, 9847i))), select(-firstTrailingBit(vec3<i32>(15392i, 11384i, u_input.a)), -select(vec3<i32>(-1i, -2147483647i, u_input.a), vec3<i32>(2147483647i, -4780i, u_input.b), var_1), !vec3<bool>(true, var_1, false)));
    global2 = array<Struct_1, 29>();
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(825f, 1000f) + global1.a), _wgslsmith_f_op_vec2_f32(global0.a - _wgslsmith_f_op_vec2_f32(vec2<f32>(106f, global0.a.x) + vec2<f32>(global0.a.x, global1.a.x))))));
    return select(var_1, any(vec2<bool>(true, true)), false);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<i32>) -> Struct_1 {
    global2 = array<Struct_1, 29>();
    let var_0 = all(!vec4<bool>(true, all(vec2<bool>(true, true)), true, -1089f == _wgslsmith_f_op_f32(exp2(global1.a.x))));
    var var_1 = -2147483647i;
    var_1 = abs(~min(-1i, ~(~(-71242i))));
    var var_2 = vec3<bool>(func_3(func_2()), any(vec2<bool>(!var_0, true)), var_0);
    return global2[_wgslsmith_index_u32(select(u_input.c.x, countOneBits(110847u), true), 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec4<i32>(min(select(reverseBits(17103i), ~u_input.a, any(vec4<bool>(false, false, true, true))), u_input.b), select(~u_input.a, u_input.b, false), ~(-u_input.a), 1i), abs(max(~vec3<i32>(1i, u_input.a, u_input.b) << (firstLeadingBit(u_input.c.xzw) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(499i, u_input.b, 15015i) & vec3<i32>(u_input.b, u_input.a, u_input.b)))));
    let var_1 = _wgslsmith_div_vec4_i32(firstLeadingBit(min(max(vec4<i32>(u_input.a, 18303i, 69043i, u_input.b), vec4<i32>(u_input.a, 16802i, u_input.b, -1i)), vec4<i32>(u_input.b, -12490i, 33875i, 0i) >> (u_input.c % vec4<u32>(32u)))) >> (u_input.c % vec4<u32>(32u)), ~(-(~_wgslsmith_mod_vec4_i32(vec4<i32>(-4596i, u_input.a, u_input.a, -19820i), vec4<i32>(0i, -25643i, 19155i, -1i)))));
    let var_2 = any(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-global1.a));
    var var_4 = -vec2<i32>(u_input.a, abs(-_wgslsmith_div_i32(-38209i, -40648i)));
    var var_5 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.zwz, var_0.a.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.x, -1000f, var_0.a.x) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.a.x, -2457f, var_3.a.x), vec3<f32>(var_3.a.x, global1.a.x, global0.a.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-661f))), 2015f, global1.a.x))), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(firstLeadingBit(u_input.c.xwy) & u_input.c.zxx, u_input.c.xww), ~_wgslsmith_add_vec3_u32(u_input.c.zxw, vec3<u32>(132623u, 19102u, 1u))));
}

