struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(21281u, 17345u, 64673u, 4294967295u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_2) -> f32 {
    let var_0 = -select(-959i, abs(firstTrailingBit(-2147483647i) << (arg_0.a % 32u)), true);
    global0 = vec4<u32>(~arg_0.a, ~max(arg_0.a, 24107u), global0.x, arg_0.a);
    var var_1 = ~(~firstLeadingBit(~_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.x, global0.x), global0.wy, vec2<u32>(global0.x, 9547u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1866f, -2660f, 343f))), vec3<f32>(arg_3.c.x, -254f, -340f))))) - vec3<f32>(arg_1, -853f, -1000f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-266f, -1110f, arg_3.b)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_1, -496f) * vec3<f32>(491f, 255f, arg_1))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -301f), -407f, arg_1))));
    global0 = ~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, arg_0.a, 7358u), abs(vec4<u32>(arg_0.a, 23393u, 1463u, var_1.x)), max(vec4<u32>(23003u, var_1.x, 1u, 20845u), vec4<u32>(12231u, 4294967295u, var_1.x, var_1.x))) << (min(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a, var_1.x, arg_0.a, 4294967295u), vec4<u32>(arg_0.a, arg_0.a, 54784u, 14746u)), firstLeadingBit(vec4<u32>(global0.x, arg_0.a, var_1.x, var_1.x))) % vec4<u32>(32u)), vec4<u32>(arg_0.a, ~_wgslsmith_sub_u32(0u, var_1.x), ~4294967295u, 1u), arg_2.x);
    return _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1943f + -273f), _wgslsmith_f_op_f32(-1000f + 933f)) - 1010f)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    var var_0 = arg_2.c.x;
    var_0 = 1000f;
    var var_1 = u_input.c.x;
    let var_2 = -(~reverseBits(abs(u_input.c ^ vec3<i32>(u_input.b, 1i, u_input.b))));
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.c.x, _wgslsmith_f_op_f32(round(-461f)), arg_2.b), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.b, -1000f, arg_0.c.x))), !select(vec3<bool>(true, true, true), arg_2.a.zxx, arg_2.a.yyz)))))));
    return reverseBits(global0.x);
}

fn func_2(arg_0: vec4<f32>) -> vec2<i32> {
    let var_0 = ~((vec2<u32>(global0.x >> (global0.x % 32u), global0.x & global0.x) >> ((vec2<u32>(global0.x, global0.x) ^ firstTrailingBit(vec2<u32>(3718u, global0.x))) % vec2<u32>(32u))) & ~_wgslsmith_add_vec2_u32(global0.yw, ~vec2<u32>(global0.x, global0.x)));
    global0 = ~(~vec4<u32>(34613u, ~global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.x, 96172u), vec3<u32>(var_0.x, global0.x, global0.x)), _wgslsmith_dot_vec3_u32(global0.wwx, global0.zyx))) | vec4<u32>(_wgslsmith_mod_u32(~(~19617u), 77378u), var_0.x, 19729u, func_4(Struct_2(vec4<bool>(false, true, false, true), arg_0.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(521f, 1128f))), vec3<bool>(true, false, all(vec4<bool>(true, true, false, true))), Struct_2(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), false), _wgslsmith_f_op_f32(func_3(Struct_1(var_0.x), 1484f, vec4<bool>(false, true, true, true), Struct_2(vec4<bool>(false, true, false, true), arg_0.x, vec2<f32>(arg_0.x, -1723f)))), vec2<f32>(arg_0.x, arg_0.x)), Struct_1(1u)));
    let var_1 = Struct_2(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(func_3(Struct_1(global0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1885f))), vec4<bool>(true, true, (-71923i <= u_input.b) && true, false), Struct_2(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), false), _wgslsmith_f_op_f32(3214f - -1000f), arg_0.zx))), vec2<f32>(949f, -1000f));
    var var_2 = ~25041u;
    var var_3 = max(var_0.x, ~(var_0.x << (reverseBits(global0.x << (var_0.x % 32u)) % 32u)));
    return vec2<i32>(-_wgslsmith_dot_vec2_i32(reverseBits(u_input.d.wz), vec2<i32>(-15422i, u_input.d.x) | u_input.d.wz) & u_input.c.x, _wgslsmith_add_i32(-1i, u_input.a >> (var_0.x % 32u)));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec4<u32>) -> vec4<u32> {
    var var_0 = _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(abs(_wgslsmith_div_vec2_i32(vec2<i32>(-64407i, u_input.b), max(vec2<i32>(-39828i, u_input.c.x), u_input.d.xx))), select(~u_input.d.xy, u_input.c.yy, vec2<bool>(true, true))), u_input.d.xz);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1771f + 1199f) + 1000f) + _wgslsmith_f_op_f32(-arg_1))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(976f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(212f, arg_0)))))));
    var var_2 = select(vec2<bool>(all(vec2<bool>(true, true)), (var_0.x == var_0.x) || true), select(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), vec2<bool>(true, false), any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true), arg_1 >= 850f))), false);
    let var_3 = Struct_1(firstTrailingBit(1u));
    var_0 = func_2(vec4<f32>(-1325f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1246f) * _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(1118f * 220f))), -552f, _wgslsmith_div_f32(-140f, -1126f)));
    return ~_wgslsmith_sub_vec4_u32(vec4<u32>(56133u, 5736u, abs(_wgslsmith_add_u32(arg_2.x, 9242u)), ~_wgslsmith_mod_u32(5268u, arg_2.x)), vec4<u32>(global0.x, arg_2.x, var_3.a, _wgslsmith_mult_u32(0u, ~var_3.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~0u, 117616u ^ global0.x), _wgslsmith_mult_u32(23086u, global0.x) | min(0u, 12563u), ~(~9829u), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(30715u, 1u, 0u)), _wgslsmith_div_u32(61922u, 398u))), func_1(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1696f * -164f)), ~(~vec4<u32>(18243u, 4294967295u, 4294967295u, global0.x)))), reverseBits(global0.x), 15597u, _wgslsmith_sub_u32(global0.x, global0.x & select(~global0.x, ~global0.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, vec2<i32>(u_input.b, -1i), firstTrailingBit(func_4(Struct_2(vec4<bool>(false, true, true, true), -841f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(373f, 787f))), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), Struct_2(vec4<bool>(true, false, false, true), -1484f, vec2<f32>(1f, 1f)), Struct_1(1885u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(229f, -1045f, -445f), vec3<f32>(153f, 449f, 1000f)) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(662f, 2101f, -453f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-448f, -1094f, 308f), vec3<f32>(-1033f, 770f, 1261f), true))))) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2147f, -1000f, -813f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-616f, 1190f, 1283f), vec3<f32>(1114f, -113f, 584f), true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-634f, 678f, -1683f) - vec3<f32>(450f, -170f, 102f)))));
}

