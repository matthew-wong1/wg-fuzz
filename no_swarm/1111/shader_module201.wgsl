struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 451f;

var<private> global1: array<i32, 14>;

var<private> global2: array<bool, 18> = array<bool, 18>(false, false, true, false, true, false, true, false, false, false, false, true, true, false, false, true, false, true);

var<private> global3: vec4<u32>;

var<private> global4: Struct_1 = Struct_1(vec3<i32>(1i, 0i, -13438i), vec2<i32>(-13622i, 39951i), vec2<u32>(35822u, 0u), vec2<i32>(16955i, 74923i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: vec4<u32>) -> vec2<bool> {
    let var_0 = any(select(select(!vec4<bool>(false, global2[_wgslsmith_index_u32(global3.x, 18u)], global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(global3.x, 18u)]), !select(vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(arg_3.x, 18u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(24370u, 18u)], true, true), true), true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, global2[_wgslsmith_index_u32(31361u, 18u)], true, global2[_wgslsmith_index_u32(71538u, 18u)]), false), vec4<bool>(true, select(global2[_wgslsmith_index_u32(arg_0.c.x, 18u)], false, true), global2[_wgslsmith_index_u32(max(arg_3.x, global4.c.x), 18u)], all(vec3<bool>(global2[_wgslsmith_index_u32(1u, 18u)], true, false)))), vec4<bool>(_wgslsmith_f_op_f32(sign(597f)) < 248f, all(vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(global3.x, 18u)])), true, true)));
    global2 = array<bool, 18>();
    global2 = array<bool, 18>();
    var var_1 = Struct_1(global4.a & -_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 1i, -2147483647i), -vec3<i32>(global1[_wgslsmith_index_u32(1u, 14u)], u_input.b.x, u_input.b.x), vec3<i32>(global1[_wgslsmith_index_u32(arg_0.c.x, 14u)], u_input.b.x, global4.a.x) ^ vec3<i32>(arg_0.a.x, -2147483647i, 2147483647i)), vec2<i32>(64611i, global4.a.x), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.c.x, global3.x), arg_3.zx), vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0.a.x, -9203i, 0i), (vec3<i32>(26921i, arg_0.b.x, arg_0.a.x) & vec3<i32>(global1[_wgslsmith_index_u32(global4.c.x, 14u)], global1[_wgslsmith_index_u32(global3.x, 14u)], u_input.b.x)) << (vec3<u32>(global4.c.x, global4.c.x, 32429u) % vec3<u32>(32u)))));
    let var_2 = arg_0;
    return select(!(!vec2<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(global4.c.x, 18u)], global2[_wgslsmith_index_u32(arg_2.x, 18u)])), true)), select(select(select(!vec2<bool>(false, var_0), vec2<bool>(false, true), select(vec2<bool>(true, global2[_wgslsmith_index_u32(global4.c.x, 18u)]), vec2<bool>(false, false), var_0)), !(!vec2<bool>(false, var_0)), any(select(vec3<bool>(var_0, true, true), vec3<bool>(true, global2[_wgslsmith_index_u32(36682u, 18u)], var_0), vec3<bool>(false, false, false)))), select(select(vec2<bool>(var_0, false), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 18u)], false), var_0), vec2<bool>(any(vec3<bool>(true, false, global2[_wgslsmith_index_u32(arg_3.x, 18u)])), var_0), vec2<bool>(var_0, true)), !(_wgslsmith_add_i32(var_1.b.x, 0i) == (i32(-1i) * -1i))), vec2<bool>(!(!var_0), var_0));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec3<u32>) -> vec4<f32> {
    let var_0 = 55384u;
    global3 = vec4<u32>(reverseBits(arg_3.x), select(var_0, _wgslsmith_dot_vec2_u32((vec2<u32>(arg_2.c.x, global4.c.x) & global4.c) << (~vec2<u32>(global4.c.x, global3.x) % vec2<u32>(32u)), ~arg_2.c), all(arg_0)), _wgslsmith_add_u32(55922u, 2092u), ~firstLeadingBit(var_0));
    global2 = array<bool, 18>();
    var var_1 = Struct_1(select(vec3<i32>(min(u_input.b.x, min(-17867i, -13704i)), arg_2.a.x, ~(-2147483647i)), global4.a, arg_0), firstLeadingBit(firstTrailingBit(~vec2<i32>(2147483647i, u_input.b.x))), arg_2.c, global4.d);
    let var_2 = arg_2;
    return vec4<f32>(-1000f, _wgslsmith_f_op_f32(step(-300f, 879f)), _wgslsmith_f_op_f32(863f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -468f) * _wgslsmith_f_op_f32(floor(-781f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -286f), -786f)))));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_4(select(vec3<bool>(global2[_wgslsmith_index_u32(global4.c.x, 18u)], all(func_3(Struct_1(vec3<i32>(u_input.a, global4.b.x, -2791i), vec2<i32>(u_input.b.x, u_input.a), global4.c, vec2<i32>(4577i, u_input.a)), vec3<f32>(212f, -1586f, -545f), global3.zzz, vec4<u32>(global3.x, global3.x, 5057u, global4.c.x))), true), select(!vec3<bool>(arg_0.x, global2[_wgslsmith_index_u32(4294967295u, 18u)], true), vec3<bool>(true, any(vec4<bool>(true, arg_0.x, global2[_wgslsmith_index_u32(1u, 18u)], true)), true), select(select(vec3<bool>(false, true, false), vec3<bool>(global2[_wgslsmith_index_u32(global4.c.x, 18u)], true, global2[_wgslsmith_index_u32(global4.c.x, 18u)]), false), select(vec3<bool>(true, global2[_wgslsmith_index_u32(27963u, 18u)], true), vec3<bool>(true, global2[_wgslsmith_index_u32(global3.x, 18u)], arg_0.x), vec3<bool>(true, true, false)), vec3<bool>(true, arg_0.x, global2[_wgslsmith_index_u32(global4.c.x, 18u)]))), vec3<bool>(arg_0.x, !(!arg_0.x), true)), ~u_input.b.yx, Struct_1(_wgslsmith_mod_vec3_i32(~(-u_input.b), select(_wgslsmith_sub_vec3_i32(vec3<i32>(global4.b.x, 2147483647i, -1i), global4.a), u_input.b, !vec3<bool>(true, global2[_wgslsmith_index_u32(global3.x, 18u)], arg_0.x))), ~min(global4.d, -u_input.b.zz), global3.zz, _wgslsmith_div_vec2_i32(firstLeadingBit(u_input.b.xz), ~_wgslsmith_clamp_vec2_i32(u_input.b.yz, vec2<i32>(30069i, global1[_wgslsmith_index_u32(global3.x, 14u)]), u_input.b.yy))), ~vec3<u32>(~35916u, 4294967295u, ~abs(global4.c.x))));
    let var_1 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(min(-2105f, var_0.x))) + _wgslsmith_f_op_vec4_f32(func_4(select(vec3<bool>(true, global2[_wgslsmith_index_u32(12944u, 18u)], arg_0.x), select(vec3<bool>(global2[_wgslsmith_index_u32(14605u, 18u)], arg_0.x, true), vec3<bool>(global2[_wgslsmith_index_u32(global4.c.x, 18u)], global2[_wgslsmith_index_u32(20605u, 18u)], arg_0.x), true), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(14430u, global4.c.x), 18u)]), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(u_input.a, u_input.b.x)), -vec2<i32>(global1[_wgslsmith_index_u32(global3.x, 14u)], global1[_wgslsmith_index_u32(global4.c.x, 14u)]), u_input.b.xz), Struct_1(vec3<i32>(-1i, 1i, u_input.b.x), -vec2<i32>(2147483647i, global4.d.x), global3.xy ^ vec2<u32>(global4.c.x, global3.x), global4.b), global3.zxx)).x), 1108f);
    var var_2 = ~(~(~4294967295u));
    var var_3 = true;
    let var_4 = _wgslsmith_add_vec3_u32(min(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(global3.zwy, vec3<u32>(1u, global4.c.x, global3.x), global3.wxz), firstLeadingBit(vec3<u32>(58913u, global4.c.x, global3.x))) ^ global3.yxw, ~firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 73655u, 62003u), global3.xzw))), _wgslsmith_div_vec3_u32(countOneBits(global3.xxy), global3.wyz));
    return Struct_1(~(vec3<i32>(_wgslsmith_add_i32(u_input.a, -104931i), u_input.b.x >> (global4.c.x % 32u), 0i) ^ (-vec3<i32>(-2147483647i, 18301i, global4.d.x) << (_wgslsmith_clamp_vec3_u32(var_4, var_4, var_4) % vec3<u32>(32u)))), vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 14u)], -3857i), ~(~(vec2<u32>(global3.x, 40894u) & var_4.yx) ^ vec2<u32>(global3.x | 7461u, max(1u, global4.c.x))), ~vec2<i32>(_wgslsmith_dot_vec3_i32(global4.a, u_input.b) ^ u_input.b.x, -2147483647i));
}

fn func_5(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = global3.xzw;
    global3 = ~vec4<u32>(_wgslsmith_mult_u32(var_0.x, 4294967295u) << (global4.c.x % 32u), ~(~83136u), reverseBits(36709u), firstTrailingBit(42254u)) & ~abs(vec4<u32>(57226u, arg_3.c.x, arg_2.c.x, 14083u) << (vec4<u32>(arg_3.c.x, arg_1.x, 84594u, arg_3.c.x) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1792f), _wgslsmith_f_op_f32(299f - 1184f), -767f, _wgslsmith_f_op_f32(-1117f * -709f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1093f, -1844f, 232f, -416f))))) + _wgslsmith_f_op_vec4_f32(func_4(vec3<bool>(true, any(vec2<bool>(true, true)), true), func_2(!vec2<bool>(arg_0, arg_0)).a.yz, Struct_1(_wgslsmith_sub_vec3_i32(-u_input.b, arg_3.a | vec3<i32>(13722i, -2147483647i, 1i)), arg_2.d, global4.c ^ ~global4.c, -vec2<i32>(-2147483647i, 1i) & vec2<i32>(global4.d.x, global4.b.x)), vec3<u32>(arg_1.x, ~(0u >> (arg_1.x % 32u)), arg_2.c.x))));
    let var_2 = func_2(!(!vec2<bool>(true, arg_0)));
    let var_3 = func_2(!vec2<bool>(true, !(global2[_wgslsmith_index_u32(51530u, 18u)] == global2[_wgslsmith_index_u32(1191u, 18u)])));
    return _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(990f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.x * 460f)))), true));
}

fn func_1(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(825f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1631f) * 252f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(583f + -313f)) * -1000f) - _wgslsmith_f_op_f32(-1f)));
    global1 = array<i32, 14>();
    global3 = vec4<u32>(global3.x, ~(~arg_0.c.x), ~global4.c.x, global4.c.x) ^ abs(firstTrailingBit(vec4<u32>(global3.x ^ 0u, _wgslsmith_sub_u32(global4.c.x, global4.c.x), 0u ^ arg_0.c.x, ~20247u)));
    var var_1 = vec2<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(!global2[_wgslsmith_index_u32(1u, 18u)], vec2<u32>(global3.x, global3.x), func_2(vec2<bool>(global2[_wgslsmith_index_u32(global3.x, 18u)], true)), arg_0)) + _wgslsmith_f_op_f32(floor(-532f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -147f) * _wgslsmith_f_op_f32(var_0 * 1764f))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(sign(-526f)))))), _wgslsmith_f_op_vec4_f32(func_4(!select(vec3<bool>(global2[_wgslsmith_index_u32(22757u, 18u)], false, true), !vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 18u)], false, global2[_wgslsmith_index_u32(41027u, 18u)]), !global2[_wgslsmith_index_u32(4714u, 18u)]), -_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(global3.x, 14u)], u_input.a), vec2<i32>(35469i, global1[_wgslsmith_index_u32(56342u, 14u)])), vec2<i32>(arg_0.d.x, 1i), ~vec2<i32>(-8019i, arg_0.b.x)), arg_0, _wgslsmith_sub_vec3_u32(global3.zxw, vec3<u32>(arg_0.c.x, 1u, ~global4.c.x)))).x);
    return arg_0.d << (_wgslsmith_mod_vec2_u32(global3.wz, ~(~(~vec2<u32>(27293u, global4.c.x)))) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global4.a, firstTrailingBit(-_wgslsmith_mult_vec2_i32(u_input.b.zx, ~global4.b)), ~vec2<u32>(firstLeadingBit(~1u), global4.c.x), _wgslsmith_mod_vec2_i32((u_input.b.yz | (vec2<i32>(global1[_wgslsmith_index_u32(global4.c.x, 14u)], -11212i) << (global4.c % vec2<u32>(32u)))) | (_wgslsmith_div_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 14u)], 2147483647i), vec2<i32>(global1[_wgslsmith_index_u32(global3.x, 14u)], 6637i)) & max(global4.b, vec2<i32>(global1[_wgslsmith_index_u32(global3.x, 14u)], 1i))), ~firstLeadingBit(func_1(Struct_1(global4.a, global4.b, global3.xy, vec2<i32>(u_input.b.x, u_input.a))))));
    let var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(func_2(vec2<bool>(global2[_wgslsmith_index_u32(23750u, 18u)], false)).b.x, 0i), -max(_wgslsmith_dot_vec3_i32(var_0.a, var_0.a), max(global1[_wgslsmith_index_u32(var_0.c.x, 14u)], global4.a.x)), _wgslsmith_mult_i32(1i, i32(-1i) * -global1[_wgslsmith_index_u32(19943u, 14u)]), -((global1[_wgslsmith_index_u32(56325u, 14u)] ^ global4.b.x) >> (min(global4.c.x, global4.c.x) % 32u))), ~abs(min(vec4<i32>(var_0.b.x, 30363i, -3932i, 22091i), ~vec4<i32>(u_input.b.x, var_0.a.x, 15723i, -1i))));
    let var_2 = global3.x;
    let var_3 = func_2(select(select(vec2<bool>(true, true), vec2<bool>(global2[_wgslsmith_index_u32(select(0u, var_0.c.x, false), 18u)], true), global2[_wgslsmith_index_u32(~(~62805u), 18u)]), select(vec2<bool>(!global2[_wgslsmith_index_u32(60217u, 18u)], global2[_wgslsmith_index_u32(func_2(vec2<bool>(true, true)).c.x, 18u)]), !(!vec2<bool>(global2[_wgslsmith_index_u32(global3.x, 18u)], global2[_wgslsmith_index_u32(4294967295u, 18u)])), func_3(Struct_1(vec3<i32>(-16192i, 33891i, u_input.b.x), vec2<i32>(var_0.a.x, global4.b.x), vec2<u32>(global3.x, global4.c.x), var_0.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(450f, -671f, 1000f) - vec3<f32>(1035f, -660f, 184f)), _wgslsmith_mult_vec3_u32(vec3<u32>(global3.x, 18827u, 19740u), global3.zwx), countOneBits(vec4<u32>(0u, global4.c.x, var_0.c.x, 17441u))).x), !global2[_wgslsmith_index_u32(~global3.x >> (48381u % 32u), 18u)]));
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, ~(-global4.a.zz), _wgslsmith_f_op_f32(-146f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(456f, -718f, global2[_wgslsmith_index_u32(var_4.c.x, 18u)]))))), var_3.a);
}

