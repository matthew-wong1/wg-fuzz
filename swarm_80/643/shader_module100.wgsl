struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec4<u32>,
    d: i32,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 23>;

var<private> global2: Struct_3 = Struct_3(Struct_1(i32(-2147483648)), Struct_2(Struct_1(16668i), Struct_1(-10356i), Struct_1(i32(-2147483648))));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    global0 = select(_wgslsmith_clamp_i32(u_input.b.x, firstLeadingBit(reverseBits(i32(-1i) * -1i)), u_input.b.x), 21290i, arg_0.x);
    global1 = array<Struct_1, 23>();
    let var_0 = _wgslsmith_dot_vec2_i32(~max(countOneBits(vec2<i32>(u_input.a.x, 45021i)), reverseBits(-vec2<i32>(global2.b.c.a, global2.b.b.a))), ~_wgslsmith_clamp_vec2_i32(~(-u_input.a.zx), u_input.a.yx, firstTrailingBit(firstTrailingBit(u_input.a.xy))));
    global2 = Struct_3(Struct_1(abs(16035i)), global2.b);
    let var_1 = Struct_5(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(select(~vec3<u32>(0u, 4294967295u, 12796u), vec3<u32>(1u, 1u, 1u), arg_0), ~select(vec3<u32>(4294967295u, 69600u, 4294967295u), vec3<u32>(4294967295u, 2678u, 12759u), arg_0.x))), 23u)], _wgslsmith_div_u32(~(~31112u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(85925u, 0u), vec2<u32>(9413u, 7764u)) % 32u)), 30222u), Struct_1(_wgslsmith_add_i32(u_input.b.x, -select(1i, u_input.b.x, arg_0.x))), abs(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(56964u, 0u, 1u), vec3<u32>(27439u, 0u, 1u), vec3<u32>(19212u, 0u, 39072u)), vec3<u32>(1u, 1u, 1u), countOneBits(vec3<u32>(18387u, 0u, 0u))) ^ vec3<u32>(abs(14161u), ~1u, ~1u)));
    return _wgslsmith_dot_vec2_i32((u_input.a.zz >> (~var_1.d.yy % vec2<u32>(32u))) | vec2<i32>(0i, -65581i), vec2<i32>(-45771i, ~(-8929i))) & 59797i;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = global2.b;
    var var_1 = arg_2.zwy;
    global1 = array<Struct_1, 23>();
    var var_2 = vec4<bool>(false, true, true, any(vec2<bool>(true, true)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1000f, -1105f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(797f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1061f, 207f)))));
    return Struct_2(Struct_1(1i), Struct_1(func_3(vec3<bool>(all(var_2.xw), false, 186f != var_3.x))), global2.b.a);
}

fn func_1(arg_0: vec3<u32>) -> vec2<u32> {
    var var_0 = func_2(global2.b.b.a, global2.b.b, min(firstLeadingBit(vec4<i32>(u_input.b.x, u_input.a.x, global2.b.a.a, u_input.a.x)), vec4<i32>(2147483647i, u_input.a.x, -2147483647i, global2.a.a) | vec4<i32>(-22900i, -59520i, -12568i, global2.b.a.a)) | vec4<i32>(firstTrailingBit(u_input.a.x), _wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.a.zy), vec2<i32>(2147483647i, 34810i)), ~(2147483647i << (arg_0.x % 32u)), -5551i));
    global0 = abs(i32(-1i) * -3289i);
    let var_1 = ~arg_0.x;
    var var_2 = Struct_5(func_2(u_input.a.x, func_2(abs(reverseBits(7949i)), global1[_wgslsmith_index_u32(4294967295u, 23u)], vec4<i32>(var_0.c.a, u_input.a.x, -1i, u_input.a.x) >> (vec4<u32>(4294967295u, arg_0.x, arg_0.x, 47916u) % vec4<u32>(32u))).c, vec4<i32>(-_wgslsmith_mod_i32(global2.b.b.a, global2.a.a), _wgslsmith_clamp_i32(reverseBits(-2147483647i), 1i, 0i), -1i, -select(global2.b.a.a, 7693i, false))).c, 59138u, Struct_1(u_input.a.x), _wgslsmith_add_vec3_u32(arg_0, ~vec3<u32>(arg_0.x, arg_0.x, 4294967295u)));
    var var_3 = Struct_4(_wgslsmith_mod_i32(-min(-12595i, global2.b.c.a), firstLeadingBit(~min(1i, var_2.a.a))), true, vec4<u32>(~arg_0.x, arg_0.x, ~14067u, min(~_wgslsmith_mod_u32(var_2.d.x, 5952u), arg_0.x)), 0i | (global2.b.c.a ^ var_0.a.a), Struct_1(u_input.a.x));
    return var_2.d.xy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(1u, 4294967295u)), ~func_1(vec3<u32>(14638u, 18574u, 1u))), firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1116u, 1u, 4294967295u), vec3<u32>(35505u, 50221u, 24219u)), ~17276u))));
    global1 = array<Struct_1, 23>();
    let var_1 = ~abs(abs(~_wgslsmith_sub_u32(var_0.x, var_0.x)));
    let var_2 = Struct_4(_wgslsmith_clamp_i32(0i | global2.a.a, ~(-1i & _wgslsmith_add_i32(global2.b.b.a, u_input.b.x)), u_input.a.x), any(vec3<bool>(any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), true)), true, any(select(vec2<bool>(false, false), vec2<bool>(false, false), true)))), vec4<u32>(var_0.x, 31476u, _wgslsmith_dot_vec3_u32(vec3<u32>(func_1(vec3<u32>(46707u, 4294967295u, var_1)).x, ~0u, 4294967295u), ~(vec3<u32>(var_1, 12763u, var_0.x) ^ vec3<u32>(var_0.x, 0u, var_0.x))), var_1), -_wgslsmith_mod_i32(~(-37105i) >> (var_0.x % 32u), (u_input.a.x & u_input.b.x) << (_wgslsmith_div_u32(10643u, 1331u) % 32u)), Struct_1(1i ^ _wgslsmith_mod_i32(u_input.a.x, func_2(u_input.b.x, Struct_1(u_input.a.x), vec4<i32>(38845i, -1i, u_input.b.x, 1i)).b.a)));
    global1 = array<Struct_1, 23>();
    var var_3 = select(firstLeadingBit(func_1(countOneBits(var_2.c.xzy))), var_0, vec2<bool>(var_2.b, var_2.b));
    var var_4 = 1f;
    let var_5 = global2.b;
    var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-535f + _wgslsmith_f_op_f32(887f - -863f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(349f + -694f))) + _wgslsmith_f_op_f32(f32(-1f) * -494f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(var_0.x, 83568u, 1u, 108383u), var_2.c | vec4<u32>(var_0.x, var_3.x, var_1, 24783u)), select(~var_2.c, vec4<u32>(12958u, 14422u, 1u, 1u), !vec4<bool>(var_2.b, false, false, var_2.b))), var_2.c << (firstLeadingBit(firstTrailingBit(vec4<u32>(0u, var_3.x, 1u, 4294967295u))) % vec4<u32>(32u)), abs(~select(vec4<u32>(var_2.c.x, 0u, var_1, 15241u), var_2.c, vec4<bool>(var_2.b, true, var_2.b, var_2.b)))), vec2<f32>(1263f, -251f));
}

