struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: bool,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = 558f;
    let var_1 = arg_3;
    global0 = array<Struct_2, 2>();
    var var_2 = ~(vec2<u32>(_wgslsmith_div_u32(0u, _wgslsmith_add_u32(4294967295u, arg_2.b)), _wgslsmith_div_u32(min(48283u, u_input.a), min(0u, arg_3.d.x))) >> (_wgslsmith_sub_vec2_u32(countOneBits(_wgslsmith_mult_vec2_u32(u_input.b.xy, u_input.b.xx)), countOneBits(~vec2<u32>(u_input.c, arg_3.d.x))) % vec2<u32>(32u)));
    var_2 = ~reverseBits(vec2<u32>(_wgslsmith_add_u32(arg_3.d.x, 4294967295u) ^ _wgslsmith_mult_u32(5615u, 1u), var_1.d.x));
    return vec3<i32>(_wgslsmith_div_i32(abs(var_1.e.x), arg_3.a.x), 1i, -_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-arg_3.e.xz, vec2<i32>(var_1.e.x, 2147483647i)), (i32(-1i) * -1i) ^ select(-2635i, 18528i, var_1.c)));
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = u_input.c;
    let var_1 = arg_0;
    global0 = array<Struct_2, 2>();
    let var_2 = ~func_3(~_wgslsmith_clamp_vec3_i32(min(vec3<i32>(31328i, -1i, 2147483647i), vec3<i32>(22561i, -48068i, 28436i)), vec3<i32>(-1i, 2147483647i, 1i) << (u_input.b.xxy % vec3<u32>(32u)), -vec3<i32>(-61684i, 0i, 0i)), Struct_2(1i, 1u, _wgslsmith_dot_vec4_i32(vec4<i32>(264i, -27538i, -2147483647i, -817i), vec4<i32>(1i, 1i, 1i, 1i))), global0[_wgslsmith_index_u32(~(u_input.c ^ _wgslsmith_clamp_u32(53516u, 27825u, u_input.b.x)), 2u)], Struct_1(-firstLeadingBit(vec3<i32>(2147483647i, -15753i, -36851i)), !select(vec2<bool>(var_1, arg_0), vec2<bool>(arg_0, true), vec2<bool>(var_1, var_1)), var_1, ~firstLeadingBit(vec2<u32>(39787u, 1u)), vec3<i32>(1i, 1i, 1i)));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.c, max(u_input.c, _wgslsmith_add_u32(u_input.a, firstLeadingBit(firstTrailingBit(39965u))))), 2u)];
    return all(vec2<bool>(true, arg_0));
}

fn func_1() -> u32 {
    global0 = array<Struct_2, 2>();
    var var_0 = select(!vec4<bool>(true | func_2(true), true, select(true, any(vec2<bool>(false, false)), false), true), select(vec4<bool>(true, any(vec3<bool>(true, true, false)), true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), true), !(func_2(true) && select(true, false, false))), 3600i == ~_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -41115i, 0i, 40513i), vec4<i32>(1i, -2519i, -1i, 1i)), 25623i));
    var var_1 = 81086u;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1126f, 835f)))))));
    var var_3 = false;
    return u_input.a ^ ~4294967295u;
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<f32>, arg_3: bool) -> Struct_1 {
    global0 = array<Struct_2, 2>();
    var var_0 = false;
    var var_1 = min(arg_1, 36450u);
    var var_2 = reverseBits(vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, 24923i, 0i, 3166i), vec4<i32>(-2147483647i, 1i, -48875i, 2147483647i)), -78504i)) >> (~(~(~vec2<u32>(arg_0.x, 1u))) % vec2<u32>(32u));
    global0 = array<Struct_2, 2>();
    return Struct_1(vec3<i32>(_wgslsmith_sub_i32(var_2.x, var_2.x), -max(_wgslsmith_dot_vec3_i32(vec3<i32>(-12652i, 18i, -51157i), vec3<i32>(var_2.x, var_2.x, var_2.x)), var_2.x), var_2.x), !vec2<bool>(!(arg_0.x >= 4294967295u), any(vec4<bool>(arg_3, false, arg_3, arg_3)) || true), true, abs(_wgslsmith_add_vec2_u32(vec2<u32>(arg_1, arg_1) | u_input.b.xz, ~vec2<u32>(0u, 25741u)) | vec2<u32>(arg_1, u_input.b.x)), vec3<i32>(-var_2.x, ~(abs(var_2.x) >> (_wgslsmith_mod_u32(arg_0.x, 4294967295u) % 32u)), countOneBits(2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<u32>(~26829u, ~162501u, 0u);
    var var_1 = _wgslsmith_div_u32(87882u, 1u);
    let var_2 = func_4((select(var_0.yz, u_input.b.xz >> (vec2<u32>(74730u, u_input.b.x) % vec2<u32>(32u)), true) >> (vec2<u32>(select(u_input.a, u_input.b.x, false), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 82396u, 13123u), u_input.b.xxx)) % vec2<u32>(32u))) & u_input.b.yy, _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_0.x, 30451u), var_0.x, ~0u), 10649u, reverseBits(func_1()) << (var_0.x % 32u)), vec4<f32>(_wgslsmith_div_f32(347f, _wgslsmith_f_op_f32(-1575f - _wgslsmith_f_op_f32(trunc(-630f)))), _wgslsmith_f_op_f32(-2465f - 1f), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-769f * 326f))), ~var_0.x != ~abs(12325u));
    var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_mod_u32(1u, var_2.d.x), ~firstTrailingBit(u_input.c)), countOneBits(_wgslsmith_sub_vec2_u32(var_2.d, var_2.d))), ~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(59855u, 1u), vec2<u32>(4294967295u, 35036u))) & 6333u, var_2.d.x);
    var_1 = var_2.d.x;
    let var_3 = vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -942f) * -1495f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-625f, 1000f, true)) * _wgslsmith_f_op_f32(-1000f + -1039f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-917f - 708f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1081f + 557f))))));
    var_0 = u_input.b.xww & select(firstLeadingBit(firstLeadingBit(~u_input.b.zwz)), min(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, 0u, 4294967295u), ~u_input.b.xxw, ~u_input.b.xyw), ~vec3<u32>(var_2.d.x, u_input.a, 7195u) << (_wgslsmith_mult_vec3_u32(vec3<u32>(15124u, 79029u, 57931u), u_input.b.zwy) % vec3<u32>(32u))), var_2.b.x);
    global0 = array<Struct_2, 2>();
    let var_4 = !(!var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3.x));
}

