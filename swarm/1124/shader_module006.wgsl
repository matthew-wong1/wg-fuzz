struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<u32>(0u, 0u), -870f, vec4<u32>(0u, 4294967295u, 1u, 99u), vec3<i32>(-1i, -40422i, i32(-2147483648))), 2147483647i, vec4<u32>(16167u, 4294967295u, 1u, 4294967295u), Struct_1(vec2<u32>(32776u, 84735u), -1216f, vec4<u32>(1u, 4294967295u, 4294967295u, 94302u), vec3<i32>(0i, -44522i, 0i)));

var<private> global1: vec4<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = global0.d.b;
    var var_1 = vec4<u32>(u_input.b, global1.x, _wgslsmith_clamp_u32(8710u >> (~(~0u) % 32u), ~countOneBits(4294967295u), _wgslsmith_mult_u32(4294967295u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, global1.x, global0.c.x), 46017u))), ~global1.x & ~u_input.b);
    return -177f;
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> vec4<u32> {
    var var_0 = Struct_2(Struct_1(vec2<u32>(~global0.c.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(11997u, global0.c.x, 0u), vec3<u32>(global1.x, u_input.b, 46127u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, max(vec4<u32>(global0.c.x, global1.x, global0.a.a.x, global0.a.a.x), global0.d.c)), u_input.a), ~(-vec3<i32>(0i, -34055i, global0.b)) | _wgslsmith_div_vec3_i32(abs(vec3<i32>(global0.a.d.x, 2147483647i, global0.a.d.x)), select(global0.a.d, global0.d.d, arg_1.ywz))), abs(~0i), vec4<u32>(~(~u_input.a.x), ~_wgslsmith_sub_u32(4294967295u, global1.x), _wgslsmith_clamp_u32(global1.x, global1.x, reverseBits(4294967295u)), 110187u) | countOneBits(countOneBits(global0.a.c)), global0.a);
    var var_1 = var_0.a.d.zz;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b, 826f, 411f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, var_0.d.b, global0.a.b)) - vec3<f32>(arg_0, -441f, global0.d.b))))));
    global1 = _wgslsmith_clamp_vec4_u32((vec4<u32>(~39478u, u_input.a.x, _wgslsmith_dot_vec2_u32(global1.xy, vec2<u32>(global1.x, var_0.c.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 86174u, 4294967295u), vec3<u32>(1u, global0.d.c.x, u_input.b))) >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(42972u, 0u, var_0.d.c.x, global0.a.a.x), vec4<u32>(global0.a.c.x, 63823u, global1.x, 0u)) % vec4<u32>(32u))) & global0.a.c, ~u_input.a, ~_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(10601u, 30624u, 6117u, 0u) & global0.c, max(vec4<u32>(var_0.c.x, u_input.a.x, global1.x, global0.d.a.x), u_input.a), vec4<u32>(global0.c.x, 0u, global0.d.a.x, global0.d.a.x) >> (vec4<u32>(69850u, 21803u, global0.a.c.x, 4294967295u) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(var_0.a.c, u_input.a) ^ ~var_0.a.c));
    global1 = ~(~vec4<u32>(0u, max(76968u, 4294967295u), abs(u_input.b) & global0.c.x, 46748u));
    return _wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(abs(4294967295u), u_input.b, 4294967295u, firstLeadingBit(25392u)), select(countOneBits(var_0.c), ~vec4<u32>(26963u, var_0.a.a.x, global1.x, var_0.d.c.x), arg_1)), vec4<u32>(~_wgslsmith_dot_vec2_u32(~var_0.d.a, ~vec2<u32>(u_input.a.x, var_0.c.x)), 39603u, u_input.a.x, 1u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_2(arg_0, _wgslsmith_sub_i32(arg_1.a.d.x, -52848i), max((~vec4<u32>(0u, 0u, 21220u, arg_1.d.c.x) & global0.a.c) ^ vec4<u32>(global0.d.c.x, ~4294967295u, _wgslsmith_mod_u32(global1.x, 0u), 1u), arg_1.d.c), Struct_1(~(~global0.d.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(992f)) - -501f)), ~_wgslsmith_sub_vec4_u32(arg_1.d.c, countOneBits(global0.d.c)), vec3<i32>(-20480i, i32(-1i) * -2147483647i, ~_wgslsmith_mult_i32(arg_0.d.x, 1i))));
    let var_1 = arg_0;
    global1 = abs(vec4<u32>(0u, 1u, 41452u, var_1.c.x));
    let var_2 = _wgslsmith_f_op_f32(floor(arg_0.b));
    var var_3 = select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false))), false), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, any(vec2<bool>(false, true)), all(vec2<bool>(true, false)), true), vec4<bool>(any(vec4<bool>(true, true, false, false)), false, true, true)), all(vec3<bool>(true, true, true))), !vec4<bool>(true, select(true, false, true) | true, all(vec2<bool>(true, true)), any(vec4<bool>(false, true, true, false)) & select(false, false, true)), !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true)), true)));
    return Struct_1(firstTrailingBit(arg_0.c.yx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(round(arg_0.b)))), ~_wgslsmith_clamp_vec4_u32(select(~vec4<u32>(27562u, global0.c.x, 0u, 0u), reverseBits(arg_1.c), !vec4<bool>(false, var_3.x, var_3.x, true)), ~max(vec4<u32>(60241u, 15777u, u_input.b, 53782u), arg_1.c), var_0.a.c), global0.d.d);
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> u32 {
    var var_0 = func_4(Struct_1(firstLeadingBit(vec2<u32>(global1.x, 44218u)), global0.d.b, func_2(1695f, !select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, false), vec4<bool>(arg_0.x, false, true, true))), global0.d.d), Struct_2(Struct_1(vec2<u32>(arg_1 << (global0.a.a.x % 32u), 1u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -163f))), _wgslsmith_add_vec4_u32(vec4<u32>(global1.x, global0.d.c.x, 102349u, 49933u) >> (global0.d.c % vec4<u32>(32u)), firstTrailingBit(u_input.a)), vec3<i32>(~global0.b, -378i ^ global0.b, ~0i)), -36231i, vec4<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, arg_1, 34974u), u_input.a.zyx), _wgslsmith_dot_vec2_u32(global0.a.c.wx, max(u_input.a.zy, global0.a.c.zw)), ~4294967295u | (arg_1 << (72993u % 32u))), global0.a));
    var var_1 = select(~(countOneBits(min(vec2<i32>(-18422i, -2147483647i), vec2<i32>(var_0.d.x, 4493i))) ^ reverseBits(~global0.d.d.zz)), vec2<i32>(var_0.d.x, ~(13053i & var_0.d.x) | 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.b) * global0.a.b)) > _wgslsmith_f_op_f32(-var_0.b));
    let var_2 = Struct_1(vec2<u32>(~_wgslsmith_dot_vec3_u32(global0.c.xwx, vec3<u32>(u_input.a.x, arg_1, 0u)) & ((4635u >> (u_input.b % 32u)) << (~global1.x % 32u)), max(func_4(global0.d, Struct_2(Struct_1(global0.a.a, global0.a.b, vec4<u32>(1u, u_input.b, var_0.c.x, 1u), vec3<i32>(global0.d.d.x, var_1.x, var_0.d.x)), 2147483647i, u_input.a, global0.d)).c.x, ~u_input.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.a.b))), ~reverseBits(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(global0.c, vec4<u32>(0u, 1u, 1u, 1651u)), ~vec4<u32>(arg_1, arg_1, 23598u, global1.x), ~var_0.c)), _wgslsmith_div_vec3_i32((global0.d.d << (vec3<u32>(u_input.a.x, 63957u, 0u) % vec3<u32>(32u))) & vec3<i32>(_wgslsmith_mult_i32(-1i, var_1.x), 7653i, ~(-46429i)), global0.a.d));
    global1 = var_0.c ^ _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~var_2.c, firstLeadingBit(_wgslsmith_sub_vec4_u32(u_input.a, var_0.c))), ~global0.d.c);
    global1 = var_2.c;
    return 4294967295u;
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_2(Struct_1(vec2<u32>(~func_2(global0.d.b, vec4<bool>(false, false, false, true)).x, countOneBits(_wgslsmith_add_u32(1u, global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b * arg_1.b) - global0.d.b) * global0.a.b), firstTrailingBit(~vec4<u32>(3055u, global0.d.c.x, global1.x, u_input.a.x) & ~arg_1.c), ~reverseBits(func_4(global0.a, Struct_2(arg_1, arg_1.d.x, global0.c, Struct_1(arg_1.a, -2287f, arg_1.c, arg_1.d))).d)), abs(arg_1.d.x), arg_1.c, func_4(Struct_1(global0.d.c.wz, _wgslsmith_f_op_f32(round(global0.d.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.a.x, 76358u, global0.c.x, u_input.b), select(vec4<u32>(global1.x, u_input.a.x, global1.x, 7861u), u_input.a, vec4<bool>(false, false, false, true))), vec3<i32>(arg_0, select(global0.d.d.x, arg_1.d.x, true), 0i)), Struct_2(Struct_1(firstLeadingBit(vec2<u32>(4294967295u, u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -1086f), ~vec4<u32>(arg_1.a.x, 63700u, arg_1.c.x, u_input.a.x), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, arg_0, arg_0), global0.d.d)), reverseBits(arg_1.d.x), global0.a.c, arg_1)));
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1063f, 1000f, 1153f, -839f), vec4<f32>(2231f, 1184f, -925f, -414f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.b, 1284f, global0.a.b, -1520f) * vec4<f32>(410f, arg_1.b, 1020f, var_0.d.b))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-353f * global0.a.b), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(var_0.a.b - global0.d.b), var_0.a.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, -1000f, 698f, var_0.a.b)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, 356f, -694f, 1754f) - vec4<f32>(arg_1.b, arg_1.b, global0.a.b, 382f)))))));
    global0 = Struct_2(func_4(func_4(func_4(global0.a, Struct_2(var_0.a, global0.d.d.x, arg_1.c, Struct_1(global0.c.xw, 1486f, vec4<u32>(u_input.b, 0u, 33431u, 1u), var_0.d.d))), Struct_2(func_4(var_0.a, var_0), countOneBits(-14302i), _wgslsmith_add_vec4_u32(global0.d.c, global0.d.c), func_4(Struct_1(arg_1.a, -638f, vec4<u32>(arg_1.c.x, 19624u, 4404u, 1u), vec3<i32>(global0.d.d.x, 0i, 1i)), Struct_2(Struct_1(u_input.a.wz, var_1.x, u_input.a, var_0.a.d), 11585i, var_0.c, Struct_1(u_input.a.xx, arg_1.b, global0.c, global0.a.d))))), var_0), arg_1.d.x >> (1u % 32u), ~(~arg_1.c), func_4(Struct_1(u_input.a.xz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, arg_1.c.x, 69620u, u_input.a.x) | vec4<u32>(var_0.a.c.x, 1u, u_input.b, arg_1.c.x)), countOneBits(firstTrailingBit(vec3<i32>(global0.a.d.x, 2147483647i, var_0.d.d.x)))), var_0));
    global1 = vec4<u32>(arg_1.c.x, 57901u, 1u, ~(~(~0u ^ ~global1.x)));
    var var_2 = u_input.a.wyx;
    return _wgslsmith_f_op_f32(-var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a.zx, _wgslsmith_f_op_f32(func_5(global0.b << ((_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) << (func_1(vec2<bool>(true, true), global1.x) % 32u)) % 32u), global0.d)), vec4<u32>(0u, global0.d.a.x, _wgslsmith_div_u32(global1.x, u_input.a.x), 8285u) & u_input.a, vec3<i32>(-(~max(global0.a.d.x, global0.d.d.x)), ~reverseBits(global0.b), _wgslsmith_div_i32(global0.b, global0.a.d.x)));
    var var_1 = global0.a.c.x;
    var var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(-27131i, ~vec2<u32>(func_1(select(vec2<bool>(false, true), vec2<bool>(false, false), false), global1.x), u_input.a.x), -(global0.d.d.x | -2147483647i) << (_wgslsmith_div_u32(~abs(0u), global0.c.x) % 32u), var_0.b, firstLeadingBit(~0u));
}

