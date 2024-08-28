struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 72882u;

var<private> global2: bool;

var<private> global3: vec2<i32> = vec2<i32>(2147483647i, 0i);

var<private> global4: vec3<u32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    return global0.a.x;
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_1(vec4<bool>(!(global4.x > 4294967295u), false, (func_3() & select(false, false, global0.a.x)) & false, true), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.b.x, -1000f, _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(3419f, -112f, _wgslsmith_f_op_f32(f32(-1f) * -331f))))));
    global1 = ~(global4.x << (0u % 32u));
    let var_1 = Struct_2(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(abs(global4.yz), ~vec2<u32>(global4.x, 66185u)) ^ global4.zz, countOneBits(_wgslsmith_div_vec2_u32(global4.xz, vec2<u32>(6617u, global4.x)) | ~global4.yz)), ~(~max(global4.x, 69478u)) << (abs(_wgslsmith_dot_vec2_u32(~global4.xz, vec2<u32>(17698u, global4.x))) % 32u), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(global4.x, 4294967295u, global4.x), vec3<u32>(1u, 4294967295u, 5563u)) << (firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(global4.x, 4294967295u, global4.x), vec3<u32>(82848u, 1u, 23743u))) % vec3<u32>(32u))), 22378u, reverseBits(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global4.x, 30785u, global4.x, global4.x)), ~(~vec4<u32>(35918u, 31840u, global4.x, global4.x)))));
    global4 = ~_wgslsmith_clamp_vec3_u32(var_1.c, var_1.c, ~var_1.c);
    var var_2 = var_0.a.yy;
    return Struct_1(vec4<bool>(!var_2.x | func_3(), true, true, any(select(select(global0.a.zy, var_0.a.zx, true), !vec2<bool>(var_0.a.x, true), false))), _wgslsmith_f_op_vec3_f32(var_0.b + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, -148f, var_0.b.x) + vec3<f32>(508f, 1444f, global0.b.x))))));
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> vec4<u32> {
    let var_0 = Struct_2(vec2<u32>(~0u, ~reverseBits(~4294967295u)), ~countOneBits(4294967295u) & ~global4.x, arg_0.b.zwz, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(81143u, global4.x, 1u) & arg_0.b.wzz), arg_0.b.zzx), ~max(vec3<u32>(26756u, arg_1, global4.x), arg_0.b.xzy << (vec3<u32>(arg_1, global4.x, arg_0.b.x) % vec3<u32>(32u)))), _wgslsmith_dot_vec2_u32(select(firstTrailingBit(~vec2<u32>(arg_0.b.x, arg_1)), countOneBits(~global4.xy), func_2(min(-12916i, 15656i)).a.x), reverseBits(vec2<u32>(_wgslsmith_mult_u32(arg_0.a, arg_0.a), 1u))));
    var var_1 = arg_0.b.yy;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1758f)) + _wgslsmith_f_op_f32(-1377f + func_2((u_input.a.x ^ -14036i) | 75448i).b.x));
    let var_3 = u_input.a;
    let var_4 = _wgslsmith_f_op_f32(1068f * 638f);
    return ~vec4<u32>(var_1.x, 0u, 4294967295u, 4294967295u);
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_3(min(~max(~arg_1, 1u), 1u), ~func_4(Struct_3(0u, ~vec4<u32>(31484u, 240u, 77940u, 4294967295u), func_2(u_input.a.x), _wgslsmith_f_op_vec3_f32(-global0.b), global0.b.x), reverseBits(min(global4.x, 3848u))), func_2(firstLeadingBit(-(arg_0.x << (arg_1 % 32u)))), global0.b, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-582f, global0.b.x), 835f)));
    let var_1 = abs(vec2<i32>(-(~_wgslsmith_add_i32(u_input.a.x, 20718i)), abs(-2147483647i)));
    global1 = global4.x;
    let var_2 = !vec3<bool>(!(!global0.a.x), var_0.c.a.x, func_3());
    global2 = any(var_0.c.a.xx);
    return Struct_1(vec4<bool>(true, true, !all(!vec4<bool>(var_2.x, true, var_0.c.a.x, true)), true), var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -513f;
    global1 = global4.x;
    let var_1 = func_1(vec4<i32>(u_input.a.x, u_input.a.x, 32583i, 0i), 66096u);
    var var_2 = !select(vec4<bool>(false, var_1.a.x, true, false), select(var_1.a, !(!global0.a), global0.a), true & any(!vec3<bool>(false, global0.a.x, global0.a.x)));
    global1 = firstTrailingBit(global4.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(~global3.x, u_input.a.x), min(~(~1u), 4294967295u), select(reverseBits(_wgslsmith_clamp_i32(~u_input.a.x, 1i, -16157i << (global4.x % 32u))), -(~1i), (abs(8944u) <= global4.x) && !any(var_2.ywz)), vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, global3.x, 1i, global3.x), -vec4<i32>(global3.x, global3.x, -1i, u_input.a.x)), -45904i ^ _wgslsmith_mod_i32(global3.x, global3.x >> (global4.x % 32u)), max(abs(-global3.x), global3.x), ~u_input.a.x));
}

