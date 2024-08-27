struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(0u, 28981u), vec2<i32>(2147483647i, 571i), vec3<i32>(80212i, 1i, 1i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<u32>) -> f32 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-754f * _wgslsmith_div_f32(-667f, _wgslsmith_f_op_f32(step(-1805f, -1651f)))) + -1137f)));
    global0 = Struct_1(var_0.a, arg_1.b, vec3<i32>(global0.b.x, _wgslsmith_dot_vec3_i32(abs(arg_1.c), -_wgslsmith_div_vec3_i32(global0.c, var_0.c)), u_input.b));
    let var_2 = true;
    var var_3 = 1600f;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(470f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1000f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2201f) - -120f))), _wgslsmith_f_op_f32(-1606f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-143f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(645f + 766f)))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32) -> vec2<i32> {
    let var_0 = ~4294967295u;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(232f, _wgslsmith_f_op_f32(abs(1509f)), -247f)) * vec3<f32>(_wgslsmith_f_op_f32(447f + _wgslsmith_f_op_f32(1878f - -1584f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(false, true), Struct_1(vec2<u32>(44757u, 0u), vec2<i32>(-2147483647i, arg_0.x), vec3<i32>(global0.c.x, 0i, -8897i)), ~vec3<u32>(36240u, global0.a.x, 1300u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(692f * -113f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1556f)))));
    let var_2 = ~4294967295u & (~(~99914u) & _wgslsmith_mult_u32(44132u, arg_1));
    var var_3 = 61327i;
    var_3 = arg_0.x;
    return ~(vec2<i32>(-u_input.a >> (select(global0.a.x, 50247u, true) % 32u), u_input.c.x) << (~vec2<u32>(~0u, global0.a.x) % vec2<u32>(32u)));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_1(arg_2.a, func_2(-u_input.c, arg_2.a.x), _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(1i, arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.c.x, -38845i, 20033i), arg_2.c))), vec3<i32>(arg_2.c.x, ~(-1i >> (arg_2.a.x % 32u)), abs(-53992i))));
    global0 = arg_2;
    let var_1 = max(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4015u, global0.a.x, global0.a.x) ^ vec3<u32>(arg_2.a.x, arg_2.a.x, 9531u), ~vec3<u32>(arg_0, arg_2.a.x, 0u)), vec3<u32>(firstLeadingBit(global0.a.x), global0.a.x, ~global0.a.x)), ~(~vec3<u32>(global0.a.x, arg_2.a.x, var_0.a.x)) | ~vec3<u32>(var_0.a.x, var_0.a.x, 0u)) & min(~vec3<u32>(44726u, reverseBits(arg_0), arg_0), vec3<u32>(8407u, 1u, select(1u, 74671u, false) & global0.a.x));
    let var_2 = !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true));
    var var_3 = Struct_1(max(select(var_1.xy, _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2.a.x, 65080u), vec2<u32>(1u, var_1.x) ^ global0.a, vec2<u32>(global0.a.x, 0u)), !all(vec3<bool>(var_2.x, true, false))), ~global0.a), _wgslsmith_clamp_vec2_i32(u_input.c.yz >> (vec2<u32>(30972u, _wgslsmith_dot_vec2_u32(var_0.a, vec2<u32>(global0.a.x, 1u))) % vec2<u32>(32u)), global0.c.zx, var_0.c.xz), -vec3<i32>(_wgslsmith_clamp_i32(max(arg_2.b.x, u_input.a), -4664i, u_input.c.x), -1i, _wgslsmith_clamp_i32(arg_1, ~64491i, arg_1)));
    return var_1.x;
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: vec3<i32>) -> StorageBuffer {
    let var_0 = Struct_1(~global0.a, global0.c.zz, u_input.c.yzw);
    global0 = Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(~1u, arg_1.x | var_0.a.x), max(vec2<u32>(_wgslsmith_add_u32(arg_1.x, global0.a.x), _wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(42962u, global0.a.x, arg_1.x))), ~(~vec2<u32>(1u, 19042u)))), abs(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-24959i, global0.b.x) & vec2<i32>(arg_2.x, u_input.a), min(vec2<i32>(arg_2.x, u_input.a), var_0.c.zx)), 0i)), u_input.c.wxw);
    global0 = Struct_1(~var_0.a, countOneBits(vec2<i32>(_wgslsmith_div_i32(-30792i, abs(32843i)), u_input.b)), global0.c);
    var var_1 = _wgslsmith_mod_i32(-_wgslsmith_sub_i32(5824i, abs(0i)), ~u_input.c.x) | var_0.b.x;
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -389f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1631f)))))))));
    return StorageBuffer(~(~vec4<u32>(4294967295u & arg_1.x, global0.a.x, ~1u, firstTrailingBit(1u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(u_input.b, max(~(~(~global0.c.x)), u_input.c.x));
    var var_1 = vec2<f32>(-161f, 1227f);
    let x = u_input.a;
    s_output = func_4(true, ~(abs(vec3<u32>(global0.a.x, global0.a.x, 47191u)) << ((vec3<u32>(27676u, global0.a.x, global0.a.x) | vec3<u32>(20888u, 1u, 0u)) % vec3<u32>(32u))) | ~vec3<u32>(~42598u, 0u, func_1(0u, u_input.b, Struct_1(vec2<u32>(global0.a.x, 0u), vec2<i32>(u_input.b, var_0.x), vec3<i32>(var_0.x, var_0.x, u_input.b)))), u_input.c.wwy);
}

