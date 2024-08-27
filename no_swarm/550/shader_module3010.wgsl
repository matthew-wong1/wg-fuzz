struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> u32 {
    let var_0 = abs(-select(vec3<i32>(-14811i, -42835i, -9084i) << ((vec3<u32>(22661u, u_input.c.x, u_input.c.x) >> (u_input.c.xyw % vec3<u32>(32u))) % vec3<u32>(32u)), -abs(vec3<i32>(u_input.a, u_input.b, -38605i)), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false))));
    var var_1 = 1409f;
    var_1 = _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(699f * 736f) + -191f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-449f, _wgslsmith_f_op_f32(1220f + 1371f), any(vec3<bool>(false, true, true))))))));
    var var_2 = Struct_2(var_0, reverseBits(~var_0.yz));
    let var_3 = -1000f;
    return _wgslsmith_add_u32(u_input.c.x, u_input.c.x);
}

fn func_2() -> vec3<i32> {
    let var_0 = u_input.c.x >> (_wgslsmith_dot_vec4_u32(abs(~(u_input.c ^ vec4<u32>(u_input.c.x, u_input.c.x, 31309u, u_input.c.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, func_3(), min(u_input.c.x, u_input.c.x), 2679u), ~vec4<u32>(68056u, 1u, u_input.c.x, 1u) | u_input.c)) % 32u);
    let var_1 = u_input.b;
    var var_2 = true | !(!all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))));
    let var_3 = _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(max(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, var_1, u_input.a), vec3<i32>(62387i, -18601i, -1i)), abs(vec3<i32>(var_1, -14400i, var_1))), firstLeadingBit(vec3<i32>(u_input.a, u_input.b, -1i) << (u_input.c.zyy % vec3<u32>(32u))), ~vec3<i32>(var_1, u_input.b, u_input.a)), _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(-1i, u_input.b, var_1)), vec3<i32>(var_1, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1, 22526i, -34307i), vec3<i32>(var_1, -1i, var_1)), u_input.b)), min(_wgslsmith_div_vec3_i32(vec3<i32>(0i, -24455i, u_input.b), ~vec3<i32>(11445i, u_input.b, var_1)), reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-22604i, 33494i, 2147483647i), vec3<i32>(var_1, var_1, -37708i))))), -vec3<i32>(-2147483647i, 0i, _wgslsmith_mod_i32(-41784i, u_input.b)) | vec3<i32>(1i, 0i, reverseBits(25021i)));
    var var_4 = Struct_2(vec3<i32>(abs(var_3.x), _wgslsmith_div_i32(~u_input.a | _wgslsmith_add_i32(11669i, var_3.x), -31768i), abs(_wgslsmith_add_i32(2147483647i, ~var_3.x))), _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.a, var_1), _wgslsmith_div_vec2_i32(var_3.yx, var_3.yx >> (vec2<u32>(var_0, u_input.c.x) % vec2<u32>(32u)))));
    return var_4.a;
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec3<i32>) -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(arg_0.b.x, 1i, 37092i, arg_2.x)), ~vec4<i32>(-1i, -1i, arg_0.d.a.x, 1772i), ~vec4<i32>(12257i, u_input.b, 5059i, arg_0.d.a.x)), -vec4<i32>(arg_2.x, -19804i, -1i, 2147483647i) << (~u_input.c % vec4<u32>(32u))) >> (_wgslsmith_add_u32(4294967295u, arg_1) % 32u), 4294967295u, ~(~_wgslsmith_sub_u32(arg_1, 0u)) | 4294967295u);
    let var_1 = arg_0.d;
    return _wgslsmith_mod_vec2_i32(vec2<i32>(min(firstTrailingBit(-u_input.b), 14719i), -25784i), arg_2.zy);
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: vec3<i32>) -> Struct_2 {
    return Struct_2(_wgslsmith_mult_vec3_i32(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(34479i, arg_2.x, arg_0.b.x) | vec3<i32>(494i, 0i, 0i), vec3<i32>(-10273i, 6876i, u_input.b) << (vec3<u32>(47451u, u_input.c.x, 53004u) % vec3<u32>(32u)))), -vec3<i32>(0i, i32(-1i) * -1i, _wgslsmith_add_i32(u_input.a, u_input.b))), func_2().xz);
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: u32) -> bool {
    var var_0 = Struct_4(func_5(Struct_3(vec3<f32>(1f, 1f, 1f), func_4(Struct_3(vec3<f32>(482f, -274f, -1679f), vec2<i32>(u_input.b, arg_0), 97275u, Struct_2(vec3<i32>(3794i, 2147483647i, -31407i), vec2<i32>(-48682i, 0i))), _wgslsmith_dot_vec3_u32(u_input.c.zww, u_input.c.xwy), func_2()), ~0u, Struct_2(vec3<i32>(u_input.b, 6647i, -13289i), vec2<i32>(-26518i, u_input.b))), arg_1.x, select(vec3<i32>(abs(66477i), ~(-43253i), ~25686i), vec3<i32>(arg_0, _wgslsmith_mod_i32(-22357i, 28048i), _wgslsmith_div_i32(43438i, -1i)), arg_1.x)), arg_1.x);
    var var_1 = Struct_1(-45753i, _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_sub_u32(4294967295u, arg_2), ~u_input.c.x), vec2<u32>(firstTrailingBit(~arg_2), ~(~arg_2))), ~11865u);
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-517f, 199f, 1070f))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-491f, 321f, -314f)))))))));
    var_1 = Struct_1(countOneBits(var_0.a.a.x | (reverseBits(0i) << (1u % 32u))), 2056u, abs(12715u));
    let var_3 = vec3<i32>(var_1.a, u_input.a | var_0.a.b.x, ~60901i ^ (-u_input.a >> (16483u % 32u)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(vec2<bool>(true, true), vec2<bool>(func_1(u_input.b, vec2<bool>(false, false), 4294967295u), true), true));
    var var_1 = u_input.c.wzy;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -309f);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_div_u32(14617u, 94205u)), ~abs(vec2<u32>(0u, _wgslsmith_mod_u32(u_input.c.x, u_input.c.x))), -4545i, ~abs(~(~vec2<i32>(45767i, 1i))), ~abs(~vec3<i32>(-18444i, u_input.a, u_input.a)) ^ (vec3<i32>(_wgslsmith_add_i32(-13452i, 0i), i32(-1i) * -19775i, 2582i) | vec3<i32>(i32(-1i) * -1i, firstLeadingBit(u_input.a), _wgslsmith_mult_i32(-2147483647i, u_input.b))));
}

