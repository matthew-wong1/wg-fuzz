struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_4, 13>;

var<private> global2: Struct_4;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: bool) -> i32 {
    return ~arg_0.b.x;
}

fn func_2(arg_0: vec3<bool>) -> vec4<u32> {
    global1 = array<Struct_4, 13>();
    let var_0 = 1u;
    global0 = global2.c;
    global2 = global1[_wgslsmith_index_u32(~26064u, 13u)];
    var var_1 = abs(func_3(global2.a, u_input.a, false));
    return countOneBits(((_wgslsmith_sub_vec4_u32(vec4<u32>(global0.a, 53628u, 15481u, global2.d), vec4<u32>(35637u, global2.c.a, global2.d, 45965u)) << (~vec4<u32>(global2.d, 38962u, global0.a, var_0) % vec4<u32>(32u))) & _wgslsmith_clamp_vec4_u32(~vec4<u32>(global2.c.a, 0u, 2600u, global2.c.a), _wgslsmith_add_vec4_u32(vec4<u32>(73052u, 0u, global0.a, 4294967295u), vec4<u32>(0u, global2.d, global2.c.a, global0.a)), ~vec4<u32>(global2.d, 1u, global0.a, 7597u))) & (~select(vec4<u32>(var_0, global0.a, 79366u, 4294967295u), vec4<u32>(var_0, global0.a, var_0, 4294967295u), vec4<bool>(false, false, true, false)) | _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 10734u, 1u, 920u)), ~vec4<u32>(global2.c.a, 0u, var_0, var_0))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: bool, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = !(!arg_0);
    var_0 = !vec2<bool>(true && ((4294967295u != arg_1.x) || (global0.b.x >= global0.b.x)), false);
    var var_1 = vec4<f32>(558f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x - -926f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x + -204f))))), global2.b.x);
    global0 = Struct_1(_wgslsmith_sub_u32(~(~global0.a), 4294967295u) >> (24575u % 32u), global2.c.b);
    let var_2 = !(!vec3<bool>(var_0.x, true, _wgslsmith_f_op_f32(-var_1.x) != _wgslsmith_f_op_f32(442f - global2.b.x)));
    return Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x), 697f)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<bool>) -> u32 {
    global0 = Struct_1(~global0.a, -global0.b);
    global0 = global2.c;
    let var_0 = ~(-11679i);
    let var_1 = -global0.b.wz;
    global1 = array<Struct_4, 13>();
    return global2.c.a;
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = vec4<u32>(firstLeadingBit(9809u), func_5(func_4(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(global2.a.c, global2.a.c)), vec2<bool>(global2.a.a, global2.a.a), vec2<bool>(false, true)), func_2(vec3<bool>(true, global2.a.c, true)) & func_2(vec3<bool>(global2.a.a, false, true)), !all(vec3<bool>(global2.a.a, false, global2.a.a)), abs(~vec3<i32>(global0.b.x, global0.b.x, -1i))), func_4(vec2<bool>(any(vec2<bool>(global2.a.a, global2.a.c)), true), ~vec4<u32>(55835u, 79742u, 4294967295u, global0.a), true, (global2.c.b.xwz & vec3<i32>(global2.a.b.x, arg_0, 1i)) >> (vec3<u32>(global0.a, global0.a, 15038u) % vec3<u32>(32u))), !vec4<bool>(all(vec3<bool>(false, global2.a.c, false)), true, global2.a.a, global2.a.c)), 4582u, global0.a);
    let var_1 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(global2.c.b.wyw, firstLeadingBit(vec3<i32>(0i, -1i, global2.c.b.x)) >> (var_0.wxx % vec3<u32>(32u))), -min(-vec3<i32>(-1i, 37742i, 23699i), countOneBits(-vec3<i32>(u_input.a, arg_0, global2.a.d))), global0.b.zwz ^ _wgslsmith_sub_vec3_i32(min(vec3<i32>(-21368i, 50357i, u_input.a), vec3<i32>(global0.b.x, arg_0, global2.a.d)), abs(vec3<i32>(-13652i, u_input.a, 1i))));
    var var_2 = var_0.x;
    var_2 = global0.a;
    var var_3 = func_4(select(select(vec2<bool>(true, global2.b.x > 1116f), select(!vec2<bool>(true, global2.a.c), vec2<bool>(global2.a.a, false), global2.b.x != global2.b.x), !vec2<bool>(false, global2.a.c)), !vec2<bool>(false, select(false, false, false)), vec2<bool>(!all(vec4<bool>(global2.a.a, global2.a.c, false, global2.a.a)), any(select(vec2<bool>(global2.a.a, true), vec2<bool>(global2.a.a, false), global2.a.a)))), _wgslsmith_div_vec4_u32(vec4<u32>(1u, var_0.x | ~37804u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(37391u, 44655u, 75222u), var_0.wyw), global0.a), ~(vec4<u32>(1u, global2.d, 18785u, global0.a) >> (min(vec4<u32>(global0.a, global0.a, 1u, global2.d), var_0) % vec4<u32>(32u)))), all(vec3<bool>(_wgslsmith_f_op_f32(select(544f, global2.b.x, true)) == _wgslsmith_f_op_f32(select(221f, 488f, global2.a.c)), global2.a.c, !all(vec2<bool>(false, false)))), vec3<i32>(firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_sub_i32(arg_0, 1i), -var_1.x)), u_input.a, global0.b.x));
    return func_4(select(!vec2<bool>(true, all(vec2<bool>(global2.a.c, true))), !(!vec2<bool>(global2.a.a, true)), false), vec4<u32>(_wgslsmith_add_u32(reverseBits(37956u), global0.a << (global0.a % 32u)) & 1u, var_0.x, var_0.x, ~(~(~global2.c.a))), false, vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, var_1.x), var_1.yy) >> (1u % 32u), var_1.x, select(_wgslsmith_add_i32(~u_input.a, ~u_input.a), _wgslsmith_clamp_i32(8074i >> (global0.a % 32u), global0.b.x, ~23911i), true)));
}

fn func_6(arg_0: Struct_2) -> Struct_4 {
    global1 = array<Struct_4, 13>();
    global1 = array<Struct_4, 13>();
    let var_0 = select(!(!(!(!vec4<bool>(false, global2.a.a, false, global2.a.a)))), select(!select(vec4<bool>(false, global2.a.c, true, false), select(vec4<bool>(true, global2.a.a, global2.a.a, false), vec4<bool>(false, false, global2.a.a, global2.a.c), global2.a.a), global2.a.c), vec4<bool>(false, false, true, ~global0.a < ~1u), all(!vec2<bool>(global2.a.a, global2.a.c))), vec4<bool>(!all(select(vec4<bool>(global2.a.a, global2.a.a, false, global2.a.c), vec4<bool>(global2.a.c, true, global2.a.c, global2.a.a), global2.a.c)), false, global2.a.c | global2.a.c, true));
    global0 = Struct_1(global0.a, abs(vec4<i32>(u_input.a, firstTrailingBit(1i), ~firstLeadingBit(-1i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.x, 1i, global0.b.x), vec3<i32>(-1i, 1i, u_input.a)))));
    let var_1 = global2.b.x;
    return Struct_4(Struct_3(!global2.a.a, ~(-global0.b.zw) ^ (vec2<i32>(global2.c.b.x, global0.b.x) << (vec2<u32>(global2.d, 7431u) % vec2<u32>(32u))), true, global0.b.x), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(arg_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(192f, 157f, -735f, arg_0.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global2.b + vec4<f32>(2286f, -835f, -1508f, -221f)))))), global2.c, ~(~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(57734u, 36027u)), abs(vec2<u32>(global2.c.a, 29949u)))));
}

fn func_7(arg_0: Struct_4) -> Struct_2 {
    global2 = global1[_wgslsmith_index_u32(arg_0.d, 13u)];
    var var_0 = vec4<i32>(0i, arg_0.a.b.x, _wgslsmith_sub_i32(_wgslsmith_mult_i32(-14746i, 10229i), -14455i) >> (_wgslsmith_mod_u32(~4294967295u, ~arg_0.c.a) % 32u), u_input.a) << (~(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.d, global0.a, 75134u, global0.a), reverseBits(vec4<u32>(71162u, 4294967295u, global0.a, arg_0.d))) >> (max(_wgslsmith_mult_vec4_u32(vec4<u32>(1996u, global2.c.a, arg_0.d, arg_0.c.a), vec4<u32>(1u, global0.a, global0.a, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 4726u, 0u, 5618u), vec4<u32>(global0.a, 43811u, 56475u, 91304u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_1 = !(!all(select(select(vec2<bool>(false, true), vec2<bool>(global2.a.a, arg_0.a.c), global2.a.a), !vec2<bool>(global2.a.a, arg_0.a.c), arg_0.a.c)));
    let var_2 = arg_0;
    let var_3 = global2.c;
    return Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(func_4(vec2<bool>(true, arg_0.a.a), vec4<u32>(153705u, var_3.a, var_2.d, var_2.d), false, global0.b.wyy).a, func_1(-33405i).a))), _wgslsmith_f_op_vec4_f32(trunc(global2.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(24419u, 13u)];
    let var_1 = var_0.a;
    let var_2 = 19751u;
    let var_3 = global2.c;
    var var_4 = func_7(func_6(func_1(-1i)));
    let var_5 = select(vec3<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-400f, -490f), _wgslsmith_f_op_f32(-global2.b.x), !var_1.c)) == func_1(i32(-1i) * -46476i).a.x, !select(true, var_1.a, !var_1.c), -(5997i << (1u % 32u)) == ~var_0.a.b.x), vec3<bool>(var_1.a, global2.a.a, var_1.c), all(vec4<bool>(true, false, !var_1.c, true)));
    var_4 = func_1(~global0.b.x);
    var_4 = func_7(global1[_wgslsmith_index_u32(reverseBits(var_2), 13u)]);
    let x = u_input.a;
    s_output = StorageBuffer(abs(4294967295u), var_0.c.b.xz, _wgslsmith_mult_i32(var_1.d, _wgslsmith_clamp_i32(8669i, max(10856i, global2.c.b.x) << (var_2 % 32u), _wgslsmith_dot_vec3_i32(global2.c.b.zxz, _wgslsmith_sub_vec3_i32(vec3<i32>(var_3.b.x, global2.a.d, global2.a.d), vec3<i32>(-2147483647i, global0.b.x, 1i))))));
}

