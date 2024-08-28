struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
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

var<private> global0: vec2<u32>;

var<private> global1: array<vec3<u32>, 21>;

var<private> global2: array<vec3<bool>, 28>;

var<private> global3: vec4<u32>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: u32) -> i32 {
    var var_0 = vec4<bool>(!select(all(vec3<bool>(false, false, true)), true, true), true, true, !all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), true)) & ((_wgslsmith_f_op_f32(2905f + arg_1.x) == -1177f) | false));
    var var_1 = true;
    var var_2 = abs(~arg_0.x);
    let var_3 = Struct_1(_wgslsmith_clamp_i32(40590i, u_input.b.x, u_input.b.x), var_0.x, u_input.b.xyz);
    var_2 = 4294967295u;
    return abs(countOneBits(-37013i));
}

fn func_3() -> i32 {
    global3 = ~(~(~(select(vec4<u32>(global0.x, 8825u, global3.x, global3.x), vec4<u32>(1u, global3.x, global3.x, global3.x), vec4<bool>(false, false, false, true)) & _wgslsmith_mult_vec4_u32(vec4<u32>(85169u, global0.x, global3.x, 8184u), vec4<u32>(0u, global0.x, global3.x, 45014u)))));
    let var_0 = Struct_1(_wgslsmith_mult_i32(abs(func_1(min(global3.zw, global3.zx), _wgslsmith_f_op_vec2_f32(vec2<f32>(-585f, -2156f) - vec2<f32>(596f, -1000f)), 5503u)), _wgslsmith_dot_vec4_i32(-u_input.b, _wgslsmith_clamp_vec4_i32(u_input.b, -vec4<i32>(2147483647i, -20570i, u_input.a, 0i), u_input.b))), any(vec2<bool>(true && all(global2[_wgslsmith_index_u32(0u, 28u)]), any(select(vec3<bool>(false, false, true), global2[_wgslsmith_index_u32(46677u, 28u)], vec3<bool>(false, true, true))))), countOneBits(u_input.b.zww));
    let var_1 = Struct_1(_wgslsmith_mult_i32(var_0.c.x, 0i), var_0.b, ~(~var_0.c));
    let var_2 = Struct_1(u_input.a, any(vec3<bool>(true, any(vec4<bool>(var_0.b, var_1.b, var_0.b, false)) && !var_1.b, var_0.b)), vec3<i32>(~abs(_wgslsmith_dot_vec3_i32(var_0.c, vec3<i32>(var_0.a, -19348i, -27917i))), var_1.c.x, -_wgslsmith_mod_i32(abs(0i), ~34423i)));
    global1 = array<vec3<u32>, 21>();
    return -2147483647i;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(870f, 1211f))))))));
    global2 = array<vec3<bool>, 28>();
    global1 = array<vec3<u32>, 21>();
    var var_1 = abs(~global3.wxy);
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(var_0, _wgslsmith_f_op_vec2_f32(var_0 - var_0))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, -1119f), _wgslsmith_f_op_vec2_f32(abs(var_0)), vec2<bool>(true, true))), any(vec3<bool>(false, true, true))))), Struct_1(-48491i << (1u % 32u), true, u_input.b.wzx), global0.x, Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(func_3(), ~19852i), (vec2<i32>(u_input.a, -1i) & vec2<i32>(0i, 0i)) ^ u_input.b.xz), false, select(select(countOneBits(u_input.b.zyx), vec3<i32>(2147483647i, 1i, u_input.b.x), !global2[_wgslsmith_index_u32(global3.x, 28u)]), vec3<i32>(func_3(), _wgslsmith_add_i32(u_input.a, arg_0), arg_0), !select(vec3<bool>(false, false, false), global2[_wgslsmith_index_u32(var_1.x, 28u)], global2[_wgslsmith_index_u32(global3.x, 28u)]))), global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(select(59016u ^ var_1.x, var_1.x >> (4294967295u % 32u), var_0.x != 950f), ~_wgslsmith_dot_vec2_u32(global3.xy, var_1.zx)), 21u)]);
    return Struct_1(arg_0, all(select(vec2<bool>(false & var_2.b.b, all(vec2<bool>(false, var_2.b.b))), select(!vec2<bool>(true, var_2.d.b), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(var_2.b.b, var_2.b.b), var_2.d.b)), select(select(vec2<bool>(var_2.b.b, true), vec2<bool>(false, var_2.b.b), vec2<bool>(true, var_2.d.b)), !vec2<bool>(var_2.d.b, true), any(vec4<bool>(true, false, false, false))))), -(vec3<i32>(-10173i, var_2.b.c.x, u_input.a) ^ -vec3<i32>(u_input.a, -61183i, 2147483647i)) & (~select(vec3<i32>(var_2.b.c.x, -19846i, -30620i), var_2.b.c, global2[_wgslsmith_index_u32(var_2.e.x, 28u)]) | _wgslsmith_clamp_vec3_i32(var_2.b.c, vec3<i32>(-12736i, var_2.d.a, 0i), min(u_input.b.yxy, vec3<i32>(u_input.b.x, -29139i, 54288i)))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_2(arg_0.a, Struct_1(firstLeadingBit(_wgslsmith_mod_i32(arg_0.b.c.x, arg_0.d.c.x) ^ _wgslsmith_div_i32(-62710i, -22077i)), arg_0.b.b, arg_0.d.c), reverseBits(global0.x) & global3.x, Struct_1(_wgslsmith_mult_i32(389i, ~u_input.a) >> (arg_0.e.x % 32u), !arg_0.b.b, vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.b, abs(vec4<i32>(-20785i, u_input.a, 2147483647i, 2147483647i))), ~func_1(vec2<u32>(0u, global3.x), arg_0.a, 0u), firstLeadingBit(-1i << (global3.x % 32u)))), vec3<u32>(~1u, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(96929u, global0.x)) ^ vec2<u32>(1u, global0.x), arg_0.e.yy), 15660u));
    var var_1 = arg_0.b.b;
    let var_2 = global2[_wgslsmith_index_u32(~var_0.e.x, 28u)];
    global2 = array<vec3<bool>, 28>();
    let var_3 = var_0.b;
    return Struct_1(arg_0.d.a, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(1i, u_input.a), _wgslsmith_clamp_vec2_i32(u_input.b.yy, arg_0.b.c.zx, vec2<i32>(var_3.a, -13200i))), select(vec2<i32>(-8861i, u_input.a) & vec2<i32>(var_3.a, var_0.b.a), firstLeadingBit(vec2<i32>(1i, u_input.a)), false)) == -1i, -vec3<i32>(-abs(-2147483647i), 54818i, ~u_input.b.x));
}

fn func_5(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(~u_input.b.x, 1019f <= arg_2.a.x, vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.b.xw, u_input.b.wz)) << ((select(0u, global0.x, false) << (~global3.x % 32u)) % 32u), 0i, func_3()));
    global3 = countOneBits(~_wgslsmith_div_vec4_u32(reverseBits(firstTrailingBit(vec4<u32>(global0.x, arg_2.c, arg_2.e.x, global0.x))), vec4<u32>(global3.x, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 13589u, global3.x, global3.x), vec4<u32>(global0.x, 62377u, arg_2.e.x, global0.x)), max(18932u, global0.x))));
    var var_1 = -43312i;
    var var_2 = arg_2.b;
    var var_3 = ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(~14239u, arg_2.e.x), abs(select(arg_2.e.zz, vec2<u32>(global0.x, global0.x), arg_1.xz)), ~(vec2<u32>(global3.x, global0.x) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.x, global3.x), arg_2.e.zx, arg_2.e.xx)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(~(-7984i & u_input.a)) >> (_wgslsmith_mult_u32(80008u << (0u % 32u), 0u) % 32u), true, vec3<i32>(func_1(global3.wz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-421f, 1829f)), 0u >> (_wgslsmith_mult_u32(global3.x, 4294967295u) % 32u)), -1i ^ _wgslsmith_div_i32(-2147483647i, -u_input.b.x), _wgslsmith_mult_i32(i32(-1i) * -42661i, ~_wgslsmith_mult_i32(u_input.b.x, u_input.a))));
    let var_1 = func_5(-269f, select(global2[_wgslsmith_index_u32(abs(~global3.x) | (global0.x & _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global3.x, 4294967295u, 28794u), vec4<u32>(global0.x, global3.x, 78818u, 0u))), 28u)], !(!select(vec3<bool>(var_0.b, var_0.b, true), global2[_wgslsmith_index_u32(17719u, 28u)], vec3<bool>(var_0.b, var_0.b, false))), global2[_wgslsmith_index_u32(0u >> (1u % 32u), 28u)]), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-890f, _wgslsmith_f_op_f32(986f * -104f)) + vec2<f32>(_wgslsmith_f_op_f32(step(1000f, -431f)), _wgslsmith_f_op_f32(max(285f, -1157f)))), func_4(Struct_2(vec2<f32>(1138f, 909f), func_2(11910i), firstTrailingBit(1u), func_2(-6507i), select(vec3<u32>(0u, global3.x, global3.x), global3.wwz, global2[_wgslsmith_index_u32(global0.x, 28u)]))), select(firstTrailingBit(~8845u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, 1u), vec2<u32>(global3.x, 1u)), var_0.b), func_4(Struct_2(vec2<f32>(1631f, 1358f), func_2(u_input.a), global0.x, func_2(2147483647i), vec3<u32>(5655u, global0.x, global3.x))), ((global1[_wgslsmith_index_u32(global3.x, 21u)] << (vec3<u32>(57614u, 89218u, 35988u) % vec3<u32>(32u))) ^ vec3<u32>(global3.x, global0.x, global3.x)) ^ global1[_wgslsmith_index_u32(global0.x << (min(global3.x, 62225u) % 32u), 21u)]));
    global3 = ((select(firstTrailingBit(vec4<u32>(var_1.c, 89433u, 13133u, global0.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 29321u, var_1.e.x, var_1.c), vec4<u32>(14489u, var_1.c, global0.x, 1u)), select(vec4<bool>(var_1.b.b, var_1.d.b, var_1.b.b, false), vec4<bool>(true, var_0.b, var_1.b.b, true), var_1.d.b)) | ~min(vec4<u32>(global0.x, global0.x, global3.x, 1u), vec4<u32>(0u, 0u, 4294967295u, var_1.e.x))) >> (~(~(~vec4<u32>(var_1.e.x, 65892u, global3.x, global3.x))) % vec4<u32>(32u))) | select(~(~(~vec4<u32>(global3.x, var_1.e.x, global0.x, 4294967295u))), ~(~vec4<u32>(global3.x, global0.x, var_1.c, global0.x)), var_0.b && var_1.d.b);
    var_0 = var_1.d;
    var var_2 = ~_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(71844u, var_1.c), 21u)] ^ vec3<u32>(global3.x, var_1.c, global3.x), ~vec3<u32>(global3.x, 4294967295u, global3.x) | (global3.xwy >> (vec3<u32>(0u, global0.x, global0.x) % vec3<u32>(32u)))), _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(0u, global3.x, global0.x)) >> (_wgslsmith_clamp_vec3_u32(var_1.e, vec3<u32>(global0.x, 0u, global0.x), global1[_wgslsmith_index_u32(var_1.e.x, 21u)]) % vec3<u32>(32u)), ~(~vec3<u32>(global0.x, 66859u, 1u))));
    let var_3 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.a.x), 1009f);
}

