struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: i32,
    d: bool,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 39191u;

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_3, 9>;

var<private> global3: vec3<u32>;

var<private> global4: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(Struct_1(25398i, 1000f, 6537i, -790f), 160f, 15852u), Struct_3(Struct_1(-29847i, -462f, -9633i, 2606f), -611f, 1u), Struct_3(Struct_1(0i, 766f, 36022i, -184f), -1000f, 1u));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: vec2<i32>) -> u32 {
    global0 = 1u;
    let var_0 = vec2<u32>(44948u, _wgslsmith_sub_u32(arg_0.x, arg_0.x));
    var var_1 = Struct_1(u_input.a ^ -select(12645i, -arg_2.x, all(vec4<bool>(false, true, true, true))), _wgslsmith_f_op_f32(-830f + -184f), 4041i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-224f + 643f))), _wgslsmith_f_op_f32(748f + _wgslsmith_f_op_f32(sign(2297f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-220f, arg_1)), _wgslsmith_f_op_f32(-1000f + arg_1)) * _wgslsmith_f_op_f32(f32(-1f) * -1279f))));
    global0 = abs(~(~global3.x));
    var var_2 = 4294967295u;
    return global3.x;
}

fn func_2() -> vec3<bool> {
    global3 = vec3<u32>(_wgslsmith_dot_vec4_u32(~reverseBits(~vec4<u32>(global3.x, global3.x, 536u, 1u)), vec4<u32>(_wgslsmith_dot_vec2_u32(~global3.zz, ~vec2<u32>(global3.x, global3.x)), global3.x, 36924u, ~2819u)), countOneBits(~max(~0u, ~global3.x)), max(max(1u, func_3(_wgslsmith_mod_vec4_u32(vec4<u32>(global3.x, global3.x, 1u, 10029u), vec4<u32>(4294967295u, 17413u, global3.x, global3.x)), 1499f, _wgslsmith_mod_vec2_i32(global1.xy, global1.yx))), ~min(1u, ~21210u)));
    var var_0 = ~global3.x;
    var var_1 = min(_wgslsmith_dot_vec2_i32(abs(global1.yy), -select(global1.zx, vec2<i32>(2147483647i, 20094i), false)) >> (global3.x % 32u), countOneBits(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a, abs(1i)), ~(~12306i))));
    global3 = _wgslsmith_add_vec3_u32(vec3<u32>(firstLeadingBit(~4294967295u), ~(4294967295u & ~global3.x), global3.x), ~vec3<u32>(_wgslsmith_div_u32(17488u, global3.x), ~global3.x, reverseBits(0u)));
    var var_2 = _wgslsmith_mod_i32(~(-global1.x ^ ~2147483647i) ^ -2147483647i, -1i);
    return select(vec3<bool>(false, true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(true, false, true))))), select(!vec3<bool>(all(vec2<bool>(true, false)), false, global3.x >= global3.x), !vec3<bool>(global3.x > global3.x, u_input.a >= 25617i, true), true), !vec3<bool>(true && any(vec4<bool>(true, true, true, false)), global1.x != -global1.x, true));
}

fn func_1(arg_0: vec2<bool>) -> bool {
    return all(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(18473u, vec2<bool>(true, true), (u_input.a << (global3.x % 32u)) << (~(~(~global3.x)) % 32u), !func_1(vec2<bool>(true, false)), vec2<i32>(_wgslsmith_add_i32(~firstTrailingBit(-2147483647i), _wgslsmith_mod_i32(u_input.a, 38981i)), 0i));
    var var_1 = var_0.d & var_0.d;
    var var_2 = _wgslsmith_clamp_i32(-(_wgslsmith_clamp_i32(var_0.e.x, 1i, global1.x) ^ (global1.x << (var_0.a % 32u))), 0i, abs(-26415i)) << (select(global3.x, ~1u, !(var_0.d & !var_0.d)) % 32u);
    let var_3 = select(vec4<bool>(select(var_0.d != var_0.b.x, !var_0.b.x, true), all(func_2()), var_0.b.x, var_0.d), !vec4<bool>(var_0.d, !(var_0.d | true), 0i < max(14970i, u_input.a), var_0.b.x), !(!(!(!vec4<bool>(false, var_0.d, true, var_0.b.x)))));
    var var_4 = -883f;
    var var_5 = !(!any(!func_2().zy));
    let var_6 = !var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -815f))), firstLeadingBit(vec2<u32>(~_wgslsmith_dot_vec2_u32(global3.zy, vec2<u32>(1u, 0u)), var_0.a)), vec2<i32>(select(u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global1.x, global1.x, var_0.c, global1.x), vec4<i32>(u_input.a, global1.x, -1i, u_input.a)), vec4<i32>(var_0.c, u_input.a, u_input.a, 14332i)), var_3.x), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_0.c, var_0.c, 37358i)) | _wgslsmith_mult_vec3_i32(vec3<i32>(global1.x, 1i, var_0.c), vec3<i32>(-67143i, -2147483647i, var_0.e.x)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(46533i, 1i, var_0.c), vec3<i32>(32271i, global1.x, 32524i), vec3<i32>(var_0.e.x, 0i, -2992i)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-743f))), -132f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-168f + -1816f) * _wgslsmith_div_f32(1846f, 795f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(895f, 283f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-555f - -1199f), _wgslsmith_f_op_f32(select(1177f, 864f, true)), _wgslsmith_f_op_f32(min(-977f, 553f)), _wgslsmith_div_f32(1229f, 1104f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1773f, 1000f, 662f, 261f) * vec4<f32>(1084f, 610f, -1000f, 509f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(184f, -104f, -1009f, -1383f))))), _wgslsmith_f_op_f32(floor(-906f)));
}

