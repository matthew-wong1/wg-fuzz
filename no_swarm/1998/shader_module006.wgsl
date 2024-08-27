struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: f32 = 447f;

var<private> global2: vec3<i32>;

var<private> global3: vec3<i32>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    var var_0 = i32(-1i) * -(((1i | global3.x) << (u_input.a % 32u)) >> (u_input.a % 32u));
    var var_1 = select(true, all(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)), false) & !(false & (_wgslsmith_f_op_f32(sign(arg_0.x)) > _wgslsmith_div_f32(1114f, arg_0.x)));
    global1 = _wgslsmith_f_op_f32(abs(-450f));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(arg_0, arg_0))))), vec3<f32>(_wgslsmith_f_op_f32(floor(-183f)), arg_0.x, -1000f), !((all(vec4<bool>(false, false, true, true)) && (arg_0.x <= -761f)) && all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false))))));
    var var_3 = -countOneBits(~reverseBits(abs(2147483647i)));
    return ~countOneBits(_wgslsmith_mod_u32(1u, max(u_input.a, 1u))) & ~max(u_input.a << (firstTrailingBit(1u) % 32u), u_input.a);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_2) -> i32 {
    let var_0 = vec3<u32>(_wgslsmith_mod_u32(~(~u_input.a), func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.a)))), ~u_input.a, u_input.a);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_0.a.a, _wgslsmith_f_op_vec3_f32(arg_0.a.a - vec3<f32>(1000f, arg_0.a.a.x, 136f))))), any(select(!vec4<bool>(true, arg_1.b, true, true), !vec4<bool>(arg_1.b, true, arg_3.a.b, true), select(vec4<bool>(arg_0.a.b, false, false, true), vec4<bool>(arg_3.a.b, true, true, true), vec4<bool>(arg_0.a.b, false, true, arg_2.x))))), arg_3.b);
    let var_2 = countOneBits(u_input.a);
    var var_3 = ~vec4<i32>(var_1.b.x, ~(-36260i), select(-54456i, global2.x, -103331i == global3.x), -16429i) ^ vec4<i32>(0i, ~countOneBits(~18089i), _wgslsmith_add_i32(~1i, firstLeadingBit(global3.x)) & -2147483647i, u_input.b);
    var var_4 = arg_3.a;
    return 2147483647i;
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: vec3<i32>) -> Struct_1 {
    global2 = ~_wgslsmith_div_vec3_i32(~arg_3, vec3<i32>(_wgslsmith_mult_i32(-18739i, _wgslsmith_mult_i32(1607i, -1i)), _wgslsmith_mult_i32(~arg_3.x, min(arg_3.x, global3.x)), 1i));
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, -326f)) - _wgslsmith_f_op_f32(max(-924f, -1871f)))), -191f, arg_1.x), any(vec4<bool>(true, true, arg_1.x <= 1263f, all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true))))));
    global2 = max(-vec3<i32>(func_2(Struct_2(Struct_1(vec3<f32>(arg_0, -1184f, -713f), var_0.b), vec4<i32>(u_input.d, global3.x, -61713i, -41207i)), Struct_1(vec3<f32>(-114f, var_0.a.x, 798f), var_0.b), vec2<bool>(var_0.b, var_0.b), Struct_2(Struct_1(var_0.a, false), vec4<i32>(1i, 8306i, -1i, -1i))), 2147483647i, select(arg_3.x, u_input.d, true)) & -(-vec3<i32>(arg_2.x, arg_2.x, global2.x) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))), ~_wgslsmith_sub_vec3_i32(min(vec3<i32>(global3.x, global3.x, u_input.d), vec3<i32>(-7289i, -1i, -11521i)), (arg_3 | vec3<i32>(u_input.c, 18880i, 42034i)) << ((vec3<u32>(4294967295u, 1u, 27199u) << (vec3<u32>(0u, 0u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))));
    global3 = arg_3;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(step(var_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) * vec3<f32>(arg_0, 1714f, 440f)))), true), vec4<i32>(u_input.d, -35943i, arg_3.x, -2147483647i));
    return var_1.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec3<i32>) -> Struct_1 {
    global3 = ~arg_1.b.yyx;
    let var_0 = vec3<u32>(~34154u, ~(~u_input.a), reverseBits(~(~u_input.a)));
    global0 = !func_1(arg_2.x, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.a.a.x, arg_2.x))), max(arg_0.b.yx | global2.xz, -global2.xz), vec3<i32>(max(arg_0.b.x, global3.x), max(arg_3.x, 24338i), ~1456i)).b & all(vec4<bool>((-13430i >= global2.x) & true, !arg_1.a.b, true, true));
    var var_1 = arg_1;
    var_1 = arg_1;
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(arg_1.a.a, var_1.a.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.a.x, arg_2.x, -1000f) * var_1.a.a)))))), arg_1.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_4(Struct_2(func_1(448f, vec2<f32>(409f, 2077f), _wgslsmith_div_vec2_i32(global2.zz, vec2<i32>(4283i, u_input.c)), min(vec3<i32>(2147483647i, u_input.b, global3.x), vec3<i32>(0i, 1i, u_input.c))), abs(max(vec4<i32>(global3.x, global3.x, 2147483647i, 17932i), vec4<i32>(u_input.c, global3.x, global2.x, global3.x)))), Struct_2(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1080f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1924f, 776f) - vec2<f32>(113f, 997f)), ~vec2<i32>(-13327i, global3.x), abs(vec3<i32>(1505i, 0i, 60826i))), ~vec4<i32>(global3.x, global2.x, u_input.d, global2.x) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, 24449u, 2899u, 0u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(972f, -710f, -728f)))), reverseBits(~vec3<i32>(global3.x, -2147483647i, u_input.b))), vec4<i32>(-9295i, _wgslsmith_add_i32(6398i, -33573i), 2147483647i, -1i << (~(u_input.a ^ 85195u) % 32u)));
    global0 = !var_0.a.b;
    global0 = var_0.a.b != true;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(var_0.a.a)), _wgslsmith_f_op_vec3_f32(max(var_0.a.a, var_0.a.a))))))), all(vec3<bool>(!var_0.a.b, false, all(vec2<bool>(false, var_0.a.b)))));
    var var_2 = ~vec3<u32>(~_wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, u_input.a, 27119u), _wgslsmith_mod_u32(u_input.a, 0u)), ~u_input.a, 1u);
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x)), _wgslsmith_f_op_f32(var_0.a.a.x + _wgslsmith_f_op_f32(-var_0.a.a.x)), var_1.a.x)), all(select(vec3<bool>(false, all(vec3<bool>(true, true, true)), all(vec2<bool>(false, var_1.b))), !vec3<bool>(var_0.a.b, true, var_0.a.b), true)));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(var_1.a, vec3<f32>(-1096f, 230f, var_0.a.a.x))))), global3.x <= 1i), vec4<i32>(1i, _wgslsmith_clamp_i32(global3.x, reverseBits(u_input.b), 19385i), -18048i & var_0.b.x, select(~(-2989i), -2147483647i, true)) & select(_wgslsmith_mod_vec4_i32(~vec4<i32>(var_0.b.x, 42181i, global2.x, -38705i), var_0.b), -(~var_0.b), select(!vec4<bool>(true, false, var_1.b, true), select(vec4<bool>(true, false, false, true), vec4<bool>(var_1.b, var_0.a.b, false, false), vec4<bool>(var_1.b, var_1.b, true, var_1.b)), false)));
    var_1 = func_1(_wgslsmith_f_op_f32(-var_1.a.x), vec2<f32>(-517f, _wgslsmith_f_op_f32(-var_0.a.a.x)), global3.zx, -((-var_0.b.zxw & ~var_0.b.wwx) | var_0.b.xzx));
    let x = u_input.a;
    s_output = StorageBuffer(4601u, vec2<u32>(var_2.x, 20481u), ~select(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a, 33763u, 66531u), ~vec4<u32>(4294967295u, var_2.x, 3125u, u_input.a)), vec4<u32>(1u, ~u_input.a, var_2.x & u_input.a, u_input.a), var_1.b));
}

