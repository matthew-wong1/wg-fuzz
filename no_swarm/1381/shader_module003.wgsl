struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec3<bool>(false, true, false), vec2<u32>(77589u, 3606u)), Struct_1(vec3<bool>(false, true, true), vec2<u32>(109808u, 1u)), Struct_1(vec3<bool>(false, false, true), vec2<u32>(42545u, 12063u)), Struct_1(vec3<bool>(false, true, true), vec2<u32>(0u, 49063u)), Struct_1(vec3<bool>(true, true, true), vec2<u32>(48700u, 15660u)), Struct_1(vec3<bool>(true, false, false), vec2<u32>(1u, 73245u)), Struct_1(vec3<bool>(false, true, false), vec2<u32>(0u, 1u)), Struct_1(vec3<bool>(true, true, false), vec2<u32>(38122u, 1u)), Struct_1(vec3<bool>(true, true, true), vec2<u32>(1u, 4294967295u)), Struct_1(vec3<bool>(true, false, false), vec2<u32>(59790u, 1u)), Struct_1(vec3<bool>(true, false, true), vec2<u32>(12477u, 99040u)), Struct_1(vec3<bool>(true, false, true), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec3<bool>(true, false, true), vec2<u32>(31896u, 8502u)), Struct_1(vec3<bool>(true, false, false), vec2<u32>(4294967295u, 104438u)), Struct_1(vec3<bool>(false, true, false), vec2<u32>(0u, 28859u)), Struct_1(vec3<bool>(true, false, false), vec2<u32>(4294967295u, 9267u)), Struct_1(vec3<bool>(true, true, false), vec2<u32>(1u, 0u)), Struct_1(vec3<bool>(true, true, true), vec2<u32>(4294967295u, 122843u)), Struct_1(vec3<bool>(false, false, true), vec2<u32>(4101u, 4294967295u)), Struct_1(vec3<bool>(false, false, false), vec2<u32>(28500u, 28992u)), Struct_1(vec3<bool>(true, true, false), vec2<u32>(22011u, 0u)), Struct_1(vec3<bool>(false, false, false), vec2<u32>(0u, 1485u)), Struct_1(vec3<bool>(false, true, true), vec2<u32>(432u, 41320u)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: Struct_1) -> u32 {
    var var_0 = 23758i;
    var var_1 = 0i;
    let var_2 = abs(_wgslsmith_add_i32(-19899i, _wgslsmith_div_i32(1i, i32(-1i) * -2147483647i)));
    var_1 = 2147483647i;
    let var_3 = arg_0.x;
    return select(_wgslsmith_mult_u32(arg_0.x | countOneBits(arg_2.b.x), 1u), u_input.a, arg_2.a.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>) -> vec3<bool> {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, func_3(~(~vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)), select(!arg_1.wwy, select(vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(arg_1.x, false, arg_1.x), true), !vec3<bool>(true, arg_1.x, arg_1.x)), Struct_1(select(arg_1.xxx, arg_1.xyz, arg_1.x), arg_0 << (vec2<u32>(arg_0.x, arg_0.x) % vec2<u32>(32u)))), 1u, ~1u), abs((vec4<u32>(17626u, 21632u, 0u, 1u) ^ vec4<u32>(arg_0.x, u_input.a, 29298u, arg_0.x)) << (reverseBits(vec4<u32>(70891u, 78470u, 8500u, arg_0.x)) % vec4<u32>(32u))));
    var var_1 = ~67835u << (_wgslsmith_mult_u32(arg_0.x, 1u << (arg_0.x % 32u)) % 32u);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(465f, 1339f, -1000f, 1618f) + vec4<f32>(-906f, 224f, 151f, -318f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1473f, -2110f, 830f, -1000f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1485f)) - _wgslsmith_f_op_f32(-244f * -544f)), -1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -602f), 1000f, true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-213f + 2672f))))), all(!select(!vec3<bool>(arg_1.x, false, true), arg_1.zxz, arg_1.x))));
    var_0 = ~_wgslsmith_mod_u32(arg_0.x << (72803u % 32u), ~select(10032u, 0u ^ u_input.a, false));
    var_0 = ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(arg_0, ~arg_0), 19233u), firstLeadingBit(15481u));
    return select(arg_1.wyy, arg_1.ywx, false);
}

fn func_1() -> i32 {
    global0 = array<Struct_1, 23>();
    let var_0 = Struct_2((all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false)) && false) || true, vec3<u32>(max(u_input.a, _wgslsmith_clamp_u32(firstLeadingBit(4294967295u), 4294967295u >> (u_input.a % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, 1u), vec3<u32>(19623u, u_input.a, u_input.a)))), _wgslsmith_sub_u32(~(~0u), 0u), ~(~u_input.a)), Struct_1(func_2(countOneBits(~vec2<u32>(u_input.a, u_input.a)), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false))), _wgslsmith_mod_vec2_u32(min(vec2<u32>(u_input.a, 0u), vec2<u32>(0u, 4294967295u)) ^ ~vec2<u32>(42875u, u_input.a), ~vec2<u32>(17472u, u_input.a) | vec2<u32>(u_input.a, u_input.a))), Struct_1(vec3<bool>(any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false))), false, func_2(_wgslsmith_sub_vec2_u32(vec2<u32>(23297u, u_input.a), vec2<u32>(1u, u_input.a)), vec4<bool>(true, true, true, false)).x), vec2<u32>(~0u, _wgslsmith_clamp_u32(4294967295u, u_input.a, 66759u)) ^ reverseBits(vec2<u32>(u_input.a, u_input.a))));
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    return _wgslsmith_dot_vec2_i32(vec2<i32>(max(1i, _wgslsmith_div_i32(reverseBits(-7373i), firstTrailingBit(1i))), _wgslsmith_mult_i32(1i & _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 36465i, 25211i), vec3<i32>(610i, 0i, 31671i)), max(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(13617i, 0i, 14184i, -2147483647i), vec4<i32>(-1i, -2147483647i, 2147483647i, 1i))))), vec2<i32>(-58846i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(0i, 9238i, -1i), firstTrailingBit(-14403i)) << ((1u << (_wgslsmith_mod_u32(var_0.b.x, 0u) % 32u)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(11146i, _wgslsmith_mod_i32(func_1() << (~(~u_input.a) % 32u), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(53269i, -71627i), vec2<i32>(-1i, -1i)), _wgslsmith_mod_i32(-1i, 43811i))), -2147483647i);
    let var_1 = ~(~var_0.x);
    global0 = array<Struct_1, 23>();
    let var_2 = Struct_1(func_2(min(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a ^ u_input.a, countOneBits(0u))), vec4<bool>(true, all(vec3<bool>(true, true, true)), false, !all(vec2<bool>(false, true)))), ~vec2<u32>(76745u, u_input.a));
    var var_3 = select(~select(firstLeadingBit(~vec4<u32>(46740u, var_2.b.x, 4294967295u, var_2.b.x)), vec4<u32>(u_input.a & var_2.b.x, u_input.a, ~112412u, ~73574u), true), _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(~var_2.b.x, countOneBits(u_input.a), 4963u, 37020u)), abs(abs(vec4<u32>(u_input.a, 42859u, 8822u, 4294967295u)))), vec4<bool>(var_2.a.x, false, var_0.x == var_1, var_0.x < _wgslsmith_div_i32(29077i, 33945i)));
    var_3 = _wgslsmith_mod_vec4_u32(max(~firstTrailingBit(~vec4<u32>(var_3.x, var_3.x, 0u, 0u)), vec4<u32>(~var_3.x, abs(var_3.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.x, u_input.a, 4294967295u, var_3.x), vec4<u32>(var_2.b.x, var_3.x, 0u, var_2.b.x)), ~0u) & ~(vec4<u32>(u_input.a, 1u, 3765u, 1u) ^ vec4<u32>(var_3.x, 64376u, u_input.a, var_3.x))), select(abs(min(vec4<u32>(u_input.a, u_input.a, var_2.b.x, var_3.x), vec4<u32>(65493u, 4294967295u, u_input.a, var_3.x))) ^ select(~vec4<u32>(4294967295u, u_input.a, var_2.b.x, 5515u), vec4<u32>(var_2.b.x, var_2.b.x, 4294967295u, 4294967295u), !vec4<bool>(var_2.a.x, false, false, false)), vec4<u32>(~(~u_input.a), u_input.a, 1u, var_2.b.x ^ _wgslsmith_clamp_u32(var_3.x, 29910u, var_3.x)), all(!select(var_2.a.xy, var_2.a.xz, var_2.a.x))));
    var var_4 = Struct_2(func_2(var_2.b, !select(vec4<bool>(false, false, var_2.a.x, true), !vec4<bool>(false, false, var_2.a.x, false), vec4<bool>(false, true, var_2.a.x, false))).x, countOneBits(_wgslsmith_sub_vec3_u32(~(vec3<u32>(var_3.x, 81460u, 4294967295u) << (vec3<u32>(var_3.x, 0u, 32012u) % vec3<u32>(32u))), var_3.yzw)), Struct_1(vec3<bool>(var_2.a.x && all(vec2<bool>(var_2.a.x, false)), true, true), firstLeadingBit(var_3.zx)), Struct_1(vec3<bool>(true, true, var_2.a.x == true), vec2<u32>(~func_3(vec4<u32>(u_input.a, var_2.b.x, u_input.a, 38080u), vec3<bool>(false, var_2.a.x, true), global0[_wgslsmith_index_u32(5963u, 23u)]), abs(1u))));
    var var_5 = var_4.d;
    let var_6 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -162f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))) - _wgslsmith_f_op_f32(max(-988f, -218f))), -954f, -196f)));
    let x = u_input.a;
    s_output = StorageBuffer(47178u, 18692u, 22314i);
}

