struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<u32>;

var<private> global2: vec4<bool>;

var<private> global3: vec4<i32> = vec4<i32>(-18212i, 1i, 2147483647i, 1i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> vec2<u32> {
    var var_0 = vec4<i32>(global3.x, ~(i32(-1i) * -select(-2147483647i, global3.x, global2.x)), _wgslsmith_sub_i32(1i, arg_1.b.x) ^ ~select(~1245i, ~(-20300i), true), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(~arg_1.b.x, 1i, arg_1.c, countOneBits(0i)), firstLeadingBit(u_input.c) | ~vec4<i32>(global3.x, 0i, u_input.d.x, arg_1.b.x)), ~(~vec4<i32>(arg_1.c, -49605i, 1i, global3.x)) | ~(-vec4<i32>(615i, 0i, 2740i, -2147483647i))));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(324f * -414f))));
    var var_2 = ~global1.x;
    var var_3 = arg_1;
    var var_4 = vec4<bool>(!(_wgslsmith_f_op_f32(ceil(-2239f)) >= 269f), true, all(!(!vec4<bool>(true, false, false, global2.x))), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.b, 25157u)) >> (~vec2<u32>(global1.x, u_input.b) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(4294967295u, arg_0)), vec2<u32>(0u, u_input.b), reverseBits(vec2<u32>(arg_0, u_input.b)))) >= ~global1.x);
    return ~(_wgslsmith_sub_vec2_u32(vec2<u32>(max(u_input.b, global1.x), 9634u), vec2<u32>(arg_0 << (u_input.b % 32u), abs(u_input.b))) << ((max(firstLeadingBit(vec2<u32>(9376u, 1u)), vec2<u32>(0u, arg_0)) >> (countOneBits(~vec2<u32>(0u, arg_0)) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = global2.x & (_wgslsmith_f_op_f32(floor(-918f)) < -1631f);
    global3 = -_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(u_input.d.x, -1i), -41622i, 55750i, _wgslsmith_clamp_i32(u_input.d.x, 1i, -1i)), u_input.c), -(~vec4<i32>(1i, global3.x, 1i, global3.x) >> (vec4<u32>(82316u, arg_0.b, 20448u, u_input.b) % vec4<u32>(32u))));
    let var_1 = -3405i;
    global1 = _wgslsmith_mult_vec2_u32(func_3(arg_0.b, Struct_2(u_input.c, ~(vec3<i32>(global3.x, 78i, 2147483647i) | vec3<i32>(var_1, u_input.c.x, -39882i)), firstTrailingBit(-2147483647i))), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(global1.x, 57320u) & vec2<u32>(25471u, 65766u)), reverseBits(vec2<u32>(19916u, 4294967295u) & vec2<u32>(32903u, arg_0.b))) << (~reverseBits(~vec2<u32>(1u, 0u)) % vec2<u32>(32u)));
    var var_2 = !global2.x;
    return select(~countOneBits(~(vec4<u32>(u_input.b, arg_0.b, 22882u, global1.x) ^ vec4<u32>(25247u, u_input.b, arg_0.b, 1u))), select(firstTrailingBit(vec4<u32>(global1.x, _wgslsmith_div_u32(arg_0.b, global1.x), abs(44576u), u_input.b)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(global1.x, arg_0.b, 4294967295u, 4294967295u), vec4<u32>(arg_0.b, global1.x, arg_0.b, global1.x)), vec4<u32>(46968u, 15495u, 24010u, arg_0.b) << ((vec4<u32>(4294967295u, 31682u, 18101u, u_input.b) & vec4<u32>(1u, arg_0.b, arg_0.b, arg_0.b)) % vec4<u32>(32u))), _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.x, 0u, u_input.b, global1.x), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_0.b, 1u, 1u), vec4<u32>(18561u, u_input.b, 0u, 0u))) > reverseBits(_wgslsmith_sub_u32(4294967295u, global1.x))), vec4<bool>(global2.x, global2.x, any(!global2.wy), all(global2.wy)));
}

fn func_1(arg_0: bool) -> vec4<f32> {
    global0 = ~min(u_input.b, global1.x);
    let var_0 = abs(~func_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1478f), ~1u, 812f)));
    let var_1 = var_0;
    global0 = 8712u;
    var var_2 = Struct_2(vec4<i32>(13958i, global3.x, _wgslsmith_clamp_i32(-(-1i << (var_0.x % 32u)), _wgslsmith_mod_i32(-27956i, -14399i), 1i), global3.x >> (~80175u % 32u)), -abs(global3.xyy), 18354i);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1124f, 899f, -1000f, 828f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(756f, _wgslsmith_f_op_f32(f32(-1f) * -314f), 604f, _wgslsmith_f_op_f32(1000f + -990f)) * vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1096f, -1870f, -1706f, -104f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec4<i32>(-1495i, u_input.d.x, u_input.a, -7053i), _wgslsmith_mult_vec3_i32(global3.ywy, _wgslsmith_mult_vec3_i32(vec3<i32>(56130i, _wgslsmith_add_i32(global3.x, 32086i), i32(-1i) * -33651i), _wgslsmith_clamp_vec3_i32(u_input.c.yzz | global3.zzx, global3.zxz ^ vec3<i32>(27647i, 41495i, -8560i), u_input.d))), -(~u_input.d.x));
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_0.c, _wgslsmith_dot_vec3_i32(var_0.a.wyx, vec3<i32>(var_0.c, global3.x, u_input.a)) >> (24425u % 32u)) | -(~(~u_input.c.x)), 2147483647i, global3.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(false)))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-var_2.x), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) - _wgslsmith_f_op_f32(f32(-1f) * -746f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-724f)))));
    var var_4 = _wgslsmith_add_u32(~reverseBits(_wgslsmith_mult_u32(40914u, abs(0u))), ~func_2(Struct_1(-250f, 1u, var_3.a)).x);
    let var_5 = var_3;
    var var_6 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-firstTrailingBit(u_input.a), _wgslsmith_sub_i32(max(global3.x, 49688i) | var_0.a.x, 2147483647i), _wgslsmith_dot_vec2_i32(u_input.c.wz, ~vec2<i32>(var_0.c, -2147483647i)), countOneBits(-1i)), ~min(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, global3.x, -36869i), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, var_0.a.x, 2147483647i), var_0.a.xyx))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 145f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.x)))))), vec3<i32>(-2147483647i, 6604i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a ^ u_input.d.x, i32(-1i) * -44626i, global3.x | 11136i), vec3<i32>(37963i, global3.x, global3.x) >> (~vec3<u32>(1u, global1.x, global1.x) % vec3<u32>(32u)))), ~(~abs(vec3<u32>(4294967295u, var_3.b, 0u) ^ vec3<u32>(global1.x, global1.x, global1.x))));
}

