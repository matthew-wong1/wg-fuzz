struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec3<f32>;

var<private> global2: array<Struct_2, 14>;

var<private> global3: Struct_2 = Struct_2(vec2<f32>(-734f, -1027f));

var<private> global4: Struct_2 = Struct_2(vec2<f32>(-689f, 354f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<u32>) -> bool {
    global3 = global2[_wgslsmith_index_u32(arg_0.x, 14u)];
    global3 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global4.a))));
    var var_0 = !vec3<bool>(true, true, !all(vec4<bool>(true, false, false, true)) != true);
    let var_1 = _wgslsmith_clamp_u32(4294967295u, 8406u, 1u);
    var var_2 = Struct_1(1053f > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1078f))))), ~(~abs(arg_0.x ^ 18122u)), ~(~countOneBits(1u >> (var_1 % 32u))), global4.a, firstTrailingBit(vec3<u32>(abs(5745u), u_input.a, u_input.a)));
    return select(!select(var_2.a, (var_2.a & true) & all(vec3<bool>(false, var_0.x, var_0.x)), all(vec4<bool>(false, var_2.a, var_0.x, var_0.x))), !(!var_2.a), false);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = Struct_1(false, 91227u, 61076u, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global1.zy * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.d))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(655f * arg_2.a.x), _wgslsmith_f_op_f32(arg_2.a.x + 306f)))))), vec3<u32>(arg_1.b, min(arg_3.c, abs(firstTrailingBit(arg_1.e.x))), 24905u << (arg_1.b % 32u)));
    var var_1 = _wgslsmith_mod_u32(max(~12506u, 24759u), 1u);
    global2 = array<Struct_2, 14>();
    let var_2 = vec2<bool>(arg_3.a, (-(-33218i >> (u_input.a % 32u)) != -2147483647i) | true);
    var var_3 = 2147483647i;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-732f, -204f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.d.x, var_0.d.x)), var_0.d)))));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: i32) -> f32 {
    global3 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_4(vec2<i32>(i32(-1i) * -32462i, 3822i), Struct_1(func_3(vec4<u32>(4294967295u, 1u, 28595u, u_input.a)), u_input.a, 1u, vec2<f32>(1208f, global4.a.x), vec3<u32>(u_input.a, 4294967295u, 4294967295u)), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global0.x))), Struct_1(u_input.a >= u_input.a, abs(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 38819u, 35701u, 73045u), vec4<u32>(4294967295u, u_input.a, 11877u, u_input.a)), _wgslsmith_f_op_vec2_f32(global1.zz * vec2<f32>(-144f, global1.x)), ~vec3<u32>(u_input.a, 1u, 4294967295u)))))));
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(max(countOneBits(select(vec3<u32>(1u, 31083u, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a), vec3<bool>(false, true, false))), vec3<u32>(u_input.a, 1u, ~1u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), select(vec3<u32>(u_input.a, 59258u, u_input.a), vec3<u32>(55756u, 4294967295u, u_input.a), vec3<bool>(false, false, false))) ^ _wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, u_input.a, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(123930u, u_input.a, 0u), vec3<u32>(48214u, u_input.a, u_input.a)), vec3<u32>(4294967295u, u_input.a, 1u) << (vec3<u32>(3542u, u_input.a, 14151u) % vec3<u32>(32u)))), ~71793u), 14u)];
    let var_1 = arg_0;
    var var_2 = ~(4294967295u & u_input.a);
    var var_3 = !any(select(!select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), false));
    return 2241f;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, u_input.a), _wgslsmith_sub_vec2_u32(~(vec2<u32>(8882u, u_input.a) >> (reverseBits(vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(7215u, u_input.a), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(49607u, u_input.a), vec2<u32>(0u, u_input.a)), ~vec2<u32>(u_input.a, 1u)))), ~vec2<u32>(u_input.a, u_input.a) & vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 5462u), ~vec3<u32>(u_input.a, 26784u, u_input.a)), 49984u));
    var var_1 = 659f;
    let var_2 = Struct_1(!any(vec2<bool>(true, true)), var_0.x, 1u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(u_input.a, 14u)], u_input.b.x, u_input.b.x))), _wgslsmith_f_op_f32(-global0.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(187f)), global3.a.x) - global1.zx)), vec3<u32>(select(~1u, ~19177u, any(vec3<bool>(false, true, false)) & true), 4294967295u, abs(0u)));
    let var_3 = vec3<i32>(u_input.b.x, _wgslsmith_clamp_i32(~u_input.b.x, firstLeadingBit(u_input.b.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b.x, u_input.b.x, 0i, -2147483647i) ^ abs(vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x)), select(vec4<i32>(-39215i, -2147483647i, 13963i, 8363i) >> (vec4<u32>(24167u, var_2.b, u_input.a, u_input.a) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(24775i, -34695i, 14912i, -20763i), vec4<i32>(u_input.b.x, -20981i, 35737i, u_input.b.x)), !var_2.a))), -select(~(-31108i), -_wgslsmith_div_i32(-1i, -2147483647i), true));
    let var_4 = any(!select(vec4<bool>(true, all(vec3<bool>(var_2.a, var_2.a, var_2.a)), var_2.a, !var_2.a), !vec4<bool>(false, var_2.a, var_2.a, true), true));
    return -302f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1());
    var var_1 = u_input.b;
    var var_2 = global2[_wgslsmith_index_u32(u_input.a, 14u)];
    let var_3 = vec3<u32>(~(~1u), _wgslsmith_clamp_u32(32556u, firstTrailingBit(_wgslsmith_sub_u32(u_input.a, 28473u) >> (~0u % 32u)), u_input.a), ~(~u_input.a) ^ ~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(3229u, 51080u), vec2<u32>(4294967295u, u_input.a))));
    global0 = global1.zx;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zx, _wgslsmith_f_op_vec2_f32(-global4.a), ~abs(~_wgslsmith_mult_u32(0u, 4294967295u)), global0.x, 41195u);
}

