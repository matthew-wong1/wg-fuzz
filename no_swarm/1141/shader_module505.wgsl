struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: vec3<f32>;

var<private> global2: vec3<bool>;

var<private> global3: array<f32, 1>;

var<private> global4: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(1u, vec4<i32>(-61574i, 0i, 0i, 14429i), vec3<i32>(0i, i32(-2147483648), -30340i), 2147483647i), Struct_1(26758u, vec4<i32>(10351i, 1i, 27175i, -1i), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), 50265i), Struct_1(88867u, vec4<i32>(-1299i, -1i, -11683i, 46562i), vec3<i32>(25351i, 362i, 6502i), -1i), Struct_1(0u, vec4<i32>(31635i, -20964i, -1i, 27887i), vec3<i32>(-3675i, 0i, -86588i), 13845i), Struct_1(4294967295u, vec4<i32>(-1i, 11123i, 17514i, 24063i), vec3<i32>(4430i, 18347i, -20828i), -6052i), Struct_1(16539u, vec4<i32>(i32(-2147483648), -25916i, 0i, -12777i), vec3<i32>(0i, -24089i, 2147483647i), -40932i), Struct_1(4294967295u, vec4<i32>(1i, -1i, -5712i, 1i), vec3<i32>(35726i, i32(-2147483648), 2147483647i), 6246i), Struct_1(4294967295u, vec4<i32>(-1i, 1i, -1i, i32(-2147483648)), vec3<i32>(0i, 15489i, 1i), 4071i), Struct_1(28071u, vec4<i32>(4177i, 2132i, 64941i, 7602i), vec3<i32>(-38099i, -17014i, 37304i), 2147483647i), Struct_1(48751u, vec4<i32>(2147483647i, -1i, 1i, -2865i), vec3<i32>(-1i, 0i, 2147483647i), -24369i), Struct_1(51661u, vec4<i32>(-332i, -14119i, 78373i, -493i), vec3<i32>(6072i, 2147483647i, 0i), -1i), Struct_1(14756u, vec4<i32>(2147483647i, 13351i, 0i, 2185i), vec3<i32>(36481i, 2147483647i, 33308i), 2147483647i), Struct_1(19489u, vec4<i32>(2147483647i, -195i, 0i, -47176i), vec3<i32>(48626i, 2147483647i, 9631i), i32(-2147483648)), Struct_1(53340u, vec4<i32>(-19782i, 20437i, -9247i, -916i), vec3<i32>(i32(-2147483648), -33368i, 40036i), 31847i), Struct_1(14942u, vec4<i32>(0i, -60636i, 2147483647i, -45566i), vec3<i32>(18319i, 42189i, i32(-2147483648)), 2147483647i), Struct_1(0u, vec4<i32>(0i, 15157i, 1i, 17741i), vec3<i32>(2147483647i, i32(-2147483648), -21259i), 19255i), Struct_1(4294967295u, vec4<i32>(12467i, -10475i, 31468i, 2147483647i), vec3<i32>(-1i, -83093i, 15916i), 53582i), Struct_1(36204u, vec4<i32>(i32(-2147483648), 7877i, 0i, 32870i), vec3<i32>(1i, 11830i, 0i), 0i), Struct_1(1u, vec4<i32>(1i, 77807i, -7956i, 2147483647i), vec3<i32>(-31614i, 0i, 16547i), 34540i), Struct_1(4294967295u, vec4<i32>(1i, 27496i, -8106i, 1i), vec3<i32>(1i, -1i, 1i), 79397i), Struct_1(0u, vec4<i32>(-19684i, -30734i, 2147483647i, -1i), vec3<i32>(-58649i, -6788i, -1i), 0i), Struct_1(1u, vec4<i32>(16041i, 0i, 30925i, 24022i), vec3<i32>(-1i, 74818i, 0i), 4674i), Struct_1(4294967295u, vec4<i32>(-17282i, 1i, -78157i, -1i), vec3<i32>(-1i, 0i, 2147483647i), i32(-2147483648)), Struct_1(83239u, vec4<i32>(2147483647i, 0i, i32(-2147483648), -13223i), vec3<i32>(1i, 1i, -35061i), -1i), Struct_1(28399u, vec4<i32>(-3928i, 28736i, -3468i, i32(-2147483648)), vec3<i32>(-25274i, -13572i, -44721i), 32550i), Struct_1(4294967295u, vec4<i32>(46336i, 1i, 70100i, -12687i), vec3<i32>(-1i, 2147483647i, 0i), -16104i), Struct_1(0u, vec4<i32>(-41093i, 0i, -1i, -1231i), vec3<i32>(51917i, i32(-2147483648), -1i), -1i), Struct_1(4294967295u, vec4<i32>(-5955i, 2147483647i, i32(-2147483648), 51267i), vec3<i32>(32832i, 15103i, -1i), 2147483647i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = !(!select(vec4<bool>(true, !global2.x, true, global2.x), vec4<bool>(global2.x, all(vec3<bool>(global2.x, false, global2.x)), global2.x, true), select(!vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(true, true, true, true), global2.x)));
    let var_1 = arg_0.b;
    global0 = array<Struct_1, 17>();
    let var_2 = true;
    global2 = !select(vec3<bool>(var_0.x, true, var_2), !vec3<bool>(any(vec4<bool>(var_2, true, global2.x, var_2)), global2.x, false), !select(var_0.yyy, var_0.yzx, global2.x));
    return ~u_input.d.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool) -> Struct_1 {
    var var_0 = all(vec3<bool>(arg_1.x, global2.x || false, any(vec4<bool>(true, global2.x | true, false || arg_2, global2.x))));
    let var_1 = global0[_wgslsmith_index_u32(~u_input.d.x, 17u)];
    global0 = array<Struct_1, 17>();
    global4 = array<Struct_1, 28>();
    var_0 = false;
    return Struct_1(func_3(global0[_wgslsmith_index_u32(arg_0.a, 17u)]), var_1.b, firstTrailingBit(var_1.b.xyz), min(arg_0.c.x, max(var_1.d, arg_0.d)));
}

fn func_1(arg_0: vec3<u32>, arg_1: bool) -> vec3<i32> {
    let var_0 = -vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a << (u_input.b % vec2<u32>(32u)), -vec2<i32>(22454i, u_input.c)), u_input.a | abs(u_input.a)), 36050i);
    let var_1 = abs(max(vec2<i32>(~(-9163i), 1i) | abs(vec2<i32>(-75198i, var_0.x)), vec2<i32>(u_input.a.x & ~41611i, i32(-1i) * -1i)));
    var var_2 = func_2(global4[_wgslsmith_index_u32(~abs(~countOneBits(4294967295u)), 28u)], select(global2.yx, vec2<bool>(arg_1, -456f != _wgslsmith_div_f32(global3[_wgslsmith_index_u32(4294967295u, 1u)], global3[_wgslsmith_index_u32(u_input.d.x, 1u)])), global2.zz), select(true, true || (_wgslsmith_f_op_f32(-global1.x) <= global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.zx, vec2<u32>(arg_0.x, 15147u)), 1u)]), true));
    var var_3 = ~vec2<i32>(1i, var_2.b.x);
    let var_4 = global0[_wgslsmith_index_u32(~50274u, 17u)];
    return ~var_4.b.ywz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x & u_input.c;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.zz - _wgslsmith_f_op_vec2_f32(-global1.xy)))));
    var var_2 = !any(vec2<bool>(global2.x & !global2.x, false));
    let var_3 = Struct_1(_wgslsmith_div_u32(13740u, 5942u), vec4<i32>(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, 19371i, u_input.a.x, u_input.c), ~vec4<i32>(u_input.a.x, -1i, u_input.a.x, -30528i))), max(u_input.a.x, _wgslsmith_add_i32(u_input.c, _wgslsmith_div_i32(u_input.c, 59395i))), -2147483647i, ~max(1i >> (1u % 32u), u_input.a.x)), func_1(u_input.d.wxw, global2.x) | (vec3<i32>(-1i) * -abs(vec3<i32>(1i, u_input.c, 33184i))), ~(~19903i));
    var var_4 = func_2(var_3, vec2<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -632f) > var_1.x), global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, -vec2<i32>(var_3.d, -24605i), vec3<i32>(reverseBits(-_wgslsmith_sub_i32(49833i, var_3.b.x)), var_3.d, -2147483647i), 43298u, firstLeadingBit(vec3<u32>(~(~0u), max(33179u, 4294967295u), 55940u)));
}

