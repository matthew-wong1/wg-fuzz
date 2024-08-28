struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>) -> vec4<u32> {
    var var_0 = vec2<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(true, false), !any(vec4<bool>(false, false, false, true)))));
    var_0 = !select(!vec2<bool>(arg_1.x <= u_input.a.x, any(vec3<bool>(true, true, var_0.x))), select(vec2<bool>(var_0.x, true), vec2<bool>(true, true), !var_0.x), select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), var_0.x), !vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, true))), true));
    let var_1 = vec2<u32>(~countOneBits(arg_0.b.x) >> (arg_0.b.x % 32u), _wgslsmith_mod_u32(1u, ~1u)) << (~arg_0.b.xw % vec2<u32>(32u));
    let var_2 = Struct_5(arg_1.x, var_1.x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-2146f, -516f, 765f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(356f, 891f, -291f) * vec3<f32>(189f, 1078f, 646f)), vec3<bool>(var_0.x, var_0.x, var_0.x)))))));
    var_0 = !vec2<bool>(!var_0.x, false);
    return (~(~countOneBits(vec4<u32>(1u, arg_0.b.x, var_2.b, var_2.b))) << (vec4<u32>(~_wgslsmith_clamp_u32(var_2.b, var_1.x, var_2.b), _wgslsmith_div_u32(1u, var_1.x) >> (~68115u % 32u), _wgslsmith_add_u32(var_1.x, 0u), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(arg_0.b.xyw, arg_0.b.wxz), _wgslsmith_mod_vec3_u32(arg_0.b.wzy, arg_0.b.wzy))) % vec4<u32>(32u))) | vec4<u32>(~93695u, min(~_wgslsmith_mult_u32(var_1.x, var_1.x), max(1u, 0u)), ~(~(~arg_0.b.x)), var_2.b);
}

fn func_2(arg_0: bool, arg_1: vec3<f32>) -> vec4<u32> {
    let var_0 = Struct_3(abs(~vec4<i32>(_wgslsmith_clamp_i32(2147483647i, -28483i, 0i), _wgslsmith_add_i32(u_input.a.x, 2147483647i), u_input.a.x, -61861i)), _wgslsmith_div_vec4_u32(func_3(Struct_3(firstTrailingBit(vec4<i32>(u_input.a.x, 16880i, u_input.a.x, u_input.a.x)), ~vec4<u32>(1u, 0u, 4294967295u, 1u)), firstTrailingBit(_wgslsmith_clamp_vec2_i32(u_input.a.xz, vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.yy))), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(47210u, 14811u), vec2<u32>(4294967295u, 4294967295u)), ~35495u), ~reverseBits(0u), max(1u, 0u), ~(~0u))));
    var var_1 = Struct_5(46695i, _wgslsmith_dot_vec3_u32(vec3<u32>(~(~var_0.b.x), _wgslsmith_dot_vec2_u32(~var_0.b.ww, min(var_0.b.ww, vec2<u32>(var_0.b.x, var_0.b.x))), var_0.b.x), var_0.b.wyy), _wgslsmith_f_op_vec3_f32(-arg_1));
    var var_2 = var_1.c.x;
    var var_3 = ~4294967295u;
    var var_4 = vec2<bool>(false, select(all(!vec2<bool>(arg_0, false)), any(!vec3<bool>(arg_0, true, arg_0)), arg_0));
    return var_0.b;
}

fn func_4(arg_0: vec4<u32>, arg_1: bool) -> u32 {
    let var_0 = Struct_1(!select(!vec3<bool>(true, arg_1, true), select(select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, true, arg_1), arg_1), vec3<bool>(false, true, arg_1), all(vec2<bool>(false, arg_1))), !vec3<bool>(false, false, arg_1)));
    var var_1 = vec4<u32>(arg_0.x, 4294967295u, ~_wgslsmith_clamp_u32(1u ^ arg_0.x, _wgslsmith_dot_vec3_u32(arg_0.xwx, func_3(Struct_3(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, 33687i), vec4<u32>(arg_0.x, 53236u, arg_0.x, 32013u)), u_input.a.zy).yzy), ~arg_0.x), _wgslsmith_mod_u32(arg_0.x, _wgslsmith_sub_u32(countOneBits(~arg_0.x), ~43817u)));
    var_1 = arg_0;
    let var_2 = Struct_3(-firstTrailingBit(-select(vec4<i32>(1i, u_input.a.x, -2147483647i, 0i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i), vec4<bool>(false, arg_1, arg_1, arg_1))), vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.x, 4294967295u), ~vec2<u32>(4294967295u, arg_0.x)), abs(abs(var_1.x) << (_wgslsmith_mod_u32(0u, 4294967295u) % 32u)), ~var_1.x));
    var var_3 = var_0.a.xz;
    return _wgslsmith_div_u32(66973u, func_2(true, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1301f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 394f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-318f, -234f)) + 1f))).x);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = ~func_4(firstTrailingBit(countOneBits(vec4<u32>(25309u, 1u, 28641u, 4294967295u))) & reverseBits(func_2(true, vec3<f32>(591f, 323f, 513f))), !(!all(arg_1.a.zx)));
    var var_1 = Struct_1(!vec3<bool>(all(vec4<bool>(false, true, false, arg_1.a.x)) && true, true, arg_1.a.x));
    var_1 = arg_1;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(ceil(-1310f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(882f + 755f) * -1000f));
    var_0 = 96307u;
    return ~(-(vec4<i32>(-2147483647i, arg_0.x, u_input.a.x, arg_0.x) << (vec4<u32>(1u, 0u, 4294967295u, 52630u) % vec4<u32>(32u))) | (vec4<i32>(-1i) * -(arg_0 >> (vec4<u32>(1u, 0u, 0u, 4294967295u) % vec4<u32>(32u)))));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_4) -> f32 {
    var var_0 = firstLeadingBit(~vec2<i32>(_wgslsmith_mult_i32(2147483647i, -arg_0.x), _wgslsmith_mult_i32(i32(-1i) * -36637i, _wgslsmith_dot_vec2_i32(u_input.a.xx, vec2<i32>(28594i, u_input.a.x)))));
    var_0 = ~(-arg_0.zz);
    var var_1 = reverseBits(-vec4<i32>(_wgslsmith_div_i32(i32(-1i) * -23797i, _wgslsmith_add_i32(1i, -506i)), countOneBits(2147483647i) >> (1u % 32u), arg_0.x, _wgslsmith_dot_vec2_i32(countOneBits(u_input.a.xx), ~vec2<i32>(u_input.a.x, u_input.a.x))));
    var_1 = vec4<i32>(firstTrailingBit(-1i), u_input.a.x, -71782i, -select(firstTrailingBit(58624i), var_0.x, all(select(vec4<bool>(arg_1.a, arg_1.a, arg_1.a, false), vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(true, arg_1.a, arg_1.a, arg_1.a)))));
    var_1 = -(vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(arg_0, vec4<i32>(var_0.x, -11613i, 0i, 25297i))) | _wgslsmith_mult_vec4_i32(-arg_0, countOneBits(~countOneBits(vec4<i32>(var_1.x, 2147483647i, 2147483647i, arg_0.x))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(855f))))), 1361f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(1u, 1u, 1u, 1u);
    let var_1 = firstTrailingBit((abs(u_input.a) ^ -(~u_input.a)) ^ abs(vec3<i32>(select(u_input.a.x, 1i, false), ~u_input.a.x, _wgslsmith_mult_i32(-1i, -1i))));
    var var_2 = _wgslsmith_f_op_f32(func_5(vec4<i32>(~u_input.a.x, var_1.x, var_1.x, _wgslsmith_dot_vec4_i32(func_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, var_1.x), Struct_1(vec3<bool>(true, false, false))), vec4<i32>(-1i) * -vec4<i32>(11004i, var_1.x, -44219i, 2821i))), Struct_4(var_0.x != (43467u | (var_0.x ^ 1u)))));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -142f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1240f * _wgslsmith_f_op_f32(f32(-1f) * -865f)) - _wgslsmith_f_op_f32(f32(-1f) * -1295f)))));
    var_2 = _wgslsmith_f_op_f32(abs(-829f));
    var var_3 = Struct_3(vec4<i32>(-1i) * -(~vec4<i32>(var_1.x, u_input.a.x, -1i, 1i)), var_0 | max(vec4<u32>(var_0.x, var_0.x, select(44331u, 2241u, true), 42929u), ~vec4<u32>(var_0.x, var_0.x, 4294967295u, var_0.x)));
    var_3 = Struct_3(firstTrailingBit(var_3.a), ~countOneBits(vec4<u32>(countOneBits(4294967295u), var_3.b.x << (1u % 32u), 50060u, 77291u & var_3.b.x)));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.x, var_3.a.x), vec2<i32>(var_3.a.x, var_3.a.x)), var_3.a.zz) & var_3.a.x, countOneBits(~(~var_3.b.x)));
}

