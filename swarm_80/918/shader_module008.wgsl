struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: f32;

var<private> global2: Struct_3 = Struct_3(vec3<i32>(i32(-2147483648), 17505i, -10098i), 4294967295u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: vec3<bool>, arg_3: bool) -> vec4<bool> {
    var var_0 = 39522u;
    let var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(min(global2.b, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.b, 52793u, u_input.d, global2.b) | vec4<u32>(0u, global2.b, 0u, u_input.d), _wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(global2.b, 0u, 110307u, 4294967295u), vec4<u32>(4294967295u, 51000u, 9163u, global2.b)))), ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(global2.b, global2.b, u_input.a.x), u_input.b.zwz, arg_2), firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, 29646u))), u_input.d), abs(~u_input.b.zyy));
    var var_2 = 0i;
    var var_3 = arg_0;
    var_0 = _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, (_wgslsmith_mod_u32(1u, global2.b) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global2.b, u_input.a.x, 4294967295u, global2.b), u_input.b) % 32u)) ^ 0u), global2.b << (1u % 32u));
    return !select(select(!select(vec4<bool>(arg_3, false, arg_3, arg_3), vec4<bool>(false, arg_3, true, arg_3), vec4<bool>(true, arg_2.x, false, arg_2.x)), vec4<bool>(arg_1, false, false, true), !select(vec4<bool>(arg_1, arg_2.x, arg_3, arg_1), vec4<bool>(arg_1, arg_1, true, true), arg_2.x)), select(vec4<bool>(!arg_3, false, arg_2.x, true), select(!vec4<bool>(true, arg_1, arg_3, arg_1), !vec4<bool>(true, arg_2.x, arg_3, true), !vec4<bool>(false, false, arg_2.x, arg_3)), _wgslsmith_div_f32(var_3.b, var_3.b) == arg_0.b), vec4<bool>(firstLeadingBit(17133i) > _wgslsmith_mult_i32(-9541i, arg_0.a.x), arg_1, arg_3, true));
}

fn func_2() -> f32 {
    var var_0 = Struct_5(-33437i);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1048f, -797f, _wgslsmith_f_op_f32(min(-150f, -231f))))));
    let var_2 = vec4<bool>(all(!select(func_3(Struct_4(vec4<i32>(1i, 2147483647i, global2.a.x, u_input.c.x), var_1.x), false, vec3<bool>(false, true, true), false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), true), func_3(Struct_4(vec4<i32>(-2147483647i, global2.a.x, -1i, var_0.a), -877f), false, vec3<bool>(false, false, true), true))), !(_wgslsmith_f_op_f32(trunc(var_1.x)) >= _wgslsmith_f_op_f32(-var_1.x)), ~2147483647i == -_wgslsmith_sub_i32(14510i & var_0.a, select(364i, 0i, false)), !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_3(Struct_4(vec4<i32>(30101i, var_0.a, var_0.a, global2.a.x), var_1.x), false, vec3<bool>(true, false, false), true))));
    var var_3 = u_input.c;
    let var_4 = Struct_3(u_input.c, ((global2.b >> (firstTrailingBit(13722u) % 32u)) | select(global2.b, _wgslsmith_mult_u32(4294967295u, 1u), -1189f <= var_1.x)) & _wgslsmith_sub_u32(1718u, max(u_input.d, firstLeadingBit(global2.b))));
    return _wgslsmith_f_op_f32(ceil(var_1.x));
}

fn func_1(arg_0: Struct_5) -> Struct_1 {
    global1 = _wgslsmith_div_f32(-280f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(371f - -828f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), -484f)))));
    var var_0 = ~max(select(vec3<u32>(_wgslsmith_sub_u32(4294967295u, global2.b), ~global2.b, 1u), ~(u_input.b.yzw & vec3<u32>(0u, u_input.d, u_input.a.x)), vec3<bool>(select(true, true, false), true, true)), u_input.b.xzy);
    var var_1 = true;
    var_0 = vec3<u32>(32967u, u_input.d, global2.b);
    var_0 = ~_wgslsmith_mod_vec3_u32(~abs(~u_input.b.wyw), _wgslsmith_clamp_vec3_u32(firstLeadingBit(u_input.b.yzz) ^ ~vec3<u32>(global2.b, 57854u, u_input.b.x), max(_wgslsmith_mult_vec3_u32(u_input.b.zyy, u_input.b.ywz), max(vec3<u32>(1u, global2.b, 4294967295u), u_input.b.xzz)), u_input.b.xxy));
    return Struct_1(firstTrailingBit(countOneBits(abs(vec4<i32>(-14193i, 0i, 0i, arg_0.a)) << ((vec4<u32>(var_0.x, var_0.x, 1u, global2.b) | vec4<u32>(var_0.x, var_0.x, u_input.d, 54379u)) % vec4<u32>(32u)))), abs(u_input.b));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3) -> Struct_5 {
    let var_0 = !(u_input.c.x > max(reverseBits(-11743i), ~(i32(-1i) * -39341i)));
    let var_1 = arg_1.a;
    global1 = 1239f;
    var var_2 = false;
    let var_3 = select(!vec2<bool>(all(arg_1.c.xwz), !(!arg_0)), arg_1.c.zz, vec2<bool>(false, arg_0));
    return Struct_5(u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(false, Struct_2(func_1(Struct_5(-global2.a.x)), _wgslsmith_div_i32(u_input.c.x, _wgslsmith_add_i32(i32(-1i) * -46378i, global2.a.x)), select(vec4<bool>(func_3(Struct_4(vec4<i32>(global2.a.x, global2.a.x, 9885i, global2.a.x), -620f), true, vec3<bool>(true, false, true), true).x, any(vec2<bool>(true, true)), 0i != u_input.c.x, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, global2.b == 55364u, true, true))), Struct_3(global2.a, ~(~global2.b)));
    let var_1 = abs(2147483647i);
    let var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(select(-1i, -(~global2.a.x), true), ~func_1(Struct_5(-2147483647i)).a.x, _wgslsmith_sub_i32(u_input.c.x, _wgslsmith_mult_i32(var_0.a ^ 17965i, -var_0.a)), -1i), -(~firstLeadingBit(vec4<i32>(-22190i, var_1, 44026i, var_1) ^ vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, 1i))), vec4<i32>(var_1, global2.a.x, -2147483647i, 2147483647i));
    let var_3 = u_input.b.yxw;
    var var_4 = select(select(vec2<bool>(true, true), func_3(Struct_4(_wgslsmith_mult_vec4_i32(vec4<i32>(-31072i, -1i, var_0.a, -1i), vec4<i32>(u_input.c.x, var_0.a, 0i, -13667i)), 219f), any(vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true).wy, vec2<bool>(true, true)), select(select(func_3(Struct_4(var_2, -1000f), true, select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), true).xx, vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)), true)), select(select(func_3(Struct_4(vec4<i32>(global2.a.x, 62198i, global2.a.x, 2147483647i), 251f), false, vec3<bool>(true, false, true), true).wz, select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), true), vec2<bool>(true, true), func_3(Struct_4(var_2, -1299f), true, select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), true).zy), !func_3(Struct_4(var_2, -1332f), true, vec3<bool>(true, true, true), var_3.x >= 1u).x), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_1 | func_4(!var_4.x, Struct_2(Struct_1(vec4<i32>(0i, var_2.x, 0i, -49882i), u_input.b), abs(u_input.c.x), select(vec4<bool>(true, var_4.x, var_4.x, true), vec4<bool>(var_4.x, var_4.x, var_4.x, var_4.x), vec4<bool>(var_4.x, false, false, true))), Struct_3(vec3<i32>(var_2.x, global2.a.x, global2.a.x), _wgslsmith_mod_u32(1u, 1u))).a);
}

