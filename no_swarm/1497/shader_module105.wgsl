struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(293i, 59385i, 0i, -1856i), -245f);

var<private> global1: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(14608u, 1u, 1u), vec3<u32>(4294967295u, 1u, 4927u), vec3<u32>(1u, 0u, 12289u), vec3<u32>(34014u, 1u, 1u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(18954u, 37193u, 4294967295u), vec3<u32>(0u, 86743u, 0u), vec3<u32>(74453u, 24386u, 4294967295u), vec3<u32>(1u, 1u, 8644u), vec3<u32>(75460u, 4294967295u, 30381u), vec3<u32>(26041u, 42704u, 0u), vec3<u32>(1u, 1409u, 20387u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(0u, 21907u, 75905u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(36785u, 4294967295u, 13941u), vec3<u32>(12172u, 0u, 4294967295u), vec3<u32>(0u, 0u, 6388u), vec3<u32>(63777u, 11291u, 1u), vec3<u32>(4294967295u, 41828u, 1u), vec3<u32>(0u, 1u, 0u), vec3<u32>(0u, 18380u, 1u), vec3<u32>(59069u, 1u, 0u), vec3<u32>(44869u, 1u, 12330u), vec3<u32>(4294967295u, 64175u, 0u), vec3<u32>(0u, 4294967295u, 19491u), vec3<u32>(17767u, 7340u, 42391u), vec3<u32>(41255u, 4294967295u, 13999u));

var<private> global2: vec4<bool>;

var<private> global3: array<vec4<f32>, 29>;

var<private> global4: array<bool, 8> = array<bool, 8>(true, true, true, false, true, true, false, false);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<bool>) -> vec4<i32> {
    global1 = array<vec3<u32>, 28>();
    let var_0 = abs(min((~global0.a | ~vec4<i32>(-1i, u_input.d, -23840i, 9835i)) & min(global0.a, global0.a), global0.a));
    var var_1 = global0.a.xxy;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global0.b, 262f)))));
    global2 = !(!select(vec4<bool>(global0.a.x > 18200i, global2.x, true, true), select(select(vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(global2.x, true, arg_0.x, true), vec4<bool>(false, global4[_wgslsmith_index_u32(3323u, 8u)], arg_0.x, true)), !vec4<bool>(false, arg_0.x, global2.x, false), vec4<bool>(true, global2.x, true, false)), select(select(vec4<bool>(true, true, global2.x, global4[_wgslsmith_index_u32(u_input.c, 8u)]), vec4<bool>(false, true, arg_0.x, global4[_wgslsmith_index_u32(u_input.c, 8u)]), arg_0.x), select(vec4<bool>(arg_0.x, global4[_wgslsmith_index_u32(39930u, 8u)], false, true), vec4<bool>(true, arg_0.x, true, arg_0.x), global4[_wgslsmith_index_u32(4294967295u, 8u)]), select(vec4<bool>(arg_0.x, arg_0.x, global4[_wgslsmith_index_u32(0u, 8u)], false), vec4<bool>(global2.x, true, global2.x, false), false))));
    return max(firstLeadingBit(var_0), -global0.a);
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: vec2<f32>, arg_3: i32) -> i32 {
    var var_0 = Struct_1(~func_3(global2.zxy), _wgslsmith_f_op_f32(-1348f + -503f));
    global1 = array<vec3<u32>, 28>();
    var_0 = Struct_1(vec4<i32>(global0.a.x, 9772i, 55449i, ~(~u_input.d)), -943f);
    var_0 = Struct_1(vec4<i32>(-(~select(-1i, -19776i, global4[_wgslsmith_index_u32(u_input.c, 8u)])), _wgslsmith_dot_vec3_i32(var_0.a.zzy, max(global0.a.zwz | vec3<i32>(var_0.a.x, arg_3, 2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(global0.a.x, 1i, 16292i), vec3<i32>(u_input.a.x, var_0.a.x, -35531i)))), global0.a.x, abs(8094i)), _wgslsmith_f_op_f32(f32(-1f) * -2399f));
    global2 = vec4<bool>(!global2.x, arg_0.x != u_input.c, all(vec4<bool>(firstLeadingBit(arg_1) > _wgslsmith_mod_i32(-60789i, var_0.a.x), any(vec4<bool>(global2.x, global4[_wgslsmith_index_u32(arg_0.x, 8u)], false, true)), any(select(global2.www, global2.zxz, global4[_wgslsmith_index_u32(u_input.c, 8u)])), !global2.x)), countOneBits(4294967295u) == min(~1u, u_input.c));
    return -countOneBits(~((i32(-1i) * -2147483647i) << (~arg_0.x % 32u)));
}

fn func_1() -> Struct_1 {
    global3 = array<vec4<f32>, 29>();
    global1 = array<vec3<u32>, 28>();
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -539f));
    var var_2 = ~vec4<u32>(u_input.c, 0u, u_input.c, u_input.c);
    return Struct_1(vec4<i32>(u_input.a.x, u_input.b, _wgslsmith_clamp_i32(~global0.a.x, ~func_2(vec4<u32>(u_input.c, 36034u, var_2.x, u_input.c), -2147483647i, vec2<f32>(global0.b, 1000f), u_input.d), 2147483647i), -(~_wgslsmith_mult_i32(-26154i, u_input.d))), -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global4 = array<bool, 8>();
    let var_1 = Struct_1(vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global0.a.x), vec2<i32>(u_input.b, -1i)) ^ _wgslsmith_mult_i32(~u_input.e, global0.a.x << (1u % 32u)), countOneBits(2147483647i & _wgslsmith_div_i32(u_input.e, u_input.e)), i32(-1i) * -28085i, -40985i), 584f);
    let var_2 = func_1();
    global0 = func_1();
    let var_3 = func_1();
    let var_4 = select(var_2.a.wzw, _wgslsmith_add_vec3_i32(var_1.a.zwz, _wgslsmith_div_vec3_i32(~(~var_1.a.yzx), _wgslsmith_div_vec3_i32(select(var_1.a.yzy, global0.a.zzz, global2.x), ~global0.a.wyz))), vec3<bool>((all(vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.c, 8u)], true, global2.x)) || true) || (_wgslsmith_f_op_f32(-var_1.b) != -795f), true, global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(654f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)))))));
}

