struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<i32>(i32(-2147483648), 1i, 0i)), Struct_1(vec3<i32>(-14486i, -1i, -1i)), Struct_1(vec3<i32>(-1i, -1i, 2147483647i)), Struct_1(vec3<i32>(-16159i, -23829i, -20661i)), Struct_1(vec3<i32>(22372i, 1i, -13980i)), Struct_1(vec3<i32>(i32(-2147483648), -40410i, i32(-2147483648))), Struct_1(vec3<i32>(0i, i32(-2147483648), 2147483647i)), Struct_1(vec3<i32>(-4324i, -1i, 49703i)), Struct_1(vec3<i32>(-1i, i32(-2147483648), 1i)), Struct_1(vec3<i32>(-155i, 46989i, 10837i)), Struct_1(vec3<i32>(31543i, 51986i, 4642i)), Struct_1(vec3<i32>(-6064i, 5932i, 12384i)), Struct_1(vec3<i32>(-44622i, 2147483647i, 2147483647i)), Struct_1(vec3<i32>(i32(-2147483648), 35166i, 19882i)), Struct_1(vec3<i32>(-27643i, 1i, 66831i)), Struct_1(vec3<i32>(14472i, 1i, -74364i)), Struct_1(vec3<i32>(45264i, -2816i, 1i)), Struct_1(vec3<i32>(1i, 0i, -54188i)), Struct_1(vec3<i32>(20069i, 2147483647i, -13554i)), Struct_1(vec3<i32>(-39511i, -1i, -1i)), Struct_1(vec3<i32>(1i, 47290i, 14818i)), Struct_1(vec3<i32>(-8349i, -11923i, 2147483647i)), Struct_1(vec3<i32>(-73362i, 2147483647i, 35824i)), Struct_1(vec3<i32>(-6879i, -1i, 0i)), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -1i)), Struct_1(vec3<i32>(-23951i, 24997i, i32(-2147483648))), Struct_1(vec3<i32>(37490i, -15469i, i32(-2147483648))), Struct_1(vec3<i32>(-1i, 2147483647i, 1i)), Struct_1(vec3<i32>(0i, 0i, 1i)), Struct_1(vec3<i32>(0i, 12366i, -20943i)), Struct_1(vec3<i32>(i32(-2147483648), 1i, 8822i)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<i32>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(-1093f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1f)))));
    var var_1 = ~vec3<u32>(24978u, u_input.b, ~0u);
    var var_2 = vec3<bool>(true & !all(vec3<bool>(true, true, true)), any(select(vec3<bool>(true, true, any(vec3<bool>(false, true, true))), vec3<bool>(true, true, true), all(vec2<bool>(false, true)))), !(all(vec4<bool>(true, true, true, true)) || true));
    var var_3 = true;
    let var_4 = Struct_1(_wgslsmith_div_vec3_i32(arg_2.yxz, -vec3<i32>(arg_1.a.x, u_input.a.x, arg_2.x) ^ _wgslsmith_mult_vec3_i32(arg_1.a, firstLeadingBit(vec3<i32>(36069i, u_input.a.x, u_input.a.x)))));
    return arg_2;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: u32) -> bool {
    let var_0 = !(!vec3<bool>(true, true, arg_1));
    global0 = array<Struct_1, 31>();
    let var_1 = abs(u_input.b);
    var var_2 = ~firstLeadingBit(countOneBits(-1i));
    var_2 = _wgslsmith_clamp_i32(~(i32(-1i) * -(arg_0.a.x << (arg_3 % 32u))), -_wgslsmith_dot_vec4_i32(func_3(vec2<u32>(var_1, var_1), Struct_1(arg_0.a), countOneBits(vec4<i32>(1i, -1i, u_input.a.x, arg_2))), vec4<i32>(_wgslsmith_clamp_i32(13177i, arg_0.a.x, -2833i), u_input.a.x, firstTrailingBit(u_input.a.x), _wgslsmith_dot_vec2_i32(u_input.a, u_input.a))), arg_2);
    return arg_1;
}

fn func_4(arg_0: vec3<bool>, arg_1: i32) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.b, 31u)];
    let var_1 = u_input.a.x;
    let var_2 = _wgslsmith_add_u32(4294967295u, select(u_input.b, reverseBits(0u), arg_0.x));
    let var_3 = Struct_1(-abs(func_3(~vec2<u32>(529u, 0u), Struct_1(var_0.a), countOneBits(vec4<i32>(u_input.a.x, var_1, arg_1, 75320i))).yyx));
    let var_4 = false;
    return global0[_wgslsmith_index_u32(16918u, 31u)];
}

fn func_1() -> u32 {
    let var_0 = u_input.b;
    global0 = array<Struct_1, 31>();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -122f);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-908f * 558f), _wgslsmith_f_op_f32(f32(-1f) * -628f))))));
    let var_2 = func_4(select(vec3<bool>(func_2(Struct_1(vec3<i32>(u_input.a.x, -27938i, 2147483647i)), true, u_input.a.x | u_input.a.x, 99141u), true, true), vec3<bool>(true, all(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true))), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)))), min(countOneBits(-u_input.a.x << (69566u % 32u)), _wgslsmith_add_i32(~max(-1i, -2147483647i), _wgslsmith_sub_i32(u_input.a.x, -17627i) >> (1u % 32u))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~abs(_wgslsmith_mult_u32(u_input.b & u_input.b, func_1())), 25708u);
    global0 = array<Struct_1, 31>();
    let var_1 = ~select(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 46501u, var_0.x, var_0.x), ~vec4<u32>(4294967295u, 4294967295u, var_0.x, u_input.b))), ~1u, all(vec3<bool>(true, true, true)));
    var var_2 = var_1 == var_1;
    var var_3 = true;
    let var_4 = func_4(select(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_2(global0[_wgslsmith_index_u32(4294967295u, 31u)], any(vec4<bool>(false, true, false, false)), 2147483647i, ~4294967295u)), all(vec2<bool>(true, true)) && true), u_input.a.x);
    var_3 = !(func_2(Struct_1(vec3<i32>(-17133i, var_4.a.x, u_input.a.x)), any(vec3<bool>(true, true, true)), ~(-var_4.a.x), 4294967295u) & true);
    global0 = array<Struct_1, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~vec2<u32>(var_1, 4294967295u)), ~reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1, 26378u), vec2<u32>(var_0.x, var_0.x))), all(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), false))), -68794i);
}

