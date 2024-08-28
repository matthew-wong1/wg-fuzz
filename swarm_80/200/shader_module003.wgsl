struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, -1421f, vec3<f32>(-630f, -922f, 1000f), vec3<f32>(-805f, -1386f, -376f));

var<private> global1: vec3<f32> = vec3<f32>(-894f, 365f, 2312f);

var<private> global2: Struct_1;

var<private> global3: array<u32, 22>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: Struct_3) -> u32 {
    global2 = Struct_1(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.d.x)) + 564f))) + -941f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, -281f, global2.d.x))) * global0.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global2.c, vec3<f32>(1644f, global0.b, -681f), vec3<bool>(true, true, global0.a))) + global0.c)), true)), global2.c);
    var var_0 = !any(!vec3<bool>(any(vec2<bool>(arg_1, global0.a)), arg_3.b.x >= arg_0.a, global0.a));
    var var_1 = Struct_3(-(~arg_3.a), u_input.a.xz, global2.d.x);
    let var_2 = arg_0;
    var var_3 = Struct_1(arg_1, _wgslsmith_f_op_f32(max(var_1.c, -1330f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(global2.d, vec3<f32>(global0.b, -438f, -1000f))), global0.d)))))), global0.d);
    return ~_wgslsmith_clamp_u32(arg_2, arg_2, _wgslsmith_dot_vec2_u32(vec2<u32>(64206u, 0u), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, global3[_wgslsmith_index_u32(51356u, 22u)]), vec2<u32>(1u, 4294967295u)))) | ~arg_2;
}

fn func_2(arg_0: u32) -> Struct_1 {
    global3 = array<u32, 22>();
    var var_0 = any(select(vec2<bool>(global2.a, false), !(!vec2<bool>(global2.a, false)), !(!vec2<bool>(global0.a, true)))) && (all(!select(vec2<bool>(true, global0.a), vec2<bool>(false, global2.a), true)) && false);
    var_0 = !(!(~global3[_wgslsmith_index_u32(func_3(Struct_2(u_input.b), false, global3[_wgslsmith_index_u32(arg_0, 22u)], Struct_3(u_input.a.zz, vec2<i32>(u_input.a.x, 2147483647i), global2.b)), 22u)] != 0u));
    let var_1 = ~u_input.a.xz;
    let var_2 = Struct_3(~var_1 << (~abs(abs(vec2<u32>(48184u, 4294967295u))) % vec2<u32>(32u)), vec2<i32>(~var_1.x, min(~(-1i), u_input.b) >> (global3[_wgslsmith_index_u32(arg_0, 22u)] % 32u)), global2.d.x);
    return Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(981f * global0.b)), vec3<f32>(global0.c.x, -335f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(756f, global2.c.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global2.d, global2.d))) * vec3<f32>(_wgslsmith_f_op_f32(global0.d.x + -172f), 133f, _wgslsmith_f_op_f32(floor(1708f)))))));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: i32) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec3_f32(sign(global2.d));
    var var_0 = vec4<u32>(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(min(8582u, _wgslsmith_add_u32(global3[_wgslsmith_index_u32(4294967295u, 22u)], ~4294967295u)), 22u)], 22u)], 11163u), 22u)], 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(countOneBits(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(1u, 1u)), 22u)]), 22u)], 22u)], 1u);
    var var_1 = false;
    let var_2 = func_2(~max(13074u, 1u));
    var_1 = (global2.d.x >= global1.x) & !all(select(!vec2<bool>(false, global2.a), vec2<bool>(var_2.a, false), vec2<bool>(true, true)));
    return func_2(~27795u);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_3 {
    let var_0 = func_2(70151u);
    var var_1 = !select(vec3<bool>(_wgslsmith_f_op_f32(global2.c.x + 574f) >= _wgslsmith_f_op_f32(var_0.c.x + global2.d.x), -arg_1.x < -2147483647i, false), select(vec3<bool>(global2.a, var_0.a, false), !vec3<bool>(false, true, global0.a), !select(vec3<bool>(false, global0.a, var_0.a), vec3<bool>(true, arg_0.a, true), vec3<bool>(global2.a, arg_0.a, false))), !((arg_1.x ^ u_input.b) > u_input.b));
    var var_2 = Struct_3(-vec2<i32>(18471i, arg_1.x), u_input.a.zy, -839f);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.b + 1626f), global1.x)));
    let var_4 = func_1(~(~func_3(Struct_2(10334i), true, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(20352u, 22u)], 22u)], 22u)], 22u)], 22u)], Struct_3(vec2<i32>(arg_1.x, 0i), vec2<i32>(-43881i, u_input.a.x), 611f))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1000f)))), var_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -275f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global0.b))), 1364f), -2147483647i);
    return Struct_3(~arg_1, firstTrailingBit(select(~vec2<i32>(u_input.b, u_input.a.x), vec2<i32>(_wgslsmith_add_i32(var_2.b.x, var_2.b.x), var_2.a.x), var_1.yx)), global2.d.x);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: u32) -> Struct_3 {
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.x) + -702f))) - _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1261f, global2.b))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2294f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.x) + arg_0.c), global2.b) * _wgslsmith_f_op_vec3_f32(round(global2.c))), global2.d);
    var var_0 = ~43549u;
    let var_1 = ~(_wgslsmith_clamp_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_2, 22u)], 22u)], 1u, arg_1.x, arg_2), vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 22u)], 62096u, 1u, arg_2)), vec4<u32>(global3[_wgslsmith_index_u32(arg_2, 22u)], arg_2, 69084u, 26999u), select(vec4<bool>(false, false, global0.a, true), vec4<bool>(false, true, false, global0.a), global0.a)), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(arg_1.x, global3[_wgslsmith_index_u32(0u, 22u)], global3[_wgslsmith_index_u32(arg_1.x, 22u)], global3[_wgslsmith_index_u32(0u, 22u)])), ~vec4<u32>(45631u, arg_1.x, global3[_wgslsmith_index_u32(59180u, 22u)], 1u)), abs(vec4<u32>(0u, arg_1.x, arg_1.x, global3[_wgslsmith_index_u32(42299u, 22u)])) | ~vec4<u32>(10642u, 1u, 0u, 49040u)) & ~countOneBits(~vec4<u32>(70928u, global3[_wgslsmith_index_u32(arg_1.x, 22u)], 1u, arg_2)));
    global2 = func_2(~min(abs(select(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_1.x, 22u)], 22u)], false)), var_1.x));
    return Struct_3(countOneBits(-vec2<i32>(u_input.b, ~(-17791i))), -arg_0.a, arg_0.c);
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_3) -> Struct_3 {
    let var_0 = Struct_3(~vec2<i32>(55234i, arg_3.b.x), _wgslsmith_mod_vec2_i32(max(u_input.a.xz << ((vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 22u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 22u)], 22u)]) ^ vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 22u)], 22u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(23664u, 22u)], 22u)], 22u)])) % vec2<u32>(32u)), arg_3.b), _wgslsmith_sub_vec2_i32((vec2<i32>(arg_2.b.x, arg_2.b.x) | vec2<i32>(-2147483647i, arg_2.b.x)) >> (~vec2<u32>(4294967295u, 17114u) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(u_input.a.yz, _wgslsmith_mod_vec2_i32(u_input.a.yy, vec2<i32>(-14963i, arg_2.a.x))))), _wgslsmith_f_op_f32(-arg_3.c));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(exp2(global1.x)), var_0.c)));
    global2 = Struct_1(global2.a, var_0.c, global2.d, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.c), 307f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1773f - _wgslsmith_div_f32(arg_1.d.x, var_0.c)) - 309f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1359f) * _wgslsmith_f_op_f32(sign(1063f))) * _wgslsmith_div_f32(-635f, arg_1.d.x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.d - global0.d) - vec3<f32>(1000f, _wgslsmith_f_op_f32(ceil(global0.c.x)), _wgslsmith_f_op_f32(-global1.x))) + vec3<f32>(global0.d.x, -659f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(867f * 352f)))), vec3<f32>(_wgslsmith_f_op_f32(arg_1.c.x + var_0.c), -2349f, 268f)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.d * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, -1000f, var_1.x) + vec3<f32>(global2.d.x, global1.x, 1467f))))));
    return Struct_3(~(var_0.b << (select(select(vec2<u32>(global3[_wgslsmith_index_u32(8946u, 22u)], 0u), vec2<u32>(4294967295u, 17357u), vec2<bool>(true, global0.a)), vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 22u)], global3[_wgslsmith_index_u32(7789u, 22u)]) & vec2<u32>(1u, 4294967295u), select(vec2<bool>(true, global2.a), vec2<bool>(global0.a, false), vec2<bool>(true, false))) % vec2<u32>(32u))), arg_3.b, _wgslsmith_f_op_f32(-func_1(1u, _wgslsmith_f_op_vec4_f32(vec4<f32>(700f, 1155f, -802f, var_0.c) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, 1148f, -1032f, var_3.x), vec4<f32>(var_2.x, -371f, 250f, 1000f), vec4<bool>(arg_0, arg_0, global2.a, true)))), firstLeadingBit(_wgslsmith_mult_i32(13468i, -1i))).d.x));
}

fn func_7(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    var var_0 = vec4<bool>(all(vec2<bool>(true, true)), !arg_1, 256f > global2.d.x, ~arg_0.x > _wgslsmith_dot_vec2_u32(arg_0, arg_0));
    global0 = func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(~8653u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.x, 22u)], 22u)], ~4294967295u), 22u)], 22u)], 80413u), _wgslsmith_div_vec3_u32(~vec3<u32>(15809u, global3[_wgslsmith_index_u32(arg_0.x, 22u)], 1u) << (firstTrailingBit(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(58131u, 22u)], 22u)], 1u, global3[_wgslsmith_index_u32(arg_0.x, 22u)])) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(min(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.x, 22u)], 22u)], 41324u, 1u), vec3<u32>(4294967295u, 38597u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(27825u, 22u)], 22u)])), vec3<u32>(global3[_wgslsmith_index_u32(1u, 22u)], global3[_wgslsmith_index_u32(21105u, 22u)], global3[_wgslsmith_index_u32(3832u, 22u)])))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c, 564f, -1000f, -1552f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(393f, global2.c.x, global0.c.x, global1.x), vec4<f32>(arg_2.c, global1.x, -1710f, 420f), global2.a))))), vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(-1940f - _wgslsmith_f_op_f32(max(global1.x, 411f))), global1.x, _wgslsmith_f_op_f32(-func_1(1u, vec4<f32>(global1.x, 377f, global1.x, global1.x), 1i).b)))), -54126i);
    global1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -331f), _wgslsmith_f_op_f32(min(global0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(210f - 599f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(14433u, 22u)], arg_0.x)).b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2265f + -772f) + 162f))));
    global0 = func_1(arg_0.x ^ _wgslsmith_dot_vec3_u32(vec3<u32>(~1u, _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(86584u, 22u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.x, 22u)], 22u)]), arg_0.x), firstTrailingBit(vec3<u32>(4294967295u, 11183u, arg_0.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 732f, arg_2.c, global0.d.x) - vec4<f32>(global1.x, -1308f, global2.d.x, -307f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.c, arg_2.c, global1.x, -418f), vec4<f32>(-648f, 303f, -496f, 1761f))), !vec4<bool>(true, true, arg_1, var_0.x)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1855f, global0.d.x, -458f, -1975f) * vec4<f32>(arg_2.c, -386f, 1000f, global1.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b, global1.x, -793f, global2.d.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1332f, 2344f, 1842f, 1380f))), !vec4<bool>(global2.a, global0.a, false, global0.a))))), !(!vec4<bool>(false, global2.a, true, global0.a)))), max(u_input.a.x, u_input.a.x));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c) * 129f), _wgslsmith_f_op_f32(select(global2.c.x, -1431f, func_1(reverseBits(arg_0.x), vec4<f32>(1266f, global2.d.x, 1616f, 547f), 50798i).a))) + -492f);
    return func_2(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_7(select(max(abs(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(3018u, 22u)], 22u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 22u)]))), _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(global3[_wgslsmith_index_u32(7972u, 22u)], global3[_wgslsmith_index_u32(4294967295u, 22u)])), abs(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 22u)], 22u)], 22u)], 22u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(115541u, 22u)], 22u)])))), max(vec2<u32>(69781u, global3[_wgslsmith_index_u32(1u, 22u)]) << (vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 22u)], 22u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 22u)], 22u)]) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 22u)], 22u)]), vec2<u32>(183u, 130u)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 22u)], 22u)], 22u)]), vec2<u32>(global3[_wgslsmith_index_u32(0u, 22u)], 86444u), vec2<u32>(35560u, global3[_wgslsmith_index_u32(1u, 22u)])) % vec2<u32>(32u))), false), true, func_6(true, Struct_1(!global0.a, global1.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1318f, -619f, global2.d.x) + _wgslsmith_f_op_vec3_f32(-global2.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.c))), Struct_3(-(~u_input.a.yz), ~u_input.a.xx & u_input.a.yz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) - _wgslsmith_div_f32(-395f, global1.x))), func_5(func_4(func_1(0u, vec4<f32>(-373f, -108f, -1000f, -137f), u_input.b), vec2<i32>(-1i, u_input.b) ^ vec2<i32>(-10857i, 5687i)), vec3<u32>(66661u ^ global3[_wgslsmith_index_u32(42056u, 22u)], 1u, global3[_wgslsmith_index_u32(23144u, 22u)] | 4294967295u), firstLeadingBit(~0u))));
    var var_0 = Struct_1(any(!vec2<bool>(true, !global2.a)), _wgslsmith_div_f32(global2.c.x, global1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1243f, global1.x, -1000f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, global0.d.x) * _wgslsmith_f_op_f32(-global2.c.x))), 299f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(782f, global0.d.x)))));
    global3 = array<u32, 22>();
    var var_1 = Struct_2(1i);
    var var_2 = true;
    let var_3 = 81622u;
    let x = u_input.a;
    s_output = StorageBuffer(global0.d.x, ~max(reverseBits(var_1.a), var_1.a));
}

