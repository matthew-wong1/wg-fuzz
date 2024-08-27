struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: u32) -> i32 {
    var var_0 = Struct_2(arg_1);
    let var_1 = Struct_2(arg_1);
    let var_2 = all(vec4<bool>(arg_0, arg_0, arg_0, (arg_1.d.x < var_1.a.d.x) == true));
    let var_3 = arg_2.x;
    var_0 = var_1;
    return ~(-1i);
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = max(countOneBits(_wgslsmith_add_i32(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_mult_i32(u_input.a.x, arg_0.a.x)), func_3(false, arg_0, u_input.a.ww ^ vec2<i32>(u_input.a.x, -12257i), _wgslsmith_mult_u32(arg_0.b.x, u_input.b.x)))), ~0i);
    var var_1 = Struct_1(vec2<i32>(11437i, firstTrailingBit(0i)), _wgslsmith_div_vec4_u32(~select(max(vec4<u32>(u_input.c, u_input.b.x, 1u, 4294967295u), vec4<u32>(27994u, arg_0.b.x, 1u, u_input.c)), max(u_input.b, u_input.b), all(vec4<bool>(true, true, true, true))), firstTrailingBit(max(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b.x, 79839u, 4294967295u, u_input.c), vec4<u32>(u_input.b.x, u_input.c, 1u, u_input.b.x)), _wgslsmith_mult_vec4_u32(u_input.b, arg_0.b)))), vec3<i32>(abs(var_0), 0i, _wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.a.x, var_0, -18715i), vec4<i32>(arg_0.a.x, u_input.a.x, arg_0.c.x, 2147483647i)), max(-u_input.a, select(u_input.a, vec4<i32>(2147483647i, -2147483647i, -1i, -16572i), false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.d.x)), _wgslsmith_f_op_f32(-arg_0.d.x), arg_0.d.x, arg_0.d.x))));
    let var_2 = !select(vec2<bool>(true, true), !select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false)), false);
    let var_3 = var_1.d.x;
    return 4505i;
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<i32>, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec2<i32>(arg_0.x & ~(-2147483647i), func_2(Struct_1(arg_2.yz, vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.c), vec3<i32>(arg_1, arg_1, u_input.a.x), vec4<f32>(-1327f, 1253f, -441f, 1820f)))), _wgslsmith_mult_vec4_u32(abs(countOneBits(vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.c))), max(~vec4<u32>(43081u, 3897u, u_input.b.x, 1u), u_input.b)), ~arg_2, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f + 527f), _wgslsmith_f_op_f32(f32(-1f) * -1181f), _wgslsmith_f_op_f32(max(1090f, -2504f)), 615f))));
    var_0 = Struct_2(Struct_1(var_0.a.a, ~vec4<u32>(abs(u_input.c), u_input.b.x, abs(var_0.a.b.x), u_input.c), vec3<i32>(-_wgslsmith_add_i32(-55428i, u_input.a.x), u_input.a.x, _wgslsmith_sub_i32(~var_0.a.c.x, -arg_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a.d + _wgslsmith_f_op_vec4_f32(var_0.a.d * vec4<f32>(-433f, -111f, var_0.a.d.x, var_0.a.d.x))))));
    var_0 = Struct_2(Struct_1(reverseBits(arg_2.yz), (~u_input.b << (_wgslsmith_mult_vec4_u32(vec4<u32>(57933u, 43562u, 4294967295u, u_input.b.x), vec4<u32>(27987u, 4294967295u, 1u, 4294967295u)) % vec4<u32>(32u))) << (_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 63201u, 71350u), vec4<u32>(var_0.a.b.x, var_0.a.b.x, 4294967295u, u_input.c)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 49263u, 1u, 0u), var_0.a.b)) % vec4<u32>(32u)), vec3<i32>(i32(-1i) * -arg_0.x, -16967i, arg_1), vec4<f32>(var_0.a.d.x, var_0.a.d.x, -276f, _wgslsmith_f_op_f32(var_0.a.d.x + 901f))));
    var_0 = Struct_2(var_0.a);
    var_0 = Struct_2(Struct_1(firstLeadingBit(u_input.a.zz), vec4<u32>(var_0.a.b.x, ~_wgslsmith_div_u32(6416u, 21430u), var_0.a.b.x, var_0.a.b.x), -u_input.a.xxz, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(var_0.a.d.x, var_0.a.d.x)), _wgslsmith_f_op_f32(-var_0.a.d.x), _wgslsmith_f_op_f32(floor(var_0.a.d.x)), 530f))));
    return var_0.a;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = arg_2;
    var var_1 = vec4<bool>(arg_2, select(true & !(!arg_2), arg_2, true), arg_2, !arg_2);
    var_0 = !all(select(vec4<bool>(arg_2, !var_1.x, true, true), vec4<bool>(arg_2, var_1.x, var_1.x, arg_1.a.a.x != 1i), arg_2));
    var_0 = true;
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_div_i32(~(~(~arg_3.c.x)), u_input.a.x), u_input.a.x);
    return !(!(!select(!vec4<bool>(arg_2, false, false, true), vec4<bool>(arg_2, false, var_1.x, var_1.x), any(vec3<bool>(false, true, arg_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!func_4(Struct_4(Struct_2(Struct_1(u_input.a.zx, u_input.b, u_input.a.yyy, vec4<f32>(309f, 181f, 1061f, -936f))), func_1(u_input.a.yw, -2147483647i, u_input.a.xww, vec3<bool>(true, false, true)), _wgslsmith_f_op_f32(min(669f, 412f)), func_1(u_input.a.xz, u_input.a.x, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(true, true, false)), 1i), Struct_2(func_1(vec2<i32>(1i, 0i), 1i, vec3<i32>(u_input.a.x, 28119i, -2147483647i), vec3<bool>(true, false, true))), true, Struct_1(~vec2<i32>(u_input.a.x, -32615i), abs(u_input.b), u_input.a.zxz, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1316f, 376f, -704f, -244f))))));
    let var_1 = var_0.x;
    var var_2 = Struct_4(Struct_2(Struct_1(~(~u_input.a.zz), vec4<u32>(u_input.b.x, 58996u, _wgslsmith_mult_u32(54799u, 1u), firstTrailingBit(u_input.c)), vec3<i32>(~(-8113i), -u_input.a.x, ~8797i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(245f, -322f, -426f, -157f) + vec4<f32>(1270f, 1234f, -350f, -1000f))))), Struct_1(abs(u_input.a.yy), ~(abs(vec4<u32>(16096u, u_input.c, 5791u, 4294967295u)) ^ ~vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.c)), vec3<i32>(u_input.a.x, u_input.a.x, -48728i) >> (min(u_input.b.xyz, firstLeadingBit(vec3<u32>(u_input.b.x, 47582u, u_input.c))) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-969f + -648f), _wgslsmith_f_op_f32(step(1000f, -554f)), -1720f, 319f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), func_1(~(firstLeadingBit(u_input.a.zz) & vec2<i32>(u_input.a.x, u_input.a.x)), -21246i, _wgslsmith_add_vec3_i32(-u_input.a.xxw, vec3<i32>(~(-13797i), _wgslsmith_sub_i32(693i, 0i), u_input.a.x)), !func_4(Struct_4(Struct_2(Struct_1(vec2<i32>(u_input.a.x, -1i), u_input.b, u_input.a.zzx, vec4<f32>(-276f, -338f, 397f, -616f))), Struct_1(vec2<i32>(0i, -6261i), vec4<u32>(1u, 80677u, 4294967295u, u_input.c), vec3<i32>(-12496i, u_input.a.x, 1i), vec4<f32>(-835f, -598f, -1000f, -467f)), 188f, Struct_1(u_input.a.wx, u_input.b, u_input.a.xyx, vec4<f32>(699f, 345f, 421f, 795f)), u_input.a.x), Struct_2(Struct_1(u_input.a.wy, u_input.b, u_input.a.xwy, vec4<f32>(-1130f, -1533f, 475f, 111f))), true, Struct_1(u_input.a.wx, u_input.b, vec3<i32>(-1i, u_input.a.x, -2147483647i), vec4<f32>(1099f, 3320f, -1023f, -632f))).xyw), 24974i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-648f, var_2.d.d.x), _wgslsmith_f_op_f32(-var_2.b.d.x))), u_input.a.x);
}

