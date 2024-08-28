struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
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

var<private> global0: array<vec2<u32>, 27>;

var<private> global1: array<u32, 15>;

var<private> global2: Struct_2;

var<private> global3: array<i32, 17>;

var<private> global4: array<u32, 18> = array<u32, 18>(4294967295u, 4294967295u, 1u, 1u, 1u, 11742u, 85062u, 1u, 45562u, 1u, 36577u, 8204u, 67069u, 25319u, 50487u, 5375u, 68275u, 1u);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: i32) -> vec4<bool> {
    global4 = array<u32, 18>();
    let var_0 = Struct_3(vec2<i32>(u_input.d.x, abs(24408i)), vec3<bool>(all(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), true), true)), select(any(vec2<bool>(true, true)), true, true), select(any(vec4<bool>(false, false, true, false)) | (-28362i <= global3[_wgslsmith_index_u32(global2.a.x, 17u)]), true, true)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(286f, -1041f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 360f) * vec2<f32>(-800f, -551f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-741f, 373f) * vec2<f32>(-663f, 133f))), vec2<bool>(true, true))))), vec3<u32>(4294967295u, ~1u, 26359u));
    let var_1 = Struct_1(reverseBits(~(~(vec3<i32>(1i, 2147483647i, arg_1) | vec3<i32>(u_input.c, -1i, 0i)))));
    global1 = array<u32, 15>();
    let var_2 = !(!(!vec4<bool>(true, true, var_0.b.x && true, var_1.a.x == arg_1)));
    return vec4<bool>(all(select(var_2, !vec4<bool>(false, var_0.b.x, false, var_2.x), !var_0.b.x)) & true, false, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - 685f)) >= _wgslsmith_f_op_f32(f32(-1f) * -2557f)) != true, true);
}

fn func_2() -> f32 {
    var var_0 = Struct_1(-vec3<i32>(-1i, _wgslsmith_sub_i32(2147483647i, u_input.c) & ~global3[_wgslsmith_index_u32(global2.b.x, 17u)], ~reverseBits(global3[_wgslsmith_index_u32(66872u, 17u)])));
    global3 = array<i32, 17>();
    var var_1 = func_3(~44163u, u_input.d.x);
    var_1 = func_3(4294967295u, 2147483647i);
    let var_2 = Struct_2(reverseBits(vec4<u32>(min(global4[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(0u, 15u)]), ~global2.d, abs(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.x, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], global2.b.x), global2.a)) | firstTrailingBit(vec4<u32>(4883u, 12589u, global4[_wgslsmith_index_u32(60607u, 18u)], global1[_wgslsmith_index_u32(15111u, 15u)]))), vec3<u32>(_wgslsmith_sub_u32(max(global4[_wgslsmith_index_u32(100065u, 18u)], _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(48248u, 15u)], global4[_wgslsmith_index_u32(global2.c.x, 18u)], 4294967295u)), min(~1u, global1[_wgslsmith_index_u32(global2.d, 15u)])), _wgslsmith_dot_vec2_u32(max(vec2<u32>(global2.c.x, global2.b.x), abs(global0[_wgslsmith_index_u32(38104u, 27u)])), _wgslsmith_clamp_vec2_u32(global0[_wgslsmith_index_u32(3819u, 27u)], vec2<u32>(global2.d, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(51687u, 15u)], 15u)], 18u)], 15u)]), global2.a.zy) & vec2<u32>(global2.c.x, 0u)), ~global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~global0[_wgslsmith_index_u32(36210u, 27u)], ~vec2<u32>(global4[_wgslsmith_index_u32(global2.d, 18u)], 0u)), 18u)]), ~abs(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u) | global0[_wgslsmith_index_u32(1u, 27u)], ~vec2<u32>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(47681u, 18u)], 18u)], 15u)], global2.b.x)), 27u)]), ~(~9461u));
    return 1000f;
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = 1f;
    global3 = array<i32, 17>();
    let var_1 = global2.b;
    var var_2 = vec3<bool>(!all(vec2<bool>(true, true)) || false, !(!(u_input.c < -30805i)) && true, !(_wgslsmith_f_op_f32(func_2()) >= _wgslsmith_f_op_f32(494f + 215f)) & true);
    let var_3 = Struct_3(vec2<i32>(global3[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.d, arg_0), vec2<u32>(19169u, global2.c.x)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(28541u, global2.c.x), vec2<u32>(11845u, global1[_wgslsmith_index_u32(arg_0, 15u)]))), 17u)], global3[_wgslsmith_index_u32(countOneBits(firstLeadingBit(global1[_wgslsmith_index_u32(13390u, 15u)])), 17u)]), !select(!select(vec3<bool>(false, true, var_2.x), vec3<bool>(false, false, var_2.x), vec3<bool>(true, true, var_2.x)), vec3<bool>(!var_2.x, true, func_3(14870u, u_input.c).x), vec3<bool>(true, true, true)), vec2<f32>(_wgslsmith_f_op_f32(min(1000f, -304f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-268f + _wgslsmith_f_op_f32(max(-521f, 971f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(105f + -614f)))), global2.a.yyy);
    return Struct_2(global2.a, vec3<u32>(105674u, ~1u >> (global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(var_1.x, global2.a.x, global1[_wgslsmith_index_u32(var_1.x, 15u)], global1[_wgslsmith_index_u32(2783u, 15u)]), vec4<u32>(global4[_wgslsmith_index_u32(1u, 18u)], global2.d, 0u, var_1.x)), ~global2.a), 15u)] % 32u), ~4177u), var_1.yz, ~countOneBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, global1[_wgslsmith_index_u32(7098u, 15u)]), vec2<u32>(0u, 46659u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2.a.x, global4[_wgslsmith_index_u32(1u, 18u)]), 18u)], 18u)], 18u)]);
    global0 = array<vec2<u32>, 27>();
    var var_1 = Struct_2(vec4<u32>(~var_0.c.x, abs(20318u), ~global2.d, global4[_wgslsmith_index_u32(~13724u, 18u)] << (var_0.d % 32u)) >> (global2.a % vec4<u32>(32u)), min(reverseBits(global2.a.zyw), _wgslsmith_mod_vec3_u32(func_1(~1u).b, vec3<u32>(global4[_wgslsmith_index_u32(0u, 18u)], 7811u, global2.a.x))), _wgslsmith_mod_vec2_u32(min(~(~var_0.b.zy), global0[_wgslsmith_index_u32(min(global4[_wgslsmith_index_u32(49304u, 18u)], 10778u) >> (global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.c.x, 0u), 18u)] % 32u), 27u)]), vec2<u32>(4294967295u, ~abs(var_0.b.x))), global1[_wgslsmith_index_u32(global2.a.x, 15u)]);
    var var_2 = Struct_2(vec4<u32>(4294967295u, var_0.b.x, ~_wgslsmith_dot_vec4_u32(global2.a, vec4<u32>(var_0.a.x, global4[_wgslsmith_index_u32(55522u, 18u)], 0u, 4294967295u)), var_1.b.x) & vec4<u32>(~(~0u), global2.b.x, min(_wgslsmith_mod_u32(0u, var_1.d), _wgslsmith_div_u32(97102u, global1[_wgslsmith_index_u32(4294967295u, 15u)])), ~(global4[_wgslsmith_index_u32(1u, 18u)] | global2.d)), vec3<u32>(firstTrailingBit(abs(min(1u, global4[_wgslsmith_index_u32(0u, 18u)]))), 4294967295u, global1[_wgslsmith_index_u32(~(~(~global4[_wgslsmith_index_u32(0u, 18u)])), 15u)]), vec2<u32>(25972u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global4[_wgslsmith_index_u32(var_0.d, 18u)], var_1.a.x, 47853u, var_1.d), global2.a), 15u)]) ^ vec2<u32>(_wgslsmith_add_u32(~var_1.d, ~global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 18u)], 15u)]), 25824u), global2.c.x);
    var var_3 = u_input.c;
    var_1 = func_1(global4[_wgslsmith_index_u32(~4294967295u, 18u)]);
    var var_4 = Struct_3(_wgslsmith_div_vec2_i32(u_input.d.xx, vec2<i32>(u_input.d.x, i32(-1i) * -34431i) & _wgslsmith_mod_vec2_i32(select(u_input.d.xy, vec2<i32>(global3[_wgslsmith_index_u32(4294967295u, 17u)], -3084i), true), select(vec2<i32>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(5306u, 18u)], 18u)], 17u)], u_input.c), u_input.d.yy, vec2<bool>(false, false)))), select(func_3(var_2.c.x, 1i).zzx, vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, false, true), func_3(var_0.b.x, -1i).zyz, true), true)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-148f, -468f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) + -2189f), _wgslsmith_f_op_f32(-920f + -591f)))), max(var_0.a.wyy, _wgslsmith_clamp_vec3_u32(var_0.b, _wgslsmith_mult_vec3_u32(var_1.a.wwz, ~global2.b), var_0.a.wyz)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d);
}

