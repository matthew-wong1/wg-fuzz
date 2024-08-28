struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<i32>) -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -378f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(604f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(221f, -1000f)))))), vec4<f32>(1f, 1f, 1f, 1f), !all(vec4<bool>(all(vec2<bool>(true, true)), true, true, false)), false, ~((_wgslsmith_mult_i32(2147483647i, u_input.a.x) & _wgslsmith_sub_i32(u_input.a.x, 1i)) >> (4294967295u % 32u)));
    let var_1 = Struct_2(u_input.a);
    var var_2 = vec4<bool>(var_0.d, var_0.d, true, all(vec2<bool>(true, var_0.d)));
    var var_3 = vec3<bool>(false, any(select(!var_2.xyw, select(var_2.wyz, var_2.zxz, false), !(!vec3<bool>(false, var_2.x, var_2.x)))), any(vec3<bool>(select(false, all(vec3<bool>(var_0.c, var_2.x, true)), false), any(select(vec4<bool>(var_2.x, var_0.c, var_0.c, var_0.d), vec4<bool>(false, true, var_0.c, var_2.x), vec4<bool>(var_0.c, var_0.c, var_2.x, var_0.c))), true)));
    let var_4 = var_1;
    return _wgslsmith_clamp_vec4_i32(arg_0, vec4<i32>(i32(-1i) * -42640i, _wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(var_4.a.x, 0i), u_input.a.x), -1i), 1i, var_0.e << (1u % 32u)), select(firstLeadingBit(vec4<i32>(-67634i >> (0u % 32u), var_0.e, _wgslsmith_div_i32(var_0.e, var_0.e), i32(-1i) * -2147483647i)), countOneBits(max(-vec4<i32>(u_input.a.x, arg_0.x, -19139i, 4211i), vec4<i32>(2459i, 0i, u_input.a.x, 2147483647i))), var_2.x));
}

fn func_2() -> vec4<i32> {
    var var_0 = all(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true)));
    return min(~vec4<i32>(-40i, ~(-2147483647i), firstLeadingBit(-u_input.a.x), _wgslsmith_mod_i32(1i, -1i)), func_3(_wgslsmith_mult_vec4_i32(-(~vec4<i32>(0i, u_input.a.x, u_input.a.x, 2147483647i)), (vec4<i32>(u_input.a.x, -13269i, 1i, 25976i) & vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x)) ^ vec4<i32>(0i, u_input.a.x, 19049i, u_input.a.x))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3) -> i32 {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_sub_u32(select(~(arg_1.b.x ^ ~1369u), var_0.b.x, var_0.a.d), ~reverseBits(~4294967295u));
    var_0 = arg_1;
    var var_2 = !select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), !vec2<bool>(arg_1.a.d, false)), !select(vec2<bool>(false, arg_1.a.d), vec2<bool>(false, arg_1.a.d), vec2<bool>(arg_1.a.d, var_0.a.c)), !select(vec2<bool>(true, arg_1.a.c), vec2<bool>(true, false), arg_1.a.d)), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(arg_1.a.c, arg_1.a.d), true));
    var_0 = Struct_3(arg_1.a, min(~vec4<u32>(var_0.b.x, 0u, 4294967295u, arg_1.b.x), ~abs(arg_1.b)) ^ vec4<u32>(max(4294967295u, arg_1.b.x) >> (select(4294967295u, 7978u, var_2.x) % 32u), var_0.b.x, 54630u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, arg_1.b.x), ~arg_1.b.x)));
    return u_input.a.x;
}

fn func_1() -> Struct_3 {
    let var_0 = 192f;
    var var_1 = func_4(firstTrailingBit(vec4<i32>(u_input.a.x, 0i, ~u_input.a.x, 1i)) | (_wgslsmith_mult_vec4_i32(func_2(), vec4<i32>(3981i, 42472i, u_input.a.x, u_input.a.x)) << (vec4<u32>(_wgslsmith_clamp_u32(1u, 0u, 88390u), ~4294967295u, 4294967295u, _wgslsmith_mult_u32(4294967295u, 0u)) % vec4<u32>(32u))), Struct_3(Struct_1(vec2<f32>(_wgslsmith_div_f32(var_0, 2345f), 258f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(895f, -283f, 2377f, -121f))), true, true, 52530i), ~_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 0u, 70951u, 4294967295u)), vec4<u32>(33383u, 0u, 4294967295u, 4294967295u))));
    var_1 = _wgslsmith_sub_i32(u_input.a.x, u_input.a.x >> (1u % 32u));
    let var_2 = Struct_2(_wgslsmith_mod_vec3_i32(~firstTrailingBit(u_input.a), reverseBits(~(vec3<i32>(u_input.a.x, u_input.a.x, 44869i) << (vec3<u32>(108112u, 23328u, 4294967295u) % vec3<u32>(32u))))));
    return Struct_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(876f, var_0)), -2061f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -839f), _wgslsmith_f_op_f32(sign(885f)), true))), vec4<f32>(-162f, 568f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1161f)), _wgslsmith_f_op_f32(f32(-1f) * -209f)), false, (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(697u, 4294967295u)) ^ _wgslsmith_clamp_u32(35537u, 20087u, 64591u)) < _wgslsmith_mod_u32(0u << (0u % 32u), 1u), ~u_input.a.x), vec4<u32>(1u, 1u, 1u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 69581u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1333f)));
    var var_2 = func_1();
    let var_3 = Struct_2(-(~(-vec3<i32>(u_input.a.x, var_2.a.e, -2147483647i)) & ~u_input.a));
    var_2 = Struct_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.b.x * -691f) - _wgslsmith_div_f32(var_2.a.b.x, -719f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2937f * -457f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_2.a.b))), all(select(vec2<bool>(var_2.a.d, false), vec2<bool>(var_2.a.c, false), vec2<bool>(false, false))) & func_1().a.c, false, u_input.a.x ^ _wgslsmith_clamp_i32(-var_3.a.x, 0i, 0i)), abs(~vec4<u32>(var_2.b.x, var_2.b.x, var_0, var_2.b.x)) << (min(_wgslsmith_clamp_vec4_u32(var_2.b, var_2.b ^ vec4<u32>(var_0, var_0, var_0, var_0), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0, 4294967295u, var_0, 1u), var_2.b)), ~(var_2.b ^ vec4<u32>(45903u, 60471u, var_0, var_2.b.x))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-1447f, vec2<u32>(var_2.b.x, 6197u));
}

