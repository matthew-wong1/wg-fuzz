struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(true, false), vec2<f32>(-1000f, -1080f)), Struct_1(vec4<bool>(false, true, true, true), vec2<bool>(false, true), vec2<f32>(-948f, -1667f)), Struct_1(vec4<bool>(false, true, true, true), vec2<bool>(false, true), vec2<f32>(-564f, 1121f)), Struct_1(vec4<bool>(false, true, true, false), vec2<bool>(true, false), vec2<f32>(986f, -297f)), Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(true, true), vec2<f32>(878f, -946f)), Struct_1(vec4<bool>(false, true, true, false), vec2<bool>(true, false), vec2<f32>(482f, 538f)), Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(true, true), vec2<f32>(-322f, -954f)), Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(true, true), vec2<f32>(-221f, 2071f)), Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(true, true), vec2<f32>(127f, -290f)), Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(false, false), vec2<f32>(-851f, 1110f)), Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(true, false), vec2<f32>(-950f, -163f)), Struct_1(vec4<bool>(false, true, true, true), vec2<bool>(true, true), vec2<f32>(-1000f, -1223f)), Struct_1(vec4<bool>(true, true, true, false), vec2<bool>(false, true), vec2<f32>(1111f, -485f)), Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(false, true), vec2<f32>(-652f, -481f)));

var<private> global3: vec3<bool> = vec3<bool>(false, true, true);

var<private> global4: vec4<u32> = vec4<u32>(28380u, 8962u, 107410u, 55305u);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(~4294967295u, 14u)];
    var var_1 = vec2<u32>(min(global4.x, u_input.d >> (1u % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(~71691u, 64706u), max(reverseBits(global4.zz), firstLeadingBit(vec2<u32>(5604u, global1.x)))));
    let var_2 = arg_0;
    let var_3 = var_0.b;
    let var_4 = global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_clamp_u32(~(~(~2375u)), ~_wgslsmith_div_u32(global4.x, 0u >> (0u % 32u)), global4.x)), 14u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(876f - arg_0.c.x)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    global4 = select(vec4<u32>(24298u, global4.x, ~global1.x, (u_input.c >> (5008u % 32u)) & _wgslsmith_mod_u32(global4.x, 14331u)), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(global4.x, 14768u, global4.x, 6905u)), firstLeadingBit(vec4<u32>(global4.x, 7860u, 0u, u_input.d)) & ~vec4<u32>(global1.x, 55819u, 4294967295u, u_input.c), ~(~vec4<u32>(4294967295u, 1u, 4294967295u, global4.x))), arg_2.a) & vec4<u32>(global4.x, _wgslsmith_sub_u32(global1.x, u_input.c), ~min(193u | u_input.b.x, 4294967295u), ~firstTrailingBit(min(global1.x, 1u)));
    global2 = array<Struct_1, 14>();
    let var_0 = Struct_1(select(vec4<bool>(all(vec2<bool>(global3.x, false)), true, any(arg_2.a) || !global3.x, global3.x), arg_2.a, true), !vec2<bool>(global3.x, all(!vec4<bool>(false, false, false, global3.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(arg_3.x)), _wgslsmith_f_op_f32(arg_2.c.x * 103f)))));
    let var_1 = arg_2;
    return ~1u;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> vec3<bool> {
    let var_0 = arg_1.a.xzz;
    var var_1 = any(select(!vec4<bool>(27793u <= u_input.b.x, true, !arg_1.b.x, arg_0.a.x), vec4<bool>(any(vec4<bool>(var_0.x, true, true, var_0.x)), global3.x, true, !(var_0.x || var_0.x)), !(!(!arg_0.a))));
    global2 = array<Struct_1, 14>();
    var var_2 = arg_2.x;
    let var_3 = global2[_wgslsmith_index_u32((~(~global1.x) ^ arg_2.x) ^ (((~global4.x << (~u_input.d % 32u)) << (_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(arg_2.x, 4294967295u, 0u)), vec3<u32>(u_input.b.x, 4294967295u, global4.x)) % 32u)) ^ ~(firstLeadingBit(global4.x) | 0u)), 14u)];
    return vec3<bool>(true, true, true);
}

fn func_2(arg_0: u32, arg_1: vec2<i32>) -> vec3<bool> {
    global3 = !vec3<bool>(global3.x, global3.x, global3.x);
    let var_0 = select(func_5(Struct_1(!vec4<bool>(false, global3.x, global3.x, false), select(global3.yx, !global3.yy, all(vec3<bool>(global3.x, true, global3.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1571f, -1234f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1996f, 1025f)))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(2306f, -1324f) - vec2<f32>(-406f, 402f)), _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(37413u, 14u)])), Struct_1(vec4<bool>(global3.x, false, global3.x, true), vec2<bool>(global3.x, true), vec2<f32>(-888f, 308f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(907f, -1612f, 1748f, 884f))))), 14u)], _wgslsmith_sub_vec3_u32(vec3<u32>(16767u, 0u, 4294967295u) | global4.xxw, ~u_input.b)), func_5(Struct_1(!vec4<bool>(global3.x, true, global3.x, false), select(vec2<bool>(global3.x, false), vec2<bool>(false, global3.x), vec2<bool>(global3.x, false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1219f, -3665f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-523f, 1000f)))), Struct_1(vec4<bool>(false, all(vec4<bool>(global3.x, true, global3.x, false)), !global3.x, true), global3.zy, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-446f, -199f), vec2<f32>(-206f, -1000f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1401f, -769f) * vec2<f32>(-161f, 446f)))), _wgslsmith_mult_vec3_u32(~global4.zyy, select(u_input.b >> (global4.xxz % vec3<u32>(32u)), u_input.b ^ global1.xww, all(global3.yz)))), !all(vec4<bool>(any(vec3<bool>(global3.x, true, global3.x)), func_5(global2[_wgslsmith_index_u32(4294967295u, 14u)], global2[_wgslsmith_index_u32(34277u, 14u)], global4.zww).x, func_5(global2[_wgslsmith_index_u32(11253u, 14u)], global2[_wgslsmith_index_u32(35819u, 14u)], u_input.b).x, true)));
    var var_1 = Struct_1(select(!vec4<bool>(var_0.x, any(vec4<bool>(var_0.x, true, global3.x, true)), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, any(var_0), !global3.x), global3.x), !(!vec4<bool>(global3.x, global3.x, true, var_0.x))), vec2<bool>(global3.x, select(!global3.x, true, global3.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 520f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1610f, -713f))))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(var_1.c.x * -1000f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.c.x)) + -179f) * 530f)));
    global2 = array<Struct_1, 14>();
    return !(!var_0);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: f32, arg_3: bool) -> Struct_1 {
    let var_0 = global3.yz;
    global3 = select(select(!select(!vec3<bool>(arg_3, true, true), func_2(u_input.c, u_input.a.xz), !arg_3), func_2(abs(~arg_1.x), vec2<i32>(~(-20218i), 15974i)), select(func_5(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_1.x, arg_1.x, 4294967295u), 14u)], Struct_1(vec4<bool>(true, global3.x, var_0.x, global3.x), global3.zx, vec2<f32>(936f, arg_2)), _wgslsmith_mult_vec3_u32(global1.zwz, vec3<u32>(arg_1.x, 4294967295u, 0u))), func_5(global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(~arg_1.x, 14u)], ~arg_0), any(select(vec4<bool>(false, false, false, arg_3), vec4<bool>(false, false, var_0.x, false), vec4<bool>(global3.x, arg_3, false, false))))), vec3<bool>((global3.x | var_0.x) & false, func_2(~global1.x, -u_input.a.xz).x, all(func_5(Struct_1(vec4<bool>(var_0.x, false, arg_3, true), global3.xx, vec2<f32>(arg_2, arg_2)), Struct_1(vec4<bool>(false, var_0.x, false, arg_3), vec2<bool>(false, false), vec2<f32>(1382f, -870f)), global4.wxx))), true);
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(26825u, 23805u), 14u)]))));
    var var_2 = u_input.a.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-155f, _wgslsmith_f_op_f32(sign(arg_2)))))));
    return global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~5451u, arg_1.x), 14u)];
}

fn func_6(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_div_i32(u_input.a.x & u_input.a.x, countOneBits(u_input.a.x) & ~((u_input.a.x << (u_input.b.x % 32u)) & _wgslsmith_dot_vec3_i32(u_input.a.xyx, u_input.a.xxx)));
    let var_1 = func_1(select(global1.yxz, select(_wgslsmith_div_vec3_u32(global4.wxx, ~vec3<u32>(global1.x, 0u, 12022u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(64015u, 23967u, 28015u), vec3<u32>(40140u, global4.x, u_input.b.x)), _wgslsmith_add_i32(1i, 30367i) < u_input.a.x), !vec3<bool>(global3.x, arg_0.a.x, func_2(global4.x, u_input.a.zw).x)), global4.xy, arg_0.c.x, func_2(select(func_4(vec2<f32>(arg_0.c.x, arg_0.c.x), arg_0.c.x, Struct_1(vec4<bool>(true, true, arg_0.b.x, arg_0.b.x), vec2<bool>(false, arg_0.b.x), vec2<f32>(-954f, 1000f)), vec4<f32>(1965f, arg_0.c.x, 1459f, arg_0.c.x)), countOneBits(21491u), any(vec2<bool>(global3.x, true))), u_input.a.xx).x == (all(arg_0.a.yxx) == (false | global3.x)));
    var var_2 = func_1(abs(abs(min(global4.xyx, vec3<u32>(0u, u_input.d, u_input.c))) << (_wgslsmith_div_vec3_u32(~vec3<u32>(0u, 27386u, global4.x), global1.xwz ^ global4.wyy) % vec3<u32>(32u))), global4.ww, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(344f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)))), !((u_input.a.x << (global1.x % 32u)) != _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, 25127i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 17136i, u_input.a.x))) && func_2(global4.x & 42024u, ~u_input.a.yw).x);
    let var_3 = var_1.c;
    global2 = array<Struct_1, 14>();
    return ~global4.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 14>();
    global2 = array<Struct_1, 14>();
    let var_0 = u_input.a.x;
    let var_1 = ~vec2<u32>(func_6(func_1(vec3<u32>(16173u, global4.x, 47370u), vec2<u32>(u_input.c, global4.x), -122f, global3.x)), u_input.b.x) << (vec2<u32>(~_wgslsmith_mod_u32(24416u, 4294967295u), select(_wgslsmith_sub_u32(4294967295u, 1u), abs(9293u), global3.x)) % vec2<u32>(32u));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -105f);
    global1 = vec4<u32>(select(24335u, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(var_1.x, func_6(Struct_1(vec4<bool>(global3.x, global3.x, global3.x, true), global3.yz, vec2<f32>(-761f, -688f))), ~global4.x)), any(select(func_5(Struct_1(vec4<bool>(false, true, global3.x, global3.x), vec2<bool>(false, global3.x), vec2<f32>(171f, 464f)), Struct_1(vec4<bool>(true, true, global3.x, false), vec2<bool>(global3.x, true), vec2<f32>(-417f, 532f)), vec3<u32>(global4.x, u_input.b.x, global1.x)), vec3<bool>(global3.x, global3.x, true), func_2(global4.x, vec2<i32>(-25124i, 1i)).x))), global4.x, 1u, 2393u);
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(1u, abs(var_1.x)), max(_wgslsmith_add_u32(firstLeadingBit(29381u << (global1.x % 32u)), countOneBits(min(var_1.x, 18185u))), global4.x)), 14u)];
    global2 = array<Struct_1, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-696f, 1021f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.c.x, var_2.c.x))))), _wgslsmith_f_op_f32(f32(-1f) * -229f), _wgslsmith_dot_vec3_u32(select(~vec3<u32>(global1.x, global4.x, var_1.x), ~vec3<u32>(global4.x, 68972u, 11625u), var_2.a.xwy), vec3<u32>(~80336u, _wgslsmith_add_u32(var_1.x, global1.x) >> (u_input.d % 32u), u_input.b.x)));
}

