struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_1;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: f32, arg_3: vec2<bool>) -> vec4<bool> {
    let var_0 = all(vec3<bool>(global0.x, all(!select(vec4<bool>(true, true, global0.x, arg_1), vec4<bool>(false, arg_3.x, global0.x, global0.x), true)), arg_1));
    var var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.e.x, 44707u, u_input.b), u_input.d.zxz, ~vec3<u32>(u_input.e.x, u_input.d.x, 29141u)), ~vec3<u32>(~4294967295u, 86808u, _wgslsmith_clamp_u32(u_input.d.x, u_input.b, u_input.d.x))), reverseBits(min(select(u_input.d.xwz, vec3<u32>(u_input.e.x, 79504u, 7023u) << (u_input.d.yxy % vec3<u32>(32u)), select(arg_3.x, false, true)), vec3<u32>(u_input.d.x, _wgslsmith_mod_u32(1u, u_input.d.x), ~21985u))));
    let var_2 = abs(u_input.d);
    var_1 = ~(~1u);
    var var_3 = true;
    return select(!vec4<bool>(all(vec4<bool>(true, arg_1, true, false)), true, arg_3.x, arg_3.x), vec4<bool>(all(vec4<bool>(true, var_0, global0.x, true)), arg_1, !any(vec4<bool>(var_0, true, true, false)) | var_0, false), ~_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.c, 1i, -5136i, 45118i), vec4<i32>(0i, arg_0, u_input.c, 19717i), false), -vec4<i32>(18570i, arg_0, u_input.c, u_input.c)) <= _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(9095i, u_input.c, -22324i), ~(vec3<i32>(u_input.a.x, arg_0, u_input.a.x) ^ vec3<i32>(u_input.c, -7653i, 2147483647i))));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: bool, arg_3: Struct_4) -> i32 {
    let var_0 = arg_3.a.a.x;
    global1 = arg_3.a.c;
    global0 = select(vec4<bool>(any(select(select(global0.yz, vec2<bool>(false, arg_2), vec2<bool>(true, false)), global0.xy, any(global0.yzx))), false, !(!arg_3.a.d & arg_2), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_3.a.c.a + -987f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-558f - global1.a))), !vec4<bool>((global0.x | arg_3.a.d) || (arg_3.a.b <= 56031u), any(global0.wx), true, true), func_3(abs(~arg_0), global0.x, -768f, !select(!global0.wz, vec2<bool>(arg_3.a.d, false), global0.wx)));
    let var_1 = Struct_3(vec4<i32>(_wgslsmith_sub_i32(arg_0, -2147483647i >> (firstTrailingBit(0u) % 32u)), 32583i, _wgslsmith_mult_i32(firstTrailingBit(var_0) << (_wgslsmith_mod_u32(u_input.b, 4294967295u) % 32u), _wgslsmith_dot_vec2_i32(arg_3.a.a.zw, u_input.a)), _wgslsmith_dot_vec4_i32(firstTrailingBit(arg_3.a.a), arg_3.a.a)), ~_wgslsmith_mod_u32(~1u, _wgslsmith_add_u32(arg_1, 4294967295u)), arg_3.b, !arg_2);
    let var_2 = ~(~var_0);
    return 1i;
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.a * -2513f), arg_1.c.a, true)))));
    global0 = vec4<bool>(u_input.a.x <= u_input.a.x, arg_0, global0.x, any(global0.yxy));
    let var_1 = vec2<bool>(true, -arg_1.a.x == reverseBits(52474i));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-864f))))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -487f));
    return Struct_3(arg_1.a, _wgslsmith_mult_u32(36115u, ~(u_input.e.x >> (20717u % 32u))) & ~1u, arg_1.c, !(arg_1.c.a >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -171f)))));
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3) -> Struct_1 {
    global1 = Struct_1(arg_2.c.a);
    var var_0 = Struct_4(arg_2, func_4(all(select(global0.wxw, vec3<bool>(false, arg_0.d, arg_0.d), global0.xwy)), Struct_3(abs(arg_2.a), abs(arg_2.b), func_4(!global0.x, Struct_3(arg_0.a, u_input.d.x, Struct_1(global1.a), arg_0.d)).c, global0.x)).c);
    var var_1 = Struct_4(Struct_3(vec4<i32>(-2147483647i, arg_2.a.x & (69376i & u_input.c), -_wgslsmith_sub_i32(arg_2.a.x, -51736i), firstTrailingBit(-2147483647i)), u_input.e.x, Struct_1(_wgslsmith_f_op_f32(-global1.a)), global0.x), Struct_1(_wgslsmith_f_op_f32(-global1.a)));
    return Struct_1(_wgslsmith_f_op_f32(615f * _wgslsmith_f_op_f32(var_1.a.c.a * -1246f)));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> Struct_3 {
    global1 = func_5(func_4(global0.x, Struct_3(vec4<i32>(_wgslsmith_sub_i32(u_input.c, 40612i), u_input.c << (u_input.d.x % 32u), func_2(67065i, 1u, global0.x, Struct_4(Struct_3(vec4<i32>(u_input.c, 59816i, u_input.c, -8014i), arg_1.x, Struct_1(arg_0), true), Struct_1(arg_0))), u_input.a.x), 0u, Struct_1(arg_0), global0.x)), 1u, Struct_3(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, u_input.c), vec3<i32>(u_input.c, u_input.a.x, 39764i)) << (arg_1.x % 32u), 7026i, -7416i >> (arg_1.x % 32u), ~u_input.c), _wgslsmith_dot_vec4_u32(u_input.d, _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_1.x, u_input.e.x, arg_1.x, u_input.b), vec4<u32>(arg_1.x, arg_1.x, 37648u, 8310u))), func_4(true, Struct_3(-vec4<i32>(u_input.c, 2147483647i, u_input.c, 1001i), ~4294967295u, Struct_1(global1.a), !global0.x)).c, func_3(u_input.c, u_input.e.x == arg_1.x, arg_0, vec2<bool>(false, !global0.x)).x));
    var var_0 = _wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - -873f) + -1975f)));
    let var_1 = func_4(global0.x, func_4(any(vec3<bool>(true, true, true)), func_4(~arg_1.x < u_input.e.x, func_4(1i <= u_input.a.x, func_4(true, Struct_3(vec4<i32>(u_input.c, u_input.a.x, 35870i, -2735i), 115453u, Struct_1(-318f), true)))))).c;
    global1 = Struct_1(arg_0);
    var var_2 = func_4(true || (u_input.c <= u_input.c), func_4(all(select(!vec4<bool>(global0.x, global0.x, true, global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(false, global0.x, false, global0.x)), select(vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(false, false, true, global0.x)))), func_4(!(!global0.x), func_4(any(global0.zz), Struct_3(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i), arg_1.x, var_1, false)))));
    return Struct_3(select(vec4<i32>(-1i, _wgslsmith_add_i32(-1i, u_input.a.x), -var_2.a.x, ~24183i), ~var_2.a, !any(vec4<bool>(false, false, false, true))) & abs(var_2.a), ~0u, var_1, any(vec2<bool>(!var_2.d, global0.x)));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: f32) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1714f)) * 584f) * arg_1.c.a))));
    let var_1 = ~(u_input.d >> (u_input.d % vec4<u32>(32u)));
    let var_2 = _wgslsmith_sub_u32(~_wgslsmith_mod_u32(1u, ~(~arg_1.b)), u_input.e.x);
    let var_3 = Struct_2(_wgslsmith_f_op_f32(round(var_0.a)), global0.yw, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -2017f, -253f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.a, -767f, 1276f)))), arg_1.c);
    global1 = func_4(global0.x, arg_1).c;
    return vec3<i32>(u_input.c, -40768i, _wgslsmith_div_i32(_wgslsmith_add_i32(9644i, ~(~0i)), _wgslsmith_sub_i32(26691i, -61857i)));
}

fn func_7(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = vec4<u32>(u_input.b, ~min(_wgslsmith_mod_u32(0u, arg_2.x) >> (u_input.b % 32u), 4294967295u), arg_2.x, _wgslsmith_clamp_u32(u_input.d.x ^ _wgslsmith_sub_u32(_wgslsmith_mod_u32(6555u, 1847u), ~arg_2.x), 10143u, u_input.d.x));
    global1 = Struct_1(577f);
    global1 = func_5(func_1(694f, u_input.d.xz), 1u, func_1(global1.a, vec2<u32>(arg_2.x, u_input.d.x)));
    global1 = func_1(global1.a, ~min(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, arg_2.x) << (vec2<u32>(arg_2.x, 22347u) % vec2<u32>(32u)), max(u_input.d.zw, vec2<u32>(arg_2.x, arg_2.x))), _wgslsmith_sub_vec2_u32(arg_2, vec2<u32>(var_0.x, 56461u)))).c;
    var var_1 = Struct_4(func_4(arg_1.x, Struct_3(-(~vec4<i32>(u_input.c, -11507i, -2266i, arg_0.x)), _wgslsmith_dot_vec2_u32(abs(var_0.ww), vec2<u32>(0u, arg_2.x)), Struct_1(662f), -715f != _wgslsmith_f_op_f32(-global1.a))), func_1(_wgslsmith_f_op_f32(-func_1(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_sub_vec2_u32(u_input.d.xz, u_input.e.xy)).c.a), arg_2).c);
    return func_5(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1778f)), ~vec2<u32>(arg_2.x, u_input.b) | abs(~arg_2)), var_1.a.b, Struct_3(~var_1.a.a, 70013u, func_5(Struct_3(-var_1.a.a, u_input.b >> (var_1.a.b % 32u), var_1.a.c, false), 0u, Struct_3(var_1.a.a, var_0.x | u_input.e.x, func_1(var_1.b.a, u_input.e.zz).c, arg_1.x)), var_1.a.d));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_7(func_6(vec4<i32>(0i, firstLeadingBit(u_input.c), _wgslsmith_clamp_i32(-28665i, u_input.a.x, -18329i), firstLeadingBit(u_input.a.x)), func_1(_wgslsmith_div_f32(global1.a, global1.a), firstLeadingBit(vec2<u32>(u_input.d.x, u_input.e.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, -785f), _wgslsmith_div_f32(global1.a, 357f))) >> (u_input.d.wzw % vec3<u32>(32u)), !(!select(select(vec2<bool>(false, global0.x), global0.xy, global0.yx), vec2<bool>(true, global0.x), 643f < global1.a)), reverseBits(~(~u_input.e.xx)));
    global0 = !(!select(select(!vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x), global0.x != global0.x), vec4<bool>(global0.x != global0.x, any(vec3<bool>(global0.x, true, true)), true, global0.x), true));
    let var_0 = vec4<i32>(reverseBits(~u_input.a.x), u_input.c, -51421i, -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global1.a * 1384f), u_input.e.zz, _wgslsmith_dot_vec4_i32(func_1(-1732f, ~u_input.d.zx).a, var_0 << (select(vec4<u32>(25109u, u_input.d.x, u_input.d.x, u_input.e.x), u_input.d, vec4<bool>(true, global0.x, false, global0.x)) % vec4<u32>(32u))) << (_wgslsmith_dot_vec3_u32(abs(vec3<u32>(61501u, 27876u, 92104u)), u_input.e) % 32u), i32(-1i) * -(~_wgslsmith_mod_i32(-26017i, 40662i)));
}

