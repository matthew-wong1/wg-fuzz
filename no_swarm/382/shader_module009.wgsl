struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: array<u32, 29>;

var<private> global2: array<f32, 12>;

var<private> global3: Struct_1 = Struct_1(vec2<bool>(false, false), true, vec4<i32>(-25538i, 2147483647i, -4622i, 2147483647i));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: i32, arg_3: u32) -> bool {
    var var_0 = abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, 42912u, 0u) ^ vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(arg_3, 29u)], 12774u), vec3<u32>(arg_3, arg_1, u_input.a) | vec3<u32>(u_input.a, 0u, 15406u))) ^ ~_wgslsmith_dot_vec2_u32(~vec2<u32>(29949u, 1u), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, arg_0.a), vec3<u32>(arg_3, 4294967295u, 5562u)), 1u));
    global3 = arg_0.b;
    global1 = array<u32, 29>();
    global1 = array<u32, 29>();
    global2 = array<f32, 12>();
    return false;
}

fn func_2(arg_0: vec4<f32>) -> vec2<bool> {
    return vec2<bool>(!all(select(global3.a, vec2<bool>(global3.b, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 29u)], 29u)], 29u)], 4u)]))), select(func_3(Struct_2(~0u, Struct_1(vec2<bool>(true, false), global0[_wgslsmith_index_u32(1u, 4u)], global3.c), arg_0.xy), global1[_wgslsmith_index_u32(36684u, 29u)], _wgslsmith_mod_i32(min(global3.c.x, 13212i), ~2147483647i), ~min(u_input.a, u_input.a)), _wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(global3.c.x, 2147483647i)) > global3.c.x, any(!(!vec4<bool>(global0[_wgslsmith_index_u32(46258u, 4u)], true, global3.a.x, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9724u, 29u)], 4u)])))));
}

fn func_1() -> Struct_1 {
    var var_0 = ~abs(u_input.a);
    global1 = array<u32, 29>();
    global3 = Struct_1(select(func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 12u)], global2[_wgslsmith_index_u32(1u, 12u)], -1395f, global2[_wgslsmith_index_u32(5751u, 12u)]) + vec4<f32>(global2[_wgslsmith_index_u32(37096u, 12u)], 1000f, 1037f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 29u)], 29u)], 29u)], 12u)]))))), vec2<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, global1[_wgslsmith_index_u32(43580u, 29u)]), 4u)]), vec2<bool>(true, true)), false, firstTrailingBit(_wgslsmith_sub_vec4_i32(firstTrailingBit(global3.c), select(~global3.c, _wgslsmith_clamp_vec4_i32(vec4<i32>(global3.c.x, -1i, global3.c.x, global3.c.x), global3.c, vec4<i32>(-1i, global3.c.x, 0i, -185i)), true))));
    let var_1 = 1u;
    let var_2 = true;
    return Struct_1(global3.a, false, select(-(~vec4<i32>(2147483647i, 39028i, -54140i, -10566i)), max(global3.c, firstLeadingBit(firstTrailingBit(vec4<i32>(global3.c.x, -2147483647i, global3.c.x, 2147483647i)))), vec4<bool>(any(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 4u)], false, true)), (global3.c.x <= 39100i) == global3.a.x, all(global3.a), any(select(vec3<bool>(false, true, global3.a.x), vec3<bool>(global3.a.x, true, global3.a.x), vec3<bool>(var_2, var_2, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(!global3.a, true, vec4<i32>(-1i, global3.c.x, select(global3.c.x, _wgslsmith_div_i32(25922i << (u_input.a % 32u), -7850i), true), _wgslsmith_mult_i32(~global3.c.x, _wgslsmith_mod_i32(global3.c.x, i32(-1i) * -2952i))));
    let var_0 = func_1();
    let var_1 = _wgslsmith_add_vec4_u32(abs(~vec4<u32>(~0u, reverseBits(u_input.a), countOneBits(0u), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(14658u, 10975u), 29u)])), abs(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], u_input.a, 20557u, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u), vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 29u)], 0u, u_input.a, u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(28585u, global1[_wgslsmith_index_u32(4294967295u, 29u)], 42399u, 71066u), vec4<u32>(u_input.a, 4294967295u, global1[_wgslsmith_index_u32(0u, 29u)], 4294967295u), vec4<u32>(0u, u_input.a, 0u, 78029u))) << ((~vec4<u32>(19154u, 4294967295u, 96384u, global1[_wgslsmith_index_u32(35648u, 29u)]) >> (vec4<u32>(global1[_wgslsmith_index_u32(24498u, 29u)], global1[_wgslsmith_index_u32(31045u, 29u)], 22355u, 7853u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_2 = select(vec3<bool>(true, false || var_0.b, true), !select(vec3<bool>(global3.b, any(vec2<bool>(var_0.a.x, false)), global3.c.x > 2147483647i), !select(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 4u)], global3.a.x), vec3<bool>(var_0.a.x, true, global3.a.x), vec3<bool>(false, true, false)), global3.a.x), global0[_wgslsmith_index_u32(27946u, 4u)]);
    var var_3 = Struct_2(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_1.x, var_1.x, u_input.a, 1u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, global1[_wgslsmith_index_u32(var_1.x, 29u)], 52416u, 4294967295u), ~vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 29u)], 47367u, 24489u, var_1.x)), global1[_wgslsmith_index_u32(firstTrailingBit(countOneBits(u_input.a)), 29u)], global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(26254u, 29u)], 29u)], 4294967295u)), var_0, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1264f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 29u)], 12u)]) + vec2<f32>(global2[_wgslsmith_index_u32(1u, 12u)], 204f)) - vec2<f32>(global2[_wgslsmith_index_u32(14104u, 12u)], -515f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(select(global3.c, vec4<i32>(-1i, 24852i, global3.c.x, 10008i), false), var_3.b.c << (vec4<u32>(436u, 805u, var_1.x, 0u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.b.c.x, var_3.b.c.x, var_0.c.x, -1i), var_3.b.c, global3.c)), abs(-global3.c), -vec4<i32>(-80608i, var_3.b.c.x, 4895i, 41494i)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(10068u, global1[_wgslsmith_index_u32(6153u, 29u)], 25428u, global1[_wgslsmith_index_u32(~9114u, 29u)]), ~vec4<u32>(var_1.x, global1[_wgslsmith_index_u32(var_1.x, 29u)], u_input.a, u_input.a)) % vec4<u32>(32u)), u_input.a, countOneBits(var_3.b.c.wz), -_wgslsmith_add_vec3_i32(vec3<i32>(50452i, min(-1i, -2147483647i), -2147483647i), countOneBits(~var_3.b.c.yxy)), -_wgslsmith_clamp_i32(~2147483647i, _wgslsmith_mult_i32(global3.c.x >> (15585u % 32u), var_3.b.c.x), select(~var_3.b.c.x, abs(33992i), select(true, var_3.b.a.x, var_3.b.a.x))));
}

