struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(416f, -186f, 1014f, 1244f);

var<private> global1: array<Struct_1, 15>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = vec4<i32>(~arg_3.b.x, 2147483647i, 0i, arg_3.d.x);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1034f, _wgslsmith_f_op_f32(-arg_2.x), arg_2.x, arg_2.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, arg_2.x, arg_2.x, -135f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 567f, -157f) + vec4<f32>(865f, arg_2.x, arg_2.x, -996f))))) * vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1511f + global0.x), _wgslsmith_f_op_f32(global0.x * arg_2.x))), -732f, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(round(522f))), _wgslsmith_f_op_f32(select(274f, -2618f, true)))));
    var var_1 = 0i;
    return !vec4<bool>(arg_1.x == (i32(-1i) * -1i), !(arg_3.c.x || (false | arg_3.c.x)), true, true);
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: u32, arg_3: f32) -> u32 {
    var var_0 = true;
    global0 = vec4<f32>(1000f, -987f, arg_1, arg_1);
    let var_1 = global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(abs(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, arg_2, 20061u), vec3<u32>(arg_2, 4294967295u, arg_2)))), _wgslsmith_dot_vec3_u32(~vec3<u32>(42224u, arg_2, arg_2) << (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, arg_2, 84244u), vec3<u32>(arg_2, 10037u, 4294967295u)) % vec3<u32>(32u)), vec3<u32>(arg_2, arg_2, ~arg_2)))), 15u)];
    let var_2 = vec4<bool>(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1000f, arg_3)), _wgslsmith_f_op_f32(-arg_3)))) <= -133f, !(!all(arg_0)) & any(func_1(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2, arg_2, 946u, 28812u), vec4<u32>(arg_2, 0u, 0u, arg_2)), vec4<i32>(-1i, 1i, var_1.d.x, 1i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -220f, 767f)), global1[_wgslsmith_index_u32(arg_2 & 24005u, 15u)]).zx), true, all(vec4<bool>(!any(vec3<bool>(var_1.c.x, false, var_1.a)), arg_0.x, true, var_1.a)));
    let var_3 = !func_1(vec4<u32>(_wgslsmith_sub_u32(abs(arg_2), ~15806u), arg_2, 27556u, ~1u), -firstTrailingBit(vec4<i32>(var_1.d.x, u_input.b, 0i, 1i)), vec3<f32>(arg_3, arg_1, 833f), Struct_1(_wgslsmith_add_u32(arg_2, 66016u) <= (arg_2 << (arg_2 % 32u)), ~vec4<i32>(-1i, -18196i, u_input.b, var_1.b.x), var_2, _wgslsmith_mod_vec3_i32(vec3<i32>(-25096i, -2147483647i, 26766i), vec3<i32>(var_1.b.x, var_1.d.x, -44935i)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, arg_2), vec3<u32>(arg_2, arg_2, arg_2)) % vec3<u32>(32u)))).zw;
    return 82220u;
}

fn func_2(arg_0: i32, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = select(_wgslsmith_sub_u32(39361u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(72183u, 14935u), func_3(vec3<bool>(true, true, false), global0.x, 8997u, 1093f)) ^ 4294967295u), 21272u, true);
    return Struct_1(true, vec4<i32>(_wgslsmith_mod_i32(0i, u_input.b), ~(2147483647i ^ ~u_input.b), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 37052i, 2147483647i, arg_0), select(vec4<i32>(39674i, -4713i, arg_0, u_input.b), u_input.a, arg_1.x)), arg_0), func_1(vec4<u32>(~var_0, 41264u, ~(~var_0), var_0), select(min(vec4<i32>(arg_0, 24652i, u_input.b, u_input.a.x), u_input.a), vec4<i32>(arg_0, 44675i, -1i, 0i), true) & select(~u_input.a, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, 60595i, u_input.a.x), u_input.a), vec4<bool>(true, arg_1.x, true, arg_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.wyz))), Struct_1(false, select(u_input.a, select(vec4<i32>(1i, 1i, u_input.b, arg_0), u_input.a, vec4<bool>(true, true, false, arg_1.x)), all(arg_1)), vec4<bool>(all(vec3<bool>(true, false, false)), any(arg_1), !arg_1.x, true), ~u_input.a.zzz)), ~reverseBits(-firstTrailingBit(u_input.a.wzx)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<u32>, arg_3: i32) -> bool {
    let var_0 = _wgslsmith_clamp_vec3_u32(~arg_2.zzz, _wgslsmith_mod_vec3_u32(arg_2.yyx, _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(8631u, arg_2.x, arg_2.x) ^ vec3<u32>(arg_2.x, 51887u, 47989u)), max(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, arg_2.x, arg_2.x), arg_2.xwx, vec3<u32>(55615u, arg_2.x, arg_2.x)), arg_2.yzy))), arg_2.yxx << (arg_2.xxx % vec3<u32>(32u)));
    var var_1 = arg_0.b.xz;
    var_1 = _wgslsmith_sub_vec2_i32(select(vec2<i32>(arg_3, 0i), u_input.a.zz, true), reverseBits(~_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(arg_3, -51581i)), countOneBits(u_input.a.xx))));
    var var_2 = vec2<u32>(var_0.x, var_0.x);
    var_2 = ~vec2<u32>(_wgslsmith_sub_u32(~firstLeadingBit(var_2.x), ~arg_2.x), arg_2.x);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_4(Struct_1(false, u_input.a, vec4<bool>(true, true, true, all(vec3<bool>(false, false, false))), vec3<i32>(-2147483647i, u_input.b, _wgslsmith_mult_i32(u_input.b, u_input.a.x))), select(func_1(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_add_vec4_i32(u_input.a, u_input.a), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(2214f, -2364f, 235f), vec3<f32>(global0.x, global0.x, -459f))), global1[_wgslsmith_index_u32(~4294967295u, 15u)]), vec4<bool>(true, true, all(vec4<bool>(false, false, false, false)), true), func_1(vec4<u32>(1u, 6912u, 4294967295u, 17130u), u_input.a, vec3<f32>(global0.x, global0.x, -1768f), func_2(u_input.b, vec2<bool>(false, false))).x), reverseBits(vec4<u32>(1u, 1u, 1u, 1u)), -1i), u_input.a, !vec4<bool>(true, all(vec3<bool>(true, true, true)), true, true), ~u_input.a.wxx);
    var var_1 = _wgslsmith_f_op_f32(-1361f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2252f, _wgslsmith_f_op_f32(sign(global0.x))))));
    let var_2 = _wgslsmith_div_u32(_wgslsmith_add_u32(1u, select(abs(69362u), ~4294967295u, select(var_0.c.x, var_0.a, var_0.a))), 14497u) & _wgslsmith_add_u32(1u, min(_wgslsmith_clamp_u32(4294967295u, 0u, 0u) << (~4294967295u % 32u), _wgslsmith_clamp_u32(abs(47628u), ~52054u, select(1u, 4294967295u, false))));
    let var_3 = Struct_1(any(func_1(reverseBits(vec4<u32>(12571u, var_2, var_2, 0u)), _wgslsmith_add_vec4_i32(var_0.b, var_0.b), global0.wyz, Struct_1(var_0.a, var_0.b, vec4<bool>(var_0.a, var_0.c.x, true, var_0.c.x), u_input.a.xwx)).wyw) || true, vec4<i32>(1i, 2147483647i, u_input.a.x, countOneBits(_wgslsmith_dot_vec4_i32(~vec4<i32>(13460i, u_input.b, u_input.a.x, u_input.a.x), reverseBits(vec4<i32>(var_0.d.x, 2147483647i, 48439i, -50045i))))), vec4<bool>(true && var_0.c.x, true, true, (var_2 < 0u) || all(vec4<bool>(false, true, var_0.a, var_0.a))), abs(-(max(vec3<i32>(2147483647i, -14896i, u_input.a.x), vec3<i32>(var_0.b.x, 27076i, 1888i)) | _wgslsmith_add_vec3_i32(var_0.d, u_input.a.wxx))));
    let var_4 = select(all(var_3.c.zy), !func_2(var_0.d.x, func_1(_wgslsmith_div_vec4_u32(vec4<u32>(var_2, 0u, var_2, var_2), vec4<u32>(4294967295u, var_2, 51309u, 22077u)), ~var_0.b, global0.xxw, Struct_1(var_3.a, u_input.a, vec4<bool>(false, true, true, false), vec3<i32>(var_3.d.x, var_3.d.x, -2147483647i))).yw).a, select(true, true, func_1(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 36854u, var_2, var_2) ^ vec4<u32>(4294967295u, 4294967295u, 55185u, var_2), vec4<u32>(var_2, 1u, var_2, var_2) | vec4<u32>(32353u, var_2, var_2, 117630u)), firstLeadingBit(var_3.b), global0.www, var_3).x));
    var var_5 = Struct_1(~_wgslsmith_mod_u32(min(var_2, 25119u), var_2) < 0u, vec4<i32>(~func_2(_wgslsmith_div_i32(var_3.d.x, u_input.b), var_3.c.wx).b.x, -36272i, ~(~_wgslsmith_add_i32(1i, 1i)), firstLeadingBit(~(-2147483647i)) ^ u_input.b), var_3.c, ~select(_wgslsmith_sub_vec3_i32(var_3.b.zyz, u_input.a.yxw), vec3<i32>(_wgslsmith_div_i32(-1i, var_0.d.x), var_0.b.x >> (36978u % 32u), _wgslsmith_mod_i32(-65133i, u_input.a.x)), -var_3.b.x == _wgslsmith_div_i32(u_input.b, var_3.b.x)));
    let var_6 = !(!any(func_1(vec4<u32>(15663u, var_2, var_2, var_2), var_3.b, vec3<f32>(-1126f, global0.x, 1000f), var_0).wwx)) || all(!select(vec3<bool>(var_4, true, var_0.c.x), !var_3.c.zzz, !var_5.c.xyz));
    let x = u_input.a;
    s_output = StorageBuffer(0u, 37613i, -941f, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-237f, -356f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), -730f) + _wgslsmith_f_op_vec2_f32(-global0.yx)))));
}

