struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: bool) -> vec2<bool> {
    var var_0 = vec3<i32>(_wgslsmith_clamp_i32(-(~(-18376i)), _wgslsmith_add_i32(~2147483647i, _wgslsmith_mult_i32(0i, -2147483647i)), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, -1i), vec3<i32>(-25528i, -19626i, 0i)))), _wgslsmith_dot_vec4_i32(reverseBits(min(vec4<i32>(3071i, -44125i, -26124i, 41465i), vec4<i32>(44404i, 2147483647i, 1i, 39746i))), -abs(vec4<i32>(1i, -1i, -11085i, 8537i))), _wgslsmith_sub_i32(-2147483647i >> (u_input.a.x % 32u), min(2147483647i, 30721i)) << ((u_input.a.x << ((u_input.a.x | arg_1.a) % 32u)) % 32u)) & min(reverseBits(vec3<i32>(_wgslsmith_clamp_i32(4602i, 0i, -45612i), 8490i, 1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-19269i, -1i, 0i, -731i), vec4<i32>(-35641i, 2147483647i, 1i, 0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-40613i, 0i, 0i, 13636i), vec4<i32>(-73822i, -1i, 685i, -1i))), reverseBits(vec3<i32>(-1i, 41890i, 29618i) >> (u_input.a % vec3<u32>(32u))), vec3<i32>(1i, 1i, 1i)));
    var var_1 = Struct_2(Struct_1(arg_1.a, vec3<bool>(arg_0.x, _wgslsmith_f_op_f32(ceil(arg_2.x)) >= _wgslsmith_f_op_f32(arg_2.x - 1000f), true)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, 567f, _wgslsmith_f_op_f32(sign(arg_2.x))) - _wgslsmith_f_op_vec3_f32(-arg_2)))));
    var_0 = ~firstTrailingBit(~(vec3<i32>(var_0.x, var_0.x, -31816i) | -vec3<i32>(var_0.x, -2147483647i, var_0.x)));
    var_1 = Struct_2(arg_1, vec3<f32>(-187f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-211f, -1098f) + -959f), 352f));
    let var_2 = ~1u;
    return select(arg_1.b.xy, !vec2<bool>(false, arg_3), false);
}

fn func_2(arg_0: f32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-arg_0), any(vec4<bool>(true, true, true, false)))))))) != _wgslsmith_f_op_f32(arg_0 * arg_0);
    var_0 = true | any(select(vec2<bool>(true, false), select(func_3(vec2<bool>(false, false), Struct_1(u_input.a.x, vec3<bool>(true, false, false)), vec3<f32>(arg_0, arg_0, 1006f), true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), arg_0 <= -1822f), true));
    var_0 = arg_0 >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - 171f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1534f, arg_0) * _wgslsmith_f_op_f32(-604f * arg_0))));
    let var_1 = _wgslsmith_f_op_f32(-arg_0);
    var var_2 = Struct_2(Struct_1(35564u, vec3<bool>(true, false, all(vec3<bool>(false, false, false)) & false)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, 160f, var_1))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-235f, 912f, arg_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0, -1000f, -469f))))))));
    return vec4<i32>(2147483647i, firstLeadingBit(26923i), select(firstTrailingBit(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(43487i, 1i)), ~vec2<i32>(-1i, 15159i))), firstTrailingBit(1i), true), ~(~(-2147483647i)));
}

fn func_1() -> bool {
    var var_0 = firstLeadingBit(_wgslsmith_div_vec4_i32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -392f)), firstTrailingBit(vec4<i32>(-2147483647i, -1i, 0i, -2147483647i)))) >> (vec4<u32>(reverseBits(24064u), u_input.a.x, abs(44432u), firstLeadingBit(~13452u)) % vec4<u32>(32u));
    var var_1 = Struct_2(Struct_1(u_input.a.x, select(vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(false, false, false, false)), true, true), true)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -223f), _wgslsmith_f_op_f32(f32(-1f) * -147f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -853f))))));
    var_1 = Struct_2(var_1.a, _wgslsmith_f_op_vec3_f32(var_1.b * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) - -435f), -171f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -674f))))));
    var var_2 = Struct_2(var_1.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b))))));
    var_2 = Struct_2(var_2.a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1662f), var_1.b.x, 480f));
    return var_2.a.b.x && true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (1i <= _wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, 36370i), vec2<i32>(1i, 1i) << (select(u_input.a.yy, u_input.a.zy, true) % vec2<u32>(32u)))) || true;
    var_0 = true;
    var_0 = true;
    let var_1 = ~vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 20849u, 1u), u_input.a)), _wgslsmith_sub_u32(4294967295u >> (1u % 32u), ~abs(u_input.a.x)), 4294967295u, ~u_input.a.x);
    var_0 = all(vec4<bool>(select(func_1(), !func_3(vec2<bool>(false, false), Struct_1(u_input.a.x, vec3<bool>(false, true, true)), vec3<f32>(2116f, -597f, -580f), true).x, false), false, false, false));
    var var_2 = _wgslsmith_f_op_f32(round(-114f));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_1.x | ~_wgslsmith_add_u32(4294967295u, 0u)), ~vec2<u32>(firstTrailingBit(~4294967295u), 17286u), ~u_input.a.x, _wgslsmith_mod_vec2_i32(abs(firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -8351i), vec2<i32>(-2147483647i, -1i), vec2<i32>(14210i, -949i)))), min(~vec2<i32>(30102i, 2147483647i), -(~vec2<i32>(46965i, -13921i)))), select(~vec4<u32>(~4294967295u, 1u, ~u_input.a.x, u_input.a.x), ~vec4<u32>(_wgslsmith_mult_u32(var_1.x, u_input.a.x), var_1.x, 1u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(4294967295u, 30309u, 33717u))), false));
}

