struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-878f, -1736f, -355f, 213f);

var<private> global1: vec3<f32>;

var<private> global2: i32 = -1i;

var<private> global3: Struct_5;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_5, arg_2: f32, arg_3: Struct_3) -> i32 {
    return _wgslsmith_clamp_i32(-2147483647i, ~_wgslsmith_clamp_i32(-_wgslsmith_sub_i32(-1i, -1i), _wgslsmith_add_i32(global3.a.x, arg_1.b.x), countOneBits(0i)), global3.b.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<bool>) -> f32 {
    var var_0 = ~u_input.a.x;
    var var_1 = vec4<i32>(global3.b.x, u_input.b.x >> (global3.c.a % 32u), func_3(Struct_2(global3.c.b.b, global3.c.b, u_input.a.x, _wgslsmith_clamp_u32(4294967295u, 66187u, global3.c.b.b), _wgslsmith_f_op_f32(global1.x - global1.x)), Struct_5(global3.c.b.a, ~vec3<i32>(1i, 26463i, 5345i), Struct_2(1835u, global3.c.b, global3.c.b.b, u_input.a.x, 577f), _wgslsmith_f_op_f32(688f * global1.x)), -1000f, Struct_3(Struct_1(vec4<i32>(global3.c.b.a.x, global3.b.x, -22120i, 0i), 50321u), global3.c.b)), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(-global3.c.b.a.zyy, vec3<i32>(24076i, -62779i, global3.b.x)), -_wgslsmith_clamp_i32(u_input.b.x, 2147483647i, u_input.b.x))) >> (_wgslsmith_clamp_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 21215u, u_input.a.x, u_input.a.x), abs(vec4<u32>(global3.c.a, global3.c.d, 1u, global3.c.c)), _wgslsmith_div_vec4_u32(vec4<u32>(32812u, 0u, 6805u, global3.c.d), vec4<u32>(global3.c.a, 75090u, 11612u, 4294967295u))), vec4<u32>(20332u, ~1u, _wgslsmith_mod_u32(~u_input.a.x, u_input.a.x), ~countOneBits(u_input.a.x)), select(_wgslsmith_mod_vec4_u32(vec4<u32>(global3.c.c, global3.c.b.b, global3.c.d, u_input.a.x) << (vec4<u32>(17933u, 31956u, 33828u, global3.c.b.b) % vec4<u32>(32u)), vec4<u32>(0u, 4294967295u, 4294967295u, u_input.a.x)), vec4<u32>(max(4294967295u, u_input.a.x), ~4294967295u, ~25189u, 81425u), select(arg_1, vec4<bool>(false, false, arg_1.x, arg_1.x), all(vec3<bool>(true, true, arg_1.x))))) % vec4<u32>(32u));
    let var_2 = Struct_1(vec4<i32>(-1i) * -global3.a, select(_wgslsmith_div_u32(u_input.a.x | u_input.a.x, ~_wgslsmith_sub_u32(global3.c.d, u_input.a.x)), ~27199u, arg_1.x));
    var_1 = vec4<i32>(u_input.b.x, firstLeadingBit(firstLeadingBit((u_input.b.x << (58591u % 32u)) >> (1u % 32u))), _wgslsmith_add_i32(-(~u_input.b.x), countOneBits(var_2.a.x)), ~func_3(global3.c, Struct_5(vec4<i32>(u_input.b.x, 2147483647i, 2147483647i, var_1.x), vec3<i32>(u_input.b.x, 0i, 19573i) & vec3<i32>(u_input.b.x, -2147483647i, 2147483647i), global3.c, _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_3(Struct_1(vec4<i32>(-37631i, var_2.a.x, -64644i, var_1.x), var_2.b), Struct_1(var_2.a, u_input.a.x))));
    var_0 = ~_wgslsmith_sub_u32(abs(u_input.a.x << (var_2.b % 32u)), ~69362u);
    return _wgslsmith_f_op_f32(-global3.d);
}

fn func_1() -> i32 {
    global0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1896f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(309f - global0.x)), global0.x, _wgslsmith_f_op_f32(step(-931f, _wgslsmith_f_op_f32(func_2(global1.xx, vec4<bool>(true, true, false, true)))))))));
    let var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 4294967295u, global3.c.c) << (u_input.a % vec3<u32>(32u))), u_input.a.x)), firstTrailingBit(u_input.a));
    return 1i;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: vec2<f32>) -> StorageBuffer {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec2_f32(select(arg_3, _wgslsmith_f_op_vec2_f32(global0.ww + vec2<f32>(635f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1201f))))), false));
    var var_2 = ~u_input.a & min(u_input.a, vec3<u32>(arg_0.b, u_input.a.x, ~10667u));
    global2 = func_1();
    let var_3 = Struct_5(arg_0.a << ((_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, u_input.a.x, global3.c.c, 0u), select(vec4<u32>(0u, 54656u, 55426u, global3.c.c), vec4<u32>(1u, 4294967295u, var_0, 1u), vec4<bool>(true, false, false, true))) ^ ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0, 14526u, u_input.a.x, u_input.a.x), vec4<u32>(1u, 28691u, 1u, arg_1))) % vec4<u32>(32u)), -global3.c.b.a.xzw, global3.c, 711f);
    return StorageBuffer(global0.wwz, u_input.a.x << (4294967295u % 32u), _wgslsmith_f_op_f32(max(global3.c.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.x, -435f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1222f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(!(!select(true, true, true)), global1.x < global0.x);
    let var_1 = ~_wgslsmith_add_u32(abs(~4294967295u) << (_wgslsmith_add_u32(global3.c.b.b & u_input.a.x, ~global3.c.a) % 32u), u_input.a.x);
    let var_2 = abs(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(select(21936i, global3.b.x, false), 1i, u_input.b.x)), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(global3.c.b.a.x, u_input.b.x, -1i), -global3.b, vec3<bool>(true, var_0.x, true)), vec3<i32>(~global3.b.x, u_input.b.x, _wgslsmith_dot_vec3_i32(global3.c.b.a.zzz, global3.c.b.a.xyw)), -global3.c.b.a.yyy)));
    global2 = 11051i;
    let var_3 = _wgslsmith_f_op_f32(-global0.x);
    var var_4 = global3.c;
    let x = u_input.a;
    s_output = func_4(Struct_1(global3.c.b.a, var_1), _wgslsmith_sub_u32(global3.c.d, u_input.a.x) >> (~(~(~var_1)) % 32u), _wgslsmith_clamp_i32(countOneBits(u_input.b.x) ^ func_1(), global3.a.x, -17123i) & u_input.b.x, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.yy) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))));
}

