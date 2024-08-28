struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: f32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>) -> vec4<bool> {
    var var_0 = Struct_2(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(17041u, 99051u, 1u, 0u), ~vec4<u32>(46612u, 0u, u_input.b, u_input.b)), u_input.b, _wgslsmith_div_u32(u_input.b, ~118718u)), min(firstLeadingBit(~(-vec4<i32>(u_input.c.x, 0i, arg_2.x, arg_2.x))), (vec4<i32>(-1i) * -vec4<i32>(arg_2.x, -32087i, 24429i, u_input.a)) << (countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 16469u, 43486u, 92790u), vec4<u32>(u_input.b, 0u, 1u, u_input.b))) % vec4<u32>(32u))));
    return vec4<bool>(false, true, true, any(vec3<bool>(false, 1u < firstTrailingBit(904u), true)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-1038f - 665f);
    global0 = -(~(-u_input.c.x)) | 1i;
    let var_1 = select(vec3<bool>(2147483647i == -u_input.c.x, true, true), vec3<bool>(true, true, select(true, -696f <= _wgslsmith_f_op_f32(-223f + arg_1.b.x), false)), vec3<bool>(true, !select(all(vec2<bool>(true, false)), true, u_input.b > u_input.b), any(select(func_3(arg_1.a, arg_1, u_input.c), func_3(arg_1.a, arg_1, u_input.c), vec4<bool>(true, true, true, true)))));
    let var_2 = _wgslsmith_f_op_f32(-arg_1.a);
    let var_3 = Struct_2(_wgslsmith_clamp_vec3_u32(firstTrailingBit(~(~vec3<u32>(u_input.b, u_input.b, 66153u))), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), firstLeadingBit(vec3<u32>(4294967295u, u_input.b, u_input.b)), ~vec3<u32>(21643u, 826u, 4294967295u)), vec3<u32>(u_input.b, u_input.b, ~u_input.b)), _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(u_input.b, 76138u, u_input.b)) ^ _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(u_input.b, 4294967295u, 0u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 88599u, u_input.b), vec3<u32>(85511u, u_input.b, 1u)), vec3<u32>(12046u, 4294967295u, 1u), vec3<u32>(u_input.b, u_input.b, u_input.b)))), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(3577i, u_input.a, arg_0.x, 2147483647i), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, -2147483647i) & u_input.c, countOneBits(vec3<i32>(arg_0.x, arg_0.x, -30081i))), 2147483647i, countOneBits(arg_0.x), firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), u_input.c.xz)))));
    return abs(1u);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: u32, arg_3: vec3<u32>) -> Struct_3 {
    global0 = arg_0.x;
    global0 = 20213i;
    global0 = ~(-1i);
    let var_0 = select(~(~(~arg_3.zz)) >> (vec2<u32>(func_2(arg_0.yx, Struct_1(897f, vec3<f32>(2064f, 171f, -383f))) & ~94901u, ~firstTrailingBit(u_input.b)) % vec2<u32>(32u)), vec2<u32>(0u, 1u) >> (vec2<u32>(_wgslsmith_sub_u32(~arg_1.x, _wgslsmith_add_u32(6009u, arg_1.x)), 4294967295u) % vec2<u32>(32u)), vec2<bool>(true, arg_1.x >= 89060u));
    var var_1 = Struct_1(1f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(486f, -1200f, -1000f), vec3<f32>(-1535f, -1718f, -1000f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1964f, 791f, 1603f), vec3<f32>(1000f, -1013f, 104f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(681f, -930f, 252f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1708f, -299f, -363f), vec3<f32>(468f, 919f, 616f), true))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(389f, -1327f, -151f)))))));
    return Struct_3(select(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, any(vec2<bool>(false, false)), select(false, false, true)), true), select(vec3<bool>(false, var_0.x <= arg_3.x, false), vec3<bool>(true, true, true), func_3(-435f, Struct_1(var_1.b.x, var_1.b), -vec3<i32>(-4820i, u_input.a, 37902i)).x), false), Struct_1(_wgslsmith_f_op_f32(var_1.b.x + var_1.a), var_1.b), _wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x * -479f) * _wgslsmith_f_op_f32(-var_1.b.x))))), select(~(arg_1 << (vec4<u32>(arg_2, 22928u, arg_3.x, 0u) % vec4<u32>(32u))) ^ ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, 9751u, arg_1.x, 27166u), vec4<u32>(4294967295u, u_input.b, arg_1.x, 0u)), ~(~arg_1), vec4<bool>(true, true, true, true)));
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> vec3<f32> {
    var var_0 = arg_0.b.a;
    var var_1 = u_input.a;
    let var_2 = true;
    var var_3 = Struct_2(min(vec3<u32>(_wgslsmith_clamp_u32(u_input.b & arg_0.d.x, countOneBits(u_input.b), ~arg_0.d.x), 40598u, 39388u), ~((vec3<u32>(4294967295u, 0u, 1u) >> (arg_0.d.wxy % vec3<u32>(32u))) << (arg_0.d.wxx % vec3<u32>(32u)))), reverseBits(-vec4<i32>(0i, -2147483647i, u_input.c.x, u_input.c.x) | min(vec4<i32>(arg_1, 0i, 5456i, -2944i), vec4<i32>(-5357i, -2147483647i, u_input.c.x, u_input.c.x))) & ~_wgslsmith_mod_vec4_i32(-vec4<i32>(arg_1, 0i, 0i, u_input.a), reverseBits(vec4<i32>(1i, 13857i, u_input.c.x, u_input.a))));
    let var_4 = select(vec4<bool>(true, true, true, !select(false, arg_0.a.x, var_2) | true), vec4<bool>(var_2, false, true, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_0.c >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -296f))), true, var_2));
    return arg_0.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1233f + -465f)), 742f))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -440f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1365f - -563f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1004f * 452f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_1(u_input.c, vec4<u32>(12189u, 27546u, 0u, 4294967295u), u_input.b, vec3<u32>(1u, 19256u, 4294967295u)), u_input.c.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1198f, 702f, 217f) + vec3<f32>(-154f, 924f, 1283f)) - vec3<f32>(-1000f, 473f, 1389f)))));
    global0 = u_input.a;
    let var_1 = Struct_2(vec3<u32>(_wgslsmith_dot_vec4_u32(min(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 1871u, u_input.b, u_input.b), vec4<u32>(1u, u_input.b, 13340u, 17717u)), ~vec4<u32>(u_input.b, 78415u, 4294967295u, 32572u)), vec4<u32>(5866u >> (u_input.b % 32u), firstLeadingBit(u_input.b), reverseBits(0u), ~u_input.b)), u_input.b, _wgslsmith_add_u32(u_input.b, func_1(vec3<i32>(u_input.a, -2147483647i, -1i), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.b, 69740u, u_input.b), vec4<u32>(u_input.b, u_input.b, 29203u, u_input.b), vec4<u32>(u_input.b, 10620u, u_input.b, u_input.b)), func_2(vec2<i32>(u_input.c.x, 1i), Struct_1(861f, vec3<f32>(var_0.a, -481f, var_0.a))), func_1(vec3<i32>(1i, u_input.c.x, -2147483647i), vec4<u32>(69286u, 38405u, 9268u, 0u), 1u, vec3<u32>(u_input.b, 1u, u_input.b)).d.xyy).d.x)), ~(-select(-vec4<i32>(u_input.a, u_input.c.x, -2147483647i, u_input.a), vec4<i32>(2147483647i, u_input.c.x, u_input.a, u_input.c.x), true)));
    global0 = abs(u_input.c.x);
    global0 = -2147483647i;
    let var_2 = var_1;
    global0 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_1.a.x), -909f);
}

