struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: bool) -> vec4<f32> {
    var var_0 = Struct_3(-arg_1.a, select(vec4<i32>(_wgslsmith_add_i32(-25736i, 1i), i32(-1i) * -arg_1.b.x, _wgslsmith_add_i32(-2147483647i >> (u_input.a.x % 32u), -12305i), 0i), vec4<i32>(arg_1.b.x ^ arg_1.b.x, arg_1.a, reverseBits(arg_1.b.x), -2147483647i) << (~reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 3959u, 1u)) % vec4<u32>(32u)), vec4<bool>(false, true, true, arg_0.x)), arg_1.d.b, Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-arg_1.d.a))), !arg_0.zxy));
    let var_1 = firstTrailingBit(~_wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a.x, u_input.a.x), vec4<u32>(92424u, 0u, 4294967295u, u_input.a.x)), min(~vec4<u32>(53582u, 0u, 82098u, u_input.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(0u, 4294967295u, u_input.a.x, 1u)))));
    let var_2 = _wgslsmith_div_vec3_i32(countOneBits(-(vec3<i32>(var_0.b.x, var_0.a, arg_1.b.x) & vec3<i32>(2147483647i, arg_1.b.x, arg_1.b.x))), ~_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.a, 14025i, var_0.a), abs(var_0.b.yxw)), _wgslsmith_add_vec3_i32(arg_1.b.yzy, select(arg_1.b.wyz, vec3<i32>(-10350i, 2147483647i, -12731i), false))));
    var var_3 = 62289u;
    var_0 = arg_1;
    return arg_1.d.a;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: vec2<f32>) -> bool {
    let var_0 = vec3<bool>(true, arg_0.b.x, true);
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_0.a)), vec4<f32>(1203f, -1245f, arg_2, arg_0.a.x)), arg_0.b), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(select(vec4<bool>(var_0.x, true, true, true), vec4<bool>(var_0.x, false, false, true), arg_0.b.x), Struct_3(24536i, vec4<i32>(-2147483647i, arg_1, arg_1, 1i), vec3<bool>(var_0.x, false, var_0.x), Struct_1(arg_0.a, var_0)), true)) + _wgslsmith_f_op_vec4_f32(-arg_0.a)), !vec3<bool>(arg_0.b.x, true, true)));
    let var_2 = 4031i;
    let var_3 = _wgslsmith_mult_vec4_u32(abs(vec4<u32>(0u, 18309u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, 1u))) | ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 103074u, u_input.a.x, u_input.a.x), vec4<u32>(15023u, u_input.a.x, u_input.a.x, u_input.a.x))), firstLeadingBit(min(~(vec4<u32>(u_input.a.x, u_input.a.x, 72597u, 0u) >> (vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), max(vec4<u32>(u_input.a.x, 9929u, 0u, u_input.a.x), vec4<u32>(14034u, 58525u, 21758u, 29315u)) ^ ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))));
    let var_4 = Struct_3(abs(select(var_2, _wgslsmith_dot_vec4_i32(vec4<i32>(32936i, -12323i, var_2, var_2), vec4<i32>(arg_1, 1i, arg_1, var_2)) << (24253u % 32u), !var_1.b.b.x)), ~(-vec4<i32>(-12437i, arg_1, select(arg_1, 0i, true), 1i)), var_1.b.b, var_1.a);
    return true;
}

fn func_1(arg_0: vec4<f32>) -> vec4<bool> {
    return !select(vec4<bool>(any(vec4<bool>(true, false, false, true)) || func_2(Struct_1(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 1000f), vec3<bool>(true, true, true)), 1i, arg_0.x, arg_0.zz), true || any(vec3<bool>(false, false, false)), all(vec3<bool>(false, true, false)), any(vec4<bool>(true, true, true, true))), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(305f + _wgslsmith_f_op_f32(748f * arg_0.x)) > _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(true, false, false, true), Struct_3(-2147483647i, vec4<i32>(1i, 0i, 2147483647i, -13992i), vec3<bool>(true, true, false), Struct_1(vec4<f32>(-718f, -223f, arg_0.x, -3160f), vec3<bool>(false, true, false))), false)).x, arg_0.x));
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_2.a.a.wy)));
    let var_1 = i32(-1i) * -4300i;
    let var_2 = vec3<bool>(arg_2.a.b.x, func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.b.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.b.a.x, 1559f, 1000f, var_0.x))) * _wgslsmith_f_op_vec4_f32(-arg_2.a.a)))).x, !arg_1.x);
    let var_3 = arg_0 | arg_0;
    let var_4 = var_1;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(arg_0, true, arg_1.x, arg_1.x), Struct_3(0i, vec4<i32>(var_4, var_1, var_1, var_4), var_2, arg_2.a), arg_0)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-783f, arg_2.a.a.x, var_0.x, arg_2.a.a.x), vec4<f32>(arg_2.a.a.x, arg_2.b.a.x, var_0.x, 1000f)))), arg_2.b.a)), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_4(any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), func_1(vec4<f32>(-192f, -1056f, 1000f, 186f)))), vec3<bool>(func_2(Struct_1(vec4<f32>(1794f, 2038f, 347f, 995f), vec3<bool>(false, true, true)), 1i, -933f, vec2<f32>(1f, 1f)), true, any(vec2<bool>(false, false))), Struct_2(Struct_1(vec4<f32>(-1000f, -467f, -1432f, 618f), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(2403f, 964f, 451f, 652f))), vec3<bool>(true, true, false)))), func_4(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))), vec3<bool>(true, !select(true, true, true), !all(vec4<bool>(true, false, true, true))), Struct_2(func_4(func_1(vec4<f32>(610f, -1131f, -1912f, 746f)).x, vec3<bool>(true, true, true), Struct_2(Struct_1(vec4<f32>(1106f, 658f, 544f, 452f), vec3<bool>(true, true, true)), Struct_1(vec4<f32>(521f, -523f, -1233f, -1213f), vec3<bool>(false, true, false)))), func_4(any(vec3<bool>(false, false, true)), vec3<bool>(true, true, true), Struct_2(Struct_1(vec4<f32>(-1370f, 655f, -1156f, -698f), vec3<bool>(false, false, true)), Struct_1(vec4<f32>(262f, -1096f, 1000f, -2123f), vec3<bool>(false, true, false)))))));
    var var_1 = 46502u;
    var_0 = Struct_2(var_0.b, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b.a) - _wgslsmith_f_op_vec4_f32(-var_0.a.a))), vec3<bool>(true, true, any(!var_0.a.b.yx))));
    let var_2 = !vec4<bool>(all(!select(vec4<bool>(false, var_0.a.b.x, true, false), vec4<bool>(true, true, false, var_0.a.b.x), vec4<bool>(false, false, var_0.a.b.x, false))), true, var_0.a.b.x, !(!all(vec2<bool>(var_0.b.b.x, var_0.b.b.x))));
    var var_3 = var_0.a.a.zzw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(reverseBits(u_input.a.x), u_input.a.x)), ~(~u_input.a.xz)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(165f, -1605f, var_0.b.a.x, 620f)) + var_0.b.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1308f, var_3.x, var_0.b.a.x, -1007f), vec4<f32>(-1364f, 1176f, var_0.b.a.x, 615f))), vec4<f32>(737f, var_3.x, var_0.b.a.x, 624f))) - _wgslsmith_f_op_vec4_f32(-var_0.a.a)));
}

