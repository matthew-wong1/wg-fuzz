struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: u32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(110f, i32(-2147483648)), Struct_4(757f, i32(-2147483648)), Struct_4(795f, 1i), Struct_4(-492f, i32(-2147483648)), Struct_4(-126f, -27338i), Struct_4(-1000f, 0i), Struct_4(342f, 39880i), Struct_4(-1913f, 9751i), Struct_4(1986f, -5300i), Struct_4(-1100f, -1i), Struct_4(-1900f, 2147483647i), Struct_4(1026f, 1i), Struct_4(-102f, i32(-2147483648)), Struct_4(-832f, 12741i), Struct_4(-1306f, i32(-2147483648)), Struct_4(-432f, -24789i), Struct_4(-1118f, -71893i), Struct_4(-837f, -12836i), Struct_4(1000f, 26222i), Struct_4(552f, -1i), Struct_4(-938f, -41930i), Struct_4(-1780f, 68997i), Struct_4(705f, -26706i), Struct_4(201f, -27829i), Struct_4(1216f, -1i), Struct_4(-733f, 15484i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec4<u32>, arg_3: i32) -> vec3<f32> {
    global1 = array<Struct_4, 26>();
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-286f + _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-816f - -447f)) + _wgslsmith_f_op_f32(ceil(1f))))));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_dot_vec2_i32(u_input.e.yz, vec2<i32>(arg_3, -1i) | vec2<i32>(_wgslsmith_sub_i32(u_input.c, u_input.e.x), countOneBits(0i))));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1364f, var_0.x, var_1.a))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-578f, var_1.a, var_1.a) + vec3<f32>(var_0.x, 1367f, -118f)) + vec3<f32>(109f, var_1.a, 385f)))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1366f, var_0.x, -990f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(729f, var_1.a, var_1.a) - vec3<f32>(var_0.x, var_0.x, var_1.a)))))), vec3<bool>(!all(vec4<bool>(true, true, false, true)), !(all(vec4<bool>(false, true, true, true)) & select(false, true, false)), any(vec3<bool>(true, true, true)))));
}

fn func_2() -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(~select(0u, 0u, true), 26u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(1u, 1i, u_input.a, u_input.d)))))));
    let var_2 = vec2<i32>(u_input.e.x >> (18091u % 32u), _wgslsmith_add_i32(select(select(var_0.b, reverseBits(var_0.b), any(vec3<bool>(false, false, true))), 1i, false), firstLeadingBit(1i)));
    let var_3 = min(_wgslsmith_clamp_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(59956u, 1u, u_input.a.x, u_input.a.x)), 0u, 60212u), u_input.a.zzw, _wgslsmith_mult_vec3_u32(u_input.a.xwx, vec3<u32>(u_input.a.x << (4294967295u % 32u), u_input.a.x, 26032u))), ~vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4294967295u, u_input.a.x, u_input.b), _wgslsmith_mult_u32(1u, u_input.b), u_input.b), abs(~0u), u_input.b >> (20828u % 32u)));
    let var_4 = vec2<f32>(1000f, 524f);
    return Struct_1(var_2.x, !select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false)), _wgslsmith_dot_vec3_u32(vec3<u32>(~var_3.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(var_3.x, 15530u)) << (0u % 32u), ~(~var_3.x)), u_input.a.wzw), _wgslsmith_mult_u32(~var_3.x, select(u_input.a.x, 4294967295u, true)), (-2602i << (1u % 32u)) >> ((u_input.a.x >> (firstLeadingBit(var_3.x) % 32u)) % 32u));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 21846u, firstLeadingBit(u_input.b), ~_wgslsmith_div_u32(4294967295u, ~u_input.b)), u_input.a >> (vec4<u32>(u_input.a.x, ~_wgslsmith_mult_u32(u_input.a.x, 4294967295u), ~12423u, _wgslsmith_clamp_u32(u_input.b, u_input.b, 4294967295u) ^ 1u) % vec4<u32>(32u)));
    var var_1 = global1[_wgslsmith_index_u32(~4294967295u, 26u)];
    let var_2 = global1[_wgslsmith_index_u32(1u, 26u)];
    var var_3 = u_input.e;
    let var_4 = func_2();
    return Struct_1(var_2.b << (4294967295u % 32u), select(select(vec3<bool>(any(vec4<bool>(true, false, true, var_4.b.x)), true, true), vec3<bool>(var_4.b.x, var_4.b.x || var_4.b.x, var_4.b.x & false), true), select(!vec3<bool>(var_4.b.x, true, true), func_2().b, !vec3<bool>(false, var_4.b.x, true)), vec3<bool>(var_4.b.x, !var_4.b.x, all(!vec4<bool>(var_4.b.x, false, false, var_4.b.x)))), firstTrailingBit(~(~1u)), var_0.x, abs(0i));
}

fn func_4(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -882f))) * _wgslsmith_f_op_f32(abs(972f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1519f))));
    var var_1 = (_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(firstLeadingBit(u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, arg_0.c, u_input.a.x, u_input.b), u_input.a), u_input.a ^ vec4<u32>(arg_0.d, 16264u, u_input.b, 94073u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 32435u, 44263u, 1u) ^ u_input.a, u_input.a)) != 0u) || !(var_0 < var_0);
    global0 = ~countOneBits(countOneBits(0u));
    var var_2 = u_input.d <= -3990i;
    let var_3 = _wgslsmith_mult_vec4_i32(-_wgslsmith_add_vec4_i32(~vec4<i32>(0i, arg_0.a, 2147483647i, arg_0.e) >> (firstLeadingBit(vec4<u32>(arg_0.c, arg_0.d, u_input.a.x, arg_0.c)) % vec4<u32>(32u)), ~vec4<i32>(u_input.e.x, 1i, arg_0.a, u_input.c)), abs(countOneBits(-vec4<i32>(u_input.c, arg_0.e, u_input.c, u_input.e.x))) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(~arg_0.c, 36957u, ~u_input.a.x, 25442u), vec4<u32>(u_input.b, ~u_input.b, u_input.a.x, 34096u), u_input.a) % vec4<u32>(32u)));
    return StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0, -237f, arg_0.b.x))) * -301f), var_0), arg_0.d, min(var_3.xz, u_input.e.yy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_i32(reverseBits(-82086i) & -u_input.e.x, u_input.c, _wgslsmith_clamp_i32(-u_input.e.x, -1i, max(abs(-u_input.c), 1i << (_wgslsmith_dot_vec3_u32(u_input.a.zxw, u_input.a.zxx) % 32u))));
    let x = u_input.a;
    s_output = func_4(func_1());
}

