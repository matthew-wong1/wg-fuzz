struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
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

var<private> global0: u32;

var<private> global1: bool = true;

var<private> global2: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global3: i32 = -1i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>) -> u32 {
    let var_0 = Struct_5(arg_1.b);
    global1 = global2.x;
    var var_1 = Struct_2(Struct_1(arg_1.a.a, arg_0.b, arg_1.a.b), arg_0.b);
    var var_2 = Struct_4(~48928u);
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-775f - _wgslsmith_f_op_f32(arg_1.a.a + _wgslsmith_f_op_f32(floor(arg_1.a.a)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_1.a.a)), _wgslsmith_f_op_f32(-var_1.a.a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2243f + 461f) + 1276f)), -118f, -1584f)));
    return _wgslsmith_mod_u32(arg_1.a.c, 0u);
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    var var_0 = vec3<u32>(4294967295u, func_3(Struct_2(Struct_1(-2159f, 7450u, 14968u), ~58405u), Struct_2(Struct_1(-1107f, 1u, 74563u), ~23812u), arg_0), firstLeadingBit(_wgslsmith_sub_u32(firstTrailingBit(53539u), _wgslsmith_dot_vec4_u32(vec4<u32>(6705u, 0u, 27117u, 0u), vec4<u32>(72607u, 26912u, 99388u, 24301u))))) & ~vec3<u32>(~(~0u), _wgslsmith_dot_vec4_u32(max(vec4<u32>(42114u, 1u, 0u, 0u), vec4<u32>(14422u, 0u, 9862u, 17004u)), vec4<u32>(34415u, 1u, 1879u, 4294967295u)), _wgslsmith_div_u32(340u, 32440u));
    let var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x), u_input.a), 30566i, u_input.b, -u_input.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.b, u_input.b, 18922i), vec4<i32>(u_input.a.x, -58894i, 0i, u_input.c)) | _wgslsmith_div_vec4_i32(u_input.a, -vec4<i32>(u_input.c, u_input.c, 46345i, u_input.c))), firstLeadingBit(reverseBits(vec4<i32>(_wgslsmith_div_i32(-51994i, -65705i), min(-2147483647i, -13773i), u_input.b, _wgslsmith_dot_vec3_i32(u_input.a.zyz, vec3<i32>(u_input.b, u_input.c, 0i))))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-571f + arg_0.x) - _wgslsmith_f_op_f32(select(arg_0.x, 941f, global2.x)))), var_0.x, ~1u), ~103485u);
    global0 = 1u;
    var var_3 = vec4<i32>(countOneBits(~(-2147483647i)), u_input.b, 1328i, u_input.a.x | var_1.x);
    return ~(~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(94646u, var_0.x, 26273u), vec3<u32>(var_0.x, var_0.x, 9309u), vec3<u32>(var_0.x, var_2.b, var_2.a.c)), vec3<u32>(var_2.b, var_0.x, 12492u)) >> (23641u % 32u));
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-819f - -426f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -205f) * 512f))), 2060f, 1f);
    global1 = select(select(21169u, min(firstTrailingBit(0u), ~58137u), !global2.x) < ~min(reverseBits(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 25288u), vec2<u32>(0u, 4294967295u))), select(_wgslsmith_mult_u32(~23074u, ~4294967295u) > _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(28619u, 45419u)), ~vec2<u32>(0u, 52189u)), var_0.x >= var_0.x, global2.x), global2.x);
    var var_1 = _wgslsmith_add_u32(43473u << (1u % 32u), ~(~func_2(vec3<f32>(var_0.x, var_0.x, var_0.x))));
    var var_2 = !global2.wz;
    let var_3 = false;
    return ~(~select(1u, ~4294967295u, all(vec4<bool>(true, false, global2.x, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(func_1(firstLeadingBit(1i | u_input.a.x)) & _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, 1u), vec4<u32>(0u, 0u, 4294967295u, 0u)), ~1u | _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 67834u), vec3<u32>(7513u, 1u, 2954u))), abs(75673u));
}

