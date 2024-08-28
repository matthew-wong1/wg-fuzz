struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(false, true, true, false, true, true, true, false, true, true, true, false, true, true, true, true, true, true, false, true, true, true, true, true);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: bool) -> f32 {
    global0 = array<bool, 24>();
    var var_0 = firstTrailingBit(arg_0.b.x);
    var var_1 = select(select(select(vec4<bool>(true, arg_2 || true, arg_0.a.a.x, any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 24u)], true, arg_0.a.a.x, arg_0.a.a.x))), select(!vec4<bool>(arg_0.a.a.x, arg_2, arg_0.a.a.x, global0[_wgslsmith_index_u32(arg_0.b.x, 24u)]), vec4<bool>(false, arg_0.a.a.x, arg_2, arg_0.a.a.x), !vec4<bool>(arg_2, false, true, true)), all(!vec4<bool>(true, arg_0.a.a.x, arg_2, true))), vec4<bool>(select(!arg_0.a.a.x, true, all(vec2<bool>(arg_2, true))), true, true, true), vec4<bool>(any(vec4<bool>(false, arg_0.a.a.x, false, true)), global0[_wgslsmith_index_u32(min(arg_0.b.x, arg_0.b.x << (arg_0.b.x % 32u)), 24u)], any(vec4<bool>(true, true, arg_2, false)), arg_1.x == 1439f)), select(!vec4<bool>(false, arg_0.a.a.x, !arg_0.a.a.x, !arg_0.a.a.x), vec4<bool>(select(any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 24u)], true, global0[_wgslsmith_index_u32(u_input.e.x, 24u)], arg_0.a.a.x)), arg_2, arg_0.a.a.x), _wgslsmith_f_op_f32(step(548f, 1167f)) != _wgslsmith_f_op_f32(ceil(1416f)), any(select(vec2<bool>(false, true), vec2<bool>(false, arg_0.a.a.x), vec2<bool>(arg_0.a.a.x, true))), false), !(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(u_input.e.x, 24u)], global0[_wgslsmith_index_u32(1u, 24u)], true))), select(select(vec4<bool>(false & global0[_wgslsmith_index_u32(arg_0.b.x, 24u)], false, !arg_2, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, arg_1.x < arg_1.x, any(vec3<bool>(false, false, true)))), vec4<bool>(!(global0[_wgslsmith_index_u32(4502u, 24u)] | global0[_wgslsmith_index_u32(4140u, 24u)]), true, all(vec4<bool>(true, arg_0.a.a.x, false, global0[_wgslsmith_index_u32(1u, 24u)])), true | any(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.b.x, 24u)], true, true, false))), arg_1.x != _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), _wgslsmith_f_op_f32(arg_1.x + arg_1.x))));
    var var_2 = ~_wgslsmith_mult_vec4_u32(~(vec4<u32>(arg_0.b.x, arg_0.b.x, 1u, arg_0.b.x) & ~vec4<u32>(51653u, u_input.d.x, 51182u, 35727u)), vec4<u32>(30017u, _wgslsmith_mod_u32(firstLeadingBit(69597u), _wgslsmith_mod_u32(0u, u_input.d.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 973u) << (arg_0.b % vec2<u32>(32u)), ~arg_0.b), _wgslsmith_add_u32(65485u, _wgslsmith_div_u32(u_input.d.x, 867u))));
    var var_3 = any(!select(arg_0.a.a, arg_0.a.a, !(!vec3<bool>(global0[_wgslsmith_index_u32(var_2.x, 24u)], var_1.x, false))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_1.x)))))) * -733f);
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<bool>) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(745f)), _wgslsmith_f_op_f32(-arg_2.c), arg_2.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.e.x, -1451f, -427f)))) * vec3<f32>(842f, 959f, _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], false, arg_3.x), vec4<i32>(arg_2.d, arg_1.b.x, -43289i, -28940i)), u_input.e.zz), vec2<f32>(-1000f, -1772f), global0[_wgslsmith_index_u32(u_input.d.x, 24u)]))))))));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(!(!select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 24u)], global0[_wgslsmith_index_u32(10414u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)]), select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], true), vec3<bool>(global0[_wgslsmith_index_u32(0u, 24u)], true, true), vec3<bool>(true, global0[_wgslsmith_index_u32(23488u, 24u)], false)), select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), vec3<bool>(global0[_wgslsmith_index_u32(32629u, 24u)], global0[_wgslsmith_index_u32(u_input.d.x, 24u)], true), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.e.x, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)])))), _wgslsmith_div_vec4_i32(vec4<i32>(71568i, -55237i, ~u_input.c, -47692i) << (~max(vec4<u32>(38308u, 1u, 91179u, 12996u), vec4<u32>(15627u, 10054u, 0u, u_input.e.x)) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(firstLeadingBit(firstLeadingBit(vec4<i32>(-1i, u_input.c, -1i, -27814i))), vec4<i32>(-37480i, 0i, arg_0.d, -u_input.c))));
    let var_1 = arg_0.d;
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    let var_2 = select(var_0.a, select(!select(!var_0.a, !var_0.a, var_0.a), select(!(!var_0.a), var_0.a, !select(var_0.a, vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 24u)], global0[_wgslsmith_index_u32(u_input.d.x, 24u)], false), true)), !(!all(var_0.a))), !var_0.a);
    return Struct_2(!(!select(!var_2, !vec3<bool>(var_0.a.x, var_0.a.x, false), vec3<bool>(global0[_wgslsmith_index_u32(47232u, 24u)], true, var_0.a.x))), vec4<i32>(~var_1, _wgslsmith_mod_i32(-reverseBits(-35737i), ~u_input.c ^ 0i), _wgslsmith_dot_vec3_i32(reverseBits(var_0.b.wzw), vec3<i32>(var_1, var_1, ~14817i)), reverseBits(-4104i)));
}

fn func_1(arg_0: i32, arg_1: bool) -> i32 {
    global0 = array<bool, 24>();
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(633f, -1596f, -643f))) - _wgslsmith_f_op_vec3_f32(func_2(arg_0, Struct_2(vec3<bool>(false, false, false), vec4<i32>(1997i, arg_0, 10119i, arg_0)), Struct_1(vec3<f32>(669f, 130f, -1277f), -1167f, 2172f, -2147483647i, vec4<f32>(1495f, 269f, 283f, 428f)), vec4<bool>(true, arg_1, true, global0[_wgslsmith_index_u32(u_input.a.x, 24u)]))))), 1300f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-917f + _wgslsmith_f_op_f32(-1520f * -1899f)) - _wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(381f, -334f))), 449i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(108f, 978f, -1019f, -1329f) * vec4<f32>(-388f, 1247f, 1469f, -501f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-679f, -1000f, -553f, 869f))))));
    var_0 = Struct_2(select(!vec3<bool>(arg_1, arg_1, all(var_0.a)), var_0.a, var_0.a), ~abs(countOneBits(var_0.b)));
    return ~_wgslsmith_mod_i32(u_input.b, -(~(i32(-1i) * -2147483647i)));
}

fn func_5(arg_0: i32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-149f, -1224f, -425f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1752f, 264f, -527f) + vec3<f32>(1778f, -544f, 1349f)))))), -419f, 1538f, (-1i << (u_input.d.x % 32u)) ^ u_input.c, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1456f), 3714f, 1474f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3062f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-209f * -283f))))));
    let var_1 = Struct_1(var_0.a, -930f, var_0.e.x, firstTrailingBit(firstTrailingBit(-14339i)), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -406f) + _wgslsmith_f_op_f32(f32(-1f) * -1189f)))), _wgslsmith_f_op_f32(select(-293f, var_0.a.x, all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], false, true, false)))), -266f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -154f) * -853f)));
    var var_2 = Struct_3(Struct_2(func_4(var_0).a, ~(func_4(var_0).b ^ _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_1.d, 2147483647i, u_input.b), vec4<i32>(var_0.d, -2147483647i, 20991i, 0i)))), max(~_wgslsmith_add_vec2_u32(select(u_input.e.yx, vec2<u32>(0u, 38964u), global0[_wgslsmith_index_u32(4294967295u, 24u)]), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 95122u), vec2<u32>(0u, u_input.e.x))), vec2<u32>(~select(u_input.a.x, 68505u, true), u_input.d.x ^ (u_input.e.x | 4294967295u))));
    var_2 = Struct_3(var_2.a, min(vec2<u32>(reverseBits(0u), (var_2.b.x & var_2.b.x) >> (~var_2.b.x % 32u)), vec2<u32>(_wgslsmith_div_u32(1u, ~93360u), _wgslsmith_dot_vec2_u32(~var_2.b, vec2<u32>(17162u, 1u)))));
    let var_3 = var_0;
    return firstTrailingBit(~17745u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(countOneBits(reverseBits(~u_input.d.x)), firstTrailingBit(u_input.a.x << ((u_input.d.x & u_input.d.x) % 32u)), ~_wgslsmith_sub_u32(~u_input.d.x, firstTrailingBit(u_input.e.x))));
    var var_1 = ~func_5(~(u_input.c ^ func_1(u_input.b, false)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-804f, -781f, _wgslsmith_f_op_f32(sign(403f)), _wgslsmith_f_op_f32(1291f - _wgslsmith_div_f32(136f, -286f))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-338f, 481f, 156f, 1700f), vec4<f32>(-572f, -182f, -246f, -894f), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 24u)], true, global0[_wgslsmith_index_u32(1u, 24u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1063f, -101f, -1000f, -435f) * vec4<f32>(-1204f, 264f, 145f, -1947f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-929f, -310f, -1446f, -354f) - vec4<f32>(-1324f, -587f, -2255f, 1936f)))))));
    var_1 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 120806u, ~_wgslsmith_mult_u32(u_input.d.x, 16323u), abs(var_0.x)), vec4<u32>(~(u_input.d.x & u_input.a.x), ~u_input.a.x << (~var_0.x % 32u), countOneBits(_wgslsmith_add_u32(var_0.x, u_input.e.x)), var_0.x ^ _wgslsmith_add_u32(4006u, u_input.d.x)));
    var_0 = abs(~u_input.e | u_input.a);
    var_0 = _wgslsmith_mod_vec3_u32(~u_input.a, ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e.x, 4294967295u, u_input.a.x), ~u_input.e) ^ vec3<u32>(var_0.x, 54574u, u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_2.x, var_2.x, global0[_wgslsmith_index_u32(var_0.x, 24u)])))), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(ceil(var_2.x)))), var_2)), 790f);
}

