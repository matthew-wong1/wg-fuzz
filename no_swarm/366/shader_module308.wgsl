struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 27>;

var<private> global1: Struct_3 = Struct_3(Struct_1(1u, false), vec2<f32>(-1173f, 864f), vec3<f32>(-1483f, 676f, -392f));

var<private> global2: array<f32, 25> = array<f32, 25>(-271f, 640f, -176f, 920f, -660f, -1793f, -1055f, 325f, 138f, -667f, 1182f, 1583f, -1421f, 787f, 409f, 658f, -1000f, -1057f, -700f, 1143f, 605f, -2528f, -862f, 1352f, -515f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_4, arg_3: vec3<i32>) -> Struct_3 {
    global0 = array<Struct_4, 27>();
    return Struct_3(arg_2.b.a, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(global1.c.yz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(311f, arg_2.a)))))))), vec3<f32>(-1675f, _wgslsmith_f_op_f32(1408f + 646f), _wgslsmith_f_op_f32(-global1.b.x)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_4) -> Struct_3 {
    let var_0 = 182f;
    global2 = array<f32, 25>();
    global0 = array<Struct_4, 27>();
    let var_1 = -u_input.a;
    return arg_1;
}

fn func_3() -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, global1.a.a), ~vec4<u32>(global1.a.a, 34804u, 1u, 41408u))), u_input.b, ~64300u, 4294967295u), vec4<u32>(1u, _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(global1.a.a, 0u), _wgslsmith_sub_u32(abs(4294967295u), 1u), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(0u, 8531u)), 37503u)), countOneBits(_wgslsmith_mod_u32(_wgslsmith_div_u32(50701u, u_input.b), _wgslsmith_mod_u32(global1.a.a, global1.a.a))), firstLeadingBit(_wgslsmith_mod_u32(56444u, u_input.b)) ^ firstLeadingBit(~u_input.b))), 25u)];
    global0 = array<Struct_4, 27>();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -606f);
    var var_2 = firstTrailingBit(min(select((vec4<u32>(global1.a.a, 1u, 1u, 21086u) >> (vec4<u32>(global1.a.a, 0u, 3106u, u_input.b) % vec4<u32>(32u))) | _wgslsmith_mult_vec4_u32(vec4<u32>(global1.a.a, 23940u, 4294967295u, 5870u), vec4<u32>(u_input.b, 1u, 0u, u_input.b)), ~min(vec4<u32>(1u, u_input.b, u_input.b, global1.a.a), vec4<u32>(4294967295u, 0u, 4294967295u, global1.a.a)), true | global1.a.b), ~vec4<u32>(1u, 1u, 1u, 1u) >> (~_wgslsmith_clamp_vec4_u32(vec4<u32>(65418u, global1.a.a, global1.a.a, 0u), vec4<u32>(global1.a.a, u_input.b, 83791u, global1.a.a), vec4<u32>(46030u, u_input.b, global1.a.a, 13895u)) % vec4<u32>(32u))));
    let var_3 = countOneBits(~_wgslsmith_add_u32(3154u, 1u));
    return _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(32222u, 25u)]);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<f32>) -> vec2<u32> {
    var var_0 = func_2(reverseBits(~vec3<u32>(33066u << (u_input.b % 32u), 4294967295u, _wgslsmith_add_u32(u_input.b, u_input.b))), Struct_3(Struct_1(~global1.a.a, any(vec3<bool>(global1.a.b, false, global1.a.b))), _wgslsmith_f_op_vec2_f32(select(arg_1.xy, arg_1.yx, any(select(vec2<bool>(true, false), vec2<bool>(global1.a.b, global1.a.b), vec2<bool>(true, global1.a.b))))), _wgslsmith_f_op_vec3_f32(trunc(arg_1))), global0[_wgslsmith_index_u32(~4294967295u | abs(global1.a.a), 27u)]).b.x;
    var var_1 = u_input.a.xzx;
    var var_2 = Struct_5(_wgslsmith_mod_vec4_i32(max(select(u_input.a, _wgslsmith_div_vec4_i32(vec4<i32>(-40853i, -1i, var_1.x, var_1.x), u_input.a), vec4<bool>(false, global1.a.b, global1.a.b, true)), ~vec4<i32>(u_input.a.x, 44949i, 7669i, var_1.x) ^ select(vec4<i32>(var_1.x, var_1.x, 2147483647i, var_1.x), u_input.a, false)), (_wgslsmith_add_vec4_i32(vec4<i32>(1i, var_1.x, u_input.c, u_input.a.x), u_input.a) << ((vec4<u32>(1u, 644u, global1.a.a, 24484u) ^ vec4<u32>(1u, u_input.b, 1u, 4294967295u)) % vec4<u32>(32u))) << (~vec4<u32>(u_input.b, global1.a.a, global1.a.a, 0u) % vec4<u32>(32u))), -1000f, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b) << (vec2<u32>(_wgslsmith_clamp_u32(5136u, 4294967295u, global1.a.a), firstLeadingBit(global1.a.a)) % vec2<u32>(32u)), ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 75327u), vec2<u32>(1u, global1.a.a), vec2<u32>(4294967295u, 120532u)))));
    var var_3 = vec2<bool>(false, false);
    let var_4 = !(global1.a.b & (firstLeadingBit(var_2.c) == _wgslsmith_mod_u32(~4294967295u, _wgslsmith_mult_u32(global1.a.a, 0u))));
    return ~firstLeadingBit(vec2<u32>(~1u, u_input.b ^ firstLeadingBit(global1.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_2(~_wgslsmith_clamp_vec3_u32(vec3<u32>(~0u, ~global1.a.a, global1.a.a), _wgslsmith_mod_vec3_u32(vec3<u32>(4063u, 11734u, 1u), vec3<u32>(global1.a.a, u_input.b, global1.a.a) ^ vec3<u32>(1u, 0u, 0u)), vec3<u32>(abs(global1.a.a), _wgslsmith_clamp_u32(global1.a.a, global1.a.a, global1.a.a), ~0u)), func_1(global1.c.x, true, Struct_4(-566f, Struct_3(global1.a, _wgslsmith_f_op_vec2_f32(global1.c.xz * global1.b), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(810f, -821f, global1.c.x))))), ~reverseBits(firstTrailingBit(u_input.a.xzz))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~1u), _wgslsmith_add_u32(u_input.b, 1u)), 27u)]);
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-564f, global1.b.x, _wgslsmith_f_op_f32(func_3()), func_1(-672f, false, Struct_4(1613f, Struct_3(global1.a, global1.c.zz, global1.c)), vec3<i32>(14910i, -1i, -21972i)).c.x))), global1.c);
    var var_1 = func_2(~select(~abs(vec3<u32>(29365u, 1u, u_input.b)), reverseBits(~vec3<u32>(22635u, var_0.x, 0u)), global1.a.b), Struct_3(func_1(_wgslsmith_f_op_f32(sign(-401f)), false, global0[_wgslsmith_index_u32(func_2(abs(vec3<u32>(u_input.b, 100361u, 4294967295u)), Struct_3(Struct_1(81957u, false), global1.c.zz, global1.c), Struct_4(975f, Struct_3(Struct_1(global1.a.a, true), vec2<f32>(-2215f, global2[_wgslsmith_index_u32(15144u, 25u)]), vec3<f32>(global2[_wgslsmith_index_u32(global1.a.a, 25u)], -1941f, 665f)))).a.a, 27u)], countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(62032i, -54012i, 46517i), vec3<i32>(u_input.a.x, -14410i, u_input.a.x)))).a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.x, global2[_wgslsmith_index_u32(global1.a.a, 25u)])), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global1.c - _wgslsmith_f_op_vec3_f32(vec3<f32>(-2809f, -524f, 1505f) + vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 25u)], -318f, 1095f)))))), Struct_4(-745f, func_2(~countOneBits(vec3<u32>(39388u, 71792u, global1.a.a)), func_2(vec3<u32>(global1.a.a, 1u, 63822u), Struct_3(Struct_1(1u, false), global1.b, global1.c), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 23867u, 27293u), vec4<u32>(32638u, 130268u, var_0.x, 1u)), 27u)]), Struct_4(_wgslsmith_f_op_f32(304f * 410f), func_1(global2[_wgslsmith_index_u32(global1.a.a, 25u)], true, Struct_4(global2[_wgslsmith_index_u32(15163u, 25u)], Struct_3(global1.a, global1.c.yy, global1.c)), vec3<i32>(52165i, u_input.c, u_input.a.x))))));
    var var_2 = var_0;
    let var_3 = true;
    var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(0u, 25u)])) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-640f))))), true, global0[_wgslsmith_index_u32(reverseBits(11600u), 27u)], u_input.a.zxy);
    let var_4 = Struct_5(u_input.a, global2[_wgslsmith_index_u32(var_0.x, 25u)], ~countOneBits(~(~var_1.a.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(global1.b.x, _wgslsmith_f_op_f32(round(var_4.b)))), u_input.c >> (~var_1.a.a % 32u), var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x - var_4.b) * _wgslsmith_f_op_f32(global1.c.x - -272f)) * global2[_wgslsmith_index_u32(var_1.a.a, 25u)]));
}

