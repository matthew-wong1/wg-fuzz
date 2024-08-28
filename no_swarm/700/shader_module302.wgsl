struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec3<f32>,
    d: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(false, false, true, true));

var<private> global1: Struct_4;

var<private> global2: vec2<u32> = vec2<u32>(62831u, 0u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: i32, arg_3: i32) -> u32 {
    global1 = Struct_4(arg_0.a, !global1.b, vec3<f32>(_wgslsmith_f_op_f32(-arg_0.d.b), _wgslsmith_f_op_f32(-arg_0.d.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(436f, 493f)))), Struct_3(_wgslsmith_div_vec4_i32(vec4<i32>(-arg_1.a.x, select(0i, 2147483647i, true), 0i, -1i), _wgslsmith_add_vec4_i32(vec4<i32>(-36124i, arg_1.d.x, arg_0.d.a.x, -36810i), vec4<i32>(arg_0.a.d.x, arg_3, -1i, arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.e.x))) - _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(-arg_1.c))), global1.a));
    var var_0 = any(global0.a);
    let var_1 = arg_1.d.x;
    global0 = Struct_1(arg_0.b);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.c.x)));
    return firstTrailingBit(~(u_input.c ^ arg_1.b));
}

fn func_2() -> vec4<u32> {
    global2 = _wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(firstLeadingBit(~0u), ~firstLeadingBit(u_input.c))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(~global1.d.c.b, u_input.c), ~vec2<u32>(0u, global2.x) | ~vec2<u32>(0u, global1.a.b)));
    global2 = ~firstLeadingBit(~max(abs(vec2<u32>(1u, global1.a.b)), vec2<u32>(global1.a.b, 4294967295u)));
    return ~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.b, 1u), global1.a.b, countOneBits(global1.d.c.b), func_3(Struct_4(Struct_2(global1.d.a.zx, global1.a.b, global1.c.x, vec2<i32>(u_input.a, global1.a.d.x), vec2<f32>(global1.c.x, -105f)), global1.b, global1.c, Struct_3(global1.d.a, 155f, Struct_2(vec2<i32>(u_input.a, -36004i), 0u, -477f, vec2<i32>(u_input.a, 16764i), vec2<f32>(-346f, global1.c.x)))), Struct_2(global1.a.d, 10190u, global1.c.x, global1.d.c.d, vec2<f32>(global1.a.e.x, global1.c.x)), 65365i, u_input.a)), vec4<u32>(global1.d.c.b, u_input.b, _wgslsmith_mod_u32(29952u, global1.d.c.b), _wgslsmith_mult_u32(u_input.b, 1u))), ~firstTrailingBit(vec4<u32>(global2.x, global1.d.c.b, global2.x, global1.d.c.b)) << ((countOneBits(vec4<u32>(54039u, global1.a.b, 4294967295u, 4294967295u)) << (~vec4<u32>(global2.x, u_input.b, u_input.c, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

fn func_1(arg_0: Struct_5, arg_1: bool, arg_2: f32, arg_3: i32) -> bool {
    let var_0 = global0.a;
    global2 = vec2<u32>(4294967295u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_0.a, u_input.b, 15630u, 7972u)) | countOneBits(func_2()), min(_wgslsmith_clamp_vec4_u32(~vec4<u32>(global2.x, u_input.b, u_input.c, global2.x), select(vec4<u32>(1u, global2.x, u_input.b, u_input.c), vec4<u32>(u_input.c, u_input.b, arg_0.a, 0u), global1.b.x), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.a, arg_0.a, u_input.b, 0u), vec4<u32>(arg_0.a, 86759u, u_input.b, global1.a.b))), ~(vec4<u32>(26930u, u_input.b, arg_0.a, global1.a.b) << (vec4<u32>(4294967295u, u_input.c, global2.x, u_input.c) % vec4<u32>(32u))))));
    global1 = Struct_4(Struct_2(global1.d.a.yw, global2.x, _wgslsmith_f_op_f32(259f + global1.c.x), min(select(~vec2<i32>(u_input.a, arg_0.b), global1.d.a.wz | global1.d.a.zx, global1.a.b != global1.d.c.b), global1.a.d), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(global1.d.b + -932f), _wgslsmith_f_op_f32(trunc(arg_2)))))), !global0.a, global1.c, global1.d);
    global0 = Struct_1(vec4<bool>(global0.a.x, _wgslsmith_div_u32(_wgslsmith_div_u32(36418u, u_input.c), _wgslsmith_mod_u32(global1.a.b, global1.a.b)) > (firstTrailingBit(77683u) | arg_0.a), var_0.x, false));
    global1 = Struct_4(Struct_2(abs(countOneBits(~global1.d.c.d)), 1u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(144f - -655f)))), global1.d.c.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_2 + -790f), _wgslsmith_f_op_f32(-arg_2)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global1.c.yz + global1.a.e))))), vec4<bool>(select(!arg_1, !any(vec2<bool>(true, true)), all(global1.b.zx)), all(vec3<bool>(21528u == global2.x, var_0.x, all(global0.a.yy))), arg_1, false), global1.c, global1.d);
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a.c;
    global1 = Struct_4(global1.d.c, select(select(vec4<bool>(!global1.b.x, global1.b.x || true, true, func_1(Struct_5(4294967295u, -5164i), false, -528f, u_input.a)), select(vec4<bool>(global0.a.x, global1.b.x, global1.b.x, true), !global0.a, global0.a.x), global1.b.x), !global1.b, true), global1.c, global1.d);
    global2 = ~vec2<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(8860u, 0u, global1.d.c.b), vec3<u32>(66205u, global2.x, global2.x))) ^ _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.c, 1u), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(12004u, global1.a.b), vec2<u32>(0u, 4294967295u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, global1.a.b), vec2<u32>(4294967295u, u_input.c))), vec2<u32>(_wgslsmith_add_u32(1u, global2.x), u_input.b)));
    var var_1 = vec3<bool>((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-303f + -2212f)) >= _wgslsmith_div_f32(global1.c.x, -1186f)) == true, true, all(vec4<bool>(true, false, select(global2.x == global1.a.b, true, global0.a.x), global0.a.x)));
    let var_2 = ~(-global1.d.a.yxx);
    var_1 = vec3<bool>(true, all(global0.a.wy), all(vec4<bool>(false, false, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(max(~0u, 8036u) >> (reverseBits(u_input.c) % 32u)), abs(global1.a.d.x), _wgslsmith_f_op_vec2_f32(global1.c.xy * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1715f, 663f)))))), 1u, vec4<i32>(-(~_wgslsmith_div_i32(u_input.a, 9736i)), -(~_wgslsmith_mod_i32(u_input.a, global1.d.c.d.x)), _wgslsmith_mult_i32(i32(-1i) * -var_2.x, -var_2.x | _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, -1i, 2147483647i, u_input.a), vec4<i32>(-1i, var_2.x, 17251i, u_input.a))), 1i));
}

