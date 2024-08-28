struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec4<u32>,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 26>;

var<private> global1: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(vec3<i32>(-1i, 1i, 21950i), -59212i, vec2<u32>(38897u, 1u)), Struct_4(vec3<i32>(1i, -1i, 68142i), -3040i, vec2<u32>(13153u, 0u)), Struct_4(vec3<i32>(29825i, 1i, 10039i), 10154i, vec2<u32>(4294967295u, 886u)), Struct_4(vec3<i32>(-12026i, 12101i, 1i), -27732i, vec2<u32>(0u, 1u)), Struct_4(vec3<i32>(-7572i, 15994i, 0i), 597i, vec2<u32>(0u, 4464u)), Struct_4(vec3<i32>(-1i, -5083i, 2147483647i), 0i, vec2<u32>(0u, 14895u)), Struct_4(vec3<i32>(22566i, 0i, 33743i), 18866i, vec2<u32>(68731u, 1u)), Struct_4(vec3<i32>(i32(-2147483648), 1i, -29087i), 2147483647i, vec2<u32>(37337u, 4294967295u)), Struct_4(vec3<i32>(i32(-2147483648), 0i, -1i), -17890i, vec2<u32>(4294967295u, 0u)), Struct_4(vec3<i32>(-20555i, 32256i, 0i), 0i, vec2<u32>(1u, 10620u)), Struct_4(vec3<i32>(i32(-2147483648), 40516i, i32(-2147483648)), 3237i, vec2<u32>(32151u, 4294967295u)), Struct_4(vec3<i32>(35967i, -74205i, -1i), 17762i, vec2<u32>(42136u, 0u)), Struct_4(vec3<i32>(-39807i, -38196i, 2147483647i), -22074i, vec2<u32>(1u, 1u)), Struct_4(vec3<i32>(1i, 2147483647i, 33564i), 32795i, vec2<u32>(14225u, 0u)), Struct_4(vec3<i32>(i32(-2147483648), -1i, -29511i), -8798i, vec2<u32>(4294967295u, 78969u)), Struct_4(vec3<i32>(29377i, 0i, 1i), -35097i, vec2<u32>(33962u, 77376u)), Struct_4(vec3<i32>(12583i, -1i, 0i), -63658i, vec2<u32>(4294967295u, 1u)), Struct_4(vec3<i32>(18354i, -7982i, 23174i), 18992i, vec2<u32>(0u, 1u)));

var<private> global2: f32 = -1136f;

var<private> global3: array<f32, 1> = array<f32, 1>(543f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_4) -> vec3<bool> {
    let var_0 = Struct_4(_wgslsmith_sub_vec3_i32(vec3<i32>(-12040i, -23983i ^ arg_0.b.x, abs(i32(-1i) * -26356i)), vec3<i32>(~arg_0.b.x, 29848i, _wgslsmith_mod_i32(-2147483647i, -arg_0.b.x))), arg_3.a.x, vec2<u32>(~_wgslsmith_add_u32(4294967295u, 0u ^ arg_2), u_input.a));
    return arg_0.a.a;
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(select(func_3(Struct_3(Struct_1(vec3<bool>(true, false, true), false, vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), vec2<bool>(false, true), vec3<f32>(global3[_wgslsmith_index_u32(u_input.a, 1u)], global3[_wgslsmith_index_u32(u_input.a, 1u)], -190f)), ~global0[_wgslsmith_index_u32(4294967295u, 26u)], global3[_wgslsmith_index_u32(u_input.a, 1u)], Struct_1(vec3<bool>(true, false, false), false, vec4<u32>(19957u, 7377u, u_input.a, u_input.a), vec2<bool>(true, false), vec3<f32>(global3[_wgslsmith_index_u32(u_input.a, 1u)], -1878f, global3[_wgslsmith_index_u32(u_input.a, 1u)])), vec2<u32>(u_input.a, u_input.a) & vec2<u32>(63583u, 0u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(76086u, 1u)], global3[_wgslsmith_index_u32(u_input.a, 1u)], global3[_wgslsmith_index_u32(u_input.a, 1u)]))), u_input.a, Struct_4(vec3<i32>(0i, 1i, 1i), ~10960i, _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.a, 1u)))), func_3(Struct_3(Struct_1(vec3<bool>(true, false, false), true, vec4<u32>(u_input.a, 0u, 46073u, 66546u), vec2<bool>(true, true), vec3<f32>(-1723f, global3[_wgslsmith_index_u32(u_input.a, 1u)], 643f)), -global0[_wgslsmith_index_u32(4294967295u, 26u)], _wgslsmith_f_op_f32(trunc(-1000f)), Struct_1(vec3<bool>(true, true, true), true, vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec2<bool>(false, false), vec3<f32>(global3[_wgslsmith_index_u32(u_input.a, 1u)], 137f, global3[_wgslsmith_index_u32(5454u, 1u)])), ~vec2<u32>(u_input.a, 4294967295u)), vec3<f32>(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.a, 1u)], 568f), _wgslsmith_f_op_f32(abs(1000f)), global3[_wgslsmith_index_u32(u_input.a, 1u)]), 22589u, global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, 4294967295u), 18u)]), !vec3<bool>(58383u < u_input.a, func_3(Struct_3(Struct_1(vec3<bool>(false, true, false), true, vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec2<bool>(false, false), vec3<f32>(global3[_wgslsmith_index_u32(u_input.a, 1u)], -444f, -137f)), vec3<i32>(4026i, -1i, -53180i), global3[_wgslsmith_index_u32(0u, 1u)], Struct_1(vec3<bool>(false, true, true), true, vec4<u32>(18765u, u_input.a, u_input.a, 0u), vec2<bool>(true, false), vec3<f32>(global3[_wgslsmith_index_u32(0u, 1u)], global3[_wgslsmith_index_u32(4294967295u, 1u)], global3[_wgslsmith_index_u32(u_input.a, 1u)])), vec2<u32>(0u, 4294967295u)), vec3<f32>(-1110f, global3[_wgslsmith_index_u32(u_input.a, 1u)], global3[_wgslsmith_index_u32(14469u, 1u)]), u_input.a, Struct_4(global0[_wgslsmith_index_u32(0u, 26u)], -6319i, vec2<u32>(37285u, 1u))).x, all(vec3<bool>(true, false, false)))), any(vec3<bool>(true, true, true)), vec4<u32>(~(~_wgslsmith_sub_u32(u_input.a, u_input.a)), _wgslsmith_div_u32(~34892u, 4294967295u), ~firstLeadingBit(u_input.a), ~abs(abs(u_input.a))), !select(!func_3(Struct_3(Struct_1(vec3<bool>(false, true, false), false, vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec2<bool>(false, true), vec3<f32>(1512f, 405f, -1000f)), vec3<i32>(44515i, -2147483647i, -2147483647i), global3[_wgslsmith_index_u32(u_input.a, 1u)], Struct_1(vec3<bool>(false, true, true), true, vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), vec2<bool>(false, true), vec3<f32>(1222f, global3[_wgslsmith_index_u32(u_input.a, 1u)], global3[_wgslsmith_index_u32(u_input.a, 1u)])), vec2<u32>(21921u, 17719u)), vec3<f32>(-105f, global3[_wgslsmith_index_u32(54998u, 1u)], 573f), u_input.a, Struct_4(global0[_wgslsmith_index_u32(u_input.a, 26u)], 2147483647i, vec2<u32>(u_input.a, 0u))).yx, vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, 367f, global3[_wgslsmith_index_u32(u_input.a, 1u)]))) - vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 1u)], global3[_wgslsmith_index_u32(0u, 1u)], -1090f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(1u, 1u)], global3[_wgslsmith_index_u32(51279u, 1u)], 2183f) - vec3<f32>(-326f, 545f, -568f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(114941u, 1u)], 1198f, 1840f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-111f, -3098f, 670f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(995f, 1063f, global3[_wgslsmith_index_u32(27768u, 1u)]))))))));
    global0 = array<vec3<i32>, 26>();
    let var_1 = reverseBits(~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(57618u, var_0.c.x) >> (var_0.c.x % 32u), 26u)]);
    var var_2 = Struct_2(!(!select(select(vec4<bool>(var_0.d.x, false, var_0.a.x, var_0.d.x), vec4<bool>(false, false, false, var_0.d.x), false), select(vec4<bool>(var_0.a.x, false, false, true), vec4<bool>(true, true, false, var_0.a.x), false), vec4<bool>(false, var_0.b, false, true))), var_0, Struct_1(var_0.a, (_wgslsmith_mod_u32(4294967295u, 1901u) != min(1u, var_0.c.x)) && false, vec4<u32>(u_input.a, ~9859u, var_0.c.x, 29552u), vec2<bool>(var_0.a.x == any(vec4<bool>(false, var_0.b, var_0.b, false)), !(-1120f != var_0.e.x)), _wgslsmith_div_vec3_f32(vec3<f32>(783f, -1860f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a, 1u)])), _wgslsmith_f_op_vec3_f32(var_0.e - _wgslsmith_f_op_vec3_f32(-var_0.e)))), var_0, var_0.c);
    let var_3 = Struct_2(select(!vec4<bool>(!var_2.c.d.x, var_1.x == -2147483647i, u_input.a < 11422u, !var_2.a.x), !var_2.a, !(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, -1i, 1i), var_1) >= firstLeadingBit(var_1.x))), var_0, Struct_1(!select(var_0.a, vec3<bool>(var_0.d.x, true, var_2.b.d.x), var_2.d.b), false, var_0.c << (firstLeadingBit(~var_2.c.c) % vec4<u32>(32u)), vec2<bool>(var_0.d.x, true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_2.b.e, vec3<f32>(var_2.d.e.x, global3[_wgslsmith_index_u32(0u, 1u)], -1396f), true)) - var_2.b.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.d.e) * _wgslsmith_f_op_vec3_f32(var_0.e + vec3<f32>(367f, 367f, var_0.e.x))))), Struct_1(vec3<bool>(all(vec3<bool>(true, true, var_2.a.x)), false, !all(var_2.a.yy)), func_3(Struct_3(var_2.c, var_1, 1330f, Struct_1(vec3<bool>(var_2.d.b, false, var_0.d.x), true, vec4<u32>(78723u, 0u, var_2.c.c.x, var_2.d.c.x), var_2.d.a.xy, var_2.b.e), _wgslsmith_mult_vec2_u32(var_0.c.wx, vec2<u32>(1u, var_0.c.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(248f, 423f, var_2.c.e.x), vec3<f32>(1257f, global3[_wgslsmith_index_u32(37801u, 1u)], -1237f), var_0.a)), _wgslsmith_f_op_vec3_f32(-var_2.d.e), !var_0.d.x)), var_2.e.x, Struct_4(vec3<i32>(var_1.x, 2147483647i, -9956i), _wgslsmith_clamp_i32(-2147483647i, var_1.x, -26693i), var_0.c.yy << (var_2.e.xz % vec2<u32>(32u)))).x, var_0.c, select(select(!vec2<bool>(true, var_0.b), !var_2.d.a.zx, vec2<bool>(true, true)), select(var_2.b.a.zz, !var_0.a.yy, var_0.d), vec2<bool>(var_0.c.x != 44931u, any(vec4<bool>(false, var_0.d.x, true, false)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.e), vec3<f32>(_wgslsmith_f_op_f32(1687f + -531f), _wgslsmith_f_op_f32(-var_2.d.e.x), _wgslsmith_f_op_f32(f32(-1f) * -2077f)))), reverseBits(~_wgslsmith_add_vec4_u32(~vec4<u32>(17800u, var_0.c.x, 0u, 1u), var_2.d.c)));
    return func_3(Struct_3(Struct_1(var_2.b.a, false, ~vec4<u32>(21377u, 102256u, var_0.c.x, var_3.e.x) << (firstLeadingBit(var_2.e) % vec4<u32>(32u)), select(vec2<bool>(var_0.a.x, false), select(var_2.a.ww, var_0.d, var_0.d), !vec2<bool>(true, var_2.d.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-632f, 1268f, var_3.d.e.x))), firstLeadingBit(_wgslsmith_mod_vec3_i32(global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(24987u, 26u)]) & (global0[_wgslsmith_index_u32(var_0.c.x, 26u)] & vec3<i32>(-3542i, -46322i, -2147483647i))), var_2.b.e.x, var_2.d, firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec4_u32(var_3.c.c, vec4<u32>(71190u, 81000u, u_input.a, var_2.c.c.x)), 43217u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_3.d.e.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.b.e.x, var_2.c.e.x))), var_2.c.e.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1005f, 487f, global3[_wgslsmith_index_u32(u_input.a, 1u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1993f, 994f, var_2.c.e.x)))) * var_3.d.e)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(firstLeadingBit(84844u), u_input.a), 4294967295u | var_3.b.c.x) << (_wgslsmith_mod_u32(~abs(22709u), abs(~104327u)) % 32u), Struct_4(-(-vec3<i32>(1i, var_1.x, 2147483647i) << (vec3<u32>(var_0.c.x, var_2.e.x, var_2.e.x) % vec3<u32>(32u))), abs(var_1.x << (var_3.e.x % 32u)), ~vec2<u32>(_wgslsmith_add_u32(0u, var_2.c.c.x), var_3.d.c.x & 1u)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(~1i >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.a, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, 0u)) % 32u), abs(select(11766i, 0i, true)) << ((firstTrailingBit(4294967295u) ^ ~arg_1.e.x) % 32u)), abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(69565u, 26u)] & vec3<i32>(1i, 0i, -1i), -global0[_wgslsmith_index_u32(92703u, 26u)]), _wgslsmith_sub_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, -22292i), global0[_wgslsmith_index_u32(u_input.a, 26u)])))));
    global2 = _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_1.c.c.x, 1u, countOneBits(firstLeadingBit(firstLeadingBit(u_input.a)))), 1u)]);
    global1 = array<Struct_4, 18>();
    let var_1 = arg_1.b;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(arg_1.e.x, 1u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(abs(4294967295u), 1u)])))) * -1962f);
    return arg_1;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<i32>) -> vec4<bool> {
    var var_0 = func_4(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), !func_2()), Struct_2(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false))), Struct_1(func_3(Struct_3(Struct_1(vec3<bool>(true, true, true), false, vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec2<bool>(true, false), vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), global0[_wgslsmith_index_u32(4294967295u, 26u)], -526f, Struct_1(vec3<bool>(false, true, true), false, vec4<u32>(1u, 1u, 4294967295u, 17280u), vec2<bool>(true, true), vec3<f32>(global3[_wgslsmith_index_u32(0u, 1u)], arg_0.x, 1655f)), vec2<u32>(u_input.a, 4294967295u)), vec3<f32>(-682f, global3[_wgslsmith_index_u32(63864u, 1u)], -1919f), max(45605u, u_input.a), global1[_wgslsmith_index_u32(u_input.a, 18u)]), func_3(Struct_3(Struct_1(vec3<bool>(true, false, false), false, vec4<u32>(4294967295u, u_input.a, u_input.a, 32509u), vec2<bool>(true, true), vec3<f32>(arg_0.x, global3[_wgslsmith_index_u32(0u, 1u)], arg_0.x)), vec3<i32>(arg_1.x, 45400i, arg_1.x), 163f, Struct_1(vec3<bool>(true, false, true), false, vec4<u32>(16489u, 22527u, 54489u, u_input.a), vec2<bool>(true, false), arg_0), vec2<u32>(0u, u_input.a)), vec3<f32>(global3[_wgslsmith_index_u32(u_input.a, 1u)], arg_0.x, -1351f), u_input.a, global1[_wgslsmith_index_u32(u_input.a, 18u)]).x & true, _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), ~vec4<u32>(4294967295u, 7793u, 39225u, u_input.a)), vec2<bool>(true, all(vec3<bool>(true, false, true))), arg_0), Struct_1(vec3<bool>(false, true, all(vec2<bool>(false, true))), true, abs(vec4<u32>(u_input.a, 0u, 19283u, 1u)) & vec4<u32>(4856u, u_input.a, 11986u, 4294967295u), func_3(Struct_3(Struct_1(vec3<bool>(false, false, true), false, vec4<u32>(u_input.a, 1u, 0u, u_input.a), vec2<bool>(true, false), vec3<f32>(arg_0.x, global3[_wgslsmith_index_u32(u_input.a, 1u)], arg_0.x)), vec3<i32>(1i, arg_1.x, arg_1.x), 255f, Struct_1(vec3<bool>(true, true, false), true, vec4<u32>(u_input.a, 0u, 1u, 4294967295u), vec2<bool>(true, true), arg_0), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_div_vec3_f32(arg_0, arg_0), max(u_input.a, u_input.a), global1[_wgslsmith_index_u32(u_input.a, 18u)]).zz, vec3<f32>(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(14255u, 1u)], 2127f)), 518f, 1f)), Struct_1(func_2(), true, _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 64144u, u_input.a, 4294967295u) & vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), countOneBits(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), func_2().xx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.x, -1148f, arg_0.x))))), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.a, u_input.a), _wgslsmith_mod_u32(85555u, u_input.a), 8774u, _wgslsmith_dot_vec4_u32(vec4<u32>(52862u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 14427u))), vec4<u32>(~u_input.a, u_input.a, u_input.a, reverseBits(1u)))));
    return vec4<bool>(max(arg_1.x, _wgslsmith_add_i32(arg_1.x >> (60892u % 32u), -34490i)) >= arg_1.x, false, !all(select(vec4<bool>(var_0.d.a.x, var_0.a.x, var_0.a.x, false), select(var_0.a, var_0.a, vec4<bool>(var_0.b.b, var_0.d.b, var_0.c.a.x, var_0.b.b)), var_0.d.d.x || false)), all(var_0.c.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 1u)], 212f, global3[_wgslsmith_index_u32(16089u, 1u)], global3[_wgslsmith_index_u32(4294967295u, 1u)]) - vec4<f32>(-1000f, -917f, global3[_wgslsmith_index_u32(20072u, 1u)], 1000f)) - vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 1u)], global3[_wgslsmith_index_u32(7241u, 1u)], global3[_wgslsmith_index_u32(18048u, 1u)], 725f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 1u)], global3[_wgslsmith_index_u32(u_input.a, 1u)], -1948f, global3[_wgslsmith_index_u32(1u, 1u)])))))));
    global2 = -442f;
    var var_1 = u_input.a;
    var_1 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~select(1u, ~u_input.a, any(vec4<bool>(false, true, false, false))), 1u, ~max(u_input.a, u_input.a) & 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a & (77846u << (u_input.a % 32u)), _wgslsmith_add_u32(~27493u, u_input.a)), vec3<u32>(86719u, 21097u, ~4294967295u)), ~1u);
    var var_2 = select(vec3<bool>(true, all(func_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1714f, 233f, global3[_wgslsmith_index_u32(58651u, 1u)]), var_0.ywz)), vec3<i32>(-2147483647i, -43270i, 2147483647i))), func_2().x), func_3(Struct_3(Struct_1(vec3<bool>(true, true, true), select(true, true, false), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, 101751u, 1u) % vec4<u32>(32u)), vec2<bool>(true, true), vec3<f32>(var_0.x, 1321f, global3[_wgslsmith_index_u32(60998u, 1u)])), select(global0[_wgslsmith_index_u32(u_input.a, 26u)], ~vec3<i32>(8803i, 5870i, -8368i), vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 131f) + global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), 1u)]), Struct_1(func_1(vec3<f32>(857f, global3[_wgslsmith_index_u32(u_input.a, 1u)], global3[_wgslsmith_index_u32(0u, 1u)]), vec3<i32>(-24850i, 15801i, 2147483647i)).ywy, true, ~vec4<u32>(u_input.a, u_input.a, u_input.a, 21802u), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-476f, var_0.x, var_0.x) + var_0.wxx)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, u_input.a))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(var_0.zzz)))), _wgslsmith_f_op_vec3_f32(var_0.wzy * _wgslsmith_div_vec3_f32(vec3<f32>(513f, 1547f, 318f), vec3<f32>(var_0.x, var_0.x, var_0.x))), func_3(Struct_3(Struct_1(vec3<bool>(true, false, false), true, vec4<u32>(21515u, 4294967295u, u_input.a, 1u), vec2<bool>(true, true), var_0.xxz), vec3<i32>(9681i, 2147483647i, -12154i), global3[_wgslsmith_index_u32(44473u, 1u)], Struct_1(vec3<bool>(true, true, true), true, vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u), vec2<bool>(true, false), var_0.wxw), vec2<u32>(140087u, 1u)), _wgslsmith_div_vec3_f32(vec3<f32>(1241f, 313f, global3[_wgslsmith_index_u32(u_input.a, 1u)]), var_0.wzw), u_input.a & u_input.a, Struct_4(vec3<i32>(-1i, 20778i, -1i), 7180i, vec2<u32>(u_input.a, u_input.a))))), 1u, global1[_wgslsmith_index_u32(1u, 18u)]), func_2());
    let var_3 = Struct_3(Struct_1(func_4(!(!vec3<bool>(var_2.x, true, true)), Struct_2(vec4<bool>(true, false, false, var_2.x), Struct_1(vec3<bool>(false, var_2.x, true), true, vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), var_2.xz, vec3<f32>(global3[_wgslsmith_index_u32(u_input.a, 1u)], -286f, 809f)), Struct_1(vec3<bool>(var_2.x, var_2.x, var_2.x), false, vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a), vec2<bool>(true, true), var_0.wxz), func_4(vec3<bool>(true, true, true), Struct_2(vec4<bool>(var_2.x, false, true, var_2.x), Struct_1(vec3<bool>(var_2.x, true, var_2.x), false, vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), var_2.zy, var_0.xxx), Struct_1(vec3<bool>(var_2.x, var_2.x, true), false, vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), var_2.yx, var_0.yzx), Struct_1(vec3<bool>(false, false, true), var_2.x, vec4<u32>(54522u, 0u, u_input.a, 22995u), var_2.zy, var_0.ywz), vec4<u32>(u_input.a, 1u, 76701u, u_input.a))).b, vec4<u32>(u_input.a, u_input.a, u_input.a, 1u) >> (vec4<u32>(1u, 4294967295u, 4294967295u, 9324u) % vec4<u32>(32u)))).c.a, false, firstLeadingBit(~(vec4<u32>(u_input.a, 1u, u_input.a, 11627u) | vec4<u32>(u_input.a, 904u, u_input.a, 0u))), func_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(var_0.yxw, var_0.wwx)))), vec3<i32>(i32(-1i) * -14860i, -36370i, 1i)).yx, vec3<f32>(_wgslsmith_div_f32(-2251f, _wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(max(34755u, u_input.a), 1u)]), global3[_wgslsmith_index_u32(~u_input.a, 1u)])), global0[_wgslsmith_index_u32(~u_input.a, 26u)] >> (~(~vec3<u32>(45643u, u_input.a, 1u)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-114f * global3[_wgslsmith_index_u32(4294967295u, 1u)]), Struct_1(vec3<bool>(all(func_4(vec3<bool>(var_2.x, var_2.x, var_2.x), Struct_2(vec4<bool>(true, var_2.x, var_2.x, true), Struct_1(vec3<bool>(true, var_2.x, var_2.x), var_2.x, vec4<u32>(1u, 1u, u_input.a, u_input.a), var_2.zz, vec3<f32>(-1544f, -1210f, 812f)), Struct_1(vec3<bool>(false, true, false), var_2.x, vec4<u32>(u_input.a, 1u, 32296u, 1u), var_2.yy, vec3<f32>(588f, var_0.x, var_0.x)), Struct_1(vec3<bool>(true, var_2.x, var_2.x), var_2.x, vec4<u32>(0u, 1u, 1u, 4533u), var_2.xz, vec3<f32>(var_0.x, -581f, var_0.x)), vec4<u32>(65065u, u_input.a, u_input.a, u_input.a))).b.a), func_3(Struct_3(Struct_1(vec3<bool>(false, false, var_2.x), false, vec4<u32>(13387u, 54540u, u_input.a, 4294967295u), vec2<bool>(var_2.x, false), vec3<f32>(158f, -288f, global3[_wgslsmith_index_u32(u_input.a, 1u)])), vec3<i32>(26616i, -1982i, 57392i), -1770f, Struct_1(vec3<bool>(false, true, true), false, vec4<u32>(u_input.a, 4294967295u, 15420u, u_input.a), var_2.xy, var_0.xzx), vec2<u32>(u_input.a, 0u)), _wgslsmith_div_vec3_f32(var_0.zxx, vec3<f32>(var_0.x, 120f, global3[_wgslsmith_index_u32(82189u, 1u)])), abs(u_input.a), Struct_4(vec3<i32>(27371i, 40554i, 66937i), 2147483647i, vec2<u32>(0u, u_input.a))).x, _wgslsmith_f_op_f32(abs(1928f)) <= _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a, 1u)])), func_3(Struct_3(Struct_1(vec3<bool>(var_2.x, var_2.x, true), true, vec4<u32>(4294967295u, 4294967295u, u_input.a, 93659u), vec2<bool>(true, var_2.x), vec3<f32>(860f, -1122f, global3[_wgslsmith_index_u32(u_input.a, 1u)])), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.a), 26u)], _wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.a, 1u)], -238f), func_4(vec3<bool>(false, true, var_2.x), Struct_2(vec4<bool>(false, var_2.x, var_2.x, var_2.x), Struct_1(vec3<bool>(true, var_2.x, true), false, vec4<u32>(u_input.a, 37974u, u_input.a, u_input.a), var_2.xy, vec3<f32>(991f, global3[_wgslsmith_index_u32(47244u, 1u)], 1000f)), Struct_1(vec3<bool>(false, true, true), true, vec4<u32>(u_input.a, 1u, 2481u, 12069u), var_2.xx, vec3<f32>(var_0.x, -601f, var_0.x)), Struct_1(vec3<bool>(true, var_2.x, var_2.x), false, vec4<u32>(0u, 4294967295u, u_input.a, 57784u), vec2<bool>(var_2.x, false), var_0.zyx), vec4<u32>(0u, 0u, u_input.a, u_input.a))).d, vec2<u32>(u_input.a, 0u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(490f, global3[_wgslsmith_index_u32(u_input.a, 1u)], 594f) - var_0.zwy)), u_input.a, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.a, min(u_input.a, 0u)), 18u)]).x, vec4<u32>(~countOneBits(12096u), 94990u, u_input.a, u_input.a), func_3(Struct_3(func_4(vec3<bool>(false, true, var_2.x), Struct_2(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), Struct_1(vec3<bool>(var_2.x, false, true), false, vec4<u32>(0u, u_input.a, u_input.a, u_input.a), var_2.xz, var_0.yyy), Struct_1(vec3<bool>(var_2.x, false, true), false, vec4<u32>(u_input.a, 72254u, u_input.a, u_input.a), vec2<bool>(var_2.x, false), vec3<f32>(1108f, var_0.x, var_0.x)), Struct_1(vec3<bool>(true, true, false), true, vec4<u32>(24624u, u_input.a, 29216u, 1u), vec2<bool>(var_2.x, var_2.x), var_0.wzz), vec4<u32>(u_input.a, u_input.a, 23342u, 37924u))).d, ~global0[_wgslsmith_index_u32(0u, 26u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 1u)] + -1976f), Struct_1(vec3<bool>(var_2.x, true, var_2.x), var_2.x, vec4<u32>(1u, 0u, u_input.a, 40378u), var_2.zz, var_0.wzz), vec2<u32>(32503u, u_input.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -860f, 1577f)), firstLeadingBit(u_input.a), Struct_4(_wgslsmith_div_vec3_i32(global0[_wgslsmith_index_u32(1u, 26u)], vec3<i32>(46715i, -2147483647i, 1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-23116i, 36227i, 1i, -3824i), vec4<i32>(0i, -57325i, 0i, 1156i)), ~vec2<u32>(29490u, 0u))).yz, var_0.zww), _wgslsmith_mod_vec2_u32(abs(max(vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(u_input.a, u_input.a), _wgslsmith_mult_vec2_u32(vec2<u32>(70749u, 36885u), vec2<u32>(u_input.a, 4294967295u)))), vec2<u32>(56718u, countOneBits(1u))));
    var var_4 = var_3.a.e.xx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 15468u, u_input.a, u_input.a), var_3.a.c), 1u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_4.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, var_0.x, -561f)))), _wgslsmith_clamp_vec2_i32(-vec2<i32>(var_3.b.x, select(var_3.b.x, -19616i, var_2.x)), vec2<i32>(~_wgslsmith_dot_vec2_i32(var_3.b.yz, vec2<i32>(-25609i, var_3.b.x)), var_3.b.x), var_3.b.xx), vec2<f32>(_wgslsmith_f_op_f32(-706f - -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u << (0u % 32u), 1u)] + _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(46685u, 1u)] + var_4.x)) + _wgslsmith_f_op_f32(-var_4.x))), -max(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(var_3.b.x, var_3.b.x, var_3.b.x, -43741i)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_3.b.x, -244i, -2147483647i, 2147483647i), vec4<i32>(var_3.b.x, var_3.b.x, -1i, -5373i))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(13291i, -1i, -115825i, var_3.b.x), vec4<i32>(var_3.b.x, -1i, var_3.b.x, var_3.b.x))));
}

