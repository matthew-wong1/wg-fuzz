struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: u32) -> u32 {
    var var_0 = 1f;
    return arg_0.x;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: bool) -> u32 {
    let var_0 = arg_1;
    var var_1 = select(select(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.b.a.x, u_input.a.x, u_input.a.x), vec3<i32>(2147483647i, u_input.a.x, 77340i)), max(vec3<i32>(var_0.b.a.x, var_0.b.a.x, u_input.a.x), vec3<i32>(var_0.b.a.x, var_0.b.a.x, -17130i))), vec3<i32>(-u_input.a.x, 30657i, _wgslsmith_mod_i32(arg_1.b.a.x, -27652i))), max(~(vec3<i32>(1i, -34677i, -18009i) ^ vec3<i32>(var_0.b.a.x, u_input.a.x, var_0.b.a.x)), -(~vec3<i32>(1i, arg_1.b.a.x, 2147483647i))), select(!(!vec3<bool>(arg_2, arg_2, false)), vec3<bool>(-1i <= var_0.b.a.x, true, arg_2), vec3<bool>(true, arg_2, true))), max(abs(countOneBits(~vec3<i32>(u_input.a.x, -2147483647i, -35617i))), ~(~vec3<i32>(var_0.b.a.x, var_0.b.a.x, 1i)) << (vec3<u32>(func_2(vec2<u32>(54480u, 4294967295u), vec2<f32>(1606f, -3105f), 76845u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 24029u, 36275u), vec3<u32>(61569u, 4771u, 1u)), func_2(vec2<u32>(0u, 4294967295u), vec2<f32>(arg_1.a, arg_1.a), 31930u)) % vec3<u32>(32u))), vec3<bool>(arg_2, false, arg_2));
    var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-1i, var_1.x), ~25444i, var_1.x), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(~reverseBits(vec3<i32>(arg_1.b.a.x, -2147483647i, 35696i)), select(vec3<i32>(18344i, var_0.b.a.x, -1i), vec3<i32>(var_1.x, var_1.x, var_0.b.a.x), true) & abs(vec3<i32>(u_input.a.x, arg_1.b.a.x, 0i))), _wgslsmith_clamp_vec3_i32(~vec3<i32>(arg_1.b.a.x, -22425i, -30521i), vec3<i32>(var_0.b.a.x, _wgslsmith_add_i32(u_input.a.x, 44916i), arg_1.b.a.x ^ arg_1.b.a.x), vec3<i32>(-31134i, firstLeadingBit(0i), firstTrailingBit(-1i)))));
    return 1u;
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = Struct_4(-717f, Struct_2(firstLeadingBit(-(~vec2<i32>(0i, -23880i)))));
    let var_1 = reverseBits(_wgslsmith_mod_u32(32112u, firstTrailingBit(min(90491u, 1u) << (func_2(vec2<u32>(44747u, 17636u), vec2<f32>(2050f, 487f), 4294967295u) % 32u))));
    let var_2 = u_input.a.x;
    var var_3 = Struct_5(arg_0.a.x << ((_wgslsmith_sub_u32(0u, _wgslsmith_mod_u32(var_1, 4294967295u)) >> (1u % 32u)) % 32u));
    let var_4 = Struct_3(~firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a.x, -20733i, -1i, var_0.b.a.x) << (vec4<u32>(36643u, var_1, var_1, var_1) % vec4<u32>(32u)), vec4<i32>(arg_0.a.x, 2147483647i, var_0.b.a.x, -35756i) ^ vec4<i32>(u_input.a.x, var_0.b.a.x, var_3.a, -1i))), vec2<u32>(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 116f, -840f) + vec3<f32>(var_0.a, -228f, 165f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-507f, -1255f, 418f) * vec3<f32>(var_0.a, -1314f, 406f))), Struct_4(_wgslsmith_f_op_f32(var_0.a + 985f), Struct_2(var_0.b.a)), false), ~var_1), -1559f);
    return _wgslsmith_f_op_f32(round(401f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -630f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(vec2<i32>(u_input.a.x, -27197i))))))), Struct_2(u_input.a));
    let var_1 = 33458u;
    let var_2 = vec4<u32>(abs(11556u), _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(var_1 >> (var_1 % 32u)), 35402u, var_1), _wgslsmith_clamp_vec3_u32(vec3<u32>(6753u, var_1 ^ var_1, ~5751u), ~vec3<u32>(var_1, var_1, var_1), vec3<u32>(var_1, ~1u, 73508u))), 4294967295u, var_1);
    let var_3 = 2147483647i;
    let var_4 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), var_0.b);
    let var_5 = var_0.a;
    var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -402f)), Struct_2(vec2<i32>(min(countOneBits(-37480i), -var_4.b.a.x), ~var_0.b.a.x)));
    var var_6 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(var_1, var_1), _wgslsmith_clamp_vec3_i32((_wgslsmith_mult_vec3_i32(vec3<i32>(0i, -38685i, -3388i), vec3<i32>(43056i, var_3, 8029i)) | reverseBits(vec3<i32>(-21702i, var_4.b.a.x, 1i))) >> (var_2.zxz % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.b.a.x, var_3, -1i), vec3<i32>(-6976i, var_0.b.a.x, 0i), vec3<i32>(52431i, 43702i, var_0.b.a.x)) ^ firstTrailingBit(firstLeadingBit(vec3<i32>(var_4.b.a.x, u_input.a.x, 1i))), max(max(_wgslsmith_mod_vec3_i32(vec3<i32>(8851i, var_4.b.a.x, 1i), vec3<i32>(2147483647i, u_input.a.x, 40838i)), ~vec3<i32>(var_3, 1i, 17125i)), _wgslsmith_div_vec3_i32(-vec3<i32>(-17532i, 18190i, var_3), max(vec3<i32>(11639i, var_0.b.a.x, var_4.b.a.x), vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x))))));
}

