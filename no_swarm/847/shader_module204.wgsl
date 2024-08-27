struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<i32>,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(false, false), -223f, vec3<i32>(-9018i, i32(-2147483648), 9234i), vec4<bool>(true, true, true, false), false);

var<private> global2: array<u32, 17>;

var<private> global3: array<u32, 2> = array<u32, 2>(4294967295u, 4294967295u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_1(select(vec2<bool>(true, !(!global1.a.x)), select(vec2<bool>(true, true), vec2<bool>(true, true), global1.a), (_wgslsmith_f_op_f32(select(-278f, -227f, global1.a.x)) != _wgslsmith_f_op_f32(min(global1.b, global1.b))) && !global1.a.x), _wgslsmith_f_op_f32(-global1.b), _wgslsmith_mod_vec3_i32(-u_input.b, global1.c), global1.d, true);
    var var_1 = var_0;
    var_1 = Struct_1(select(select(vec2<bool>(true, true), select(select(vec2<bool>(var_0.d.x, true), vec2<bool>(var_0.d.x, true), true), global1.a, vec2<bool>(false, true)), var_1.d.zx), vec2<bool>(any(vec4<bool>(global1.e, true, var_0.a.x, var_0.d.x)), var_1.d.x), !(!vec2<bool>(var_0.d.x, global1.d.x))), var_0.b, -select(select(~global1.c, firstLeadingBit(vec3<i32>(global1.c.x, 1i, 29681i)), false), vec3<i32>(firstLeadingBit(var_1.c.x), i32(-1i) * -14844i, i32(-1i) * -2292i), vec3<bool>(var_0.e, true, true)), vec4<bool>(true && (true | var_1.a.x), true, true, !var_0.e), var_1.e != (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(171f - -1012f)) <= var_0.b));
    var var_2 = Struct_1(vec2<bool>(global1.e, var_0.d.x), -1000f, global1.c, select(global1.d, vec4<bool>(true, false, all(vec4<bool>(global1.a.x, var_0.a.x, var_1.d.x, false)), global1.d.x), _wgslsmith_f_op_f32(697f - global1.b) >= var_1.b), var_0.e);
    let var_3 = 371f;
    return var_0.d;
}

fn func_2() -> bool {
    global1 = Struct_1(global1.d.xx, 1105f, vec3<i32>(~((i32(-1i) * -11714i) >> (global3[_wgslsmith_index_u32(abs(12432u), 2u)] % 32u)), 0i, max(global1.c.x, firstTrailingBit(global1.c.x ^ u_input.b.x))), !select(global1.d, !vec4<bool>(global1.d.x, false, global1.a.x, global1.a.x), func_3()), true);
    global3 = array<u32, 2>();
    global3 = array<u32, 2>();
    global0 = ~4294967295u == _wgslsmith_add_u32(global2[_wgslsmith_index_u32(~96446u & (22710u << (global2[_wgslsmith_index_u32(54499u, 17u)] % 32u)), 17u)] >> (global3[_wgslsmith_index_u32(1u, 2u)] % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(0u, u_input.c, 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 2u)], 2u)])), vec4<u32>(global2[_wgslsmith_index_u32(9279u, 17u)], global3[_wgslsmith_index_u32(0u, 2u)], 30752u, 31405u)), firstTrailingBit(~u_input.a)));
    global2 = array<u32, 17>();
    return !global1.a.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: bool) -> Struct_1 {
    global2 = array<u32, 17>();
    var var_0 = global1.a.x;
    var var_1 = arg_0.x;
    global1 = Struct_1(select(global1.a, global1.a, global1.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(677f, global1.b)), _wgslsmith_f_op_f32(f32(-1f) * -1084f)) * -137f), _wgslsmith_f_op_f32(-249f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.b + global1.b))))), abs(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(-global1.c, firstTrailingBit(u_input.b)), vec3<i32>(_wgslsmith_clamp_i32(arg_1, 13567i, u_input.b.x), arg_1, countOneBits(-40280i)))), vec4<bool>(arg_2, true, func_2(), global1.a.x & func_3().x), true);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global1.b))))) * global1.b) > global1.b;
    return Struct_1(select(global1.d.xx, func_3().xz, vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -330f)), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b, countOneBits(global1.c)) ^ ~vec3<i32>(18081i, -349i, 14521i), u_input.b), global1.d, func_3().x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<u32>(countOneBits(~1u), ~u_input.a.x, 90937u), -3459i, global1.a.x);
    var var_1 = -14897i;
    global1 = Struct_1(!var_0.d.zz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f - 2511f))))), u_input.b, !vec4<bool>(global1.a.x, global1.d.x, global1.a.x, true && var_0.d.x), false);
    global1 = func_1(abs(vec3<u32>(abs(~global3[_wgslsmith_index_u32(4294967295u, 2u)]), global2[_wgslsmith_index_u32(max(min(u_input.d, 16776u), global3[_wgslsmith_index_u32(0u, 2u)]), 17u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.yyx, select(u_input.a.xwz, u_input.a.zwz, var_0.d.zzx)), 17u)])), _wgslsmith_mod_i32(~_wgslsmith_add_i32(firstLeadingBit(global1.c.x), u_input.b.x), abs(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(global1.c.x, u_input.b.x)), vec2<i32>(u_input.b.x, 23041i)))), any(!select(global1.a, !global1.a, global1.d.xy)));
    global2 = array<u32, 17>();
    global2 = array<u32, 17>();
    global0 = true;
    var var_2 = countOneBits(2147483647i) | (_wgslsmith_dot_vec2_i32(~(-u_input.b.zy), abs(countOneBits(vec2<i32>(u_input.b.x, u_input.b.x)))) | min(42158i << (~u_input.c % 32u), 1i));
    let var_3 = 50515u;
    let x = u_input.a;
    s_output = StorageBuffer(-abs(-reverseBits(vec4<i32>(var_0.c.x, -48013i, -1i, u_input.b.x))), u_input.b, vec4<i32>(_wgslsmith_div_i32(select(i32(-1i) * -1i, var_0.c.x, var_0.a.x), -2147483647i), -1i, min(max(abs(u_input.b.x), _wgslsmith_sub_i32(0i, 0i)), -25446i), 1i ^ -(~var_0.c.x)), ~min(~(~vec4<u32>(global2[_wgslsmith_index_u32(u_input.c, 17u)], u_input.d, 1u, global3[_wgslsmith_index_u32(4294967295u, 2u)])), _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(49246u, 18523u, 28066u, 0u) >> (u_input.a % vec4<u32>(32u)))), 409f);
}

