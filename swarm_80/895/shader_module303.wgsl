struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec3<f32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
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

var<private> global0: array<vec2<f32>, 13>;

var<private> global1: array<u32, 18>;

var<private> global2: vec4<i32>;

var<private> global3: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    global1 = array<u32, 18>();
    let var_0 = vec3<bool>(select(false, global3.b && global3.b, true), !all(vec2<bool>(global3.c.a.x >= global2.x, true || global3.b)), global3.b);
    global0 = array<vec2<f32>, 13>();
    global2 = abs(reverseBits(global3.d.a)) & select(firstLeadingBit(select(select(global3.c.a, global3.c.a, vec4<bool>(global3.b, var_0.x, true, true)), _wgslsmith_clamp_vec4_i32(global3.c.a, global3.d.a, global3.d.a), global3.b)), select(vec4<i32>(98956i, global3.d.a.x, global2.x, global3.c.a.x) ^ min(global3.c.a, vec4<i32>(-19479i, -2371i, global3.c.a.x, 0i)), select(_wgslsmith_sub_vec4_i32(global3.d.a, vec4<i32>(-25585i, global2.x, 2147483647i, global2.x)), select(vec4<i32>(global3.d.a.x, 5078i, 29710i, global3.c.a.x), global3.c.a, true), vec4<bool>(var_0.x, global3.b, var_0.x, true)), !(var_0.x && var_0.x)), select(select(vec4<bool>(var_0.x, var_0.x, false, global3.b), !vec4<bool>(var_0.x, global3.b, global3.b, global3.b), select(vec4<bool>(false, var_0.x, true, false), vec4<bool>(global3.b, false, global3.b, global3.b), true)), vec4<bool>(any(vec3<bool>(false, var_0.x, global3.b)), true, global3.b, global3.c.c.x < 666f), vec4<bool>(global2.x > global2.x, 246f == global3.d.c.x, select(true, false, false), false)));
    global3 = Struct_3(vec4<u32>(global3.d.e, 22078u, ~(~(~1u)), 40987u), any(vec3<bool>(all(vec4<bool>(false, global3.b, global3.b, false)), global3.b, false)), global3.c, global3.d);
    return global3.d.b;
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    global0 = array<vec2<f32>, 13>();
    let var_0 = reverseBits(60547u);
    var var_1 = u_input.b.x;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(867f))), -322f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.d.b)), global3.d.b)), -736f, global3.b)), arg_0.c, _wgslsmith_f_op_f32(func_3()));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-378f, -223f), 1000f) - global3.c.c.zy) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.d.c.x, var_2.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0.d.c.zy + arg_0.d.c.zy), _wgslsmith_f_op_vec2_f32(global3.c.c.yx - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1014f, 299f))), select(!(!vec2<bool>(global3.b, global3.b)), vec2<bool>(any(vec4<bool>(true, global3.b, global3.b, true)), true), _wgslsmith_f_op_f32(exp2(var_2.x)) < 704f))));
    return Struct_1(vec4<i32>(global2.x, (arg_0.d.a.x >> (countOneBits(global3.c.b.x) % 32u)) >> (68360u % 32u), firstLeadingBit(1i), -27941i), arg_0.c, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.c.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.d.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - -1789f) * _wgslsmith_f_op_f32(func_3())))), 368f), -25280i, ~13893u);
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    let var_0 = Struct_3(~global3.a, any(vec4<bool>(all(vec3<bool>(global3.b, true, global3.b)), !global3.b, any(!vec2<bool>(global3.b, global3.b)), global3.c.a.x < _wgslsmith_mult_i32(global2.x, 2147483647i))), Struct_2(arg_0.a, vec2<u32>(4294967295u, global3.a.x), vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_4(global3.a, global2.zz, arg_0.b, Struct_1(vec4<i32>(global2.x, 4606i, 19927i, global3.d.a.x), arg_0.c.x, global3.c.c.wyw, global2.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 18u)]))).c.x - _wgslsmith_f_op_f32(-arg_0.c.x)), -212f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)), 199f)), func_2(Struct_4(global3.a, max(vec2<i32>(global2.x, global2.x), select(arg_0.a.zz, arg_0.a.yw, vec2<bool>(global3.b, global3.b))), _wgslsmith_f_op_f32(-1079f + 258f), global3.d)));
    var var_1 = Struct_5(_wgslsmith_add_u32(67456u, abs(var_0.c.b.x)), var_0.c.c.xzz);
    global3 = var_0;
    global3 = var_0;
    var var_2 = global2.x;
    return Struct_3(max(~(~u_input.b ^ ~var_0.a), ~(~vec4<u32>(arg_0.e, var_0.c.b.x, 1u, var_0.c.b.x) & vec4<u32>(4294967295u, var_0.a.x, 26795u, global3.a.x))), var_0.b, Struct_2(vec4<i32>(global3.c.a.x, _wgslsmith_clamp_i32(global3.c.a.x, 26686i, -75340i) | ~(-27427i), -firstLeadingBit(0i), -(global2.x ^ var_0.c.a.x)), (select(global3.a.xy, vec2<u32>(8214u, arg_0.e), global3.b) ^ _wgslsmith_add_vec2_u32(u_input.b.yw, u_input.a.xw)) >> (vec2<u32>(func_2(Struct_4(u_input.b, global3.c.a.zw, var_0.d.b, Struct_1(vec4<i32>(-7346i, -8601i, var_0.c.a.x, global3.d.a.x), var_0.c.c.x, vec3<f32>(-956f, -436f, 700f), var_0.d.a.x, 0u))).e, _wgslsmith_sub_u32(3889u, global3.a.x)) % vec2<u32>(32u)), vec4<f32>(380f, -305f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.d.b - 515f), -1609f)), -1277f)), global3.d);
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: f32) -> Struct_4 {
    let var_0 = 17145i | abs(arg_1.c.a.x);
    let var_1 = Struct_5(u_input.b.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-619f, global3.c.c.x, 947f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_1.c.c.yxz + arg_1.d.c), _wgslsmith_f_op_vec3_f32(-arg_1.c.c.xyz), select(true, global3.b, global3.b)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-340f, _wgslsmith_f_op_f32(f32(-1f) * -121f), _wgslsmith_f_op_f32(-arg_1.d.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -581f, -1396f) + vec3<f32>(342f, arg_2, -178f))))))));
    let var_2 = Struct_5(~_wgslsmith_add_u32(~arg_1.c.b.x & ~arg_1.a.x, _wgslsmith_mod_u32(arg_1.d.e, ~global1[_wgslsmith_index_u32(1u, 18u)])), _wgslsmith_f_op_vec3_f32(var_1.b - arg_1.c.c.xxw));
    let var_3 = func_4(Struct_1(arg_1.c.a, 1000f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.d.c) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global3.c.c.wyx, var_1.b)))), global2.x, ~_wgslsmith_clamp_u32(16779u, 4294967295u << (arg_0 % 32u), u_input.a.x))).c.a;
    var var_4 = ~var_3.x;
    return Struct_4(~(~arg_1.a), global3.d.a.zw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.b.x)) + -142f)), arg_1.d);
}

fn func_6(arg_0: Struct_4) -> vec4<i32> {
    var var_0 = select(-global2.xwy, vec3<i32>(-arg_0.d.d, -_wgslsmith_clamp_i32(1i, _wgslsmith_mult_i32(-3992i, arg_0.b.x), _wgslsmith_sub_i32(arg_0.b.x, 1i)), _wgslsmith_sub_i32(~global2.x | max(49494i, arg_0.d.d), func_5(min(85234u, 0u), func_4(Struct_1(global3.d.a, arg_0.c, vec3<f32>(-555f, arg_0.d.b, arg_0.c), -26854i, 4294967295u)), 1673f).b.x)), select(vec3<bool>(!global3.b, global3.b, true), !(!(!vec3<bool>(false, true, global3.b))), select(vec3<bool>(any(vec2<bool>(global3.b, global3.b)), global3.b, false || global3.b), vec3<bool>(true, all(vec2<bool>(global3.b, global3.b)), true), !(!vec3<bool>(false, global3.b, false)))));
    var var_1 = _wgslsmith_div_f32(arg_0.d.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - global3.d.c.x)));
    let var_2 = -64506i;
    global0 = array<vec2<f32>, 13>();
    var var_3 = Struct_5(arg_0.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.c.c.x * global3.d.c.x), arg_0.c), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.c.c.x))), _wgslsmith_f_op_f32(1647f - 562f)) * _wgslsmith_f_op_vec3_f32(round(func_5(_wgslsmith_mult_u32(arg_0.a.x, 30077u), Struct_3(vec4<u32>(64633u, arg_0.d.e, arg_0.a.x, global1[_wgslsmith_index_u32(u_input.b.x, 18u)]), global3.b, global3.c, global3.d), _wgslsmith_f_op_f32(f32(-1f) * -1827f)).d.c))));
    return -min(~vec4<i32>(2147483647i, var_2, -2147483647i, global3.c.a.x) ^ global3.c.a, (abs(vec4<i32>(2147483647i, global3.d.a.x, 0i, var_2)) & countOneBits(arg_0.d.a)) & ~vec4<i32>(arg_0.d.a.x, -2147483647i, var_0.x, arg_0.d.d));
}

fn func_1() -> u32 {
    global0 = array<vec2<f32>, 13>();
    var var_0 = Struct_1(func_6(func_5(global1[_wgslsmith_index_u32(~(39322u >> (global1[_wgslsmith_index_u32(7858u, 18u)] % 32u)), 18u)], func_4(func_2(Struct_4(vec4<u32>(19995u, 4294967295u, global3.d.e, 0u), vec2<i32>(2147483647i, -2147483647i), -1055f, global3.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(440f - global3.d.c.x)))), _wgslsmith_f_op_f32(-global3.d.b), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.c.c.xxx) + vec3<f32>(-157f, global3.d.b, -157f))), func_5(23918u, Struct_3(~vec4<u32>(u_input.a.x, global3.a.x, global1[_wgslsmith_index_u32(0u, 18u)], 1u), global2.x == 22743i, func_4(Struct_1(global3.c.a, global3.d.b, global3.d.c, global2.x, global1[_wgslsmith_index_u32(7184u, 18u)])).c, global3.d), global3.d.c.x).d.c)), _wgslsmith_div_i32(1i, -34250i) & -((1i | global3.d.a.x) | 18039i), _wgslsmith_mod_u32(_wgslsmith_sub_u32(global3.a.x, ~18124u), _wgslsmith_mult_u32(0u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(26220u, 4294967295u), select(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 18u)], 18u)], 18u)], false)))));
    let var_1 = vec3<f32>(-928f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-505f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.c.c.x)))), _wgslsmith_f_op_f32(select(var_0.c.x, global3.d.c.x, all(vec2<bool>(true, true)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(floor(func_5(~40654u, Struct_3(global3.a, global3.b, Struct_2(vec4<i32>(global2.x, 1i, global2.x, var_0.a.x), global3.a.ww, global3.c.c), global3.d), 584f).c))));
    var var_2 = -var_0.a.x;
    global3 = func_4(func_2(Struct_4(vec4<u32>(global3.c.b.x, ~4294967295u, ~var_0.e, ~1u), vec2<i32>(reverseBits(var_0.a.x), var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - global3.d.c.x)), Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(19074i, 1i, 65074i, var_0.d), vec4<i32>(29721i, var_0.a.x, 1i, -41741i)), func_4(global3.d).d.b, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2528f, 860f, var_0.b), vec3<f32>(var_1.x, var_0.b, 369f), global3.b)), _wgslsmith_clamp_i32(global3.c.a.x, 37235i, global3.d.a.x), 46788u))));
    return 0u;
}

fn func_7(arg_0: vec3<u32>, arg_1: f32) -> vec3<bool> {
    var var_0 = Struct_4(min(select(_wgslsmith_div_vec4_u32(vec4<u32>(34432u, 4294967295u, global3.d.e, 1u), vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 18u)], u_input.a.x, u_input.a.x)), countOneBits(u_input.a), true) ^ vec4<u32>(_wgslsmith_sub_u32(0u, global3.d.e), ~0u, ~1u, global1[_wgslsmith_index_u32(4294967295u, 18u)]), firstLeadingBit(~global3.a)), _wgslsmith_add_vec2_i32(global3.d.a.zx, _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(global2.x, global3.c.a.x, -1i), -global2.x), ~(global2.yy << (vec2<u32>(arg_0.x, 0u) % vec2<u32>(32u))), vec2<i32>(-42765i, global2.x))), -1000f, func_5(_wgslsmith_div_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(52846u, 18u)] ^ 27750u, 0u), func_1()), func_4(func_5(~0u, Struct_3(u_input.b, global3.b, global3.c, Struct_1(global3.d.a, arg_1, vec3<f32>(arg_1, -1649f, -477f), -1i, arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -990f)).d), _wgslsmith_f_op_f32(-arg_1)).d);
    let var_1 = _wgslsmith_f_op_vec3_f32(var_0.d.c * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.d.c) + global3.d.c)), _wgslsmith_f_op_vec3_f32(select(global3.d.c, global3.d.c, global3.b)), select(vec3<bool>(true, true, any(vec3<bool>(true, global3.b, global3.b))), !vec3<bool>(true, global3.b, true), global3.b))));
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global0[_wgslsmith_index_u32(~u_input.b.x, 13u)]))), vec2<f32>(536f, _wgslsmith_f_op_f32(-var_0.d.b))));
    global3 = Struct_3(vec4<u32>(_wgslsmith_mod_u32(40047u, abs(global3.c.b.x)) & ~(~var_0.a.x), 0u, ((global1[_wgslsmith_index_u32(global3.c.b.x, 18u)] << (11930u % 32u)) & var_0.a.x) ^ 6437u, func_2(Struct_4(~u_input.a, vec2<i32>(var_0.d.d, 0i), _wgslsmith_f_op_f32(1361f * var_2.x), func_5(global1[_wgslsmith_index_u32(1u, 18u)], Struct_3(global3.a, false, global3.c, Struct_1(var_0.d.a, arg_1, vec3<f32>(-670f, 1525f, var_0.c), 26087i, 34109u)), -1043f).d)).e), global3.b, func_4(global3.d).c, func_4(func_4(Struct_1(-vec4<i32>(-20907i, 2147483647i, global2.x, global2.x), _wgslsmith_f_op_f32(f32(-1f) * -598f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1574f, -705f, var_0.d.c.x)), global2.x, 70987u)).d).d);
    return !(!select(select(!vec3<bool>(true, global3.b, false), select(vec3<bool>(false, false, true), vec3<bool>(global3.b, global3.b, true), vec3<bool>(true, global3.b, global3.b)), true), vec3<bool>(4294967295u == var_0.d.e, global3.b, true), global3.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.d;
    global0 = array<vec2<f32>, 13>();
    var var_1 = func_7(vec3<u32>(global1[_wgslsmith_index_u32(1u, 18u)], ~func_1(), ~(~_wgslsmith_clamp_u32(global3.a.x, global3.c.b.x, 1007u))), _wgslsmith_div_f32(-1342f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-812f, global3.d.b)))));
    global2 = _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(34791i, 3040i, -1i | var_0.a.x, -abs(0i))), _wgslsmith_clamp_vec4_i32(global3.d.a, -vec4<i32>(1i, global3.c.a.x, var_0.a.x, global2.x) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.e, var_0.e, 1u, var_0.e), vec4<u32>(global3.d.e, global1[_wgslsmith_index_u32(var_0.e, 18u)], 1u, 18756u)) % vec4<u32>(32u)), -vec4<i32>(var_0.d, -2147483647i, -66175i, global2.x) & var_0.a));
    var var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(global3.c.b, global3.a.ww), func_4(global3.d).a.zw);
    global2 = var_0.a;
    var var_3 = !select(select(vec4<bool>(true, true, true, func_7(vec3<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 84750u, 0u), -2050f).x), vec4<bool>(global3.b, true, false, false), all(!var_1.yx)), select(select(vec4<bool>(global3.b, false, false, global3.b), select(vec4<bool>(global3.b, true, global3.b, false), vec4<bool>(global3.b, global3.b, var_1.x, var_1.x), vec4<bool>(true, true, global3.b, true)), select(vec4<bool>(var_1.x, false, global3.b, false), vec4<bool>(var_1.x, global3.b, true, false), true)), !select(vec4<bool>(var_1.x, global3.b, global3.b, true), vec4<bool>(var_1.x, false, true, global3.b), vec4<bool>(true, false, var_1.x, var_1.x)), !select(vec4<bool>(false, false, false, true), vec4<bool>(global3.b, true, false, var_1.x), true)), select(!(!vec4<bool>(false, false, global3.b, false)), select(!vec4<bool>(false, global3.b, false, true), !vec4<bool>(global3.b, var_1.x, global3.b, true), !global3.b), !vec4<bool>(var_1.x, true, true, var_1.x)));
    global0 = array<vec2<f32>, 13>();
    var_2 = global3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(40841u, 32102u), ~vec2<u32>(global3.a.x, global1[_wgslsmith_index_u32(0u, 18u)]), u_input.b.zx), _wgslsmith_mod_vec2_u32(u_input.a.wx << (~u_input.b.zz % vec2<u32>(32u)), u_input.b.zw >> (u_input.b.xx % vec2<u32>(32u)))));
}

