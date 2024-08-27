struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 3705i;

var<private> global1: array<bool, 29> = array<bool, 29>(true, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, true, true, true, false, true, true, true, false, true, false);

var<private> global2: array<vec4<i32>, 10>;

var<private> global3: vec4<u32> = vec4<u32>(0u, 12486u, 4294967295u, 15723u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    let var_0 = Struct_1(true, arg_0.x);
    let var_1 = ~(~(~vec4<u32>(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, u_input.d.x), vec4<u32>(u_input.d.x, 37845u, 11382u, u_input.d.x)), u_input.c, u_input.d.x)));
    var var_2 = firstLeadingBit(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-2147483647i, arg_0.x, u_input.b), arg_0, select(vec3<i32>(1i, u_input.a.x, 16228i), arg_0, vec3<bool>(var_0.a, false, false))), ~vec3<i32>(-1i, u_input.b, -2147483647i)), vec3<i32>(_wgslsmith_mult_i32(arg_0.x, -13591i), 26327i, countOneBits(arg_0.x))));
    let var_3 = global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(~(~global3.x), ~_wgslsmith_sub_u32(firstTrailingBit(73348u), _wgslsmith_clamp_u32(var_1.x, u_input.d.x, 1u)))), 10u)];
    global3 = _wgslsmith_mult_vec4_u32(var_1, var_1 | vec4<u32>(_wgslsmith_sub_u32(0u, 0u), ~u_input.c, 44996u, _wgslsmith_mod_u32(u_input.c, u_input.d.x))) >> (vec4<u32>(min(_wgslsmith_mult_u32(~var_1.x, var_1.x), var_1.x), global3.x & ~(~38777u), _wgslsmith_dot_vec4_u32(reverseBits(firstTrailingBit(vec4<u32>(18980u, var_1.x, 11181u, 1u))), var_1), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.c, global3.x)), countOneBits(vec2<u32>(global3.x, global3.x)) ^ (u_input.d.xz ^ global3.xz))) % vec4<u32>(32u));
    return 37528u;
}

fn func_2(arg_0: i32, arg_1: vec4<u32>) -> f32 {
    let var_0 = vec4<i32>(arg_0, -u_input.b, 2147483647i, _wgslsmith_add_i32(select(0i, i32(-1i) * -13683i, false), -30916i) | 29957i);
    global3 = reverseBits(arg_1) & arg_1;
    global2 = array<vec4<i32>, 10>();
    let var_1 = false;
    global3 = _wgslsmith_mod_vec4_u32(~vec4<u32>(func_3(vec3<i32>(1i, 1i, arg_0) >> (vec3<u32>(arg_1.x, 4294967295u, 34344u) % vec3<u32>(32u))), global3.x, arg_1.x, max(0u, ~4294967295u)), arg_1);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1000f, 1123f)), _wgslsmith_f_op_f32(ceil(-1400f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-231f)), _wgslsmith_f_op_f32(step(598f, 1000f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(818f * 795f) - 1f))));
}

fn func_1() -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(-283f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2417f), _wgslsmith_f_op_f32(-945f - -192f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(u_input.a.x ^ 39704i, vec4<u32>(u_input.c, 1u, u_input.d.x, 28021u))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(304f)), _wgslsmith_f_op_f32(216f + 404f)))));
    var var_1 = 0i;
    var var_2 = 889f;
    var var_3 = Struct_3(-select(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, 0i, -17826i), firstLeadingBit(reverseBits(vec3<i32>(54365i, u_input.a.x, 3052i))), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-var_0.x), 26524i, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, -351f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1043f, -1000f, var_0.x)))))));
    let var_4 = global3.yyy;
    return Struct_2(Struct_1(all(select(!vec4<bool>(false, global1[_wgslsmith_index_u32(global3.x, 29u)], global1[_wgslsmith_index_u32(global3.x, 29u)], global1[_wgslsmith_index_u32(1211u, 29u)]), select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 29u)], false, true), vec4<bool>(global1[_wgslsmith_index_u32(global3.x, 29u)], global1[_wgslsmith_index_u32(56320u, 29u)], true, false), vec4<bool>(global1[_wgslsmith_index_u32(29365u, 29u)], global1[_wgslsmith_index_u32(8590u, 29u)], global1[_wgslsmith_index_u32(global3.x, 29u)], false)), global1[_wgslsmith_index_u32(u_input.d.x, 29u)] || global1[_wgslsmith_index_u32(u_input.d.x, 29u)])), ~u_input.b), !(true && any(!vec3<bool>(global1[_wgslsmith_index_u32(var_4.x, 29u)], global1[_wgslsmith_index_u32(global3.x, 29u)], true))), Struct_1(!(u_input.d.x != u_input.d.x), u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -663f));
    let var_1 = func_1();
    let var_2 = vec2<i32>(_wgslsmith_add_i32(u_input.a.x, -1i), _wgslsmith_sub_i32(-2147483647i, -12252i));
    let var_3 = vec3<i32>(-1i) * -(~abs(-vec3<i32>(u_input.b, var_1.a.b, var_2.x)));
    var var_4 = ~(-1i);
    var var_5 = vec3<i32>(~_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.a.b, var_3.x, var_2.x), var_3), select(var_3, var_3, vec3<bool>(var_1.b, global1[_wgslsmith_index_u32(19629u, 29u)], var_1.c.a)), _wgslsmith_add_vec3_i32(var_3, var_3)), var_3), abs(var_1.a.b), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, vec3<i32>(firstLeadingBit(var_3.x), reverseBits(_wgslsmith_div_i32(var_3.x, 2147483647i)), abs(_wgslsmith_add_i32(7089i, 12909i))) << ((~vec3<u32>(u_input.c, 4294967295u, 78284u) ^ ~(u_input.d ^ vec3<u32>(26464u, 22146u, 32401u))) % vec3<u32>(32u)), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(~u_input.d.x, u_input.d.x)), ~reverseBits(u_input.d.xy)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, 614f, var_0))))))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, 6017u, 64040u, global3.x), vec4<u32>(u_input.c, 97322u, 66802u, global3.x)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, u_input.c, 4294967295u), vec4<u32>(46500u, 4294967295u, global3.x, 16197u)), vec4<u32>(33173u, 67096u, global3.x, 1u)), ~vec4<u32>(1u, u_input.c, global3.x, 1u)));
}

