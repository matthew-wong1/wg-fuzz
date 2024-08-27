struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = firstTrailingBit(arg_0.a);
    var var_1 = Struct_1(44519u, _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_add_i32(9536i, u_input.a.x | u_input.a.x), abs(1i)), arg_0.b));
    var_1 = Struct_1(~48415u, ~vec2<i32>(~firstLeadingBit(u_input.a.x), _wgslsmith_div_i32(arg_0.b.x, 2272i) >> (64837u % 32u)));
    var_1 = arg_0;
    var_1 = Struct_1(~var_1.a, u_input.a);
    return ~var_1.a;
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    let var_0 = Struct_1(49481u, -select(u_input.a, u_input.a, arg_0.x) & vec2<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 3537i, u_input.a.x), vec3<i32>(2147483647i, 1i, 7011i))), u_input.a.x));
    var var_1 = countOneBits(_wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_0.a, var_0.a), vec3<u32>(var_0.a, 0u, var_0.a)), max(vec3<u32>(60795u, var_0.a, var_0.a) ^ vec3<u32>(var_0.a, var_0.a, 24902u), ~vec3<u32>(var_0.a, var_0.a, var_0.a)))) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a, var_0.a, 8215u), vec3<u32>(var_0.a, 0u, var_0.a)), abs(vec3<u32>(var_0.a, var_0.a, 0u))), vec3<u32>(0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 0u, 4294967295u, 466u), vec4<u32>(var_0.a, var_0.a, var_0.a, 23045u)), 1u)) % vec3<u32>(32u));
    let var_2 = Struct_1(~(~(var_1.x | (var_1.x & var_0.a))), var_0.b);
    var var_3 = vec4<bool>(true, any(vec3<bool>(true, arg_0.x, true)) != any(arg_0), false, all(!vec3<bool>(any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), true, !arg_0.x)));
    let var_4 = Struct_1(87809u, var_2.b);
    return ~func_3(Struct_1(~(~var_4.a), ~(~vec2<i32>(1i, -1i))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = ~((arg_0.a >> (~func_2(vec3<bool>(false, false, arg_1.x)) % 32u)) ^ arg_0.a);
    var var_1 = ~(-2147483647i);
    let var_2 = min(1u, ~arg_0.a);
    let var_3 = arg_1;
    let var_4 = max(_wgslsmith_dot_vec3_i32(-(vec3<i32>(u_input.a.x, u_input.a.x, 1i) >> (min(vec3<u32>(1u, 73295u, 4294967295u), vec3<u32>(4294967295u, 185u, 71195u)) % vec3<u32>(32u))), ~vec3<i32>(max(u_input.a.x, -11037i), -44516i, arg_0.b.x)), u_input.a.x);
    return Struct_1(arg_0.a, vec2<i32>(-1i) * -select(reverseBits(vec2<i32>(-26784i, -1i)), u_input.a, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(~(4294967295u >> (~4294967295u % 32u)), u_input.a), !(!vec2<bool>(any(vec2<bool>(false, true)), true)));
    let var_1 = var_0.a;
    let var_2 = _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a.x, ~abs(u_input.a.x), ~1i, u_input.a.x), select(select(vec4<i32>(abs(var_0.b.x), -2147483647i, var_0.b.x, var_0.b.x), countOneBits(vec4<i32>(-2147483647i, 2147483647i, u_input.a.x, var_0.b.x)), vec4<bool>(all(vec3<bool>(false, false, true)), all(vec2<bool>(false, false)), true, true)), max(select(vec4<i32>(2147483647i, -2701i, var_0.b.x, var_0.b.x), -vec4<i32>(var_0.b.x, 22318i, 2147483647i, var_0.b.x), vec4<bool>(false, true, false, true)), abs(vec4<i32>(-33186i, -2147483647i, u_input.a.x, var_0.b.x)) | _wgslsmith_div_vec4_i32(vec4<i32>(var_0.b.x, 2147483647i, 1i, var_0.b.x), vec4<i32>(u_input.a.x, u_input.a.x, -15048i, var_0.b.x))), vec4<bool>(true, any(vec3<bool>(true, true, true)), true, true)), ~_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.b.x, var_0.b.x, 2147483647i, u_input.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -6271i, u_input.a.x, 1i), vec4<i32>(-2147483647i, var_0.b.x, u_input.a.x, 54170i))), abs(vec4<i32>(-3872i, var_0.b.x, -2147483647i, u_input.a.x)), vec4<i32>(-2147483647i & var_0.b.x, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a), -var_0.b.x, 1415i)));
    var var_3 = !select(vec2<bool>(true, abs(-1i) != _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(var_2.x, var_2.x))), select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), all(vec2<bool>(false, true))), false));
    let var_4 = ~(-vec2<i32>(27906i, _wgslsmith_mod_i32(u_input.a.x, -var_0.b.x)));
    var var_5 = func_1(var_0, vec2<bool>(!var_3.x, ~var_1 > ~0u));
    var_3 = select(vec2<bool>(!(!(!var_3.x)), true), !(!(!(!vec2<bool>(var_3.x, true)))), !all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, var_3.x))));
    var var_6 = _wgslsmith_f_op_f32(-277f * 1000f);
    let var_7 = _wgslsmith_f_op_f32(floor(-129f));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(_wgslsmith_dot_vec3_i32(var_2.zzw & vec3<i32>(2147483647i, 15575i, var_4.x), var_2.wyx), -1i), ~vec2<i32>(var_5.b.x, 1i), !(!(u_input.a.x == var_4.x))), vec3<u32>(44610u, max(23543u, ~var_1), _wgslsmith_clamp_u32(~4294967295u, ~var_0.a, var_1)), var_2.zzw, _wgslsmith_sub_i32(firstLeadingBit(var_4.x), 2147483647i));
}

