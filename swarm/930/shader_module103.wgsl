struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(796f + -1000f), 1665f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -282f), -1023f))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-634f)) - 1426f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -520f))))));
    var var_1 = ~countOneBits(abs(global0.x));
    var_1 = 20309i;
    var var_2 = u_input.b.x;
    var var_3 = Struct_1(-vec2<i32>(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(44599i, 6694i), vec2<i32>(15806i, 1i))), u_input.c), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, 0u, 39545u, u_input.b.x) | ~vec4<u32>(4852u, u_input.b.x, 0u, 0u), ~vec4<u32>(1u, u_input.b.x, u_input.b.x, 1u) >> ((vec4<u32>(20825u, 16350u, u_input.b.x, 18456u) >> (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 0u), vec4<u32>(27495u, 36456u, 44990u, 43169u)) | _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 0u, 1u, 4294967295u), vec4<u32>(4294967295u, 15053u, 12624u, 46625u)))));
    return abs(abs(-var_3.a.x));
}

fn func_2() -> f32 {
    global0 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(0i, -35194i, global0.x), vec3<i32>(global0.x, u_input.d, global0.x)), ~vec3<i32>(1i, 1i, u_input.c) & (vec3<i32>(global0.x, 65881i, u_input.a) & vec3<i32>(0i, -1i, -1i))), ~2147483647i, global0.x), vec3<i32>(reverseBits(abs(_wgslsmith_add_i32(global0.x, global0.x))), func_3(), global0.x));
    global0 = _wgslsmith_div_vec3_i32(vec3<i32>(countOneBits(-global0.x), 1i, _wgslsmith_mod_i32(-2147483647i, _wgslsmith_add_i32(global0.x, -2147483647i))) & -reverseBits(vec3<i32>(u_input.d, u_input.c, u_input.c)), firstTrailingBit(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, global0.x, u_input.a), vec3<i32>(global0.x, global0.x, -2147483647i))) | (-vec3<i32>(global0.x, u_input.c, global0.x) | (vec3<i32>(0i, 2147483647i, global0.x) << (vec3<u32>(u_input.b.x, 0u, 12433u) % vec3<u32>(32u))))));
    var var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec2<bool>(true, true)), true), false || any(vec4<bool>(false, true, true, false)));
    global0 = _wgslsmith_sub_vec3_i32(select(abs(abs(firstLeadingBit(vec3<i32>(u_input.a, -26469i, -1i)))), -countOneBits(-vec3<i32>(global0.x, 1i, 0i)), select(!(!vec3<bool>(false, var_0.x, true)), vec3<bool>(any(vec4<bool>(var_0.x, var_0.x, false, true)), !var_0.x, u_input.b.x > 4650u), any(!vec2<bool>(var_0.x, false)))), vec3<i32>(-1i, firstTrailingBit(_wgslsmith_sub_i32(global0.x, select(global0.x, -26499i, var_0.x))), 11669i));
    let var_1 = Struct_1(_wgslsmith_sub_vec2_i32(~(-global0.zy), _wgslsmith_mult_vec2_i32(~vec2<i32>(global0.x, 25005i), vec2<i32>(abs(-15265i), abs(2147483647i)))), _wgslsmith_add_vec4_u32(vec4<u32>(~1860u, countOneBits(countOneBits(4294967295u)), ~reverseBits(u_input.b.x), u_input.b.x), vec4<u32>(countOneBits(0u) << (~4294967295u % 32u), reverseBits(~u_input.b.x), ~u_input.b.x, abs(4294967295u) & max(51747u, u_input.b.x))));
    return -1342f;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global0 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(abs(2147483647i), 1i), arg_1.a.x, global0.x), countOneBits(-_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, u_input.d, 2147483647i), vec3<i32>(u_input.d, -41544i, u_input.a) | vec3<i32>(-2147483647i, arg_2.a.x, global0.x), -vec3<i32>(arg_0.a.x, -2147483647i, 7523i))));
    var var_0 = 1555f;
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -166f)))));
    var var_1 = vec4<i32>(~0i, abs(37417i), reverseBits(global0.x >> (arg_0.b.x % 32u)), ~u_input.a);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(func_2())))));
    return _wgslsmith_mult_i32(var_1.x ^ (~var_1.x >> (_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(101054u, arg_1.b.x, arg_0.b.x, arg_2.b.x)), ~vec4<u32>(arg_2.b.x, arg_1.b.x, 0u, arg_2.b.x)) % 32u)), arg_0.a.x & ~1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(vec3<i32>(-1i) * -vec3<i32>(u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global0.x), global0.xz), u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(i32(-1i) * -1i), ~(vec4<u32>(1u, ~u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), select(41896u, 57612u, false)) & ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 58968u, u_input.b.x), vec4<u32>(1u, 68939u, u_input.b.x, 33598u))), firstTrailingBit(select(vec2<i32>(firstLeadingBit(-1i), func_1(Struct_1(global0.xz, vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x)), Struct_1(vec2<i32>(global0.x, u_input.a), vec4<u32>(1u, u_input.b.x, 20690u, 4294967295u)), Struct_1(global0.zy, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u)))), global0.yx, select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(false, false, true, false))))));
}

