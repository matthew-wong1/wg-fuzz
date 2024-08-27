struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: i32 = 2147483647i;

var<private> global2: vec2<u32> = vec2<u32>(1u, 4294967295u);

var<private> global3: Struct_3 = Struct_3(vec2<u32>(0u, 58808u), 4294967295u, vec4<i32>(-72327i, 4135i, -25808i, -10737i));

var<private> global4: Struct_1 = Struct_1(vec3<u32>(40015u, 4294967295u, 1u), vec4<f32>(837f, 133f, -588f, 789f), vec2<bool>(true, false));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = vec3<bool>(select(true, any(vec2<bool>(false, global4.c.x || arg_1.c.x)), all(!select(vec2<bool>(arg_1.c.x, global4.c.x), vec2<bool>(true, arg_1.c.x), arg_1.c.x))), true || !arg_1.c.x, false);
    var var_1 = global0.c.x;
    let var_2 = var_0;
    global1 = firstTrailingBit(2147483647i);
    var var_3 = _wgslsmith_f_op_f32(min(arg_1.b.x, _wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(806f - 232f) - _wgslsmith_f_op_f32(max(1481f, 1470f)))))));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, global4.b.x, arg_1.b.x, 238f) * vec4<f32>(arg_1.b.x, global4.b.x, 111f, 1000f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global4.b.x, -1287f, arg_1.b.x, 1000f), vec4<f32>(1350f, 670f, global4.b.x, 1330f))), _wgslsmith_f_op_vec4_f32(-arg_1.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_1.b.x, -389f), _wgslsmith_f_op_f32(max(arg_1.b.x, 565f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-906f)), -130f)), _wgslsmith_f_op_f32(-global4.b.x))), select(select(select(select(vec4<bool>(true, false, var_2.x, false), vec4<bool>(var_0.x, true, true, true), vec4<bool>(arg_1.c.x, var_2.x, var_2.x, true)), !vec4<bool>(false, false, true, arg_1.c.x), false), select(!vec4<bool>(var_0.x, true, true, true), vec4<bool>(true, false, var_0.x, global4.c.x), select(vec4<bool>(var_2.x, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, global4.c.x, global4.c.x, var_2.x))), vec4<bool>(all(var_0.zx), 2147483647i != global3.c.x, global4.c.x != global4.c.x, global3.c.x == -335i)), vec4<bool>(true & (4294967295u >= global3.b), true, 4239u >= _wgslsmith_mod_u32(arg_1.a.x, 35485u), 16352u <= (global3.a.x | global0.a.x)), !vec4<bool>(false, var_0.x, true, false))));
}

fn func_2(arg_0: vec2<u32>) -> vec3<u32> {
    global1 = -(~2147483647i);
    global3 = Struct_3(_wgslsmith_div_vec2_u32(~vec2<u32>(~4212u, reverseBits(global3.a.x)), ~u_input.a.zx), _wgslsmith_mult_u32(9285u, u_input.a.x) << (1u % 32u), global0.c);
    var var_0 = Struct_2(~((global3.c.zx << (~vec2<u32>(global3.b, 55620u) % vec2<u32>(32u))) & vec2<i32>(max(-2147483647i, global3.c.x), u_input.c)), _wgslsmith_mod_vec4_u32(u_input.a, ~_wgslsmith_add_vec4_u32(u_input.a, u_input.a)), ~_wgslsmith_div_i32(firstLeadingBit(1i), ~(global3.c.x | global3.c.x)), Struct_1(vec3<u32>(1u | (0u & u_input.a.x), ~abs(global4.a.x), ~(~1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global4.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.b.x, -448f, global4.b.x, global4.b.x) * global4.b), any(vec2<bool>(true, false)))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2061f, 884f, 1696f, global4.b.x)))), vec2<bool>(all(vec4<bool>(false, global4.c.x, global4.c.x, true)), any(global4.c))));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.d.b, _wgslsmith_f_op_vec4_f32(func_3(~var_0.b.x, Struct_1(var_0.d.a, vec4<f32>(-441f, global4.b.x, var_0.d.b.x, -790f), global4.c))))), var_0.d.b, !(true || global4.c.x)));
    global2 = vec2<u32>(firstTrailingBit(_wgslsmith_mod_u32(abs(global3.a.x), 1u) ^ u_input.a.x), countOneBits(abs(var_0.d.a.x)));
    return vec3<u32>(~_wgslsmith_mult_u32(reverseBits(4294967295u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(40549u, 76300u, arg_0.x), vec3<u32>(u_input.a.x, arg_0.x, global0.b)), ~var_0.b.wzx)), _wgslsmith_add_u32(58274u, arg_0.x | (select(global0.b, global2.x, true) ^ ~22599u)), ~var_0.b.x);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: bool, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = ~(~u_input.a.yww & global4.a) >> (~vec3<u32>(1u, global3.a.x, 4366u) % vec3<u32>(32u));
    global4 = Struct_1(~vec3<u32>(_wgslsmith_sub_u32(~48408u, 25319u), _wgslsmith_clamp_u32(54445u, ~1u, 1u), ~global3.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global4.b)), vec2<bool>(arg_2, global4.c.x));
    var var_1 = Struct_3(global3.a, ~_wgslsmith_mod_u32(global3.b, ~(~global2.x)), global0.c ^ -(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3.x, arg_3.x, arg_3.x, global0.c.x), global0.c, vec4<i32>(global0.c.x, global3.c.x, global3.c.x, -1i)) << (vec4<u32>(0u, var_0.x, 18641u, 18168u) % vec4<u32>(32u))));
    global0 = Struct_3(~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(48885u, 1u), ~vec2<u32>(global0.a.x, var_1.b)), _wgslsmith_div_vec2_u32(~arg_1.xz, vec2<u32>(0u, global4.a.x))), global0.a.x, global3.c);
    let var_2 = (1i | ((countOneBits(arg_3.x) >> (~4294967295u % 32u)) << ((var_0.x ^ _wgslsmith_mod_u32(global4.a.x, 39529u)) % 32u))) & _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(min(vec3<i32>(global0.c.x, 15684i, arg_3.x), abs(global3.c.ywx)), vec3<i32>(global3.c.x | u_input.c, global0.c.x ^ global0.c.x, ~1i), global3.c.xyz), reverseBits(-global0.c.wxy | global3.c.yxy));
    return Struct_2(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(abs(vec2<i32>(global3.c.x, -13256i)), -(vec2<i32>(16486i, 1i) & global3.c.wz)), _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(-2147483647i, global3.c.x) ^ vec2<i32>(var_2, 17734i)), _wgslsmith_add_vec2_i32(global0.c.xx, arg_3.xy) >> ((vec2<u32>(var_1.b, arg_1.x) >> (vec2<u32>(37562u, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u)))), u_input.a, reverseBits(-9991i | countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.c.x, global3.c.x), var_1.c.zw))), Struct_1(vec3<u32>(_wgslsmith_sub_u32(firstLeadingBit(37831u), select(41267u, 1u, arg_2)), func_2(select(var_0.xz, arg_1.zy, global4.c)).x, ~_wgslsmith_div_u32(arg_1.x, arg_1.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.x, -983f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-784f + 198f)), vec4<f32>(-471f, -1849f, _wgslsmith_f_op_f32(-arg_0.x), arg_0.x))), select(vec2<bool>(!arg_2, true), global4.c, !global4.c.x)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_3 {
    var var_0 = arg_0;
    global3 = Struct_3(vec2<u32>(select(arg_0.b.x, _wgslsmith_mult_u32(max(4294967295u, 3288u), func_2(vec2<u32>(global4.a.x, global4.a.x)).x), var_0.d.c.x), 0u), ~(~1u) & ~u_input.a.x, ~(-vec4<i32>(-23822i, 14316i, 10609i, 0i)) >> (~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global4.a.x, u_input.a.x), vec2<u32>(4294967295u, arg_0.b.x)), ~global2.x, abs(88049u), 6184u) % vec4<u32>(32u)));
    let var_1 = arg_1;
    var var_2 = func_4(vec3<f32>(-1227f, _wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1063f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-580f)), 258f)), vec3<u32>(var_1.a.x, func_4(_wgslsmith_f_op_vec3_f32(arg_1.b.yxz - _wgslsmith_f_op_vec3_f32(sign(arg_1.b.zzw))), vec3<u32>(u_input.a.x, var_1.a.x, 1u) | vec3<u32>(0u, u_input.a.x, 4294967295u), true, countOneBits(global0.c) & -vec4<i32>(arg_0.c, 23605i, -21055i, arg_0.c)).d.a.x, firstLeadingBit(28680u)), arg_1.c.x, select(vec4<i32>(arg_0.a.x, abs(abs(1i)), arg_0.c, -firstTrailingBit(-17152i)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a.x, -u_input.c, 21371i, firstTrailingBit(-10188i)), ~(~global3.c)), global4.c.x)).d;
    global3 = Struct_3(~select(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 3770u), var_0.d.a.zz) ^ (vec2<u32>(var_1.a.x, u_input.a.x) ^ global0.a), vec2<u32>(global4.a.x, global3.b), any(!var_2.c)), ~(~reverseBits(4294967295u)), vec4<i32>(global0.c.x, _wgslsmith_mod_i32(4575i, -global3.c.x), global3.c.x, _wgslsmith_sub_i32(-53270i, arg_0.a.x)));
    return Struct_3(arg_0.b.zy, arg_0.b.x, global0.c);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec2<i32>) -> bool {
    let var_0 = any(select(global4.c, global4.c, arg_0.d.c));
    global2 = global0.a;
    let var_1 = func_5(func_4(vec3<f32>(1000f, _wgslsmith_f_op_f32(-arg_0.d.b.x), _wgslsmith_div_f32(arg_1.x, -165f)), func_2(select(~global0.a, arg_0.b.xz, arg_0.d.c)), true, global0.c), func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global4.b.x))), -756f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x)))), global4.a, true, vec4<i32>(-2872i, ~(-arg_2.x), firstLeadingBit(firstTrailingBit(1758i)), u_input.b.x >> (global4.a.x % 32u))).d);
    let var_2 = select(!select(vec3<bool>(false && var_0, var_0, true), !(!vec3<bool>(true, var_0, false)), select(select(vec3<bool>(var_0, true, true), vec3<bool>(global4.c.x, arg_0.d.c.x, true), vec3<bool>(false, false, var_0)), vec3<bool>(false, var_0, arg_0.d.c.x), var_0)), vec3<bool>(false, var_0, -2879i > func_4(_wgslsmith_f_op_vec3_f32(-arg_0.d.b.yzz), vec3<u32>(global2.x, global2.x, 0u), var_0, select(vec4<i32>(-64i, var_1.c.x, global0.c.x, -49130i), global0.c, vec4<bool>(arg_0.d.c.x, global4.c.x, false, true))).a.x), !(!any(vec3<bool>(true, false, global4.c.x))));
    let var_3 = func_5(Struct_2(func_5(arg_0, Struct_1(vec3<u32>(4294967295u, global2.x, arg_0.b.x), global4.b, arg_0.d.c)).c.ww, u_input.a, 2147483647i, func_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.d.b.x, arg_1.x, global4.b.x), vec3<f32>(global4.b.x, arg_1.x, 1254f))))), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 8794u, global4.a.x), firstTrailingBit(u_input.a.yzw)), (global3.a.x << (global4.a.x % 32u)) != 4294967295u, global3.c).d), Struct_1(arg_0.b.xwy >> ((~vec3<u32>(2308u, var_1.a.x, 0u) & global4.a) % vec3<u32>(32u)), global4.b, select(select(vec2<bool>(true, arg_0.d.c.x), var_2.xx, var_2.x), select(select(var_2.xy, vec2<bool>(global4.c.x, var_0), var_0), var_2.yz, !vec2<bool>(true, var_0)), global4.c.x == var_0)));
    return var_0;
}

fn func_6(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec3<i32>) -> bool {
    var var_0 = ~_wgslsmith_mult_vec2_u32(~global0.a, ~vec2<u32>(arg_2.a.x, 4294967295u) | vec2<u32>(1u, 3862u));
    let var_1 = Struct_1(_wgslsmith_mod_vec3_u32(arg_2.a >> ((vec3<u32>(global2.x, 4294967295u, 0u) << (vec3<u32>(global4.a.x, 46579u, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)), firstTrailingBit(u_input.a.wxy)), vec4<f32>(-233f, arg_2.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2769f, global4.b.x)))), 129f), global4.c);
    var var_2 = Struct_3(firstTrailingBit(vec2<u32>(43152u, ~(~global3.a.x))), ~(global2.x ^ (~global4.a.x >> (~global2.x % 32u))), vec4<i32>(1i, global3.c.x, abs(-1i), -23919i));
    var var_3 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(881f, 349f, var_1.b.x) * vec3<f32>(var_1.b.x, -1040f, 1476f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-822f, global4.b.x, arg_2.b.x), func_4(arg_2.b.xww, var_1.a, false, vec4<i32>(-2324i, u_input.c, u_input.b.x, arg_3.x)).d.b.yzz, arg_1)))), _wgslsmith_mult_vec3_u32(func_4(vec3<f32>(-420f, -401f, global4.b.x), u_input.a.wyw, !var_1.c.x, -vec4<i32>(global0.c.x, global0.c.x, global3.c.x, 2147483647i)).d.a, min(~vec3<u32>(var_1.a.x, 37307u, var_0.x), ~global4.a)) | ~((vec3<u32>(74597u, global4.a.x, global0.b) ^ global4.a) & vec3<u32>(global4.a.x, var_0.x, 1u)), all(!select(select(arg_1.xz, global4.c, true), vec2<bool>(true, global4.c.x), true)), abs(-var_2.c)).d;
    var var_4 = Struct_1(~(vec3<u32>(_wgslsmith_dot_vec2_u32(var_3.a.xx, var_2.a), func_4(vec3<f32>(global4.b.x, 384f, -708f), vec3<u32>(93866u, var_0.x, global3.a.x), false, var_2.c).d.a.x, global3.b) << (vec3<u32>(_wgslsmith_dot_vec3_u32(arg_2.a, arg_2.a), global2.x, var_2.b) % vec3<u32>(32u))), var_1.b, vec2<bool>(var_1.c.x | arg_1.x, var_0.x != ~1u));
    return !var_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec2<bool>(!select(any(vec2<bool>(global4.c.x, global4.c.x)), global4.c.x && true, false), func_6(false, vec3<bool>(func_1(Struct_2(global0.c.xz, vec4<u32>(global4.a.x, global0.a.x, global0.b, global4.a.x), global0.c.x, Struct_1(vec3<u32>(117135u, global3.a.x, 1u), vec4<f32>(global4.b.x, 734f, global4.b.x, -502f), vec2<bool>(true, false))), vec2<f32>(-1000f, global4.b.x), vec2<i32>(global3.c.x, -2147483647i)), global4.c.x, true), func_4(_wgslsmith_f_op_vec3_f32(global4.b.xyx + vec3<f32>(global4.b.x, 1701f, global4.b.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(21954u, u_input.a.x, global0.a.x), vec3<u32>(59763u, u_input.a.x, global4.a.x)), global0.a.x > 0u, _wgslsmith_div_vec4_i32(global3.c, vec4<i32>(global3.c.x, u_input.b.x, u_input.c, 0i))).d, vec3<i32>(_wgslsmith_div_i32(2i, global3.c.x), global3.c.x, countOneBits(2147483647i)))));
    var var_1 = global4.c.x;
    global3 = func_5(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global4.b.x, 683f, -737f), vec3<f32>(global4.b.x, 1511f, global4.b.x))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-462f, -2140f, -2190f), vec3<f32>(global4.b.x, -502f, global4.b.x), true)))), u_input.a.xxz, all(!global4.c), _wgslsmith_div_vec4_i32(abs(global0.c) >> (u_input.a % vec4<u32>(32u)), firstTrailingBit(global0.c))), Struct_1(select(global4.a, firstTrailingBit(vec3<u32>(u_input.a.x, 19505u, global0.b)), !vec3<bool>(global4.c.x, global4.c.x, global4.c.x)), global4.b, select(!(!global4.c), global4.c, false)));
    var_0 = global4.c.x && (global0.b >= ~min(u_input.a.x << (0u % 32u), 29178u));
    let var_2 = 34058u;
    var var_3 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(-9775i);
}

