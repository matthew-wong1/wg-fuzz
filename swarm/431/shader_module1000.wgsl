struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: u32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
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

var<private> global0: u32;

var<private> global1: u32;

var<private> global2: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(vec4<i32>(1i, 1i, -9712i, 0i), vec4<bool>(false, true, false, false), i32(-2147483648), i32(-2147483648)), Struct_3(vec4<i32>(101017i, 1i, -53565i, -19929i), vec4<bool>(false, false, false, false), 35887i, i32(-2147483648)), Struct_3(vec4<i32>(i32(-2147483648), 2147483647i, 0i, 34397i), vec4<bool>(false, false, false, true), 2147483647i, 64661i), Struct_3(vec4<i32>(-24045i, -21610i, i32(-2147483648), i32(-2147483648)), vec4<bool>(true, false, true, false), -23686i, 1i), Struct_3(vec4<i32>(4592i, 4557i, -21953i, 13354i), vec4<bool>(false, false, false, true), 1i, -7090i), Struct_3(vec4<i32>(-51870i, 8701i, -237i, 1i), vec4<bool>(true, false, true, true), i32(-2147483648), 1i), Struct_3(vec4<i32>(i32(-2147483648), 98393i, 31764i, 3414i), vec4<bool>(true, true, false, false), 0i, 1i), Struct_3(vec4<i32>(-30420i, 1i, 21217i, 2147483647i), vec4<bool>(true, false, true, true), -14138i, 29597i), Struct_3(vec4<i32>(13319i, -669i, -29967i, 72408i), vec4<bool>(false, false, true, true), i32(-2147483648), -1i), Struct_3(vec4<i32>(2147483647i, -28884i, -64105i, 12576i), vec4<bool>(true, true, false, true), 1206i, 18812i), Struct_3(vec4<i32>(26412i, 36644i, 1i, 14696i), vec4<bool>(false, true, false, false), -1i, -250i), Struct_3(vec4<i32>(-30451i, 1i, 0i, 1i), vec4<bool>(true, true, false, false), 15500i, 1i), Struct_3(vec4<i32>(2147483647i, i32(-2147483648), 10576i, i32(-2147483648)), vec4<bool>(true, true, true, false), 2147483647i, 2147483647i), Struct_3(vec4<i32>(1i, 39045i, i32(-2147483648), -1010i), vec4<bool>(false, true, true, false), -4977i, -64721i), Struct_3(vec4<i32>(-8318i, -10068i, 2147483647i, 2147483647i), vec4<bool>(false, true, true, false), 21805i, -1i), Struct_3(vec4<i32>(1i, 0i, i32(-2147483648), -1i), vec4<bool>(false, true, true, false), -27594i, -34924i), Struct_3(vec4<i32>(-51239i, 2147483647i, 48824i, 10429i), vec4<bool>(true, true, false, false), 1i, i32(-2147483648)), Struct_3(vec4<i32>(0i, 10966i, -1i, 2147483647i), vec4<bool>(true, false, false, false), -50225i, 1234i), Struct_3(vec4<i32>(-1i, -1i, 64196i, 0i), vec4<bool>(true, false, true, false), -1i, 1i), Struct_3(vec4<i32>(1i, 2147483647i, -33940i, -11699i), vec4<bool>(false, false, false, true), -37137i, 0i), Struct_3(vec4<i32>(1i, -1i, 2680i, 1i), vec4<bool>(true, true, true, true), 34847i, i32(-2147483648)), Struct_3(vec4<i32>(0i, -23812i, i32(-2147483648), 25949i), vec4<bool>(false, true, true, true), 23551i, 58422i), Struct_3(vec4<i32>(3026i, 18605i, -1i, 14885i), vec4<bool>(false, false, true, true), -22510i, 2147483647i), Struct_3(vec4<i32>(-66706i, -33438i, -1i, 2147483647i), vec4<bool>(false, false, true, true), -45341i, i32(-2147483648)), Struct_3(vec4<i32>(3917i, 1i, 31746i, 0i), vec4<bool>(true, true, false, false), i32(-2147483648), i32(-2147483648)), Struct_3(vec4<i32>(-68982i, 9065i, -310i, -786i), vec4<bool>(false, true, false, true), -26433i, 0i), Struct_3(vec4<i32>(1i, -21968i, -1i, 0i), vec4<bool>(false, false, false, false), -4430i, 0i), Struct_3(vec4<i32>(0i, -26886i, -1i, -1i), vec4<bool>(true, true, true, false), 23367i, -36847i), Struct_3(vec4<i32>(1i, 0i, -24279i, -23621i), vec4<bool>(false, true, false, true), 20386i, 1i));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>) -> u32 {
    let var_0 = firstLeadingBit(max(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.c.x, 40579u))) | abs(_wgslsmith_mult_u32(1u, 4294967295u))) << (1u % 32u);
    return u_input.a;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec2<u32>) -> vec2<u32> {
    global0 = abs(_wgslsmith_sub_u32(arg_0, ~u_input.c.x)) ^ 92564u;
    global2 = array<Struct_3, 29>();
    global0 = arg_0;
    global1 = ~(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(~4294967295u, _wgslsmith_mult_u32(1u, 75712u)), arg_0));
    let var_0 = -_wgslsmith_div_i32(abs(-39153i), (i32(-1i) * -1i) << (u_input.a % 32u));
    return _wgslsmith_add_vec2_u32(reverseBits(~(~arg_2) ^ ~vec2<u32>(83544u, arg_2.x)), arg_2);
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_i32(-(~(~vec3<i32>(u_input.d.x, 1i, u_input.d.x))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-36141i, u_input.d.x, -31917i), firstTrailingBit(u_input.d)), u_input.b, ~(-9907i) ^ (17481i ^ u_input.b))), -u_input.d.x, _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c, u_input.c), u_input.c & u_input.c), !vec4<bool>(any(vec4<bool>(true, true, false, false)) && true, true, true, true));
    var_0 = Struct_1(u_input.b, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-reverseBits(u_input.d.zz), ~u_input.d.zz), u_input.b), ~vec2<u32>(u_input.c.x, 72439u), var_0.d);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(_wgslsmith_clamp_u32(func_1(_wgslsmith_dot_vec3_i32(u_input.d, u_input.d), vec3<bool>(true, true, true)), u_input.a, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.c.x, u_input.a, u_input.a)), ~vec3<u32>(0u, 1u, 12473u))), _wgslsmith_dot_vec2_u32(~func_2(4294967295u, u_input.a, vec2<u32>(8425u, u_input.a)), vec2<u32>(~81974u, u_input.a)), 35470u, _wgslsmith_add_u32(1u & u_input.c.x, _wgslsmith_mod_u32(4294967295u ^ u_input.a, u_input.a)));
    let var_1 = global2[_wgslsmith_index_u32(var_0.x & var_0.x, 29u)];
    let var_2 = ~u_input.c.x;
    global1 = _wgslsmith_add_u32(func_2(~8822u, _wgslsmith_add_u32(func_3(), _wgslsmith_dot_vec3_u32(var_0.xzz, vec3<u32>(var_0.x, u_input.a, 0u))), u_input.c).x ^ ~(min(var_0.x, 4197u) >> ((var_0.x & 31736u) % 32u)), ~max(_wgslsmith_clamp_u32(var_0.x, _wgslsmith_mult_u32(var_0.x, var_2), ~13818u), ~_wgslsmith_mod_u32(var_2, var_2)));
    let var_3 = Struct_4(select(~((u_input.a << (u_input.c.x % 32u)) & 1u), func_2(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 0u, var_0.x, u_input.c.x), max(var_0, var_0)), 1u, vec2<u32>(func_1(u_input.b, vec3<bool>(false, var_1.b.x, var_1.b.x)), var_0.x)).x, var_1.b.x == (true != !var_1.b.x)), false, u_input.c.x, 19039u, _wgslsmith_f_op_f32(f32(-1f) * -259f));
    global1 = 169509u;
    let var_4 = Struct_3(-vec4<i32>(~u_input.b, abs(u_input.d.x), u_input.d.x, firstLeadingBit(var_1.a.x) & firstTrailingBit(-1i)), var_1.b, ~(-var_1.c), -1i);
    global2 = array<Struct_3, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(~select(func_2(~var_0.x, _wgslsmith_mult_u32(var_3.a, var_3.c), vec2<u32>(u_input.c.x, var_3.a)), ~(~vec2<u32>(var_3.c, var_0.x)), select(vec2<bool>(false, var_4.b.x), vec2<bool>(var_3.b, true), true)), -13493i);
}

