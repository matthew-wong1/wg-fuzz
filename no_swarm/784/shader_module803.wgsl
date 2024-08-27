struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<bool>;

var<private> global2: i32 = -38994i;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec3<i32>) -> u32 {
    let var_0 = !(!(!vec3<bool>(0u >= arg_0.c.x, global3.c, global3.b)));
    var var_1 = Struct_1(global3.a, global1.x, true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d.x * global0.a)), -381f, 676f)));
    var var_2 = true;
    let var_3 = _wgslsmith_mod_vec4_i32(abs(global3.a) << (~min(vec4<u32>(0u, global0.b, u_input.b.x, arg_1.x) ^ vec4<u32>(arg_0.d.a, 0u, 4294967295u, u_input.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 22878u, 0u, 0u), vec4<u32>(30932u, arg_2.a, arg_0.b, u_input.b.x))) % vec4<u32>(32u)), select(global3.a, vec4<i32>(global3.a.x, _wgslsmith_mult_i32(-19486i, -35624i), 1i, -arg_3.x), vec4<bool>(var_0.x, global1.x, all(vec3<bool>(var_1.c, global1.x, true)), var_0.x)) | -firstTrailingBit(vec4<i32>(global3.a.x, -10216i, -43495i, 1i)));
    var var_4 = Struct_2(u_input.b.x);
    return 29396u << (~reverseBits(global0.d.a) % 32u);
}

fn func_2(arg_0: i32, arg_1: vec2<u32>) -> i32 {
    global2 = 763i;
    var var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(arg_1.x, u_input.b.x, u_input.b.x, arg_1.x) & _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 17868u, 32182u, u_input.b.x), vec4<u32>(u_input.b.x, 24228u, 4294967295u, u_input.b.x)), vec4<u32>(_wgslsmith_clamp_u32(u_input.b.x, 4294967295u, u_input.b.x), _wgslsmith_mod_u32(37648u, 1u), arg_1.x, countOneBits(arg_1.x))) >> (vec4<u32>(arg_1.x & global0.b, func_3(Struct_3(1007f, 1u, arg_1, Struct_2(arg_1.x)), u_input.b, global0.d, vec3<i32>(7511i, 1i, -2147483647i)), ~0u, 76199u & ~arg_1.x) % vec4<u32>(32u)), vec4<u32>(firstTrailingBit(~4294967295u), reverseBits(abs(~20233u)), 37756u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.x, u_input.b.x), vec2<u32>(global0.b, 0u)) << (0u % 32u), 0u)));
    var var_1 = _wgslsmith_f_op_f32(-global3.d.x);
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * _wgslsmith_f_op_f32(max(1000f, global3.d.x)))))))));
    let var_3 = Struct_2(13979u);
    return ~u_input.a;
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_3 {
    var var_0 = -arg_0;
    var var_1 = func_2(~(~max(global3.a.x, -42999i)) >> (u_input.b.x % 32u), vec2<u32>(~global0.b, ~global0.b));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d.x + _wgslsmith_f_op_f32(-arg_1))) + arg_1) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.a - -317f), _wgslsmith_f_op_f32(arg_1 * arg_1), true))))));
    let var_3 = min(vec2<i32>(-23885i, global3.a.x), vec2<i32>(func_2(reverseBits(5372i), u_input.b.xx), 1i));
    var_1 = _wgslsmith_add_i32(0i, 33745i);
    return Struct_3(global0.a, ~(~global0.d.a), vec2<u32>(global0.b, 4294967295u), global0.d);
}

fn func_4(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = vec3<i32>(-1i) * -firstTrailingBit(vec3<i32>(41883i, min(1i, 55085i), _wgslsmith_div_i32(1i, global3.a.x)));
    var var_1 = Struct_1(global3.a, ((1u & func_3(Struct_3(-1514f, 20470u, u_input.b.zy, Struct_2(0u)), u_input.b, Struct_2(0u), vec3<i32>(-1i, 15197i, -1i))) <= ~countOneBits(4294967295u)) || true, true, vec3<f32>(-823f, global3.d.x, arg_0.a));
    global3 = Struct_1(global3.a, var_1.c, all(!select(select(vec2<bool>(true, var_1.c), vec2<bool>(global1.x, global3.b), vec2<bool>(true, var_1.c)), select(vec2<bool>(var_1.b, true), vec2<bool>(global1.x, false), vec2<bool>(false, true)), select(vec2<bool>(global1.x, true), vec2<bool>(var_1.c, global1.x), vec2<bool>(var_1.b, global1.x)))), global3.d);
    var var_2 = all(!select(!vec4<bool>(false, true, global3.b, false), vec4<bool>(true, global1.x, var_1.d.x <= 236f, true), select(!vec4<bool>(true, false, false, global3.b), vec4<bool>(false, true, false, global3.b), select(vec4<bool>(true, global1.x, true, true), vec4<bool>(true, var_1.b, global1.x, global1.x), global1.x))));
    global0 = arg_0;
    return !(!select(vec2<bool>(true, true), select(select(vec2<bool>(false, global1.x), vec2<bool>(false, false), vec2<bool>(global1.x, global3.b)), vec2<bool>(global1.x, true), vec2<bool>(global1.x, true)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), global3.b))));
}

fn func_5(arg_0: bool, arg_1: vec3<i32>, arg_2: vec2<bool>) -> bool {
    var var_0 = Struct_1(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, ~global3.a.x), _wgslsmith_add_vec2_i32(vec2<i32>(arg_1.x, arg_1.x), vec2<i32>(4404i, arg_1.x)) ^ (global3.a.wz | global3.a.yw)), -41056i, countOneBits(_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, arg_1.x, global3.a.x, 1i), vec4<i32>(-1i, u_input.a, -1i, -2147483647i) ^ vec4<i32>(-1i, -2147483647i, 24446i, -1i))), i32(-1i) * -2147483647i), false, arg_0, global3.d);
    global1 = arg_2;
    let var_1 = global3.d.xz;
    global3 = Struct_1(vec4<i32>(1i, _wgslsmith_sub_i32(var_0.a.x, ~_wgslsmith_add_i32(var_0.a.x, 2147483647i)), var_0.a.x, global3.a.x), arg_2.x, any(select(select(!vec3<bool>(false, false, global1.x), !vec3<bool>(global1.x, global3.c, global3.c), vec3<bool>(arg_2.x, global1.x, var_0.c)), vec3<bool>(all(arg_2), arg_0, false), !vec3<bool>(false, arg_2.x, false))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-489f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(703f * 1982f))), vec3<f32>(global0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d.x, var_1.x) + 330f), 1306f), select(var_1.x < _wgslsmith_f_op_f32(global3.d.x * 2567f), any(vec3<bool>(true, arg_2.x, true)), any(select(vec4<bool>(false, arg_0, var_0.b, true), vec4<bool>(false, false, false, true), arg_0))))));
    global3 = Struct_1(global3.a, global3.b, false, vec3<f32>(_wgslsmith_f_op_f32(min(global3.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(131f * global3.d.x)))), global0.a, 456f));
    return true || global3.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    global2 = _wgslsmith_mult_i32(-u_input.a, ~global3.a.x);
    let var_1 = func_5(false, _wgslsmith_div_vec3_i32(global3.a.yyx << (firstLeadingBit(~u_input.b) % vec3<u32>(32u)), -(~abs(global3.a.xzy))), !select(!vec2<bool>(global1.x, global1.x), func_4(func_1(26019i, -885f)), true));
    global3 = Struct_1(max(max(~global3.a, firstLeadingBit(vec4<i32>(1i, 1i, -63251i, u_input.a))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, global3.a.x, global3.a.x, -5658i), _wgslsmith_mult_vec4_i32(global3.a, vec4<i32>(-2960i, global3.a.x, 4602i, -25652i)))), global1.x, all(!select(select(vec3<bool>(var_1, false, global3.c), vec3<bool>(true, var_1, false), global3.b), vec3<bool>(true, true, true), !vec3<bool>(true, true, var_1))), global3.d);
    global0 = Struct_3(global0.a, _wgslsmith_dot_vec4_u32(~(vec4<u32>(0u, 4294967295u, u_input.b.x, global0.d.a) ^ vec4<u32>(global0.c.x, u_input.b.x, u_input.b.x, u_input.b.x)) | _wgslsmith_mult_vec4_u32(~vec4<u32>(global0.b, 8528u, 4473u, u_input.b.x), select(vec4<u32>(4294967295u, 1u, 4294967295u, 1u), vec4<u32>(global0.d.a, u_input.b.x, 0u, global0.c.x), vec4<bool>(true, false, true, global1.x))), (_wgslsmith_sub_vec4_u32(vec4<u32>(global0.c.x, global0.d.a, 23005u, 0u), vec4<u32>(0u, 39563u, global0.d.a, 71532u)) >> (vec4<u32>(global0.c.x, u_input.b.x, 0u, u_input.b.x) % vec4<u32>(32u))) & vec4<u32>(22447u, countOneBits(4294967295u), u_input.b.x, 4294967295u)), u_input.b.zz, Struct_2(_wgslsmith_sub_u32(1u, countOneBits(1u))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-331f, global3.d.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.d.x + -1000f))))))), 0u, vec2<u32>(u_input.b.x, 4294967295u), func_1(_wgslsmith_mult_i32(-u_input.a, select(51594i, 2147483647i, global3.b) << (u_input.b.x % 32u)), -1324f).d);
    let var_3 = _wgslsmith_f_op_f32(-var_2.a);
    let var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -362f), 102f, any(!select(select(vec3<bool>(global3.b, global1.x, global3.b), vec3<bool>(true, true, var_1), vec3<bool>(var_1, true, global1.x)), !vec3<bool>(true, var_1, global3.b), select(vec3<bool>(global1.x, var_1, false), vec3<bool>(true, global3.c, true), global3.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-701f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_2.a, -1257f, global1.x))))))), _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(global3.d.x + 412f)));
}

