struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-972f, 1000f, -1170f, 1456f), vec3<f32>(-258f, -1319f, -1028f), true, vec3<f32>(-1543f, 1096f, 554f));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> bool {
    var var_0 = global0.c;
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), 398f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1297f, _wgslsmith_f_op_f32(floor(arg_1.b.x))))), global0.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-570f * arg_1.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x - arg_1.d.x) - arg_1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -381f) * _wgslsmith_f_op_f32(floor(-263f))))), arg_2, _wgslsmith_f_op_vec3_f32(arg_1.b * global0.d));
    return !(!var_1.c) & false;
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(-1i, -_wgslsmith_clamp_i32(~u_input.b.x, _wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, -1i), 41463i), i32(-1i) * -4466i), max(vec3<i32>(-2147483647i, -u_input.b.x, -1i), ~(vec3<i32>(u_input.c.x, 2147483647i, 0i) << (~vec3<u32>(4294967295u, 23021u, 4294967295u) % vec3<u32>(32u)))));
    var var_1 = ~(~max(-2147483647i, firstLeadingBit(0i)));
    var_1 = 1400i;
    var var_2 = select(!select(vec2<bool>(!global0.c, true), !vec2<bool>(false, global0.c), true), select(select(select(!vec2<bool>(global0.c, global0.c), select(vec2<bool>(false, global0.c), vec2<bool>(false, global0.c), false), false), !(!vec2<bool>(global0.c, true)), true), select(select(vec2<bool>(global0.c, true), select(vec2<bool>(true, global0.c), vec2<bool>(true, true), global0.c), true), select(vec2<bool>(true, global0.c), vec2<bool>(false, true), any(vec3<bool>(global0.c, global0.c, global0.c))), select(vec2<bool>(global0.c, global0.c), select(vec2<bool>(true, false), vec2<bool>(global0.c, true), vec2<bool>(global0.c, true)), false)), vec2<bool>(any(!vec2<bool>(global0.c, global0.c)), any(vec2<bool>(global0.c, global0.c)))), vec2<bool>(!(!(!global0.c)), !(_wgslsmith_mult_i32(u_input.b.x, 15501i) >= 2147483647i)));
    var var_3 = _wgslsmith_mod_u32(firstTrailingBit(0u), ~(~0u));
    return _wgslsmith_f_op_f32(max(464f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.x + _wgslsmith_f_op_f32(min(global0.b.x, 2546f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.d.x)) * -1392f)))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -383f) + _wgslsmith_f_op_f32(global0.d.x + arg_0.b.x)), global0.d.x, _wgslsmith_f_op_f32(-1312f * 311f), _wgslsmith_f_op_f32(-476f - _wgslsmith_f_op_f32(func_3())))));
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(-arg_0.b), -1193f > _wgslsmith_f_op_f32(var_0.x - global0.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.d, var_0.zxy) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.b.x - 907f), _wgslsmith_f_op_f32(-319f + global0.a.x), 1046f))));
    var var_1 = var_0.x;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -507f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -210f) * global0.b.x), 1230f));
    var var_2 = arg_0;
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = arg_0;
    global0 = arg_1;
    let var_0 = arg_1;
    let var_1 = _wgslsmith_add_i32(-2147483647i, u_input.b.x);
    var var_2 = 1i;
    return arg_2;
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: Struct_1) -> vec3<f32> {
    global0 = func_4(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_2.a.x)), _wgslsmith_f_op_f32(max(-485f, _wgslsmith_f_op_f32(trunc(arg_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - global0.b.x), _wgslsmith_f_op_f32(round(-1000f))), global0.a.xzz, func_1(all(select(vec4<bool>(true, arg_0.x, arg_0.x, true), vec4<bool>(false, true, false, true), arg_0)), Struct_1(_wgslsmith_f_op_vec4_f32(global0.a + vec4<f32>(arg_2.b.x, 1000f, 1314f, global0.b.x)), vec3<f32>(arg_1.x, global0.b.x, 1000f), all(arg_0.xw), func_4(arg_2, arg_2, Struct_1(vec4<f32>(global0.d.x, -1852f, arg_1.x, arg_1.x), arg_2.a.zzx, true, vec3<f32>(269f, global0.d.x, arg_1.x))).a.xxw), arg_0.x, 1u >> (1u % 32u)), _wgslsmith_f_op_vec3_f32(-arg_2.b)), Struct_1(_wgslsmith_f_op_vec4_f32(floor(global0.a)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.b.x, 1343f, -2220f))), !global0.c, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x - 125f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(189f * -732f) + -202f), _wgslsmith_f_op_f32(-arg_1.x))), func_2(func_4(func_2(Struct_1(global0.a, vec3<f32>(arg_1.x, -366f, -153f), arg_2.c, global0.d)), arg_2, arg_2)));
    var var_0 = _wgslsmith_sub_u32(1u, 0u);
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1017f, _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-1573f + global0.b.x)), arg_1.x)), global0.a.zxx, true, global0.a.yzz);
    return _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(333f - -1490f), _wgslsmith_f_op_f32(arg_1.x * global0.d.x)), arg_2.b.x), global0.b.x, 768f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(~(~vec2<u32>(~70348u, 42111u)));
    var var_1 = ~select(~(~(~vec3<u32>(var_0.x, var_0.x, 32563u))), reverseBits(firstLeadingBit(~vec3<u32>(3163u, 1u, var_0.x))), select(vec3<bool>(false == global0.c, !global0.c, false), vec3<bool>(true, global0.c, true), global0.c));
    var var_2 = !vec2<bool>(true, global0.c);
    var var_3 = (~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, -92519i, -2727i), vec4<i32>(u_input.b.x, u_input.a, u_input.a, -44911i)) >= firstLeadingBit(u_input.a)) && true;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b - vec3<f32>(1000f, 353f, global0.b.x)))) - global0.b), var_2.x == true, _wgslsmith_f_op_vec3_f32(func_5(!vec4<bool>(true, false, func_1(global0.c, Struct_1(vec4<f32>(global0.b.x, global0.d.x, -912f, -660f), global0.b, global0.c, vec3<f32>(global0.b.x, -1602f, -558f)), global0.c, 33132u), global0.c || false), vec3<f32>(895f, global0.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-828f, global0.a.x)))), func_4(func_2(Struct_1(global0.a, global0.a.wxz, global0.c, global0.b)), Struct_1(vec4<f32>(global0.a.x, 1490f, -1000f, 1000f), vec3<f32>(global0.a.x, global0.d.x, 1958f), func_1(false, Struct_1(vec4<f32>(global0.b.x, 1000f, global0.d.x, -1490f), global0.b, false, global0.d), true, 1u), vec3<f32>(643f, global0.a.x, 1837f)), Struct_1(vec4<f32>(global0.d.x, global0.b.x, 278f, global0.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(436f, -1163f, global0.a.x) - vec3<f32>(global0.a.x, global0.a.x, global0.d.x)), !var_2.x, _wgslsmith_f_op_vec3_f32(-global0.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(max(abs(_wgslsmith_add_i32(27132i, 10369i)), 14598i), u_input.b.x, -(firstTrailingBit(32069i) << (11959u % 32u))), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(max(var_0.x, 19778u), 0u << (1u % 32u), _wgslsmith_add_u32(25159u, var_1.x))), ~(vec3<u32>(78222u, 29688u, var_1.x) >> (vec3<u32>(8255u, 42309u, var_0.x) % vec3<u32>(32u)))), _wgslsmith_mult_vec2_u32(var_1.xy, select(select(abs(var_1.xy), vec2<u32>(0u, var_0.x) ^ var_1.zz, any(vec4<bool>(global0.c, false, true, true))), vec2<u32>(var_1.x, 22592u) >> (firstTrailingBit(var_1.xx) % vec2<u32>(32u)), vec2<bool>(false | global0.c, all(vec2<bool>(false, false))))), max(vec3<i32>(-1i) * -firstLeadingBit(vec3<i32>(u_input.c.x, u_input.a, 8395i)), _wgslsmith_sub_vec3_i32(vec3<i32>(4319i, u_input.a, min(-1988i, -24460i)), -vec3<i32>(-2147483647i, u_input.c.x, 1i))));
}

