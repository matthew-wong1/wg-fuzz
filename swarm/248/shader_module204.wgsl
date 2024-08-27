struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: f32;

var<private> global2: vec3<f32>;

var<private> global3: vec2<i32> = vec2<i32>(0i, 0i);

var<private> global4: vec3<u32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: vec3<f32>) -> vec2<bool> {
    global3 = arg_1;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1433f) + _wgslsmith_f_op_f32(max(227f, global0.a.a.x))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(190f)))))) * -887f);
    let var_1 = _wgslsmith_div_vec2_u32(~select(_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 1u), vec2<u32>(arg_0.x, global4.x)), arg_0, all(vec4<bool>(true, false, false, false))), global0.a.b.wy);
    var var_2 = Struct_2(0u, global0.a, vec3<i32>(i32(-1i) * -_wgslsmith_dot_vec2_i32(arg_1, arg_1), _wgslsmith_mult_i32(-firstTrailingBit(-1i), abs(_wgslsmith_sub_i32(-49940i, u_input.d))), arg_1.x), _wgslsmith_div_vec3_i32(vec3<i32>(-arg_1.x, i32(-1i) * -54576i, ~19610i) >> (_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, global0.c, 17201u)), u_input.b.zzw) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(countOneBits(~vec3<i32>(-2147483647i, 35216i, arg_1.x)), -vec3<i32>(1i, 631i, arg_1.x))));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(180f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a.a.x), -382f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1073f)))))), _wgslsmith_f_op_f32(round(843f))));
    return vec2<bool>(true, true);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(all(vec4<bool>(true, false, false, true)), true), !func_3(u_input.b.zx, vec2<i32>(-2147483647i, -1i), vec3<u32>(4294967295u, 69164u, 0u), global0.a.a), vec2<bool>(false, func_3(global4.xx, arg_0.yw, vec3<u32>(global0.c, 4294967295u, 49166u), global0.b.a).x))));
    var var_1 = global0.b;
    global2 = var_1.a;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-672f, _wgslsmith_f_op_f32(step(var_1.a.x, arg_1.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a.x))), -481f)), var_1.b);
    let var_3 = true;
    return Struct_2(global4.x, var_2, vec3<i32>(_wgslsmith_add_i32(abs(i32(-1i) * -2147483647i), -1i), u_input.a, -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, global3.x), reverseBits(arg_0.yxz))), select(vec3<i32>(countOneBits(global3.x), u_input.a, arg_0.x << (13313u % 32u)), abs(-arg_0.xzy), !(!vec3<bool>(var_3, var_3, true))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    global4 = ~vec3<u32>(global4.x, _wgslsmith_mod_u32(83123u, u_input.b.x), 46168u);
    global3 = vec2<i32>(-1i) * -vec2<i32>(-15689i, _wgslsmith_sub_i32(select(30941i, -5145i, true), 2147483647i));
    var var_0 = Struct_4(arg_0.b, _wgslsmith_f_op_f32(floor(-1000f)), abs(global0.b.b));
    global2 = _wgslsmith_f_op_vec3_f32(max(var_0.a.a, vec3<f32>(454f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(trunc(func_2(vec4<i32>(arg_0.d.x, -2147483647i, global3.x, -2147483647i), vec3<f32>(arg_0.b.a.x, 1000f, -201f)).b.a.x))), _wgslsmith_f_op_f32(arg_0.b.a.x + arg_0.b.a.x))));
    global4 = vec3<u32>(max(~firstLeadingBit(51026u) & _wgslsmith_sub_u32(~39433u, min(global0.c, 4294967295u)), _wgslsmith_dot_vec3_u32(~u_input.b.zxw, var_0.a.b.xyx)), ~abs(firstLeadingBit(1u)), countOneBits(_wgslsmith_dot_vec3_u32(~(u_input.b.zxz | global0.b.b.xyw), vec3<u32>(_wgslsmith_mod_u32(global0.c, 1u), ~7466u, 1u))));
    return global0.b;
}

fn func_5(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1) -> Struct_3 {
    global3 = (vec2<i32>(-u_input.d ^ 0i, global3.x) >> (~vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.b.xzy, u_input.b.wxy), _wgslsmith_mult_u32(28416u, global0.a.b.x)) % vec2<u32>(32u))) ^ (vec2<i32>(16024i, global3.x) >> (firstTrailingBit(vec2<u32>(43439u, u_input.c ^ 1u)) % vec2<u32>(32u)));
    global1 = 134f;
    var var_0 = select(select(vec3<bool>(false, !(4294967295u != global4.x), true), select(vec3<bool>(true, true, arg_2.b.x == arg_2.b.x), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), !(global4.x >= 11469u)), vec3<bool>(true && any(vec4<bool>(false, true, true, false)), select(true, any(vec4<bool>(false, true, false, false)), true), true)), vec3<bool>(func_3(~vec2<u32>(44613u, global4.x) ^ abs(global0.a.b.wy), ~arg_0, func_2(vec4<i32>(arg_0.x, -2147483647i, 9564i, 2147483647i), global0.a.a).b.b.xyy ^ global0.a.b.xzz, global0.a.a).x, false, _wgslsmith_div_i32(u_input.a, -arg_0.x) > firstLeadingBit(arg_0.x)), select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, 4294967295u > arg_2.b.x, global2.x > 1480f), !select(false, true, false)), !(!all(vec2<bool>(true, true)))));
    var_0 = vec3<bool>(func_3(_wgslsmith_div_vec2_u32(vec2<u32>(arg_2.b.x, _wgslsmith_sub_u32(arg_2.b.x, global0.c)), ~(~u_input.b.ww)), min((vec2<i32>(39261i, arg_0.x) ^ vec2<i32>(-50038i, -2147483647i)) | vec2<i32>(-2147483647i, -33620i), vec2<i32>(12133i, arg_0.x)), u_input.b.wzx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_2.a, global0.a.a)) * vec3<f32>(-1990f, global0.b.a.x, -1231f)))).x, var_0.x, _wgslsmith_f_op_f32(trunc(-117f)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(trunc(-1000f))), 1000f));
    let var_1 = abs(u_input.b.x);
    return Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(arg_2.a)), vec4<u32>(_wgslsmith_mult_u32(global4.x << (2661u % 32u), _wgslsmith_dot_vec3_u32(u_input.b.yyw, u_input.b.zzz)), _wgslsmith_clamp_u32(0u, global0.a.b.x, global0.a.b.x), ~(global4.x | 0u), ~global0.a.b.x)), func_4(func_2(~(-vec4<i32>(u_input.a, -29044i, 27554i, u_input.a)), _wgslsmith_f_op_vec3_f32(-global0.a.a))), _wgslsmith_div_u32(~(~global0.a.b.x), global0.b.b.x));
}

fn func_1() -> Struct_4 {
    let var_0 = func_5(~select(-(~vec2<i32>(0i, -2147483647i)), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, global3.x), vec2<i32>(-1i, u_input.a) & vec2<i32>(-29755i, u_input.a)), vec2<bool>(false, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a.a.x * global2.x)))), global0.a.a.x), func_4(func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 2147483647i, -2147483647i, 1i), vec4<i32>(8550i, u_input.a, u_input.d, u_input.a), -vec4<i32>(-9551i, global3.x, global3.x, 0i)), vec3<f32>(453f, _wgslsmith_f_op_f32(global2.x * global0.a.a.x), _wgslsmith_f_op_f32(f32(-1f) * -814f)))));
    let var_1 = Struct_3(global0.a, global0.a, firstTrailingBit(1u));
    let var_2 = Struct_2(abs(firstTrailingBit(_wgslsmith_div_u32(reverseBits(0u), 1u))), func_4(Struct_2(~(4294967295u >> (0u % 32u)), Struct_1(vec3<f32>(-576f, global0.a.a.x, -101f), _wgslsmith_sub_vec4_u32(global0.a.b, vec4<u32>(global4.x, global0.b.b.x, 4294967295u, global0.a.b.x))), vec3<i32>(-1i, -global3.x, _wgslsmith_sub_i32(-2147483647i, -9132i)), vec3<i32>(global3.x & 2147483647i, 0i, 0i))), abs(~(-(vec3<i32>(-2147483647i, 69035i, u_input.a) ^ vec3<i32>(u_input.d, u_input.a, u_input.d)))), -_wgslsmith_mod_vec3_i32(vec3<i32>(~global3.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-9159i, u_input.d, 16320i, u_input.a), vec4<i32>(1i, 2147483647i, u_input.d, u_input.d)), ~global3.x), ~(vec3<i32>(u_input.a, u_input.d, -39206i) >> (vec3<u32>(4294967295u, 10202u, global4.x) % vec3<u32>(32u)))));
    var var_3 = ~_wgslsmith_clamp_vec2_u32(~select(_wgslsmith_mod_vec2_u32(vec2<u32>(10788u, 0u), vec2<u32>(4294967295u, u_input.c)), var_2.b.b.xy << (vec2<u32>(global4.x, var_0.a.b.x) % vec2<u32>(32u)), vec2<bool>(false, false)), countOneBits(global0.b.b.xy), _wgslsmith_div_vec2_u32(func_4(var_2).b.yx, u_input.b.yy));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -650f);
    return Struct_4(var_1.b, -1000f, var_2.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - 1000f) + global2.x) - -233f), _wgslsmith_f_op_f32(-global2.x))));
    global4 = u_input.b.wwy;
    global4 = _wgslsmith_mult_vec3_u32(global0.b.b.zww, _wgslsmith_add_vec3_u32(u_input.b.xzx, ~firstTrailingBit(global0.a.b.zxy)));
    var var_0 = func_1();
    let var_1 = global0.a.a.x;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a.x - _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(129f - -476f)))) * var_0.a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x, min(var_0.a.b.x, u_input.b.x), 24690u, -6325i);
}

