struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: i32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: Struct_1 = Struct_1(vec2<u32>(1u, 1u), vec4<bool>(true, false, true, true));

var<private> global2: vec4<i32> = vec4<i32>(1i, 511i, 25974i, 0i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: i32) -> u32 {
    var var_0 = Struct_2(Struct_1(vec2<u32>(19926u, max(_wgslsmith_clamp_u32(4294967295u, global1.a.x, 30817u), _wgslsmith_add_u32(global1.a.x, 39687u))), global1.b));
    let var_1 = vec2<i32>(arg_1, arg_1);
    let var_2 = !(1i <= (1i << (_wgslsmith_clamp_u32(~1u, var_0.a.a.x, _wgslsmith_add_u32(u_input.d.x, var_0.a.a.x)) % 32u)));
    var var_3 = _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(firstTrailingBit(-6973i), _wgslsmith_dot_vec3_i32(global2.zxw, vec3<i32>(global2.x, global2.x, -16015i)), -36522i & global2.x)) ^ ~arg_0.xwy, -vec3<i32>(global2.x, u_input.b.x, 0i));
    var_3 = _wgslsmith_mod_vec3_i32(select(-_wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(var_3.x, global2.x, var_3.x)), global2.wwz | vec3<i32>(1i, arg_0.x, var_3.x), vec3<i32>(0i, 4725i, 1i)), global2.xyz, vec3<bool>(firstTrailingBit(global2.x) >= ~var_1.x, global1.b.x, var_0.a.b.x)), vec3<i32>(-1i) * -(-vec3<i32>(var_3.x, global2.x, var_3.x) ^ -global2.xxx));
    return 101603u;
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: i32) -> f32 {
    global0 = select(!global1.b.yz, !vec2<bool>(all(vec3<bool>(global1.b.x, global1.b.x, false)), true), all(!global1.b.yzz));
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(661f))))), 1000f)));
    global1 = Struct_1((vec2<u32>(arg_0 & 55089u, abs(arg_0)) ^ abs(~arg_1.xw)) & _wgslsmith_add_vec2_u32(firstLeadingBit(_wgslsmith_add_vec2_u32(u_input.d, u_input.d)), vec2<u32>(u_input.d.x >> (global1.a.x % 32u), _wgslsmith_add_u32(arg_0, arg_1.x))), !select(vec4<bool>(true, !global0.x, any(vec2<bool>(global0.x, true)), true), global1.b, select(global1.b, vec4<bool>(true, global0.x, global1.b.x, true), !global1.b)));
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-966f * _wgslsmith_f_op_f32(min(var_0.x, 1423f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) - _wgslsmith_f_op_f32(sign(1296f)))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 797f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -564f) + vec2<f32>(-273f, var_0.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, -1524f), vec2<f32>(var_0.x, var_0.x)))))))));
    return _wgslsmith_f_op_f32(min(397f, _wgslsmith_f_op_f32(step(var_2.x, -1393f))));
}

fn func_2(arg_0: Struct_2) -> u32 {
    global1 = arg_0.a;
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-903f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1431f * 147f), 494f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_3(vec4<i32>(2147483647i, -38619i, -42365i, global2.x), -2534i), vec4<u32>(u_input.d.x, 1u, u_input.a, 35942u), -2147483647i))))), (23614i >= -min(global2.x, u_input.c)) && false));
    var var_1 = !(!select(global1.b, !select(vec4<bool>(true, true, true, global1.b.x), vec4<bool>(global1.b.x, global1.b.x, false, true), vec4<bool>(arg_0.a.b.x, true, global1.b.x, false)), vec4<bool>(global1.b.x, any(arg_0.a.b.wy), true, true)));
    var_1 = vec4<bool>(any(global1.b.yyx) || !arg_0.a.b.x, arg_0.a.b.x, select(global0.x, arg_0.a.b.x, select(all(select(vec2<bool>(var_1.x, global0.x), var_1.zz, var_1.x)), false, true)), any(vec2<bool>(all(select(global1.b.zx, vec2<bool>(global1.b.x, true), var_1.yw)), any(select(arg_0.a.b, global1.b, global0.x)))));
    var var_2 = Struct_3(Struct_2(arg_0.a), !vec2<bool>(false, any(arg_0.a.b.zx)), u_input.c, Struct_1(abs(~(~global1.a)), vec4<bool>(true, !all(vec4<bool>(global1.b.x, global0.x, false, global1.b.x)), false & global0.x, _wgslsmith_f_op_f32(var_0 - 1000f) != _wgslsmith_div_f32(-731f, var_0))), _wgslsmith_div_f32(-1000f, -499f));
    return _wgslsmith_add_u32(4294967295u, _wgslsmith_add_u32(var_2.a.a.a.x, global1.a.x)) & abs(~func_3(vec4<i32>(global2.x, var_2.c, u_input.c, 3722i) >> (vec4<u32>(u_input.a, global1.a.x, 30073u, 18775u) % vec4<u32>(32u)), -2147483647i));
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_1(~(u_input.d ^ vec2<u32>(func_2(Struct_2(Struct_1(u_input.d, global1.b))), 32072u)), !select(!global1.b, vec4<bool>(false, false, global0.x, false), select(global1.b, global1.b, !global1.b)));
    global0 = vec2<bool>(!global0.x, global1.b.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(742f - 1285f), -617f))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(111f, -431f)), _wgslsmith_f_op_f32(f32(-1f) * -700f)), -1000f)));
    global2 = _wgslsmith_div_vec4_i32(max(_wgslsmith_div_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(global2.x, 31142i, -10784i, global2.x), vec4<i32>(global2.x, u_input.c, global2.x, global2.x)), max(select(vec4<i32>(u_input.c, 46934i, u_input.c, -1i), vec4<i32>(16712i, 12170i, global2.x, u_input.b.x), false), vec4<i32>(global2.x, u_input.b.x, -12730i, 0i) << (vec4<u32>(4294967295u, 13715u, 1922u, 10860u) % vec4<u32>(32u)))), vec4<i32>(-45486i, -2147483647i, ~global2.x, countOneBits(abs(1i)))), _wgslsmith_mult_vec4_i32(select(firstTrailingBit(vec4<i32>(global2.x, 1i, global2.x, u_input.b.x)), vec4<i32>(u_input.b.x, -2147483647i, abs(global2.x), 1i), vec4<bool>(true && var_0.b.x, !global1.b.x, false, true)), (-vec4<i32>(2147483647i, u_input.c, global2.x, 1i) << (vec4<u32>(u_input.a, 1u, u_input.d.x, 31739u) % vec4<u32>(32u))) >> (~(~vec4<u32>(global1.a.x, 5372u, var_0.a.x, global1.a.x)) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_sub_u32(~0u, 13356u);
    return Struct_3(Struct_2(var_0), var_0.b.xw, -1i, var_0, _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-1f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = var_0.d;
    let var_2 = var_0.e;
    var var_3 = func_1().a;
    var_3 = var_0.a;
    var var_4 = func_1().a;
    let var_5 = vec4<u32>(firstTrailingBit(func_3(~select(vec4<i32>(-1i, u_input.c, -9625i, global2.x), vec4<i32>(4012i, u_input.b.x, u_input.c, 2147483647i), var_0.a.a.b), -24768i)), 0u, _wgslsmith_div_u32(89299u, var_4.a.a.x), 48044u);
    var_1 = Struct_1(select(vec2<u32>(_wgslsmith_clamp_u32(60891u, var_0.a.a.a.x, global1.a.x) & var_4.a.a.x, func_2(func_1().a)), _wgslsmith_mod_vec2_u32(~vec2<u32>(var_1.a.x, 13510u), ~vec2<u32>(u_input.a, 0u)), vec2<bool>(var_1.b.x, false)), vec4<bool>(global0.x, func_1().b.x, var_3.a.b.x && false, var_4.a.b.x));
    var_1 = var_0.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, 617f))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2257f), var_2)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2, var_2))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-171f, 281f)))))), var_0.e, vec3<u32>(u_input.d.x, countOneBits(var_1.a.x & func_2(var_0.a)), u_input.d.x), vec4<i32>(38574i, select(countOneBits(u_input.c), var_0.c, true), var_0.c ^ (-2147483647i & -global2.x), u_input.c), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(select(911f, _wgslsmith_div_f32(-1000f, var_2), global0.x)), var_2, _wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(ceil(437f))))));
}

