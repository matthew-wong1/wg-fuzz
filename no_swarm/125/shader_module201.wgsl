struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-39562i, vec3<i32>(0i, -1i, -25220i), vec3<f32>(-151f, -814f, 1552f), i32(-2147483648), -411f);

var<private> global1: Struct_3 = Struct_3(false, 555f);

var<private> global2: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: f32) -> i32 {
    var var_0 = _wgslsmith_mult_i32(reverseBits(_wgslsmith_sub_i32(28330i, 1i << (0u % 32u))), _wgslsmith_div_i32(-22057i, -global0.a));
    var var_1 = global1.a;
    global1 = Struct_3(global1.a, _wgslsmith_f_op_f32(trunc(-437f)));
    var var_2 = ~vec4<u32>(firstLeadingBit(4294967295u), countOneBits(4294967295u), ~min(0u, ~23960u), global2.a);
    var var_3 = select(0i, ~u_input.a.x, true);
    return -36955i;
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_2) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(global1.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), -52927i == global2.b));
    let var_1 = any(!vec2<bool>(all(vec3<bool>(global1.a, true, false)), global1.a));
    var var_2 = Struct_2(-62568i, firstLeadingBit(max(~vec3<i32>(32205i, global0.a, u_input.a.x), ~global0.b)) | arg_2.b, global0.c, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i | global2.b, select(-1493i, 0i, var_1), _wgslsmith_div_i32(arg_2.b.x, global0.d), arg_2.b.x) | -(~vec4<i32>(arg_1, u_input.a.x, 0i, 0i)), max(vec4<i32>(_wgslsmith_mult_i32(global0.d, -11504i), ~6015i, 8466i, 1i), -abs(vec4<i32>(-2147483647i, arg_1, global2.b, -1i)))), -248f);
    global1 = Struct_3(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -656f)));
    let var_3 = Struct_3(all(!vec3<bool>(all(vec2<bool>(global1.a, var_1)), false, false)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(floor(global1.b))))));
    return -(select(~vec3<i32>(u_input.a.x, 0i, -13211i), var_2.b, vec3<bool>(select(var_3.a, var_1, false), false || global1.a, false)) & arg_2.b);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>) -> i32 {
    let var_0 = vec3<bool>(arg_0, false, global1.a);
    global0 = Struct_2(~(-1i), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(global0.b, (vec3<i32>(global0.d, -7042i, global2.b) >> (vec3<u32>(32696u, arg_1.a, 1u) % vec3<u32>(32u))) ^ firstTrailingBit(vec3<i32>(u_input.a.x, u_input.a.x, -1i))), _wgslsmith_div_vec3_i32(func_3(_wgslsmith_f_op_f32(exp2(global2.d.x)), func_2(arg_1.d, arg_1, global0.b, 803f), Struct_2(1500i, global0.b, global0.c, -1i, -169f)), firstTrailingBit(-global0.b))), vec3<f32>(-227f, arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1206f - global1.b), _wgslsmith_f_op_f32(arg_1.d.x + 172f)) * _wgslsmith_f_op_f32(f32(-1f) * -212f))), _wgslsmith_clamp_i32(63658i, _wgslsmith_mod_i32(_wgslsmith_div_i32(global2.b, -2147483647i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b, arg_1.b, arg_1.b, global2.b), vec4<i32>(global2.b, global2.b, 0i, global2.b))), -40466i), -897f);
    var var_1 = false;
    let var_2 = arg_1;
    let var_3 = select(~(~(~vec4<u32>(arg_1.c, 12316u, var_2.c, 21852u))), _wgslsmith_mod_vec4_u32(max(~vec4<u32>(1553u, 0u, arg_1.c, arg_1.c), vec4<u32>(arg_1.c, 369u, 48904u, global2.a) & vec4<u32>(arg_1.c, 1u, arg_1.c, global2.c)), abs(max(vec4<u32>(var_2.a, var_2.a, arg_1.c, global2.a), vec4<u32>(0u, 4294967295u, global2.c, arg_1.a)))) >> (~(_wgslsmith_div_vec4_u32(vec4<u32>(24309u, var_2.a, 0u, global2.a), vec4<u32>(31569u, var_2.c, 4294967295u, global2.a)) | (vec4<u32>(global2.c, global2.a, var_2.c, global2.a) | vec4<u32>(44034u, 1u, 4294967295u, 0u))) % vec4<u32>(32u)), global1.a);
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(~1u, _wgslsmith_sub_vec3_u32(select(vec3<u32>(0u, global2.c, 4294967295u), select(vec3<u32>(global2.c, 32801u, global2.a), vec3<u32>(global2.a, 31322u, global2.c), false), vec3<bool>(false, true, global1.a)), countOneBits(vec3<u32>(1684u, 4294967295u, 4294967295u))) << (vec3<u32>(58512u, 0u, _wgslsmith_add_u32(1u, global2.c)) % vec3<u32>(32u)), -(~(func_1(global1.a, Struct_1(global2.a, 2719i, 4294967295u, global2.d), global0.c.zz) << ((global2.a ^ global2.c) % 32u))));
}

