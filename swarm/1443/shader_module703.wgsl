struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: Struct_2,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16>;

var<private> global1: array<Struct_3, 3>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>) -> vec2<u32> {
    global0 = array<i32, 16>();
    let var_0 = Struct_2(~vec2<u32>(15586u & u_input.a.x, arg_0), min(vec3<u32>(arg_0, _wgslsmith_div_u32(arg_0, reverseBits(arg_0)), u_input.a.x), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(14665u, u_input.a.x, arg_0)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, arg_0, 1u), vec3<u32>(27232u, arg_0, 1u))), u_input.a, u_input.a)), Struct_1(true | select(true, any(vec3<bool>(true, false, false)), false), all(vec4<bool>(true, true, true, true)) | true, u_input.a.zy), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1451f, -573f, -460f), vec3<f32>(-576f, 1215f, -1405f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(610f, -581f, -721f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1466f, 954f, -601f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1512f, 285f, 2042f) - vec3<f32>(-443f, -977f, 228f)))) - vec3<f32>(_wgslsmith_f_op_f32(-263f - -1000f), 835f, _wgslsmith_f_op_f32(step(-1000f, 1014f))))), ~(abs(~vec3<u32>(4294967295u, arg_0, u_input.a.x)) & u_input.a));
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(abs(14832u), 9935u), 3u)];
    let var_2 = var_0.c;
    global1 = array<Struct_3, 3>();
    return firstTrailingBit(~vec2<u32>(arg_0, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.c.c.x, arg_0), vec3<u32>(arg_0, 0u, arg_0))));
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_4 {
    global0 = array<i32, 16>();
    let var_0 = Struct_2(~(~(~func_3(arg_1, vec4<i32>(u_input.c.x, global0[_wgslsmith_index_u32(9306u, 16u)], u_input.b.x, 31615i)))), select(~firstTrailingBit(vec3<u32>(arg_1, u_input.a.x, u_input.a.x)), vec3<u32>(~14060u, u_input.d, ~0u), true) << ((vec3<u32>(u_input.d, _wgslsmith_clamp_u32(0u, arg_1, 0u), _wgslsmith_sub_u32(arg_1, arg_1)) >> (u_input.a % vec3<u32>(32u))) % vec3<u32>(32u)), Struct_1(true, (all(vec4<bool>(true, false, false, false)) || true) | true, ~vec2<u32>(0u, 36892u) >> (abs(u_input.a.yz) % vec2<u32>(32u))), vec3<f32>(-567f, 642f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(296f, 1557f) * 597f), 909f))), vec3<u32>(abs(firstTrailingBit(0u)), 32704u, u_input.d) << (vec3<u32>(_wgslsmith_mod_u32(countOneBits(u_input.a.x), func_3(37132u, vec4<i32>(-2147483647i, -1i, -2147483647i, -31528i)).x), arg_1 & arg_1, _wgslsmith_mult_u32(19231u, 1u)) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-102f * var_0.d.x), var_0.d.x, _wgslsmith_f_op_f32(-1901f - var_0.d.x), _wgslsmith_f_op_f32(min(-1003f, var_0.d.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1100f, var_0.d.x, -174f, var_0.d.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, -998f, var_0.d.x, var_0.d.x) * vec4<f32>(1000f, -558f, var_0.d.x, var_0.d.x))), global0[_wgslsmith_index_u32(~1u, 16u)] >= _wgslsmith_add_i32(u_input.b.x, -47312i)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-2634f, var_0.d.x), _wgslsmith_f_op_f32(1546f + var_0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1770f), var_0.d.x)))));
    global1 = array<Struct_3, 3>();
    global0 = array<i32, 16>();
    return Struct_4(Struct_3(u_input.a.yy, _wgslsmith_mult_vec4_u32(~abs(vec4<u32>(0u, arg_1, u_input.a.x, 0u)), vec4<u32>(59653u, u_input.d, arg_1, arg_1) ^ (vec4<u32>(0u, arg_1, var_0.b.x, u_input.a.x) & vec4<u32>(u_input.a.x, u_input.d, arg_1, var_0.a.x))), var_0, !(!(!vec3<bool>(var_0.c.a, false, true)))), 1i == (-firstTrailingBit(arg_0) << (_wgslsmith_dot_vec3_u32(u_input.a ^ var_0.e, u_input.a | var_0.b) % 32u)), Struct_2(max(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.yz, vec2<u32>(var_0.e.x, arg_1)), ~vec2<u32>(32641u, u_input.d)), ~vec2<u32>(u_input.a.x, u_input.d) | ~vec2<u32>(2086u, u_input.a.x)), ~vec3<u32>(var_0.e.x, 81964u, var_0.b.x) | max(abs(var_0.e), vec3<u32>(0u, u_input.d, 55514u)), var_0.c, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, 214f, -1189f) * vec3<f32>(1328f, var_1.x, 108f)), _wgslsmith_f_op_vec3_f32(var_0.d * var_0.d))))), _wgslsmith_sub_vec3_u32(var_0.e, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 86886u, 0u), vec3<u32>(3016u, var_0.b.x, 0u)) >> (max(var_0.e, vec3<u32>(0u, arg_1, u_input.a.x)) % vec3<u32>(32u)))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> Struct_2 {
    let var_0 = func_2(_wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(-2147483647i, global0[_wgslsmith_index_u32(u_input.d, 16u)]) >> (max(20240u, arg_0.c.e.x) % 32u), ~(-global0[_wgslsmith_index_u32(arg_1.a.x, 16u)])), i32(-1i) * -global0[_wgslsmith_index_u32(firstLeadingBit(u_input.d), 16u)]), arg_0.a.c.c.c.x);
    global0 = array<i32, 16>();
    global1 = array<Struct_3, 3>();
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    return var_0.a.c;
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_3(min(~(~(~u_input.a.zz)), vec2<u32>(u_input.d, 1u)), min(select(select(vec4<u32>(u_input.d, 48513u, 27103u, 39529u), vec4<u32>(u_input.d, 34561u, u_input.d, 0u), vec4<bool>(false, false, true, false)), vec4<u32>(4294967295u, u_input.a.x, 38681u, u_input.d) & vec4<u32>(4294967295u, 1u, u_input.a.x, 1u), vec4<bool>(true, true, true, true)) | _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, u_input.d, u_input.a.x, u_input.a.x), vec4<u32>(u_input.d, u_input.a.x, u_input.d, u_input.d) >> (vec4<u32>(u_input.d, u_input.a.x, u_input.d, u_input.a.x) % vec4<u32>(32u))), ~(~vec4<u32>(80098u, u_input.a.x, u_input.d, 0u)) & firstLeadingBit(select(vec4<u32>(u_input.d, u_input.a.x, 39731u, u_input.a.x), vec4<u32>(31014u, u_input.a.x, 0u, u_input.d), true))), func_4(func_2(_wgslsmith_dot_vec2_i32(~u_input.b, abs(vec2<i32>(u_input.c.x, global0[_wgslsmith_index_u32(0u, 16u)]))), u_input.a.x), Struct_2(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.d, u_input.a.x), u_input.a.zx & u_input.a.zz), _wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.d, 6673u)) ^ (u_input.a & u_input.a), func_2(global0[_wgslsmith_index_u32(26624u, 16u)], 4294967295u).a.c.c, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1427f, 2015f, -1259f))), _wgslsmith_div_vec3_f32(vec3<f32>(-1186f, 158f, 606f), vec3<f32>(-1162f, -997f, 712f)), true)), select(~u_input.a, u_input.a, vec3<bool>(false, true, false)))), vec3<bool>(false, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false))), !all(func_2(u_input.c.x, 6641u).a.d.zz)));
    global0 = array<i32, 16>();
    var var_1 = func_2(global0[_wgslsmith_index_u32(func_4(func_2(select(_wgslsmith_sub_i32(u_input.b.x, -1i), u_input.c.x, select(false, var_0.c.c.b, false)), 4294967295u), var_0.c).a.x, 16u)], u_input.d);
    global1 = array<Struct_3, 3>();
    var var_2 = ~var_0.a;
    return func_2(u_input.b.x, var_2.x);
}

fn func_5(arg_0: vec4<f32>, arg_1: i32, arg_2: i32, arg_3: Struct_4) -> Struct_3 {
    var var_0 = select(true, arg_3.a.d.x, arg_3.c.c.b);
    var_0 = (~10972u == _wgslsmith_mult_u32(u_input.a.x, 9580u)) & true;
    var var_1 = Struct_3(_wgslsmith_sub_vec2_u32(u_input.a.zy, ~arg_3.c.b.zx), ~countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.a.c.e.x, u_input.d, arg_3.c.e.x, 49314u), select(vec4<u32>(arg_3.a.b.x, u_input.d, u_input.d, arg_3.a.b.x), vec4<u32>(56893u, arg_3.a.a.x, arg_3.a.b.x, arg_3.c.e.x), arg_3.a.c.c.b))), Struct_2(arg_3.a.c.a & u_input.a.yy, ~(~vec3<u32>(0u, u_input.d, u_input.a.x)), func_2(~firstTrailingBit(arg_1), 35246u).a.c.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -718f, 669f) + arg_3.a.c.d) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_0.xxx - arg_3.a.c.d)))), abs(_wgslsmith_mod_vec3_u32(arg_3.c.b, vec3<u32>(23088u, 72881u, arg_3.c.c.c.x)) >> (vec3<u32>(0u, 64352u, u_input.d) % vec3<u32>(32u)))), !func_1().a.d);
    let var_2 = var_1.c;
    var var_3 = var_2.b.xz;
    return func_1().a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1881f, -848f), vec2<f32>(-547f, -364f))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(155f, 755f)))))))));
    var var_1 = ~u_input.b.x;
    let var_2 = func_5(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + -337f), _wgslsmith_f_op_f32(step(1628f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-242f + 1000f), _wgslsmith_div_f32(var_0.x, 627f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2400f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(sign(var_0.x)))))), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(select(1u, 0u, all(vec3<bool>(true, false, false))) ^ ~max(u_input.d, 4294967295u), 16u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, ~_wgslsmith_sub_u32(u_input.a.x, 4294967295u)), 16u)]), -(~(-(~(-51752i)))), func_1());
    var var_3 = !(!select(var_2.d.xz, vec2<bool>(false, !var_2.d.x), select(func_2(-31777i, 0u).a.d.zx, !vec2<bool>(var_2.d.x, var_2.c.c.a), true)));
    var_3 = var_2.d.zx;
    var var_4 = var_2.c;
    var_3 = !var_2.d.xy;
    let x = u_input.a;
    s_output = StorageBuffer(1u, u_input.b, select(-9272i, -1i, var_3.x), _wgslsmith_div_i32(13251i, u_input.b.x), (u_input.c << (((var_2.b & vec4<u32>(var_4.c.c.x, u_input.a.x, var_2.c.a.x, u_input.a.x)) << (~vec4<u32>(var_2.b.x, var_2.c.a.x, var_4.b.x, var_4.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (var_2.b % vec4<u32>(32u)));
}

