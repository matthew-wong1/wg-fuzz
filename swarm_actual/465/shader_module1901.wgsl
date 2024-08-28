struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_2 {
    var var_0 = select(!select(!select(vec2<bool>(true, global1.d.x), vec2<bool>(global1.d.x, global1.d.x), false), vec2<bool>(all(vec4<bool>(global1.d.x, false, global1.d.x, global1.d.x)), true), true), global1.d.zz, global1.d.xz);
    let var_1 = u_input.d.x;
    global0 = ~(u_input.e << (~(~u_input.c.xx) % vec2<u32>(32u)));
    let var_2 = 788f;
    global1 = Struct_1(var_1, abs(0i), vec4<u32>(global1.c.x, _wgslsmith_div_u32(global1.c.x, global1.c.x), ~(~(~46695u)), ~global1.c.x), global1.d);
    return Struct_2(~(~(~12499u)), _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(233f))))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> Struct_4 {
    let var_0 = Struct_1(-17516i, 0i >> ((_wgslsmith_mod_u32(u_input.b & 35829u, select(1u, 4294967295u, true)) ^ ~1u) % 32u), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(7124u, 30470u, arg_1.a, arg_0.a) | global1.c, firstTrailingBit(~global1.c), vec4<u32>(~arg_1.a, ~arg_0.a, _wgslsmith_clamp_u32(0u, 48677u, 41001u), firstTrailingBit(0u))), !vec3<bool>(any(vec4<bool>(global1.d.x, true, global1.d.x, true)) && true, !global1.d.x, any(!global1.d.zx)));
    var var_1 = Struct_3(func_2(arg_0.a, 881f));
    var var_2 = vec4<f32>(func_2(~min(4294967295u, 102539u), arg_1.b).b, 1028f, arg_0.b, var_1.a.b);
    let var_3 = _wgslsmith_clamp_i32(~_wgslsmith_add_i32(_wgslsmith_mult_i32(firstTrailingBit(1i), -5666i), i32(-1i) * -1i), -2147483647i, 0i | _wgslsmith_sub_i32(1i, u_input.d.x));
    var var_4 = ~37536u;
    return Struct_4(vec2<u32>(~(~4294967295u), 19173u), u_input.d & -u_input.d, select(!(!global1.d.zz), vec2<bool>(false, global1.d.x), true), _wgslsmith_f_op_f32(sign(arg_0.b)), _wgslsmith_f_op_vec2_f32(round(var_2.yz)));
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> vec2<i32> {
    var var_0 = Struct_3(func_2(23798u, arg_0.d));
    let var_1 = global1.c.xy;
    global0 = vec2<i32>(arg_0.b.x, 22428i);
    global0 = ~arg_0.b.xx;
    var var_2 = false;
    return vec2<i32>(~arg_0.b.x, global1.a);
}

fn func_5(arg_0: vec4<bool>, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = u_input.c ^ (_wgslsmith_add_vec3_u32(abs(vec3<u32>(4294967295u, 8544u, 0u)), firstLeadingBit(vec3<u32>(70546u, global1.c.x, global1.c.x) << (global1.c.xyw % vec3<u32>(32u)))) & firstLeadingBit(global1.c.xzw));
    var var_1 = Struct_5(Struct_1(59078i, _wgslsmith_div_i32(27265i >> (~global1.c.x % 32u), 0i), _wgslsmith_clamp_vec4_u32(firstLeadingBit(~vec4<u32>(1u, 4294967295u, 33798u, u_input.c.x)), abs(global1.c), vec4<u32>(var_0.x, min(var_0.x, 1u), 1u, _wgslsmith_mult_u32(4294967295u, u_input.a))), select(!global1.d, vec3<bool>(false, false, false), true)), Struct_1(~1i, ~(-45700i), max(global1.c, vec4<u32>(_wgslsmith_sub_u32(u_input.b, 1u), global1.c.x, ~u_input.a, _wgslsmith_sub_u32(u_input.a, 12461u))), vec3<bool>(arg_0.x, global1.d.x, 44741i <= (global0.x | global0.x))), -1562f, func_3(func_2(func_2(56098u & var_0.x, _wgslsmith_f_op_f32(767f * -207f)).a, _wgslsmith_f_op_f32(trunc(-1000f))), func_2(countOneBits(var_0.x), _wgslsmith_f_op_f32(max(func_3(Struct_2(0u, 205f), Struct_2(global1.c.x, -770f)).d, -757f)))).e.x);
    global0 = (_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(-2147483647i, -1i), arg_1 ^ vec2<i32>(u_input.d.x, u_input.e.x)), vec2<i32>(-2147483647i, _wgslsmith_mod_i32(global1.b, 1i))) << (global1.c.zw % vec2<u32>(32u))) << (_wgslsmith_div_vec2_u32(~global1.c.yz, ~vec2<u32>(var_1.b.c.x, func_2(u_input.c.x, var_1.c).a)) % vec2<u32>(32u));
    global1 = Struct_1(firstLeadingBit(global1.a), ~1i, select(var_1.b.c, select(var_1.a.c, ~(var_1.b.c >> (vec4<u32>(21731u, u_input.a, var_0.x, 1u) % vec4<u32>(32u))), var_1.b.d.x), vec4<bool>(var_1.a.d.x, all(select(arg_0, arg_0, vec4<bool>(true, false, global1.d.x, true))), all(select(arg_0.wx, global1.d.xx, true)), all(vec4<bool>(global1.d.x, true, false, var_1.b.d.x)))), select(select(select(arg_0.xzz, vec3<bool>(global1.d.x, true, var_1.a.d.x), vec3<bool>(true, false, var_1.a.d.x)), !select(vec3<bool>(arg_0.x, global1.d.x, arg_0.x), arg_0.xxy, global1.d), select(var_1.b.d, global1.d, any(vec2<bool>(true, true)))), select(vec3<bool>(!arg_0.x, true, true), select(!arg_0.xxx, vec3<bool>(global1.d.x, true, var_1.a.d.x), arg_0.xzx), _wgslsmith_dot_vec4_u32(var_1.b.c, vec4<u32>(4294967295u, var_1.b.c.x, u_input.a, global1.c.x)) >= 23298u), vec3<bool>((34757i & u_input.e.x) <= -arg_1.x, global1.d.x, arg_0.x)));
    let var_2 = var_1.a;
    return Struct_2(~(~(_wgslsmith_div_u32(1u, 12149u) | ~var_2.c.x)), 1102f);
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.e.x;
    global0 = u_input.d.zy;
    var var_1 = func_5(!select(!vec4<bool>(false, false, global1.d.x, global1.d.x), vec4<bool>(global1.d.x, all(vec4<bool>(false, true, global1.d.x, global1.d.x)), !global1.d.x, all(global1.d.yz)), true), ~func_4(func_3(Struct_2(118146u, -1033f), func_2(u_input.b, -985f)), u_input.a));
    var_1 = Struct_2(global1.c.x, _wgslsmith_f_op_f32(var_1.b + -446f));
    var var_2 = -390f;
    return Struct_1(-u_input.d.x, 1i, reverseBits(max(vec4<u32>(1u, func_3(Struct_2(u_input.b, var_1.b), Struct_2(var_1.a, -295f)).a.x, ~35741u, global1.c.x), abs(~vec4<u32>(var_1.a, var_1.a, var_1.a, global1.c.x)))), select(global1.d, global1.d, all(!global1.d.zx)));
}

fn func_6(arg_0: f32, arg_1: Struct_5, arg_2: f32, arg_3: i32) -> Struct_3 {
    global0 = ~u_input.d.yz;
    var var_0 = ~arg_3;
    let var_1 = max(arg_3, i32(-1i) * -29394i);
    let var_2 = 1i;
    let var_3 = Struct_1(1i, func_4(Struct_4(_wgslsmith_add_vec2_u32(abs(vec2<u32>(u_input.c.x, u_input.a)), ~vec2<u32>(4294967295u, 1u)), u_input.d, arg_1.a.d.zx, _wgslsmith_f_op_f32(step(2061f, _wgslsmith_f_op_f32(arg_2 * 740f))), vec2<f32>(_wgslsmith_f_op_f32(-1000f * 382f), -244f)), min(~(~u_input.c.x), global1.c.x)).x, vec4<u32>(0u, ~firstLeadingBit(u_input.c.x) & (_wgslsmith_sub_u32(48458u, u_input.c.x) & arg_1.b.c.x), ~24026u, ~(~(0u | global1.c.x))), select(func_1().d, func_1().d, !vec3<bool>(arg_0 != arg_0, func_3(Struct_2(arg_1.b.c.x, 1086f), Struct_2(global1.c.x, 1000f)).c.x, false)));
    return Struct_3(Struct_2(global1.c.x, arg_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -128f;
    let var_1 = func_6(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_0)), 166f)))), Struct_5(func_1(), func_1(), _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, -241f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2493f * _wgslsmith_div_f32(-1013f, 1453f)))), _wgslsmith_f_op_f32(exp2(var_0)), _wgslsmith_add_i32(0i, ~(-43229i)));
    let var_2 = !vec4<bool>(!(!(u_input.e.x >= 1i)), true, !global1.d.x, true);
    var var_3 = i32(-1i) * -global1.b;
    var_3 = 0i;
    global0 = abs(firstTrailingBit(select(-vec2<i32>(1i, 33936i), vec2<i32>(_wgslsmith_add_i32(-5256i, u_input.e.x), 0i), true && !global1.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer((-vec3<i32>(u_input.e.x, 6035i, global1.b) << (global1.c.xxy % vec3<u32>(32u))) | countOneBits(u_input.d), _wgslsmith_add_vec3_u32(select(vec3<u32>(82946u, 0u, var_1.a.a) | vec3<u32>(4294967295u, 21195u, u_input.a), u_input.c, var_2.x), ~vec3<u32>(~u_input.b, 101589u, global1.c.x)), global1.c, _wgslsmith_add_vec3_u32(abs(global1.c.wzw & countOneBits(vec3<u32>(0u, 0u, 22496u))), vec3<u32>(~u_input.a, var_1.a.a, ~1u)));
}

