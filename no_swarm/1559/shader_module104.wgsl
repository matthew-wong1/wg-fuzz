struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: array<vec2<f32>, 20>;

var<private> global2: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(vec4<i32>(25648i, -3560i, 0i, i32(-2147483648)), 1613f, vec3<bool>(false, false, true), 4294967295u)), Struct_2(Struct_1(vec4<i32>(34325i, -1i, -1i, -28655i), -506f, vec3<bool>(true, false, true), 0u)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 35758i, 1i), 2163f, vec3<bool>(true, true, true), 733u)), Struct_2(Struct_1(vec4<i32>(2147483647i, 9990i, 29517i, -5246i), 276f, vec3<bool>(false, true, false), 25709u)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 0i, 23746i, i32(-2147483648)), 172f, vec3<bool>(true, true, false), 1u)), Struct_2(Struct_1(vec4<i32>(0i, -9420i, -1i, 0i), -1083f, vec3<bool>(false, true, true), 4294967295u)), Struct_2(Struct_1(vec4<i32>(0i, -6593i, -43662i, -5413i), 116f, vec3<bool>(true, false, false), 38084u)), Struct_2(Struct_1(vec4<i32>(-23959i, 2147483647i, 0i, 1i), 1250f, vec3<bool>(false, true, true), 21270u)), Struct_2(Struct_1(vec4<i32>(1i, 2147483647i, 2147483647i, -1i), 359f, vec3<bool>(false, false, true), 7179u)), Struct_2(Struct_1(vec4<i32>(14358i, 4642i, 1i, 33126i), -1000f, vec3<bool>(true, true, true), 0u)), Struct_2(Struct_1(vec4<i32>(78915i, -18276i, 25502i, -8356i), -1543f, vec3<bool>(true, true, true), 5850u)), Struct_2(Struct_1(vec4<i32>(47017i, 1i, 1i, -36832i), 840f, vec3<bool>(true, true, true), 13215u)), Struct_2(Struct_1(vec4<i32>(-1i, -24957i, 0i, -4121i), 636f, vec3<bool>(false, true, false), 57027u)), Struct_2(Struct_1(vec4<i32>(14434i, 21178i, i32(-2147483648), i32(-2147483648)), -1788f, vec3<bool>(true, true, false), 4294967295u)), Struct_2(Struct_1(vec4<i32>(63646i, 32137i, 29726i, i32(-2147483648)), 1426f, vec3<bool>(true, false, false), 4294967295u)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: i32) -> vec3<bool> {
    let var_0 = !vec2<bool>((min(arg_1, arg_1) ^ -arg_1) < (-2147483647i >> (_wgslsmith_mod_u32(u_input.a.x, 4294967295u) % 32u)), true);
    let var_1 = !vec4<bool>(!select(true, !var_0.x, true), ((18053u << (u_input.b % 32u)) >> (firstTrailingBit(u_input.a.x) % 32u)) > 20516u, !all(select(var_0, vec2<bool>(false, var_0.x), false)), var_0.x);
    global1 = array<vec2<f32>, 20>();
    global2 = array<Struct_2, 15>();
    global2 = array<Struct_2, 15>();
    return var_1.xxy;
}

fn func_2() -> vec3<bool> {
    global1 = array<vec2<f32>, 20>();
    global0 = array<Struct_1, 12>();
    let var_0 = all(vec3<bool>(true, !(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 0i, 25294i), vec4<i32>(-2147483647i, -36035i, 9407i, 33490i)) < 32381i), true));
    let var_1 = Struct_1(~select(abs(select(vec4<i32>(1i, 1i, 2147483647i, -61518i), vec4<i32>(33189i, 2147483647i, -40203i, 33495i), false)), vec4<i32>(firstLeadingBit(1011i), ~0i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, 0i, -2147483647i), vec4<i32>(-6904i, -2147483647i, -2147483647i, -28893i)), _wgslsmith_clamp_i32(26984i, 0i, -30372i)), true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-284f, -379f) + _wgslsmith_f_op_f32(2681f - 1524f)))))), select(vec3<bool>(any(vec4<bool>(false, false, var_0, false)), true, !var_0), vec3<bool>(true, true, var_0), func_3(true, _wgslsmith_dot_vec3_i32(vec3<i32>(-4331i, -5559i, -1i) >> (u_input.a % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i)))), max(reverseBits(u_input.b), u_input.a.x) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), max(vec2<u32>(u_input.b, 71109u), u_input.a.yy)) % 32u));
    var var_2 = Struct_2(var_1);
    return !(!(!var_2.a.c));
}

fn func_1() -> Struct_1 {
    return global0[_wgslsmith_index_u32(select((u_input.b >> (u_input.b % 32u)) ^ u_input.b, ~firstTrailingBit(0u), any(func_2()) || true), 12u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 15>();
    let var_0 = Struct_1(vec4<i32>(-(~0i), _wgslsmith_add_i32(1671i, ~_wgslsmith_clamp_i32(1i, 1i, -1i)), ~(~1i), 12865i), -1328f, vec3<bool>(true, true, true), ~_wgslsmith_sub_u32(u_input.b, abs(u_input.b)));
    var var_1 = Struct_2(func_1());
    let var_2 = var_0.c;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2291f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1099f)))) - var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.a.zx, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.b, var_0.b))), -278f)), (select(u_input.b, _wgslsmith_clamp_u32(34852u, var_1.a.d, 0u), false || var_1.a.c.x) | countOneBits(u_input.a.x)) | max(_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_0.d, 11264u), ~47159u, ~25774u), countOneBits(reverseBits(var_1.a.d))), var_0.a.x, var_0.b);
}

