struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(438f, 489f, -925f, -510f), vec4<i32>(2147483647i, 0i, -21016i, 5976i));

var<private> global2: bool;

var<private> global3: Struct_1;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: i32, arg_1: i32) -> i32 {
    global3 = Struct_1(global3.a, select(vec4<i32>(-reverseBits(1i), reverseBits(-26217i), abs(~arg_0), -21570i), -vec4<i32>(global1.b.x, 12503i, _wgslsmith_sub_i32(-2147483647i, arg_0), -arg_0), 268f == _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.x), 614f)));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x));
    var var_1 = firstTrailingBit(max(vec4<i32>(-1i, ~u_input.c, 1i, _wgslsmith_mod_i32(arg_0, _wgslsmith_add_i32(-83865i, u_input.c))), vec4<i32>(~_wgslsmith_mod_i32(u_input.c, -2147483647i), arg_1, ~global1.b.x, global3.b.x << (1u % 32u))));
    var var_2 = ~countOneBits(max(_wgslsmith_clamp_vec2_i32(var_1.xz, u_input.b, vec2<i32>(global3.b.x, global3.b.x)), var_1.xw)) & _wgslsmith_clamp_vec2_i32(var_1.zy, _wgslsmith_clamp_vec2_i32(var_1.xz, -select(u_input.b, vec2<i32>(-52245i, var_1.x), true), global1.b.xw), max(vec2<i32>(_wgslsmith_dot_vec3_i32(global3.b.zyz, var_1.zzx), -3492i), ~global3.b.xw));
    var var_3 = global1.b | global1.b;
    return global3.b.x;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(round(global1.a)), vec4<i32>(-44425i, global1.b.x, global3.b.x, func_3(2147483647i, 480i)) | countOneBits(vec4<i32>(-49392i, ~(-2147483647i), max(arg_0.b.x, -1i), _wgslsmith_mod_i32(35108i, -2147483647i))));
    var var_1 = arg_2.zy;
    let var_2 = any(select(select(arg_2, arg_2, all(select(arg_2, arg_2, arg_1))), vec3<bool>(31390u >= _wgslsmith_clamp_u32(4598u, 17142u, 2465u), !arg_1, arg_2.x), all(vec3<bool>(!arg_2.x, global3.a.x == 1213f, true))));
    var var_3 = 1u;
    global3 = Struct_1(var_0.a, -vec4<i32>(8442i, _wgslsmith_clamp_i32(u_input.c & -36852i, ~arg_0.b.x, ~arg_0.b.x), global1.b.x, var_0.b.x));
    return -abs(max(-7005i, -28236i));
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = select(arg_0.x > 2147483647i, true, _wgslsmith_dot_vec2_i32(vec2<i32>(max(u_input.c, 1i), -26276i), (arg_0.zz << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))) << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))) != -1i);
    var var_1 = (reverseBits(abs(max(vec4<u32>(16228u, 4294967295u, 10359u, 0u), vec4<u32>(0u, 50794u, 27316u, 4294967295u)))) & (_wgslsmith_sub_vec4_u32(abs(vec4<u32>(0u, 1u, 20894u, 1u)), select(vec4<u32>(1u, 4984u, 34976u, 0u), vec4<u32>(53138u, 1u, 18338u, 20018u), false)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)))) ^ vec4<u32>(68084u, 4294967295u, 0u, ~reverseBits(14393u));
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.a.x, global1.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(ceil(-1000f)))), global3.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, -1170f, 1551f, global3.a.x) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global3.a)))), true)), vec4<i32>(abs(_wgslsmith_dot_vec3_i32(~arg_0, global3.b.wyx)), 17498i, _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -1i, arg_1), arg_0), 0i), -932i), arg_0.x));
    global2 = false;
    global0 = ~(~reverseBits(~(~3788u)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -884f), global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1725f)) + global3.a.x), global3.a.x) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.a.x, global3.a.x, 2340f, global3.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1299f, global3.a.x, 440f, 431f)))))), abs(global1.b));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global2 = (all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)))) | false) || true;
    global1 = arg_0;
    let var_0 = func_4(_wgslsmith_sub_vec3_i32(vec3<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b.x, arg_0.b.x, 43244i), vec3<i32>(16176i, global3.b.x, 1i))), -1i, -21447i), _wgslsmith_clamp_vec3_i32(-arg_0.b.yxx, -global1.b.wwz, arg_1.b.yyw)), arg_0.b.x, min(vec2<i32>(48463i, 1i), vec2<i32>(11243i & _wgslsmith_add_i32(arg_1.b.x, global1.b.x), 17111i)));
    var var_1 = func_4(vec3<i32>(1i, -var_0.b.x, ((var_0.b.x >> (0u % 32u)) ^ u_input.b.x) & func_4(func_4(vec3<i32>(global3.b.x, var_0.b.x, 67882i), global3.b.x, vec2<i32>(global3.b.x, 2147483647i)).b.zyz, arg_1.b.x, vec2<i32>(4054i, global1.b.x)).b.x), -37706i, vec2<i32>(abs(_wgslsmith_dot_vec2_i32(~global3.b.xw, -vec2<i32>(u_input.a, global1.b.x))), ~arg_0.b.x));
    var var_2 = arg_1;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_4(min(vec3<i32>(global1.b.x, arg_1.b.x, var_2.b.x), vec3<i32>(u_input.a, -11284i, var_2.b.x)), -1i, select(arg_1.b.yz, vec2<i32>(u_input.b.x, -25681i), false)).a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global1.a.x, 894f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x * 930f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1515f) - var_1.a.x))), abs(vec4<i32>(-func_2(var_0, false, vec3<bool>(false, true, false)), firstTrailingBit(-1i), -1i | var_1.b.x, _wgslsmith_add_i32(u_input.b.x, 1i))));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = 20506u;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.a.yzz - vec3<f32>(-570f, arg_1.a.x, 1347f))) - _wgslsmith_f_op_vec3_f32(-global1.a.zwx)), vec3<f32>(_wgslsmith_f_op_f32(-global3.a.x), -479f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1164f, 1075f), _wgslsmith_f_op_f32(965f - arg_2.a.x), arg_0.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_2.a.zxy)) - vec3<f32>(-296f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.x * arg_1.a.x), _wgslsmith_f_op_f32(-arg_1.a.x)), -246f)));
    let var_2 = func_5(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-548f - -1462f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a.x))), -745f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1573f))), (_wgslsmith_mult_vec4_i32(vec4<i32>(8226i, 33814i, -14819i, global1.b.x), arg_2.b) | arg_2.b) & -select(vec4<i32>(u_input.c, global1.b.x, 0i, 1i), vec4<i32>(2147483647i, 1i, -32229i, arg_2.b.x), true)), func_4(-global1.b.wwy, -8207i, abs(vec2<i32>(func_2(arg_1, arg_0.x, vec3<bool>(true, arg_0.x, false)), 51141i))));
    var var_3 = select(abs(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(global3.b.x, 0i), arg_1.b.zw, vec2<i32>(global1.b.x, global3.b.x)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, var_0), vec2<u32>(var_0, 25412u), vec2<u32>(59650u, 1u)) % vec2<u32>(32u)), func_4(-vec3<i32>(0i, arg_2.b.x, -2147483647i), arg_2.b.x, abs(global3.b.yz)).b.xx)), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b.x, arg_1.b.x, global3.b.x), var_2.b.zwy)), _wgslsmith_add_vec2_i32(arg_2.b.ww, ~global3.b.wx)), ~arg_2.b.zy), arg_0.x);
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.a))))), -max(~(-arg_2.b), arg_2.b << (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3, arg_3, 47641u, arg_3), vec4<u32>(var_0, 0u, 1u, 4294967295u)) % vec4<u32>(32u))));
    return func_4(vec3<i32>(-28711i, _wgslsmith_dot_vec3_i32(vec3<i32>(~(-2147483647i), arg_1.b.x, arg_2.b.x & -45i), arg_1.b.wxx), 23948i), -_wgslsmith_mult_i32(_wgslsmith_div_i32(arg_1.b.x, u_input.a), _wgslsmith_div_i32(1i << (1u % 32u), global3.b.x)), _wgslsmith_mod_vec2_i32(-(abs(vec2<i32>(0i, u_input.a)) << (abs(vec2<u32>(4294967295u, arg_3)) % vec2<u32>(32u))), ~global1.b.xw));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(!vec3<bool>(any(vec2<bool>(false, true)), true, (i32(-1i) * -2147483647i) > max(u_input.b.x, -1i)), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global1.a, vec4<f32>(global3.a.x, global1.a.x, 213f, global1.a.x), vec4<bool>(true, false, false, false)))))), firstTrailingBit(global3.b & global3.b)), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(global3.a)), global1.b), _wgslsmith_dot_vec2_u32(~vec2<u32>(92297u, 1u), vec2<u32>(~0u, _wgslsmith_mod_u32(40712u, 1u))) ^ ~33918u);
    global2 = any(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), any(vec2<bool>(true, false))), !(!select(vec2<bool>(false, false), vec2<bool>(false, false), true))));
    global1 = Struct_1(global3.a, select(~(-_wgslsmith_div_vec4_i32(vec4<i32>(0i, -62328i, 2147483647i, 2147483647i), vec4<i32>(global1.b.x, global1.b.x, -2147483647i, -1i))), (select(vec4<i32>(u_input.b.x, -1i, global3.b.x, -1i), vec4<i32>(38304i, 16287i, global1.b.x, -2147483647i), true) ^ func_4(global1.b.zzy, 2147483647i, vec2<i32>(u_input.c, -6900i)).b) & _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-21313i, -11629i, u_input.b.x, 55496i), vec4<i32>(22569i, u_input.c, -88657i, global3.b.x)), vec4<i32>(-1i, -14998i, -2147483647i, -1i), ~vec4<i32>(u_input.a, 3822i, global3.b.x, 8707i)), select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true)))));
    var var_0 = -(i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(global1.b.x, global3.b.x, 61095i), _wgslsmith_mod_vec3_i32(global3.b.wxy, vec3<i32>(-43009i, -15770i, -1i))));
    var var_1 = false;
    let var_2 = Struct_1(func_1(select(select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), any(vec4<bool>(true, false, true, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), func_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), Struct_1(vec4<f32>(-1548f, global1.a.x, 390f, 582f), global3.b), Struct_1(vec4<f32>(global3.a.x, global3.a.x, -1281f, 2567f), -vec4<i32>(19633i, -2147483647i, 2147483647i, global3.b.x)), ~max(32043u, 49422u)), func_5(Struct_1(vec4<f32>(global3.a.x, global3.a.x, global3.a.x, global3.a.x), vec4<i32>(global3.b.x, 64688i, global3.b.x, -6687i)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(708f, -1449f, global3.a.x, -476f) - global1.a), global1.b)), firstLeadingBit(12361u)).a, ~func_4(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.b.x, global1.b.x, -1i), vec3<i32>(1i, 1i, 1i)), firstTrailingBit(global1.b.x), func_5(func_1(vec3<bool>(true, false, true), Struct_1(global3.a, global3.b), Struct_1(vec4<f32>(global3.a.x, -570f, global3.a.x, -1111f), vec4<i32>(u_input.b.x, global3.b.x, 2147483647i, -31436i)), 1u), Struct_1(global3.a, vec4<i32>(u_input.c, 53698i, -14604i, -1i))).b.xw).b);
    global2 = !((all(vec3<bool>(true, true, false)) != true) & ((_wgslsmith_sub_i32(21505i, u_input.a) >> (_wgslsmith_add_u32(10813u, 52623u) % 32u)) <= ~10778i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(947f)), var_2.a.x);
}

