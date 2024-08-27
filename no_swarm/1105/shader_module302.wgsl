struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1 = Struct_1(72546i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = -225f;
    var var_1 = global0.c;
    var var_2 = ~vec4<u32>(~min(u_input.b.x, 71815u), u_input.b.x, ~u_input.a, u_input.b.x);
    let var_3 = -(~(~countOneBits(-global1.a)));
    let var_4 = Struct_2(arg_2.c, var_3, Struct_1(firstTrailingBit(max(1i, _wgslsmith_mult_i32(var_1.a, var_3)))), global0.d);
    return arg_2;
}

fn func_3() -> Struct_2 {
    var var_0 = func_2(-(~(-9044i)) | -_wgslsmith_add_i32(global0.b, global0.c.a), global0.d, Struct_2(global0.c, (~global0.a.a ^ -u_input.c) & _wgslsmith_mod_i32(global0.b, abs(global0.c.a)), global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1035f, 1371f)) + -365f) - -400f)));
    global0 = Struct_2(func_2(select(-1i, -_wgslsmith_div_i32(64253i, 31491i), ~74643u >= _wgslsmith_div_u32(7411u, u_input.a)), 1000f, Struct_2(func_2(~global0.b, _wgslsmith_f_op_f32(-global0.d), func_2(global0.c.a, global0.d, Struct_2(Struct_1(global0.c.a), 0i, global0.a, var_0.d))).a, -2147483647i, var_0.c, -1717f)).a, 0i, Struct_1(global0.a.a), 1340f);
    let var_1 = min(_wgslsmith_mult_vec3_u32(u_input.b.yxx, vec3<u32>((36237u ^ u_input.b.x) << (_wgslsmith_sub_u32(u_input.a, 4294967295u) % 32u), u_input.a, u_input.a)), u_input.b.yxx);
    global1 = global0.a;
    global0 = func_2(_wgslsmith_div_i32(1i, 19046i), _wgslsmith_div_f32(1042f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1293f)) * _wgslsmith_f_op_f32(floor(global0.d))))), Struct_2(func_2(min(~global1.a, var_0.c.a), -870f, func_2(-u_input.c, global0.d, func_2(17203i, 459f, Struct_2(global0.c, -15508i, var_0.c, 1746f)))).c, -_wgslsmith_clamp_i32(4945i, 2147483647i, select(var_0.c.a, 0i, false)), Struct_1(0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) + var_0.d))));
    return func_2(global0.c.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.d))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.d, -1000f)))))), func_2(0i, global0.d, Struct_2(func_2(_wgslsmith_mult_i32(1i, -1i), _wgslsmith_f_op_f32(var_0.d + global0.d), func_2(-1i, global0.d, Struct_2(var_0.a, 36416i, Struct_1(global1.a), var_0.d))).c, _wgslsmith_sub_i32(-19637i | global0.a.a, countOneBits(-2147483647i)), global0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(482f + -568f), _wgslsmith_f_op_f32(1895f * global0.d)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: vec4<f32>) -> vec3<u32> {
    let var_0 = global0.a;
    global1 = global0.c;
    var var_1 = Struct_2(global0.c, abs(-(var_0.a & -global1.a)), func_2(max(global1.a, 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-356f, -1055f)), func_2(_wgslsmith_add_i32(1i, 19607i), _wgslsmith_f_op_f32(-1446f - -305f), func_2(firstTrailingBit(6081i), -247f, func_3()))).c, 319f);
    global0 = Struct_2(var_1.c, _wgslsmith_div_i32(1i, _wgslsmith_add_i32(countOneBits(global1.a), -7882i)) & -21996i, Struct_1(i32(-1i) * -58613i), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3.x * global0.d), _wgslsmith_f_op_f32(-arg_3.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1145f)))))));
    return _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x), vec4<u32>(u_input.b.x, 1u, u_input.a, u_input.a)), 4294967295u, ~1u) | ~u_input.b.wzx, vec3<u32>(max(_wgslsmith_div_u32(~0u, 4294967295u), _wgslsmith_mod_u32(1u, 62913u)), ~(~min(8285u, 63369u)), 1u), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(max(max(vec3<u32>(u_input.a, 29912u, 0u), vec3<u32>(35484u, u_input.b.x, 0u)), vec3<u32>(8184u, u_input.a, u_input.b.x)), reverseBits(u_input.b.ywy >> (u_input.b.xwz % vec3<u32>(32u)))), vec3<u32>(4294967295u, _wgslsmith_mult_u32(countOneBits(u_input.b.x), _wgslsmith_add_u32(1u, u_input.b.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1738u, u_input.b.x, u_input.b.x), ~vec4<u32>(45611u, 0u, u_input.b.x, 21512u)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_1.d)))));
    global0 = func_2(-29925i ^ u_input.c, 1000f, arg_1);
    let var_1 = ~func_4(!(!select(vec4<bool>(arg_2, false, arg_2, arg_2), vec4<bool>(true, true, arg_2, false), vec4<bool>(true, true, false, arg_2))), ~_wgslsmith_add_vec4_i32(vec4<i32>(-1948i, -62224i, 0i, u_input.c), vec4<i32>(arg_1.a.a, 1i, 53599i, 68373i)) | (vec4<i32>(-1i) * -vec4<i32>(arg_0.a, 8015i, global0.c.a, 10927i)), func_3(), vec4<f32>(309f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, var_0) - _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.d, global0.d)))));
    let var_2 = reverseBits(~u_input.c);
    var var_3 = func_2(1i, global0.d, Struct_2(Struct_1(0i), u_input.c, arg_0, _wgslsmith_f_op_f32(round(func_3().d)))).c;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.d;
    let var_1 = u_input.b.x;
    var var_2 = min(vec2<u32>(u_input.b.x, 4975u), vec2<u32>(4294967295u, u_input.b.x));
    global0 = func_1(Struct_1(0i), Struct_2(global0.c, ~0i, global0.a, _wgslsmith_f_op_f32(-global0.d)), !any(vec2<bool>(true, true)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -939f));
    let var_4 = Struct_2(global0.c, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(abs(-5821i), reverseBits(u_input.c), u_input.c)), abs(vec3<i32>(global1.a, _wgslsmith_mult_i32(u_input.c, -2147483647i), 2147483647i))), Struct_1(-22325i), _wgslsmith_f_op_f32(-global0.d));
    var var_5 = !((abs(select(var_1, var_2.x, true)) <= select(_wgslsmith_clamp_u32(1u, var_2.x, var_2.x), _wgslsmith_dot_vec3_u32(u_input.b.yww, vec3<u32>(1539u, 70971u, 11212u)), all(vec2<bool>(true, false)))) && (func_1(func_1(global0.c, Struct_2(Struct_1(var_4.b), global0.c.a, global0.c, 1203f), true).c, func_2(0i, 1285f, Struct_2(Struct_1(global0.a.a), 2147483647i, var_4.a, -248f)), var_4.b > -50703i).b > var_4.c.a));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(func_3().d, global0.d)), global0.d) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(580f)), _wgslsmith_f_op_f32(f32(-1f) * -474f), true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_4.d, -515f, true)), var_4.d) + -862f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(var_4.d * 3016f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.d)))), any(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))))), vec3<i32>(countOneBits(abs(global0.b)) >> (1u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(15619i, var_4.a.a, u_input.c), vec3<i32>(global0.c.a, global1.a, u_input.c)), -1i, min(u_input.c, 2147483647i)), ~vec3<i32>(u_input.c, var_4.a.a, -21871i)), global1.a), (global1.a | u_input.c) << (abs(_wgslsmith_mod_u32(u_input.b.x << (var_1 % 32u), func_4(vec4<bool>(true, true, true, true), vec4<i32>(-27017i, var_4.b, -2147483647i, global0.a.a), Struct_2(global0.c, u_input.c, var_4.a, -187f), vec4<f32>(-962f, var_4.d, -1095f, var_4.d)).x)) % 32u), vec3<i32>(abs(_wgslsmith_sub_i32(1i, 0i)), -1i, -countOneBits(u_input.c)) | _wgslsmith_sub_vec3_i32(vec3<i32>(func_2(18796i, var_4.d, var_4).b, 2147483647i, -2147483647i), _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(-666i, 35034i, 1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(13819i, u_input.c, -2147483647i), vec3<i32>(var_4.c.a, -2147483647i, u_input.c), vec3<i32>(var_4.b, 0i, u_input.c)))));
}

