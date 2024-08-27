struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 13>;

var<private> global1: Struct_1;

var<private> global2: vec2<f32> = vec2<f32>(-229f, 487f);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.x)))));
    var var_1 = _wgslsmith_f_op_f32(-global2.x);
    var var_2 = Struct_1(-_wgslsmith_mod_vec3_i32(global1.a, -vec3<i32>(u_input.a, global1.a.x, arg_0)));
    global1 = Struct_1(abs(_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(arg_0, arg_0, var_2.a.x)), var_2.a ^ var_2.a, -var_2.a)) & ~var_2.a);
    global1 = Struct_1(max(vec3<i32>(3644i, -u_input.a, -29927i), min(abs(_wgslsmith_sub_vec3_i32(global1.a, var_2.a)), vec3<i32>(-55967i, _wgslsmith_mult_i32(u_input.a, 1i), _wgslsmith_add_i32(var_2.a.x, 17945i)))));
    return ~(~19685u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: u32) -> Struct_1 {
    var var_0 = vec4<u32>(~(~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_3, u_input.b, 0u), vec4<u32>(arg_2.x, u_input.c, arg_3, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, 3731u, 4294967295u, 82170u), vec4<u32>(9786u, arg_2.x, arg_2.x, arg_2.x)))), 1u, arg_2.x, 0u << (u_input.b % 32u));
    var_0 = select(countOneBits(~(~reverseBits(vec4<u32>(17991u, 0u, 1u, 96192u)))), vec4<u32>(_wgslsmith_dot_vec2_u32(~var_0.zz, vec2<u32>(u_input.c, u_input.b)) | func_3(-1993i, global0[_wgslsmith_index_u32(18923u, 13u)], 120171u), select(4294967295u, arg_3, true), _wgslsmith_clamp_u32(var_0.x, 0u, 1u ^ ~arg_3), var_0.x), vec4<bool>(true, !any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), !all(vec2<bool>(true, true)), false));
    let var_1 = Struct_1(-arg_1.a);
    let var_2 = Struct_1(vec3<i32>(11049i, _wgslsmith_dot_vec2_i32(abs(select(vec2<i32>(u_input.a, -22645i), arg_0.a.zz, vec2<bool>(true, true))), -(~global1.a.xx)), abs(_wgslsmith_sub_i32(~(-2147483647i), arg_0.a.x))));
    var var_3 = _wgslsmith_mult_vec3_i32(-firstLeadingBit(arg_1.a) << ((~var_0.yww ^ ~_wgslsmith_add_vec3_u32(vec3<u32>(arg_3, 1u, arg_2.x), var_0.zxy)) % vec3<u32>(32u)), -(~vec3<i32>(-2147483647i, -2147483647i, 0i)) << (vec3<u32>(4294967295u ^ abs(var_0.x), reverseBits(0u), _wgslsmith_clamp_u32(var_0.x, u_input.c, 23602u) | _wgslsmith_mod_u32(var_0.x, 30716u)) % vec3<u32>(32u)));
    return Struct_1(var_1.a);
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = func_2(arg_3, arg_3, vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1178u, 4294967295u), vec2<u32>(u_input.b, 11544u)), vec2<u32>(u_input.c, u_input.b)), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(1u, 16225u))), _wgslsmith_clamp_u32(u_input.c, 24947u, 100112u), abs(~u_input.b)), 55550u);
    var var_1 = !vec4<bool>(u_input.c <= 27460u, arg_2 && true, true, true);
    let var_2 = var_1.yxy;
    global1 = arg_3;
    var var_3 = func_2(arg_3, Struct_1(select(vec3<i32>(-2147483647i, 8190i, u_input.a) & vec3<i32>(arg_3.a.x, u_input.a, global1.a.x), ~min(global1.a, vec3<i32>(global1.a.x, global1.a.x, 1i)), vec3<bool>(all(vec2<bool>(var_1.x, arg_2)), true, true))), select(abs(_wgslsmith_add_vec3_u32(min(vec3<u32>(u_input.c, 58480u, u_input.c), vec3<u32>(u_input.b, 66496u, u_input.b)), vec3<u32>(u_input.c, 4561u, 31155u) ^ vec3<u32>(26455u, 0u, 1u))), firstTrailingBit(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(u_input.b, u_input.b, u_input.c)), vec3<u32>(9388u, 1u, 18203u) & vec3<u32>(u_input.c, 0u, 15780u))), var_1.xwx), abs(u_input.c));
    return vec3<i32>(-(~var_3.a.x) >> (_wgslsmith_div_u32(u_input.b, reverseBits(61970u)) % 32u), i32(-1i) * -firstLeadingBit(-16690i), _wgslsmith_add_i32(~(~1i), -var_0.a.x)) | _wgslsmith_mult_vec3_i32(vec3<i32>(-11376i << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c, 37595u), vec3<u32>(49023u, u_input.b, 1u)) % 32u), -2147483647i, -27091i), _wgslsmith_clamp_vec3_i32(arg_3.a ^ firstLeadingBit(vec3<i32>(-11460i, var_0.a.x, 64696i)), arg_3.a, vec3<i32>(~arg_3.a.x, var_0.a.x, firstLeadingBit(arg_3.a.x))));
}

fn func_4(arg_0: vec3<i32>, arg_1: u32) -> StorageBuffer {
    let var_0 = vec2<bool>(all(select(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, true, false), true)), false);
    var var_1 = func_2(Struct_1(arg_0 | -_wgslsmith_mult_vec3_i32(global1.a, global1.a)), Struct_1(-(~vec3<i32>(0i, arg_0.x, 14051i))), vec3<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, arg_1, 21274u), select(vec3<u32>(arg_1, u_input.b, 0u), vec3<u32>(arg_1, 66860u, u_input.b), vec3<bool>(false, var_0.x, false))), select(select(arg_1, u_input.c, var_0.x), firstLeadingBit(arg_1), true)) >> (~(~vec3<u32>(10551u, arg_1, u_input.b)) % vec3<u32>(32u)), ~(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1, arg_1, 1u, u_input.c), vec4<u32>(40417u, u_input.b, u_input.c, 1u)) ^ arg_1));
    let var_2 = select(select(select(!var_0, select(var_0, select(var_0, var_0, var_0.x), true), var_0), !(!(!vec2<bool>(var_0.x, false))), var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, select(!var_0.x & true, all(!vec4<bool>(false, var_0.x, false, true)), !any(vec4<bool>(var_0.x, true, var_0.x, true)))));
    let var_3 = global2.x;
    let var_4 = func_2(Struct_1(_wgslsmith_mult_vec3_i32(firstLeadingBit(-vec3<i32>(-1i, 2147483647i, -1i)), firstLeadingBit(vec3<i32>(var_1.a.x, -17131i, global1.a.x)) | vec3<i32>(u_input.a, 1i, global1.a.x))), Struct_1(global1.a), min(~abs(vec3<u32>(arg_1, u_input.c, arg_1)), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.c, 4294967295u, 1u), reverseBits(vec3<u32>(arg_1, 5707u, 1u)))) | ~(~firstLeadingBit(vec3<u32>(arg_1, arg_1, 44485u))), firstLeadingBit(30551u));
    return StorageBuffer(arg_0.yx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 7368u;
    let x = u_input.a;
    s_output = func_4(_wgslsmith_sub_vec3_i32(-reverseBits(vec3<i32>(-1i, u_input.a, u_input.a)), vec3<i32>(-1i) * -func_1(-1i, 1295f, true, Struct_1(vec3<i32>(-10780i, global1.a.x, 3509i)))), 71002u);
}

