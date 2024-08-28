struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9>;

var<private> global1: u32;

var<private> global2: vec2<u32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = -_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(12872i, u_input.b), _wgslsmith_mult_i32(u_input.b, 5144i)), u_input.b, u_input.b, 1i), min(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b, -36781i, -1i, u_input.b)), firstLeadingBit(vec4<i32>(-10678i, 1i, u_input.b, 1i)), ~vec4<i32>(u_input.b, u_input.b, 4021i, u_input.b)), vec4<i32>(-1i) * -vec4<i32>(-1i, 160i, 1i, u_input.b)));
    let var_1 = -2147483647i >> (_wgslsmith_add_u32(u_input.d, 0u) % 32u);
    var var_2 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(37111u, _wgslsmith_dot_vec3_u32(vec3<u32>(87120u, 63991u, global2.x), u_input.c) & _wgslsmith_dot_vec3_u32(u_input.c, u_input.c)), u_input.c.yz);
    var var_3 = _wgslsmith_div_vec2_u32(select(~u_input.c.yy, u_input.c.zz, any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false)) != any(vec2<bool>(true, true))), u_input.c.xy | u_input.c.yz);
    global1 = max(var_3.x, ~(~global2.x));
    return -1i;
}

fn func_2(arg_0: vec2<f32>) -> vec3<u32> {
    var var_0 = vec2<i32>(u_input.b, abs(_wgslsmith_clamp_i32(-24787i, u_input.b, 1i)));
    var var_1 = global2.x;
    var var_2 = arg_0.x;
    var var_3 = vec4<i32>(-67494i, i32(-1i) * -1i, ~(_wgslsmith_add_i32(-47292i ^ var_0.x, ~u_input.b) ^ -var_0.x), _wgslsmith_mod_i32(func_3() >> (reverseBits(u_input.a) % 32u), ~u_input.b));
    var var_4 = -822f;
    return vec3<u32>(~global2.x << (~0u % 32u), _wgslsmith_div_u32(u_input.d, ~(~_wgslsmith_clamp_u32(70795u, 4294967295u, 0u))), 1u);
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: i32) -> vec2<bool> {
    var var_0 = true;
    let var_1 = Struct_3(Struct_2(((vec3<i32>(arg_2, u_input.b, u_input.b) | vec3<i32>(arg_2, 112277i, -21008i)) << (u_input.c % vec3<u32>(32u))) << (_wgslsmith_mod_vec3_u32(u_input.c, func_2(vec2<f32>(814f, 711f))) % vec3<u32>(32u)), Struct_1(_wgslsmith_mod_u32(1u, ~21342u), u_input.c), u_input.b, Struct_1(global2.x, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, u_input.a, global2.x) & u_input.c, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, 12303u, global2.x), u_input.c), _wgslsmith_clamp_vec3_u32(vec3<u32>(global2.x, global2.x, 37523u), u_input.c, u_input.c)))), Struct_1(0u, u_input.c), Struct_1(105530u, vec3<u32>(_wgslsmith_mult_u32(global2.x, 45436u), u_input.a & u_input.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(39218u, global2.x, global2.x), vec3<u32>(u_input.c.x, 30995u, u_input.d)))), Struct_1(15811u, _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(u_input.c, u_input.c), ~(~u_input.c))));
    global2 = vec2<u32>(firstTrailingBit(_wgslsmith_div_u32(~63826u, var_1.d.b.x)), u_input.d);
    global1 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~max(vec3<u32>(u_input.a, u_input.d, var_1.b.b.x), vec3<u32>(0u, u_input.d, u_input.c.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(global2.x, 33509u, 4294967295u) ^ vec3<u32>(46004u, global2.x, global2.x), func_2(vec2<f32>(-396f, 647f)))) & _wgslsmith_mod_vec3_u32(~vec3<u32>(global2.x, 0u, 5830u), firstLeadingBit(u_input.c >> (vec3<u32>(u_input.a, global2.x, var_1.a.b.b.x) % vec3<u32>(32u)))), u_input.c);
    var var_2 = false;
    return arg_0;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3) -> StorageBuffer {
    let var_0 = vec4<u32>(~abs(abs(~arg_1.b.b.x)), ~(~_wgslsmith_mod_u32(~u_input.a, arg_1.b.a)), arg_1.a.b.a, countOneBits(abs(533u)));
    var var_1 = 4294967295u;
    let var_2 = select(vec3<bool>(false, true, false), select(vec3<bool>(arg_0.x, any(vec2<bool>(true, true)), arg_0.x), vec3<bool>(false, all(select(vec2<bool>(false, arg_0.x), vec2<bool>(false, arg_0.x), true)), any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), select(!select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(arg_0.x, false, arg_0.x), arg_0.x), !vec3<bool>(true, false, arg_0.x), select(select(vec3<bool>(false, arg_0.x, false), vec3<bool>(false, arg_0.x, false), false), !vec3<bool>(arg_0.x, arg_0.x, true), true))), u_input.b <= 1i);
    global0 = array<Struct_3, 9>();
    var var_3 = global0[_wgslsmith_index_u32(38777u, 9u)];
    return StorageBuffer(u_input.c.x << (reverseBits(_wgslsmith_add_u32(~119426u, reverseBits(var_0.x))) % 32u), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-102f, -345f, -1000f, 1426f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1163f, -509f, 515f, -1532f))), vec4<f32>(_wgslsmith_f_op_f32(-632f + -907f), 913f, -531f, _wgslsmith_f_op_f32(-457f * -2557f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 25712u;
    let x = u_input.a;
    s_output = func_4(select(select(vec2<bool>(true, true), vec2<bool>(true, true), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 1u, var_0), vec3<u32>(var_0, global2.x, u_input.d)) == u_input.c.x), !select(vec2<bool>(false, false), vec2<bool>(true, false), true), func_1(select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), true, reverseBits(u_input.b & -9764i))), global0[_wgslsmith_index_u32(u_input.d, 9u)]);
}

