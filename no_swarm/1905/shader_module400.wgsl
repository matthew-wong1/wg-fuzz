struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
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

var<private> global0: vec2<i32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(240f, 2613f) + vec2<f32>(1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1129f + 1546f))))), Struct_1(~vec3<u32>(70411u, 32334u, 1u) ^ ~(vec3<u32>(u_input.d, 25548u, 1u) & vec3<u32>(u_input.d, 17773u, u_input.d))));
    let var_1 = vec4<i32>(_wgslsmith_mult_i32(firstTrailingBit(global0.x >> (1u % 32u)), 0i), -1i, _wgslsmith_sub_i32(abs(_wgslsmith_mult_i32(u_input.c, 2147483647i)), u_input.b), -2921i);
    global0 = _wgslsmith_mult_vec2_i32(vec2<i32>(var_1.x << (countOneBits(min(4294967295u, 26097u)) % 32u), firstLeadingBit(-u_input.b)), -min(vec2<i32>(-38181i, ~12457i), abs(_wgslsmith_div_vec2_i32(vec2<i32>(-14312i, -2147483647i), vec2<i32>(var_1.x, u_input.c)))));
    let var_2 = Struct_3(abs(_wgslsmith_sub_u32(31364u, 26471u)));
    let var_3 = abs(~var_1.x);
    return u_input.a.zy;
}

fn func_2() -> Struct_3 {
    global0 = vec2<i32>(_wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(u_input.a.yy, vec2<i32>(-26335i, 2147483647i)) & vec2<i32>(~global0.x, u_input.a.x), func_3()), -9621i);
    global0 = vec2<i32>(firstLeadingBit(~62359i), u_input.b);
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1220f)) * _wgslsmith_f_op_f32(867f - 2429f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-168f)), _wgslsmith_f_op_f32(step(-255f, -849f)))) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -400f), -324f, false)), _wgslsmith_div_f32(252f, _wgslsmith_f_op_f32(max(-2298f, 206f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    let var_1 = all(vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)) && all(vec4<bool>(true, true, true, true)), true, all(vec4<bool>(true, true, true, true))));
    global0 = ~vec2<i32>(-u_input.b, -u_input.a.x);
    return Struct_3(7088u);
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = func_2();
    return _wgslsmith_mult_u32(~(~(~12859u)) ^ ~u_input.d, var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a.yy;
    global0 = abs(-u_input.a.zy);
    let var_0 = vec2<u32>(~1u, _wgslsmith_dot_vec4_u32(~min(vec4<u32>(u_input.d, 28560u, u_input.d, 19051u), _wgslsmith_mult_vec4_u32(vec4<u32>(49117u, 0u, 121783u, 4294967295u), vec4<u32>(u_input.d, u_input.d, 8773u, u_input.d))), vec4<u32>(max(87773u, 4294967295u), u_input.d, func_1(_wgslsmith_f_op_f32(-195f + -268f)), u_input.d)));
    global0 = -u_input.a.xz;
    let var_1 = !select(!vec4<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(true, false, true, true)), true, true), vec4<bool>(select(true, select(false, false, false), true), all(vec4<bool>(true, true, true, true)), true, all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true))), vec4<bool>(!any(vec4<bool>(false, false, true, true)), true, all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), any(vec4<bool>(true, true, true, true)) || any(vec2<bool>(true, true))));
    var var_2 = select(!(!var_1.xz), vec2<bool>(var_1.x, true), vec2<bool>(select(var_1.x, true, any(!var_1.xx)), !any(!vec3<bool>(true, true, var_1.x))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-262f, -716f) - vec2<f32>(-467f, -1498f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-320f, -559f), vec2<f32>(1864f, -1941f), true)))) + vec2<f32>(_wgslsmith_f_op_f32(step(1539f, _wgslsmith_f_op_f32(f32(-1f) * -686f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-370f))))), Struct_1(vec3<u32>(var_0.x ^ 0u, _wgslsmith_dot_vec2_u32(var_0, var_0), ~49524u) >> (reverseBits(vec3<u32>(var_0.x, 28183u, u_input.d)) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(var_3.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.x, var_3.a.x))))))));
}

