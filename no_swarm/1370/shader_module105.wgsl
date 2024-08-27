struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<u32>;

var<private> global2: vec2<u32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> bool {
    global2 = ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(49605u, 30110u), reverseBits(global1.xz))) | global1.yy;
    global2 = _wgslsmith_mult_vec2_u32(countOneBits(_wgslsmith_sub_vec2_u32(global1.yx >> (global1.xy % vec2<u32>(32u)), global1.xx << (global1.yx % vec2<u32>(32u)))) ^ global1.xz, max(global1.xz, ~abs(_wgslsmith_mod_vec2_u32(vec2<u32>(global1.x, global2.x), vec2<u32>(global1.x, 1u)))));
    var var_0 = -_wgslsmith_sub_vec2_i32(~(~vec2<i32>(-247i, u_input.a)), ~(-(vec2<i32>(2557i, 20952i) | vec2<i32>(u_input.a, 55403i))));
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(486f, -1000f, 2861f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-277f, -232f, -1378f), vec3<f32>(-376f, 1646f, -1911f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-782f, 1272f, -1787f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(182f, -1089f, -1636f))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(788f, -360f)), -1456f, _wgslsmith_f_op_f32(f32(-1f) * -690f)))));
    global0 = _wgslsmith_f_op_f32(step(101f, -262f));
    return ((var_0.x & max(u_input.a, firstLeadingBit(u_input.a))) > ~u_input.a) || true;
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: vec2<f32>) -> Struct_2 {
    global1 = vec3<u32>(~(~(~4294967295u)), 1u ^ select(~4294967295u, ~global2.x, true), global1.x) << (_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(arg_0 << (0u % 32u), 0u, _wgslsmith_sub_u32(global1.x, 1u))), _wgslsmith_sub_vec3_u32(firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, global2.x, 37543u), vec3<u32>(49572u, 1u, 1u), vec3<u32>(global2.x, global1.x, 4294967295u))), vec3<u32>(global1.x, ~arg_0, global2.x)), vec3<u32>(4294967295u, _wgslsmith_add_u32(~0u, arg_0), 1u)) % vec3<u32>(32u));
    let var_0 = Struct_1(vec4<bool>(true, func_3(), all(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true))), ~(-29054i), arg_2.x, firstTrailingBit(vec3<i32>(-68413i, ~u_input.a, u_input.a)));
    let var_1 = ~u_input.a;
    var var_2 = _wgslsmith_mult_i32(var_0.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(17730i, var_0.b) ^ select(arg_1.zy, var_0.d.xz, false), ~vec2<i32>(34061i, var_0.b)) & 1i);
    let var_3 = global2.x;
    return Struct_2(var_0, var_0, select(var_0.a, var_0.a, true), select(max(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, arg_0, 1u, 0u) & vec4<u32>(arg_0, 0u, 1u, 23942u), vec4<u32>(arg_0, 4294967295u, 84231u, global1.x)), ~min(vec4<u32>(arg_0, global1.x, 4294967295u, arg_0), vec4<u32>(0u, global1.x, arg_0, global2.x))), abs(vec4<u32>(~global2.x, firstLeadingBit(29215u), _wgslsmith_dot_vec3_u32(vec3<u32>(39825u, 36375u, 4294967295u), vec3<u32>(global1.x, arg_0, 0u)), 15951u)), var_0.a.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: u32) -> i32 {
    global2 = ~(~abs(arg_0.d.yz));
    global0 = _wgslsmith_f_op_f32(max(arg_0.b.c, arg_2.x));
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c)))) * -987f), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(arg_0.a.d.zy >> (vec2<u32>(global1.x, global2.x) % vec2<u32>(32u)), arg_0.a.d.zx), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, u_input.a) >> (global1.yx % vec2<u32>(32u)), select(vec2<i32>(u_input.a, 33975i), vec2<i32>(u_input.a, arg_0.a.d.x), vec2<bool>(arg_0.b.a.x, false)), vec2<i32>(28065i, u_input.a))), arg_0.b.d.xz, vec2<i32>(-2147483647i, 1i)), _wgslsmith_f_op_vec3_f32(arg_1.zzw - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(480f, arg_0.b.c))), _wgslsmith_f_op_f32(-834f + arg_0.a.c), arg_1.x)));
    let var_1 = arg_0.a.d.x;
    var var_2 = func_2(func_2(arg_0.d.x, _wgslsmith_clamp_vec4_i32(min(vec4<i32>(11437i, 9460i, var_1, var_1), ~vec4<i32>(var_0.b.x, -1i, var_1, var_1)), abs(vec4<i32>(2147483647i, -12009i, -1i, arg_0.a.d.x)), -vec4<i32>(28958i, arg_0.a.b, arg_0.b.b, 693i)), _wgslsmith_f_op_vec2_f32(exp2(var_0.c.xz))).d.x, _wgslsmith_sub_vec4_i32(abs(vec4<i32>(66572i, var_0.b.x, 2147483647i, var_1)), vec4<i32>(var_1, u_input.a, arg_0.a.d.x, var_1)) | vec4<i32>(firstTrailingBit(max(var_0.b.x, u_input.a)), -2147483647i, 1i | _wgslsmith_dot_vec2_i32(vec2<i32>(11124i, arg_0.a.d.x), arg_0.a.d.xz), arg_0.b.b), arg_1.yx);
    return -1i;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    let var_0 = u_input.a;
    global1 = vec3<u32>(119782u, global1.x, _wgslsmith_add_u32(arg_1.d.x, ~reverseBits(_wgslsmith_dot_vec2_u32(global1.zx, vec2<u32>(global2.x, arg_1.d.x)))));
    global0 = arg_1.a.c;
    var var_1 = _wgslsmith_sub_i32(~(-39705i), func_4(func_2(firstTrailingBit(global1.x | 24721u), vec4<i32>(-var_0, _wgslsmith_mult_i32(arg_1.a.b, -1i), arg_3.b, -u_input.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(-626f, arg_1.a.c) * vec2<f32>(227f, -807f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2.c.x + arg_1.b.c), _wgslsmith_f_op_f32(-arg_1.a.c), _wgslsmith_f_op_f32(f32(-1f) * -427f), -461f)), arg_2.c, ~26270u));
    var var_2 = reverseBits(23797u);
    return arg_3.a.x;
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    let var_0 = 2147483647i;
    let var_1 = ~global2.x;
    var var_2 = Struct_2(arg_0, Struct_1(arg_0.a, u_input.a, _wgslsmith_f_op_f32(-2299f - func_2(~96579u, firstTrailingBit(vec4<i32>(var_0, 1i, arg_0.d.x, -1i)), vec2<f32>(arg_0.c, 1458f)).a.c), arg_0.d), !select(select(select(arg_0.a, arg_0.a, vec4<bool>(arg_0.a.x, true, arg_0.a.x, arg_0.a.x)), arg_0.a, vec4<bool>(false, true, false, arg_0.a.x)), !arg_0.a, true), ~_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(global1.x, global1.x, var_1, global1.x)), vec4<u32>(12535u, 10648u, var_1, 12749u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(global1.x, global1.x, 4294967295u, 36699u), vec4<u32>(19946u, 0u, global1.x, global1.x))));
    var var_3 = abs(select(vec4<i32>(func_4(func_2(global1.x, vec4<i32>(var_2.b.d.x, 42466i, -24890i, arg_0.b), vec2<f32>(arg_0.c, -718f)), vec4<f32>(var_2.a.c, -539f, arg_0.c, var_2.a.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-212f, arg_0.c, var_2.a.c)), var_1), 1i, 20521i, 18815i), _wgslsmith_clamp_vec4_i32(reverseBits(firstTrailingBit(vec4<i32>(u_input.a, -13958i, u_input.a, u_input.a))), _wgslsmith_div_vec4_i32(-vec4<i32>(var_0, 1i, var_0, u_input.a), vec4<i32>(var_0, u_input.a, arg_0.d.x, var_2.a.b) >> (var_2.d % vec4<u32>(32u))), select(vec4<i32>(var_0, 1i, -21732i, 0i), vec4<i32>(var_2.b.b, 0i, -2147483647i, -47590i), var_2.a.a) | vec4<i32>(18193i, 15782i, var_0, var_2.b.b)), true));
    var_3 = ~vec4<i32>(_wgslsmith_add_i32(var_2.b.b, -2147483647i), -min(countOneBits(var_3.x), ~(-38567i)), countOneBits(2147483647i), _wgslsmith_sub_i32(-34901i, var_2.b.d.x));
    return Struct_2(func_2(1u, firstLeadingBit(_wgslsmith_add_vec4_i32(~vec4<i32>(2147483647i, var_2.a.d.x, arg_0.d.x, var_2.b.d.x), ~vec4<i32>(0i, var_0, u_input.a, u_input.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2181f, 525f) - vec2<f32>(1084f, 171f))))).a, var_2.b, var_2.a.a, vec4<u32>(~4294967295u, global2.x, 11821u, global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(min(-539f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -850f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-105f, 257f, true)))))), _wgslsmith_add_vec2_i32(-_wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a, u_input.a)), firstLeadingBit(vec2<i32>(u_input.a, u_input.a))), _wgslsmith_div_vec2_i32(min(vec2<i32>(u_input.a, u_input.a), vec2<i32>(1i, 1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, u_input.a)) ^ vec2<i32>(u_input.a, u_input.a))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-446f, -360f, 1000f), vec3<f32>(-2147f, -1318f, 275f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(837f, -890f, 1105f), vec3<f32>(-821f, -1134f, 1631f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1467f, 1021f, -244f))) + _wgslsmith_div_vec3_f32(vec3<f32>(-886f, -256f, -1769f), vec3<f32>(-452f, -471f, -894f))))))));
    let var_1 = var_0;
    var var_2 = Struct_1(!vec4<bool>(true, any(vec4<bool>(false, false, true, true)), all(vec4<bool>(true, true, true, true)), true), abs(-u_input.a), 299f, abs(~_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-11628i, -38234i, 0i), vec3<i32>(var_1.b.x, -2147483647i, 38935i)), countOneBits(vec3<i32>(var_0.b.x, 38042i, u_input.a)))));
    global0 = 2530f;
    let var_3 = -1623f;
    global0 = _wgslsmith_f_op_f32(var_2.c * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(414f)), var_1.a)));
    let var_4 = func_5(Struct_1(vec4<bool>(var_2.a.x, false, select(true, !var_2.a.x, func_1(vec3<i32>(var_1.b.x, -3018i, var_0.b.x), Struct_2(Struct_1(var_2.a, var_0.b.x, 1907f, vec3<i32>(1i, -2147483647i, u_input.a)), Struct_1(vec4<bool>(true, var_2.a.x, true, var_2.a.x), -34515i, -1067f, var_2.d), vec4<bool>(true, var_2.a.x, var_2.a.x, false), vec4<u32>(23639u, 4294967295u, global1.x, 35330u)), var_0, Struct_1(var_2.a, var_0.b.x, var_3, var_2.d))), true), 0i, var_0.c.x, vec3<i32>(func_4(Struct_2(Struct_1(vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x), var_2.b, -617f, vec3<i32>(var_0.b.x, var_2.b, 70723i)), Struct_1(var_2.a, 1i, var_1.a, var_2.d), var_2.a, vec4<u32>(global1.x, 1u, global1.x, global1.x)), vec4<f32>(1372f, var_0.c.x, var_0.a, 1000f), var_0.c, global2.x), var_2.b, var_0.b.x) & (-var_2.d ^ reverseBits(vec3<i32>(var_2.d.x, var_0.b.x, -2147483647i)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, _wgslsmith_f_op_vec3_f32(-var_0.c));
}

