struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: f32;

var<private> global2: array<u32, 32>;

var<private> global3: array<f32, 10> = array<f32, 10>(-1000f, -3075f, 1491f, -202f, -367f, -374f, -1000f, 987f, -493f, -942f);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_5, arg_2: vec2<f32>) -> vec4<u32> {
    var var_0 = global0[_wgslsmith_index_u32(53876u, 18u)];
    var var_1 = _wgslsmith_add_i32(u_input.a.x, 37040i);
    var_1 = _wgslsmith_div_i32(arg_0, -u_input.b);
    let var_2 = u_input.c.ywy;
    global3 = array<f32, 10>();
    return select(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b.d.x, reverseBits(global2[_wgslsmith_index_u32(u_input.c.x, 32u)]), _wgslsmith_dot_vec3_u32(var_0.b.d, u_input.c.xzw), _wgslsmith_clamp_u32(var_0.b.d.x, arg_1.d, 1u)), vec4<u32>(_wgslsmith_add_u32(var_2.x, 19688u), ~u_input.d, 21070u, 31424u))), u_input.c, false);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec4<u32>) -> u32 {
    let var_0 = 2147483647i;
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.c.x << (arg_1 % 32u), _wgslsmith_add_u32(~firstTrailingBit(28194u), 0u >> ((~0u ^ ~arg_1) % 32u))), 18u)];
    let var_2 = 0u;
    global3 = array<f32, 10>();
    let var_3 = _wgslsmith_mult_vec4_u32(~(vec4<u32>(var_1.b.d.x, u_input.d, u_input.c.x, 0u) & func_3(39456i, Struct_5(0u, Struct_4(-875f), 4294967295u, 16179u), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global3[_wgslsmith_index_u32(arg_2.x, 10u)], global3[_wgslsmith_index_u32(20085u, 10u)]), var_1.b.c.zz)))), ~vec4<u32>(~u_input.d, u_input.c.x, var_1.b.d.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], var_1.b.d.x), global2[_wgslsmith_index_u32(firstLeadingBit(17541u), 32u)])));
    return arg_2.x;
}

fn func_1(arg_0: i32) -> Struct_3 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~(~u_input.c.x), 10u)] - -266f)), global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(firstTrailingBit(func_2(true, 4294967295u, u_input.c)), u_input.c.x)), 10u)]);
    var var_1 = Struct_1(~(vec4<i32>(-14831i, u_input.b, 37161i, _wgslsmith_clamp_i32(2891i, arg_0, -33095i)) | _wgslsmith_add_vec4_i32(u_input.a ^ vec4<i32>(2147483647i, 0i, -19476i, u_input.a.x), reverseBits(u_input.a))), -arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 10u)] + global3[_wgslsmith_index_u32(u_input.c.x, 10u)]) + _wgslsmith_f_op_f32(step(var_0.x, global3[_wgslsmith_index_u32(0u, 10u)]))), _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 10u)] * global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 32u)], 10u)]) - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 10u)])))), vec3<u32>(~global2[_wgslsmith_index_u32(u_input.c.x, 32u)], 20625u >> (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 0u, u_input.d), u_input.c.xwx), 0u >> (u_input.c.x % 32u), ~42452u) % 32u), abs(~firstLeadingBit(93663u))), u_input.a);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    let var_2 = global0[_wgslsmith_index_u32(func_3(-2147483647i, Struct_5(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(global2[_wgslsmith_index_u32(0u, 32u)], 1u, 0u, global2[_wgslsmith_index_u32(1u, 32u)]), u_input.c), vec4<u32>(59228u, global2[_wgslsmith_index_u32(4294967295u, 32u)], 63358u, var_1.d.x)), firstLeadingBit(1u)), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) - var_0.x)), reverseBits(1u), u_input.c.x | var_1.d.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1224f, _wgslsmith_f_op_f32(step(-605f, _wgslsmith_div_f32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(45252u, 32u)], 32u)], 10u)], 1070f)))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.c.x, _wgslsmith_f_op_f32(max(362f, -1000f))))))).x, 18u)];
    let var_3 = !(!vec2<bool>(all(vec2<bool>(false, true)), all(vec4<bool>(true, false, true, true)) | select(false, true, true)));
    return Struct_3(select(!vec3<bool>(!var_3.x, var_3.x, all(vec3<bool>(var_3.x, var_3.x, var_3.x))), vec3<bool>(_wgslsmith_div_i32(var_2.c.x, u_input.b) != 21199i, var_3.x, true), true), var_2.d.zx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_mult_i32(firstTrailingBit(abs(u_input.a.x)), u_input.a.x));
    global2 = array<u32, 32>();
    var_0 = Struct_3(!vec3<bool>(true, true, var_0.a.x), _wgslsmith_f_op_vec2_f32(-var_0.b));
    let var_1 = ~firstLeadingBit(37373u);
    let var_2 = vec3<bool>((select(u_input.d, 33218u, var_0.a.x) >= 1u) || all(!select(var_0.a, vec3<bool>(var_0.a.x, var_0.a.x, true), true)), any(vec2<bool>(true, !(!var_0.a.x))), var_0.a.x);
    let var_3 = Struct_2(var_0.b.x, Struct_1(firstTrailingBit(u_input.a), _wgslsmith_mod_i32(-39585i, 2147483647i), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-708f, 928f))), var_0.b.x, _wgslsmith_div_f32(123f, -417f)), vec3<u32>(~(~u_input.d), _wgslsmith_div_u32(0u, abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(81384u, 32u)], 32u)])), func_2(true, u_input.c.x ^ 0u, ~vec4<u32>(0u, 0u, 0u, global2[_wgslsmith_index_u32(u_input.d, 32u)]))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.b), vec2<i32>(u_input.a.x, -30958i)), -2147483647i, -29738i, _wgslsmith_mult_i32(max(u_input.a.x, -2147483647i), 0i))), u_input.a & u_input.a, vec3<f32>(_wgslsmith_f_op_f32(round(var_0.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1310f), -1254f), var_0.b.x));
    let var_4 = Struct_5(u_input.d, Struct_4(global3[_wgslsmith_index_u32(1u, 10u)]), ~countOneBits(global2[_wgslsmith_index_u32(u_input.d & global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_3.b.d.x, 4294967295u), 32u)], 32u)]), var_3.b.d.x);
    global3 = array<f32, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_3.d.x * 657f), ~(vec4<i32>(reverseBits(-1i), _wgslsmith_mult_i32(0i, var_3.c.x), 43518i, -2147483647i ^ u_input.b) << (firstLeadingBit(firstLeadingBit(vec4<u32>(global2[_wgslsmith_index_u32(var_4.a, 32u)], var_3.b.d.x, 1u, 69942u))) % vec4<u32>(32u))), firstLeadingBit(abs(reverseBits(vec4<i32>(0i, var_3.b.a.x, 1i, 2147483647i))) << (select(select(vec4<u32>(var_1, 12065u, 0u, var_4.c), vec4<u32>(8415u, var_3.b.d.x, 13054u, 45457u), var_0.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, 34623u, 15494u), vec4<u32>(12230u, 71645u, 0u, var_4.c)), !vec4<bool>(true, var_2.x, false, false)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(ceil(var_0.b.x))) * var_0.b.x)));
}

