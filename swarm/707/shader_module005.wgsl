struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: f32,
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32) -> f32 {
    return _wgslsmith_f_op_f32(abs(arg_0));
}

fn func_2(arg_0: Struct_2) -> i32 {
    var var_0 = 12146i;
    var var_1 = arg_0.c.x;
    let var_2 = arg_0.a.c;
    var_1 = _wgslsmith_f_op_f32(543f - _wgslsmith_f_op_f32(func_3(_wgslsmith_div_f32(arg_0.a.b.x, arg_0.a.b.x))));
    var_1 = -1096f;
    return ~_wgslsmith_sub_i32(~(~_wgslsmith_add_i32(arg_0.a.a.x, 0i)), -(arg_0.a.a.x | -19239i));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = Struct_1(~u_input.b.zyx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.x, 1042f, -795f) - _wgslsmith_f_op_vec3_f32(floor(arg_2.b))) * vec3<f32>(_wgslsmith_f_op_f32(sign(-1263f)), 688f, _wgslsmith_f_op_f32(f32(-1f) * -527f))) + vec3<f32>(989f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.b.x - -515f))), arg_2.b.x)), arg_0);
    var var_1 = Struct_2(arg_2, Struct_1(vec3<i32>(~_wgslsmith_add_i32(-1i, u_input.a), u_input.a, -var_0.a.x), var_0.b, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.c, 9547u), vec2<u32>(var_0.c, 1u)), ~(~vec2<u32>(var_0.c, var_0.c)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2.b.x, 908f, var_0.b.x), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-741f, 745f, var_0.b.x)))))))), -200f);
    var_0 = var_1.a;
    var var_2 = vec2<f32>(-2161f, _wgslsmith_f_op_f32(f32(-1f) * -1787f));
    var_1 = Struct_2(var_1.b, var_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b.x, var_1.b.b.x, var_0.b.x)))))), var_0.b.x);
    return Struct_2(Struct_1(var_1.b.a, var_0.b, 42734u), arg_2, _wgslsmith_f_op_vec3_f32(round(arg_2.b)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-678f, _wgslsmith_f_op_f32(floor(var_0.b.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1895f)), 257f)), true)));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: i32, arg_3: i32) -> f32 {
    let var_0 = vec2<bool>(true, true);
    let var_1 = select(vec4<u32>(firstLeadingBit(28057u) << (1u % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.b.c, 1u, 4294967295u), vec3<u32>(0u, 4294967295u, arg_1.a.c)), max(abs(0u), 4294967295u), arg_0) >> (vec4<u32>(1u, _wgslsmith_mult_u32(1u, ~4294967295u), min(arg_1.a.c, 787u | arg_1.b.c), _wgslsmith_add_u32(1u, arg_1.a.c)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, arg_0, 3153u, arg_1.b.c) & max(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.a.c, 4294967295u, arg_1.a.c, arg_1.a.c), vec4<u32>(arg_1.b.c, arg_0, arg_1.b.c, 34885u), vec4<u32>(arg_1.b.c, 4294967295u, arg_0, 1451u)), ~vec4<u32>(arg_1.a.c, 0u, 0u, arg_0)), ~(~countOneBits(vec4<u32>(arg_0, 1u, 9618u, arg_1.b.c)))), false);
    let var_2 = u_input.b;
    var var_3 = ~(-_wgslsmith_add_i32(arg_2, abs(_wgslsmith_dot_vec2_i32(u_input.b.wy, u_input.b.wy))));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d * arg_1.c.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.b.b.x), 282f)), arg_1.b.b.x)), -1002f);
    return -1069f;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> i32 {
    var var_0 = arg_1;
    var var_1 = arg_2.c;
    var var_2 = 1360f;
    let var_3 = ~vec4<i32>(-arg_2.a.x, -19355i, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(arg_0, arg_2.a.x, -26073i)), arg_2.a) & 0i, _wgslsmith_sub_i32(-2147483647i, _wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.a, u_input.a, arg_2.a.x, arg_0)))));
    var_2 = _wgslsmith_f_op_f32(func_5(arg_2.c, func_4(arg_2.c, max(min(func_2(Struct_2(Struct_1(var_3.zww, arg_2.b, 1u), Struct_1(vec3<i32>(-2147483647i, -1i, 0i), vec3<f32>(920f, arg_2.b.x, arg_2.b.x), 43277u), vec3<f32>(-1260f, -1148f, -2036f), 424f)), arg_0 | arg_2.a.x), i32(-1i) * -2147483647i), Struct_1(min(arg_2.a | arg_2.a, u_input.b.zyw), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.b)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.c, arg_2.c, arg_2.c, arg_2.c), vec4<u32>(arg_2.c, arg_2.c, arg_2.c, 86767u)), _wgslsmith_sub_u32(arg_2.c, arg_2.c)))), var_3.x, _wgslsmith_clamp_i32(arg_2.a.x, -var_3.x | _wgslsmith_dot_vec2_i32(arg_2.a.zz, vec2<i32>(u_input.b.x, 64061i)), -35422i) & ~_wgslsmith_div_i32(func_4(4294967295u, -27404i, arg_2).b.a.x, firstTrailingBit(arg_2.a.x))));
    return u_input.b.x & -2147483647i;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_mult_vec3_i32(u_input.b.xzw, _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(28215i, -12411i, 34000i)) >> ((vec3<u32>(1u, 2862u, arg_3.a.c) & vec3<u32>(0u, 39650u, 11614u)) % vec3<u32>(32u)), select(vec3<i32>(-1i, u_input.b.x, -38544i), vec3<i32>(-29541i, 0i, 29653i) ^ vec3<i32>(2147483647i, arg_1.x, -1i), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.c.x, 775f, arg_3.d) - _wgslsmith_f_op_vec3_f32(select(arg_0.b, arg_0.b, vec3<bool>(false, false, true)))))), func_4(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(10383u, 0u), _wgslsmith_div_vec2_u32(vec2<u32>(arg_2, arg_2), vec2<u32>(4294967295u, arg_2))), firstTrailingBit(~vec2<u32>(0u, arg_3.b.c))), ~u_input.a ^ _wgslsmith_add_i32(_wgslsmith_add_i32(-36193i, 5097i), select(arg_1.x, -2147483647i, false)), func_4(arg_0.c, -arg_1.x, arg_3.b).b).a.c);
    var var_1 = func_4(_wgslsmith_div_u32(firstTrailingBit(~max(var_0.c, arg_0.c)), 1u), _wgslsmith_add_i32(2147483647i, arg_3.a.a.x) >> (abs(0u) % 32u), func_4(1u, firstLeadingBit(~abs(20238i)), Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-100f, var_0.b.x, -358f))), ~abs(0u))).a).a;
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-arg_0.b.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_1.b.zy))), var_0.b.xz))));
    var var_3 = select(select(vec4<bool>(select(true, true, false) && select(false, false, false), true, true, (-2147483647i >> (arg_0.c % 32u)) > _wgslsmith_add_i32(26803i, -2147483647i)), vec4<bool>(true, false, true, any(vec4<bool>(true, true, true, false))), true), select(vec4<bool>(true || (var_0.b.x >= var_1.b.x), true, false, any(vec3<bool>(true, true, true))), !vec4<bool>(any(vec2<bool>(false, true)), true, true, true), vec4<bool>(all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), false)), any(vec2<bool>(false, false)) | any(vec2<bool>(true, true)), false, _wgslsmith_clamp_u32(var_1.c, var_0.c, 23104u) <= 1u)), all(vec3<bool>(false, all(vec4<bool>(true, false, true, true)) & select(true, true, true), true | all(vec2<bool>(false, false)))));
    var var_4 = firstTrailingBit(vec3<u32>(reverseBits(79328u), 0u, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_1.c, 31831u)), ~(~vec2<u32>(0u, 15421u)))));
    return arg_3;
}

fn func_7(arg_0: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(vec3<i32>(countOneBits(-(arg_0.a.a.x << (1u % 32u))), min(func_1(-1i, true, Struct_1(arg_0.b.a, vec3<f32>(-1000f, arg_0.d, -820f), 13417u), false), -arg_0.a.a.x) >> (_wgslsmith_clamp_u32(~35743u, ~14470u, ~arg_0.b.c) % 32u), 29164i), vec3<f32>(_wgslsmith_f_op_f32(-946f - _wgslsmith_f_op_f32(-arg_0.d)), 459f, _wgslsmith_f_op_f32(min(func_6(Struct_1(arg_0.b.a, vec3<f32>(arg_0.a.b.x, 857f, 669f), arg_0.a.c), -vec2<i32>(-11965i, 27571i), min(arg_0.b.c, 11337u), func_4(arg_0.b.c, -2967i, arg_0.a)).d, _wgslsmith_f_op_f32(-124f + arg_0.c.x)))), 41303u);
    let var_1 = select(vec3<i32>(u_input.a & func_4(0u, 0i, var_0).a.a.x, 80192i ^ _wgslsmith_dot_vec3_i32(u_input.b.zyy, vec3<i32>(u_input.b.x, 0i, -19189i)), -15452i), reverseBits(_wgslsmith_mod_vec3_i32(~vec3<i32>(var_0.a.x, arg_0.b.a.x, arg_0.a.a.x), vec3<i32>(u_input.b.x | 18089i, _wgslsmith_sub_i32(u_input.a, arg_0.a.a.x), 0i))), !select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-551f, func_4(~func_6(arg_0.b, vec2<i32>(-1i, -65094i), var_0.c, arg_0).b.c, ~arg_0.b.a.x, Struct_1(vec3<i32>(u_input.a, arg_0.b.a.x, u_input.a), vec3<f32>(879f, -1222f, -291f), arg_0.a.c)).d))));
    let var_3 = firstLeadingBit(vec4<u32>(1u, reverseBits(var_0.c), arg_0.a.c, 26608u) >> (select(select(vec4<u32>(arg_0.a.c, 33110u, 0u, var_0.c) >> (vec4<u32>(4294967295u, var_0.c, 58435u, var_0.c) % vec4<u32>(32u)), vec4<u32>(13809u, arg_0.a.c, var_0.c, 20835u), false), _wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_0.a.c, 4294967295u, arg_0.b.c), vec4<u32>(var_0.c, arg_0.b.c, arg_0.b.c, var_0.c)), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(max(4294967295u, 0u), -1i, arg_0.b).b.b.x));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(Struct_1(vec3<i32>(func_1(1i, true, Struct_1(vec3<i32>(u_input.a, u_input.b.x, -1i), vec3<f32>(1085f, 1101f, -236f), 112088u), false), 1i, -2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1123f, -2096f, -1062f))), ~(~1u)), vec2<i32>(-1i, 0i), 7360u, func_4(144u, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 7291i), u_input.b), func_4(~1u, -1i, func_4(0u, u_input.a, Struct_1(vec3<i32>(1i, u_input.a, -11744i), vec3<f32>(-1139f, -320f, -1003f), 0u)).b).b)));
    var var_1 = Struct_1(var_0.b.a, _wgslsmith_f_op_vec3_f32(var_0.c - _wgslsmith_f_op_vec3_f32(vec3<f32>(680f, _wgslsmith_f_op_f32(859f * var_0.a.b.x), _wgslsmith_f_op_f32(abs(2400f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.a.b + vec3<f32>(-1317f, var_0.b.b.x, -2026f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(211f, var_0.c.x, var_0.d) - var_0.a.b), vec3<bool>(true, false, false))))), _wgslsmith_div_u32(~firstLeadingBit(11116u) | ~var_0.b.c, var_0.a.c));
    var_1 = var_0.b;
    var var_2 = 0u;
    let var_3 = func_2(func_7(var_0)) ^ ((_wgslsmith_dot_vec2_i32(func_4(34639u, u_input.a, Struct_1(vec3<i32>(0i, var_0.a.a.x, 9678i), vec3<f32>(1633f, var_1.b.x, var_0.c.x), 62763u)).b.a.zx, u_input.b.wz) << (~func_7(Struct_2(Struct_1(vec3<i32>(2147483647i, u_input.a, var_1.a.x), var_1.b, var_1.c), var_0.a, var_0.c, 701f)).a.c % 32u)) >> ((67304u >> (select(64332u, var_1.c & 17091u, true) % 32u)) % 32u));
    let var_4 = _wgslsmith_sub_vec4_u32(~vec4<u32>(reverseBits(func_7(Struct_2(var_0.a, Struct_1(var_1.a, vec3<f32>(var_0.a.b.x, var_1.b.x, var_1.b.x), var_0.a.c), var_0.b.b, var_1.b.x)).b.c), ~max(var_1.c, var_0.b.c), (85928u << (var_0.a.c % 32u)) << (var_0.a.c % 32u), var_0.b.c), (firstTrailingBit(vec4<u32>(1u, var_1.c, 0u, 1218u) >> (vec4<u32>(1u, var_0.a.c, var_0.b.c, var_1.c) % vec4<u32>(32u))) ^ vec4<u32>(var_0.b.c, func_4(var_0.b.c, -32985i, var_0.b).b.c, var_1.c << (var_0.a.c % 32u), var_1.c)) & _wgslsmith_add_vec4_u32(vec4<u32>(16407u, 8483u, 4294967295u, ~4294967295u), ~abs(vec4<u32>(var_1.c, var_1.c, 46028u, var_0.b.c))));
    var_2 = reverseBits(~(~(~var_0.a.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(select(reverseBits(vec4<i32>(var_0.a.a.x, var_0.a.a.x, -1i, -40272i)), abs(abs(u_input.b)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, true, true)))), select(select(select(u_input.b, vec4<i32>(u_input.a, -51227i, var_3, var_0.b.a.x), vec4<bool>(false, true, false, true)), u_input.b, vec4<bool>(true, true, true, true)), u_input.b, true)));
}

