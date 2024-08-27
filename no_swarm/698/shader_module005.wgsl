struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1>;

var<private> global1: array<vec2<i32>, 9> = array<vec2<i32>, 9>(vec2<i32>(14887i, 63069i), vec2<i32>(i32(-2147483648), 26909i), vec2<i32>(0i, 27604i), vec2<i32>(0i, 7590i), vec2<i32>(-1i, 1i), vec2<i32>(1i, 18556i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-17207i, -16195i), vec2<i32>(-2156i, -26982i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec3<bool>, arg_3: vec4<i32>) -> u32 {
    global1 = array<vec2<i32>, 9>();
    global0 = array<f32, 1>();
    global1 = array<vec2<i32>, 9>();
    var var_0 = select(!vec4<bool>(true, true, select(all(arg_2), arg_2.x, any(vec4<bool>(true, arg_2.x, true, true))), true), !(!select(vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), select(vec4<bool>(arg_2.x, arg_2.x, true, true), vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), true), arg_2.x & arg_2.x)), arg_2.x);
    global0 = array<f32, 1>();
    return _wgslsmith_dot_vec3_u32(vec3<u32>(39821u, 0u, reverseBits(arg_0.a.b)), vec3<u32>(15793u, 22021u, arg_0.c.b));
}

fn func_2(arg_0: bool) -> vec2<u32> {
    var var_0 = 260f;
    let var_1 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(2382u, 0u, 0u, 50280u)), ~firstTrailingBit(vec4<u32>(33451u, 4294967295u, 4294967295u, 47474u))), 1u)], _wgslsmith_add_u32(firstLeadingBit(1u), 1u), _wgslsmith_add_i32(u_input.a.x, u_input.a.x) << (121726u % 32u), vec4<u32>(~countOneBits(1u), firstLeadingBit(firstTrailingBit(38096u)), 94947u, select(0u, 59776u, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(~1u, 1u)])))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1055f), 115f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1215f, 601f)))), func_3(Struct_2(Struct_1(1370f, 1455u, -30542i, vec4<u32>(4294967295u, 38351u, 13264u, 23825u)), -351f, Struct_1(global0[_wgslsmith_index_u32(25833u, 1u)], 4294967295u, 1i, vec4<u32>(557u, 4294967295u, 100533u, 1u))), -2147483647i, vec3<bool>(false, true, arg_0), ~(-vec4<i32>(u_input.a.x, 1i, u_input.a.x, 1i))), u_input.a.x, ~(~(~vec4<u32>(1u, 15309u, 1u, 1u)))));
    var var_2 = global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(24040u, 31778u)), 1u)];
    var var_3 = var_1;
    let var_4 = firstTrailingBit(var_1.c.d.yx);
    return vec2<u32>(4294967295u, select(0u, abs(var_4.x), var_1.c.a < -483f));
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(firstLeadingBit(2147483647i), u_input.a.x >> (1u % 32u), u_input.a.x), vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x) | _wgslsmith_add_vec3_i32(vec3<i32>(arg_0, arg_0, 1i), vec3<i32>(9772i, 47657i, -28028i))), -(~vec3<i32>(u_input.a.x, -1i, -1i)) | vec3<i32>(~u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, -2147483647i, u_input.a.x), u_input.a.x << (4294967295u % 32u)));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(1u, abs(87022u)), ~_wgslsmith_div_u32(~1u, ~19643u)), 9u)];
    var var_2 = ~min(vec2<u32>(1u, 1u), vec2<u32>(~0u, ~1u)) << (func_2(true) % vec2<u32>(32u));
    var_2 = ~(~select(vec2<u32>(43852u, ~var_2.x), vec2<u32>(var_2.x ^ var_2.x, min(var_2.x, 0u)), vec2<bool>(true, true)));
    var var_3 = Struct_4(false, vec3<u32>(abs(15381u), var_2.x, var_2.x));
    return !(!select(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(4294967295u, 1u)], -472f)) >= global0[_wgslsmith_index_u32(1u, 1u)], !(!var_3.a), false));
}

fn func_4(arg_0: vec3<bool>, arg_1: bool) -> StorageBuffer {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(22618u, 1u)] - -1535f))))), ~(~1u), -2147483647i, vec4<u32>(~1u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(96524u, 4294967295u), vec2<u32>(27972u, 1u))), func_2(arg_1).x, _wgslsmith_div_u32(~101546u, _wgslsmith_mod_u32(30561u, 18786u)))), global0[_wgslsmith_index_u32(673u, 1u)], Struct_1(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 1u)] - -206f), 1u, u_input.a.x, firstLeadingBit(~(~vec4<u32>(4294967295u, 2887u, 0u, 4294967295u)))));
    var var_1 = vec3<u32>(var_0.a.d.x, var_0.a.b, var_0.c.b);
    var var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(58369i, 2147483647i, -13985i, 3032i), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 11025i, var_0.a.c, 1i), vec4<i32>(0i, 10494i, u_input.a.x, 0i))), abs(vec4<i32>(-16506i, -2147483647i, -39717i, 23378i))) ^ var_0.c.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-_wgslsmith_div_i32(var_0.a.c, u_input.a.x), ~var_0.a.c), global1[_wgslsmith_index_u32(~firstTrailingBit(1u), 9u)]), firstLeadingBit(var_0.a.c ^ -_wgslsmith_mod_i32(var_0.a.c, var_0.c.c)), var_0.a.c >> (var_0.c.b % 32u));
    var var_3 = true && (!(!(33125u < var_0.c.d.x)) & !func_1(var_0.c.c));
    var_3 = arg_1;
    return StorageBuffer(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(vec3<bool>(all(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true))), false, func_1(~_wgslsmith_div_i32(-31414i, u_input.a.x))), (any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false))) && any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))) && false);
}

