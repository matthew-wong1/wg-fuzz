struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(-39479i), Struct_1(1i), Struct_1(0i), Struct_1(41771i), Struct_1(-62279i), Struct_1(0i), Struct_1(10542i), Struct_1(-1i), Struct_1(1i), Struct_1(16302i), Struct_1(-4048i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: vec4<i32>) -> u32 {
    global0 = array<Struct_1, 11>();
    var var_0 = ((~(arg_0.x & arg_2.x) << (~u_input.a % 32u)) & _wgslsmith_dot_vec3_i32(vec3<i32>(-12928i, u_input.b, 0i), vec3<i32>(1i, 25127i, -2147483647i))) ^ _wgslsmith_dot_vec2_i32(-(vec2<i32>(-1i) * -arg_0.zz), firstTrailingBit(~arg_2.xx << (_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, arg_1.x), arg_1.yy) % vec2<u32>(32u))));
    global0 = array<Struct_1, 11>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(634f, -572f, 828f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-282f, 1087f, 1693f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1657f, -891f, -1334f)))))));
    global0 = array<Struct_1, 11>();
    return arg_1.x;
}

fn func_3() -> i32 {
    return firstLeadingBit(max(u_input.b, ~u_input.b));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec2<i32>, arg_3: vec2<bool>) -> vec4<i32> {
    var var_0 = !arg_3.x;
    let var_1 = !vec3<bool>(all(!vec4<bool>(arg_3.x, true, false, arg_3.x)), arg_3.x, true);
    var var_2 = Struct_1(countOneBits(_wgslsmith_dot_vec4_i32(select(~vec4<i32>(53069i, -1i, arg_2.x, 2147483647i), vec4<i32>(u_input.b, 0i, arg_2.x, u_input.b), false), -firstLeadingBit(vec4<i32>(6270i, arg_2.x, u_input.b, u_input.b)))));
    global0 = array<Struct_1, 11>();
    var_2 = global0[_wgslsmith_index_u32(countOneBits(~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.a) | ~vec2<u32>(47747u, 4294967295u), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, 12443u), firstLeadingBit(vec2<u32>(u_input.a, 0u))))), 11u)];
    return ~(vec4<i32>(firstLeadingBit(arg_2.x), arg_2.x, min(1i, 2147483647i), firstTrailingBit(var_2.a >> (29272u % 32u))) << (firstLeadingBit(max(select(vec4<u32>(1u, 1u, 25072u, u_input.a), vec4<u32>(7490u, 6466u, u_input.a, 26442u), false), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 31519u, 0u, 1u), vec4<u32>(0u, u_input.a, 60047u, 50479u), vec4<u32>(1u, 26148u, u_input.a, 0u)))) % vec4<u32>(32u)));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(u_input.b);
    var var_1 = all(select(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, any(vec4<bool>(true, true, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(false, false, false)), any(vec4<bool>(false, true, false, true)) | true), select(vec4<bool>(true, true, any(vec3<bool>(false, true, false)), true), vec4<bool>(true, true, true, select(true, false, false)), vec4<bool>(true, true, true, true))));
    let var_2 = select(vec3<u32>(1u, 1u, 1u), max(vec3<u32>(29950u, 1u, 0u), ~vec3<u32>(arg_0, u_input.a, u_input.a)) & ~(~vec3<u32>(arg_0, arg_0, 1u)), true) ^ vec3<u32>(9029u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), ~vec2<u32>(arg_0, 58389u)) & u_input.a, ~(~54247u));
    let var_3 = Struct_1(-2147483647i);
    let var_4 = func_4(782f, _wgslsmith_f_op_f32(ceil(387f)), countOneBits(vec2<i32>(-35766i, select(func_3(), abs(arg_2.a), -2147483647i <= arg_2.a))), !vec2<bool>(true, all(vec4<bool>(false, false, false, true)) & any(vec3<bool>(false, false, false))));
    return select(!vec3<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), false)), true, true), vec3<bool>(true, all(vec3<bool>(all(vec3<bool>(true, true, true)), true, true)), all(vec2<bool>(0u >= u_input.a, all(vec4<bool>(true, true, false, true))))), false);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec3<u32>) -> bool {
    global0 = array<Struct_1, 11>();
    var var_0 = arg_1;
    let var_1 = arg_3.xy;
    var_0 = Struct_1(arg_0.x);
    global0 = array<Struct_1, 11>();
    return 1000f == _wgslsmith_f_op_f32(trunc(-121f));
}

fn func_6(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_1) -> f32 {
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    let var_0 = ~u_input.a ^ 1u;
    global0 = array<Struct_1, 11>();
    let var_1 = vec3<bool>(!(!arg_1), arg_1, !(!all(!vec4<bool>(true, false, arg_1, arg_1))));
    return -1101f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(func_6(~vec4<u32>(4294967295u, 1u, func_1(vec3<i32>(u_input.b, 2147483647i, u_input.b), firstLeadingBit(vec4<u32>(85262u, 87350u, 40809u, u_input.a)), vec4<i32>(59905i, u_input.b, u_input.b, u_input.b)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a, 15645u, 4294967295u), 1u)), select(2147483647i, -7801i, func_5(-vec4<i32>(12586i, 24281i, u_input.b, -1i), global0[_wgslsmith_index_u32(max(u_input.a, 31122u), 11u)], func_2(7818u, Struct_1(-55258i), Struct_1(u_input.b)), reverseBits(vec3<u32>(109316u, 0u, 46242u)))) == firstTrailingBit(0i), global0[_wgslsmith_index_u32(87098u, 11u)]));
    let var_2 = Struct_1(max(u_input.b, 1i));
    var var_3 = -_wgslsmith_mult_vec4_i32(func_4(1823f, -1828f, firstTrailingBit(vec2<i32>(-1i, 11265i)), vec2<bool>(false, true)) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(15281u, 39541u, 1u, 0u), vec4<u32>(1u, u_input.a, 16507u, 26186u)), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)) % vec4<u32>(32u)), vec4<i32>(countOneBits(-u_input.b), u_input.b, abs(var_2.a), ~0i));
    var_3 = -(-min(vec4<i32>(var_3.x, var_2.a, var_2.a, -1i), vec4<i32>(32996i, var_3.x, u_input.b, var_3.x) & vec4<i32>(var_3.x, u_input.b, u_input.b, var_3.x)) & vec4<i32>(_wgslsmith_dot_vec2_i32(~var_3.zz, abs(vec2<i32>(2147483647i, var_3.x))), (1i | u_input.b) << (firstTrailingBit(0u) % 32u), var_2.a, abs(0i)));
    var_0 = true || all(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(var_2.a << (62202u % 32u), -35041i), 0i, (var_3.x ^ 0i) | func_3()), -(~var_3.wxz)));
}

