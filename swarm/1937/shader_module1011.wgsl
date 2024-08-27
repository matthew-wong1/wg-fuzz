struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(61895u, 42575u, 0u, 22313u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> u32 {
    return global0.x;
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: i32) -> vec2<bool> {
    var var_0 = Struct_2(vec4<u32>(firstLeadingBit(~global0.x >> (_wgslsmith_sub_u32(43379u, 1u) % 32u)), _wgslsmith_sub_u32(~19661u << (func_2(Struct_1(52705u, 1123f, arg_1.wxz, false), Struct_1(4294967295u, -1066f, vec3<bool>(true, arg_0, arg_1.x), arg_0), arg_1) % 32u), ~min(1u, global0.x)), 0u, _wgslsmith_mod_u32(36542u, global0.x)), u_input.c.wyx, abs(vec4<i32>(_wgslsmith_mult_i32(u_input.e.x, 0i), -arg_2, u_input.c.x | 14683i, _wgslsmith_dot_vec3_i32(u_input.c.yyy, u_input.c.xyw)) & ~u_input.c));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1313f, -626f));
    return select(select(!(!(!vec2<bool>(arg_1.x, true))), select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(arg_1.x, false, arg_0, true)), true), !arg_1.xw), false), vec2<bool>(true, true), (true == (arg_0 || any(arg_1.yz))) || !arg_1.x);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: Struct_2) -> u32 {
    let var_0 = arg_2;
    var var_1 = Struct_2(~arg_2.a, vec3<i32>(-1i) * -(var_0.b ^ (vec3<i32>(u_input.e.x, 1i, -62950i) >> (global0.xww % vec3<u32>(32u)))), var_0.c);
    let var_2 = reverseBits(vec3<i32>(-1i) * -vec3<i32>(u_input.e.x << (0u % 32u), -8965i, ~var_1.b.x));
    var var_3 = select(vec2<bool>(true, true), vec2<bool>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(22958u, global0.x, 4294967295u), ~var_0.a.x) > _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.a.x), vec2<u32>(global0.x, global0.x)), 4294967295u), reverseBits(func_2(Struct_1(global0.x, 909f, vec3<bool>(false, true, true), false), Struct_1(0u, -870f, vec3<bool>(true, true, false), false), vec4<bool>(true, true, false, true))) <= _wgslsmith_div_u32(~u_input.d.x, arg_2.a.x)), select(select(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true)), vec2<bool>(any(vec3<bool>(true, false, true)), var_0.a.x <= u_input.d.x)), !select(vec2<bool>(true, false), func_3(false, vec4<bool>(false, false, true, true), var_0.b.x), vec2<bool>(false, true)), vec2<bool>(false, true)));
    var var_4 = Struct_1(1u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.x, -1106f, !var_3.x)) - 1512f))), !(!vec3<bool>(!var_3.x, true, var_3.x)), var_3.x);
    return var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<u32>(72884u, (_wgslsmith_mod_u32(1u, ~u_input.d.x) << (global0.x % 32u)) >> (1u % 32u), global0.x, ~_wgslsmith_div_u32(~max(17497u, global0.x), u_input.a.x));
    global0 = vec4<u32>(~min(0u, ~(global0.x & u_input.d.x)), _wgslsmith_dot_vec2_u32(~(~u_input.a), _wgslsmith_add_vec2_u32(~u_input.d.zx >> (~vec2<u32>(u_input.d.x, 16750u) % vec2<u32>(32u)), vec2<u32>(~global0.x, global0.x))), u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(func_1(vec3<f32>(353f, -620f, -1102f), vec2<f32>(-992f, 194f), Struct_2(vec4<u32>(2112u, 4294967295u, 16388u, 4294967295u), vec3<i32>(-1i, -2147483647i, u_input.e.x), u_input.c)), u_input.d.x, max(23356u, global0.x)) ^ global0.xww));
    let var_0 = Struct_2(min(vec4<u32>(~global0.x, 1u, 94392u, 0u) | firstTrailingBit(abs(vec4<u32>(27118u, 20183u, u_input.a.x, u_input.a.x))), countOneBits(~(vec4<u32>(global0.x, u_input.d.x, global0.x, 1u) << (vec4<u32>(global0.x, 49093u, 19169u, global0.x) % vec4<u32>(32u))))), firstLeadingBit((-vec3<i32>(u_input.e.x, u_input.b.x, -6134i) ^ u_input.c.ywz) ^ (vec3<i32>(2147483647i, -2147483647i, 1i) << (_wgslsmith_sub_vec3_u32(global0.zyx, vec3<u32>(u_input.d.x, 4294967295u, u_input.a.x)) % vec3<u32>(32u)))), countOneBits(u_input.c));
    var var_1 = !(!select(vec4<bool>(select(true, true, false), all(vec2<bool>(false, true)), all(vec3<bool>(false, true, false)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)), 4294967295u != global0.x), vec4<bool>(true, true, true, true)));
    let var_2 = Struct_2(var_0.a, vec3<i32>(-47695i, var_0.c.x, abs(_wgslsmith_mult_i32(_wgslsmith_sub_i32(1872i, var_0.b.x), var_0.c.x))), abs(vec4<i32>(-25726i, u_input.e.x, 35075i, -11325i)) >> (var_0.a % vec4<u32>(32u)));
    var_1 = select(vec4<bool>(select(all(select(vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), false, !(var_1.x == var_1.x)), var_1.x, true, var_1.x), select(vec4<bool>((u_input.d.x >= global0.x) || true, any(var_1.xw), false, true), select(!select(vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(false, false, var_1.x, true)), !(!vec4<bool>(var_1.x, var_1.x, var_1.x, false)), var_1.x), vec4<bool>(all(select(vec2<bool>(false, var_1.x), var_1.wy, var_1.zz)), (var_1.x && true) && true, var_1.x, true)), true);
    global0 = vec4<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(global0.x, u_input.a.x, u_input.d.x, u_input.d.x), vec4<u32>(~var_0.a.x, _wgslsmith_clamp_u32(global0.x, 3577u, u_input.a.x), u_input.d.x, var_2.a.x)), vec4<u32>(func_1(vec3<f32>(-664f, -892f, 1000f), vec2<f32>(703f, 606f), Struct_2(var_0.a, vec3<i32>(-2147483647i, 16063i, 0i), var_0.c)) >> (~4294967295u % 32u), global0.x, _wgslsmith_div_u32(1u, func_1(vec3<f32>(1160f, 1106f, 1741f), vec2<f32>(739f, 692f), var_0)), reverseBits(global0.x) ^ _wgslsmith_mod_u32(var_2.a.x, u_input.d.x))), _wgslsmith_mult_u32(~reverseBits(4899u), func_1(vec3<f32>(933f, _wgslsmith_f_op_f32(f32(-1f) * -656f), -2271f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-545f, -109f)), Struct_2(var_2.a, ~var_2.c.yyx, var_0.c << (var_2.a % vec4<u32>(32u))))), firstLeadingBit(_wgslsmith_div_u32(var_0.a.x, _wgslsmith_mod_u32(abs(74885u), _wgslsmith_clamp_u32(1u, 55758u, 26774u)))));
    global0 = ~(select(vec4<u32>(0u, ~u_input.a.x, var_0.a.x ^ 0u, _wgslsmith_add_u32(1u, var_2.a.x)), vec4<u32>(~6090u, 1u, _wgslsmith_dot_vec3_u32(var_2.a.xzw, vec3<u32>(var_0.a.x, 59256u, 4294967295u)), 4294967295u), false) & ~var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_sub_i32(var_2.c.x, -1i), select(~_wgslsmith_dot_vec2_i32(var_0.c.yx, vec2<i32>(16105i, var_0.b.x)), -min(-21095i, var_2.b.x), func_3(!var_1.x, select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), var_1.x), _wgslsmith_add_i32(-1i, u_input.c.x)).x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(623f, _wgslsmith_f_op_f32(1243f - -1314f))))), min(~vec4<u32>(var_0.a.x, global0.x, global0.x, reverseBits(global0.x)), _wgslsmith_add_vec4_u32(var_2.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a.x, u_input.d.x, 0u, 37517u), ~var_2.a, reverseBits(var_2.a)))), _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(4294967295u, var_2.a.x)), select(vec2<u32>(global0.x, global0.x), ~(~var_0.a.xw), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(237f, 1527f, 1000f, 1362f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(784f, -542f, -879f, 821f))))));
}

