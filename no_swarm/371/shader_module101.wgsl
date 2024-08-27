struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(55143u, 75647u, 24296u);

var<private> global1: Struct_1 = Struct_1(-1911f);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = _wgslsmith_div_f32(global1.a, global1.a);
    global0 = ~(u_input.b | u_input.b);
    return arg_0 >> (u_input.b.x % 32u);
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: vec2<i32>) -> vec3<i32> {
    global1 = Struct_1(global1.a);
    global0 = countOneBits(max(reverseBits(vec3<u32>(33214u, global0.x, 1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, global0.x, 36910u), u_input.b)) ^ min(_wgslsmith_mod_vec3_u32(~vec3<u32>(global0.x, 1u, 1u), ~vec3<u32>(71716u, global0.x, global0.x)), ~vec3<u32>(u_input.b.x, 4294967295u, global0.x)));
    let var_0 = Struct_2(_wgslsmith_div_u32(global0.x, _wgslsmith_sub_u32(_wgslsmith_add_u32(0u, u_input.b.x) << (abs(global0.x) % 32u), _wgslsmith_mod_u32(countOneBits(42778u), u_input.b.x))), Struct_1(-824f), Struct_1(_wgslsmith_f_op_f32(round(global1.a))), ~(vec4<u32>(u_input.b.x, global0.x, 38808u, global0.x) | ~min(vec4<u32>(u_input.b.x, global0.x, global0.x, u_input.b.x), vec4<u32>(global0.x, 4294967295u, global0.x, global0.x))));
    var var_1 = Struct_2(~(_wgslsmith_div_u32(global0.x, global0.x & 0u) & global0.x), Struct_1(global1.a), Struct_1(_wgslsmith_f_op_f32(floor(-260f))), vec4<u32>(0u, global0.x, ~(~abs(14778u)), 116052u));
    let var_2 = 1061f;
    return vec3<i32>(firstTrailingBit(countOneBits(2147483647i)) ^ (-arg_2.x | _wgslsmith_mult_i32(_wgslsmith_add_i32(25716i, arg_0), arg_0)), u_input.c.x >> (_wgslsmith_mod_u32(_wgslsmith_sub_u32(6471u, u_input.b.x) & ~var_0.d.x, 4294967295u) % 32u), abs(2147483647i));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> Struct_2 {
    var var_0 = Struct_2(0u >> ((func_2(~4294967295u) | global0.x) % 32u), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-292f - -714f)))), Struct_1(827f), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, select(firstLeadingBit(u_input.b.x), global0.x, false), 3496u, global0.x), vec4<u32>(reverseBits(22898u), _wgslsmith_add_u32(u_input.b.x, u_input.b.x) >> (18172u % 32u), u_input.b.x, ~1u)));
    var var_1 = any(vec2<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(625f)) + _wgslsmith_f_op_f32(-var_0.c.a)) < arg_1));
    let var_2 = Struct_2(~0u, var_0.c, Struct_1(global1.a), vec4<u32>(_wgslsmith_clamp_u32((global0.x ^ var_0.a) ^ 1u, countOneBits(~41164u), ~1u), ~var_0.d.x, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.b, var_0.d.xxw) | 640u, global0.x), ~var_0.a));
    var var_3 = _wgslsmith_div_vec3_i32(~u_input.c.yyx, reverseBits(min(func_3(_wgslsmith_mod_i32(-7366i, u_input.a), vec2<bool>(false, true), ~vec2<i32>(u_input.a, -2147483647i)), firstTrailingBit(-u_input.c.xyx))));
    var_3 = firstTrailingBit(vec3<i32>(var_3.x, -_wgslsmith_mod_i32(var_3.x, reverseBits(arg_0.x)), _wgslsmith_add_i32(-6792i, u_input.a)));
    return Struct_2(1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(global0.x), reverseBits(var_2.d.x)), ~vec2<u32>(u_input.b.x, var_0.d.x)) % 32u), var_0.b, var_2.b, var_0.d);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec2<i32>) -> Struct_2 {
    global1 = arg_0.b;
    var var_0 = arg_0.c;
    var var_1 = arg_0.b;
    let var_2 = select(u_input.b.zy, countOneBits(vec2<u32>(_wgslsmith_mult_u32(21239u, 60100u), countOneBits(4294967295u))), false) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(global0.x, arg_1.x), abs(u_input.b.xz)) % vec2<u32>(32u));
    var_1 = func_1(~_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.x, arg_2.x), vec2<i32>(u_input.a, -2085i)), vec2<i32>(-1i, 1i) ^ arg_2, ~u_input.c.wx), -arg_2), _wgslsmith_div_f32(1445f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a, var_1.a) - global1.a) - _wgslsmith_f_op_f32(floor(-184f))))).b;
    return Struct_2(1u, func_1(u_input.c.xw, _wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-478f + -664f)))).b, func_1(~u_input.c.wx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a)))).c, vec4<u32>(arg_1.x, ~func_1(u_input.c.wx, var_0.a).d.x << (~4294967295u % 32u), 40632u, ~reverseBits(_wgslsmith_sub_u32(global0.x, global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a;
    global1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.a))), global1.a));
    var var_1 = func_4(func_1(max(_wgslsmith_sub_vec2_i32(u_input.c.zz | u_input.c.zw, vec2<i32>(-1i, u_input.a)), u_input.c.zz), _wgslsmith_f_op_f32(1800f + global1.a)), abs(~_wgslsmith_mult_vec2_u32(firstLeadingBit(global0.xy), vec2<u32>(global0.x, u_input.b.x))), ~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.c.x) ^ _wgslsmith_mod_vec2_i32(u_input.c.zz, u_input.c.yw), ~u_input.c.yy | firstTrailingBit(u_input.c.ww)));
    var var_2 = i32(-1i) * -(~u_input.a);
    let var_3 = ~vec2<u32>(~(~_wgslsmith_dot_vec4_u32(var_1.d, var_1.d)), ~(~(~u_input.b.x)));
    let var_4 = func_1(countOneBits(firstLeadingBit(-min(u_input.c.yw, vec2<i32>(u_input.c.x, u_input.a)))), -341f);
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -310f));
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i), _wgslsmith_sub_vec4_i32(-abs(vec4<i32>(u_input.a, 1i, u_input.c.x, -2147483647i) >> (vec4<u32>(var_4.a, var_3.x, var_3.x, 15961u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-20253i, u_input.a, 38316i, u_input.a) ^ u_input.c, u_input.c, u_input.c << (var_1.d % vec4<u32>(32u))) << (firstTrailingBit(var_1.d) % vec4<u32>(32u))));
}

