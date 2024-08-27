struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(true, -11669i), Struct_1(false, 30700i), Struct_1(false, 1i), Struct_1(true, -20516i), Struct_1(false, 2147483647i), Struct_1(true, 0i), Struct_1(false, -9644i), Struct_1(true, -1i), Struct_1(true, 0i), Struct_1(false, 0i), Struct_1(true, 0i), Struct_1(true, 9528i), Struct_1(true, 37645i), Struct_1(true, -25494i), Struct_1(false, 2147483647i), Struct_1(true, 43144i), Struct_1(false, 2147483647i), Struct_1(true, 1i), Struct_1(true, 14501i));

var<private> global1: array<Struct_2, 25>;

var<private> global2: array<u32, 7>;

var<private> global3: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(-340f, 1501f, -397f), vec3<f32>(-1605f, -823f, 356f), vec3<f32>(-1231f, -1000f, 296f), vec3<f32>(539f, 1694f, -796f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> u32 {
    var var_0 = arg_0;
    var var_1 = vec2<i32>(u_input.a, _wgslsmith_div_i32(1i, u_input.b));
    var var_2 = Struct_3(~global2[_wgslsmith_index_u32(1u, 7u)]);
    let var_3 = ~vec4<u32>(57380u, ~(~global2[_wgslsmith_index_u32(2224u, 7u)]) >> (56381u % 32u), 76371u, global2[_wgslsmith_index_u32(var_2.a, 7u)]);
    let var_4 = -(~min(_wgslsmith_sub_vec3_i32(max(vec3<i32>(-4524i, 2147483647i, u_input.b), vec3<i32>(-63385i, 2147483647i, var_1.x)), ~vec3<i32>(var_1.x, var_1.x, u_input.a)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_1.x, u_input.b, -27219i), vec4<i32>(u_input.a, 1912i, u_input.a, u_input.a)), 91517i, var_1.x)));
    return ~var_3.x;
}

fn func_2() -> u32 {
    var var_0 = ~(~(-4092i));
    let var_1 = global0[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(66474u, 7u)], 7u)], _wgslsmith_mult_u32(_wgslsmith_mult_u32(abs(0u), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)]), 1u)), 7u)], 19u)];
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1146f, _wgslsmith_f_op_f32(f32(-1f) * -1484f))), _wgslsmith_f_op_f32(-878f + _wgslsmith_div_f32(-318f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1561f), -2095f)))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1393u, 7u)], 7u)], 7u)], 96046u, global2[_wgslsmith_index_u32(5588u, 7u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(39110u, 7u)], 7u)], 7u)])), ~vec4<u32>(67227u, 27366u, 79677u, global2[_wgslsmith_index_u32(1298u, 7u)]) << (_wgslsmith_div_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 7u)], 10660u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 0u), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 7u)], global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6352u, 7u)], 7u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 7u)], 7u)], 7u)])) % vec4<u32>(32u))), ~global2[_wgslsmith_index_u32(53104u, 7u)]), 19u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(974f, -2944f, 198f, -1895f))) * _wgslsmith_div_vec4_f32(vec4<f32>(1050f, 375f, -592f, -555f), vec4<f32>(536f, 1000f, 586f, -190f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-387f, 1258f, 603f, -1000f), vec4<f32>(-1323f, 1139f, -1683f, 1473f), true))))), select(_wgslsmith_div_vec2_i32(vec2<i32>(-18839i, -var_1.b), ~(~vec2<i32>(1i, var_1.b))), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(max(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-1i, 2147483647i)), vec2<i32>(u_input.b, -2147483647i) | vec2<i32>(-1i, 2836i)), vec2<i32>(-18205i, u_input.b)), !all(vec4<bool>(true, true, true, true))));
    let var_3 = reverseBits(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 280u), ~4294967295u) >> (_wgslsmith_div_u32(min(func_3(var_2.c.a, vec2<bool>(var_2.c.a, var_1.a)), _wgslsmith_mult_u32(4294967295u, 1u)), 80921u) % 32u));
    let var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.a)) - _wgslsmith_f_op_vec2_f32(var_2.a + _wgslsmith_f_op_vec2_f32(var_2.d.xy * _wgslsmith_f_op_vec2_f32(round(var_2.d.wz))))), -1948f, var_2.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 902f, var_2.a.x, -610f)))) + _wgslsmith_f_op_vec4_f32(round(var_2.d)))), select(-var_2.e, firstTrailingBit(abs(~vec2<i32>(u_input.a, var_2.c.b))), !(!select(vec2<bool>(var_2.c.a, true), vec2<bool>(true, true), vec2<bool>(var_1.a, false)))));
    return min(countOneBits(_wgslsmith_add_u32(var_3, _wgslsmith_mod_u32(0u, 16856u)) ^ ~(~4294967295u)), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(18361u, var_3) << (vec2<u32>(20007u, 4294967295u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(52816u, var_3), vec2<u32>(1576u, var_3), vec2<u32>(global2[_wgslsmith_index_u32(var_3, 7u)], 10921u)))));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(12169u, 25u)];
    var var_1 = vec2<u32>(global2[_wgslsmith_index_u32(~(~(_wgslsmith_add_u32(arg_0, arg_0) ^ arg_0)), 7u)], arg_0);
    let var_2 = _wgslsmith_sub_vec4_i32(min(~(-abs(vec4<i32>(u_input.a, u_input.b, 1i, u_input.a))), select(vec4<i32>(1i, arg_1.b, u_input.b >> (1u % 32u), select(-75083i, arg_1.b, true)), vec4<i32>(i32(-1i) * -15111i, ~var_0.e.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b, u_input.b, var_0.e.x, arg_1.b), vec4<i32>(1281i, 1i, u_input.b, arg_1.b)), arg_1.b & arg_1.b), select(!vec4<bool>(var_0.c.a, var_0.c.a, false, false), !vec4<bool>(arg_1.a, false, arg_1.a, var_0.c.a), vec4<bool>(var_0.c.a, var_0.c.a, false, var_0.c.a)))), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_0.c.b, 50210i, -1i) & ~51979i, arg_1.b), 1i, 0i, 2147483647i));
    var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(arg_0, var_1.x), arg_0), ~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(55782u, 7u)], 7u)], var_1.x) >> (vec2<u32>(459u, arg_0) % vec2<u32>(32u))), arg_0) ^ select(vec2<u32>(var_1.x >> (abs(var_1.x) % 32u), ~(var_1.x >> (var_1.x % 32u))), ~_wgslsmith_sub_vec2_u32(~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(7670u, 7u)], 7u)], var_1.x), vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 7u)], 99579u) | vec2<u32>(4963u, arg_0)), true && arg_1.a);
    global0 = array<Struct_1, 19>();
    return var_0.c.a;
}

fn func_1() -> vec3<bool> {
    global1 = array<Struct_2, 25>();
    let var_0 = Struct_3(0u);
    global3 = array<vec3<f32>, 4>();
    global2 = array<u32, 7>();
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 25u)];
    return select(select(vec3<bool>(func_4(func_2(), Struct_1(true, 74826i)), any(vec4<bool>(var_1.c.a, var_1.c.a, false, false)), true), select(!vec3<bool>(true, true, var_1.c.a), !select(vec3<bool>(var_1.c.a, var_1.c.a, var_1.c.a), vec3<bool>(true, var_1.c.a, var_1.c.a), var_1.c.a), select(vec3<bool>(var_1.c.a, true, var_1.c.a), vec3<bool>(true, var_1.c.a, true), true)), select(select(vec3<bool>(false, var_1.c.a, true), select(vec3<bool>(var_1.c.a, var_1.c.a, var_1.c.a), vec3<bool>(var_1.c.a, false, var_1.c.a), var_1.c.a), any(vec3<bool>(var_1.c.a, var_1.c.a, var_1.c.a))), !(!vec3<bool>(var_1.c.a, var_1.c.a, var_1.c.a)), false)), select(vec3<bool>(all(vec4<bool>(false, var_1.c.a, true, true)) | (u_input.a >= 1i), var_1.c.a || var_1.c.a, all(select(vec2<bool>(var_1.c.a, false), vec2<bool>(var_1.c.a, var_1.c.a), vec2<bool>(var_1.c.a, false)))), select(vec3<bool>(any(vec4<bool>(true, true, false, var_1.c.a)), true, true), !select(vec3<bool>(var_1.c.a, var_1.c.a, true), vec3<bool>(false, false, var_1.c.a), false), true), var_1.c.a), var_1.c.a & ((_wgslsmith_mult_i32(u_input.b, 14442i) == ~(-2147483647i)) != true));
}

fn func_5(arg_0: vec3<bool>, arg_1: u32) -> Struct_3 {
    let var_0 = -u_input.b;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-2329f)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -940f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(471f)), 1062f)))), -1202f);
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1272f, var_1.x) + vec2<f32>(507f, var_1.x))))) + _wgslsmith_f_op_vec2_f32(var_1.xz + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.zy) * vec2<f32>(var_1.x, -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x))) * _wgslsmith_f_op_f32(var_1.x + 720f)), Struct_1(false, -29257i), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(f32(-1f) * -688f)), var_1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2489f * var_1.x), 1656f, true)), _wgslsmith_f_op_f32(max(1056f, 1678f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(530f, -754f, var_1.x, var_1.x)))), _wgslsmith_mod_vec2_i32(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, var_0), vec2<i32>(var_0, -14575i))), -(vec2<i32>(-21674i, -1i) | vec2<i32>(u_input.b, 58321i))) << (_wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, arg_1), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 1u))) % vec2<u32>(32u)));
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    return Struct_3(~_wgslsmith_div_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 31462u, global2[_wgslsmith_index_u32(33569u, 7u)]), vec3<u32>(28116u, global2[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(72398u, 7u)]))), _wgslsmith_mult_u32(25962u, global2[_wgslsmith_index_u32(select(arg_1, arg_1, arg_0.x), 7u)])));
}

fn func_6(arg_0: Struct_3) -> i32 {
    global3 = array<vec3<f32>, 4>();
    var var_0 = !vec4<bool>(false, all(vec4<bool>(true, true, true, true)), all(func_1()), any(vec4<bool>(true, true, true, true)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1002f), -297f) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-459f, -1000f)))))) - vec2<f32>(476f, _wgslsmith_f_op_f32(floor(1204f)))), _wgslsmith_f_op_f32(trunc(-1200f)), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.a | arg_0.a, 7u)], 19u)], _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-269f, -1838f, -1225f, 431f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1633f, -1960f, 562f))))))), vec2<i32>(i32(-1i) * -2147483647i, -21469i));
    let var_2 = Struct_3(0u);
    return var_1.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 7>();
    var var_0 = func_6(func_5(select(func_1(), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), _wgslsmith_dot_vec3_u32(~vec3<u32>(51142u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 7u)], 7u)], 7u)]), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 7u)], 7u)], 29065u, 4294967295u)))) | _wgslsmith_div_i32(-19285i, 38694i);
    let var_1 = true;
    var var_2 = true;
    let var_3 = global0[_wgslsmith_index_u32(max(abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~41129u), global2[_wgslsmith_index_u32(35012u, 7u)]), 7u)], 7u)], 7u)], 7u)]), 14758u), 19u)];
    global2 = array<u32, 7>();
    var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(153f);
}

