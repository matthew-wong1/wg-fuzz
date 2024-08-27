struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<bool>,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10> = array<u32, 10>(46433u, 4294967295u, 1u, 27393u, 182u, 4294967295u, 0u, 11316u, 0u, 3412u);

var<private> global1: array<Struct_1, 6>;

var<private> global2: Struct_1;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> Struct_1 {
    global2 = Struct_1(_wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], global2.a) << (_wgslsmith_dot_vec3_u32(vec3<u32>(37285u, u_input.b.x, 8487u), vec3<u32>(global2.a, 30450u, 1u)) % 32u), ~1u), ~global2.a), select(vec3<bool>(true, !global2.c.x, false), !select(vec3<bool>(true, true, true), select(global2.b, vec3<bool>(false, false, false), vec3<bool>(global2.c.x, global2.b.x, global2.b.x)), global2.b.x), !global2.c.x), select(vec4<bool>(!select(global2.b.x, global2.c.x, true), global2.c.x, true, global2.c.x), !select(!vec4<bool>(global2.b.x, false, global2.c.x, global2.c.x), global2.c, vec4<bool>(global2.c.x, false, true, false)), !vec4<bool>(global2.b.x | global2.b.x, true, false, any(global2.c.yzy))), _wgslsmith_add_u32(abs(abs(firstTrailingBit(4294967295u))), global2.d), vec2<i32>(-2147483647i << (global2.d % 32u), 33647i));
    global2 = global1[_wgslsmith_index_u32(4294967295u, 6u)];
    var var_0 = ~(~(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b, u_input.b), _wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(0u, 4294967295u, 14057u), vec3<u32>(1u, global2.a, global2.a))) << (_wgslsmith_clamp_vec3_u32(u_input.b, select(u_input.b, u_input.b, global2.c.x), u_input.b >> (u_input.b % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_1 = global2.c;
    global0 = array<u32, 10>();
    return Struct_1(_wgslsmith_div_u32(var_0.x, global0[_wgslsmith_index_u32(var_0.x, 10u)]), !select(!(!vec3<bool>(var_1.x, true, var_1.x)), vec3<bool>(var_1.x, !var_1.x, false), global2.b.x), global2.c, ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(9413u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 19415u, u_input.b.x), vec3<u32>(var_0.x, u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 10u)]))), 73863u, ~var_0.x ^ ~0u), vec2<i32>(firstLeadingBit(u_input.a.x), _wgslsmith_dot_vec4_i32((vec4<i32>(0i, -49356i, -2147483647i, 40247i) | vec4<i32>(u_input.a.x, global2.e.x, -54004i, global2.e.x)) & -vec4<i32>(global2.e.x, u_input.a.x, u_input.a.x, global2.e.x), ~_wgslsmith_add_vec4_i32(vec4<i32>(0i, -9303i, 15868i, -6366i), vec4<i32>(-2147483647i, u_input.a.x, 44957i, u_input.a.x)))));
}

fn func_3() -> u32 {
    global1 = array<Struct_1, 6>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 10u)]), 6u)];
    var var_1 = global2.b.x;
    let var_2 = vec3<u32>(select(firstTrailingBit(~var_0.a), reverseBits(global2.a), false), _wgslsmith_mult_u32(countOneBits(~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], 6697u)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], global0[_wgslsmith_index_u32(0u, 10u)], var_0.d, 8885u), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], u_input.b.x, 31501u, 4294967295u)))), firstTrailingBit(abs(min(0u, ~8397u))));
    global2 = global1[_wgslsmith_index_u32(~u_input.b.x, 6u)];
    return var_2.x;
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = !global2.c.x;
    global2 = func_2();
    global0 = array<u32, 10>();
    let var_1 = 2147483647i;
    var var_2 = Struct_1(countOneBits(_wgslsmith_mult_u32(~1u, ~func_3())), !(!global2.b), func_2().c, firstLeadingBit(~u_input.b.x), global2.e);
    return _wgslsmith_f_op_f32(-arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.c.yww;
    global2 = Struct_1(~(~(~_wgslsmith_sub_u32(global2.a, global2.a))), global2.c.www, !(!global2.c), ~1u, reverseBits(~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.yy), 2147483647i)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1312f, -1000f, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1034f))), _wgslsmith_f_op_f32(ceil(1f)), var_0.x & var_0.x)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(451f + 306f) - 1f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(359f)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(717f + -837f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-357f)))))));
    var var_2 = func_2();
    let var_3 = 216f;
    var var_4 = func_2();
    let var_5 = func_2();
    global0 = array<u32, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(-_wgslsmith_clamp_i32(-2147483647i, var_5.e.x, abs(0i)), -var_5.e.x, 1i), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(min(_wgslsmith_add_vec3_i32(vec3<i32>(-22449i, -27466i, -52054i), u_input.a), ~u_input.a), max(u_input.a, vec3<i32>(var_4.e.x, 0i, 2147483647i))), vec3<i32>(-u_input.a.x, -func_2().e.x, abs(global2.e.x) & _wgslsmith_sub_i32(u_input.a.x, var_5.e.x))), var_3, ~(vec2<u32>(var_4.d | 0u, global0[_wgslsmith_index_u32(var_4.d & 27423u, 10u)]) << (~(vec2<u32>(5268u, global2.a) >> (vec2<u32>(0u, var_4.a) % vec2<u32>(32u))) % vec2<u32>(32u))));
}

