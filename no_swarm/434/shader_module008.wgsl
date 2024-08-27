struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<f32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(9041u, false, vec2<f32>(737f, 419f), vec4<i32>(1i, -29571i, 2147483647i, i32(-2147483648)));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec2<f32>) -> vec4<i32> {
    global0 = Struct_1(global0.a, global0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0)))), countOneBits(-(vec4<i32>(-1i) * -global0.d)));
    global0 = Struct_1(~(~1u | global0.a), global0.b, _wgslsmith_div_vec2_f32(vec2<f32>(global0.c.x, _wgslsmith_div_f32(-320f, -1332f)), global0.c), vec4<i32>(abs(_wgslsmith_mod_i32(global0.d.x, ~1i)), -17957i, 9139i, -10568i));
    let var_0 = Struct_1(~4294967295u, (6060u >= _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, u_input.b, global0.a), vec4<u32>(15431u, global0.a, global0.a, 40294u)), ~16936u)) | global0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.c.x, arg_0.x), vec2<f32>(1370f, 1447f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -477f)), select(vec2<bool>(false, global0.b), vec2<bool>(global0.b, global0.b), vec2<bool>(global0.b, true)))) * vec2<f32>(-593f, _wgslsmith_f_op_f32(-arg_0.x))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 + _wgslsmith_f_op_vec2_f32(-arg_0)), arg_0)), vec4<i32>(max(2147483647i, reverseBits(-1i)), -(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1300i, 23663i, global0.d.x, global0.d.x), vec4<i32>(-25151i, global0.d.x, global0.d.x, -2147483647i))), abs(global0.d.x), -abs(global0.d.x)));
    global0 = Struct_1(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 1u), vec3<u32>(0u, global0.a, 4294967295u) >> (vec3<u32>(var_0.a, global0.a, 15330u) % vec3<u32>(32u)))), !(_wgslsmith_mult_u32(u_input.c.x, firstTrailingBit(34998u)) >= ~firstLeadingBit(u_input.c.x)), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) - _wgslsmith_f_op_f32(364f * var_0.c.x)), 1f, any(select(vec2<bool>(var_0.b, false), vec2<bool>(global0.b, var_0.b), vec2<bool>(false, true))))), -862f), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -var_0.d, vec4<i32>(-47482i, _wgslsmith_mod_i32(global0.d.x, -9819i), -1i, ~49222i)) | vec4<i32>(0i, -14051i, var_0.d.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -17013i, -11005i), global0.d.yzw), 41361i)));
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_add_i32(-_wgslsmith_mod_i32(2147483647i, global0.d.x ^ var_0.d.x), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(global0.d.x, 3287i, var_0.d.x), _wgslsmith_div_vec3_i32(vec3<i32>(62548i, var_0.d.x, -49720i), var_0.d.xxw), -global0.d.wxy), select(global0.d.zww, vec3<i32>(18076i, global0.d.x, -1i), !global0.b))), global0.d.x & -_wgslsmith_add_i32(~global0.d.x, var_0.d.x));
    return -var_0.d >> (firstLeadingBit(vec4<u32>(_wgslsmith_add_u32(u_input.b, ~1u), u_input.c.x, ~(~global0.a), 1u)) % vec4<u32>(32u));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(~(~(22767u >> (global0.a % 32u))), true, global0.c, min(-min(~vec4<i32>(global0.d.x, global0.d.x, global0.d.x, global0.d.x), select(vec4<i32>(global0.d.x, 0i, global0.d.x, 2147483647i), global0.d, vec4<bool>(false, false, true, false))), _wgslsmith_div_vec4_i32(func_3(vec2<f32>(-471f, global0.c.x)), ~(~global0.d))));
    global0 = Struct_1(abs(0u), global0.b, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.c) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.c.x, global0.c.x), var_0.c, true)))), _wgslsmith_f_op_vec2_f32(exp2(var_0.c)))), -(~vec4<i32>(~(-14268i), -60667i, firstTrailingBit(-28192i), global0.d.x << (64994u % 32u))));
    var var_1 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.c.x, ~(~84874u)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, var_0.a, firstTrailingBit(42978u)), ~(~vec4<u32>(4294967295u, 0u, 4294967295u, u_input.c.x))), _wgslsmith_mult_u32(4294967295u, var_0.a)), !(!all(select(vec3<bool>(var_0.b, false, false), vec3<bool>(var_0.b, true, true), false))), _wgslsmith_f_op_vec2_f32(global0.c * vec2<f32>(_wgslsmith_f_op_f32(ceil(global0.c.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2004f + -484f), _wgslsmith_f_op_f32(-global0.c.x))))), firstLeadingBit(vec4<i32>(-12497i, 37953i, min(~2147483647i, -var_0.d.x), 38554i)));
    var_0 = Struct_1(1u, true, _wgslsmith_f_op_vec2_f32(floor(var_1.c)), ~(~vec4<i32>(-global0.d.x, -2587i & global0.d.x, global0.d.x, _wgslsmith_sub_i32(global0.d.x, var_1.d.x))));
    var_1 = Struct_1(min(~0u, var_1.a), var_1.b, vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.x * var_0.c.x), -807f)))), var_1.d);
    return global0.a;
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: vec4<u32>) -> u32 {
    global0 = Struct_1(0u, false, vec2<f32>(global0.c.x, global0.c.x), (global0.d << (min(firstTrailingBit(vec4<u32>(4294967295u, u_input.b, u_input.c.x, arg_2.x)), arg_2) % vec4<u32>(32u))) >> (_wgslsmith_div_vec4_u32(firstTrailingBit(~arg_2), ~firstLeadingBit(vec4<u32>(0u, arg_2.x, 0u, arg_1.x))) % vec4<u32>(32u)));
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.c.x + _wgslsmith_f_op_f32(global0.c.x * global0.c.x))));
    global0 = Struct_1(_wgslsmith_mod_u32(51286u, func_2()) ^ 92425u, _wgslsmith_mult_u32(arg_2.x, ~1u) != 4294967295u, global0.c, vec4<i32>(_wgslsmith_mult_i32(global0.d.x, global0.d.x), global0.d.x, _wgslsmith_clamp_i32(global0.d.x, ~_wgslsmith_div_i32(-2147483647i, global0.d.x), global0.d.x << (4294967295u % 32u)), reverseBits(_wgslsmith_dot_vec3_i32(global0.d.xxz & global0.d.wwx, reverseBits(global0.d.wzy)))));
    let var_1 = abs(arg_1.x);
    global0 = Struct_1(~arg_2.x, any(vec4<bool>(all(vec4<bool>(true, global0.b, arg_0, global0.b)), _wgslsmith_mod_u32(arg_1.x, var_1) < _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 15531u, 53912u), vec3<u32>(arg_2.x, 1u, var_1)), true, true)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1090f, var_0, false)) - _wgslsmith_f_op_f32(abs(189f))), -313f), vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-866f * var_0)))))), vec4<i32>(_wgslsmith_dot_vec3_i32(global0.d.zxz, abs(vec3<i32>(global0.d.x, global0.d.x, -1i))), 45545i, (global0.d.x << (13181u % 32u)) ^ global0.d.x, ~select(1i, 1i, global0.b)) << (~vec4<u32>(_wgslsmith_add_u32(global0.a, 18312u), 25965u, _wgslsmith_sub_u32(1u, arg_2.x), arg_1.x) % vec4<u32>(32u)));
    return 0u;
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(func_4(true, _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 12096u, global0.a), u_input.a), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(38701u, 4294967295u), u_input.a.zy), _wgslsmith_sub_u32(46058u, u_input.a.x), u_input.b)), vec4<u32>(~func_2(), 0u, ~(~global0.a), u_input.a.x)), false, global0.c, func_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global0.c + global0.c))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global0.c))), global0.b))));
    global0 = Struct_1(_wgslsmith_clamp_u32(u_input.a.x, 1u, _wgslsmith_dot_vec2_u32(u_input.c, _wgslsmith_clamp_vec2_u32(u_input.c, select(u_input.c, vec2<u32>(global0.a, global0.a), vec2<bool>(global0.b, global0.b)), select(u_input.c, vec2<u32>(4294967295u, u_input.c.x), global0.b)))), any(vec4<bool>(true, select(global0.b, true, true) & (global0.d.x != 1i), select(global0.b, !global0.b, all(vec4<bool>(false, false, true, false))), 339f > _wgslsmith_f_op_f32(-global0.c.x))), vec2<f32>(-277f, _wgslsmith_f_op_f32(-global0.c.x)), vec4<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(-1i), ~(-14349i), -13151i), global0.d.yzx), 0i, 1i));
    let var_0 = Struct_1(75999u, global0.b, global0.c, countOneBits(~global0.d));
    global0 = var_0;
    let var_1 = Struct_1(u_input.c.x, false, var_0.c, ~firstLeadingBit(-_wgslsmith_clamp_vec4_i32(var_0.d, vec4<i32>(global0.d.x, var_0.d.x, -38401i, global0.d.x), vec4<i32>(var_0.d.x, var_0.d.x, global0.d.x, global0.d.x))));
    return Struct_1(~_wgslsmith_dot_vec4_u32(reverseBits(reverseBits(vec4<u32>(global0.a, 1u, global0.a, var_0.a))), ~vec4<u32>(var_0.a, var_0.a, 0u, 26727u)), !all(select(!vec4<bool>(false, var_0.b, false, true), select(vec4<bool>(var_1.b, true, global0.b, var_0.b), vec4<bool>(true, var_1.b, var_1.b, true), false), !vec4<bool>(var_1.b, var_1.b, false, var_1.b))), var_0.c, vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(2147483647i, -1i, 1i)), reverseBits(vec3<i32>(2497i, var_1.d.x, global0.d.x))), vec3<i32>(var_1.d.x >> (0u % 32u), global0.d.x, 30174i)), firstLeadingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.d.x, 1i, -2147483647i, global0.d.x), ~var_1.d)), abs((var_0.d.x << (4294967295u % 32u)) & 2147483647i), -27976i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = Struct_1(~max(u_input.a.x, max(global0.a, abs(4294967295u))), !(max(7784u, global0.a & 17424u) == ~(~42547u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.x, global0.c.x) * vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-387f - -890f), _wgslsmith_f_op_f32(step(global0.c.x, 178f)))), _wgslsmith_f_op_f32(400f + _wgslsmith_f_op_f32(global0.c.x + global0.c.x)))), global0.d);
    var var_1 = vec2<u32>(4294967295u, 0u);
    var_1 = u_input.a.xx;
    global0 = Struct_1(~_wgslsmith_add_u32(u_input.c.x >> (u_input.a.x % 32u), 64909u >> (var_1.x % 32u)), !var_0.b, _wgslsmith_f_op_vec2_f32(floor(var_0.c)), -(-abs(vec4<i32>(22298i, 16675i, 45581i, -1i)) ^ vec4<i32>(global0.d.x, global0.d.x, var_0.d.x, _wgslsmith_div_i32(0i, var_0.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-global0.d.xwy), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(908f, _wgslsmith_f_op_f32(-var_0.c.x), -1368f, _wgslsmith_f_op_f32(f32(-1f) * -250f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, -569f) + vec4<f32>(var_0.c.x, 293f, 303f, global0.c.x)) - vec4<f32>(var_0.c.x, -2118f, global0.c.x, -931f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.c.x, var_0.c.x, 1219f, -1509f), vec4<f32>(-433f, 1000f, -253f, 1000f))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.c.x, var_0.c.x, global0.c.x, 940f)))))))), ~reverseBits(vec2<u32>(u_input.a.x, 32971u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(663f, -761f, var_0.c.x, -1159f))) * vec4<f32>(1212f, -284f, global0.c.x, global0.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.c.x, 422f, -115f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, var_0.c.x, global0.c.x, -1213f) * vec4<f32>(1052f, var_0.c.x, -888f, 807f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(min(global0.c.x, -437f)), _wgslsmith_f_op_f32(abs(-259f)), global0.c.x) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-639f, -284f, -2883f, var_0.c.x) - vec4<f32>(2151f, -1987f, -703f, 340f))))), true)), ~global0.a);
}

