struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-366f, vec2<u32>(0u, 4294967295u));

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_1, 12>;

var<private> global3: bool = false;

var<private> global4: vec2<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> f32 {
    var var_0 = arg_2;
    let var_1 = select(global4.x, select(any(!(!global1.zz)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_2.a, -2374f)), _wgslsmith_f_op_f32(exp2(var_0.a)))) != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a + 1926f))), global4.x), true);
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(26336u, 8472u), 12u)];
    let var_2 = ((vec3<i32>(max(arg_1.x, 17847i), abs(2147483647i), abs(u_input.c.x)) & ~(~vec3<i32>(-1i, 1328i, -42675i))) ^ arg_1) & u_input.c.xzz;
    var var_3 = vec2<i32>(~(-1i), max(0i, ~reverseBits(1i)));
    return 577f;
}

fn func_2(arg_0: vec2<f32>) -> vec2<f32> {
    global4 = vec2<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(arg_0.x * 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), false)) <= _wgslsmith_f_op_f32(arg_0.x - -1499f), !global4.x);
    global3 = select(false, _wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * _wgslsmith_f_op_f32(f32(-1f) * -513f))) <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(~5809u, 12u)], vec3<i32>(u_input.d.x, u_input.d.x, 18477i) << (u_input.b % vec3<u32>(32u)), Struct_1(global0.a, global0.b))))), global4.x);
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -2138f, 339f, 366f)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -580f), 607f, arg_0.x, _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(u_input.b.x, 12u)], u_input.c.xwz, global2[_wgslsmith_index_u32(u_input.a.x, 12u)])))))));
    var var_1 = u_input.c.x;
    global4 = select(global1.xy, vec2<bool>(!(!select(global1.x, global1.x, true)), all(vec3<bool>(2147483647i >= u_input.d.x, global0.a < 502f, true))), select(select(select(global1.zx, vec2<bool>(global4.x, false), true), !global1.xz, any(vec2<bool>(global4.x, false))), global1.yz, any(select(!vec3<bool>(global1.x, global4.x, false), select(vec3<bool>(global4.x, global4.x, true), vec3<bool>(false, true, global4.x), global4.x), select(vec3<bool>(true, true, global1.x), vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global4.x))))));
    return arg_0;
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-868f, -1000f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, -911f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, -1447f) * vec2<f32>(-443f, 791f)))))), _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1285f, global0.a) - vec2<f32>(363f, global0.a))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, 523f) - vec2<f32>(453f, global0.a))))))));
    global0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(var_0)).x), _wgslsmith_f_op_f32(max(global0.a, _wgslsmith_f_op_f32(global0.a + var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -215f) * var_0.x), global4.x)), ~global0.b);
    global0 = Struct_1(_wgslsmith_f_op_f32(max(1000f, -363f)), ~vec2<u32>(_wgslsmith_mult_u32(4294967295u, 0u), ~0u) | global0.b);
    var var_1 = u_input.b | vec3<u32>(~74901u, ~firstLeadingBit(0u), 4294967295u);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-334f + 1138f)))), global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-610f)))))));
    return global2[_wgslsmith_index_u32(4294967295u, 12u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(~u_input.d.x, ((_wgslsmith_sub_i32(-43297i, 32546i) << (~global0.b.x % 32u)) << (0u % 32u)) ^ u_input.c.x);
    var var_1 = func_1(min(7485u, ~6387u));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + -1000f))))), func_1(~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.b.x, global0.b.x, var_1.b.x, u_input.b.x), vec4<u32>(var_1.b.x, 1u, 0u, global0.b.x))).b);
    var var_2 = u_input.c.x;
    var_1 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x & abs(max(1u, u_input.a.x ^ var_1.b.x)), u_input.b.x, 4294967295u), 12u)];
    var var_3 = vec2<i32>(~(~_wgslsmith_mod_i32(-2147483647i & u_input.c.x, ~2147483647i)), -16031i ^ ~(~u_input.d.x & u_input.d.x));
    global0 = func_1(~1u);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(step(1f, 696f)), ~_wgslsmith_mult_vec2_u32(~firstLeadingBit(vec2<u32>(global0.b.x, 3987u)), ~vec2<u32>(u_input.a.x, u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_4.b.x, ~var_4.b.x, global0.b.x, var_1.b.x), _wgslsmith_mod_vec4_u32(~vec4<u32>(global0.b.x, 0u, 19271u, global0.b.x), vec4<u32>(var_1.b.x, 90079u, 0u, 85369u) & vec4<u32>(43498u, global0.b.x, 4294967295u, 1u)) >> (firstLeadingBit(~vec4<u32>(56439u, 1u, var_4.b.x, 48265u)) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 55119u, 80294u, 4294967295u), vec4<u32>(var_1.b.x, 1u, var_1.b.x, 0u)), abs(vec4<u32>(var_4.b.x, u_input.a.x, global0.b.x, 0u)))));
}

