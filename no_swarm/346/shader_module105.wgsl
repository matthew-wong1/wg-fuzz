struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_4,
    c: vec3<u32>,
    d: Struct_4,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(22037u, 4294967295u, 4294967295u, 58019u, 0u, 4294967295u, 1u, 28057u, 36280u, 4294967295u, 135401u, 0u, 1u, 15594u, 4294967295u, 1u, 1u, 0u);

var<private> global1: array<bool, 17>;

var<private> global2: Struct_2;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> f32 {
    return _wgslsmith_f_op_f32(f32(-1f) * -1234f);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: Struct_5, arg_3: vec3<bool>) -> vec2<u32> {
    global1 = array<bool, 17>();
    let var_0 = select(!(!vec4<bool>(global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 17u)], all(vec2<bool>(false, true)), !global2.c.x, global2.b.c.x)), vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 17u)], !arg_2.b.a.a.c.x, select(arg_3.x, 0i > (global2.a.a << (108861u % 32u)), any(arg_3))), !select(vec4<bool>(false, select(arg_3.x, global2.b.c.x, arg_2.b.a.a.c.x), any(arg_3), arg_2.e), vec4<bool>(true, arg_3.x && global1[_wgslsmith_index_u32(arg_2.c.x, 17u)], arg_1.b.a.a.c.x, global2.c.x), select(!vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 17u)], arg_2.b.a.a.c.x, true), vec4<bool>(false, false, false, arg_1.d.a.a.c.x), false)));
    global0 = array<u32, 18>();
    let var_1 = arg_1;
    global0 = array<u32, 18>();
    return vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(~48960u, 18u)] >> (1u % 32u)) << (u_input.a.zy % vec2<u32>(32u));
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    let var_0 = Struct_5(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(0i)), 1211f, -645f)), Struct_5(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 10722u), arg_0), Struct_4(Struct_2(Struct_1(global2.a.b.x, vec3<i32>(global2.a.d, 1i, -2147483647i), vec2<bool>(false, global2.a.c.x), global2.a.b.x), Struct_1(1i, global2.b.b, global2.c, global2.b.a), vec2<bool>(global2.c.x, true)), firstLeadingBit(u_input.a.xwx), u_input.a.zzx), abs(vec3<u32>(1u, 62458u, 93063u)) ^ _wgslsmith_clamp_vec3_u32(u_input.a.xxx, vec3<u32>(0u, 6808u, 1u), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)])), Struct_4(Struct_2(global2.b, Struct_1(10983i, global2.a.b, vec2<bool>(true, true), global2.a.d), global2.a.c), u_input.a.yzz, u_input.a.wxy >> (u_input.a.yyx % vec3<u32>(32u))), (global2.a.b.x == 1i) || global1[_wgslsmith_index_u32(abs(u_input.a.x), 17u)]), Struct_5(arg_0, Struct_4(Struct_2(Struct_1(global2.b.d, vec3<i32>(-11013i, -2147483647i, global2.a.b.x), vec2<bool>(false, false), global2.a.a), global2.b, global2.c), _wgslsmith_mult_vec3_u32(u_input.a.zxz, vec3<u32>(82163u, arg_0.x, global0[_wgslsmith_index_u32(4294967295u, 18u)])), u_input.a.zxy), _wgslsmith_clamp_vec3_u32(u_input.a.xxx, firstLeadingBit(u_input.a.yyz), vec3<u32>(16037u, 54450u, 30790u)), Struct_4(Struct_2(Struct_1(-2147483647i, global2.b.b, vec2<bool>(global1[_wgslsmith_index_u32(34376u, 17u)], true), global2.a.b.x), global2.a, vec2<bool>(false, global2.b.c.x)), countOneBits(u_input.a.zxw), u_input.a.wzx | vec3<u32>(global0[_wgslsmith_index_u32(65031u, 18u)], 0u, u_input.a.x)), all(select(vec3<bool>(false, global2.c.x, global1[_wgslsmith_index_u32(540u, 17u)]), vec3<bool>(false, true, global2.c.x), vec3<bool>(false, false, false)))), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, global2.c.x), global1[_wgslsmith_index_u32(1u, 17u)]))), Struct_4(Struct_2(Struct_1(-25481i, max(global2.b.b, vec3<i32>(-1i, 2147483647i, global2.a.a)), !global2.a.c, 0i), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global2.a.a, -1i, global2.b.d), vec4<i32>(global2.a.d, global2.a.d, -1i, -26107i)), global2.b.b & global2.a.b, vec2<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 17u)]), global2.a.a), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 17u)], !global1[_wgslsmith_index_u32(arg_0.x, 17u)])), u_input.a.zyz, u_input.a.yyy), u_input.a.yxy, Struct_4(Struct_2(global2.a, Struct_1(-18768i, global2.b.b, !global2.a.c, global2.a.d), global2.c), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.wyx, vec3<u32>(arg_0.x, 1u, u_input.a.x)), u_input.a.zyz), vec3<u32>(~arg_0.x & _wgslsmith_clamp_u32(10112u, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(arg_0.x, 18u)]), firstLeadingBit(arg_0.x), u_input.a.x)), all(vec3<bool>(true, false, global2.a.c.x)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-178f))) - 1f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(757f, _wgslsmith_f_op_f32(floor(2151f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(813f))))))));
    global1 = array<bool, 17>();
    let var_2 = Struct_2(var_0.d.a.a, Struct_1(2147483647i, vec3<i32>(var_0.d.a.b.a, countOneBits(firstLeadingBit(var_0.d.a.b.b.x)), -(~global2.b.d)), select(vec2<bool>(var_0.d.a.a.c.x && global2.b.c.x, any(global2.c)), !select(global2.b.c, var_0.b.a.c, vec2<bool>(var_0.b.a.c.x, var_0.d.a.c.x)), true), 22779i), var_0.b.a.c);
    return 47058u >> (countOneBits(1u) % 32u);
}

fn func_1() -> f32 {
    let var_0 = abs(countOneBits(u_input.a.wz));
    let var_1 = select(~vec2<u32>(4294967295u, 1u) & vec2<u32>(func_2(var_0), 11265u | var_0.x), ~firstTrailingBit(u_input.a.yx), vec2<bool>(all(global2.b.c), !global1[_wgslsmith_index_u32(0u, 17u)])) | (vec2<u32>(_wgslsmith_mod_u32(68273u | u_input.a.x, ~global0[_wgslsmith_index_u32(0u, 18u)]), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)]) << (u_input.a.xw % vec2<u32>(32u)));
    var var_2 = Struct_5(~(u_input.a.xx & u_input.a.zy), Struct_4(Struct_2(global2.b, global2.b, global2.c), firstLeadingBit(vec3<u32>(var_1.x, _wgslsmith_mult_u32(0u, 0u), 4294967295u)), _wgslsmith_div_vec3_u32(u_input.a.zyw, ~min(vec3<u32>(26022u, 20919u, 0u), u_input.a.zyz))), vec3<u32>(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(~var_1.x, 17242u, func_4(vec3<f32>(-1126f, -188f, 241f), Struct_5(vec2<u32>(u_input.a.x, 1u), Struct_4(Struct_2(Struct_1(19780i, global2.a.b, vec2<bool>(false, global2.c.x), global2.a.b.x), Struct_1(global2.b.d, vec3<i32>(0i, global2.b.b.x, -1i), global2.b.c, -9815i), vec2<bool>(false, global2.b.c.x)), vec3<u32>(global0[_wgslsmith_index_u32(1u, 18u)], var_1.x, 19909u), u_input.a.wxz), u_input.a.yyy, Struct_4(Struct_2(Struct_1(global2.b.b.x, vec3<i32>(global2.a.b.x, 50351i, global2.a.a), vec2<bool>(global2.c.x, global1[_wgslsmith_index_u32(5550u, 17u)]), global2.a.a), global2.a, global2.a.c), vec3<u32>(0u, global0[_wgslsmith_index_u32(28820u, 18u)], var_0.x), u_input.a.yzy), true), Struct_5(var_0, Struct_4(Struct_2(global2.a, global2.a, global2.a.c), vec3<u32>(var_0.x, 12667u, 10686u), u_input.a.xwz), u_input.a.wzx, Struct_4(Struct_2(Struct_1(2147483647i, vec3<i32>(28750i, -2147483647i, global2.b.d), vec2<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 17u)]), -2147483647i), Struct_1(global2.b.b.x, global2.b.b, global2.b.c, global2.b.d), vec2<bool>(false, global2.c.x)), u_input.a.wxw, vec3<u32>(var_0.x, var_0.x, 28996u)), global2.b.c.x), vec3<bool>(global1[_wgslsmith_index_u32(80538u, 17u)], global2.b.c.x, global2.a.c.x)).x), u_input.a.yww), ~min(~0u, var_0.x)), Struct_4(Struct_2(Struct_1(~1i, global2.a.b, select(global2.c, global2.b.c, global1[_wgslsmith_index_u32(0u, 17u)]), -2147483647i), Struct_1(global2.b.b.x & global2.a.a, -global2.a.b, vec2<bool>(global1[_wgslsmith_index_u32(51439u, 17u)], true), -10263i), vec2<bool>(true, all(global2.c))), u_input.a.zzx, vec3<u32>(_wgslsmith_mult_u32(reverseBits(63946u), abs(global0[_wgslsmith_index_u32(24796u, 18u)])), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(28202u, 18u)], 2162u, 24287u), func_2(vec2<u32>(var_0.x, 18608u)), 4294967295u), _wgslsmith_mod_u32(firstLeadingBit(34654u), u_input.a.x | 0u))), true & any(select(vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 17u)]), global2.c, vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 17u)]))));
    var var_3 = global2.b.b.zz;
    let var_4 = global2.a.a << (~(~(~(~71128u))) % 32u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(firstTrailingBit(-1i))) - _wgslsmith_f_op_f32(-1454f - _wgslsmith_f_op_f32(func_3(min(var_2.d.a.b.d, -34965i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(global2.a, Struct_1(global2.b.d, global2.a.b | global2.b.b, vec2<bool>(min(global2.b.b.x, global2.a.b.x) > select(global2.a.d, global2.a.a, true), all(global2.b.c)), -1i), vec2<bool>(!(!any(global2.c)), true));
    global1 = array<bool, 17>();
    global1 = array<bool, 17>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(114f, -982f)))), 1f, 1f);
    global0 = array<u32, 18>();
    let var_1 = Struct_1(_wgslsmith_dot_vec4_i32((~vec4<i32>(global2.b.b.x, global2.b.a, 44105i, 21023i) << ((u_input.a ^ u_input.a) % vec4<u32>(32u))) ^ -reverseBits(vec4<i32>(13662i, global2.a.b.x, global2.b.a, global2.a.b.x)), -vec4<i32>(-39428i, global2.b.b.x, i32(-1i) * -17539i, i32(-1i) * -20555i)), -firstTrailingBit(global2.a.b), vec2<bool>(true, global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(countOneBits(global0[_wgslsmith_index_u32(0u, 18u)]), ~64512u), 17u)]), global2.b.a);
    global0 = array<u32, 18>();
    global2 = Struct_2(var_1, Struct_1(~(~var_1.a << (u_input.a.x % 32u)), countOneBits(global2.a.b), vec2<bool>(false, any(vec3<bool>(false, global2.c.x, var_1.c.x))), _wgslsmith_dot_vec3_i32(-abs(vec3<i32>(var_1.a, -2147483647i, 3800i)), abs(firstLeadingBit(global2.a.b)))), var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(1u, func_2(u_input.a.yx), func_4(vec3<f32>(var_0.x, var_0.x, var_0.x), Struct_5(u_input.a.wx, Struct_4(Struct_2(var_1, Struct_1(5513i, global2.a.b, vec2<bool>(true, false), global2.a.a), vec2<bool>(var_1.c.x, true)), u_input.a.xxy, vec3<u32>(24397u, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 18u)])), u_input.a.xxx, Struct_4(Struct_2(var_1, global2.b, vec2<bool>(false, global2.c.x)), u_input.a.zxy, u_input.a.yzw), false), Struct_5(u_input.a.yw, Struct_4(Struct_2(Struct_1(var_1.a, var_1.b, vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], 17u)], true), 34426i), var_1, var_1.c), vec3<u32>(u_input.a.x, u_input.a.x, 30460u), u_input.a.yww), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(24429u, 18u)], 5258u), Struct_4(Struct_2(Struct_1(global2.b.d, var_1.b, vec2<bool>(global2.c.x, true), var_1.b.x), var_1, vec2<bool>(true, global2.b.c.x)), vec3<u32>(6029u, 1u, 1u), u_input.a.yxw), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24434u, 18u)], 17u)]), vec3<bool>(false, false, global2.b.c.x)).x)));
}

