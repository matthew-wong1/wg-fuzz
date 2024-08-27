struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9>;

var<private> global1: array<Struct_1, 11>;

var<private> global2: vec3<u32>;

var<private> global3: array<i32, 28> = array<i32, 28>(1i, -74685i, 2147483647i, -1i, -23079i, 2147483647i, 2147483647i, 1i, -1i, -5485i, i32(-2147483648), i32(-2147483648), -55153i, 0i, 2147483647i, 2147483647i, -1i, 2147483647i, 0i, -9072i, i32(-2147483648), -33618i, 29424i, -1447i, 1i, -13825i, 1i, 58224i);

var<private> global4: Struct_3 = Struct_3(false, Struct_2(Struct_1(92077u, 2210i, -9963i, vec2<i32>(-1i, 1i)), vec2<u32>(2808u, 26482u), 0i, 4294967295u, Struct_1(0u, i32(-2147483648), 1i, vec2<i32>(-44191i, 50538i))), 19726u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2) -> vec4<i32> {
    return _wgslsmith_mod_vec4_i32(firstLeadingBit(_wgslsmith_clamp_vec4_i32(select(~vec4<i32>(-16973i, global3[_wgslsmith_index_u32(13521u, 28u)], arg_0.b.c, arg_0.b.a.d.x), max(vec4<i32>(u_input.b.x, arg_1, global4.b.a.c, 0i), vec4<i32>(-36594i, arg_2.e.c, u_input.b.x, arg_2.e.c)), true), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.b.a.d.x, -64000i, arg_2.c, -7240i), vec4<i32>(arg_2.a.b, global4.b.c, global4.b.e.c, global3[_wgslsmith_index_u32(29005u, 28u)])) << (select(vec4<u32>(u_input.e, arg_0.c, global2.x, 8308u), vec4<u32>(global2.x, global0[_wgslsmith_index_u32(4294967295u, 9u)], arg_0.c, 61845u), vec4<bool>(arg_0.a, false, true, false)) % vec4<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(1i, arg_1, 1i, -30681i))), vec4<i32>(~_wgslsmith_sub_i32(arg_1 << (global0[_wgslsmith_index_u32(u_input.a, 9u)] % 32u), 1i), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global4.c, global2.x), 28u)], -44259i, -2847i));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>) -> vec4<i32> {
    global0 = array<u32, 9>();
    var var_0 = global4.b;
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, 1014f, 876f, 1000f), vec4<f32>(2628f, 2130f, -1681f, -223f))), vec4<f32>(853f, 1711f, -1491f, 1466f)))))))));
    let var_2 = ~1u;
    let var_3 = global4.b;
    return ~abs(select(func_3(Struct_3(true, Struct_2(Struct_1(1u, -21297i, -1i, vec2<i32>(10808i, -27740i)), global2.zz, global3[_wgslsmith_index_u32(global4.c, 28u)], 19217u, Struct_1(global4.c, u_input.b.x, u_input.b.x, vec2<i32>(0i, var_0.a.b))), global4.c), ~(-1922i), global4.b), firstLeadingBit(select(vec4<i32>(1i, -29666i, arg_1.x, var_0.a.d.x), vec4<i32>(arg_1.x, -30737i, -19204i, -53514i), false)), select(!vec4<bool>(global4.a, global4.a, global4.a, true), vec4<bool>(global4.a, false, true, true), select(vec4<bool>(true, true, true, global4.a), vec4<bool>(global4.a, global4.a, false, global4.a), vec4<bool>(true, true, global4.a, false)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<f32>) -> u32 {
    return ~(~(~abs(~17505u)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    var var_0 = vec4<i32>(global4.b.c, -1i, reverseBits(arg_1.c) | arg_1.c, -arg_1.c & global4.b.e.b);
    var var_1 = Struct_1(_wgslsmith_add_u32(func_4(func_2(arg_2.a.d, vec3<i32>(arg_0.c, u_input.b.x, global4.b.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1826f, -730f, 2727f))) ^ global0[_wgslsmith_index_u32(35466u, 9u)], _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, 19312u, u_input.a), 71136u), _wgslsmith_mod_u32(1u, u_input.a), min(61220u << (1u % 32u), u_input.c.x))), arg_2.e.c, _wgslsmith_dot_vec3_i32(func_2(arg_0.d, vec3<i32>(33679i, arg_0.d.x, firstLeadingBit(arg_0.d.x))).xwz, select(_wgslsmith_clamp_vec3_i32(var_0.zxz, u_input.b, vec3<i32>(14068i, 11941i, 0i)), var_0.yxw | vec3<i32>(-2147483647i, arg_1.a.b, arg_0.d.x), vec3<bool>(true, global4.a, true)) << (u_input.c % vec3<u32>(32u))), ~_wgslsmith_div_vec2_i32(vec2<i32>(-arg_2.c, firstLeadingBit(u_input.b.x)), var_0.yy));
    var var_2 = true;
    let var_3 = global4.c;
    var var_4 = -487f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-947f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-776f, 1f)) - _wgslsmith_f_op_f32(-363f - 871f))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_3(select(any(select(vec3<bool>(global4.a, global4.a, true), select(vec3<bool>(true, global4.a, true), vec3<bool>(global4.a, false, global4.a), vec3<bool>(global4.a, global4.a, false)), global4.a)), (_wgslsmith_f_op_f32(-247f * 753f) > _wgslsmith_f_op_f32(func_1(Struct_1(u_input.a, global3[_wgslsmith_index_u32(4294967295u, 28u)], u_input.b.x, vec2<i32>(u_input.b.x, -13358i)), global4.b, global4.b))) & select(1i == global3[_wgslsmith_index_u32(58168u, 28u)], any(vec3<bool>(global4.a, global4.a, global4.a)), all(vec3<bool>(global4.a, true, global4.a))), all(select(vec2<bool>(global4.a, false), vec2<bool>(global4.a, global4.a), vec2<bool>(global4.a, global4.a))) && any(!vec3<bool>(true, global4.a, global4.a))), Struct_2(global4.b.a, ~reverseBits(global4.b.b & vec2<u32>(global4.b.a.a, u_input.d)), _wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 46630i), vec2<i32>(0i, global4.b.a.b)), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(global2.zx, vec2<u32>(39270u, global0[_wgslsmith_index_u32(global2.x, 9u)])), 28u)]), min(u_input.d, 37332u) << (_wgslsmith_dot_vec3_u32(u_input.c, ~vec3<u32>(global4.b.e.a, 0u, global4.c)) % 32u), Struct_1(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(reverseBits(global4.b.a.a), 9u)], 9u)], u_input.b.x, reverseBits(abs(global3[_wgslsmith_index_u32(0u, 28u)])), _wgslsmith_div_vec2_i32(-vec2<i32>(1i, -37651i), global4.b.a.d))), global4.b.d);
    var var_0 = select(select(!vec3<bool>(true, true, global4.a || false), !(!(!vec3<bool>(global4.a, global4.a, global4.a))), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), !vec3<bool>(global4.a, false, false)), select(vec3<bool>(global4.a, global4.a, true), !vec3<bool>(false, false, global4.a), global4.a), !select(vec3<bool>(global4.a, global4.a, global4.a), vec3<bool>(false, global4.a, global4.a), global4.a))), select(select(!select(vec3<bool>(global4.a, global4.a, global4.a), vec3<bool>(global4.a, true, false), global4.a), vec3<bool>(true, select(global4.a, false, false), all(vec2<bool>(false, global4.a))), ~0i > -global4.b.c), vec3<bool>(global4.a, true, false), any(vec4<bool>(true, true, global4.a, 37592i > global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 9u)], 28u)]))), select(!(!all(vec2<bool>(global4.a, true))), !(global3[_wgslsmith_index_u32(~global4.b.d, 28u)] >= -23416i), global4.a));
    var var_1 = global4.b;
    var var_2 = Struct_3(!var_0.x || global4.a, global4.b, _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(0u, 9u)], max(~u_input.c.x, _wgslsmith_div_u32(1u, global2.x)), _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(4294967295u, 78560u, var_1.b.x))), u_input.c));
    let var_3 = -min(~10347i, u_input.b.x);
    global4 = Struct_3(any(vec2<bool>(true, !global4.a)), Struct_2(var_1.e, ~var_2.b.b, 0i << (_wgslsmith_div_u32(u_input.d << (44287u % 32u), ~global0[_wgslsmith_index_u32(0u, 9u)]) % 32u), _wgslsmith_mod_u32(min(0u, ~global4.c), 0u), global4.b.a), 4294967295u);
    global3 = array<i32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.a.d, var_2.b.a.b);
}

