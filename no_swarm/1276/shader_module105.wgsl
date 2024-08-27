struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 9852u, 50853u);

var<private> global1: Struct_2 = Struct_2(1u, false, Struct_1(vec4<u32>(18275u, 5176u, 28673u, 31511u), vec4<bool>(false, false, false, true)), -488f);

var<private> global2: i32;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: bool) -> u32 {
    var var_0 = 1i ^ _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 96373i), vec2<i32>(-51155i, 25875i)), -vec2<i32>(-4675i, -5610i)), -1i), 10198i);
    let var_1 = Struct_3(Struct_2(global1.a, all(!global1.c.b), Struct_1(~global1.c.a, vec4<bool>(any(arg_0.yx), -319f <= global1.d, all(vec3<bool>(true, arg_0.x, arg_0.x)), true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f - -145f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d, global1.d, global1.d, 917f) * vec4<f32>(arg_1, global1.d, -2326f, -149f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d, global1.d, global1.d, -648f)))))), _wgslsmith_dot_vec2_u32(firstTrailingBit(min(vec2<u32>(1u, global1.a), global0.yy)), global0.yy), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1047f, _wgslsmith_f_op_f32(-arg_1))))));
    var var_2 = _wgslsmith_mult_u32(var_1.a.a, _wgslsmith_dot_vec4_u32(~select(~vec4<u32>(51231u, global0.x, global1.a, 60063u), var_1.a.c.a ^ var_1.a.c.a, select(var_1.a.c.b, arg_0, var_1.a.b)), ~global1.c.a));
    var var_3 = select(select(!var_1.a.c.b.xw, !(!(!vec2<bool>(arg_0.x, true))), vec2<bool>(_wgslsmith_clamp_u32(25735u, 27304u, global1.a) == _wgslsmith_sub_u32(global1.c.a.x, u_input.a), true)), !select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(arg_0.x, false, true, false)), any(vec3<bool>(false, var_1.a.c.b.x, var_1.a.c.b.x))), arg_0.zx), false);
    let var_4 = min(-vec3<i32>(reverseBits(2942i), _wgslsmith_mod_i32(2147483647i, min(0i, -2147483647i)), abs(-3306i)), vec3<i32>(0i, 1i, max(13503i, reverseBits(5512i) | select(-7667i, -2147483647i, arg_0.x))));
    return 17472u;
}

fn func_2(arg_0: vec2<u32>) -> vec3<i32> {
    let var_0 = Struct_3(Struct_2(~func_3(vec4<bool>(global1.c.b.x, global1.b, true, global1.c.b.x), 198f, global1.b | false), false, global1.c, _wgslsmith_f_op_f32(min(global1.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d, -1000f))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.d + _wgslsmith_f_op_f32(sign(-609f))))), _wgslsmith_f_op_f32(global1.d - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.d)) - global1.d)), _wgslsmith_f_op_f32(-global1.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(605f * 419f)))), ~(~(_wgslsmith_div_u32(arg_0.x, u_input.b) << (_wgslsmith_mod_u32(20135u, global1.a) % 32u))), _wgslsmith_f_op_f32(-453f * global1.d));
    var var_1 = global1.c;
    let var_2 = var_1.b.zy;
    global2 = reverseBits(~abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(39944i, 18727i, -1i, 1i), abs(vec4<i32>(18427i, -10265i, -33096i, 29574i)))));
    var var_3 = Struct_3(Struct_2(~u_input.b, global1.b | false, var_0.a.c, _wgslsmith_f_op_f32(ceil(214f))), _wgslsmith_f_op_vec4_f32(-var_0.b), arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2288f + _wgslsmith_f_op_f32(var_0.b.x + 1606f)) + 491f))));
    return max(vec3<i32>(~(~35634i), ~_wgslsmith_add_i32(reverseBits(-1i), i32(-1i) * -64232i), ~5348i), _wgslsmith_add_vec3_i32(vec3<i32>(-firstLeadingBit(-2147483647i), 1i, -1i), select(abs(-vec3<i32>(27795i, -2147483647i, -2147483647i)), vec3<i32>(1i, countOneBits(2147483647i), ~(-23533i)), vec3<bool>(global1.b, all(vec3<bool>(true, global1.b, var_0.a.b)), var_1.b.x))));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_mod_vec3_i32(-abs(vec3<i32>(countOneBits(-2882i), 1i, i32(-1i) * -78976i)), _wgslsmith_clamp_vec3_i32(func_2(max(~global0.yx, global0.xy)), abs(vec3<i32>(-1i) * -vec3<i32>(0i, -1i, -1i)), abs(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, -12397i, 17066i), vec3<i32>(17309i, 0i, -28158i))))));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~func_1();
    let var_0 = Struct_3(Struct_2(global0.x, all(select(global1.c.b, select(vec4<bool>(global1.c.b.x, true, global1.b, global1.b), global1.c.b, true), vec4<bool>(true, false, false, true))), Struct_1(global1.c.a, select(!vec4<bool>(global1.b, false, false, false), select(vec4<bool>(global1.c.b.x, false, false, global1.c.b.x), vec4<bool>(false, global1.b, global1.b, global1.c.b.x), vec4<bool>(true, false, true, global1.b)), all(global1.c.b.yzx))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1509f * _wgslsmith_f_op_f32(f32(-1f) * -1296f)) + -661f)), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.d))), -1346f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.d)))), -1187f, 197f), 1u, _wgslsmith_f_op_f32(global1.d - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, global1.d), _wgslsmith_f_op_f32(f32(-1f) * -1191f))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.d))) * _wgslsmith_f_op_f32(-global1.d));
    var var_2 = !vec3<bool>(all(vec2<bool>(all(vec2<bool>(true, var_0.a.b)), 373f < global1.d)), !var_0.a.b, global1.c.b.x);
    var var_3 = reverseBits(_wgslsmith_add_vec3_i32(func_2(vec2<u32>(37339u, _wgslsmith_div_u32(u_input.b, var_0.a.a))), vec3<i32>(~(-1i), ~(-16737i), -2147483647i)));
    var_3 = countOneBits(func_2(_wgslsmith_div_vec2_u32(select(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, global1.a), global1.c.a.ww), global1.c.a.xx, var_2.x), vec2<u32>(1u, u_input.a) | global1.c.a.yy)));
    global1 = Struct_2(35430u, all(global1.c.b.xz), var_0.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1447f * global1.d) - var_0.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.yz, countOneBits(-2147483647i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, 140f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-358f, -690f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.ww)))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(-4901i, firstLeadingBit(~(-2147483647i))), ~((i32(-1i) * -9116i) >> (_wgslsmith_div_u32(0u, global1.c.a.x) % 32u))));
}

