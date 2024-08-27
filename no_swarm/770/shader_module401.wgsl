struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 24>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<bool>) -> bool {
    let var_0 = Struct_3(Struct_2(52119i, 1u, vec3<bool>(arg_2.x, true, true)), vec4<f32>(-121f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))), _wgslsmith_f_op_f32(trunc(-402f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b + arg_1.b) - arg_1.a.x)))));
    let var_1 = global0[_wgslsmith_index_u32(~(~0u ^ var_0.a.b), 24u)];
    var var_2 = var_1.a.x;
    let var_3 = vec4<f32>(-697f, -908f, _wgslsmith_f_op_f32(trunc(-1302f)), _wgslsmith_f_op_f32(-var_0.b.x));
    var var_4 = var_0.a.c.yz;
    return true || (var_4.x || (var_0.a.a == firstTrailingBit(_wgslsmith_mod_i32(var_1.b.x, 2147483647i))));
}

fn func_2(arg_0: Struct_3) -> vec3<bool> {
    var var_0 = -101f;
    return select(!(!arg_0.a.c), vec3<bool>(arg_0.a.c.x, arg_0.a.c.x, arg_0.a.c.x | func_3(abs(vec2<i32>(-61937i, -39834i)), Struct_1(vec3<f32>(-646f, 622f, arg_0.b.x), 556f), !vec3<bool>(arg_0.a.c.x, false, arg_0.a.c.x))), select(!(!(!arg_0.a.c)), !arg_0.a.c, !(!select(arg_0.a.c.x, arg_0.a.c.x, arg_0.a.c.x))));
}

fn func_1(arg_0: vec4<f32>) -> bool {
    global0 = array<Struct_4, 24>();
    var var_0 = select(select(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), false), func_2(Struct_3(Struct_2(-2147483647i, u_input.b.x, vec3<bool>(false, false, false)), vec4<f32>(-583f, -206f, arg_0.x, 935f))), select(u_input.a.x, u_input.a.x, true) <= reverseBits(1717u))), select(!func_2(Struct_3(Struct_2(-18336i, 1u, vec3<bool>(false, false, true)), vec4<f32>(arg_0.x, arg_0.x, 1932f, -1000f))), vec3<bool>(false, true, true), !func_2(Struct_3(Struct_2(0i, u_input.a.x, vec3<bool>(false, true, false)), vec4<f32>(-893f, 739f, 2424f, 542f)))), all(select(vec2<bool>(true, true), vec2<bool>(u_input.a.x > 0u, all(vec4<bool>(true, false, false, false))), select(vec2<bool>(true, true), func_2(Struct_3(Struct_2(23609i, u_input.b.x, vec3<bool>(false, true, true)), arg_0)).xx, 46101u <= u_input.b.x))));
    var var_1 = _wgslsmith_mod_vec4_i32(-_wgslsmith_div_vec4_i32(firstTrailingBit(~vec4<i32>(-35304i, -37393i, 51384i, -32522i)), -vec4<i32>(26364i, -1650i, 2147483647i, -1i)), vec4<i32>(2147483647i, _wgslsmith_div_i32(abs(31516i), -2147483647i), abs(1i) << (~_wgslsmith_div_u32(u_input.a.x, u_input.a.x) % 32u), 1i | (0i << (_wgslsmith_mod_u32(u_input.a.x, 91824u) % 32u))));
    var var_2 = Struct_3(Struct_2(_wgslsmith_dot_vec3_i32(var_1.yyy, _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(var_1.wxz, vec3<i32>(var_1.x, var_1.x, var_1.x)), var_1.xyw)), _wgslsmith_mult_u32(0u, _wgslsmith_sub_u32(select(u_input.a.x, 44599u, var_0.x), ~u_input.a.x)), select(func_2(Struct_3(Struct_2(-1i, u_input.b.x, vec3<bool>(var_0.x, false, false)), vec4<f32>(999f, arg_0.x, arg_0.x, arg_0.x))), vec3<bool>(var_0.x || true, true, true), !var_0.x)), vec4<f32>(_wgslsmith_f_op_f32(640f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), 715f, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1534f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) + arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(490f)) + arg_0.x)));
    var var_3 = !select(vec4<bool>(!(var_2.a.c.x || true), arg_0.x <= _wgslsmith_f_op_f32(-var_2.b.x), false, any(vec4<bool>(true, var_2.a.c.x, var_0.x, true))), vec4<bool>(false, !func_3(var_1.xx, Struct_1(vec3<f32>(-1054f, arg_0.x, -1750f), 1969f), vec3<bool>(false, false, var_0.x)), ~0u >= _wgslsmith_sub_u32(u_input.b.x, var_2.a.b), !all(vec2<bool>(false, var_2.a.c.x))), var_0.x);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(vec3<bool>(any(vec2<bool>(true, false)), func_1(vec4<f32>(1424f, 288f, -1579f, 835f)), true), func_2(Struct_3(Struct_2(-33952i, u_input.b.x, vec3<bool>(false, false, true)), vec4<f32>(-1080f, -1364f, -1857f, -1068f))), true));
    global0 = array<Struct_4, 24>();
    global0 = array<Struct_4, 24>();
    let var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1390f, -684f, 512f), vec3<f32>(-1198f, -250f, 228f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(789f, 601f, -1275f))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 2160f, -317f))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1299f), -615f, _wgslsmith_f_op_f32(-356f - 1000f)), vec3<f32>(_wgslsmith_f_op_f32(step(-965f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -548f), _wgslsmith_f_op_f32(min(-382f, 473f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1421f)), _wgslsmith_div_f32(1086f, -140f), true)) - 1189f), -1483f, true)));
    let var_2 = select(~vec4<u32>(~34835u, countOneBits(~u_input.b.x), u_input.a.x, _wgslsmith_div_u32(u_input.b.x, ~u_input.a.x)), vec4<u32>(u_input.a.x, max(u_input.a.x, u_input.b.x), firstLeadingBit(49675u), u_input.a.x), var_0.x);
    let var_3 = var_1;
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(var_3.b + 1129f), var_3.b);
    var var_5 = vec4<u32>(4294967295u >> (~((u_input.a.x >> (4294967295u % 32u)) >> (4294967295u % 32u)) % 32u), _wgslsmith_mod_u32(4294967295u, 4294967295u), 1u, 88658u & (var_2.x >> (~0u % 32u)));
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)), var_4.x)) * var_4.x) >= var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-_wgslsmith_sub_i32(1i, 1i)), vec4<i32>(i32(-1i) * -2147483647i, 40885i, _wgslsmith_sub_i32(-48994i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(70695i, -1i, 9483i), 1i)), -(~_wgslsmith_div_i32(-67777i, -1i))), vec4<u32>(~(~u_input.a.x), ~4294967295u, min(select(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_5.x, 7508u), var_2.xzx), 29875u, func_3(vec2<i32>(-22953i, 37434i), var_3, vec3<bool>(false, var_0.x, var_0.x))), 0u), ~max(var_2.x | var_5.x, var_2.x)), _wgslsmith_sub_vec3_i32(max(~vec3<i32>(-2147483647i, -65041i, 2147483647i), firstTrailingBit(vec3<i32>(2147483647i, 51628i, 0i))), (vec3<i32>(-65141i, 0i, -76605i) << (var_2.yyx % vec3<u32>(32u))) << (~vec3<u32>(98888u, 13730u, 4294967295u) % vec3<u32>(32u))) | vec3<i32>(22439i, 1i, _wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(-19232i, 27529i))), 0u);
}

