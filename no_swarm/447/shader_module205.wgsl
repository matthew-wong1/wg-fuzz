struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32) -> vec3<bool> {
    var var_0 = Struct_3(vec3<u32>(~24021u, abs(43729u), ~(~92220u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1166f, -700f)))));
    let var_1 = u_input.d;
    var var_2 = select(select(vec2<bool>(false, true), select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(global0.x < 0i, 33212i == global0.x), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), -u_input.b.x != 1i)), !vec2<bool>(!all(vec4<bool>(false, false, true, false)), false), !vec2<bool>(!any(vec3<bool>(true, true, true)), select(true, true, true)));
    var var_3 = u_input.b.x;
    let var_4 = Struct_2(!select(!(!vec2<bool>(var_2.x, true)), vec2<bool>(all(vec3<bool>(var_2.x, false, var_2.x)), any(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x))), var_2.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(-536f, var_0.b)), _wgslsmith_f_op_f32(var_0.b + var_0.b), var_0.b, var_0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, -863f, var_0.b, var_0.b), vec4<f32>(-2627f, 260f, var_0.b, -642f))), !select(vec4<bool>(var_2.x, true, var_2.x, false), vec4<bool>(var_2.x, true, false, false), false)))));
    return select(select(!select(vec3<bool>(var_2.x, true, var_4.a.x), select(vec3<bool>(var_2.x, var_4.a.x, false), vec3<bool>(var_4.a.x, true, var_4.a.x), var_4.a.x), !vec3<bool>(true, var_4.a.x, var_2.x)), vec3<bool>(true, false, true), select(select(select(vec3<bool>(true, var_2.x, true), vec3<bool>(true, var_2.x, false), vec3<bool>(var_2.x, false, false)), vec3<bool>(var_2.x, var_4.a.x, true), vec3<bool>(false, var_4.a.x, false)), vec3<bool>(!var_4.a.x, var_4.a.x, all(vec3<bool>(false, var_4.a.x, var_4.a.x))), var_2.x)), select(select(vec3<bool>(0i <= global0.x, true, false), select(!vec3<bool>(var_2.x, var_4.a.x, true), select(vec3<bool>(var_4.a.x, true, true), vec3<bool>(false, var_4.a.x, false), vec3<bool>(true, false, true)), select(true, true, true)), !var_2.x), !vec3<bool>(var_2.x, var_4.a.x, var_2.x), vec3<bool>(var_2.x, true, false)), all(!vec3<bool>(any(vec4<bool>(true, var_4.a.x, var_4.a.x, var_4.a.x)), select(true, true, false), true)));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_1) -> vec3<u32> {
    global0 = firstLeadingBit(-vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.b.x, arg_0), vec2<i32>(arg_0, global0.x)), 0i, (arg_0 >> (u_input.d.x % 32u)) >> (_wgslsmith_mod_u32(arg_1.x, 58022u) % 32u)));
    let var_0 = vec3<bool>(any(func_3(arg_1.x)), arg_3.a.x, true);
    global0 = _wgslsmith_div_vec3_i32(abs(u_input.a.wzw), _wgslsmith_add_vec3_i32(vec3<i32>(~arg_3.d.x, arg_3.d.x, -2147483647i), vec3<i32>(select(-28371i >> (0u % 32u), 39714i, func_3(u_input.d.x).x), -_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_3.b.x, 0i, -2147483647i), vec4<i32>(-2147483647i, 45843i, u_input.a.x, 0i)), ~arg_0)));
    let var_1 = Struct_3(~((u_input.d.zxw | u_input.d.xxx) | vec3<u32>(~0u, arg_1.x | 77494u, firstLeadingBit(1u))), _wgslsmith_f_op_f32(ceil(757f)));
    global0 = u_input.a.zwx;
    return reverseBits(arg_1.zyx);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_3) -> i32 {
    global0 = countOneBits(u_input.a.wyx);
    var var_0 = -236f;
    var var_1 = func_4(1i, u_input.d, arg_2.a.x, Struct_1(select(func_3(1u), select(func_3(arg_1), vec3<bool>(true, true, true), any(vec4<bool>(false, false, true, true))), !any(vec3<bool>(false, true, false))), -vec2<i32>(0i, _wgslsmith_mult_i32(39669i, global0.x)), u_input.d.wz, u_input.a.yyy));
    let var_2 = arg_2;
    let var_3 = Struct_1(vec3<bool>((4294967295u > ~arg_2.a.x) && any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), !(false && any(vec3<bool>(false, false, true))), true), -_wgslsmith_sub_vec2_i32(select(vec2<i32>(-2147483647i, -8704i), ~u_input.b, select(vec2<bool>(false, false), vec2<bool>(true, true), true)), -global0.zx << (var_1.xx % vec2<u32>(32u))), arg_2.a.yx, u_input.a.wzz);
    return -49554i;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> i32 {
    global0 = _wgslsmith_sub_vec3_i32(u_input.a.wzx, vec3<i32>(max(1i, 2147483647i), func_2(arg_0.b, u_input.c.x, arg_0), ~u_input.b.x) ^ vec3<i32>(-1i, -28498i, 54606i)) | vec3<i32>(~(-42031i), _wgslsmith_add_i32(firstLeadingBit(global0.x >> (16051u % 32u)), -35210i), 1i);
    var var_0 = Struct_1(!select(arg_1.a, !(!vec3<bool>(arg_1.a.x, true, false)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, global0.x, -1i, u_input.a.x), vec4<i32>(u_input.a.x, arg_1.b.x, -17729i, -11886i)) >= arg_1.d.x), abs(vec2<i32>(reverseBits(-26004i), _wgslsmith_sub_i32(2147483647i, ~global0.x))), u_input.d.xz, -(vec3<i32>(1i, global0.x, -2147483647i) >> (arg_0.a % vec3<u32>(32u))));
    let var_1 = -898f;
    global0 = arg_1.d & u_input.a.wwz;
    var var_2 = Struct_2(!vec2<bool>(arg_1.a.x, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1231f, -1467f, -133f, arg_0.b), vec4<f32>(-1456f, -207f, -124f, -1452f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, var_1, 1154f, arg_0.b) + vec4<f32>(var_1, 1206f, -104f, -661f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1, -151f, -515f, -2300f))) - vec4<f32>(arg_0.b, 2401f, var_1, arg_0.b)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, arg_0.b, arg_0.b, arg_0.b)), vec4<f32>(-584f, 1127f, 977f, 741f))))));
    return global0.x;
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -2055f) - -1519f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))))));
    global0 = ~arg_1.d;
    var var_1 = !select(arg_1.a.yy, select(func_3(u_input.e | 0u).xy, !select(arg_1.a.zx, vec2<bool>(arg_1.a.x, true), vec2<bool>(false, arg_0)), select(arg_1.a.xz, arg_1.a.yx, vec2<bool>(arg_0, arg_0))), any(select(!arg_1.a, func_3(arg_1.c.x), arg_1.a.x)));
    var var_2 = _wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(0u, 1u, arg_1.c.x, 0u));
    var_2 = vec4<u32>(firstTrailingBit(~(abs(var_2.x) & _wgslsmith_add_u32(arg_1.c.x, 4294967295u))), abs(4294967295u), ~28521u, 44291u);
    return Struct_2(arg_1.a.yy, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-397f, 324f, 1204f, 809f)))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 861f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-532f, var_0.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(max(_wgslsmith_dot_vec4_i32(u_input.a, -(~vec4<i32>(2147483647i, global0.x, 1i, u_input.a.x))), global0.x), -14928i, 0i);
    let var_1 = u_input.a.x;
    var var_2 = func_5(u_input.d.x == _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(0u, 1u), 23716u, u_input.d.x), _wgslsmith_sub_vec3_u32(u_input.d.yxw, ~u_input.d.yxx)), Struct_1(!vec3<bool>(all(vec3<bool>(true, false, false)), true, all(vec2<bool>(true, false))), vec2<i32>(u_input.b.x, _wgslsmith_div_i32(i32(-1i) * -1i, ~u_input.a.x)), u_input.c.yz, _wgslsmith_mult_vec3_i32(vec3<i32>(var_1, _wgslsmith_mod_i32(-1i, 1i), func_1(Struct_3(vec3<u32>(u_input.d.x, u_input.e, 4294967295u), -169f), Struct_1(vec3<bool>(true, true, false), global0.zy, u_input.c.zz, u_input.a.ywy))), ~vec3<i32>(-52554i, 24154i, -1i))));
    let var_3 = true;
    var_0 = vec3<i32>(~(-max(_wgslsmith_div_i32(var_1, -30669i), var_0.x)), _wgslsmith_add_i32(4991i << (func_4(global0.x, vec4<u32>(u_input.c.x, 1u, 0u, u_input.d.x), 0u, Struct_1(vec3<bool>(false, false, true), vec2<i32>(var_0.x, var_1), vec2<u32>(4294967295u, 1u), vec3<i32>(var_0.x, global0.x, -5964i))).x % 32u), _wgslsmith_mult_i32(var_0.x, _wgslsmith_div_i32(~global0.x, var_0.x))), ~(-_wgslsmith_clamp_i32(select(var_0.x, var_1, false), -1i >> (u_input.d.x % 32u), -34495i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-745f, var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_2.b.x)))), ~(~(~(4294967295u & u_input.c.x))), ~u_input.d.zw, ~select(u_input.d, u_input.d, all(!vec4<bool>(true, var_3, true, true))), ~(~u_input.c.yx));
}

