struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 22>;

var<private> global1: Struct_2;

var<private> global2: f32;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: f32, arg_3: Struct_1) -> u32 {
    global2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.a.x)));
    var var_0 = Struct_2(vec3<f32>(arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-442f, -937f) + _wgslsmith_f_op_f32(trunc(-854f))), _wgslsmith_f_op_f32(round(global1.a.x))), _wgslsmith_f_op_f32(floor(arg_2))), -8255i, Struct_1(arg_3.b.x, select(!global1.d, select(arg_3.b, vec4<bool>(true, true, true, true), select(global1.d, arg_3.b, arg_3.b.x)), arg_3.b), vec4<i32>(0i, global1.e.c.x, -1i, i32(-1i) * -18029i), ~vec2<u32>(arg_3.d.x, u_input.b.x)), select(arg_3.b, !select(vec4<bool>(false, global1.c.a, arg_3.a, true), !vec4<bool>(arg_3.b.x, arg_0.x, arg_1.b.x, global1.c.a), all(global1.d.www)), !select(!global1.d, vec4<bool>(global1.c.a, true, false, true), global1.c.c.x <= arg_1.a.d.x)), arg_3);
    return _wgslsmith_dot_vec4_u32((~(~u_input.b) >> (reverseBits(~u_input.b) % vec4<u32>(32u))) ^ u_input.b, vec4<u32>(~1u, firstTrailingBit(max(4294967295u, global1.c.d.x)), _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.e.d.x), vec2<u32>(arg_3.d.x, u_input.b.x)), 0u), arg_3.d.x), ~0u));
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<u32>(~4294967295u, func_3(!vec3<bool>(false, global1.e.b.x, global1.e.a), Struct_4(Struct_3(global1.d.xz, global1.c.c.xyy, global1.b, global1.e.c), !global1.e.b.wxw, any(vec2<bool>(true, true))), global1.a.x, global1.c) & ~27124u);
    var var_1 = _wgslsmith_f_op_f32(127f * global1.a.x);
    var var_2 = global1.e.c.x >= _wgslsmith_sub_i32(1i, global1.b);
    let var_3 = Struct_3(global1.e.b.ww, firstTrailingBit(vec3<i32>(global1.b, 13923i, -global1.c.c.x)), -(select(40001i, 12394i, global1.e.a) << (global1.c.d.x % 32u)) | global1.e.c.x, global1.e.c);
    let var_4 = Struct_4(Struct_3(vec2<bool>((1306f != global1.a.x) & (var_3.b.x >= global1.b), true), firstTrailingBit(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(var_3.d.xwy, var_3.b), vec3<i32>(global1.b, -2147483647i, var_3.c))), -global1.c.c.x, vec4<i32>(global1.c.c.x, -abs(7694i), _wgslsmith_add_i32(global1.b, 0i) >> (_wgslsmith_add_u32(global1.c.d.x, var_0.x) % 32u), global1.b)), select(select(vec3<bool>(true, false, !var_3.a.x), vec3<bool>(!var_3.a.x, true, true), !select(vec3<bool>(true, global1.c.b.x, global1.d.x), global1.c.b.yyz, true)), vec3<bool>(all(select(global1.c.b, global1.e.b, global1.c.b)), any(var_3.a), !all(vec3<bool>(true, global1.d.x, global1.e.a))), false), !var_3.a.x);
    return Struct_1(false, vec4<bool>(var_4.a.a.x, true, all(!vec2<bool>(global1.e.b.x, false)), !(0u < u_input.a) | var_4.c), var_3.d, u_input.b.xw);
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_4 {
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.a.x * -2041f), _wgslsmith_f_op_f32(round(global1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1237f)) - global1.a), 46633i, global1.e, global1.c.b, func_2());
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(global1.a.x * global1.a.x))), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -971f), 1359f))), -16953i, global1.c, select(!global1.d, !vec4<bool>(select(false, global1.d.x, false), !arg_1, global1.e.d.x != 1u, !arg_1), all(!global1.c.b.zz)), func_2());
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-162f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.a.x + global1.a.x))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(444f * var_0.a.x)) + _wgslsmith_f_op_f32(round(global1.a.x))) - 1099f));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.a.x)), _wgslsmith_div_f32(717f, -578f)), _wgslsmith_f_op_f32(f32(-1f) * -261f)))));
    var var_3 = var_0;
    return Struct_4(Struct_3(!func_2().b.xy, select(vec3<i32>(var_0.e.c.x, var_0.b, -var_3.c.c.x), var_0.e.c.wyx, false), -4500i, ~_wgslsmith_mult_vec4_i32(var_3.e.c, global1.c.c)), global1.e.b.wyw, global1.c.b.x);
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    var var_0 = Struct_1(!global1.e.a, vec4<bool>(91582u >= (global1.e.d.x ^ global1.c.d.x), any(vec3<bool>(false, arg_0.b.x, global1.d.x)) && ((169f < global1.a.x) || func_1(global1.e.c.x, global1.e.b.x).a.a.x), true, true), -global1.e.c, vec2<u32>(12971u, ~u_input.a));
    global2 = 792f;
    var var_1 = func_2();
    let var_2 = arg_0;
    let var_3 = func_2();
    return Struct_2(_wgslsmith_f_op_vec3_f32(global1.a + vec3<f32>(global1.a.x, global1.a.x, _wgslsmith_f_op_f32(abs(global1.a.x)))), var_1.c.x, global1.c, select(vec4<bool>(var_3.d.x >= 1u, true, func_2().b.x, true), func_2().b, var_0.b), Struct_1(false, func_2().b, _wgslsmith_div_vec4_i32(~(-var_1.c), vec4<i32>(-1313i, _wgslsmith_mod_i32(global1.c.c.x, 16013i), _wgslsmith_div_i32(var_1.c.x, -12155i), -1i)), var_3.d));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: bool) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_1.a + arg_1.a), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global1.a.x)), _wgslsmith_f_op_f32(ceil(480f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), global1.a.x), arg_0.x)), global1.c.c.x, func_4(Struct_4(Struct_3(arg_1.c.b.xx, vec3<i32>(12210i, arg_1.c.c.x, -21182i), arg_1.e.c.x, ~global1.e.c), vec3<bool>(select(true, arg_3, false), select(true, false, true), true), global1.d.x)).e, !func_2().b, Struct_1(true, arg_0, func_2().c, ~arg_2));
    var var_1 = var_0.a;
    let var_2 = Struct_3(!(!arg_1.e.b.zy), _wgslsmith_sub_vec3_i32(~select(vec3<i32>(arg_1.c.c.x, var_0.b, -23919i), vec3<i32>(-1i, 2147483647i, global1.e.c.x) | arg_1.e.c.xzy, func_2().b.x), max(var_0.c.c.xxw, vec3<i32>(arg_1.c.c.x >> (global1.c.d.x % 32u), i32(-1i) * -26838i, ~2147483647i))), ~(-reverseBits(arg_1.c.c.x)), select(vec4<i32>(max(global1.b, _wgslsmith_add_i32(var_0.e.c.x, 28844i)), -2147483647i, _wgslsmith_mod_i32(0i, var_0.e.c.x), _wgslsmith_mult_i32(-var_0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c.c.x, var_0.e.c.x, -10519i, 1i), arg_1.c.c))), global1.e.c, arg_1.e.b));
    return func_4(func_1(1i, func_2().b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(global1.e.b, func_4(func_1(~global1.b, all(!vec3<bool>(global1.d.x, global1.d.x, false)))), global1.c.d, global1.d.x);
    var var_0 = func_5(global1.c.b, Struct_2(_wgslsmith_f_op_vec3_f32(ceil(global1.a)), ~_wgslsmith_mult_i32(global1.b, 8984i) & global1.e.c.x, func_5(select(!vec4<bool>(false, global1.d.x, false, true), func_2().b, !global1.d.x), Struct_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.a.x, -2526f, -239f))), ~global1.b, Struct_1(global1.c.a, vec4<bool>(global1.c.a, global1.c.a, false, global1.e.b.x), vec4<i32>(global1.b, global1.c.c.x, global1.b, -10261i), vec2<u32>(4294967295u, global1.e.d.x)), !vec4<bool>(false, global1.c.a, global1.e.b.x, true), func_2()), ~(~global1.c.d), global1.d.x).e, !select(select(vec4<bool>(global1.e.a, true, false, true), vec4<bool>(false, global1.e.a, global1.d.x, global1.c.b.x), global1.d.x), vec4<bool>(false, false, true, false), select(vec4<bool>(global1.e.b.x, global1.c.b.x, false, false), global1.e.b, false)), global1.c), vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, global1.c.d.x, 51989u), vec3<u32>(global1.e.d.x ^ global1.c.d.x, global1.e.d.x, 31237u)), 50905u), true).a.x;
    let var_1 = ~select(-_wgslsmith_add_vec2_i32(global1.e.c.yy, global1.e.c.yx), func_1(select(-27830i, global1.e.c.x, false), global1.e.b.x || global1.e.b.x).a.b.xx, func_4(Struct_4(Struct_3(vec2<bool>(global1.c.b.x, global1.d.x), vec3<i32>(global1.c.c.x, global1.c.c.x, 62522i), 14294i, global1.e.c), global1.e.b.wwy, true)).e.b.ww) ^ global1.c.c.yx;
    let var_2 = Struct_3(!func_4(func_1(_wgslsmith_mod_i32(global1.b, global1.b), true)).e.b.zw, vec3<i32>(~func_1(abs(2147483647i), func_2().b.x).a.c, ~global1.b, var_1.x >> (_wgslsmith_div_u32(u_input.a, 19194u) % 32u)), global1.b, func_4(func_1(~global1.c.c.x, func_4(Struct_4(Struct_3(global1.e.b.yy, global1.c.c.yyz, -1376i, global1.e.c), vec3<bool>(true, false, global1.c.b.x), true)).c.b.x)).c.c ^ _wgslsmith_sub_vec4_i32(min(-global1.e.c, vec4<i32>(20027i, var_1.x, global1.c.c.x, -2147483647i)), global1.e.c));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(336f)) - -391f)));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<u32>(global1.e.d.x >> (u_input.b.x % 32u), u_input.b.x << (~u_input.b.x % 32u)), u_input.b.yw));
}

