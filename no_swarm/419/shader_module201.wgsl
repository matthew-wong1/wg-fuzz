struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(7670u, 23812u, 4367u, 21500u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    let var_0 = vec4<i32>(u_input.d, _wgslsmith_div_i32(countOneBits(u_input.a.x), -51141i), countOneBits(-u_input.d), 0i);
    return global0.x;
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> vec4<u32> {
    var var_0 = select(!(!select(!arg_2.b.xx, !arg_2.b.zy, !arg_2.b.xx)), vec2<bool>(all(vec2<bool>(false, false)), all(arg_0.a.b.zy)), vec2<bool>(arg_0.a.d.x < -1i, (u_input.d << (_wgslsmith_add_u32(arg_2.a, 62906u) % 32u)) > -26699i));
    let var_1 = 1f;
    let var_2 = _wgslsmith_f_op_f32(1780f * arg_2.e);
    var var_3 = Struct_3(vec2<i32>(arg_0.a.d.x, arg_1), select(true, arg_2.b.x, true) | var_0.x, !vec4<bool>(arg_3, arg_0.a.b.x, _wgslsmith_f_op_f32(arg_0.a.e * var_1) != -317f, arg_3));
    let var_4 = !var_3.c;
    return ~(~vec4<u32>(func_2(var_3.c), 0u & arg_0.a.a, 1u, ~0u));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<f32>) -> vec4<u32> {
    let var_0 = u_input.d << (arg_0.x % 32u);
    var var_1 = select(vec4<i32>(u_input.d, _wgslsmith_dot_vec2_i32(u_input.a.wz << (vec2<u32>(3028u, arg_0.x) % vec2<u32>(32u)), vec2<i32>(var_0, -36936i) & u_input.a.yz), ~1i, ~24735i >> (func_2(vec4<bool>(false, false, false, true)) % 32u)) << (~select(~arg_0, func_3(Struct_2(Struct_1(global0.x, vec3<bool>(false, true, true), vec4<i32>(var_0, 0i, 17557i, 23727i), vec2<i32>(32552i, var_0), arg_1.x), vec2<f32>(2540f, arg_1.x)), var_0, Struct_1(28435u, vec3<bool>(true, true, true), u_input.a, u_input.a.wx, 393f), false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), false)) % vec4<u32>(32u)), vec4<i32>(u_input.d ^ (i32(-1i) * -19320i), firstLeadingBit(~u_input.a.x), _wgslsmith_sub_i32(5236i, ~_wgslsmith_mult_i32(var_0, var_0)), 17422i), vec4<bool>(true, select(true, true, true), select(firstLeadingBit(arg_0.x) >= (arg_0.x & 4294967295u), all(vec4<bool>(true, true, true, true)), true), (0i <= var_0) && (any(vec2<bool>(false, true)) || true)));
    let var_2 = vec4<u32>(_wgslsmith_mult_u32(1u, max(global0.x << (reverseBits(arg_0.x) % 32u), ~0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.b | ~49402u, 1u), ~select(~vec2<u32>(u_input.b, 4294967295u), ~global0.yw, vec2<bool>(true, false))), 1u, 43669u);
    var_1 = vec4<i32>(_wgslsmith_clamp_i32(i32(-1i) * -31451i, (_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_0, 0i, -28694i), u_input.a) | -15255i) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(7342u, 0u), select(vec2<u32>(1u, u_input.c.x), vec2<u32>(74650u, 1u), vec2<bool>(true, true))) % 32u), _wgslsmith_dot_vec4_i32(~(vec4<i32>(var_1.x, u_input.d, var_1.x, var_0) >> (vec4<u32>(22018u, 40153u, 4294967295u, arg_0.x) % vec4<u32>(32u))), u_input.a)), max(u_input.a.x, 0i), u_input.d, var_0);
    let var_3 = Struct_1(~(~4294967295u), vec3<bool>(true, !all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), true)), any(vec3<bool>(true, true, all(vec2<bool>(false, true))))), -countOneBits(vec4<i32>(var_1.x, 51045i, -2147483647i, var_0)), _wgslsmith_mult_vec2_i32(~vec2<i32>(firstLeadingBit(-2147483647i), var_0), vec2<i32>(min(2147483647i, 1i), var_0)), arg_1.x);
    return select(vec4<u32>(_wgslsmith_div_u32(abs(1u), _wgslsmith_mod_u32(var_3.a, u_input.c.x)), func_3(Struct_2(var_3, vec2<f32>(647f, arg_1.x)), var_3.d.x, Struct_1(arg_0.x, vec3<bool>(true, var_3.b.x, var_3.b.x), vec4<i32>(0i, -25802i, var_3.c.x, var_1.x), u_input.a.xx, arg_1.x), var_3.b.x).x, ~func_2(vec4<bool>(false, true, var_3.b.x, false)), ~_wgslsmith_dot_vec2_u32(u_input.c.xy, u_input.c.xx)), vec4<u32>(arg_0.x >> (arg_0.x % 32u), 1u, var_2.x, global0.x) >> (firstLeadingBit(countOneBits(var_2)) % vec4<u32>(32u)), vec4<bool>(all(!var_3.b), true, true, !any(vec4<bool>(true, var_3.b.x, var_3.b.x, true)))) & arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_add_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 0u, u_input.b, u_input.b), abs(vec4<u32>(global0.x, 3213u, u_input.c.x, 1u)))), _wgslsmith_mod_vec4_u32(firstTrailingBit(~vec4<u32>(1u, 1u, 4294967295u, 4294967295u)), max(vec4<u32>(u_input.b, global0.x, global0.x, 0u), func_1(vec4<u32>(global0.x, global0.x, u_input.c.x, 26278u), vec4<f32>(-499f, -444f, -133f, -820f)))));
    let var_0 = Struct_1(1u, !select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), any(vec2<bool>(true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true)))), vec4<i32>(select(u_input.d, _wgslsmith_mod_i32(u_input.d, 2147483647i) ^ u_input.a.x, true), u_input.a.x, 299i, 1i), vec2<i32>(u_input.d, u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-224f, 720f))))));
    let var_1 = u_input.d;
    var var_2 = Struct_2(Struct_1(~(~33163u), vec3<bool>(any(!vec4<bool>(true, var_0.b.x, false, var_0.b.x)), !all(var_0.b), var_0.b.x), u_input.a ^ _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(40445i, u_input.d, var_0.c.x, 0i)), -var_0.c), vec2<i32>(-2147483647i, 1i), var_0.e), vec2<f32>(_wgslsmith_f_op_f32(round(var_0.e)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2144f * 680f)), -587f))));
    global0 = max(vec4<u32>(~50137u, func_2(select(select(vec4<bool>(var_0.b.x, true, var_2.a.b.x, false), vec4<bool>(var_2.a.b.x, false, var_2.a.b.x, var_2.a.b.x), vec4<bool>(var_2.a.b.x, var_0.b.x, true, false)), !vec4<bool>(var_2.a.b.x, var_0.b.x, false, true), select(vec4<bool>(false, var_0.b.x, var_2.a.b.x, var_0.b.x), vec4<bool>(false, true, var_2.a.b.x, true), false))), _wgslsmith_mod_u32(4294967295u, min(~0u, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(4294967295u, var_0.a, u_input.c.x)))), global0.x), select(select(firstTrailingBit(vec4<u32>(var_0.a, 10321u, 18003u, var_0.a)), abs(vec4<u32>(0u, var_0.a, 31533u, global0.x)), !var_0.b.x), ~min(~vec4<u32>(4294967295u, var_2.a.a, u_input.b, global0.x), min(vec4<u32>(u_input.b, 0u, global0.x, u_input.b), vec4<u32>(18622u, var_2.a.a, 15693u, var_2.a.a))), !(!select(vec4<bool>(var_2.a.b.x, var_0.b.x, var_2.a.b.x, var_2.a.b.x), vec4<bool>(true, false, true, true), vec4<bool>(var_2.a.b.x, var_2.a.b.x, var_2.a.b.x, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) + _wgslsmith_f_op_f32(ceil(1155f))), -554f), var_2.a.e));
}

