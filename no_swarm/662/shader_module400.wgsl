struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: u32,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: Struct_3,
    d: Struct_3,
    e: vec2<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22> = array<i32, 22>(-8594i, 19416i, -5141i, 2147483647i, -14453i, 47319i, 1i, 2032i, 1i, -38280i, 2147483647i, 728i, 16261i, -12981i, i32(-2147483648), -19273i, -6720i, -16402i, 29823i, 1i, -13783i, 61637i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -124f) - _wgslsmith_f_op_f32(sign(1000f))) * _wgslsmith_f_op_f32(ceil(-573f)))));
    let var_1 = Struct_3(select(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !(-2147483647i >= u_input.a)), !all(vec2<bool>(true, true))), vec3<bool>(select(true, true, true), false, all(vec3<bool>(true, true, true))), 1u, select(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false))), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true)), (_wgslsmith_f_op_f32(-1947f - -689f) >= _wgslsmith_f_op_f32(-var_0)) | (firstLeadingBit(-31558i) != _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(264u, 22u)], arg_0.x), arg_0.zy))), Struct_2(true, Struct_1(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(60131u, 22u)], u_input.b.x, 0i) > 1i), -292f, abs(arg_0.xy)));
    let var_2 = firstLeadingBit(_wgslsmith_mod_u32(58283u, ~(~var_1.c)));
    var var_3 = Struct_1(false);
    var_3 = Struct_1(all(!vec2<bool>(any(vec2<bool>(false, var_3.a)), var_3.a || var_3.a)));
    return 8964u;
}

fn func_2(arg_0: vec4<bool>) -> vec3<u32> {
    let var_0 = arg_0.x;
    global0 = array<i32, 22>();
    global0 = array<i32, 22>();
    global0 = array<i32, 22>();
    var var_1 = 1u;
    return vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(select(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(59322u, 88111u, 5812u), arg_0.zxy), ~vec3<u32>(0u, 0u, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(7864u, 0u, 97253u), vec3<u32>(14179u, 0u, 1u), vec3<u32>(1u, 49869u, 0u)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(154395u, 39541u, 4294967295u), vec3<u32>(1u, 9271u, 1u)) % vec3<u32>(32u))) & 0u, ~((firstTrailingBit(1u) >> (1u % 32u)) << (func_3(~vec3<i32>(global0[_wgslsmith_index_u32(1u, 22u)], u_input.a, 39004i)) % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 1u)) | ~(~(~10983u)));
}

fn func_1() -> f32 {
    var var_0 = Struct_2(true, Struct_1(all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, false, false), true))), _wgslsmith_f_op_f32(152f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1096f, _wgslsmith_f_op_f32(max(-782f, -1438f)))) * -298f)), -vec2<i32>(2147483647i, countOneBits(-u_input.b.x)));
    var var_1 = ~_wgslsmith_add_vec4_i32(~abs(vec4<i32>(30568i, 2147483647i, 1i, var_0.d.x)), _wgslsmith_mod_vec4_i32(~vec4<i32>(51774i, var_0.d.x, u_input.a, -37331i), u_input.b));
    global0 = array<i32, 22>();
    var var_2 = ~(~(~func_2(vec4<bool>(var_0.a, var_0.b.a, false, false))));
    let var_3 = 376f;
    return -1000f;
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = arg_0.c.e;
    let var_1 = Struct_5(!select(select(select(vec2<bool>(false, arg_3.e.b.a), vec2<bool>(true, var_0.a), false), vec2<bool>(arg_3.b.x, arg_3.a.x), select(arg_0.d.d.wz, vec2<bool>(true, false), vec2<bool>(var_0.a, var_0.b.a))), arg_3.b.zz, !any(vec3<bool>(arg_0.d.d.x, arg_3.b.x, arg_3.b.x))), arg_0.d.e.b);
    let var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(arg_0.d.e.d >> (arg_1.zy % vec2<u32>(32u)), ~arg_0.e), _wgslsmith_mod_i32(arg_3.e.d.x, -1i)), select(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.b.wz, var_0.d), -2147483647i), vec2<i32>(1i, var_0.d.x), !arg_3.a.xx)) ^ (abs(select(arg_3.e.d, _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, arg_0.c.e.d.x), arg_3.e.d), false)) | ~u_input.b.zw);
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, arg_0.d.e.c, -363f, 1000f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-362f, var_0.c, arg_0.d.e.c, arg_3.e.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_3.e.c, -821f, -127f))))))));
    let var_4 = !arg_3.d.xw;
    return Struct_1(false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(-67320i, u_input.a) | select(_wgslsmith_div_vec2_i32(abs(u_input.b.yx), u_input.b.zx), u_input.b.xz, vec2<bool>(true, true)), ~vec2<i32>(3838i, ~min(global0[_wgslsmith_index_u32(1u, 22u)], 2147483647i)));
    global0 = array<i32, 22>();
    let var_1 = func_4(Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(249f)) + _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -403f)))), 736f, Struct_3(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true), vec3<bool>(all(vec2<bool>(true, true)), true, true), ~_wgslsmith_sub_u32(0u, 0u), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), Struct_2(false, Struct_1(false), _wgslsmith_f_op_f32(838f + 723f), -vec2<i32>(1i, global0[_wgslsmith_index_u32(5685u, 22u)]))), Struct_3(vec4<bool>(global0[_wgslsmith_index_u32(0u, 22u)] > 20906i, true, true, all(vec4<bool>(false, false, true, false))), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), reverseBits(_wgslsmith_mult_u32(41436u, 58826u)), vec4<bool>(all(vec3<bool>(false, true, false)), true, false, true), Struct_2(all(vec4<bool>(true, false, true, false)), Struct_1(false), _wgslsmith_f_op_f32(min(-1818f, -972f)), var_0)), max(vec2<i32>(u_input.b.x, 0i) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(35094u, 1u), vec2<u32>(65019u, 4294967295u), vec2<u32>(14621u, 43232u)) % vec2<u32>(32u)), countOneBits(vec2<i32>(global0[_wgslsmith_index_u32(11690u, 22u)], 15820i) ^ vec2<i32>(var_0.x, global0[_wgslsmith_index_u32(4294967295u, 22u)])))), _wgslsmith_clamp_vec4_u32(~max(~vec4<u32>(4294967295u, 66463u, 1u, 22853u), firstLeadingBit(vec4<u32>(44550u, 24725u, 33599u, 1u))), max(~vec4<u32>(1u, 94054u, 27324u, 4294967295u), select(~vec4<u32>(45414u, 18364u, 15980u, 61777u), abs(vec4<u32>(42750u, 40343u, 0u, 1u)), true)), firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u))), vec2<u32>(func_2(vec4<bool>(false, true, true, false)).x, max(~0u, func_2(vec4<bool>(false, true, true, false)).x)) ^ ~vec2<u32>(_wgslsmith_mult_u32(55888u, 16166u), _wgslsmith_clamp_u32(28662u, 11458u, 4294967295u)), Struct_3(select(vec4<bool>(true, u_input.b.x > var_0.x, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), select(vec3<bool>(all(vec3<bool>(true, false, false)), true, true), vec3<bool>(true, true, true), true), ~_wgslsmith_mod_u32(~0u, 20020u << (1u % 32u)), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, all(vec4<bool>(true, true, true, false)), all(vec4<bool>(false, false, false, true)), true), true), Struct_2(true, Struct_1(true), -1769f, select(vec2<i32>(var_0.x, u_input.a), u_input.b.xz, select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))))));
    let var_2 = ~(~_wgslsmith_add_i32(~u_input.b.x << (abs(0u) % 32u), global0[_wgslsmith_index_u32(0u, 22u)]));
    let var_3 = Struct_5(vec2<bool>(any(!vec4<bool>(var_1.a, var_1.a, var_1.a, true)), func_4(Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1965f), _wgslsmith_f_op_f32(-861f * -145f), Struct_3(vec4<bool>(true, var_1.a, true, var_1.a), vec3<bool>(var_1.a, var_1.a, false), 0u, vec4<bool>(false, false, true, true), Struct_2(var_1.a, var_1, 1697f, u_input.b.yw)), Struct_3(vec4<bool>(true, false, var_1.a, var_1.a), vec3<bool>(true, var_1.a, false), 15219u, vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), Struct_2(false, var_1, -1401f, var_0)), ~vec2<i32>(18523i, 2147483647i)), vec4<u32>(1u, 1u, 1u, 1u), vec2<u32>(1u, 1u), Struct_3(select(vec4<bool>(var_1.a, var_1.a, true, false), vec4<bool>(false, true, var_1.a, true), var_1.a), vec3<bool>(true, var_1.a, var_1.a), ~4294967295u, select(vec4<bool>(true, true, var_1.a, true), vec4<bool>(true, var_1.a, true, var_1.a), vec4<bool>(var_1.a, var_1.a, true, var_1.a)), Struct_2(var_1.a, Struct_1(false), 246f, u_input.b.xy))).a), var_1);
    let var_4 = vec4<bool>(true, var_3.a.x, true, var_1.a);
    var var_5 = Struct_2(true, var_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(906f, -222f))), vec2<i32>(countOneBits(global0[_wgslsmith_index_u32(~abs(79107u), 22u)]), var_0.x));
    global0 = array<i32, 22>();
    var var_6 = ~vec3<u32>(~min(_wgslsmith_dot_vec2_u32(vec2<u32>(14367u, 18728u), vec2<u32>(15601u, 1u)), ~1u), 1u, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.d.x);
}

