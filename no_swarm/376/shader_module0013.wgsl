struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: u32,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_2,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4) -> vec4<bool> {
    var var_0 = arg_1.b;
    var var_1 = true;
    global0 = u_input.a;
    var_0 = arg_1.b;
    let var_2 = arg_0.c;
    return vec4<bool>(arg_0.a & any(vec2<bool>(!arg_0.a, global1.x)), all(select(select(!vec2<bool>(arg_1.a, global1.x), select(vec2<bool>(false, global1.x), vec2<bool>(arg_0.a, arg_1.a), vec2<bool>(global1.x, true)), select(vec2<bool>(arg_0.a, false), vec2<bool>(arg_0.a, true), global1.x)), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, global1.x)), select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(false, arg_0.a), vec2<bool>(arg_0.a, true)), true), false)), !all(select(!vec3<bool>(arg_1.a, true, arg_1.a), vec3<bool>(true, true, true), true)), arg_0.a || true);
}

fn func_2(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: f32) -> bool {
    global1 = arg_1.yx;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1179f + -775f) + -690f);
    global0 = ~u_input.a;
    global0 = -vec3<i32>(arg_0.b.a.x, -29824i, 28114i);
    var var_1 = func_3(Struct_4(!arg_1.x, Struct_3(vec2<i32>(u_input.a.x, 3507i) >> ((vec2<u32>(25383u, 1u) << (arg_0.d.a.zy % vec2<u32>(32u))) % vec2<u32>(32u)), arg_0.b, 1u, arg_0.b.b, abs(arg_0.e)), Struct_2(vec2<i32>(-1i, -1i) >> (arg_0.d.a.yx % vec2<u32>(32u)), Struct_1(vec3<u32>(arg_0.b.b.a.x, 0u, 22059u), _wgslsmith_f_op_vec3_f32(-arg_0.b.b.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1446f, 901f, var_0)), arg_0.b.b.b)))), Struct_4(!arg_1.x, arg_0, Struct_2(abs(vec2<i32>(u_input.a.x, global0.x) | vec2<i32>(-1i, 1i)), arg_0.b.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1757f, 385f, -936f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1213f, 1194f)))));
    return !global1.x;
}

fn func_1() -> bool {
    var var_0 = firstLeadingBit(vec2<u32>(abs(select(1u, _wgslsmith_mult_u32(4294967295u, 0u), func_2(Struct_3(vec2<i32>(1i, -46516i), Struct_2(u_input.a.zy, Struct_1(vec3<u32>(1u, 47094u, 34720u), vec3<f32>(689f, 1535f, -599f))), 76325u, Struct_1(vec3<u32>(1u, 77938u, 14743u), vec3<f32>(2796f, -1715f, -1069f)), vec2<i32>(53250i, global0.x)), vec3<bool>(global1.x, false, global1.x), 328f))), 0u));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = reverseBits(vec3<u32>(1u, max(~(~0u), 116640u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(38782u, min(0u, 21004u), 0u, 1u))));
    let var_2 = -1i;
    global1 = func_3(Struct_4(false, Struct_3(~vec2<i32>(2147483647i, 0i), Struct_2(_wgslsmith_add_vec2_i32(u_input.a.yx, vec2<i32>(global0.x, global0.x)), Struct_1(var_1, vec3<f32>(-162f, -1000f, -346f))), abs(_wgslsmith_sub_u32(var_1.x, 0u)), Struct_1(vec3<u32>(var_1.x, 52853u, 4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-427f, 3536f, 503f) + vec3<f32>(1465f, 199f, 958f))), vec2<i32>(1184i, firstLeadingBit(-31021i))), Struct_2(~(u_input.a.zy >> (var_1.zz % vec2<u32>(32u))), Struct_1(vec3<u32>(4294967295u, var_1.x, 1917u), vec3<f32>(274f, -2139f, 314f))), vec3<f32>(580f, _wgslsmith_f_op_f32(-248f + _wgslsmith_f_op_f32(max(1399f, 1628f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-451f * -1271f), _wgslsmith_f_op_f32(floor(-1059f)), true)))), Struct_4(all(vec4<bool>(true, global1.x, global1.x, global1.x)), Struct_3(-u_input.a.zx, Struct_2(-global0.yy, Struct_1(vec3<u32>(var_1.x, 1u, 0u), vec3<f32>(-290f, 550f, 1619f))), 0u, Struct_1(min(vec3<u32>(1u, var_1.x, var_1.x), vec3<u32>(var_1.x, 0u, 22208u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1996f, -1544f, 448f))), vec2<i32>(i32(-1i) * -38353i, u_input.a.x)), Struct_2(~global0.xx, Struct_1(min(vec3<u32>(var_1.x, var_1.x, 4294967295u), var_1), _wgslsmith_f_op_vec3_f32(vec3<f32>(1470f, -185f, -504f) - vec3<f32>(-410f, -261f, -607f)))), vec3<f32>(-1000f, -2609f, 1150f))).xx;
    var var_3 = (vec4<u32>(21444u, ~var_1.x, _wgslsmith_mult_u32(4294967295u, _wgslsmith_mod_u32(1u, var_1.x)), abs(4294967295u)) ^ _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, var_1.x, 57265u), vec4<u32>(var_1.x, var_1.x, 39683u, var_1.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, var_1.x, 69503u, 59189u), vec4<u32>(29789u, 50239u, 21685u, 20912u), vec4<u32>(4294967295u, var_1.x, 5840u, 24832u))), firstLeadingBit(reverseBits(vec4<u32>(4294967295u, 1u, 41410u, var_1.x))))) | firstTrailingBit(_wgslsmith_div_vec4_u32(~(vec4<u32>(var_1.x, var_1.x, var_1.x, 0u) & vec4<u32>(5661u, 10161u, var_1.x, var_1.x)), firstTrailingBit(vec4<u32>(2305u, 1u, var_1.x, var_1.x))));
    let var_4 = Struct_1(vec3<u32>(~_wgslsmith_add_u32(var_1.x, var_1.x) & _wgslsmith_dot_vec3_u32(var_3.yxy, abs(vec3<u32>(var_3.x, var_1.x, var_1.x))), var_3.x, 20627u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-541f, -1790f, 459f))))));
    let var_5 = Struct_2(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.a.x, -44713i), vec2<i32>(u_input.a.x, global0.x)), ~(u_input.a.zx << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)))) ^ vec2<i32>(firstTrailingBit(countOneBits(18643i)), _wgslsmith_clamp_i32(1i, firstTrailingBit(global0.x), -1i ^ u_input.a.x)), Struct_1(var_4.a, _wgslsmith_div_vec3_f32(vec3<f32>(-275f, 2941f, _wgslsmith_f_op_f32(select(var_4.b.x, var_4.b.x, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_4.b.x, -1000f, 793f), var_4.b)))));
    var var_6 = vec3<bool>(global1.x, false, _wgslsmith_f_op_f32(-var_5.b.b.x) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1000f, var_5.b.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.b.x) + _wgslsmith_f_op_f32(sign(var_4.b.x)))));
    var_6 = select(func_3(Struct_4(all(select(var_6.xz, vec2<bool>(false, var_6.x), var_6.x)), Struct_3(global0.zz, var_5, firstLeadingBit(var_4.a.x), Struct_1(var_5.b.a, vec3<f32>(var_4.b.x, var_5.b.b.x, -1925f)), global0.xz >> (var_4.a.yy % vec2<u32>(32u))), var_5, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_5.b.b - var_5.b.b) - _wgslsmith_f_op_vec3_f32(-var_4.b))), Struct_4(any(vec2<bool>(true, true)), Struct_3(u_input.a.xx, Struct_2(global0.yy, Struct_1(var_5.b.a, vec3<f32>(var_4.b.x, 1252f, var_4.b.x))), var_4.a.x, Struct_1(vec3<u32>(33518u, 0u, var_4.a.x), vec3<f32>(var_4.b.x, 157f, 1000f)), _wgslsmith_add_vec2_i32(var_5.a, vec2<i32>(var_2, u_input.a.x))), Struct_2(var_5.a, var_5.b), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, var_5.b.b.x, var_5.b.b.x))))).yxx, vec3<bool>(var_6.x | false, any(vec4<bool>(false, var_6.x, global1.x, var_6.x)) || true, true), global1.x && !all(vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, vec4<i32>(-2147483647i, _wgslsmith_div_i32(countOneBits(-16055i), firstLeadingBit(13453i)), var_2, i32(-1i) * -58227i), var_4.b.x, 0i);
}

