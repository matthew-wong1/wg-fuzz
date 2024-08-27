struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<f32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-10346i, 2147483647i, -235i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    global0 = ~abs(vec3<i32>(abs(1i), 32357i, global0.x));
    global0 = _wgslsmith_sub_vec3_i32(select(_wgslsmith_mult_vec3_i32(~vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(17225i, global0.x, 30579i) | vec3<i32>(2147483647i, 4488i, 2168i)) >> (u_input.a % vec3<u32>(32u)), -reverseBits(vec3<i32>(global0.x, global0.x, global0.x)) & -select(vec3<i32>(global0.x, -2147483647i, 1i), vec3<i32>(-2147483647i, 4667i, global0.x), true), !vec3<bool>(all(vec3<bool>(true, true, true)), true, true)), max(~vec3<i32>(global0.x, global0.x, global0.x) << (~u_input.a % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-15164i, global0.x), 51419i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, global0.x, 8652i), vec3<i32>(7167i, global0.x, 46345i))), _wgslsmith_mult_vec3_i32(vec3<i32>(-52365i, 4622i, global0.x), vec3<i32>(2147483647i, global0.x, global0.x)))));
    let var_0 = Struct_3(true, global0.x);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -877f), _wgslsmith_f_op_f32(f32(-1f) * -649f)))));
    global0 = vec3<i32>(-(~2147483647i), global0.x, ~global0.x);
    return all(vec4<bool>(true, true, !(!(!var_0.a)), var_0.a));
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    global0 = (-(~min(vec3<i32>(global0.x, -3349i, 2147483647i), vec3<i32>(global0.x, -1i, -1i))) & vec3<i32>(global0.x & 1i, _wgslsmith_add_i32(-2147483647i, global0.x) | -1i, -69426i)) | countOneBits(vec3<i32>(global0.x >> (u_input.a.x % 32u), 5528i, global0.x));
    let var_0 = select(!(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false))), vec4<bool>(true | func_3(max(arg_0.zx, vec2<u32>(12583u, 108374u))), true, all(vec3<bool>(all(vec2<bool>(false, true)), true, true)), true), select(!(!all(vec3<bool>(false, true, true))), all(vec3<bool>(true, true, true)), false));
    let var_1 = -2147483647i;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -855f))))));
    return Struct_3(all(!select(!var_0.wy, select(vec2<bool>(false, true), var_0.zz, var_0.x), select(var_0.xy, vec2<bool>(var_0.x, var_0.x), true))), -35262i);
}

fn func_4(arg_0: Struct_3) -> vec3<i32> {
    var var_0 = false;
    let var_1 = Struct_1(vec3<bool>(-41829i < arg_0.b, any(!(!vec4<bool>(false, true, arg_0.a, true))), all(select(vec4<bool>(false, false, arg_0.a, arg_0.a), select(vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a), vec4<bool>(arg_0.a, true, arg_0.a, false), vec4<bool>(true, true, true, arg_0.a)), select(vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a), vec4<bool>(false, false, arg_0.a, false), arg_0.a)))), select(vec4<i32>(arg_0.b, arg_0.b, global0.x, ~arg_0.b), _wgslsmith_sub_vec4_i32(~vec4<i32>(global0.x, 1i, 18707i, -4i), _wgslsmith_div_vec4_i32(vec4<i32>(global0.x, arg_0.b, arg_0.b, 0i), vec4<i32>(arg_0.b, arg_0.b, arg_0.b, arg_0.b))), vec4<bool>(true, true, arg_0.a, false)) & vec4<i32>(_wgslsmith_mod_i32(global0.x, arg_0.b) >> (u_input.a.x % 32u), -1i, _wgslsmith_mult_i32(global0.x, _wgslsmith_div_i32(global0.x, arg_0.b)), _wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, global0.x, -10612i), vec3<i32>(global0.x, -6226i, 1i), arg_0.a), abs(vec3<i32>(global0.x, -50062i, 27069i)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1148f, 1026f))))));
    var_0 = 1000f != _wgslsmith_f_op_f32(trunc(var_2.x));
    let var_3 = var_2.x;
    return var_1.b.zwx;
}

fn func_1() -> vec3<i32> {
    global0 = _wgslsmith_sub_vec3_i32((func_4(func_2(vec3<u32>(70252u, 4294967295u, u_input.a.x))) | (firstLeadingBit(vec3<i32>(-2147483647i, global0.x, 2147483647i)) << ((u_input.a & u_input.a) % vec3<u32>(32u)))) ^ min(vec3<i32>(global0.x, firstTrailingBit(-29599i), global0.x), vec3<i32>(global0.x, 34674i, max(global0.x, 7970i))), _wgslsmith_div_vec3_i32(countOneBits(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(43269i, global0.x, global0.x), vec3<i32>(1i, global0.x, -2147483647i), vec3<i32>(1i, 1i, global0.x)), _wgslsmith_add_vec3_i32(vec3<i32>(17995i, global0.x, global0.x), vec3<i32>(global0.x, global0.x, -18027i)), vec3<i32>(global0.x, global0.x, -1i))), -_wgslsmith_sub_vec3_i32(~vec3<i32>(51784i, global0.x, -31906i), ~vec3<i32>(38166i, global0.x, -37629i))));
    var var_0 = vec4<u32>(u_input.a.x, firstTrailingBit(firstLeadingBit(_wgslsmith_mult_u32(93091u, 1u))), ~0u, u_input.a.x);
    global0 = abs(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(-2147483647i, global0.x, global0.x), vec3<i32>(29922i, 0i, 0i)), -select(vec3<i32>(2147483647i, global0.x, 0i), vec3<i32>(-2147483647i, -51623i, global0.x), true))) ^ -firstTrailingBit(func_4(func_2(u_input.a)));
    var_0 = firstLeadingBit(~min(vec4<u32>(var_0.x, 34946u, 1u, 1u), vec4<u32>(firstLeadingBit(57779u), 0u, 48304u, reverseBits(u_input.a.x))));
    let var_1 = max(vec2<u32>(~1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 17936u), ~vec2<u32>(0u, 0u))), ~u_input.a.yz) ^ u_input.a.xx;
    return -(~vec3<i32>(-(~1i), func_4(func_2(var_0.xwx)).x, -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.x, global0.x, -2147483647i), vec3<i32>(1i, global0.x, -1i), vec3<i32>(13631i, global0.x, 1i)) & ~vec3<i32>(global0.x, global0.x, global0.x), -vec3<i32>(2147483647i, global0.x, 1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, global0.x | -41701i, _wgslsmith_mod_i32(global0.x, global0.x)), ~select(vec3<i32>(global0.x, 0i, 0i), vec3<i32>(global0.x, global0.x, global0.x), true))) ^ func_1();
    global0 = vec3<i32>(~(~global0.x ^ select(global0.x & 0i, ~1i, true)), _wgslsmith_dot_vec3_i32(func_4(func_2(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 64479u, u_input.a.x), u_input.a))), abs(func_4(Struct_3(true, global0.x)))), -(~2147483647i));
    var var_0 = _wgslsmith_sub_vec2_u32(~u_input.a.xy, vec2<u32>(4294967295u, u_input.a.x));
    var_0 = ~(~select(~u_input.a.xx >> (~vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), select(u_input.a.zx, u_input.a.yz, vec2<bool>(true, false))), !select(vec2<bool>(false, false), vec2<bool>(true, false), true)));
    var var_1 = select(vec4<bool>(false, !all(vec4<bool>(true, true, true, true)), !all(vec3<bool>(true, true, false)), true), vec4<bool>(true, var_0.x > _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 1u, 20049u), vec4<u32>(var_0.x, u_input.a.x, var_0.x, 53680u)), any(vec4<bool>(global0.x != global0.x, true, false, true)), false), !(!(!all(vec4<bool>(false, true, false, false)))));
    var var_2 = Struct_4(Struct_1(vec3<bool>(false, true, true), abs(min(~vec4<i32>(1i, 0i, 3219i, global0.x), _wgslsmith_sub_vec4_i32(vec4<i32>(21638i, global0.x, -102i, global0.x), vec4<i32>(-2147483647i, -1i, 15993i, -19468i))))), !select(!vec3<bool>(var_1.x, true, false), select(select(var_1.wzz, vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(false, false, var_1.x)), vec3<bool>(var_1.x, false, var_1.x), true), !vec3<bool>(var_1.x, false, false)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(585f, -1466f, 627f, -1511f) - vec4<f32>(322f, -367f, -1000f, -469f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-267f, -599f, -213f, -205f), vec4<f32>(334f, 251f, -603f, 1278f), var_1.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-508f, -585f, -559f, -615f)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-131f, 1721f, -1963f, -730f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1698f, 785f, 143f, 522f) + vec4<f32>(1453f, 746f, -2013f, 100f)))))), Struct_3(!any(vec2<bool>(true, true)), _wgslsmith_mod_i32(global0.x, firstTrailingBit(global0.x)) ^ (i32(-1i) * -271i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(135f, var_2.c.x, -895f)));
}

