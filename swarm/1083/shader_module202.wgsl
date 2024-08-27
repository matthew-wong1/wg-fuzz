struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: i32 = -1i;

var<private> global2: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    let var_0 = Struct_1(select(!vec2<bool>(66191u != u_input.d, all(vec4<bool>(arg_1.a.x, false, false, arg_0.x))), global0.yy, any(vec3<bool>(global0.x, true && global0.x, true))), _wgslsmith_div_vec3_i32(firstLeadingBit(~arg_1.b), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, arg_1.d.x, arg_1.e.x, 2147483647i), vec4<i32>(u_input.c, arg_1.e.x, arg_1.d.x, -1i)), arg_1.e.x, firstTrailingBit(u_input.e.x))), -(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e.x, arg_1.c.x, arg_1.d.x), arg_1.b & vec3<i32>(27790i, 1i, u_input.c))), firstTrailingBit(arg_1.d), min(arg_1.e & firstTrailingBit(u_input.e ^ arg_1.b.xx), ~vec2<i32>(1i, reverseBits(arg_1.c.x))));
    global2 = array<vec3<bool>, 13>();
    global2 = array<vec3<bool>, 13>();
    global1 = 38222i;
    global1 = ~(~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.e.x, 2147483647i, 2083i, u_input.c), vec4<i32>(arg_1.e.x, 0i, var_0.d.x, -26957i)), -arg_1.d)) | -36862i;
    return var_0.a.x;
}

fn func_2(arg_0: bool) -> vec3<bool> {
    var var_0 = vec2<bool>(true, true);
    let var_1 = vec2<f32>(488f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-105f, -826f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-640f * 485f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2964f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1031f, 1808f))))))));
    let var_2 = Struct_1(vec2<bool>(all(vec3<bool>(func_3(vec2<bool>(false, global0.x), Struct_1(vec2<bool>(true, global0.x), vec3<i32>(u_input.e.x, 1i, u_input.e.x), vec3<i32>(0i, 0i, u_input.e.x), vec4<i32>(u_input.e.x, u_input.e.x, 0i, 32261i), vec2<i32>(u_input.c, u_input.c))), false, true)), true), ~vec3<i32>(~u_input.c, -1i, u_input.c), _wgslsmith_sub_vec3_i32(~((vec3<i32>(u_input.c, 12706i, 0i) ^ vec3<i32>(-13376i, u_input.c, u_input.e.x)) | select(vec3<i32>(u_input.e.x, 2147483647i, u_input.e.x), vec3<i32>(-28286i, 2147483647i, u_input.e.x), global2[_wgslsmith_index_u32(u_input.a.x, 13u)])), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e.x, u_input.e.x, 0i), vec3<i32>(4693i, 2459i, -41899i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -1i, u_input.c), vec3<i32>(u_input.c, u_input.e.x, -22955i))) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.b, u_input.b), _wgslsmith_add_vec3_u32(u_input.a, u_input.a), vec3<u32>(1u, u_input.d, u_input.d) ^ u_input.a) % vec3<u32>(32u))), vec4<i32>(2147483647i, u_input.c, _wgslsmith_div_i32(-u_input.e.x, -14825i), -1i), vec2<i32>(-_wgslsmith_div_i32(u_input.c, u_input.c), u_input.c) & _wgslsmith_mult_vec2_i32(u_input.e, vec2<i32>(-u_input.e.x, u_input.e.x | u_input.c)));
    var var_3 = 1u != abs(~(~reverseBits(u_input.a.x)));
    global1 = _wgslsmith_mod_i32(29077i, -reverseBits(-var_2.d.x));
    return select(!vec3<bool>(false, all(vec4<bool>(global0.x, false, var_2.a.x, arg_0)), true), vec3<bool>(!any(vec3<bool>(arg_0, global0.x, false)), any(global0.zy), true), vec3<bool>(false, !any(!global2[_wgslsmith_index_u32(4294967295u, 13u)]), var_0.x));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: u32) -> vec3<i32> {
    var var_0 = select(func_2(any(!vec4<bool>(false, global0.x, arg_0.b.a.x, false))), vec3<bool>(false, true, select(arg_0.b.a.x, true, true)), select(all(vec2<bool>(true, true)), global0.x, arg_0.c.b.x >= -(~0i)));
    global2 = array<vec3<bool>, 13>();
    let var_1 = arg_0.b;
    global2 = array<vec3<bool>, 13>();
    global2 = array<vec3<bool>, 13>();
    return vec3<i32>(max(u_input.c, 25773i) & 1i, _wgslsmith_div_i32(arg_0.b.c.x, firstTrailingBit(-var_1.b.x)), ~15571i ^ ~u_input.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.e.x;
    var var_0 = Struct_3(262f, Struct_1(vec2<bool>(global0.x, true), firstTrailingBit(vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x) & vec3<i32>(u_input.e.x, u_input.c, 26333i)) | func_1(Struct_3(1231f, Struct_1(global0.zz, vec3<i32>(u_input.e.x, u_input.e.x, -22316i), vec3<i32>(u_input.c, u_input.e.x, u_input.e.x), vec4<i32>(u_input.e.x, 5885i, 12058i, 1i), u_input.e), Struct_1(global0.yz, vec3<i32>(-53566i, 2147483647i, u_input.e.x), vec3<i32>(-50937i, u_input.c, 1i), vec4<i32>(u_input.e.x, u_input.c, 1i, u_input.e.x), vec2<i32>(-1i, u_input.c)), vec2<u32>(4294967295u, u_input.b)), vec2<u32>(u_input.a.x, 1u), ~1u), vec3<i32>(u_input.e.x << (20693u % 32u), u_input.e.x, 41112i) | (-vec3<i32>(1255i, u_input.e.x, u_input.c) ^ vec3<i32>(1i, 2147483647i, u_input.e.x)), min(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.c, 1i, u_input.e.x, -1i), vec4<i32>(2147483647i, 38513i, 8504i, u_input.c) ^ vec4<i32>(u_input.e.x, 1i, -38147i, u_input.c)), -vec4<i32>(-2147483647i, u_input.e.x, u_input.c, 36646i)), vec2<i32>(-65660i, abs(u_input.e.x)) | vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, -1i, u_input.e.x, 2147483647i), vec4<i32>(u_input.e.x, 1i, u_input.c, u_input.e.x)), 52558i)), Struct_1(global0.yy, vec3<i32>(func_1(Struct_3(-500f, Struct_1(vec2<bool>(false, global0.x), vec3<i32>(u_input.c, 45729i, u_input.c), vec3<i32>(-2147483647i, 25531i, 31702i), vec4<i32>(u_input.e.x, 389i, -31434i, -30946i), u_input.e), Struct_1(global0.xy, vec3<i32>(u_input.e.x, u_input.c, -1i), vec3<i32>(50961i, u_input.c, u_input.e.x), vec4<i32>(-43097i, 0i, 1i, u_input.e.x), vec2<i32>(u_input.c, u_input.c)), u_input.a.xz), vec2<u32>(29277u, 34807u), 1u).x, -3187i, abs(u_input.c)) << (vec3<u32>(~39579u, 1u, ~u_input.d) % vec3<u32>(32u)), ~firstTrailingBit(-vec3<i32>(u_input.e.x, -17569i, u_input.c)), ~(-vec4<i32>(-14736i, u_input.c, -2558i, -28927i)) | abs(-vec4<i32>(-12432i, 0i, u_input.e.x, u_input.c)), _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.c, u_input.c), firstTrailingBit(u_input.e))), ~u_input.a.xx);
    var var_1 = Struct_1(!(!func_2(!global0.x).zx), var_0.c.c, _wgslsmith_clamp_vec3_i32(vec3<i32>(~6602i, var_0.b.d.x >> (var_0.d.x % 32u), u_input.c), var_0.c.c, vec3<i32>(-2147483647i, countOneBits(_wgslsmith_add_i32(u_input.c, u_input.c)), -_wgslsmith_dot_vec4_i32(var_0.b.d, var_0.c.d))), var_0.b.d, u_input.e);
    global0 = func_2(global0.x);
    var var_2 = ~(~reverseBits(-vec4<i32>(-1i, -1i, var_1.e.x, u_input.e.x)));
    var var_3 = 4294967295u;
    global1 = reverseBits(var_0.b.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec2<i32>(~1i, min(-38340i, -1i)));
}

