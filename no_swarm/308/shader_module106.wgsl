struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec3<i32> {
    return arg_0.a;
}

fn func_3() -> vec2<i32> {
    var var_0 = min(countOneBits(abs(~reverseBits(vec4<u32>(u_input.a, u_input.e, u_input.e, u_input.d.x)))), ~_wgslsmith_add_vec4_u32(u_input.d, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.d.x), vec4<u32>(u_input.b.x, 80593u, u_input.b.x, 22010u) << (vec4<u32>(3501u, u_input.d.x, u_input.a, 0u) % vec4<u32>(32u)))));
    let var_1 = var_0.x & ~u_input.e;
    var var_2 = 13471i;
    var_2 = _wgslsmith_add_i32(u_input.c, u_input.c);
    let var_3 = Struct_1(vec3<i32>(-u_input.c, firstTrailingBit(-21244i), u_input.c), vec3<i32>(select(_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.c, u_input.c), ~2147483647i), u_input.c, !(0i <= u_input.c)), -439i, ~_wgslsmith_sub_i32(-7408i, u_input.c | 0i)), vec2<i32>(abs(u_input.c), u_input.c));
    return firstLeadingBit(-(~var_3.a.xy));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = select(func_3(), ~(~select(arg_0.b.zz, vec2<i32>(-21956i, arg_1.a.x), vec2<bool>(false, true))), all(vec2<bool>(any(vec3<bool>(true, false, false)), -1i >= arg_0.b.x))) & arg_0.b.xz;
    return StorageBuffer(vec4<u32>(u_input.b.x, 1u, abs(~firstLeadingBit(4294967295u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d.x, 4294967295u, u_input.e), vec3<u32>(10214u, 4294967295u, 14641u) | u_input.d.xwy) >> (0u % 32u)), _wgslsmith_mult_i32(~arg_1.a.x, _wgslsmith_div_i32(-2716i, -24446i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1174f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1117f))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-118f, -1444f, 556f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_u32(u_input.d.x, 21674u, ~(~1u));
    let x = u_input.a;
    s_output = func_2(Struct_1(vec3<i32>(-1i) * -min(vec3<i32>(u_input.c, 6218i, u_input.c), vec3<i32>(-68260i, 1i, -2147483647i)), _wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(u_input.c, u_input.c, -16632i)) & vec3<i32>(1i, u_input.c, -2147483647i), -reverseBits(vec3<i32>(u_input.c, u_input.c, u_input.c))), max(_wgslsmith_add_vec2_i32(~vec2<i32>(u_input.c, u_input.c), -vec2<i32>(1i, -6562i)), vec2<i32>(-u_input.c, _wgslsmith_mod_i32(-2147483647i, 2147483647i)))), Struct_1(~vec3<i32>(9573i, _wgslsmith_clamp_i32(u_input.c, 39403i, 0i), countOneBits(49216i)), -_wgslsmith_mod_vec3_i32(~vec3<i32>(-23676i, u_input.c, -360i), func_1(Struct_1(vec3<i32>(40741i, u_input.c, 48816i), vec3<i32>(-1i, u_input.c, 7528i), vec2<i32>(85272i, u_input.c)), Struct_1(vec3<i32>(-1i, u_input.c, u_input.c), vec3<i32>(u_input.c, 5239i, u_input.c), vec2<i32>(1014i, 1i)), 0u)), vec2<i32>(-1i) * -(~vec2<i32>(0i, -41123i))));
}

