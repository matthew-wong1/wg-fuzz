struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 9>;

var<private> global2: vec3<u32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_3) -> u32 {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(-168f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(305f * -1158f))), _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1085f, 321f)), _wgslsmith_f_op_f32(1305f * -147f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-727f, -785f, -871f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-972f, -1002f, -122f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-788f, 281f, 332f), vec3<f32>(954f, -2052f, -965f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(379f, -2141f, 1517f)))))));
    global0 = Struct_1(global0.a);
    var var_1 = Struct_1(_wgslsmith_mult_vec3_u32(~(~_wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(4294967295u, 5847u, 6908u))), select(~firstTrailingBit(global0.a), reverseBits(vec3<u32>(9611u, 14430u, 56626u)), true)));
    return 4294967295u & u_input.d.x;
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec3<u32>) -> Struct_2 {
    global0 = Struct_1(abs(~(~vec3<u32>(u_input.d.x, 1u, 4294967295u) | reverseBits(vec3<u32>(1u, arg_1, 14147u)))));
    var var_0 = firstTrailingBit(firstTrailingBit(u_input.b.x));
    let var_1 = ~(-1i);
    global2 = reverseBits(_wgslsmith_mult_vec3_u32(min(_wgslsmith_clamp_vec3_u32(global0.a, vec3<u32>(arg_2.x, 1u, 12123u), global0.a), ~u_input.c) | ~arg_2, global0.a));
    let var_2 = vec2<u32>(u_input.c.x, 4294967295u);
    return Struct_2(Struct_1(vec3<u32>(var_2.x >> (60904u % 32u), _wgslsmith_mod_u32(global0.a.x, global2.x) | arg_1, 16289u)), u_input.b.x, 414f);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec3<u32>, arg_3: u32) -> Struct_3 {
    let var_0 = func_3(false, global1[_wgslsmith_index_u32(~arg_3, 9u)], vec3<u32>(func_2(Struct_3(1i)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 1u, arg_1.x, arg_1.x), firstTrailingBit(arg_1)), _wgslsmith_sub_u32(arg_3, _wgslsmith_clamp_u32(u_input.d.x, _wgslsmith_div_u32(u_input.d.x, arg_1.x), 44943u))));
    var var_1 = -1i;
    let var_2 = _wgslsmith_sub_u32(~4294967295u, arg_2.x);
    global1 = array<u32, 9>();
    var var_3 = var_0.b;
    return Struct_3(-24835i);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = func_3(arg_1, countOneBits(min(~firstTrailingBit(global0.a.x), global0.a.x)), firstLeadingBit(max(vec3<u32>(69031u >> (global2.x % 32u), 4294967295u, ~43001u), countOneBits(~u_input.d.xyx))));
    var var_1 = ~(16719u ^ _wgslsmith_div_u32(~abs(var_0.a.a.x), func_3(false, _wgslsmith_dot_vec2_u32(vec2<u32>(19523u, 0u), u_input.c.xx), vec3<u32>(2941u, 76995u, global1[_wgslsmith_index_u32(34178u, 9u)])).a.a.x));
    global2 = global0.a;
    var var_2 = vec2<f32>(1395f, -913f);
    var var_3 = func_3(all(!(!vec2<bool>(arg_1, arg_1))) | (_wgslsmith_f_op_f32(-130f * var_2.x) > _wgslsmith_f_op_f32(max(1684f, 118f))), ~global0.a.x, vec3<u32>(1u, u_input.d.x, global1[_wgslsmith_index_u32((min(global1[_wgslsmith_index_u32(4294967295u, 9u)], var_0.a.a.x) << (_wgslsmith_add_u32(u_input.a.x, 1u) % 32u)) >> (func_2(arg_0) % 32u), 9u)]));
    return Struct_2(Struct_1(reverseBits(~vec3<u32>(var_3.a.a.x, 141950u, 13367u))), _wgslsmith_dot_vec2_i32(u_input.b.yx, _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.a, 32601i), u_input.b.zy, vec2<i32>(12274i, -1i))) << (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(5010u, global1[_wgslsmith_index_u32(var_3.a.a.x, 9u)], 0u, 83829u), ~u_input.a), ~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(38013u, 9u)], var_3.a.a.x)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(reverseBits(~_wgslsmith_mult_vec3_u32(global0.a, vec3<u32>(u_input.c.x, global0.a.x, 11769u))));
    var var_0 = func_4(func_1(-(~firstLeadingBit(vec2<i32>(u_input.b.x, u_input.b.x))), vec4<u32>(65343u, abs(~95217u), _wgslsmith_mod_u32(reverseBits(17787u), global1[_wgslsmith_index_u32(reverseBits(u_input.d.x), 9u)]), global0.a.x), _wgslsmith_sub_vec3_u32(global0.a >> ((u_input.d.wwz ^ vec3<u32>(49701u, global2.x, u_input.c.x)) % vec3<u32>(32u)), ~vec3<u32>(61376u, 4294967295u, 0u)), 1u), u_input.b.x > u_input.b.x, u_input.b.xz);
    global1 = array<u32, 9>();
    let var_1 = vec3<i32>(-(i32(-1i) * -func_3(false, 87772u, var_0.a.a).b), var_0.b, 40488i);
    let var_2 = _wgslsmith_div_u32(34456u, ~(~abs(firstLeadingBit(3301u))));
    let var_3 = vec2<f32>(-830f, var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(var_0.c)), _wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(-_wgslsmith_mult_i32(var_1.x, 22951i), var_1.x, _wgslsmith_add_i32(2147483647i, -2147483647i))), _wgslsmith_mod_u32(4294967295u, ~(~4394u)), select(_wgslsmith_mod_vec2_u32(vec2<u32>(56207u, 41540u) >> (u_input.c.yz % vec2<u32>(32u)), firstLeadingBit(u_input.d.xz) | ~vec2<u32>(global0.a.x, var_2)), ~(~_wgslsmith_div_vec2_u32(var_0.a.a.xy, global2.xz)), all(vec2<bool>(true, true))), var_3.x);
}

