struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(28943i, 0i, 0i, 2024i);

var<private> global1: i32 = 1i;

var<private> global2: array<u32, 28> = array<u32, 28>(0u, 18389u, 1u, 4294967295u, 4294967295u, 0u, 50405u, 4294967295u, 0u, 57561u, 22750u, 1u, 1u, 116061u, 44884u, 0u, 1u, 1u, 1u, 40871u, 1u, 5910u, 4294967295u, 15005u, 15420u, 69651u, 19496u, 1u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: bool, arg_3: bool) -> i32 {
    global1 = ~global0.x;
    global0 = -countOneBits(~vec4<i32>(-1i, u_input.a, _wgslsmith_clamp_i32(u_input.a, u_input.a, 1i), ~2147483647i));
    var var_0 = Struct_3(global0.zzw, Struct_1(countOneBits(arg_0), ~select(_wgslsmith_dot_vec3_i32(global0.wxx, vec3<i32>(0i, global0.x, 0i)), countOneBits(global0.x), false), _wgslsmith_f_op_f32(f32(-1f) * -846f), !vec3<bool>(true, all(vec2<bool>(arg_2, arg_2)), true)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b.c)) + _wgslsmith_f_op_f32(333f * 310f)));
    global0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.b.b, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, global0.x, 5714i, var_0.b.b), vec4<i32>(global0.x, 1i, 1i, 0i)), 3341i), -max(vec4<i32>(0i, u_input.a, -1i, -2147483647i), vec4<i32>(-13701i, -16735i, u_input.a, u_input.a))), vec4<i32>(-20566i, _wgslsmith_add_i32(-2147483647i, _wgslsmith_add_i32(var_0.b.b, -3034i)), firstLeadingBit(24651i), 6526i), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(23486i, -1i), var_0.a.yy), ~(var_0.b.b | 29555i), -5943i, 0i)) ^ abs(vec4<i32>(countOneBits(abs(30994i)), ~(-37679i >> (1u % 32u)), ~_wgslsmith_clamp_i32(-1i, var_0.b.b, global0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(49364i, -65063i), vec2<i32>(var_0.a.x, var_0.a.x))));
    return var_0.a.x;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: u32) -> bool {
    let var_0 = Struct_4(Struct_1(_wgslsmith_mod_u32(_wgslsmith_div_u32(5028u, ~global2[_wgslsmith_index_u32(arg_2, 28u)]), 3433u), ~arg_0, 1000f, !vec3<bool>(all(vec3<bool>(true, true, false)), all(vec4<bool>(true, true, true, true)), false)), ~vec2<u32>(~global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(1u, 28u)], 127542u), 28u)], 1u), Struct_1(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2, global2[_wgslsmith_index_u32(0u, 28u)]), ~vec2<u32>(global2[_wgslsmith_index_u32(1u, 28u)], arg_2)), 28u)], _wgslsmith_mod_i32(i32(-1i) * -2147483647i, func_3(1u, ~vec4<u32>(1u, arg_2, 24300u, 64744u), false, true)), _wgslsmith_f_op_f32(ceil(1f)), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), false)), select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), any(vec2<bool>(true, false))), vec2<bool>(true, all(vec4<bool>(false, false, true, false))), all(vec4<bool>(true, true, true, false))), !select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec3<bool>(false, true, false))), true), global0.www);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c, _wgslsmith_f_op_f32(-1000f * var_0.c.c), var_0.c.c, var_0.a.c))));
    var var_2 = Struct_1(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(0u, var_0.b.x), _wgslsmith_mult_u32(arg_2, global2[_wgslsmith_index_u32(31837u, 28u)])), var_0.b.x | ~60750u), 2147483647i, 838f, vec3<bool>(!(-var_0.e.x < arg_0), var_0.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.c, -136f)) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_1.x, var_1.x))))));
    var_2 = var_0.c;
    global2 = array<u32, 28>();
    return _wgslsmith_f_op_f32(abs(var_0.a.c)) == _wgslsmith_div_f32(var_0.c.c, var_1.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_4, arg_3: Struct_1) -> Struct_1 {
    let var_0 = ~(-_wgslsmith_add_i32(1705i, i32(-1i) * -13096i));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(306f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1104f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.c))))));
    let var_2 = Struct_2(~(~(vec2<u32>(arg_2.b.x, 15813u) | arg_2.b)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(62904u, _wgslsmith_mult_u32(1u, arg_3.a)), arg_2.b) % vec2<u32>(32u)), firstTrailingBit(select(arg_3.a, ~(~global2[_wgslsmith_index_u32(42069u, 28u)]), arg_1)), -605f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_3.c, arg_2.a.c), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1, arg_3.c)))))) + vec2<f32>(-918f, arg_3.c)));
    global1 = reverseBits(-69636i);
    let var_3 = Struct_3(-(firstLeadingBit(vec3<i32>(2147483647i, u_input.a, global0.x)) << (~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], global2[_wgslsmith_index_u32(0u, 28u)], arg_0.x) % vec3<u32>(32u))) | (_wgslsmith_clamp_vec3_i32(arg_2.e >> (vec3<u32>(arg_0.x, 4294967295u, arg_0.x) % vec3<u32>(32u)), vec3<i32>(-2147483647i, -1i, global0.x), abs(global0.xzw)) | -_wgslsmith_div_vec3_i32(vec3<i32>(global0.x, 0i, -27777i), arg_2.e)), arg_2.c);
    return var_3.b;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    let var_0 = func_4(vec2<u32>(global2[_wgslsmith_index_u32(20720u, 28u)], max(0u, arg_1.b)), arg_0.d.x, Struct_4(arg_0, vec2<u32>(global2[_wgslsmith_index_u32(~(~1u), 28u)], ~1u), Struct_1(abs(_wgslsmith_add_u32(arg_0.a, 116053u)), global0.x, _wgslsmith_f_op_f32(round(arg_0.c)), !arg_0.d), vec2<bool>(true, arg_0.d.x), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-12396i, 31693i, 11764i), global0.yxx) & global0.zwy, vec3<i32>(-1i, _wgslsmith_mod_i32(u_input.a, 1195i), 1i))), Struct_1(~(~arg_1.b), u_input.a, 1f, arg_0.d));
    let var_1 = Struct_4(var_0, ~vec2<u32>((global2[_wgslsmith_index_u32(var_0.a, 28u)] ^ global2[_wgslsmith_index_u32(var_0.a, 28u)]) << (global2[_wgslsmith_index_u32(1u, 28u)] % 32u), _wgslsmith_dot_vec2_u32(arg_1.a, firstLeadingBit(arg_1.a))), var_0, arg_0.d.yx, countOneBits(select(vec3<i32>(_wgslsmith_mod_i32(global0.x, 0i), -2147483647i, _wgslsmith_div_i32(var_0.b, 11349i)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 0i, u_input.a), vec3<i32>(var_0.b, u_input.a, 0i), vec3<i32>(arg_0.b, -2147483647i, -13657i)), vec3<bool>(false & arg_0.d.x, var_0.d.x, false))));
    var var_2 = vec3<bool>(var_1.e.x <= (-1i & var_1.e.x), true, func_4(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(0u, 28u)], arg_0.a), vec2<u32>(arg_0.a, var_0.a), var_1.b)), !all(!var_1.a.d.xy), Struct_4(var_0, _wgslsmith_add_vec2_u32(abs(vec2<u32>(var_1.a.a, var_1.a.a)), firstLeadingBit(vec2<u32>(14340u, 20793u))), func_4(select(arg_1.a, vec2<u32>(var_0.a, 61497u), vec2<bool>(var_0.d.x, true)), true, var_1, Struct_1(9174u, arg_0.b, arg_0.c, vec3<bool>(var_1.a.d.x, true, var_1.c.d.x))), vec2<bool>(true, arg_0.c <= arg_0.c), min(_wgslsmith_div_vec3_i32(var_1.e, var_1.e), -global0.wzz)), Struct_1(~1u, global0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_0.c)))), select(select(vec3<bool>(var_1.a.d.x, var_0.d.x, arg_0.d.x), vec3<bool>(false, arg_0.d.x, var_0.d.x), false), var_0.d, !vec3<bool>(true, arg_0.d.x, var_1.d.x)))).d.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.c, var_0.c, 933f, -328f), vec4<f32>(arg_1.c, arg_0.c, 352f, arg_1.c)))))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.d.x, arg_0.c, -1084f, var_0.c), vec4<f32>(var_0.c, arg_1.c, 858f, var_1.c.c)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.c, 354f, 519f, arg_1.d.x)))))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -177f), 615f, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.d.x, -432f)), 487f, arg_0.c)));
    let var_4 = select(var_1.c.d.zx, !vec2<bool>(func_2(max(-1i, global0.x), -2147483647i, _wgslsmith_add_u32(30565u, 28999u)), true), !var_0.d.x);
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<bool>) -> vec3<bool> {
    global2 = array<u32, 28>();
    global1 = -1i;
    var var_0 = func_5(func_4(~(~firstLeadingBit(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(742u, 28u)], 28u)], 28u)], 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(176u, 28u)], 28u)]))), func_2(2147483647i, -(-36313i ^ global0.x), global2[_wgslsmith_index_u32(~abs(global2[_wgslsmith_index_u32(15683u, 28u)]), 28u)]), Struct_4(Struct_1(37097u, -2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -642f), select(vec3<bool>(arg_2.x, false, false), vec3<bool>(arg_2.x, arg_2.x, true), vec3<bool>(arg_2.x, true, arg_2.x))), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)]), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)], 28u)], 4294967295u), vec2<u32>(45869u, global2[_wgslsmith_index_u32(1u, 28u)]))), Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(1u, 28u)], 0u), 28u)], global0.x ^ -5465i, arg_0, vec3<bool>(arg_2.x, arg_2.x, arg_2.x)), !arg_2, (global0.zxy << (vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(37613u, 28u)], 28u)], 28u)], 10715u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)]) % vec3<u32>(32u))) & _wgslsmith_div_vec3_i32(global0.yyw, vec3<i32>(0i, 15290i, u_input.a))), Struct_1(reverseBits(~106486u), reverseBits(u_input.a), arg_1.x, !(!vec3<bool>(arg_2.x, arg_2.x, arg_2.x)))), Struct_2(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(~0u, 28u)], 28u)], 28u)], _wgslsmith_dot_vec3_u32(vec3<u32>(23051u, 13924u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)]), vec3<u32>(global2[_wgslsmith_index_u32(9216u, 28u)], global2[_wgslsmith_index_u32(0u, 28u)], 1u) & vec3<u32>(0u, 14332u, 4294967295u))), global2[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 28u)], arg_0, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, arg_1.x), vec2<f32>(-2219f, -1144f), arg_2)), arg_1.zy)));
    global1 = _wgslsmith_add_i32(reverseBits(-1882i), -countOneBits(-_wgslsmith_clamp_i32(-23503i, -1i, global0.x)));
    var_0 = Struct_2(var_0.a, abs(var_0.a.x), _wgslsmith_f_op_f32(1000f + 838f), arg_1.xy);
    return vec3<bool>(true, false, true & (all(arg_2) || func_4(vec2<u32>(0u, 3680u), arg_2.x, Struct_4(Struct_1(global2[_wgslsmith_index_u32(var_0.a.x, 28u)], -1i, 1000f, vec3<bool>(arg_2.x, false, false)), vec2<u32>(global2[_wgslsmith_index_u32(85705u, 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)]), Struct_1(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.a.x, 28u)], 28u)], global0.x, 1036f, vec3<bool>(true, true, arg_2.x)), vec2<bool>(arg_2.x, arg_2.x), global0.zxz), func_4(var_0.a, arg_2.x, Struct_4(Struct_1(9016u, global0.x, var_0.d.x, vec3<bool>(arg_2.x, arg_2.x, true)), var_0.a, Struct_1(var_0.b, -1i, var_0.c, vec3<bool>(arg_2.x, arg_2.x, arg_2.x)), vec2<bool>(false, true), global0.wyy), Struct_1(global2[_wgslsmith_index_u32(20900u, 28u)], u_input.a, 836f, vec3<bool>(arg_2.x, true, arg_2.x)))).d.x));
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_4 {
    var var_0 = Struct_3(vec3<i32>(-u_input.a, 10277i, -58537i), func_4(firstLeadingBit(firstLeadingBit(_wgslsmith_mod_vec2_u32(arg_1.a, arg_1.a))), _wgslsmith_f_op_f32(-arg_1.c) <= arg_1.d.x, Struct_4(Struct_1(~arg_1.a.x, 2147483647i, arg_1.d.x, select(arg_0.xyz, arg_0.xzz, arg_0.x)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1u, arg_1.a.x)), Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(32757u, 28u)], 37199u), 28u)], 26700i, 1375f, select(vec3<bool>(true, true, false), vec3<bool>(arg_0.x, false, false), arg_0.x)), !select(arg_0.zy, arg_0.wy, vec2<bool>(arg_0.x, arg_0.x)), global0.wxz), Struct_1(~min(global2[_wgslsmith_index_u32(8006u, 28u)], 16346u), u_input.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1488f))), func_1(-243f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(473f, arg_1.c, -201f)), !vec2<bool>(arg_0.x, arg_0.x)))));
    var_0 = Struct_3(max(_wgslsmith_add_vec3_i32(-vec3<i32>(arg_2.x, u_input.a, 2147483647i), firstLeadingBit(vec3<i32>(-2147483647i, var_0.a.x, -2147483647i))), global0.zyw) << (~(~vec3<u32>(16961u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.b.a, 28u)], 28u)], global2[_wgslsmith_index_u32(4294967295u, 28u)])) % vec3<u32>(32u)), func_4(vec2<u32>(global2[_wgslsmith_index_u32(func_4(max(arg_1.a, arg_1.a), arg_1.c < arg_1.d.x, Struct_4(Struct_1(global2[_wgslsmith_index_u32(56150u, 28u)], 2745i, 2145f, vec3<bool>(var_0.b.d.x, true, var_0.b.d.x)), arg_1.a, var_0.b, vec2<bool>(true, true), vec3<i32>(global0.x, u_input.a, 10754i)), func_4(vec2<u32>(var_0.b.a, global2[_wgslsmith_index_u32(18713u, 28u)]), arg_0.x, Struct_4(var_0.b, arg_1.a, Struct_1(var_0.b.a, 9856i, 371f, var_0.b.d), var_0.b.d.yy, global0.wzy), var_0.b)).a, 28u)], ~countOneBits(var_0.b.a)), func_1(func_5(Struct_1(arg_1.a.x, var_0.b.b, arg_1.d.x, vec3<bool>(var_0.b.d.x, true, false)), Struct_2(arg_1.a, 1u, -1409f, vec2<f32>(-115f, arg_1.d.x))).c, vec3<f32>(_wgslsmith_f_op_f32(arg_1.d.x * arg_1.c), _wgslsmith_f_op_f32(trunc(1375f)), _wgslsmith_f_op_f32(-362f - var_0.b.c)), !vec2<bool>(false, var_0.b.d.x)).x, Struct_4(func_4(arg_1.a, arg_0.x, Struct_4(var_0.b, vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(var_0.b.a, 28u)]), var_0.b, vec2<bool>(var_0.b.d.x, arg_0.x), var_0.a), func_4(vec2<u32>(16085u, var_0.b.a), var_0.b.d.x, Struct_4(var_0.b, arg_1.a, Struct_1(arg_1.b, var_0.a.x, var_0.b.c, vec3<bool>(var_0.b.d.x, true, false)), vec2<bool>(arg_0.x, true), var_0.a), Struct_1(0u, arg_2.x, -305f, vec3<bool>(true, var_0.b.d.x, arg_0.x)))), vec2<u32>(arg_1.b, ~global2[_wgslsmith_index_u32(36504u, 28u)]), func_4(~arg_1.a, true, Struct_4(var_0.b, arg_1.a, Struct_1(1u, arg_2.x, var_0.b.c, vec3<bool>(var_0.b.d.x, var_0.b.d.x, true)), vec2<bool>(true, arg_0.x), global0.www), var_0.b), !vec2<bool>(arg_0.x, var_0.b.d.x), _wgslsmith_add_vec3_i32(-vec3<i32>(-34344i, 51630i, arg_2.x), vec3<i32>(arg_2.x, -43217i, u_input.a))), var_0.b));
    global2 = array<u32, 28>();
    let var_1 = Struct_2(_wgslsmith_mod_vec2_u32(arg_1.a, arg_1.a), ~var_0.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * 809f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.c), _wgslsmith_f_op_f32(-var_0.b.c))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, 412f))) - vec2<f32>(_wgslsmith_f_op_f32(arg_1.d.x + arg_1.d.x), 340f))));
    var var_2 = vec2<u32>(~4294967295u, ~(~1u));
    return Struct_4(var_0.b, ~vec2<u32>(~var_2.x, countOneBits(func_4(arg_1.a, false, Struct_4(var_0.b, vec2<u32>(4294967295u, arg_1.b), Struct_1(arg_1.b, var_0.a.x, -819f, var_0.b.d), arg_0.zz, var_0.a), Struct_1(1u, -2147483647i, -1326f, vec3<bool>(false, false, true))).a)), var_0.b, arg_0.zx, abs(_wgslsmith_clamp_vec3_i32(-global0.yxx, global0.ywy & reverseBits(vec3<i32>(arg_2.x, u_input.a, u_input.a)), countOneBits(-var_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(select(vec4<bool>(all(func_1(849f, vec3<f32>(688f, -133f, -1226f), vec2<bool>(true, true))), true, true, !any(vec3<bool>(true, true, false))), vec4<bool>(true, all(vec3<bool>(true, true, true)), true, true), !(!all(vec3<bool>(false, true, true)))), Struct_2(abs(_wgslsmith_add_vec2_u32(max(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6498u, 28u)], 28u)], 28u)], 28u)], 14248u), vec2<u32>(global2[_wgslsmith_index_u32(30216u, 28u)], 1u)), max(vec2<u32>(7309u, 37560u), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(33923u, 28u)], 28u)], 0u)))), abs(reverseBits(~global2[_wgslsmith_index_u32(1u, 28u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_1(36609u, global0.x, -384f, vec3<bool>(true, false, false)), Struct_2(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(33955u, 28u)], 28u)], 28u)], 28u)], 4294967295u), global2[_wgslsmith_index_u32(1u, 28u)], -1000f, vec2<f32>(-1108f, -1246f))).d.x * _wgslsmith_f_op_f32(-1552f * -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-967f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(898f, 2874f) - vec2<f32>(2144f, 307f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(138f, 1000f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-129f, -664f) + vec2<f32>(457f, 1167f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-667f, -685f)))))), select(~global0.zz, global0.xx, vec2<bool>(any(vec4<bool>(true, true, true, true)), any(func_1(1740f, vec3<f32>(-584f, -1636f, -1000f), vec2<bool>(false, false)).zy))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.c))));
    global1 = ~(~(var_0.a.b & (43155i << (global2[_wgslsmith_index_u32(4294967295u, 28u)] % 32u))));
    global2 = array<u32, 28>();
    var_1 = -1000f;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(789f, _wgslsmith_f_op_f32(-var_0.c.c))));
    global0 = abs(~(-(~countOneBits(vec4<i32>(-34551i, 1i, global0.x, 1i)))));
    var var_3 = var_0.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(~(-45748i), min(global0.x, global0.x)), global0.x), ~global0.x), _wgslsmith_f_op_f32(-var_0.c.c), var_0.c.c);
}

