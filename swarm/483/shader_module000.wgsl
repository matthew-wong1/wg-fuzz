struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: i32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3) -> bool {
    let var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(reverseBits(-44297i), u_input.b) ^ arg_0, _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.x, 0i), arg_0), abs(-vec2<i32>(arg_0.x, arg_1.a))), arg_0));
    global0 = array<vec3<u32>, 20>();
    var var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(~_wgslsmith_div_vec2_u32(abs(vec2<u32>(14295u, 78496u)), vec2<u32>(1u, 1u)), countOneBits(~vec2<u32>(0u, 0u))), ~firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(72867u, 20u)], vec3<u32>(0u, 16398u, 4294967295u)), 21919u)));
    var_1 = abs(~(select(vec2<u32>(var_1.x, 1u) << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)), vec2<u32>(0u, 45815u), vec2<bool>(true, true)) << (vec2<u32>(0u, ~1u) % vec2<u32>(32u))));
    var var_2 = vec3<f32>(550f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1217f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -163f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-224f)) - -2456f)));
    return !(!all(vec2<bool>(true, true)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>) -> Struct_3 {
    var var_0 = !select(select(vec4<bool>(func_3(vec2<i32>(u_input.b, u_input.b), Struct_3(0i)), false, 13247i > u_input.b, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), true), all(vec2<bool>(true, true))), any(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true)));
    let var_1 = -vec4<i32>(1i, u_input.b, u_input.b ^ -u_input.a, i32(-1i) * -59848i);
    return Struct_3(abs(_wgslsmith_mod_i32(firstLeadingBit(var_1.x) >> (0u % 32u), var_1.x >> (_wgslsmith_div_u32(1u, 32496u) % 32u))));
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(512f * -1043f);
    let var_1 = arg_0.a;
    var_0 = _wgslsmith_f_op_f32(select(1177f, -1000f, all(!select(!vec4<bool>(arg_0.d.x, arg_0.d.x, true, arg_0.d.x), vec4<bool>(arg_0.d.x, true, arg_0.d.x, false), all(vec2<bool>(false, true))))));
    global0 = array<vec3<u32>, 20>();
    global0 = array<vec3<u32>, 20>();
    return _wgslsmith_div_u32(~arg_1, _wgslsmith_sub_u32(arg_1 << (~arg_1 % 32u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_1, arg_1), 76929u), arg_1)));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> Struct_1 {
    var var_0 = func_4(Struct_4(func_2(vec4<u32>(arg_1, arg_1, 27117u, 0u) << (vec4<u32>(arg_1, arg_1, arg_1, 1u) % vec4<u32>(32u)), select(vec2<u32>(39136u, 0u), vec2<u32>(4294967295u, arg_1), vec2<bool>(true, true))), 37663i, 14528i, vec2<bool>(all(vec2<bool>(false, true)), true)), _wgslsmith_sub_u32(4294967295u, ~(~4294967295u))) | 1u;
    var var_1 = Struct_1(select(-min(-vec3<i32>(u_input.a, -16692i, 1i), vec3<i32>(u_input.b, u_input.a, 29859i)), -(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, u_input.b, u_input.b)), select(any(vec4<bool>(false, false, true, true)), false, -10747i < -u_input.b)), ~vec3<i32>(-func_2(vec4<u32>(126872u, arg_1, 0u, arg_1), vec2<u32>(55392u, arg_1)).a, firstLeadingBit(1i), 1i), func_2(vec4<u32>(arg_1, _wgslsmith_clamp_u32(~0u, arg_1 << (arg_1 % 32u), ~arg_1), select(1u, 1u, true), _wgslsmith_mult_u32(min(36990u, 0u), arg_1)), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1, 28795u) | vec2<u32>(29603u, arg_1), vec2<u32>(107050u, arg_1)), ~vec2<u32>(51118u, 1478u), ~select(vec2<u32>(67036u, arg_1), vec2<u32>(arg_1, 0u), vec2<bool>(false, false)))).a);
    global0 = array<vec3<u32>, 20>();
    let var_2 = Struct_3(_wgslsmith_dot_vec3_i32(var_1.b, min(var_1.a, select(var_1.a & vec3<i32>(u_input.b, u_input.b, 2147483647i), var_1.b, select(false, true, true)))));
    var var_3 = arg_1;
    return Struct_1(select(var_1.a, min(var_1.b, var_1.a) >> (countOneBits(vec3<u32>(4294967295u, arg_1, arg_1)) % vec3<u32>(32u)), vec3<bool>(true, true, select(true, any(vec3<bool>(true, false, true)), all(vec2<bool>(true, true))))), -(~vec3<i32>(u_input.a, 1i, 1i)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(12169i, _wgslsmith_sub_i32(2147483647i, var_2.a)), ~vec2<i32>(var_1.c, var_2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), -1382f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-233f * 252f), _wgslsmith_f_op_f32(ceil(1018f))), 1502f), ~(~8210u) << ((0u << (1u % 32u)) % 32u)), -20397i, ~abs(vec2<i32>(_wgslsmith_add_i32(u_input.a, -1i), u_input.b)), vec2<i32>(firstTrailingBit(u_input.a), _wgslsmith_mult_i32(~(-1i), ~u_input.b)));
    global0 = array<vec3<u32>, 20>();
    var var_1 = ~(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(1u, 14414u), ~47572u), reverseBits(~vec2<u32>(4294967295u, 8117u))) ^ 26557u);
    var var_2 = -168f;
    var var_3 = Struct_3(-_wgslsmith_add_i32(min(u_input.b, _wgslsmith_mod_i32(var_0.d.x, 2147483647i)), -var_0.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1737f), _wgslsmith_mult_i32(17282i, firstLeadingBit(var_0.d.x)), var_0.d, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-446f, -1839f, -340f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1273f, 1013f, -1275f) + vec3<f32>(1408f, -1378f, -1601f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(1440f)), -1256f, _wgslsmith_div_f32(1095f, 1000f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-730f, -2645f, -538f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-969f, 741f, -721f))), true)), func_3(reverseBits(var_0.d), func_2(vec4<u32>(4294967295u, 10612u, 1064u, 0u), vec2<u32>(10285u, 0u))))))), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(1i, _wgslsmith_div_i32(var_0.c.x, var_3.a)), _wgslsmith_clamp_i32(1i, -_wgslsmith_mod_i32(var_3.a, 46535i), 63951i), ~abs(var_0.a.c)));
}

