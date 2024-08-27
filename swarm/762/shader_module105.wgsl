struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: u32,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<u32, 18> = array<u32, 18>(4294967295u, 4294967295u, 22955u, 60683u, 28450u, 4294967295u, 0u, 4294967295u, 1u, 1u, 105u, 1u, 0u, 21212u, 4294967295u, 46949u, 35476u, 1u);

var<private> global2: Struct_4 = Struct_4(Struct_1(vec2<bool>(true, true), vec2<i32>(-1i, -28301i), vec2<i32>(2147483647i, 12035i), vec2<i32>(43834i, 17866i), vec4<u32>(20902u, 53383u, 37569u, 5867u)), Struct_3(vec2<u32>(32875u, 1u), vec4<bool>(false, true, true, true)), 4294967295u, Struct_2(vec2<bool>(true, false)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: bool) -> bool {
    global0 = false;
    global2 = Struct_4(global2.a, Struct_3(vec2<u32>(select(~13894u, ~48864u, global2.a.a.x), max(~u_input.d, 4294967295u)), !global2.b.b), global2.a.e.x, Struct_2(!vec2<bool>(arg_0.a.x, arg_2)));
    global1 = array<u32, 18>();
    var var_0 = 2147483647i;
    var var_1 = ~global2.a.c.x;
    return !(global2.a.c.x > _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, global2.a.c.x, -1i) >> (_wgslsmith_add_vec4_u32(global2.a.e, vec4<u32>(1u, 1u, global2.b.a.x, global1[_wgslsmith_index_u32(u_input.e, 18u)])) % vec4<u32>(32u)), vec4<i32>(-global2.a.b.x, u_input.a, -2158i, u_input.c)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: i32) -> Struct_4 {
    let var_0 = (~(_wgslsmith_mult_vec4_i32(vec4<i32>(global2.a.c.x, -2147483647i, global2.a.c.x, u_input.b.x), vec4<i32>(u_input.b.x, 58868i, arg_2, u_input.a)) & vec4<i32>(global2.a.c.x, -6506i, -1i, 51506i)) ^ vec4<i32>(2147483647i, u_input.b.x, 1i, ~(-13684i) & reverseBits(global2.a.c.x))) | _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_2, u_input.b.x, 2147483647i, global2.a.c.x) << (~vec4<u32>(arg_1.a.x, u_input.d, 1u, arg_1.a.x) % vec4<u32>(32u)), -firstLeadingBit(vec4<i32>(arg_2, arg_2, 0i, global2.a.c.x))), abs(select(vec4<i32>(u_input.c, -2147483647i, global2.a.c.x, -1i), -vec4<i32>(-22556i, global2.a.c.x, arg_2, arg_2), true)));
    var var_1 = true == arg_1.b.x;
    return Struct_4(Struct_1(select(vec2<bool>(arg_1.b.x, true), arg_1.b.yw, any(!arg_1.b.yxy)), global2.a.b, _wgslsmith_add_vec2_i32(u_input.b.xy, abs(u_input.b.yz)), vec2<i32>(firstTrailingBit(-50782i) << (0u % 32u), 1i), ~firstLeadingBit(~global2.a.e)), Struct_3(vec2<u32>(u_input.d, global2.c), select(select(global2.b.b, vec4<bool>(true, false, true, true), select(vec4<bool>(false, arg_1.b.x, arg_1.b.x, true), global2.b.b, vec4<bool>(global2.b.b.x, arg_0, true, false))), !(!arg_1.b), global2.b.b)), 0u, global2.d);
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: vec4<i32>) -> i32 {
    let var_0 = false;
    global2 = func_3(func_2(global2.d, _wgslsmith_sub_vec4_u32(~vec4<u32>(14139u, global1[_wgslsmith_index_u32(8843u, 18u)], 5958u, 11184u), _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(global2.b.a.x, u_input.d, arg_1.x, 1u)), vec4<u32>(arg_1.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(63031u, 18u)], 18u)], 4294967295u, 153483u))), true), Struct_3(global2.b.a, vec4<bool>(arg_0 && false, any(vec2<bool>(arg_0, global2.d.a.x)), !global2.d.a.x || true, !(global2.d.a.x & global2.d.a.x))), ~(~_wgslsmith_sub_i32(global2.a.b.x, -45724i)) ^ ~2147483647i);
    global0 = var_0;
    let var_1 = global2.a;
    var var_2 = func_3(true, func_3(any(select(global2.b.b.wzx, !vec3<bool>(true, global2.d.a.x, var_1.a.x), !global2.b.b.wzy)), Struct_3(global2.b.a, vec4<bool>(var_0, true, any(global2.b.b), arg_0)), _wgslsmith_mod_i32(~(-global2.a.c.x), (1i ^ arg_3.x) & global2.a.d.x)).b, firstLeadingBit(firstLeadingBit(_wgslsmith_mod_i32(-11618i, ~var_1.c.x)))).a;
    return arg_3.x;
}

fn func_4(arg_0: i32) -> Struct_2 {
    let var_0 = global2.b.b.x;
    var var_1 = func_3(func_2(global2.d, reverseBits(_wgslsmith_clamp_vec4_u32(max(vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.b.a.x, 18u)], 18u)], global1[_wgslsmith_index_u32(1u, 18u)], 4294967295u), vec4<u32>(u_input.d, 30856u, 0u, 0u)), vec4<u32>(10619u, 56267u, 60982u, 4294967295u), firstLeadingBit(vec4<u32>(0u, 45786u, u_input.e, 0u)))), !any(global2.b.b.wxz) & any(select(vec3<bool>(false, global2.b.b.x, global2.a.a.x), global2.b.b.wxx, vec3<bool>(global2.a.a.x, global2.d.a.x, global2.a.a.x)))), Struct_3(select(vec2<u32>(0u, 46796u ^ global2.b.a.x), global2.b.a, 1u <= u_input.d), func_3(global2.b.b.x, func_3(all(vec4<bool>(global2.a.a.x, false, global2.d.a.x, global2.b.b.x)), func_3(global2.b.b.x, Struct_3(global2.a.e.wz, global2.b.b), -2147483647i).b, ~global2.a.c.x).b, -u_input.a).b.b), min(func_1(false, vec2<u32>(~71584u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(5387u, 18u)], 18u)], 18u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-229f, -817f, -206f, 1000f) - vec4<f32>(281f, -1004f, -305f, -389f))), ~vec4<i32>(global2.a.b.x, u_input.a, 34062i, global2.a.b.x) | _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, arg_0, 2147483647i, arg_0), vec4<i32>(-2147483647i, arg_0, arg_0, 17930i))), 24929i)).d;
    global0 = false;
    let var_2 = Struct_1(!vec2<bool>(all(vec2<bool>(true, false)) | false, global2.a.a.x), u_input.b.yz, abs(vec2<i32>(global2.a.d.x, _wgslsmith_div_i32(_wgslsmith_clamp_i32(global2.a.d.x, 1i, 1i), 24681i))), reverseBits(u_input.b.yz), ~global2.a.e);
    var var_3 = min(_wgslsmith_mult_vec4_u32(vec4<u32>(abs(28555u), var_2.e.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 62578u, 0u, 4294967295u), var_2.e), _wgslsmith_mod_u32(1u, var_2.e.x) >> (var_2.e.x % 32u)), vec4<u32>(_wgslsmith_dot_vec4_u32(~global2.a.e, ~vec4<u32>(47504u, 63814u, u_input.d, global1[_wgslsmith_index_u32(u_input.d, 18u)])), firstTrailingBit(global2.b.a.x), _wgslsmith_div_u32(~global1[_wgslsmith_index_u32(var_2.e.x, 18u)], abs(643u)), _wgslsmith_dot_vec4_u32(var_2.e, global2.a.e))), vec4<u32>(~abs(44931u), global1[_wgslsmith_index_u32(select(global2.c >> (91811u % 32u), 1u, true), 18u)], ~57342u, min(~global1[_wgslsmith_index_u32(global2.a.e.x >> (1u % 32u), 18u)], _wgslsmith_mult_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(var_2.e.x, 18u)], 4294967295u), 1u))));
    return Struct_2(vec2<bool>(all(var_2.a), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.a.e;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 862f, -352f, -374f)))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2014f, 103f, -150f, -812f))))))));
    let var_2 = ~u_input.b.zz;
    global1 = array<u32, 18>();
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * 661f)), 1433f, _wgslsmith_f_op_f32(-var_1.x))) - var_1.wxw);
    var var_4 = false;
    var var_5 = vec2<bool>(!global2.a.a.x, true);
    var var_6 = func_4(_wgslsmith_mult_i32(~func_1(var_5.x, global2.a.e.xw, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<f32>(var_1.x, var_3.x, -1292f, var_1.x))), vec4<i32>(global2.a.b.x, u_input.c, u_input.c, global2.a.c.x)), func_3((global2.d.a.x || var_5.x) & (true | global2.d.a.x), Struct_3(~var_0.yy, vec4<bool>(false, var_5.x, var_5.x, var_5.x)), ~(u_input.b.x << (var_0.x % 32u))).a.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(select(global2.a.e, vec4<u32>(1u, 0u, 1u, global1[_wgslsmith_index_u32(25501u, 18u)]), true), reverseBits(global2.a.e), !var_6.a.x) | _wgslsmith_clamp_vec4_u32(global2.a.e, min(vec4<u32>(var_0.x, 1u, 1u, global1[_wgslsmith_index_u32(global2.b.a.x, 18u)]), global2.a.e), vec4<u32>(var_0.x, 81893u, 1u, global2.b.a.x))), vec4<i32>(-19814i >> (abs(_wgslsmith_dot_vec3_u32(var_0.yzx, vec3<u32>(4294967295u, 4294967295u, u_input.e))) % 32u), u_input.b.x, u_input.c & 13879i, ~var_2.x), _wgslsmith_f_op_vec2_f32(sign(var_3.yx)));
}

