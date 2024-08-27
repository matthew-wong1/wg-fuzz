struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-621f, -19121i);

var<private> global1: array<vec3<bool>, 21> = array<vec3<bool>, 21>(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true));

var<private> global2: array<vec4<u32>, 20>;

var<private> global3: array<bool, 27>;

var<private> global4: Struct_1 = Struct_1(669f, 2147483647i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_div_f32(1979f, global0.a);
    global0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -403f)), var_0)))), global4.b);
    var var_1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(21106i, u_input.d.x), u_input.a.zx), abs(u_input.a.xw)) >> (vec2<u32>(1u, ~84425u) % vec2<u32>(32u)), vec2<i32>(-2147483647i, -1i)), u_input.a.zw, vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-1i, -10053i, -58731i, u_input.d.x)) << (_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(~13600u, 20u)], global2[_wgslsmith_index_u32(57055u, 20u)] >> (global2[_wgslsmith_index_u32(4294967295u, 20u)] % vec4<u32>(32u))) % 32u), u_input.a.x));
    let var_2 = vec2<bool>(false & global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(min(1u, _wgslsmith_sub_u32(45468u, 24860u)), _wgslsmith_mod_u32(~4294967295u, 1u)), 27u)], false);
    global1 = array<vec3<bool>, 21>();
    return _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(~(~4294967295u), min(firstLeadingBit(13479u), _wgslsmith_dot_vec2_u32(vec2<u32>(9295u, 4294967295u), vec2<u32>(0u, 1u)))), ~(~vec2<u32>(69957u, 4294967295u))));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-544f, _wgslsmith_f_op_f32(floor(global0.a))))), _wgslsmith_add_i32(_wgslsmith_mult_i32(-49333i, 26246i), countOneBits(_wgslsmith_mod_i32(2147483647i, -u_input.b.x))));
    global2 = array<vec4<u32>, 20>();
    let var_1 = select(!(!(!vec4<bool>(global3[_wgslsmith_index_u32(13161u, 27u)], global3[_wgslsmith_index_u32(42021u, 27u)], true, global3[_wgslsmith_index_u32(46551u, 27u)]))), vec4<bool>(any(vec2<bool>(!global3[_wgslsmith_index_u32(112528u, 27u)], true)), false, global3[_wgslsmith_index_u32(~func_3(), 27u)] & all(vec3<bool>(false, true, true)), true), select(vec4<bool>(min(39205u, 30381u) < _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 26989u), vec2<u32>(4294967295u, 0u)), false, false, true), select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 27u)], true, global3[_wgslsmith_index_u32(4294967295u, 27u)], global3[_wgslsmith_index_u32(96993u, 27u)]), global3[_wgslsmith_index_u32(9935u, 27u)]), select(vec4<bool>(global3[_wgslsmith_index_u32(61481u, 27u)], global3[_wgslsmith_index_u32(4294967295u, 27u)], true, false), vec4<bool>(global3[_wgslsmith_index_u32(4210u, 27u)], true, global3[_wgslsmith_index_u32(39204u, 27u)], false), vec4<bool>(global3[_wgslsmith_index_u32(60799u, 27u)], global3[_wgslsmith_index_u32(4294967295u, 27u)], false, false)), global3[_wgslsmith_index_u32(10372u, 27u)]), select(vec4<bool>(global3[_wgslsmith_index_u32(33863u, 27u)], global3[_wgslsmith_index_u32(4294967295u, 27u)], global3[_wgslsmith_index_u32(24349u, 27u)], global3[_wgslsmith_index_u32(4294967295u, 27u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 27u)], true, global3[_wgslsmith_index_u32(1u, 27u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 27u)], global3[_wgslsmith_index_u32(5402u, 27u)], true)), global3[_wgslsmith_index_u32(42713u, 27u)]), 1u < reverseBits(_wgslsmith_clamp_u32(34362u, 1u, 914u))));
    var var_2 = global0.b;
    var var_3 = vec4<f32>(297f, _wgslsmith_f_op_f32(-global4.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global4.a))))), global4.a), _wgslsmith_f_op_f32(step(926f, _wgslsmith_f_op_f32(floor(global0.a)))));
    return _wgslsmith_mult_i32(-11619i ^ _wgslsmith_dot_vec2_i32(select(u_input.a.wy, vec2<i32>(global4.b, u_input.b.x), var_1.x), u_input.b.wy), 40216i) << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, 1u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), min(vec2<u32>(0u, 12377u), vec2<u32>(1u, 56872u)), vec2<u32>(0u, 84276u))), ~_wgslsmith_mod_u32(108290u, 124492u), countOneBits(4294967295u)) % 32u);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = array<vec3<bool>, 21>();
    let var_0 = firstLeadingBit((func_2() | arg_1.b) ^ firstTrailingBit(max(global0.b, 0i))) << ((~_wgslsmith_div_u32(~0u, firstTrailingBit(49676u)) | 0u) % 32u);
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: vec4<i32>) -> bool {
    var var_0 = ~(_wgslsmith_mult_vec2_u32(arg_1.yx, ~arg_1.xy) & select(~vec2<u32>(0u, arg_1.x) & ~arg_1.zx, ~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), arg_1.zw), select(global3[_wgslsmith_index_u32(~50388u, 27u)], true, !global3[_wgslsmith_index_u32(18204u, 27u)])));
    var var_1 = -abs(~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, -10524i, 2147483647i), u_input.b.www), 1i));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(767f))) - global0.a), global0.a, global4.a));
    global4 = func_1(func_1(func_1(Struct_1(_wgslsmith_f_op_f32(sign(-354f)), 0i ^ global4.b), arg_0), arg_0), arg_0);
    global0 = Struct_1(-1497f, global4.b);
    return true;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_3.a), global4.a)) * vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -845f))), arg_3.a)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-668f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a) * global4.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-862f, 221f)))))));
    global2 = array<vec4<u32>, 20>();
    global3 = array<bool, 27>();
    global0 = arg_3;
    global1 = array<vec3<bool>, 21>();
    return -1577f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_1(-403f, u_input.c.x ^ 0i), func_4(func_1(Struct_1(2184f, global0.b), Struct_1(293f, -34209i)), vec4<u32>(1u, 14933u, 34569u, 18235u), select(global1[_wgslsmith_index_u32(50791u, 21u)], vec3<bool>(false, false, false), true), min(vec4<i32>(-13990i, -2147483647i, -18059i, 0i), u_input.c)), vec3<u32>(1u, ~2440u, _wgslsmith_dot_vec2_u32(vec2<u32>(43630u, 4294967295u), vec2<u32>(155507u, 18179u))), func_1(Struct_1(-2071f, u_input.d.x), func_1(Struct_1(670f, global4.b), Struct_1(global4.a, 3202i))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_1(global4.a, global0.b), Struct_1(1121f, 0i)).a + _wgslsmith_f_op_f32(-global4.a)), global0.a)), -44914i);
    var var_1 = func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a))), 1i), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-340f, _wgslsmith_div_f32(var_0.a, global0.a))), -1000f), firstTrailingBit(countOneBits(global0.b))));
    var var_2 = global2[_wgslsmith_index_u32(0u, 20u)];
    let var_3 = func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * 437f))), -10528i), Struct_1(-881f, -(~var_0.b))).b;
    let var_4 = func_1(Struct_1(var_1.a, _wgslsmith_dot_vec4_i32(u_input.b, (vec4<i32>(-1i, global0.b, -1i, var_1.b) << (global2[_wgslsmith_index_u32(4294967295u, 20u)] % vec4<u32>(32u))) | abs(vec4<i32>(-1i, -1i, var_0.b, var_0.b)))), Struct_1(var_0.a, _wgslsmith_add_i32(u_input.d.x, _wgslsmith_add_i32(-16255i, 2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(func_2(), reverseBits(var_0.b), var_1.b ^ var_4.b, func_2()), ~vec4<i32>(-18742i, global4.b, var_3, var_3) >> (select(global2[_wgslsmith_index_u32(var_2.x, 20u)], global2[_wgslsmith_index_u32(4294967295u, 20u)], true) % vec4<u32>(32u))), ~min(u_input.c, abs(u_input.a))), ~(-min(reverseBits(u_input.d.x), _wgslsmith_mod_i32(32144i, -1i))), _wgslsmith_f_op_f32(var_0.a + 554f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1060f, _wgslsmith_f_op_f32(-var_4.a))), -1141f)));
}

