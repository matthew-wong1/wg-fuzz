struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> vec2<f32> {
    let var_0 = ~_wgslsmith_mult_vec3_u32(abs(abs(vec3<u32>(u_input.c, u_input.c, 4294967295u)) | (vec3<u32>(4294967295u, u_input.c, 0u) & vec3<u32>(1u, 18343u, u_input.c))), select(~(vec3<u32>(u_input.c, u_input.c, 83181u) ^ vec3<u32>(1u, 1u, 76465u)), select(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 0u, u_input.c), vec3<u32>(u_input.c, 1u, u_input.c)), ~vec3<u32>(u_input.c, u_input.c, 9539u), all(vec2<bool>(arg_0, arg_0))), !vec3<bool>(false, arg_0, arg_0)));
    let var_1 = !(!(!select(select(vec2<bool>(true, arg_0), vec2<bool>(true, arg_0), vec2<bool>(arg_0, true)), !vec2<bool>(false, arg_0), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(arg_0, true)))));
    var var_2 = !vec4<bool>(var_1.x, var_0.x >= ~(~var_0.x), !arg_0 | true, any(vec4<bool>(true, arg_0, arg_0, true)) || false);
    let var_3 = u_input.a;
    var var_4 = u_input.d;
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-342f - 483f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-307f, -618f)) - _wgslsmith_f_op_f32(ceil(1065f)))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: i32) -> vec3<bool> {
    var var_0 = ~abs(u_input.c);
    var_0 = ~(~4294967295u >> (~(u_input.c << (_wgslsmith_sub_u32(0u, arg_1.x) % 32u)) % 32u));
    var var_1 = !(!(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true)))));
    var_0 = 4294967295u;
    var var_2 = Struct_4(-321f, Struct_2(false), Struct_3(!(!select(vec3<bool>(false, false, false), var_1.yyy, vec3<bool>(var_1.x, var_1.x, var_1.x)))));
    return select(vec3<bool>(true, var_2.c.a.x, var_1.x), select(var_1.wyx, var_1.yyw, !select(any(var_1.xxx), true, all(vec4<bool>(true, var_2.b.a, var_2.c.a.x, var_2.b.a)))), var_1.wwx);
}

fn func_2(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec2<f32>) -> u32 {
    var var_0 = Struct_3(func_4(_wgslsmith_f_op_vec2_f32(func_3(false)), arg_1.yy, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 1i, -1i) >> (arg_1.xxy % vec3<u32>(32u)), max(vec3<i32>(u_input.a, 0i, u_input.b), vec3<i32>(-4212i, -42585i, u_input.b))), vec3<i32>(firstLeadingBit(u_input.a), ~5750i, _wgslsmith_add_i32(u_input.a, u_input.b)))));
    var_0 = Struct_3(select(select(select(!vec3<bool>(arg_0.a.x, true, arg_0.a.x), !vec3<bool>(var_0.a.x, var_0.a.x, arg_0.a.x), arg_0.a.x), func_4(vec2<f32>(arg_2.x, -1724f), countOneBits(vec2<u32>(arg_1.x, 0u)), -59118i), func_4(_wgslsmith_f_op_vec2_f32(arg_2 + vec2<f32>(-1191f, -1000f)), arg_1.xx, u_input.b)), !vec3<bool>(arg_0.a.x, true, arg_0.a.x), var_0.a));
    var var_1 = firstTrailingBit(abs(vec2<u32>(u_input.c, 8858u)) >> (vec2<u32>(arg_1.x, _wgslsmith_dot_vec2_u32(arg_1.xx, vec2<u32>(arg_1.x, arg_1.x)) << (1u % 32u)) % vec2<u32>(32u)));
    var_0 = Struct_3(var_0.a);
    let var_2 = Struct_1(62838u, all(var_0.a), ~(~vec3<u32>(1u, ~47403u, 4294967295u)), firstTrailingBit(max(~vec3<i32>(1i, 2147483647i, u_input.d), min(reverseBits(vec3<i32>(-1i, -42684i, 22151i)), countOneBits(vec3<i32>(u_input.a, 8717i, u_input.a))))));
    return ~(~(_wgslsmith_dot_vec2_u32(~arg_1.zy, var_2.c.yy) | firstTrailingBit(abs(arg_1.x))));
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = all(!vec2<bool>(all(vec2<bool>(true, false)), any(vec2<bool>(true, true)))) && true;
    var var_1 = _wgslsmith_div_vec3_u32(~(vec3<u32>(0u ^ u_input.c, _wgslsmith_mult_u32(u_input.c, 1u), u_input.c >> (32348u % 32u)) ^ (~vec3<u32>(37949u, 22110u, u_input.c) << (~vec3<u32>(u_input.c, 1u, u_input.c) % vec3<u32>(32u)))), _wgslsmith_mult_vec3_u32((_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(1u, 0u, 4675u)) << (vec3<u32>(u_input.c, u_input.c, u_input.c) % vec3<u32>(32u))) & vec3<u32>(func_2(Struct_3(vec3<bool>(false, false, false)), vec4<u32>(1u, u_input.c, u_input.c, u_input.c), vec2<f32>(-1000f, -1137f)), u_input.c, max(u_input.c, 105006u)), ~(~countOneBits(vec3<u32>(u_input.c, 4294967295u, u_input.c)))));
    var var_2 = ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 0u, 4294967295u, u_input.c) & vec4<u32>(4294967295u, var_1.x, 6065u, 1u), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(var_1.x, 7005u, u_input.c, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, u_input.c, var_1.x, var_1.x), vec4<u32>(var_1.x, var_1.x, 1u, u_input.c)))));
    var_2 = 85591u;
    let var_3 = min(abs(u_input.c), func_2(Struct_3(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)), abs(~(vec4<u32>(var_1.x, 16822u, var_1.x, var_1.x) >> (vec4<u32>(var_1.x, 4294967295u, 4294967295u, 0u) % vec4<u32>(32u)))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -762f), -1000f, true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(899f, 2015f)), -1370f, false)))));
    return Struct_2(true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mod_vec3_i32(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 2147483647i, -15503i), vec3<i32>(u_input.d, 1i, u_input.b))) << (vec3<u32>(~4294967295u, ~u_input.c, 34444u) % vec3<u32>(32u)), firstLeadingBit(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.b, u_input.d), vec3<i32>(2147483647i, -35823i, u_input.d)), vec3<i32>(-2147483647i, u_input.a, u_input.b) >> (vec3<u32>(4294967295u, 3541u, 1u) % vec3<u32>(32u)))));
    let var_1 = func_1(u_input.b);
    var_0 = -(~_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, var_0.x, u_input.b) >> (vec3<u32>(u_input.c, u_input.c, u_input.c) % vec3<u32>(32u)), -vec3<i32>(var_0.x, u_input.b, 8417i))) ^ (vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(-vec3<i32>(var_0.x, 9306i, 2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, 1i, u_input.d), vec3<i32>(u_input.a, var_0.x, -5196i))));
    let var_2 = firstLeadingBit(1u);
    var var_3 = Struct_1(firstLeadingBit(firstTrailingBit(func_2(Struct_3(vec3<bool>(false, true, false)), countOneBits(vec4<u32>(8713u, var_2, u_input.c, 1u)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1138f, -117f), vec2<f32>(-1746f, 1943f), vec2<bool>(true, false)))))), true != any(vec3<bool>(true, false, true)), select(~(~vec3<u32>(var_2, 1u, var_2)), abs(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1403u, var_2), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(29812u, 4294967295u, 4294967295u)), ~vec3<u32>(var_2, 4294967295u, var_2), false)), vec3<bool>(any(select(vec4<bool>(false, false, var_1.a, false), vec4<bool>(var_1.a, true, var_1.a, false), vec4<bool>(var_1.a, true, var_1.a, var_1.a))), var_1.a, var_1.a)), ~(-vec3<i32>(2147483647i, u_input.a, var_0.x)));
    var var_4 = Struct_3(vec3<bool>(!(!any(vec2<bool>(var_3.b, var_1.a))), !var_1.a, !(~38602u < func_2(Struct_3(vec3<bool>(var_3.b, true, false)), vec4<u32>(26215u, 19225u, var_2, u_input.c), vec2<f32>(262f, 1661f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec4<u32>(4294967295u, u_input.c, 87259u, 39651u))), countOneBits(-var_0.x), vec4<i32>(~var_3.d.x, 0i, var_0.x, -_wgslsmith_mod_i32(-16879i, -1i)), 61442u);
}

