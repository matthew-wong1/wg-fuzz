struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_4 = Struct_4(vec3<bool>(true, false, false), vec3<u32>(66009u, 60865u, 17080u), Struct_3(vec3<f32>(1362f, -114f, -833f), -13125i));

var<private> global2: Struct_3 = Struct_3(vec3<f32>(-1078f, -810f, 590f), -39071i);

var<private> global3: Struct_4 = Struct_4(vec3<bool>(true, true, true), vec3<u32>(919u, 1u, 4294967295u), Struct_3(vec3<f32>(945f, -413f, 1086f), 0i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> bool {
    global1 = Struct_4(global3.a, vec3<u32>(4294967295u, ~global1.b.x, abs(0u)), global0.c);
    global0 = Struct_4(global1.a, _wgslsmith_mult_vec3_u32(global1.b, countOneBits(_wgslsmith_sub_vec3_u32(global0.b, vec3<u32>(4294967295u, global3.b.x, 1u)))) << (max(vec3<u32>(global1.b.x, max(u_input.d, u_input.d), arg_0 & 4294967295u), vec3<u32>(_wgslsmith_sub_u32(global0.b.x, global0.b.x), 31178u, _wgslsmith_sub_u32(4294967295u, 1u))) % vec3<u32>(32u)), Struct_3(global0.c.a, ~(-global0.c.b)));
    var var_0 = select(abs(u_input.c.zx), firstLeadingBit(vec2<u32>(4294967295u, 24415u)), global1.a.xz);
    global0 = Struct_4(!select(select(global3.a, vec3<bool>(false, false, true), select(global1.a, global3.a, global1.a.x)), select(select(global1.a, vec3<bool>(global3.a.x, global1.a.x, false), global0.a), !global3.a, global1.a), true), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(38559u, global0.b.x, arg_0)), vec3<u32>(4294967295u, ~var_0.x, global0.b.x)) & vec3<u32>(u_input.d, global0.b.x, ~(global0.b.x ^ global0.b.x)), global1.c);
    var var_1 = Struct_1(~global2.b, !any(global0.a), i32(-1i) * -select(global2.b ^ u_input.a.x, global2.b, global3.a.x));
    return !global1.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    global1 = Struct_4(vec3<bool>(true, !(!arg_0.b), any(vec4<bool>(arg_0.b, !global3.a.x, func_3(global3.b.x), global0.a.x))), vec3<u32>(global1.b.x, (global3.b.x >> (_wgslsmith_sub_u32(u_input.c.x, u_input.d) % 32u)) & 0u, 0u), global1.c);
    var var_0 = true;
    let var_1 = Struct_2(Struct_1(~firstLeadingBit(1i), true, ~global1.c.b), -142f, 4294967295u, arg_0, Struct_1(i32(-1i) * -max(global2.b, global1.c.b), true, -7518i));
    global3 = Struct_4(global3.a, vec3<u32>(firstTrailingBit(var_1.c), ~_wgslsmith_mod_u32(u_input.c.x, ~4294967295u), abs(~(~global1.b.x))), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-424f - -636f), 708f, _wgslsmith_div_f32(global1.c.a.x, var_1.b))), global0.c.b));
    var var_2 = global3.c.a.x;
    return Struct_2(Struct_1(~(-13531i >> (var_1.c % 32u)), !all(global3.a.zy), global2.b), -206f, _wgslsmith_dot_vec3_u32(min(~_wgslsmith_div_vec3_u32(global1.b, global0.b), firstLeadingBit(~global1.b)), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(global3.b, vec3<u32>(var_1.c, 1u, 28727u)), var_1.c, u_input.d), max(~vec3<u32>(global1.b.x, u_input.c.x, u_input.c.x), global1.b), _wgslsmith_div_vec3_u32(~global3.b, global1.b << (vec3<u32>(4294967295u, var_1.c, u_input.c.x) % vec3<u32>(32u))))), var_1.a, Struct_1(u_input.a.x, false, -1i));
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: Struct_2) -> i32 {
    global3 = Struct_4(!vec3<bool>(arg_0, !global1.a.x, _wgslsmith_f_op_f32(-global0.c.a.x) < _wgslsmith_f_op_f32(f32(-1f) * -374f)), vec3<u32>(select(func_2(func_2(arg_3.e, global1.c.b).d, firstTrailingBit(26703i)).c, _wgslsmith_dot_vec2_u32(~global0.b.zx, select(u_input.c.zz, global1.b.zx, vec2<bool>(true, true))), any(vec3<bool>(false, true, arg_0))), _wgslsmith_dot_vec4_u32(min(firstLeadingBit(vec4<u32>(1u, u_input.c.x, u_input.c.x, 22928u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 30070u, 4294967295u, 34028u), vec4<u32>(13625u, 1u, global3.b.x, u_input.c.x))), firstTrailingBit(vec4<u32>(global3.b.x, global0.b.x, global1.b.x, global3.b.x) >> (vec4<u32>(arg_3.c, 18018u, 1u, u_input.d) % vec4<u32>(32u)))), u_input.c.x), Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.a.x), global2.a.x, global2.a.x), global2.a), 23623i));
    var var_0 = Struct_2(func_2(Struct_1(1i, select(-754f >= global3.c.a.x, true, func_2(Struct_1(-23441i, true, 1i), arg_2.x).d.b), -1i), u_input.b).e, -655f, firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global1.b.zz, vec2<u32>(108503u, 0u)) & global1.b.x, _wgslsmith_clamp_u32(~1u, ~global0.b.x, _wgslsmith_div_u32(0u, global3.b.x)))), func_2(arg_3.a, firstLeadingBit(-u_input.a.x) | 0i).d, func_2(Struct_1(~select(-11894i, -1i, global1.a.x), global1.a.x, -8001i), global1.c.b).e);
    global0 = Struct_4(vec3<bool>(false, global0.a.x, global1.a.x), global3.b, global1.c);
    global0 = Struct_4(global1.a, vec3<u32>(global1.b.x ^ ~arg_3.c, reverseBits(~46658u), ~global3.b.x) ^ ~_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.c, vec3<u32>(var_0.c, 1u, u_input.d), u_input.c), vec3<u32>(43850u, 111265u, global1.b.x)), global3.c);
    global2 = global1.c;
    return ~(-global3.c.b);
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_2 {
    global1 = Struct_4(global3.a, ~vec3<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(global0.b.x, global1.b.x), ~global1.b.x), global3.b.x, u_input.d), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_div_f32(global3.c.a.x, global1.c.a.x), _wgslsmith_f_op_f32(263f - 607f))), func_4(all(!vec3<bool>(global0.a.x, true, global0.a.x)), u_input.a.yy, ~vec4<i32>(-7996i, u_input.a.x, -1i, 68711i) >> (vec4<u32>(1u, global1.b.x, 87924u, global3.b.x) % vec4<u32>(32u)), func_2(Struct_1(-1i, true, 0i), global1.c.b))));
    let var_0 = global3.c;
    var var_1 = func_2(func_2(Struct_1(-var_0.b, true, ~global0.c.b), -1i).e, -2147483647i);
    global3 = Struct_4(global3.a, global3.b, global3.c);
    var var_2 = abs(max(_wgslsmith_add_vec4_i32(vec4<i32>(global2.b, global2.b, -5887i, _wgslsmith_div_i32(1i, var_1.a.c)), vec4<i32>(~(-54162i), -1i, i32(-1i) * -2147483647i, u_input.b)), vec4<i32>(-32218i, -(global3.c.b >> (0u % 32u)), -2147483647i, _wgslsmith_sub_i32(global0.c.b, 2147483647i) | (var_0.b | var_1.e.a))));
    return func_2(Struct_1(min(-2147483647i, firstTrailingBit(reverseBits(0i))), arg_0, var_0.b), var_1.d.c);
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> Struct_4 {
    global0 = Struct_4(vec3<bool>(func_2(Struct_1(-global2.b, arg_0.a.b, -1i), _wgslsmith_mod_i32(global2.b, _wgslsmith_div_i32(2147483647i, global1.c.b))).d.b, global0.a.x, true), firstTrailingBit(vec3<u32>(~1088u, u_input.c.x, _wgslsmith_mult_u32(arg_0.c, global3.b.x))) ^ abs(global1.b), global0.c);
    global0 = Struct_4(select(select(global1.a, !select(global3.a, global1.a, true), true), select(select(select(vec3<bool>(true, arg_0.a.b, false), global3.a, vec3<bool>(arg_0.a.b, global3.a.x, global1.a.x)), !vec3<bool>(global1.a.x, true, true), true), vec3<bool>(arg_0.a.b, global1.a.x, false), !global0.a.x), true), global0.b, global0.c);
    let var_0 = ~select(firstLeadingBit(vec4<i32>(u_input.b, ~26401i, -45357i, ~(-2147483647i))), _wgslsmith_mult_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(902i, 1i, 0i, -14176i), vec4<i32>(global1.c.b, -18977i, 2147483647i, global0.c.b)), ~(vec4<i32>(global1.c.b, global0.c.b, global3.c.b, u_input.b) ^ vec4<i32>(-5798i, global1.c.b, global0.c.b, 0i))), !select(select(vec4<bool>(false, false, global1.a.x, true), vec4<bool>(true, global3.a.x, arg_0.d.b, arg_0.e.b), false), !vec4<bool>(true, global1.a.x, global0.a.x, true), !vec4<bool>(global3.a.x, false, global1.a.x, global1.a.x)));
    var var_1 = _wgslsmith_clamp_vec2_i32(~(-(~_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, arg_0.e.a), vec2<i32>(19833i, arg_0.e.a)))), vec2<i32>(_wgslsmith_mod_i32(-(i32(-1i) * -2147483647i), global0.c.b), firstTrailingBit(29378i)), var_0.ww ^ -_wgslsmith_add_vec2_i32(~var_0.xw, vec2<i32>(arg_0.a.a, -1i)));
    global1 = Struct_4(global0.a, global3.b, global0.c);
    return Struct_4(vec3<bool>(~(~4294967295u) == ~_wgslsmith_mod_u32(global1.b.x, 86416u), all(global0.a.xx), any(!(!vec4<bool>(global0.a.x, global1.a.x, global0.a.x, global0.a.x)))), vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.c, 1u, global3.b.x, global3.b.x), vec4<u32>(1u, arg_0.c, global0.b.x, global3.b.x)), countOneBits(global3.b.x << (global1.b.x % 32u)), func_1(global0.a.x || global1.a.x, arg_2).c) & vec3<u32>(func_2(Struct_1(-21520i, global0.a.x, global2.b), global0.c.b).c, global0.b.x, global3.b.x), global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_1(!(!(!global0.a.x)), global2.a.x), ~global3.b.x, _wgslsmith_f_op_f32(select(2132f, global1.c.a.x, true)));
    let var_0 = vec4<i32>(-(~0i), -2147483647i, global2.b, ~select(global0.c.b, global2.b, false));
    var var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(global0.c.b, ~(i32(-1i) * -2147483647i), 0i, -1i), abs(var_0));
    global0 = Struct_4(!global3.a, vec3<u32>(u_input.d, 6710u | global0.b.x, u_input.d), global3.c);
    var var_2 = vec2<bool>(global1.a.x, global3.a.x);
    global0 = func_5(func_2(func_1(!any(vec4<bool>(global0.a.x, global1.a.x, global3.a.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -283f)).e, var_1.x), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-782f)) - func_2(Struct_1(19886i, true, 62428i), 3440i).b)))));
    global2 = func_5(func_2(func_2(func_1(global3.a.x, _wgslsmith_f_op_f32(global1.c.a.x - global2.a.x)).e, max(select(-1i, u_input.b, global1.a.x), var_0.x ^ -2147483647i)).a, global3.c.b), 1u, -818f).c;
    global0 = Struct_4(!(!global1.a), u_input.c, Struct_3(global0.c.a, firstLeadingBit(~global3.c.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c.a.yz) + vec2<f32>(func_5(func_1(false, global2.a.x), ~global0.b.x, _wgslsmith_f_op_f32(965f + 1596f)).c.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1263f), -283f))));
}

