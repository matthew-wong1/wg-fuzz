struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-878f, -143f)), 527f));
    let var_1 = Struct_2(Struct_1(vec3<bool>(arg_0, !arg_0, true), _wgslsmith_f_op_f32(round(-377f))), _wgslsmith_sub_vec2_u32(~abs(countOneBits(vec2<u32>(u_input.e, u_input.e))), abs(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.e, 28518u), vec2<u32>(0u, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.e, 1u), u_input.a)))), vec3<bool>(true, true, true));
    var_0 = -1039f;
    var var_2 = var_1;
    var_0 = -876f;
    return _wgslsmith_add_vec2_u32(select(vec2<u32>(var_2.b.x, ~(~13418u)), vec2<u32>(0u, max(var_1.b.x, u_input.a.x)) << (min(vec2<u32>(var_2.b.x, u_input.d), u_input.c & u_input.a) % vec2<u32>(32u)), vec2<bool>(!var_2.c.x | (var_2.a.b != var_2.a.b), false)), var_2.b);
}

fn func_2(arg_0: Struct_2) -> f32 {
    let var_0 = Struct_2(Struct_1(arg_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.b) + _wgslsmith_f_op_f32(-arg_0.a.b)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), func_3(true), arg_0.a.a);
    let var_1 = vec4<i32>(67608i, u_input.b, firstLeadingBit(-14206i), -u_input.b);
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(-var_0.a.b);
    return 468f;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> vec4<u32> {
    return _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(~abs(u_input.a.x), u_input.c.x, u_input.e, 4294967295u), firstTrailingBit(vec4<u32>(131881u, 21475u, ~0u, _wgslsmith_sub_u32(58169u, u_input.c.x)))), max(~(~(vec4<u32>(4294967295u, u_input.e, u_input.d, 4294967295u) ^ vec4<u32>(u_input.a.x, 47200u, 1975u, u_input.d))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.e, u_input.e, 1u, 1u), vec4<u32>(1203u, 4294967295u, u_input.d, 1u)) | max(vec4<u32>(u_input.d, u_input.e, u_input.e, 95129u) << (vec4<u32>(85082u, u_input.a.x, u_input.c.x, u_input.d) % vec4<u32>(32u)), vec4<u32>(u_input.e, 60166u, 0u, u_input.e))));
}

fn func_1() -> vec4<u32> {
    let var_0 = 1i;
    let var_1 = true;
    var var_2 = ~(-(firstTrailingBit(vec2<i32>(-36766i, -7786i)) << (~countOneBits(vec2<u32>(u_input.a.x, 42003u)) % vec2<u32>(32u))));
    var var_3 = select(true, true, false | all(!vec4<bool>(true, false, var_1, var_1)));
    var_2 = ~(vec2<i32>(-firstLeadingBit(var_2.x), ~2147483647i) >> (~_wgslsmith_sub_vec2_u32(~u_input.c, u_input.a >> (vec2<u32>(59864u, 0u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    return func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(vec3<bool>(false, true, true), -1681f), u_input.a, vec3<bool>(var_1, true, true)))))), _wgslsmith_f_op_f32(f32(-1f) * -156f)), Struct_1(select(!select(vec3<bool>(var_1, var_1, false), vec3<bool>(false, var_1, var_1), var_1), !vec3<bool>(false, false, var_1), ~u_input.e != u_input.c.x), 682f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_u32(((vec4<u32>(u_input.e, 36294u, u_input.a.x, u_input.e) ^ vec4<u32>(52210u, u_input.c.x, 1u, 4294967295u)) & vec4<u32>(max(14367u, 1u), u_input.c.x, _wgslsmith_clamp_u32(u_input.d, u_input.e, 0u), max(u_input.d, 4294967295u))) << (firstLeadingBit(vec4<u32>(firstTrailingBit(u_input.c.x), 1u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x), _wgslsmith_mod_u32(u_input.c.x, 12348u))) % vec4<u32>(32u)), vec4<u32>(98804u, u_input.e, ~u_input.e, ~u_input.c.x) & vec4<u32>(select(100397u, 27028u, false) >> (76959u % 32u), (u_input.e | 46416u) | _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.c.x), vec4<u32>(u_input.d, 1u, 4294967295u, u_input.c.x)), ~_wgslsmith_div_u32(16165u, u_input.c.x), ~_wgslsmith_div_u32(u_input.e, 1u)));
    var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(abs(u_input.a.x), _wgslsmith_mod_u32(var_0.x, var_0.x) | 18859u, abs(~0u), 77522u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, u_input.e, u_input.e), var_0.wyw), 63957u >> (var_0.x % 32u), _wgslsmith_mod_u32(0u, u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 4294967295u), u_input.c)) << (vec4<u32>(var_0.x, 4294967295u, var_0.x, _wgslsmith_add_u32(var_0.x, 4294967295u)) % vec4<u32>(32u))) << ((vec4<u32>(~u_input.c.x, _wgslsmith_sub_u32(~u_input.d, u_input.a.x), ~var_0.x, (1u << (u_input.d % 32u)) & 46900u) & ~firstLeadingBit(func_1())) % vec4<u32>(32u));
    let var_1 = 466f;
    let var_2 = select(0i | _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(7667i, 2147483647i), -vec2<i32>(u_input.b, u_input.b), select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(3576i, -12323i), vec2<bool>(false, false))), vec2<i32>(u_input.b, -u_input.b)), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.b, u_input.b, 25857i) << (vec4<u32>(11568u, 73613u, u_input.e, 54256u) % vec4<u32>(32u)), ~vec4<i32>(u_input.b, 76557i, u_input.b, -16580i)), _wgslsmith_sub_vec4_i32(vec4<i32>(14678i, u_input.b, u_input.b, u_input.b), vec4<i32>(-32248i, u_input.b, u_input.b, u_input.b)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, 61862i, u_input.b, u_input.b), vec4<i32>(u_input.b, -18338i, u_input.b, -1i))) & 1i, all(vec4<bool>(~u_input.a.x != 1u, false, true, var_1 <= _wgslsmith_f_op_f32(var_1 - var_1))));
    var_0 = ~(~min(~vec4<u32>(var_0.x, 1u, 5308u, u_input.a.x), vec4<u32>(u_input.a.x, max(var_0.x, u_input.d), var_0.x, 60652u | var_0.x)));
    var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a.x, 0u, 32862u, 1u) << (vec4<u32>(~4294967295u, ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 4294967295u, var_0.x, 51172u), vec4<u32>(0u, 0u, var_0.x, 20598u)), u_input.c.x) % vec4<u32>(32u)), ~(~vec4<u32>(var_0.x, u_input.c.x, 37860u, 4294967295u))), ~(~min(vec4<u32>(u_input.a.x, var_0.x, 35809u, 0u), vec4<u32>(1u, var_0.x, u_input.a.x, u_input.e))));
    var_0 = ~vec4<u32>((~u_input.d ^ _wgslsmith_add_u32(u_input.d, 1980u)) ^ 34228u, 60108u, 36526u, max(1u, u_input.d));
    let var_3 = 191f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~var_0.x);
}

