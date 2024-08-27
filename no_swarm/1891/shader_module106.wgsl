struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: bool) -> f32 {
    let var_0 = true | any(arg_0.a.yx);
    var var_1 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) - _wgslsmith_f_op_f32(f32(-1f) * -385f)));
    var var_2 = Struct_3(!arg_0.a.yy, Struct_2(-arg_1.a));
    let var_3 = Struct_2(var_2.b.a);
    let var_4 = 2147483647i >> (reverseBits(select(~(~1u), ~u_input.c, !arg_0.a.x)) % 32u);
    return 1697f;
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    var var_0 = vec4<bool>(any(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))), true, false, !(!(!select(true, true, true))));
    let var_1 = select(!var_0.xyz, var_0.xxw, true);
    var var_2 = true;
    var_0 = select(!select(select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(var_1.x, false, false, var_0.x), !vec4<bool>(true, true, var_1.x, false)), vec4<bool>(any(vec3<bool>(false, true, var_1.x)), arg_0.x >= 51850u, all(vec4<bool>(true, var_0.x, var_0.x, var_1.x)), select(true, var_1.x, var_1.x)), select(vec4<bool>(var_0.x, var_1.x, false, true), select(vec4<bool>(true, var_1.x, false, true), vec4<bool>(true, false, false, var_0.x), vec4<bool>(var_0.x, true, true, var_1.x)), select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, false, true, var_0.x), var_1.x))), !select(vec4<bool>(var_0.x, false, var_0.x, !var_0.x), select(select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(false, var_0.x, var_1.x, false), false), select(vec4<bool>(true, var_1.x, var_0.x, var_0.x), vec4<bool>(true, true, false, true), false), true), vec4<bool>(true == var_1.x, var_0.x, true, all(vec4<bool>(var_1.x, false, false, var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-384f * 521f)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(false, var_1.x, var_1.x), arg_0.zy, arg_0, vec2<i32>(u_input.a, u_input.a)), Struct_2(vec2<i32>(u_input.a, u_input.a)), abs(vec3<u32>(48060u, 7025u, 4294967295u)), false)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(var_1, vec2<u32>(50693u, u_input.b), arg_0, vec2<i32>(-1i, 13869i)), Struct_2(vec2<i32>(0i, 0i)), vec3<u32>(u_input.c, 13239u, u_input.c), true)))));
    let var_3 = Struct_2(select(reverseBits(vec2<i32>(~1i, u_input.a)), vec2<i32>(u_input.a << (1u % 32u), _wgslsmith_sub_i32(18227i, -44320i)) ^ (vec2<i32>(u_input.a, -4224i) >> (~arg_0.xx % vec2<u32>(32u))), _wgslsmith_mult_i32(i32(-1i) * -8544i, u_input.a) >= 2147483647i));
    return Struct_3(var_1.yz, var_3);
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: u32, arg_3: vec2<u32>) -> vec4<i32> {
    var var_0 = u_input.a;
    var_0 = 108165i;
    var_0 = min(~u_input.a, -29264i);
    var var_1 = 29731u;
    var var_2 = func_2(~firstTrailingBit(vec3<u32>(arg_0, 47950u, 1u)) ^ _wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.b, arg_2, arg_2)), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(21471u, u_input.b, arg_3.x), vec3<u32>(4294967295u, 286u, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, arg_3.x, 4294967295u), vec3<u32>(arg_2, 21005u, u_input.b)), ~vec3<u32>(0u, 4294967295u, u_input.c))));
    return _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(min(1i, _wgslsmith_mult_i32(u_input.a, var_2.b.a.x)), countOneBits(_wgslsmith_mod_i32(u_input.a, 1822i)), var_2.b.a.x, _wgslsmith_sub_i32(min(0i, 15727i), var_2.b.a.x)), -(~(~vec4<i32>(var_2.b.a.x, -2147483647i, 54202i, u_input.a)))), firstTrailingBit(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(0i, -33092i, -1i, 0i), vec4<i32>(-27313i, var_2.b.a.x, u_input.a, 62931i), vec4<i32>(u_input.a, var_2.b.a.x, var_2.b.a.x, u_input.a) << (vec4<u32>(u_input.c, arg_3.x, arg_0, 4294967295u) % vec4<u32>(32u))), vec4<i32>(21380i, 2147483647i, i32(-1i) * -2147483647i, u_input.a))));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool) -> vec3<i32> {
    let var_0 = arg_0.zyy;
    let var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(1u, abs(4294967295u) & u_input.b, ~abs(36040u) >> (u_input.c % 32u)), select(min(select(~vec3<u32>(4294967295u, 0u, u_input.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 27135u, u_input.c), vec3<u32>(4294967295u, u_input.c, u_input.b), vec3<u32>(23436u, 7620u, u_input.c)), any(vec3<bool>(true, false, arg_1))), vec3<u32>(38638u, 1u, _wgslsmith_add_u32(50306u, u_input.c))), vec3<u32>(max(~57918u, ~u_input.c), 4294967295u, u_input.c), !select(false, arg_1, arg_1) & any(select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(arg_1, arg_1, false), vec3<bool>(true, false, arg_1)))));
    var var_2 = i32(-1i) * -1i;
    var_2 = _wgslsmith_mult_i32(-1i, _wgslsmith_mod_i32(-47472i, 26192i));
    var_2 = ~abs(arg_0.x);
    return -(reverseBits(-vec3<i32>(34371i, -2147483647i, arg_0.x)) & var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_sub_vec4_i32(vec4<i32>(35402i, 0i, u_input.a, u_input.a) & _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 13986i, u_input.a, u_input.a), vec4<i32>(-2147483647i, u_input.a, 8473i, u_input.a)), func_1(u_input.c, vec4<bool>(true, true, true, true), u_input.b, max(vec2<u32>(u_input.b, 23525u), vec2<u32>(u_input.c, 24023u)))) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(abs(u_input.c), 4024u, u_input.c, reverseBits(u_input.c)), countOneBits(select(vec4<u32>(29401u, 51574u, u_input.b, u_input.b), vec4<u32>(0u, 53749u, u_input.c, 11131u), false))) % vec4<u32>(32u)), (_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-654f)), _wgslsmith_f_op_f32(f32(-1f) * -192f)) < _wgslsmith_f_op_f32(step(-501f, _wgslsmith_div_f32(527f, -2007f)))) | true);
    let var_1 = Struct_3(vec2<bool>(false, all(vec3<bool>(true, true, true)) && true), func_2(vec3<u32>(8823u, min(0u, 31672u) | _wgslsmith_sub_u32(u_input.b, 10232u), 1u)).b);
    let var_2 = var_1.a;
    var var_3 = select(select(!vec4<bool>(any(vec3<bool>(var_1.a.x, false, false)), !var_2.x, true, func_2(vec3<u32>(4294967295u, u_input.b, u_input.b)).a.x), !select(!vec4<bool>(var_2.x, var_1.a.x, var_2.x, true), !vec4<bool>(var_2.x, false, var_1.a.x, var_2.x), false), var_1.a.x), vec4<bool>(select(!var_1.a.x, var_1.a.x, true) || true, var_2.x, true, (i32(-1i) * -2147483647i) >= u_input.a), vec4<bool>(true, var_1.a.x, !any(var_1.a), any(vec4<bool>(-32772i <= var_0.x, true, true, any(vec4<bool>(var_2.x, false, var_2.x, true))))));
    let var_4 = Struct_1(var_3.zyy, vec2<u32>(countOneBits(19861u), 2615u), abs((_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 4294967295u, 58020u), vec3<u32>(0u, 23456u, 10495u)) ^ select(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(u_input.c, u_input.c, 4294967295u), var_3.x)) ^ (abs(vec3<u32>(u_input.c, u_input.c, 4294967295u)) | vec3<u32>(0u, 0u, u_input.c))), ~func_1(~u_input.c, !select(vec4<bool>(true, var_2.x, var_1.a.x, var_2.x), vec4<bool>(true, false, true, var_2.x), false), 52525u | ~u_input.c, vec2<u32>(~0u, _wgslsmith_mult_u32(10781u, u_input.b))).wy);
    let x = u_input.a;
    s_output = StorageBuffer(-485f, select(vec4<i32>(-2147483647i, _wgslsmith_add_i32(var_1.b.a.x, ~(-11426i)), _wgslsmith_mult_i32(var_1.b.a.x, ~2147483647i), reverseBits(var_4.d.x)), -(~(-vec4<i32>(var_0.x, -1i, 2147483647i, var_0.x))), var_1.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(849f, 1396f, 271f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -564f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(486f, 1000f, -246f, 928f), vec4<f32>(-1000f, -1479f, -1235f, -975f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-235f, 892f, -1401f, 103f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-588f, -734f, 1536f, -1947f), vec4<f32>(-1235f, 2719f, 1000f, -828f), vec4<bool>(false, false, true, var_2.x))), vec4<f32>(-303f, 936f, 1095f, 701f), var_4.a.x)))), -2392f);
}

