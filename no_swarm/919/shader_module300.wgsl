struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec4<bool>,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 24>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>) -> vec3<bool> {
    global0 = array<vec4<bool>, 24>();
    var var_0 = Struct_5(arg_0, 1i);
    global0 = array<vec4<bool>, 24>();
    var var_1 = !arg_0.c;
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1659f, arg_1, arg_1))), vec3<f32>(_wgslsmith_f_op_f32(sign(-1251f)), arg_1, 432f))), ((_wgslsmith_add_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(arg_0.e.x, var_0.b)) | vec2<i32>(0i, arg_0.e.x)) & arg_0.e.ww) >> (vec2<u32>(countOneBits(max(4294967295u, u_input.a)), ~_wgslsmith_div_u32(u_input.a, 49230u)) % vec2<u32>(32u)), arg_0, arg_1);
    return vec3<bool>(false, any(var_1.ywy), all(vec4<bool>(!(arg_2.x | true), true, !all(vec3<bool>(var_2.c.a, false, false)), false)));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_2) -> vec2<bool> {
    var var_0 = Struct_3(arg_2, -arg_2.c.e.xy, arg_2.c);
    var var_1 = var_0.c;
    var var_2 = min(firstLeadingBit(-2147483647i), countOneBits(arg_2.c.e.x));
    var_0 = Struct_3(arg_2, var_0.c.e.yw, Struct_1(var_0.c.a, vec3<bool>(!var_0.c.d.x || arg_2.c.c.x, -var_0.a.c.e.x >= abs(2147483647i), !any(var_1.d.yx)), select(select(vec4<bool>(arg_0, var_1.c.x, var_0.a.c.a, arg_2.c.c.x), var_1.c, !arg_2.c.c), vec4<bool>(var_1.d.x, var_0.a.c.c.x, false, false), true), vec3<bool>(false, any(!vec3<bool>(false, var_0.c.c.x, var_1.a)), firstTrailingBit(0u) >= ~u_input.a), countOneBits(_wgslsmith_mod_vec4_i32(~vec4<i32>(arg_2.c.e.x, arg_2.b.x, 24852i, arg_2.c.e.x), vec4<i32>(-48628i, 31311i, 17336i, var_1.e.x) & var_0.a.c.e))));
    var_1 = Struct_1(any(!vec4<bool>(true, !var_0.a.c.a, var_0.a.c.a, true)), !var_0.a.c.c.zxw, !vec4<bool>(true, false, true, any(vec3<bool>(arg_2.c.b.x, true, true)) & arg_2.c.c.x), select(vec3<bool>(false, any(vec2<bool>(var_0.a.c.b.x, var_1.a)), false), !func_3(Struct_1(true, vec3<bool>(arg_2.c.d.x, var_1.a, var_1.d.x), vec4<bool>(arg_2.c.d.x, false, false, var_1.d.x), var_0.a.c.c.wwx, var_0.a.c.e), _wgslsmith_f_op_f32(var_0.a.d + arg_2.d), vec2<bool>(var_1.c.x, false)), select(vec3<bool>(true, false, false), vec3<bool>(arg_2.c.d.x & false, false, false), !(arg_0 || var_0.c.d.x))), -vec4<i32>(var_0.a.c.e.x, var_0.a.c.e.x, i32(-1i) * -9918i, -(~arg_2.c.e.x)));
    return select(vec2<bool>(false, select(arg_2.c.d.x, var_0.c.a | false, true)), !select(vec2<bool>(-1000f != arg_1.x, arg_0 & arg_2.c.c.x), select(vec2<bool>(false, arg_0), !arg_2.c.d.zx, vec2<bool>(var_0.a.c.a, var_1.d.x)), !arg_0), !var_0.c.b.yx);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: Struct_3) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a.d), _wgslsmith_f_op_f32(sign(251f)), 780f)), _wgslsmith_add_vec2_i32(-abs(firstLeadingBit(vec2<i32>(arg_2.b.x, arg_2.b.x))), vec2<i32>(_wgslsmith_mult_i32(8640i, reverseBits(arg_2.a.b.x)), ~1i)), Struct_1((_wgslsmith_f_op_f32(trunc(-1088f)) > _wgslsmith_div_f32(arg_2.a.a.x, arg_2.a.d)) && (arg_2.a.c.b.x && func_3(Struct_1(true, arg_2.a.c.d, vec4<bool>(arg_0.x, true, true, false), arg_2.c.b, vec4<i32>(arg_2.b.x, -27814i, 83690i, -1i)), arg_2.a.d, vec2<bool>(false, false)).x), func_3(arg_2.a.c, _wgslsmith_f_op_f32(min(-2113f, _wgslsmith_f_op_f32(-arg_2.a.a.x))), arg_2.c.d.xy), select(arg_2.a.c.c, select(select(global0[_wgslsmith_index_u32(arg_1.x, 24u)], vec4<bool>(true, arg_0.x, false, arg_0.x), global0[_wgslsmith_index_u32(22113u, 24u)]), vec4<bool>(true, arg_2.a.c.b.x, arg_0.x, arg_2.c.d.x), arg_2.a.c.a), any(!arg_2.c.d.xz)), arg_2.c.c.yyx, -countOneBits(arg_2.a.c.e)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.a.x)), arg_2.a.a.x)), arg_2.a.d));
    var var_1 = ~(vec3<i32>(2147483647i, 1i, 2147483647i) ^ -(~arg_2.c.e.zwy));
    let var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -1i, reverseBits(~(-var_0.b.x)), 13115i), _wgslsmith_div_vec4_i32(var_0.c.e, max(_wgslsmith_clamp_vec4_i32(-arg_2.c.e, -arg_2.a.c.e, _wgslsmith_div_vec4_i32(arg_2.a.c.e, vec4<i32>(-20717i, -21920i, 20720i, 2147483647i))), ~select(var_0.c.e, vec4<i32>(var_1.x, -18214i, 0i, var_1.x), arg_0.x))));
    var_1 = _wgslsmith_mult_vec3_i32(var_2.zzw, var_0.c.e.xwx);
    let var_3 = Struct_5(Struct_1(select(any(vec4<bool>(var_0.c.d.x, arg_2.c.d.x, arg_2.c.b.x, arg_2.c.c.x)), true, arg_2.c.c.x), select(arg_2.a.c.d, var_0.c.d, all(vec4<bool>(arg_2.c.b.x, var_0.c.d.x, false, var_0.c.a))), select(!(!vec4<bool>(var_0.c.b.x, true, arg_0.x, var_0.c.d.x)), !var_0.c.c, true), vec3<bool>(!all(arg_2.a.c.c.xwz), false, var_0.c.b.x == !var_0.c.a), var_2), select(~(~(-arg_2.a.c.e.x)), -abs(var_1.x), var_0.c.d.x));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d + -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(419f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2136f, arg_2.a.a.x)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(func_2(true, vec2<f32>(-709f, 971f), Struct_2(vec3<f32>(926f, -1000f, 603f), vec2<i32>(26868i, arg_0.x), Struct_1(true, vec3<bool>(true, false, true), vec4<bool>(true, false, false, true), vec3<bool>(false, false, true), arg_0), 572f)), select(vec4<u32>(arg_1, arg_1, u_input.a, u_input.a), vec4<u32>(0u, 1u, arg_1, 1u), true), Struct_3(Struct_2(vec3<f32>(694f, 1413f, -689f), arg_0.wy, Struct_1(false, vec3<bool>(false, false, false), global0[_wgslsmith_index_u32(arg_1, 24u)], vec3<bool>(true, true, false), vec4<i32>(arg_0.x, -4624i, arg_0.x, arg_0.x)), 304f), vec2<i32>(arg_0.x, 12984i), Struct_1(false, vec3<bool>(true, true, false), vec4<bool>(false, false, true, true), vec3<bool>(true, false, false), arg_0)))))) * _wgslsmith_f_op_f32(ceil(250f))), _wgslsmith_f_op_f32(func_4(func_2(!(arg_1 > 74674u), vec2<f32>(_wgslsmith_f_op_f32(-1707f + -224f), _wgslsmith_f_op_f32(step(1721f, -1167f))), Struct_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1894f, -346f, -996f))), vec2<i32>(arg_0.x, arg_0.x), Struct_1(true, vec3<bool>(false, false, false), vec4<bool>(true, true, false, false), vec3<bool>(false, false, true), vec4<i32>(arg_0.x, arg_0.x, 25981i, arg_0.x)), _wgslsmith_div_f32(-1054f, -731f))), max(_wgslsmith_mod_vec4_u32(vec4<u32>(31342u, 1u, 53220u, arg_1), ~vec4<u32>(0u, 83996u, u_input.a, arg_1)), ~(~vec4<u32>(4294967295u, arg_1, 11476u, 17481u))), Struct_3(Struct_2(vec3<f32>(-143f, 1876f, -1000f), arg_0.xw ^ arg_0.yy, Struct_1(false, vec3<bool>(true, false, false), vec4<bool>(false, false, true, false), vec3<bool>(false, false, false), vec4<i32>(arg_0.x, 0i, -29402i, arg_0.x)), _wgslsmith_f_op_f32(abs(330f))), _wgslsmith_clamp_vec2_i32(-vec2<i32>(47166i, -1i), vec2<i32>(14792i, arg_0.x) ^ arg_0.zz, _wgslsmith_mult_vec2_i32(arg_0.zx, arg_0.xx)), Struct_1(true, select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), global0[_wgslsmith_index_u32(u_input.a, 24u)], vec3<bool>(true, true, true), _wgslsmith_sub_vec4_i32(arg_0, vec4<i32>(-35956i, arg_0.x, arg_0.x, 40121i)))))));
    var var_1 = true;
    var var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(50420u, ~(~(~0u)), ~1u, _wgslsmith_mult_u32(u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.a))), vec4<u32>(_wgslsmith_sub_u32(u_input.a, 1u) & ~0u, 4294967295u, arg_1, 5657u) >> ((_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(810u, 4294967295u, u_input.a, u_input.a)), vec4<u32>(arg_1, arg_1, 4294967295u, 28486u) >> (vec4<u32>(arg_1, 4294967295u, 44270u, 4294967295u) % vec4<u32>(32u))) >> (vec4<u32>(u_input.a, ~0u, arg_1, select(8975u, arg_1, true)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_3 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(103f * _wgslsmith_f_op_f32(var_0.x + -2316f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), var_0.x, var_0.x), _wgslsmith_clamp_vec2_i32(-vec2<i32>(~arg_0.x, arg_0.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, arg_0.x), arg_0.zw, arg_0.yw), select(arg_0.xw >> (vec2<u32>(var_2.x, 40967u) % vec2<u32>(32u)), arg_0.wy, any(vec2<bool>(false, false))) >> (abs(var_2.ww) % vec2<u32>(32u))), Struct_1(true, !func_3(Struct_1(true, vec3<bool>(true, true, true), vec4<bool>(true, false, false, true), vec3<bool>(false, true, false), vec4<i32>(-22108i, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(-173f * var_0.x), func_3(Struct_1(true, vec3<bool>(false, true, true), vec4<bool>(false, true, false, true), vec3<bool>(false, true, true), arg_0), var_0.x, vec2<bool>(true, true)).yx), vec4<bool>(true, true, true, true), select(vec3<bool>(true, any(vec2<bool>(true, true)), true), vec3<bool>(true, 4294967295u <= u_input.a, true), true), arg_0), 129f);
    var var_4 = Struct_5(var_3.c, 1i);
    return var_4.a.a && var_3.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(Struct_1(true, !vec3<bool>(func_1(vec4<i32>(2147483647i, 2147483647i, 36538i, -1i), 49059u), true, any(global0[_wgslsmith_index_u32(u_input.a, 24u)])), !vec4<bool>(true, true, any(vec2<bool>(true, false)), all(vec4<bool>(true, false, true, true))), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), true), max(~vec4<i32>(-61478i, 2147483647i, 28779i, -2147483647i), vec4<i32>(1i, 1i, 1i, 1i))), ~(-(~(~1i))));
    var var_1 = Struct_5(var_0.a, min(44602i & _wgslsmith_mult_i32(~var_0.a.e.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.e.x, var_0.a.e.x, -25653i, var_0.b), vec4<i32>(2957i, -1i, var_0.a.e.x, -5706i))), reverseBits(-(var_0.b ^ 2178i))));
    let var_2 = 0i;
    global0 = array<vec4<bool>, 24>();
    var_0 = Struct_5(Struct_1(~4294967295u != firstTrailingBit(countOneBits(51839u)), !(!var_1.a.b), var_0.a.c, var_0.a.b, -var_1.a.e), _wgslsmith_dot_vec4_i32(~var_0.a.e, vec4<i32>(-var_2, max(var_2, 35284i) & var_1.a.e.x, -1i, _wgslsmith_div_i32(var_0.a.e.x, ~1i))));
    var_0 = Struct_5(var_0.a, -_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(var_0.a.e, vec4<i32>(-1i, -1i, -1i, var_1.a.e.x)), var_0.a.e) | 0i);
    let x = u_input.a;
    s_output = StorageBuffer(12481u, select(~(vec3<u32>(1u, u_input.a, u_input.a) << (vec3<u32>(u_input.a, 1u, u_input.a) % vec3<u32>(32u))) | firstTrailingBit(~vec3<u32>(2527u, 0u, u_input.a)), firstTrailingBit(reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(33009u, u_input.a, 45994u), vec3<u32>(u_input.a, 27116u, u_input.a)))), true), 554f, select(vec3<u32>(firstLeadingBit(17269u), 0u, firstLeadingBit(82207u)) | _wgslsmith_add_vec3_u32(select(vec3<u32>(1u, u_input.a, 4294967295u), vec3<u32>(u_input.a, 55107u, 4294967295u), var_1.a.b), vec3<u32>(u_input.a, u_input.a, 14447u) | vec3<u32>(0u, 4294967295u, 51495u)), ~firstLeadingBit(max(vec3<u32>(4294967295u, 4294967295u, 21269u), vec3<u32>(u_input.a, u_input.a, 9182u))), vec3<bool>(var_0.a.a, !any(vec3<bool>(var_1.a.a, true, var_0.a.a)), select(var_0.a.b.x, false, var_0.a.c.x) && (var_1.a.b.x | var_1.a.c.x))));
}

